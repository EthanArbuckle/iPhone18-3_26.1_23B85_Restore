@interface WBSCGImage
+ (id)imageByAdoptingCGImage:(CGImage *)a3;
+ (id)imageWithCGImage:(CGImage *)a3;
- (void)dealloc;
@end

@implementation WBSCGImage

+ (id)imageWithCGImage:(CGImage *)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4[1] = CGImageRetain(a3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageByAdoptingCGImage:(CGImage *)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(objc_opt_class());
    v5[1] = a3;
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