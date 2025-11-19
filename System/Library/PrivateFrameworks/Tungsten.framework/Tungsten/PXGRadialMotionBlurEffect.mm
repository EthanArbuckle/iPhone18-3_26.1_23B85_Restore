@interface PXGRadialMotionBlurEffect
- (id)kernel;
@end

@implementation PXGRadialMotionBlurEffect

- (id)kernel
{
  if (!self->_polarBlur)
  {
    v3 = objc_alloc_init(PXGPolarBlurKernel);
    polarBlur = self->_polarBlur;
    self->_polarBlur = v3;
  }

  [(PXGMotionBlurEffect *)self intensity];
  [(PXGPolarBlurKernel *)self->_polarBlur setScaleFactor:exp2(v5)];
  v6 = self->_polarBlur;

  return v6;
}

@end