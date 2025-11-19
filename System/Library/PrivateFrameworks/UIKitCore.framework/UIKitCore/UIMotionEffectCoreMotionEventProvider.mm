@interface UIMotionEffectCoreMotionEventProvider
@end

@implementation UIMotionEffectCoreMotionEventProvider

uint64_t __63___UIMotionEffectCoreMotionEventProvider_startGeneratingEvents__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  [v2 deviceMotionUpdateInterval];

  return [v2 setDeviceMotionCallback:_HandleNewDeviceMotion info:v1 interval:0 fsync:?];
}

@end