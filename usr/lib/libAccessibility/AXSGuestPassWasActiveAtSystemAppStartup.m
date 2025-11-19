@interface AXSGuestPassWasActiveAtSystemAppStartup
@end

@implementation AXSGuestPassWasActiveAtSystemAppStartup

void ___AXSGuestPassWasActiveAtSystemAppStartup_block_invoke()
{
  if (_AXSProcessIsSpringBoard_onceToken != -1)
  {
    ___AXSShouldLoadInvertBundles_block_invoke_cold_1();
  }

  if (_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard == 1)
  {
    if (_getBooleanPreference(kAXSGuestPassSessionActivePreference, 0))
    {
      _AXSGuestPassWasActiveAtSystemAppStartup_InGuestPassAtSystemAppStartup = 1;
    }
  }
}

@end