@interface _UIHyperpoint(SBHyperregionDebugging)
- (double)sb_debugFrame;
@end

@implementation _UIHyperpoint(SBHyperregionDebugging)

- (double)sb_debugFrame
{
  v2 = *[a1 _value];
  [a1 sb_debugSize];
  return v2 - v3 * 0.5;
}

@end