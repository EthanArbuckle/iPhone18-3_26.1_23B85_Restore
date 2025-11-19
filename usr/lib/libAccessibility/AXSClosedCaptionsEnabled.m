@interface AXSClosedCaptionsEnabled
@end

@implementation AXSClosedCaptionsEnabled

void ___AXSClosedCaptionsEnabled_block_invoke()
{
  keyExistsAndHasValidFormat = 1;
  if (_AXSVideosPreferenceDomain_onceToken != -1)
  {
    ___AXSClosedCaptionsEnabled_block_invoke_cold_1();
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MovieClosedCaptioningEnabledSetting", _AXSVideosPreferenceDomain_Domain, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue;
    if (_AXSVideosPreferenceDomain_onceToken != -1)
    {
      ___AXSClosedCaptionsEnabled_block_invoke_cold_2();
    }

    CFPreferencesSetAppValue(@"MovieClosedCaptioningEnabledSetting", 0, _AXSVideosPreferenceDomain_Domain);
    _AXSClosedCaptionsSetEnabled(v1);
  }
}

@end