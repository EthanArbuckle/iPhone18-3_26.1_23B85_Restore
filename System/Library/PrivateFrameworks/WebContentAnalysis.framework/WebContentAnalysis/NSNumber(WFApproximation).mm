@interface NSNumber(WFApproximation)
- (BOOL)WF_isEqualToNumber:()WFApproximation withPrecision:;
@end

@implementation NSNumber(WFApproximation)

- (BOOL)WF_isEqualToNumber:()WFApproximation withPrecision:
{
  [a1 floatValue];
  v7 = v6;
  [a4 floatValue];
  return vabds_f32(v7, v8) < a2;
}

@end