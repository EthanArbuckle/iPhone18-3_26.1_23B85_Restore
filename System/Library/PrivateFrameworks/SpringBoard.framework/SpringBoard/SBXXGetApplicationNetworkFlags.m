@interface SBXXGetApplicationNetworkFlags
@end

@implementation SBXXGetApplicationNetworkFlags

uint64_t ___SBXXGetApplicationNetworkFlags_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dataUsage];
  **(a1 + 40) = result & 1;
  **(a1 + 48) = result & 2;
  return result;
}

@end