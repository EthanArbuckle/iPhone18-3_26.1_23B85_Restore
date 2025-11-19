@interface SBXXDeactivateReachability
@end

@implementation SBXXDeactivateReachability

void ___SBXXDeactivateReachability_block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D67608];
  v6[0] = &unk_283370160;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v1 = MEMORY[0x277D65DD0];
  v2 = v0;
  v3 = [v1 sharedInstance];
  [v3 emitEvent:8 withPayload:v2];

  v4 = +[SBReachabilityManager sharedInstance];
  [v4 deactivateReachability];
}

@end