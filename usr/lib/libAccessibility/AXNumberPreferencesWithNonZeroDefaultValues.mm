@interface AXNumberPreferencesWithNonZeroDefaultValues
@end

@implementation AXNumberPreferencesWithNonZeroDefaultValues

void ___AXNumberPreferencesWithNonZeroDefaultValues_block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v3[0] = kAXSRestingHomeButtonUnlockPreference;
  v3[1] = kAXSPreferredFontSizePreference;
  v4[0] = &unk_1EF550568;
  v4[1] = &unk_1EF5506E8;
  v3[2] = kAXSVoiceOverTouchSpeakingRatePreference;
  v3[3] = kAXSVoiceOverTouchVolumePreference;
  v4[2] = &unk_1EF5506F8;
  v4[3] = &unk_1EF550708;
  v3[4] = kAXSVoiceOverTouchMediaDuckingModePreference;
  v3[5] = kAXSHoverTextTypingDisplayModePreference;
  v4[4] = &unk_1EF550580;
  v4[5] = &unk_1EF550598;
  v3[6] = kAXSHoverTextFontSizePreference;
  v3[7] = kAXSHoverTextBackgroundOpacityPreference;
  v4[6] = &unk_1EF550738;
  v4[7] = &unk_1EF550748;
  v3[8] = kAXSForceTouchSensitivityPreference;
  v3[9] = kAXSForceTouchTimingPreference;
  v4[8] = &unk_1EF550718;
  v4[9] = &unk_1EF5505B0;
  v3[10] = kAXSPointerSizeMultiplierPreference;
  v3[11] = kAXSPointerAutoHideDurationPreference;
  v4[10] = &unk_1EF550718;
  v4[11] = &unk_1EF550728;
  v3[12] = kAXSPointerStrokeColorWidthPreference;
  v3[13] = kAXSVoiceOverSpeakUnderPointerDelayPreference;
  v4[12] = &unk_1EF550758;
  v4[13] = &unk_1EF550768;
  v3[14] = kAXSPointerVoiceOverCursorOptionPreference;
  v3[15] = kAXSIsolatedTreeModeEnabledPreference;
  v4[14] = &unk_1EF5505C8;
  v4[15] = &unk_1EF5505C8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:16];
  v1 = _AXNumberPreferencesWithNonZeroDefaultValues_NumberPreferencesWithNonZeroDefaultValues;
  _AXNumberPreferencesWithNonZeroDefaultValues_NumberPreferencesWithNonZeroDefaultValues = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end