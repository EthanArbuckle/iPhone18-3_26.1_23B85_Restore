@interface TVMonogramLayout
- (double)defaultFocusSizeIncrease;
@end

@implementation TVMonogramLayout

- (double)defaultFocusSizeIncrease
{
  v2 = +[TVMLUtilities _isSolariumMetricsEnabled];
  result = 52.0;
  if (v2)
  {
    return 40.0;
  }

  return result;
}

@end