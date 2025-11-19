@interface SBXXIsReachabilityEnabled
@end

@implementation SBXXIsReachabilityEnabled

void ___SBXXIsReachabilityEnabled_block_invoke(uint64_t a1)
{
  v2 = +[SBReachabilityManager sharedInstance];
  **(a1 + 32) = [v2 reachabilityEnabled];
}

@end