@interface PXGExposureBlurEffect
- (PXGExposureBlurEffect)initWithEntityManager:(id)manager;
- (id)kernel;
@end

@implementation PXGExposureBlurEffect

- (id)kernel
{
  if (!self->_kernel)
  {
    v3 = objc_alloc_init(PXGExposureBlurKernel);
    kernel = self->_kernel;
    self->_kernel = v3;
  }

  [(PXGExposureBlurEffect *)self radius];
  v6 = v5;
  [(PXGEffect *)self scale];
  [(PXGExposureBlurKernel *)self->_kernel setRadius:v6 * v7];
  [(PXGExposureBlurEffect *)self exposure];
  [(PXGExposureBlurKernel *)self->_kernel setExposure:?];
  [(PXGExposureBlurEffect *)self multiplier];
  [(PXGExposureBlurKernel *)self->_kernel setMultiplier:?];
  v8 = self->_kernel;

  return v8;
}

- (PXGExposureBlurEffect)initWithEntityManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PXGExposureBlurEffect;
  result = [(PXGEffect *)&v4 initWithEntityManager:manager];
  if (result)
  {
    result->_radius = 20.0;
    result->_exposure = 1.0;
    result->_multiplier = 1.0;
  }

  return result;
}

@end