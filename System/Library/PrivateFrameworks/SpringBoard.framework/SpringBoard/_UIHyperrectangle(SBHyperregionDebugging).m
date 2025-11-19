@interface _UIHyperrectangle(SBHyperregionDebugging)
- (double)sb_debugFrame;
- (double)sb_debugSize;
@end

@implementation _UIHyperrectangle(SBHyperregionDebugging)

- (double)sb_debugFrame
{
  v2 = *[a1 _minimumPoint];
  [a1 sb_debugSize];
  return v2;
}

- (double)sb_debugSize
{
  v2 = [a1 _minimumPoint];
  v3 = *[a1 _maximumPoint] - *v2;
  if (BSFloatIsZero())
  {
    v3 = 20.0;
  }

  BSFloatIsZero();
  return v3;
}

@end