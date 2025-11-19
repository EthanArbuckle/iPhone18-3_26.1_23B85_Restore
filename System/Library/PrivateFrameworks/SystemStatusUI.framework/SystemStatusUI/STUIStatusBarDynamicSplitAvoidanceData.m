@interface STUIStatusBarDynamicSplitAvoidanceData
- (STUIStatusBarDynamicSplitAvoidanceData)init;
- (STUIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)a3 trailingDelta:(double)a4;
@end

@implementation STUIStatusBarDynamicSplitAvoidanceData

- (STUIStatusBarDynamicSplitAvoidanceData)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDynamicSplitAvoidanceData;
  v2 = [(STUIStatusBarDynamicSplitAvoidanceData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(STUIStatusBarDynamicSplitAvoidanceData *)v2 setAvoidanceFrameAbsoluteFrames:v3];
  }

  return v2;
}

- (STUIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)a3 trailingDelta:(double)a4
{
  v6 = [(STUIStatusBarDynamicSplitAvoidanceData *)self init];
  v7 = v6;
  if (v6)
  {
    [(STUIStatusBarDynamicSplitAvoidanceData *)v6 setLeadingDelta:a3];
    [(STUIStatusBarDynamicSplitAvoidanceData *)v7 setTrailingDelta:a4];
  }

  return v7;
}

@end