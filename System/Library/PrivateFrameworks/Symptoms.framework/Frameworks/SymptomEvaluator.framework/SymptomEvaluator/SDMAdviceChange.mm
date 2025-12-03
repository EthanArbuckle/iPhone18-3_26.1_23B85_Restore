@interface SDMAdviceChange
- (SDMAdviceChange)init;
@end

@implementation SDMAdviceChange

- (SDMAdviceChange)init
{
  v6.receiver = self;
  v6.super_class = SDMAdviceChange;
  v2 = [(SDMAdviceChange *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SDMAdviceChange *)v2 setUlPriorThroughputBps:0];
    [(SDMAdviceChange *)v3 setDlPriorThroughputBps:0];
    [(SDMAdviceChange *)v3 setUlSubsequentThroughputBps:0];
    [(SDMAdviceChange *)v3 setDlSubsequentThroughputBps:0];
    array = [MEMORY[0x277CBEB18] array];
    [(SDMAdviceChange *)v3 setPreviousAdviceParticipants:array];
  }

  return v3;
}

@end