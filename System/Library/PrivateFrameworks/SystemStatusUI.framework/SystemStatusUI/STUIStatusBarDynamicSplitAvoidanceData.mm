@interface STUIStatusBarDynamicSplitAvoidanceData
- (STUIStatusBarDynamicSplitAvoidanceData)init;
- (STUIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)delta trailingDelta:(double)trailingDelta;
@end

@implementation STUIStatusBarDynamicSplitAvoidanceData

- (STUIStatusBarDynamicSplitAvoidanceData)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarDynamicSplitAvoidanceData;
  v2 = [(STUIStatusBarDynamicSplitAvoidanceData *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(STUIStatusBarDynamicSplitAvoidanceData *)v2 setAvoidanceFrameAbsoluteFrames:dictionary];
  }

  return v2;
}

- (STUIStatusBarDynamicSplitAvoidanceData)initWithLeadingDelta:(double)delta trailingDelta:(double)trailingDelta
{
  v6 = [(STUIStatusBarDynamicSplitAvoidanceData *)self init];
  v7 = v6;
  if (v6)
  {
    [(STUIStatusBarDynamicSplitAvoidanceData *)v6 setLeadingDelta:delta];
    [(STUIStatusBarDynamicSplitAvoidanceData *)v7 setTrailingDelta:trailingDelta];
  }

  return v7;
}

@end