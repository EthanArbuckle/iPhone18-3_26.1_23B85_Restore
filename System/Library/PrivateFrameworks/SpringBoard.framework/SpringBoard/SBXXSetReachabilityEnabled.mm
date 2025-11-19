@interface SBXXSetReachabilityEnabled
@end

@implementation SBXXSetReachabilityEnabled

void ___SBXXSetReachabilityEnabled_block_invoke(uint64_t a1)
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 setReachabilityEnabled:*(a1 + 32) != 0];
}

@end