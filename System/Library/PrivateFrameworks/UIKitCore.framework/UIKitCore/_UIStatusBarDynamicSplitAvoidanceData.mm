@interface _UIStatusBarDynamicSplitAvoidanceData
- (_UIStatusBarDynamicSplitAvoidanceData)init;
- (_UIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)a3 trailingDelta:(double)a4;
@end

@implementation _UIStatusBarDynamicSplitAvoidanceData

- (_UIStatusBarDynamicSplitAvoidanceData)init
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDynamicSplitAvoidanceData;
  v2 = [(_UIStatusBarDynamicSplitAvoidanceData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(_UIStatusBarDynamicSplitAvoidanceData *)v2 setAvoidanceFrameAbsoluteFrames:v3];
  }

  return v2;
}

- (_UIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)a3 trailingDelta:(double)a4
{
  v6 = [(_UIStatusBarDynamicSplitAvoidanceData *)self init];
  v7 = v6;
  if (v6)
  {
    [(_UIStatusBarDynamicSplitAvoidanceData *)v6 setLeadingDelta:a3];
    [(_UIStatusBarDynamicSplitAvoidanceData *)v7 setTrailingDelta:a4];
  }

  return v7;
}

@end