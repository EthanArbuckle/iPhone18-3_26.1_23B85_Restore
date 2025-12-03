@interface WBSCGImage
+ (id)imageByAdoptingCGImage:(CGImage *)image;
+ (id)imageWithCGImage:(CGImage *)image;
- (void)dealloc;
@end

@implementation WBSCGImage

+ (id)imageWithCGImage:(CGImage *)image
{
  if (image)
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4[1] = CGImageRetain(image);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageByAdoptingCGImage:(CGImage *)image
{
  if (image)
  {
    v5 = objc_alloc_init(objc_opt_class());
    v5[1] = image;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  CGImageRelease(self->_CGImage);
  v3.receiver = self;
  v3.super_class = WBSCGImage;
  [(WBSCGImage *)&v3 dealloc];
}

@end