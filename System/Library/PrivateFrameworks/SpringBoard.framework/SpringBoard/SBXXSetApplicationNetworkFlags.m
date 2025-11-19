@interface SBXXSetApplicationNetworkFlags
@end

@implementation SBXXSetApplicationNetworkFlags

uint64_t ___SBXXSetApplicationNetworkFlags_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUsesEdgeNetwork:*(a1 + 40) != 0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 41) != 0;

  return [v2 setUsesWiFiNetwork:v3];
}

@end