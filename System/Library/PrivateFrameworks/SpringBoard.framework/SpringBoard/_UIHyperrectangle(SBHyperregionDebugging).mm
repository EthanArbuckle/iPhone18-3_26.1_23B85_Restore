@interface _UIHyperrectangle(SBHyperregionDebugging)
- (double)sb_debugFrame;
- (double)sb_debugSize;
@end

@implementation _UIHyperrectangle(SBHyperregionDebugging)

- (double)sb_debugFrame
{
  v2 = *[self _minimumPoint];
  [self sb_debugSize];
  return v2;
}

- (double)sb_debugSize
{
  _minimumPoint = [self _minimumPoint];
  v3 = *[self _maximumPoint] - *_minimumPoint;
  if (BSFloatIsZero())
  {
    v3 = 20.0;
  }

  BSFloatIsZero();
  return v3;
}

@end