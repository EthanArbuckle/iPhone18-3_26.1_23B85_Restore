@interface AXRuntimeCheck
@end

@implementation AXRuntimeCheck

uint64_t __AXRuntimeCheck_HasANE_block_invoke()
{
  result = AppleNeuralEngineLibraryCore();
  if (result)
  {
    result = [get_ANEDeviceInfoClass() hasANE];
    AXRuntimeCheck_HasANE__hasANE = result;
  }

  return result;
}

void __AXRuntimeCheck_isANEDeviceH13plus_block_invoke()
{
  if (AppleNeuralEngineLibraryCore())
  {
    v0 = [get_ANEDeviceInfoClass() aneSubType];
    v4 = [v0 uppercaseString];

    v1 = [v4 componentsSeparatedByString:@"H"];
    v2 = [v1 lastObject];
    v3 = [v2 integerValue];

    AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus = v3 > 0xC;
  }
}

uint64_t __AXRuntimeCheck_SupportsMedina_block_invoke()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMGGetBoolAnswerSymbolLoc_ptr;
  v6 = getMGGetBoolAnswerSymbolLoc_ptr;
  if (!getMGGetBoolAnswerSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getMGGetBoolAnswerSymbolLoc_block_invoke;
    v2[3] = &unk_1E6F45698;
    v2[4] = &v3;
    __getMGGetBoolAnswerSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    __AXRuntimeCheck_SupportsMedina_block_invoke_cold_1();
  }

  result = v0(@"ExclaveCapability");
  AXRuntimeCheck_SupportsMedina__supportsMedina = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsMacAXV2_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsMacAXV2__supportsMacAXV2 = result;
  return result;
}

void __AXRuntimeCheck_VoiceOverSupportsNeuralVoices_block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v0 = AXRuntimeCheck_HasANE__hasANE;
  }

  else
  {
    v0 = 0;
  }

  AXRuntimeCheck_VoiceOverSupportsNeuralVoices__supportsMacAXV2 = v0 & 1;
}

uint64_t __AXRuntimeCheck_MauiSSE_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_MauiSSE__mauiSSE = result;
  return result;
}

uint64_t __AXRuntimeCheck_PerVoiceSettings_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_PerVoiceSettings__ffEnabled_PerVoiceSettings = result;
  return result;
}

uint64_t __AXRuntimeCheck_MauiSSEOnly_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_MauiSSEOnly__ffEnabled_MauiSSEOnly = result;
  return result;
}

uint64_t __AXRuntimeCheck_SiriSSEOnly_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SiriSSEOnly__ffEnabled_SiriSSEOnly = result;
  return result;
}

uint64_t __AXRuntimeCheck_SpeakUp_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SpeakUp__ffEnabled_SpeakUp = result;
  return result;
}

uint64_t __AXRuntimeCheck_DwellKeyboardKeyTimer_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_DwellKeyboardKeyTimer__ffEnabled_DwellKeyboardKeyTimer = result;
  return result;
}

uint64_t __AXRuntimeCheck_DwellKeyboardSwipe_iPad_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_DwellKeyboardSwipe_iPad__ffEnabled_DwellKeyboardSwipe_iPad = result;
  return result;
}

uint64_t __AXRuntimeCheck_DwellKeyboardSwipeContinuous_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_DwellKeyboardSwipeContinuous__ffEnabled_DwellKeyboardSwipeContinuous = result;
  return result;
}

uint64_t __AXRuntimeCheck_DwellKeyboardSwipe_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_DwellKeyboardSwipe__ffEnabled_DwellKeyboardSwipe = result;
  return result;
}

uint64_t __AXRuntimeCheck_MediaAnalysisSupport_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_MediaAnalysisSupport__supportsMediaAnalysisServices = result;
  return result;
}

void __AXRuntimeCheck_ScreenRecognitionSupport_block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  if ([v1 physicalMemory] < 0x77359400)
  {
    v0 = 0;
  }

  else
  {
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v0 = AXRuntimeCheck_HasANE__hasANE;
  }

  AXRuntimeCheck_ScreenRecognitionSupport__supportsScreenRecognition = v0 & 1;
}

uint64_t __AXRuntimeCheck_SupportsIncreaseBrightnessFloor_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsIncreaseBrightnessFloor__supportsIncreaseBrightnessFloor = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsDoseAnalysis_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsDoseAnalysis__supportsDoseAnalysis = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsVoiceoverIndepedentVolume_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsVoiceoverIndepedentVolume__supportsVoiceoverIndepedentVolume = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsBrailleUI_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsBrailleUI__supportsBrailleUI = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsWatchControlAXFocusSystem_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsWatchControlAXFocusSystem__supportsWatchControlAXFocusSystem = result;
  return result;
}

uint64_t __AXRuntimeCheck_SupportsVoiceOverReadPrefixes_block_invoke()
{
  result = _os_feature_enabled_impl();
  AXRuntimeCheck_SupportsVoiceOverReadPrefixes__supportsVoiceOverReadPrefixes = result;
  return result;
}

void __AXRuntimeCheck_SupportsMedina_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool soft_MGGetBoolAnswer(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"AXFeatureRuntimeSupport.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

@end