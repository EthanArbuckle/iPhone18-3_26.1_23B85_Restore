@interface AXSAccessibilityEnablers
@end

@implementation AXSAccessibilityEnablers

uint64_t ___AXSAccessibilityEnablers_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _AXSAccessibilityEnablers_Enablers;
  _AXSAccessibilityEnablers_Enablers = v0;

  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2103 forKey:@"_AXSAutomationEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2108 forKey:@"_AXSLocalizationCaptionMode"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2113 forKey:@"_AXSVoiceOverTouchEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2118 forKey:@"_AXSAssistiveTouchScannerEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2123 forKey:@"_AXSSpeakThisEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2128 forKey:@"_AXSSiriSemanticContextEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2133 forKey:@"_AXSClipTracerAccessibilityModeEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2138 forKey:@"_AXSNocturneAccessibilityModeEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2143 forKey:@"_AXSWordFeedbackEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2148 forKey:@"_AXSLetterFeedbackEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2153 forKey:@"_AXSPhoneticFeedbackEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2158 forKey:@"_AXSQuickTypePredictionFeedbackEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2163 forKey:@"_AXSAuditInspectionModeEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2168 forKey:@"_AXSHoverTextEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2173 forKey:@"_AXSHoverTextTypingEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2179 forKey:@"_AXSZoomSpeakUnderFingerEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2184 forKey:@"_AXSCommandAndControlEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2189 forKey:@"_AXSCommandAndControlCarPlayEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2194 forKey:@"_AXSFullKeyboardAccessEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2199 forKey:@"_AXSWatchControlEnabled"];
  [_AXSAccessibilityEnablers_Enablers setObject:&__block_literal_global_2205 forKey:@"AccessibilityReaderEnabled"];
  v2 = _AXSAccessibilityEnablers_Enablers;

  return [v2 setObject:&__block_literal_global_2210 forKey:@"_inUnitTestMode"];
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_2()
{
  _kAXSCacheAutomationEnabled = _getBooleanPreference(kAXSAutomationEnabledPreference, 0);
  if (_AXSAutomationEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_12();
  }

  return _kAXSCacheAutomationEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_3()
{
  if (_AXSLocalizationCaptionMode_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_6();
  }

  return _kAXSCacheLocalizationCaptionModeEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_5()
{
  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  return _kAXSCacheSwitchControlEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_7()
{
  if (_AXSSiriSemanticContextEnabled_onceToken != -1)
  {
    ___AXSAccessibilityEnablers_block_invoke_7_cold_1();
  }

  return _kAXSCacheSiriSemanticContextEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_8()
{
  if (_AXSClipTracerAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_7();
  }

  return _kAXSCacheClipTracerAccessibilityModeEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_9()
{
  if (_AXSNocturneAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_8();
  }

  return _kAXSCacheNocturneAccessibilityModeEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_14()
{
  if (_AXSAuditInspectionModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_9();
  }

  return _kAXSCacheAuditInspectionModeModeEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_16()
{
  if (_AXSHoverTextTypingEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_14();
  }

  return _kAXSCacheHoverTextTypingEnabled;
}

BOOL ___AXSAccessibilityEnablers_block_invoke_17()
{
  if (_AXSZoomSpeakUnderFingerEnabled_onceToken != -1)
  {
    ___AXSAccessibilityEnablers_block_invoke_17_cold_1();
  }

  if (!_kAXSCacheZoomSpeakUnderFingerEnabled)
  {
    return 0;
  }

  if (_AXSZoomTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_1();
  }

  return _kAXSCacheZoomTouchEnabled != 0;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_18()
{
  if (_AXSCommandAndControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_10();
  }

  return _kAXSCacheCommandAndControlEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_19()
{
  if (_AXSCommandAndControlCarPlayEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_11();
  }

  return _kAXSCacheCommandAndControlCarPlayEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_21()
{
  if (_AXSWatchControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_13();
  }

  return _kAXSCacheWatchControlEnabled;
}

uint64_t ___AXSAccessibilityEnablers_block_invoke_22()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Accessibility"];
  v1 = [v0 BOOLForKey:@"AccessibilityReaderEnabled"];

  return v1;
}

@end