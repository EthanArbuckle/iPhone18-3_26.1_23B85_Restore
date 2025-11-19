@interface RECGImageImage
- (BOOL)isEqual:(id)a3;
- (RECGImageImage)initWithCoder:(id)a3;
- (RECGImageImage)initWithImage:(CGImage *)a3 scale:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RECGImageImage

- (RECGImageImage)initWithImage:(CGImage *)a3 scale:(double)a4
{
  v8.receiver = self;
  v8.super_class = RECGImageImage;
  v6 = [(RECGImageImage *)&v8 init];
  if (v6)
  {
    v6->_CGImage = CGImageCreateCopy(a3);
    v6->_scale = a4;
  }

  return v6;
}

- (void)dealloc
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    CGImageRelease(CGImage);
  }

  v4.receiver = self;
  v4.super_class = RECGImageImage;
  [(RECGImageImage *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  CGImage = self->_CGImage;
  scale = self->_scale;

  return [v4 initWithImage:CGImage scale:scale];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 CGImage] == self->_CGImage)
    {
      [v5 scale];
      *&v7 = v7 - self->_scale;
      v6 = fabsf(*&v7) < 0.00000011921;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (RECGImageImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scale"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image-data"];

  v7 = CGDataProviderCreateWithCFData(v6);
  v8 = CGImageCreateWithPNGDataProvider(v7, 0, 0, kCGRenderingIntentDefault);
  CFAutorelease(v8);
  CFRelease(v7);
  [v5 doubleValue];
  v9 = [(RECGImageImage *)self initWithImage:v8 scale:?];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  [v8 encodeObject:v4 forKey:@"scale"];

  v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v6 = [*MEMORY[0x277CE1E10] identifier];
  v7 = CGImageDestinationCreateWithData(v5, v6, 0, 0);

  CGImageDestinationAddImage(v7, self->_CGImage, 0);
  if (CGImageDestinationFinalize(v7))
  {
    [v8 encodeObject:v5 forKey:@"image-data"];
  }

  CFRelease(v7);
}

@end