@interface SBXXGetScheduledPowerEvents
@end

@implementation SBXXGetScheduledPowerEvents

void ___SBXXGetScheduledPowerEvents_block_invoke(uint64_t a1)
{
  v2 = _SBWorkspaceCopyScheduledPowerEvents();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end