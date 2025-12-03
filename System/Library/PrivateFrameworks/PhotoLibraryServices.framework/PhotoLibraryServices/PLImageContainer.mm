@interface PLImageContainer
- (CGSize)pixelSize;
- (PLImageContainer)initWithCGImage:(CGImage *)image ioSurface:(void *)surface CIImage:(id)iImage backingData:(id)data uniformTypeIdentifier:(id)identifier size:(CGSize)size auxiliaryImageRecords:(id)records;
- (PLImageContainer)initWithPLImage:(id)image backingData:(id)data uniformTypeIdentifier:(id)identifier auxiliaryImageRecords:(id)records;
- (id)description;
- (void)dealloc;
- (void)ioSurface;
@end

@implementation PLImageContainer

- (CGSize)pixelSize
{
  height = self->_pixelSize.height;
  if (height < 0.0 || (Width = self->_pixelSize.width, Width < 0.0))
  {
    CGImage = self->_CGImage;
    if (CGImage)
    {
      Width = CGImageGetWidth(CGImage);
      v6 = CGImageGetHeight(self->_CGImage);
    }

    else
    {
      CIImage = self->_CIImage;
      if (CIImage)
      {
        [CIImage extent];
        Width = v8;
        height = v9;
        self->_pixelSize.width = v8;
        self->_pixelSize.height = v9;
        goto LABEL_8;
      }

      ioSurface = self->_ioSurface;
      if (!ioSurface)
      {
        Width = self->_pixelSize.width;
        goto LABEL_8;
      }

      Width = IOSurfaceGetWidth(ioSurface);
      v6 = IOSurfaceGetHeight(self->_ioSurface);
    }

    height = v6;
    self->_pixelSize.width = Width;
    self->_pixelSize.height = v6;
  }

LABEL_8:
  v10 = Width;
  result.height = height;
  result.width = v10;
  return result;
}

- (void)ioSurface
{
  result = self->_ioSurface;
  if (!result)
  {
    result = self->_CGImage;
    if (result)
    {
      return MEMORY[0x1EEDBA140]();
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PLImageContainer;
  v4 = [(PLImageContainer *)&v13 description];
  ioSurface = self->_ioSurface;
  CIImage = self->_CIImage;
  CGImage = self->_CGImage;
  data = self->_data;
  uniformTypeIdentifier = self->_uniformTypeIdentifier;
  v10 = NSStringFromSize(self->_pixelSize);
  v11 = [v3 stringWithFormat:@"%@ (IOS:%@ CGI:%@ CII:%@ D:%@ UTI:%@ sz:%@)", v4, ioSurface, CGImage, CIImage, data, uniformTypeIdentifier, v10];

  return v11;
}

- (void)dealloc
{
  CGImageRelease(self->_CGImage);
  self->_CGImage = 0;
  CIImage = self->_CIImage;
  self->_CIImage = 0;

  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
    self->_ioSurface = 0;
  }

  v5.receiver = self;
  v5.super_class = PLImageContainer;
  [(PLImageContainer *)&v5 dealloc];
}

- (PLImageContainer)initWithPLImage:(id)image backingData:(id)data uniformTypeIdentifier:(id)identifier auxiliaryImageRecords:(id)records
{
  recordsCopy = records;
  identifierCopy = identifier;
  dataCopy = data;
  imageCopy = image;
  v14 = MEMORY[0x19EAED870]();
  v15 = DCIM_CGImageRefFromPLImage();
  v16 = MEMORY[0x19EAED760](imageCopy);

  v17 = [(PLImageContainer *)self initWithCGImage:v15 ioSurface:v14 CIImage:v16 backingData:dataCopy uniformTypeIdentifier:identifierCopy size:recordsCopy auxiliaryImageRecords:-1.0, -1.0];
  return v17;
}

- (PLImageContainer)initWithCGImage:(CGImage *)image ioSurface:(void *)surface CIImage:(id)iImage backingData:(id)data uniformTypeIdentifier:(id)identifier size:(CGSize)size auxiliaryImageRecords:(id)records
{
  height = size.height;
  width = size.width;
  iImageCopy = iImage;
  dataCopy = data;
  identifierCopy = identifier;
  recordsCopy = records;
  v26.receiver = self;
  v26.super_class = PLImageContainer;
  v22 = [(PLImageContainer *)&v26 init];
  if (v22)
  {
    v22->_CGImage = CGImageRetain(image);
    objc_storeStrong(&v22->_CIImage, iImage);
    if (surface)
    {
      v22->_ioSurface = CFRetain(surface);
    }

    objc_storeStrong(&v22->_data, data);
    v23 = [identifierCopy copy];
    uniformTypeIdentifier = v22->_uniformTypeIdentifier;
    v22->_uniformTypeIdentifier = v23;

    v22->_pixelSize.width = width;
    v22->_pixelSize.height = height;
    objc_storeStrong(&v22->_auxiliaryImageRecords, records);
  }

  return v22;
}

@end