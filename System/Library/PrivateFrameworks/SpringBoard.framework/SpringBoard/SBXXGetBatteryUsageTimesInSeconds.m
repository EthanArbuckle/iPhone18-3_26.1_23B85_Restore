@interface SBXXGetBatteryUsageTimesInSeconds
@end

@implementation SBXXGetBatteryUsageTimesInSeconds

uint64_t ___SBXXGetBatteryUsageTimesInSeconds_block_invoke(uint64_t a1)
{
  BatteryUsageTimeInSeconds = _SBWorkspaceGetBatteryUsageTimeInSeconds();
  **(a1 + 32) = BatteryUsageTimeInSeconds;
  BatteryStandbyTimeInSeconds = _SBWorkspaceGetBatteryStandbyTimeInSeconds();
  **(a1 + 40) = BatteryStandbyTimeInSeconds;
  **(a1 + 48) = _SBWorkspaceAreUsageTimesTrusted();
  result = _SBWorkspaceHaveChargedPartially();
  **(a1 + 56) = result;
  return result;
}

@end