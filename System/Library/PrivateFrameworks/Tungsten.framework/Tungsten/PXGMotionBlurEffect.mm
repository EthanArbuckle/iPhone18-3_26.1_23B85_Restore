@interface PXGMotionBlurEffect
- (PXGMotionBlurEffect)initWithEntityManager:(id)manager;
@end

@implementation PXGMotionBlurEffect

- (PXGMotionBlurEffect)initWithEntityManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PXGMotionBlurEffect;
  result = [(PXGEffect *)&v4 initWithEntityManager:manager];
  if (result)
  {
    result->_intensity = 0.1;
  }

  return result;
}

@end