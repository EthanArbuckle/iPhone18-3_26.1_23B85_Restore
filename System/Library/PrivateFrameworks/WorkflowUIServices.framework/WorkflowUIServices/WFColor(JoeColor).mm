@interface WFColor(JoeColor)
- (BOOL)wf_isVeryDark;
- (BOOL)wf_isVeryLight;
@end

@implementation WFColor(JoeColor)

- (BOOL)wf_isVeryLight
{
  [self red];
  if (v2 < 0.95)
  {
    return 0;
  }

  [self green];
  if (v3 < 0.95)
  {
    return 0;
  }

  [self blue];
  return v5 >= 0.95;
}

- (BOOL)wf_isVeryDark
{
  v2 = 0.0;
  [self getHue:0 saturation:0 value:&v2 alpha:0];
  return v2 <= 0.1;
}

@end