@interface AXBooleanPreferencesWithNonZeroDefaultValues
@end

@implementation AXBooleanPreferencesWithNonZeroDefaultValues

void ___AXBooleanPreferencesWithNonZeroDefaultValues_block_invoke()
{
  v3[20] = *MEMORY[0x1E69E9840];
  v3[0] = @"AXSAirPodsSpatialAudioLockToDevice";
  v3[1] = kAXSAttentionAwarenessFeaturesEnabledPreference;
  v3[2] = kAXSDisplayFilterShowInitialAlertPreference;
  v3[3] = kAXSEarpieceNoiseCancellationPreference;
  v3[4] = kAXSPhoneLockToEndCallPreference;
  v3[5] = kAXSHearingAidRingtoneStreamingPreference;
  v3[6] = kAXSReduceMotionAutoplayMessagesEffectsPreference;
  v3[7] = kAXSReduceMotionAutoplayAnimatedImagesPreference;
  v3[8] = kAXSLowerCaseKeyboardEnabledPreference;
  v3[9] = kAXSAppSwitcherAutoSelectPreference;
  v3[10] = kAXSSwitchControlUseExtendedKeyboardPredictionsEnabledPreference;
  v3[11] = kAXSWebAccessibilityEventsEnabledPreference;
  v3[12] = kAXSAutomaticSubtitlesShowWhenMutedPreference;
  v3[13] = kAXSAutomaticSubtitlesShowOnSkipBackPreference;
  v3[14] = kAXSPointerAllowAppCustomizationEnabledPreference;
  v3[15] = kAXSPointerInertiaEnabledPreference;
  v3[16] = kAXSPointerEffectScalingEnabledPreference;
  v3[17] = kAXSPointerAutoHideEnabledPreference;
  v3[18] = kAXSPointerScaleWithZoomLevelEnabledPreference;
  v3[19] = kAXSForceTouchEnabledPreference;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:20];
  v1 = _AXBooleanPreferencesWithNonZeroDefaultValues_BooleanPreferencesWithNonZeroDefaultValues;
  _AXBooleanPreferencesWithNonZeroDefaultValues_BooleanPreferencesWithNonZeroDefaultValues = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end