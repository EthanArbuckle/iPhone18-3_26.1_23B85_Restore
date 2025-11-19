@interface SBLockScreenDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBLockScreenDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"limitFeaturesForRemoteLock"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBFeaturesLockedForRemoteLock" toDefaultValue:MEMORY[0x1E695E110] options:6];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showLegalText"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:MEMORY[0x1BFB4D220]("-[SBLockScreenDefaults _bindAndRegisterDefaults]")];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBShowLegalTextOnLockScreen" toDefaultValue:v6 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showAuthenticationEngineeringUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBShowAuthenticationEngineeringUI" toDefaultValue:v4 options:4];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showSupervisionText"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBShowSupervisionTextOnLockScreen" toDefaultValue:v4 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showQuickNoteFingerGestureRecognizer"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBShowQuickNoteFingerGestureRecognizer" toDefaultValue:v4 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceWakeToMaps"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBCoverSheetForceWakeToMaps" toDefaultValue:v4 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nowPlayingTimeout"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBCoverSheetPlayerTimeout" toDefaultValue:&unk_1F3D3EED8 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"weDontNeedNoEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBCoverSheetWeDontNeedNoEducation" toDefaultValue:v4 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"proportionalAdaptiveTime"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBCoverSheetProportionalAdaptiveTime" toDefaultValue:v4 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"areDeviceMotionEffectPerformanceOptimizationsDisabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBCoverSheetDisableDeviceMotionEffectPerformanceOptimizations" toDefaultValue:v4 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gesturalDismissalCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBCoverSheetGesturalDismissalCount" toDefaultValue:&unk_1F3D3E778 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useDefaultsValuesForCameraPrewarm"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"SBCoverSheetUseDefaultsValuesForCameraPrewarm" toDefaultValue:v4 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"prewarmCameraOnSwipe"];
  v18 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"SBCoverSheetPrewarmCameraOnSwipe" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cameraSwipePrewarmThreshold"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"SBCoverSheetCameraPrewarmThreshold" toDefaultValue:&unk_1F3D3EEE8 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"prelaunchCameraOnSwipe"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"SBCoverSheetPrelaunchCameraOnSwipe" toDefaultValue:v18 options:1];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cameraSwipePrelaunchThreshold"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v21 withDefaultKey:@"SBCoverSheetCameraPrelaunchThreshold" toDefaultValue:&unk_1F3D3EEE8 options:1];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"prewarmCameraOnButtonTouch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v22 withDefaultKey:@"SBCoverSheetPrewarmCameraOnButtonTouch" toDefaultValue:v18 options:1];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"prelaunchCameraOnButtonTouch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v23 withDefaultKey:@"SBCoverSheetPrelaunchCameraOnButtonTouch" toDefaultValue:v18 options:1];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useDefaultsValuesForDateTimeOverrides"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v24 withDefaultKey:@"SBCoverSheetUseDefaultsForDateTimeOverrides" toDefaultValue:v4 options:1];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dateTimeOverridesIntervalSince1970"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v25 withDefaultKey:@"SBCoverSheetOverridesDateTimeIntervalSince1970" toDefaultValue:&unk_1F3D3E778 options:1];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"overridesDateTimeToDefaultToday"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v26 withDefaultKey:@"SBCoverSheetOverridesDateTimeToDefaultToday" toDefaultValue:v4 options:1];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"overridesDateTimeToDefaultPast"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v27 withDefaultKey:@"SBCoverSheetOverridesDateTimeToDefaultPast" toDefaultValue:v4 options:1];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sessionTestWidgetInfo"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v28 withDefaultKey:@"SBCoverSheetSessionTestWidgetInfo" toDefaultValue:0 options:4];

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideBundleLeading"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v29 withDefaultKey:@"SBCoverSheetQuickActionOverrideBundleLeading" toDefaultValue:0 options:4];

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideContainerLeading"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v30 withDefaultKey:@"SBCoverSheetQuickActionOverrideContainerLeading" toDefaultValue:0 options:4];

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideKindLeading"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v31 withDefaultKey:@"SBCoverSheetQuickActionOverrideKindLeading" toDefaultValue:0 options:4];

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideBundleTrailing"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v32 withDefaultKey:@"SBCoverSheetQuickActionOverrideBundleTrailing" toDefaultValue:0 options:4];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideContainerTrailing"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v33 withDefaultKey:@"SBCoverSheetQuickActionOverrideContainerTrailing" toDefaultValue:0 options:4];

  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quickActionOverrideKindTrailing"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v34 withDefaultKey:@"SBCoverSheetQuickActionOverrideKindTrailing" toDefaultValue:0 options:4];

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disallowGlassLockScreen"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v35 withDefaultKey:@"SBDisallowGlassLockScreen" toDefaultValue:v4 options:1];

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hideNotifications"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v36 withDefaultKey:@"SBHideNotifications" toDefaultValue:v4 options:1];

  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableIconFlyInAnimation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v37 withDefaultKey:@"SBDisableIconFlyInAnimation" toDefaultValue:v4 options:1];
}

@end