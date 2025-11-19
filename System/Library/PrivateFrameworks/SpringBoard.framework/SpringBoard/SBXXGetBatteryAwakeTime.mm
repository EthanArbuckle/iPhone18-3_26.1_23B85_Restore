@interface SBXXGetBatteryAwakeTime
@end

@implementation SBXXGetBatteryAwakeTime

void ___SBXXGetBatteryAwakeTime_block_invoke(uint64_t a1)
{
  v2 = _SBWorkspaceGetBatteryAwakeTime();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end