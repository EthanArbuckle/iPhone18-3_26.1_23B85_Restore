@interface _UIStatusBarDynamicSplitAvoidanceData
- (_UIStatusBarDynamicSplitAvoidanceData)init;
- (_UIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)delta trailingDelta:(double)trailingDelta;
@end

@implementation _UIStatusBarDynamicSplitAvoidanceData

- (_UIStatusBarDynamicSplitAvoidanceData)init
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDynamicSplitAvoidanceData;
  v2 = [(_UIStatusBarDynamicSplitAvoidanceData *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_UIStatusBarDynamicSplitAvoidanceData *)v2 setAvoidanceFrameAbsoluteFrames:dictionary];
  }

  return v2;
}

- (_UIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)delta trailingDelta:(double)trailingDelta
{
  v6 = [(_UIStatusBarDynamicSplitAvoidanceData *)self init];
  v7 = v6;
  if (v6)
  {
    [(_UIStatusBarDynamicSplitAvoidanceData *)v6 setLeadingDelta:delta];
    [(_UIStatusBarDynamicSplitAvoidanceData *)v7 setTrailingDelta:trailingDelta];
  }

  return v7;
}

@end