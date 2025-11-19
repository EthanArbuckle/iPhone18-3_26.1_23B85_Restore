@interface PXGRotationalMotionBlurEffect
- (id)kernel;
@end

@implementation PXGRotationalMotionBlurEffect

- (id)kernel
{
  if (!self->_polarBlur)
  {
    v3 = objc_alloc_init(PXGPolarBlurKernel);
    polarBlur = self->_polarBlur;
    self->_polarBlur = v3;
  }

  [(PXGMotionBlurEffect *)self intensity];
  [(PXGPolarBlurKernel *)self->_polarBlur setRotationAngle:v5 * 1.57079633];
  v6 = self->_polarBlur;

  return v6;
}

@end