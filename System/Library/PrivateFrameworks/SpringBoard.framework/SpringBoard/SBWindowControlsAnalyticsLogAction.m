@interface SBWindowControlsAnalyticsLogAction
@end

@implementation SBWindowControlsAnalyticsLogAction

id ___SBWindowControlsAnalyticsLogAction_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"item";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end