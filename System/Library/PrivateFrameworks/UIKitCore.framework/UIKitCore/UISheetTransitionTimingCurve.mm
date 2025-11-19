@interface UISheetTransitionTimingCurve
@end

@implementation UISheetTransitionTimingCurve

void ___UISheetTransitionTimingCurve_block_invoke()
{
  v0 = [UISpringTimingParameters alloc];
  v3 = _UISheetTransitionSpringParametersHighSpeed(0);
  v1 = [(UISpringTimingParameters *)v0 initWithParameters:v3 initialVelocity:0.0, 0.0];
  v2 = _MergedGlobals_1050;
  _MergedGlobals_1050 = v1;
}

@end