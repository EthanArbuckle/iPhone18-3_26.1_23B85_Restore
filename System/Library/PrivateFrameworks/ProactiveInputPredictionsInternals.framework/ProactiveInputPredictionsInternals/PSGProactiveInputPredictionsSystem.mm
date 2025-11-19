@interface PSGProactiveInputPredictionsSystem
+ (void)start;
@end

@implementation PSGProactiveInputPredictionsSystem

+ (void)start
{
  objc_opt_self();
  v2 = [MEMORY[0x277D02538] sharedInstance];
  [v2 registerForActivity:12 handler:&__block_literal_global_46];
}

void __71__PSGProactiveInputPredictionsSystem__registerForCustomResponseHarvest__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277D02538] sharedInstance];
  [v3 setState:v2 state:5];
}

@end