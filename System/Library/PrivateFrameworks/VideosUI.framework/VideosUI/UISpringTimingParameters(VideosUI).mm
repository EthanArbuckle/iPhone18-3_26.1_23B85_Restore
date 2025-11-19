@interface UISpringTimingParameters(VideosUI)
- (id)vui_initWithDampingRatio:()VideosUI frequencyResponse:;
@end

@implementation UISpringTimingParameters(VideosUI)

- (id)vui_initWithDampingRatio:()VideosUI frequencyResponse:
{
  v3 = [a1 initWithMass:1.0 stiffness:6.28318531 / a3 * (6.28318531 / a3) damping:a2 * 12.5663706 / a3 initialVelocity:{0.0, 0.0}];

  return v3;
}

@end