@interface _BKDisplayRenderOverlayPersistenceData
+ (id)classesRequiredToDecode;
- (_BKDisplayRenderOverlayPersistenceData)initWithCoder:(id)coder;
- (id)_initWithDescriptor:(id)descriptor overlayType:(int64_t)type imageData:(id)data level:(float)level frozen:(BOOL)frozen;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(CGImage *)image;
@end

@implementation _BKDisplayRenderOverlayPersistenceData

- (_BKDisplayRenderOverlayPersistenceData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"overlayType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
  [coderCopy decodeFloatForKey:@"level"];
  v8 = v7;
  v9 = [coderCopy decodeBoolForKey:@"frozen"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData2"];

  if (v6)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    selfCopy = 0;
  }

  else
  {
    LODWORD(v11) = v8;
    self = [(_BKDisplayRenderOverlayPersistenceData *)self _initWithDescriptor:v6 overlayType:v5 imageData:v10 level:v9 frozen:v11];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v4 = self->_level;
  [coderCopy encodeFloat:@"level" forKey:v4];
  [coderCopy encodeInteger:self->_overlayType forKey:@"overlayType"];
  [coderCopy encodeBool:self->_frozen forKey:@"frozen"];
  [coderCopy encodeObject:self->_descriptor forKey:@"descriptor"];
  v5 = coderCopy;
  imageData = self->_imageData;
  if (imageData)
  {
    goto LABEL_2;
  }

  image = self->_image;
  if (image)
  {
    v8 = +[NSMutableData data];
    v9 = CGImageDestinationCreateWithData(v8, @"public.png", 1uLL, 0);
    CGImageDestinationAddImage(v9, image, 0);
    if (!CGImageDestinationFinalize(v9))
    {

      v8 = 0;
    }

    CFRelease(v9);
    v10 = self->_imageData;
    self->_imageData = v8;

    imageData = self->_imageData;
    v5 = coderCopy;
    if (imageData)
    {
LABEL_2:
      [coderCopy encodeObject:imageData forKey:@"imageData2"];
      v5 = coderCopy;
    }
  }
}

- (void)setImage:(CGImage *)image
{
  image = self->_image;
  if (image != image)
  {
    if (image)
    {
      CGImageRelease(image);
      imageData = self->_imageData;
      self->_imageData = 0;
    }

    self->_image = CGImageRetain(image);
  }
}

- (void)dealloc
{
  self->_overlayType = 0;
  image = self->_image;
  if (image)
  {
    CGImageRelease(image);
  }

  v4.receiver = self;
  v4.super_class = _BKDisplayRenderOverlayPersistenceData;
  [(_BKDisplayRenderOverlayPersistenceData *)&v4 dealloc];
}

- (id)_initWithDescriptor:(id)descriptor overlayType:(int64_t)type imageData:(id)data level:(float)level frozen:(BOOL)frozen
{
  descriptorCopy = descriptor;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = _BKDisplayRenderOverlayPersistenceData;
  v15 = [(_BKDisplayRenderOverlayPersistenceData *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_level = level;
    v15->_overlayType = type;
    objc_storeStrong(&v15->_descriptor, descriptor);
    v17 = CGDataProviderCreateWithCFData(dataCopy);
    v18 = CGImageCreateWithPNGDataProvider(v17, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v17);
    CFAutorelease(v18);
    v16->_image = v18;
    CFRetain(v18);
    objc_storeStrong(&v16->_imageData, data);
    v16->_frozen = frozen;
  }

  return v16;
}

+ (id)classesRequiredToDecode
{
  v2 = +[BKSDisplayRenderOverlayDescriptor _classesRequiredToDecode];
  v3 = [NSMutableSet setWithSet:v2];

  [v3 addObject:objc_opt_class()];

  return v3;
}

@end