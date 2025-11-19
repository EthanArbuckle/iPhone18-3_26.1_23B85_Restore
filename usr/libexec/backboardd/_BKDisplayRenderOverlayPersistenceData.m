@interface _BKDisplayRenderOverlayPersistenceData
+ (id)classesRequiredToDecode;
- (_BKDisplayRenderOverlayPersistenceData)initWithCoder:(id)a3;
- (id)_initWithDescriptor:(id)a3 overlayType:(int64_t)a4 imageData:(id)a5 level:(float)a6 frozen:(BOOL)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(CGImage *)a3;
@end

@implementation _BKDisplayRenderOverlayPersistenceData

- (_BKDisplayRenderOverlayPersistenceData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"overlayType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
  [v4 decodeFloatForKey:@"level"];
  v8 = v7;
  v9 = [v4 decodeBoolForKey:@"frozen"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData2"];

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
    v13 = 0;
  }

  else
  {
    LODWORD(v11) = v8;
    self = [(_BKDisplayRenderOverlayPersistenceData *)self _initWithDescriptor:v6 overlayType:v5 imageData:v10 level:v9 frozen:v11];
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  *&v4 = self->_level;
  [v11 encodeFloat:@"level" forKey:v4];
  [v11 encodeInteger:self->_overlayType forKey:@"overlayType"];
  [v11 encodeBool:self->_frozen forKey:@"frozen"];
  [v11 encodeObject:self->_descriptor forKey:@"descriptor"];
  v5 = v11;
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
    v5 = v11;
    if (imageData)
    {
LABEL_2:
      [v11 encodeObject:imageData forKey:@"imageData2"];
      v5 = v11;
    }
  }
}

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image != a3)
  {
    if (image)
    {
      CGImageRelease(image);
      imageData = self->_imageData;
      self->_imageData = 0;
    }

    self->_image = CGImageRetain(a3);
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

- (id)_initWithDescriptor:(id)a3 overlayType:(int64_t)a4 imageData:(id)a5 level:(float)a6 frozen:(BOOL)a7
{
  v13 = a3;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = _BKDisplayRenderOverlayPersistenceData;
  v15 = [(_BKDisplayRenderOverlayPersistenceData *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_level = a6;
    v15->_overlayType = a4;
    objc_storeStrong(&v15->_descriptor, a3);
    v17 = CGDataProviderCreateWithCFData(v14);
    v18 = CGImageCreateWithPNGDataProvider(v17, 0, 0, kCGRenderingIntentDefault);
    CGDataProviderRelease(v17);
    CFAutorelease(v18);
    v16->_image = v18;
    CFRetain(v18);
    objc_storeStrong(&v16->_imageData, a5);
    v16->_frozen = a7;
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