@interface PXGMotionBlurEffect
- (PXGMotionBlurEffect)initWithEntityManager:(id)a3;
@end

@implementation PXGMotionBlurEffect

- (PXGMotionBlurEffect)initWithEntityManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXGMotionBlurEffect;
  result = [(PXGEffect *)&v4 initWithEntityManager:a3];
  if (result)
  {
    result->_intensity = 0.1;
  }

  return result;
}

@end