@interface UIFont(WFDynamicType)
- (double)wf_bodyLeading;
- (double)wf_scaledValueForValue:()WFDynamicType baseFont:;
@end

@implementation UIFont(WFDynamicType)

- (double)wf_bodyLeading
{
  [self leading];
  v3 = v2;
  [self lineHeight];
  return v3 + v4;
}

- (double)wf_scaledValueForValue:()WFDynamicType baseFont:
{
  v6 = a4;
  [self wf_bodyLeading];
  v8 = v7 * a2;
  [v6 wf_bodyLeading];
  v10 = v9;

  return round(v8 / v10);
}

@end