@interface SBRenderImage
- (SBRenderImage)initWithRenderImage:(_CARenderImage *)image;
- (void)dealloc;
@end

@implementation SBRenderImage

- (SBRenderImage)initWithRenderImage:(_CARenderImage *)image
{
  v5.receiver = self;
  v5.super_class = SBRenderImage;
  v3 = [(SBRenderImage *)&v5 init];
  if (v3)
  {
    v3->_image = CARenderRetain();
  }

  return v3;
}

- (void)dealloc
{
  CARenderRelease();
  v3.receiver = self;
  v3.super_class = SBRenderImage;
  [(SBRenderImage *)&v3 dealloc];
}

@end