@interface PUIDPointerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PUIDPointerSettings

- (void)setDefaultValues
{
  v83.receiver = self;
  v83.super_class = PUIDPointerSettings;
  [(PUIDPointerSettings *)&v83 setDefaultValues];
  [(PUIDPointerSettings *)self setSystemPointerSize:19.0];
  [(PUIDPointerSettings *)self setAxLargeSystemPointerCenterDotSize:9.5];
  [(PUIDPointerSettings *)self setShouldPeriodicallyRefreshClientTransform:0];
  [(PUIDPointerSettings *)self setPeriodicClientTransformRefreshInterval:0.25];
  [(PUIDPointerSettings *)self setUnderlappingContentAllowed:1];
  [(PUIDPointerSettings *)self setShouldRecenterOnButtonDown:1];
  [(PUIDPointerSettings *)self setShouldRecenterAfterLiftingFinger:1];
  [(PUIDPointerSettings *)self setShouldRecenterAfterDelayOnMouseMovement:1];
  [(PUIDPointerSettings *)self setDelayBeforeRecenteringAfterMouseMovement:0.04];
  [(PUIDPointerSettings *)self setSystemPointerPressedScale:0.9];
  [(PUIDPointerSettings *)self setUnderlayingPointerPressedScaleFactor:1.02];
  [(PUIDPointerSettings *)self setVisibleToHiddenPointerScale:0.96];
  [(PUIDPointerSettings *)self setVisibleToHiddenPointerBlurRadius:1.5];
  visibleToHiddenAnimationSettings = [(PUIDPointerSettings *)self visibleToHiddenAnimationSettings];
  [visibleToHiddenAnimationSettings setDefaultValues];

  visibleToHiddenAnimationSettings2 = [(PUIDPointerSettings *)self visibleToHiddenAnimationSettings];
  [visibleToHiddenAnimationSettings2 setDampingRatio:1.0];

  visibleToHiddenAnimationSettings3 = [(PUIDPointerSettings *)self visibleToHiddenAnimationSettings];
  [visibleToHiddenAnimationSettings3 setResponse:0.5];

  visibleToHiddenScaleAnimationSettings = [(PUIDPointerSettings *)self visibleToHiddenScaleAnimationSettings];
  [visibleToHiddenScaleAnimationSettings setDefaultValues];

  visibleToHiddenScaleAnimationSettings2 = [(PUIDPointerSettings *)self visibleToHiddenScaleAnimationSettings];
  [visibleToHiddenScaleAnimationSettings2 setDampingRatio:1.0];

  visibleToHiddenScaleAnimationSettings3 = [(PUIDPointerSettings *)self visibleToHiddenScaleAnimationSettings];
  [visibleToHiddenScaleAnimationSettings3 setResponse:0.5];

  [(PUIDPointerSettings *)self setHiddenToVisiblePointerScale:1.75];
  [(PUIDPointerSettings *)self setHiddenToVisiblePointerBlurRadius:10.0];
  [(PUIDPointerSettings *)self setSupportsTeleporting:0];
  hiddenToVisibleAnimationSettings = [(PUIDPointerSettings *)self hiddenToVisibleAnimationSettings];
  [hiddenToVisibleAnimationSettings setDefaultValues];

  hiddenToVisibleAnimationSettings2 = [(PUIDPointerSettings *)self hiddenToVisibleAnimationSettings];
  [hiddenToVisibleAnimationSettings2 setDampingRatio:1.0];

  hiddenToVisibleAnimationSettings3 = [(PUIDPointerSettings *)self hiddenToVisibleAnimationSettings];
  [hiddenToVisibleAnimationSettings3 setResponse:0.2];

  hiddenToVisibleScaleAnimationSettings = [(PUIDPointerSettings *)self hiddenToVisibleScaleAnimationSettings];
  [hiddenToVisibleScaleAnimationSettings setDefaultValues];

  hiddenToVisibleScaleAnimationSettings2 = [(PUIDPointerSettings *)self hiddenToVisibleScaleAnimationSettings];
  [hiddenToVisibleScaleAnimationSettings2 setDampingRatio:1.0];

  hiddenToVisibleScaleAnimationSettings3 = [(PUIDPointerSettings *)self hiddenToVisibleScaleAnimationSettings];
  [hiddenToVisibleScaleAnimationSettings3 setResponse:0.15];

  visibleToHiddenTeleportingAnimationSettings = [(PUIDPointerSettings *)self visibleToHiddenTeleportingAnimationSettings];
  [visibleToHiddenTeleportingAnimationSettings setDefaultValues];

  visibleToHiddenTeleportingAnimationSettings2 = [(PUIDPointerSettings *)self visibleToHiddenTeleportingAnimationSettings];
  [visibleToHiddenTeleportingAnimationSettings2 setDampingRatio:1.0];

  visibleToHiddenTeleportingAnimationSettings3 = [(PUIDPointerSettings *)self visibleToHiddenTeleportingAnimationSettings];
  [visibleToHiddenTeleportingAnimationSettings3 setResponse:0.1];

  hiddenToVisibleTeleportingAnimationSettings = [(PUIDPointerSettings *)self hiddenToVisibleTeleportingAnimationSettings];
  [hiddenToVisibleTeleportingAnimationSettings setDefaultValues];

  hiddenToVisibleTeleportingAnimationSettings2 = [(PUIDPointerSettings *)self hiddenToVisibleTeleportingAnimationSettings];
  [hiddenToVisibleTeleportingAnimationSettings2 setDampingRatio:0.5];

  hiddenToVisibleTeleportingAnimationSettings3 = [(PUIDPointerSettings *)self hiddenToVisibleTeleportingAnimationSettings];
  [hiddenToVisibleTeleportingAnimationSettings3 setResponse:0.1];

  pressedScaleAnimationSettings = [(PUIDPointerSettings *)self pressedScaleAnimationSettings];
  [pressedScaleAnimationSettings setDefaultValues];

  pressedScaleAnimationSettings2 = [(PUIDPointerSettings *)self pressedScaleAnimationSettings];
  [pressedScaleAnimationSettings2 setDampingRatio:1.0];

  pressedScaleAnimationSettings3 = [(PUIDPointerSettings *)self pressedScaleAnimationSettings];
  [pressedScaleAnimationSettings3 setResponse:0.11];

  [(PUIDPointerSettings *)self setTapToClickButtonDownTime:0.073];
  [(PUIDPointerSettings *)self setDelayBeforeUnhidingOnTrackpadTouchDown:0.125];
  [(PUIDPointerSettings *)self setAutohideDurationForSystemPointer:3.25];
  [(PUIDPointerSettings *)self setAutohideDurationForFocusedPointer:3.25];
  [(PUIDPointerSettings *)self setAutohideDurationForSystemPointerMouse:8.0];
  [(PUIDPointerSettings *)self setAutohideDurationForFocusedPointerMouse:8.0];
  [(PUIDPointerSettings *)self setShouldAutohideAfterHitTestContextLoss:0];
  [(PUIDPointerSettings *)self setShouldHideWhileGesturing:0];
  [(PUIDPointerSettings *)self setDelayBeforeUnhidingAfterGesturing:0.095];
  [(PUIDPointerSettings *)self setSpecularStandardOpacityMultiplier:0.0475];
  [(PUIDPointerSettings *)self setSpecularStandardLongestSideBaseMultiplier:0.05];
  [(PUIDPointerSettings *)self setSpecularProminentOpacityMultiplier:0.08];
  [(PUIDPointerSettings *)self setSpecularProminentLongestSideBaseMultiplier:0.05];
  specularOpacityAnimationSettings = [(PUIDPointerSettings *)self specularOpacityAnimationSettings];
  [specularOpacityAnimationSettings setDefaultValues];

  specularOpacityAnimationSettings2 = [(PUIDPointerSettings *)self specularOpacityAnimationSettings];
  [specularOpacityAnimationSettings2 setDampingRatio:1.0];

  specularOpacityAnimationSettings3 = [(PUIDPointerSettings *)self specularOpacityAnimationSettings];
  [specularOpacityAnimationSettings3 setResponse:0.17];

  [(PUIDPointerSettings *)self setCustomMorphInitialVelocityProgressMultiplier:20.0];
  customShapeMorphAnimationSettings = [(PUIDPointerSettings *)self customShapeMorphAnimationSettings];
  [customShapeMorphAnimationSettings setDefaultValues];

  customShapeMorphAnimationSettings2 = [(PUIDPointerSettings *)self customShapeMorphAnimationSettings];
  [customShapeMorphAnimationSettings2 setDampingRatio:1.0];

  customShapeMorphAnimationSettings3 = [(PUIDPointerSettings *)self customShapeMorphAnimationSettings];
  [customShapeMorphAnimationSettings3 setResponse:0.24];

  [(PUIDPointerSettings *)self setDecelerationEnabled:1];
  [(PUIDPointerSettings *)self setMinimumVelocityThresholdForDeceleration:1000.0];
  [(PUIDPointerSettings *)self setPointerVelocitySmoothingWeight:0.75];
  [(PUIDPointerSettings *)self setPointerPositionProjectionScaleFactor:0.6];
  [(PUIDPointerSettings *)self setDecelerationTargetLookupEnabled:0];
  [(PUIDPointerSettings *)self setDecelerationTargetLookupResolution:10.0];
  [(PUIDPointerSettings *)self setDecelerationTargetLookupRadius:60.0];
  [(PUIDPointerSettings *)self setDecelerationTargetLookupConeAngleInDegrees:30.0];
  [(PUIDPointerSettings *)self setSystemInteractionsDecelerationTargetLookupRadius:20.0];
  [(PUIDPointerSettings *)self setMinimumVelocityThresholdForExpandedDecelerationLookup:30.0];
  [(PUIDPointerSettings *)self setVelocityThresholdForClientInteraction:100000.0];
  [(PUIDPointerSettings *)self setDurationToAverageVelocityForClientInteractionThreshold:0.1];
  [(PUIDPointerSettings *)self setAutomaticRegionExitDelayInterval:0.2];
  [(PUIDPointerSettings *)self setPointerSlipEnabled:1];
  [(PUIDPointerSettings *)self setRampingMinimumSlipThreshold:0.15];
  standardShapeAnimationSettings = [(PUIDPointerSettings *)self standardShapeAnimationSettings];
  [standardShapeAnimationSettings setDefaultValues];

  standardShapeAnimationSettings2 = [(PUIDPointerSettings *)self standardShapeAnimationSettings];
  [standardShapeAnimationSettings2 setDampingRatio:0.9];

  standardShapeAnimationSettings3 = [(PUIDPointerSettings *)self standardShapeAnimationSettings];
  [standardShapeAnimationSettings3 setResponse:0.175];

  zTransitionOpacityAnimationSettings = [(PUIDPointerSettings *)self zTransitionOpacityAnimationSettings];
  [zTransitionOpacityAnimationSettings setDefaultValues];

  zTransitionOpacityAnimationSettings2 = [(PUIDPointerSettings *)self zTransitionOpacityAnimationSettings];
  [zTransitionOpacityAnimationSettings2 setDampingRatio:1.0];

  zTransitionOpacityAnimationSettings3 = [(PUIDPointerSettings *)self zTransitionOpacityAnimationSettings];
  [zTransitionOpacityAnimationSettings3 setResponse:0.15];

  systemPointerPositionAnimationSettings = [(PUIDPointerSettings *)self systemPointerPositionAnimationSettings];
  [systemPointerPositionAnimationSettings setDefaultValues];

  systemPointerPositionAnimationSettings2 = [(PUIDPointerSettings *)self systemPointerPositionAnimationSettings];
  [systemPointerPositionAnimationSettings2 setDampingRatio:1.0];

  systemPointerPositionAnimationSettings3 = [(PUIDPointerSettings *)self systemPointerPositionAnimationSettings];
  [systemPointerPositionAnimationSettings3 setResponse:0.017];

  systemPointerPositionHighQualityFrequencyAnimationSettings = [(PUIDPointerSettings *)self systemPointerPositionHighQualityFrequencyAnimationSettings];
  [systemPointerPositionHighQualityFrequencyAnimationSettings setDefaultValues];

  systemPointerPositionHighQualityFrequencyAnimationSettings2 = [(PUIDPointerSettings *)self systemPointerPositionHighQualityFrequencyAnimationSettings];
  [systemPointerPositionHighQualityFrequencyAnimationSettings2 setDampingRatio:1.0];

  systemPointerPositionHighQualityFrequencyAnimationSettings3 = [(PUIDPointerSettings *)self systemPointerPositionHighQualityFrequencyAnimationSettings];
  [systemPointerPositionHighQualityFrequencyAnimationSettings3 setResponse:0.0];

  focusedPointerPositionAnimationSettings = [(PUIDPointerSettings *)self focusedPointerPositionAnimationSettings];
  [focusedPointerPositionAnimationSettings setDefaultValues];

  focusedPointerPositionAnimationSettings2 = [(PUIDPointerSettings *)self focusedPointerPositionAnimationSettings];
  [focusedPointerPositionAnimationSettings2 setDampingRatio:1.0];

  focusedPointerPositionAnimationSettings3 = [(PUIDPointerSettings *)self focusedPointerPositionAnimationSettings];
  [focusedPointerPositionAnimationSettings3 setResponse:0.14];

  textContentPointerPositionAnimationSettings = [(PUIDPointerSettings *)self textContentPointerPositionAnimationSettings];
  [textContentPointerPositionAnimationSettings setDefaultValues];

  textContentPointerPositionAnimationSettings2 = [(PUIDPointerSettings *)self textContentPointerPositionAnimationSettings];
  [textContentPointerPositionAnimationSettings2 setDampingRatio:1.0];

  textContentPointerPositionAnimationSettings3 = [(PUIDPointerSettings *)self textContentPointerPositionAnimationSettings];
  [textContentPointerPositionAnimationSettings3 setResponse:0.075];

  focusedContentPositionAnimationSettings = [(PUIDPointerSettings *)self focusedContentPositionAnimationSettings];
  [focusedContentPositionAnimationSettings setDefaultValues];

  focusedContentPositionAnimationSettings2 = [(PUIDPointerSettings *)self focusedContentPositionAnimationSettings];
  [focusedContentPositionAnimationSettings2 setDampingRatio:1.0];

  focusedContentPositionAnimationSettings3 = [(PUIDPointerSettings *)self focusedContentPositionAnimationSettings];
  [focusedContentPositionAnimationSettings3 setResponse:0.25];

  visibleIntensityAnimationSettings = [(PUIDPointerSettings *)self visibleIntensityAnimationSettings];
  [visibleIntensityAnimationSettings setDefaultValues];

  visibleIntensityAnimationSettings2 = [(PUIDPointerSettings *)self visibleIntensityAnimationSettings];
  [visibleIntensityAnimationSettings2 setDampingRatio:1.0];

  visibleIntensityAnimationSettings3 = [(PUIDPointerSettings *)self visibleIntensityAnimationSettings];
  [visibleIntensityAnimationSettings3 setResponse:0.15];

  rampingExitAnimationSettings = [(PUIDPointerSettings *)self rampingExitAnimationSettings];
  [rampingExitAnimationSettings setDefaultValues];

  rampingExitAnimationSettings2 = [(PUIDPointerSettings *)self rampingExitAnimationSettings];
  [rampingExitAnimationSettings2 setDampingRatio:1.0];

  rampingExitAnimationSettings3 = [(PUIDPointerSettings *)self rampingExitAnimationSettings];
  [rampingExitAnimationSettings3 setResponse:0.125];

  materialTransitionAnimationSettings = [(PUIDPointerSettings *)self materialTransitionAnimationSettings];
  [materialTransitionAnimationSettings setDefaultValues];

  materialTransitionAnimationSettings2 = [(PUIDPointerSettings *)self materialTransitionAnimationSettings];
  [materialTransitionAnimationSettings2 setDampingRatio:1.0];

  materialTransitionAnimationSettings3 = [(PUIDPointerSettings *)self materialTransitionAnimationSettings];
  [materialTransitionAnimationSettings3 setResponse:0.5];

  recenteringAnimationSettings = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings setAnimationType:1];

  recenteringAnimationSettings2 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings2 setDelay:0.0];

  recenteringAnimationSettings3 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings3 setDuration:0.5];

  recenteringAnimationSettings4 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings4 setMass:1.0];

  recenteringAnimationSettings5 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings5 setStiffness:3262.0];

  recenteringAnimationSettings6 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings6 setDamping:114.0];

  recenteringAnimationSettings7 = [(PUIDPointerSettings *)self recenteringAnimationSettings];
  [recenteringAnimationSettings7 setCurve:0];

  mouseRecenteringAnimationSettings = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings setAnimationType:1];

  mouseRecenteringAnimationSettings2 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings2 setDelay:0.0];

  mouseRecenteringAnimationSettings3 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings3 setDuration:0.5];

  mouseRecenteringAnimationSettings4 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings4 setMass:1.0];

  mouseRecenteringAnimationSettings5 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings5 setStiffness:218.0];

  mouseRecenteringAnimationSettings6 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings6 setDamping:28.0];

  mouseRecenteringAnimationSettings7 = [(PUIDPointerSettings *)self mouseRecenteringAnimationSettings];
  [mouseRecenteringAnimationSettings7 setCurve:0];

  [(PUIDPointerSettings *)self setFlexibleRectIntensityReductionRange:300.0];
  [(PUIDPointerSettings *)self setMinFlexibleRectDarkLuminanceIntensity:0.25];
  [(PUIDPointerSettings *)self setMinFlexibleRectLightLuminanceIntensity:0.325];
  [(PUIDPointerSettings *)self setAllowPositionToPositionAnimations:1];
  [(PUIDPointerSettings *)self setPositionToPositionAnimationThreshold:90.0];
  pointerAccessoryAnimationSettings = [(PUIDPointerSettings *)self pointerAccessoryAnimationSettings];
  [pointerAccessoryAnimationSettings setDefaultValues];

  pointerAccessoryAnimationSettings2 = [(PUIDPointerSettings *)self pointerAccessoryAnimationSettings];
  [pointerAccessoryAnimationSettings2 setDampingRatio:1.0];

  pointerAccessoryAnimationSettings3 = [(PUIDPointerSettings *)self pointerAccessoryAnimationSettings];
  [pointerAccessoryAnimationSettings3 setResponse:0.3];

  [(PUIDPointerSettings *)self setShakeToFindWiggleCount:8];
  [(PUIDPointerSettings *)self setShakeToFindGestureInterval:0.1];
  [(PUIDPointerSettings *)self setShakeToFindDecayInterval:0.1];
  [(PUIDPointerSettings *)self setShakeToFindScaleFactor:0.5];
  [(PUIDPointerSettings *)self setShakeToFindMaxScaleUpFactor:5.0];
  [(PUIDPointerSettings *)self setShakeToFindSlopeVarianceThreshold:0.2];
  [(PUIDPointerSettings *)self setShakeToFindScaleUpdateInterval:0.00833333333];
  shakeToFindExpansionAnimationSettings = [(PUIDPointerSettings *)self shakeToFindExpansionAnimationSettings];
  [shakeToFindExpansionAnimationSettings setDefaultValues];

  shakeToFindExpansionAnimationSettings2 = [(PUIDPointerSettings *)self shakeToFindExpansionAnimationSettings];
  [shakeToFindExpansionAnimationSettings2 setDampingRatio:1.0];

  shakeToFindExpansionAnimationSettings3 = [(PUIDPointerSettings *)self shakeToFindExpansionAnimationSettings];
  [shakeToFindExpansionAnimationSettings3 setResponse:0.2];

  shakeToFindContractionAnimationSettings = [(PUIDPointerSettings *)self shakeToFindContractionAnimationSettings];
  [shakeToFindContractionAnimationSettings setDefaultValues];

  shakeToFindContractionAnimationSettings2 = [(PUIDPointerSettings *)self shakeToFindContractionAnimationSettings];
  [shakeToFindContractionAnimationSettings2 setDampingRatio:1.0];

  shakeToFindContractionAnimationSettings3 = [(PUIDPointerSettings *)self shakeToFindContractionAnimationSettings];
  [shakeToFindContractionAnimationSettings3 setResponse:0.2];

  [(PUIDPointerSettings *)self setShowDebugColors:0];
}

+ (id)settingsControllerModule
{
  v218 = [PTSwitchRow rowWithTitle:@"Underlapping Content Enabled" valueKeyPath:@"underlappingContentAllowed"];
  v2 = [NSPredicate predicateWithFormat:@"underlappingContentAllowed == YES"];
  v3 = [PTEditFloatRow rowWithTitle:@"Size" valueKeyPath:@"systemPointerSize"];
  v217 = [v3 between:0.0 and:100.0];

  v4 = [PTEditFloatRow rowWithTitle:@"System Pointer Pressed Scale" valueKeyPath:@"systemPointerPressedScale"];
  v5 = [v4 between:0.0 and:1.0];
  v216 = [v5 precision:3];

  v6 = [PTEditFloatRow rowWithTitle:@"Underlaying Pointer Pressed Scale Factor" valueKeyPath:@"underlayingPointerPressedScaleFactor"];
  v7 = [v6 between:0.0 and:1.0];
  v8 = [v7 precision:3];
  v215 = [v8 condition:v2];

  v9 = [PTEditFloatRow rowWithTitle:@"Tap To Click Duration" valueKeyPath:@"tapToClickButtonDownTime"];
  v10 = [v9 between:0.0 and:1.0];
  v11 = [v10 precision:3];
  v214 = [v11 condition:v2];

  v189 = [PTSwitchRow rowWithTitle:@"Pointer Slip Enabled" valueKeyPath:@"pointerSlipEnabled"];
  v12 = [PTEditFloatRow rowWithTitle:@"Ramping Minimum Slip" valueKeyPath:@"rampingMinimumSlipThreshold"];
  v13 = [v12 between:0.0 and:1.0];
  v14 = [v13 precision:3];
  v188 = [v14 condition:v2];

  v15 = [PTEditFloatRow rowWithTitle:@"Automatic Region Exit Delay" valueKeyPath:@"automaticRegionExitDelayInterval"];
  v16 = [v15 between:0.0 and:2.0];
  v17 = [v16 precision:3];
  v187 = [v17 condition:v2];

  v186 = [PTSwitchRow rowWithTitle:@"Periodically Refresh Client Transform" valueKeyPath:@"shouldPeriodicallyRefreshClientTransform"];
  v190 = [NSPredicate predicateWithFormat:@"shouldPeriodicallyRefreshClientTransform == YES"];
  v18 = [PTEditFloatRow rowWithTitle:@"Periodic Client Transform Refresh Interval" valueKeyPath:@"periodicClientTransformRefreshInterval"];
  v19 = [v18 between:0.0 and:10.0];
  v20 = [v19 precision:3];
  v185 = [v20 condition:v190];

  v233[0] = v218;
  v233[1] = v217;
  v233[2] = v216;
  v233[3] = v215;
  v233[4] = v214;
  v233[5] = v189;
  v233[6] = v188;
  v233[7] = v187;
  v233[8] = v186;
  v233[9] = v185;
  v21 = [NSArray arrayWithObjects:v233 count:10];
  v213 = [PTModule sectionWithRows:v21 title:@"System Pointer"];

  v22 = [PTEditFloatRow rowWithTitle:@"Delay Before Unhiding On Trackpad Touch Down" valueKeyPath:@"delayBeforeUnhidingOnTrackpadTouchDown"];
  v23 = [v22 between:0.0 and:0.5];
  v212 = [v23 precision:3];

  v24 = [PTEditFloatRow rowWithTitle:@"Autohide Duration (System)" valueKeyPath:@"autohideDurationForSystemPointer"];
  v211 = [v24 between:0.0 and:100.0];

  v25 = [PTEditFloatRow rowWithTitle:@"Autohide Duration (Focused)" valueKeyPath:@"autohideDurationForFocusedPointer"];
  v26 = [v25 between:0.0 and:100.0];
  v219 = v2;
  v210 = [v26 condition:v2];

  v27 = [PTEditFloatRow rowWithTitle:@"Autohide Duration - Mouse (System)" valueKeyPath:@"autohideDurationForSystemPointerMouse"];
  v209 = [v27 between:0.0 and:100.0];

  v28 = [PTEditFloatRow rowWithTitle:@"Autohide Duration - Mouse (Focused)" valueKeyPath:@"autohideDurationForFocusedPointerMouse"];
  v29 = [v28 between:0.0 and:100.0];
  v208 = [v29 condition:v2];

  v30 = [PTEditFloatRow rowWithTitle:@"Visible to Hidden Scale" valueKeyPath:@"visibleToHiddenPointerScale"];
  v207 = [v30 between:0.0 and:10.0];

  v31 = [PTEditFloatRow rowWithTitle:@"Visible to Hidden Blur Radius" valueKeyPath:@"visibleToHiddenPointerBlurRadius"];
  v206 = [v31 between:0.0 and:100.0];

  v32 = [PTEditFloatRow rowWithTitle:@"Hidden to Visible Scale" valueKeyPath:@"hiddenToVisiblePointerScale"];
  v205 = [v32 between:0.0 and:10.0];

  v33 = [PTEditFloatRow rowWithTitle:@"Hidden to Visible Blur Radius" valueKeyPath:@"hiddenToVisiblePointerBlurRadius"];
  v204 = [v33 between:0.0 and:100.0];

  v203 = [PTDrillDownRow rowWithTitle:@"Auto-hide (Visible to Hidden) Animation" childSettingsKeyPath:@"visibleToHiddenAnimationSettings"];
  v183 = [PTDrillDownRow rowWithTitle:@"Auto-Hide Scale (Visible to Hidden) Animation" childSettingsKeyPath:@"visibleToHiddenScaleAnimationSettings"];
  v182 = [PTDrillDownRow rowWithTitle:@"Auto-Hide (Hidden to Visible) Animation" childSettingsKeyPath:@"hiddenToVisibleAnimationSettings"];
  v181 = [PTDrillDownRow rowWithTitle:@"Auto-Hide Scale (Hidden to Visible) Animation" childSettingsKeyPath:@"hiddenToVisibleScaleAnimationSettings"];
  v180 = [PTSwitchRow rowWithTitle:@"Autohide after Contact lost" valueKeyPath:@"shouldAutohideAfterHitTestContextLoss"];
  v179 = [PTSwitchRow rowWithTitle:@"Hide while performing gestures" valueKeyPath:@"shouldHideWhileGesturing"];
  v184 = [NSPredicate predicateWithFormat:@"shouldHideWhileGesturing == YES"];
  v34 = [PTEditFloatRow rowWithTitle:@"Delay Before Unhiding After Gesture" valueKeyPath:@"delayBeforeUnhidingAfterGesturing"];
  v35 = [v34 between:0.0 and:1.0];
  v36 = [v35 precision:3];
  v178 = [v36 condition:v184];

  v232[0] = v212;
  v232[1] = v211;
  v232[2] = v210;
  v232[3] = v209;
  v232[4] = v208;
  v232[5] = v207;
  v232[6] = v206;
  v232[7] = v205;
  v232[8] = v204;
  v232[9] = v203;
  v232[10] = v183;
  v232[11] = v182;
  v232[12] = v181;
  v232[13] = v180;
  v232[14] = v179;
  v232[15] = v178;
  v37 = [NSArray arrayWithObjects:v232 count:16];
  v202 = [PTModule sectionWithRows:v37 title:@"Pointer Autohide/Show"];

  v176 = [PTSwitchRow rowWithTitle:@"Recenter on Button Down" valueKeyPath:@"shouldRecenterOnButtonDown"];
  v175 = [PTSwitchRow rowWithTitle:@"Recenter after Lifting Finger" valueKeyPath:@"shouldRecenterAfterLiftingFinger"];
  v174 = [PTSwitchRow rowWithTitle:@"Recenter after Mouse movement" valueKeyPath:@"shouldRecenterAfterDelayOnMouseMovement"];
  v177 = [NSPredicate predicateWithFormat:@"shouldRecenterAfterDelayOnMouseMovement == YES"];
  v38 = [PTEditFloatRow rowWithTitle:@"Delay before recentering after mouse movement" valueKeyPath:@"delayBeforeRecenteringAfterMouseMovement"];
  v39 = [v38 between:0.0 and:10.0];
  v40 = [v39 precision:3];
  v173 = [v40 condition:v177];

  v172 = [PTDrillDownRow rowWithTitle:@"Trackpad Recentering Animation" childSettingsKeyPath:@"recenteringAnimationSettings"];
  v171 = [PTDrillDownRow rowWithTitle:@"Mouse Recentering Animation" childSettingsKeyPath:@"mouseRecenteringAnimationSettings"];
  v231[0] = v176;
  v231[1] = v175;
  v231[2] = v174;
  v231[3] = v173;
  v231[4] = v172;
  v231[5] = v171;
  v41 = [NSArray arrayWithObjects:v231 count:6];
  v201 = [PTModule sectionWithRows:v41 title:@"Recentering"];

  v42 = [PTDrillDownRow rowWithTitle:@"Custom Morph Transition Animation" childSettingsKeyPath:@"customShapeMorphAnimationSettings"];
  v170 = [v42 condition:v2];

  v43 = [PTEditFloatRow rowWithTitle:@"Initial Velocity Progress Multiplier" valueKeyPath:@"customMorphInitialVelocityProgressMultiplier"];
  v44 = [v43 between:0.0 and:100.0];
  v169 = [v44 precision:2];

  v230[0] = v169;
  v230[1] = v170;
  v45 = [NSArray arrayWithObjects:v230 count:2];
  v200 = [PTModule sectionWithRows:v45 title:@"Custom Shape Morph"];

  v46 = [PTEditFloatRow rowWithTitle:@"Specular (Pointer Background) Base Side Length Multiplier" valueKeyPath:@"specularStandardLongestSideBaseMultiplier"];
  v47 = [v46 between:0.0 and:0.1];
  v168 = [v47 precision:4];

  v48 = [PTEditFloatRow rowWithTitle:@"Specular (Pointer Background) Opacity Multiplier" valueKeyPath:@"specularStandardOpacityMultiplier"];
  v49 = [v48 between:0.0 and:0.1];
  v167 = [v49 precision:4];

  v50 = [PTEditFloatRow rowWithTitle:@"Specular (Solid Content Background) Base Side Length Multiplier" valueKeyPath:@"specularProminentLongestSideBaseMultiplier"];
  v51 = [v50 between:0.0 and:0.1];
  v166 = [v51 precision:4];

  v52 = [PTEditFloatRow rowWithTitle:@"Specular (Solid Content Background) Opacity Multiplier" valueKeyPath:@"specularProminentOpacityMultiplier"];
  v53 = [v52 between:0.0 and:0.1];
  v165 = [v53 precision:4];

  v164 = [PTDrillDownRow rowWithTitle:@"Specular Opacity Animation" childSettingsKeyPath:@"specularOpacityAnimationSettings"];
  v229[0] = v168;
  v229[1] = v167;
  v229[2] = v166;
  v229[3] = v165;
  v229[4] = v164;
  v54 = [NSArray arrayWithObjects:v229 count:5];
  v199 = [PTModule sectionWithRows:v54 title:@"Specular"];

  v55 = [NSPredicate predicateWithFormat:@"decelerationEnabled == YES"];
  v198 = [PTSwitchRow rowWithTitle:@"Deceleration Enabled" valueKeyPath:@"decelerationEnabled"];
  v56 = [PTEditFloatRow rowWithTitle:@"Minimum Velocity Threshold" valueKeyPath:@"minimumVelocityThresholdForDeceleration"];
  v57 = [v56 between:0.0 and:10000.0];
  v58 = [v57 precision:2];
  v197 = [v58 condition:v55];

  v59 = [PTEditFloatRow rowWithTitle:@"Velocity Smoothing Weight" valueKeyPath:@"pointerVelocitySmoothingWeight"];
  v60 = [v59 between:0.0 and:1.0];
  v196 = [v60 precision:2];

  v61 = [PTEditFloatRow rowWithTitle:@"Position Projection Scale Factor" valueKeyPath:@"pointerPositionProjectionScaleFactor"];
  v62 = [v61 between:0.0 and:1.0];
  v195 = [v62 precision:2];

  v63 = [NSPredicate predicateWithFormat:@"decelerationEnabled == YES && decelerationTargetLookupEnabled == YES"];
  v64 = [PTSwitchRow rowWithTitle:@"Deceleration Target Lookup" valueKeyPath:@"decelerationTargetLookupEnabled"];
  v163 = [v64 condition:v55];

  v65 = [PTEditFloatRow rowWithTitle:@"Lookup Resolution" valueKeyPath:@"decelerationTargetLookupResolution"];
  v66 = [v65 between:0.0 and:100.0];
  v67 = [v66 precision:2];
  v162 = [v67 condition:v63];

  v68 = [PTEditFloatRow rowWithTitle:@"Lookup Radius" valueKeyPath:@"decelerationTargetLookupRadius"];
  v69 = [v68 between:0.0 and:1000.0];
  v70 = [v69 precision:2];
  v161 = [v70 condition:v63];

  v71 = [PTEditFloatRow rowWithTitle:@"Lookup Cone Angle (Degrees)" valueKeyPath:@"decelerationTargetLookupConeAngleInDegrees"];
  v72 = [v71 between:0.0 and:360.0];
  v73 = [v72 precision:2];
  v160 = [v73 condition:v63];

  v74 = [PTEditFloatRow rowWithTitle:@"Lookup Radius (System Interactions)" valueKeyPath:@"systemInteractionsDecelerationTargetLookupRadius"];
  v75 = [v74 between:0.0 and:1000.0];
  v76 = [v75 precision:2];
  v159 = [v76 condition:v63];

  v77 = [PTEditFloatRow rowWithTitle:@"Velocity Threshold for Expanded Lookup" valueKeyPath:@"minimumVelocityThresholdForExpandedDecelerationLookup"];
  v78 = [v77 between:0.0 and:10000.0];
  v79 = [v78 precision:2];
  v158 = [v79 condition:v63];

  v228[0] = v198;
  v228[1] = v197;
  v228[2] = v196;
  v228[3] = v195;
  v228[4] = v163;
  v228[5] = v162;
  v228[6] = v161;
  v228[7] = v160;
  v228[8] = v159;
  v228[9] = v158;
  v80 = [NSArray arrayWithObjects:v228 count:10];
  v194 = [PTModule sectionWithRows:v80 title:@"Deceleration"];

  v81 = [PTEditFloatRow rowWithTitle:@"Velocity Threshold For Client Interaction (pixels/sec)" valueKeyPath:@"velocityThresholdForClientInteraction"];
  v82 = [v81 between:0.0 and:100000.0];
  v157 = [v82 precision:2];

  v83 = [PTEditFloatRow rowWithTitle:@"Duration For Average For Velocity Threshold For Client Interaction (seconds)" valueKeyPath:@"durationToAverageVelocityForClientInteractionThreshold"];
  v84 = [v83 between:0.0 and:1.0];
  v156 = [v84 precision:2];

  v227[0] = v157;
  v227[1] = v156;
  v85 = [NSArray arrayWithObjects:v227 count:2];
  v191 = [PTModule sectionWithRows:v85 title:@"Velocity Threshold"];

  v193 = [PTDrillDownRow rowWithTitle:@"Standard Shape Transition" childSettingsKeyPath:@"standardShapeAnimationSettings"];
  v192 = [PTDrillDownRow rowWithTitle:@"System Pointer Position" childSettingsKeyPath:@"systemPointerPositionAnimationSettings"];
  v155 = [PTDrillDownRow rowWithTitle:@"HQ System Pointer Position" childSettingsKeyPath:@"systemPointerPositionHighQualityFrequencyAnimationSettings"];
  v86 = [PTDrillDownRow rowWithTitle:@"Focused Pointer Position" childSettingsKeyPath:@"focusedPointerPositionAnimationSettings"];
  v154 = [v86 condition:v2];

  v87 = [PTDrillDownRow rowWithTitle:@"Focused Content Position" childSettingsKeyPath:@"focusedContentPositionAnimationSettings"];
  v153 = [v87 condition:v2];

  v152 = [PTDrillDownRow rowWithTitle:@"Text Content Position" childSettingsKeyPath:@"textContentPointerPositionAnimationSettings"];
  v88 = [PTDrillDownRow rowWithTitle:@"Ramping Exit" childSettingsKeyPath:@"rampingExitAnimationSettings"];
  v151 = [v88 condition:v2];

  v150 = [PTDrillDownRow rowWithTitle:@"Pressed Scale" childSettingsKeyPath:@"pressedScaleAnimationSettings"];
  v149 = [PTDrillDownRow rowWithTitle:@"Material Transition (dark/light)" childSettingsKeyPath:@"materialTransitionAnimationSettings"];
  v89 = [PTDrillDownRow rowWithTitle:@"Z Transition Opacity" childSettingsKeyPath:@"zTransitionOpacityAnimationSettings"];
  v148 = [v89 condition:v2];

  v147 = [PTDrillDownRow rowWithTitle:@"Intensity Animations (While Visible)" childSettingsKeyPath:@"visibleIntensityAnimationSettings"];
  v226[0] = v193;
  v226[1] = v192;
  v226[2] = v155;
  v226[3] = v154;
  v226[4] = v153;
  v226[5] = v152;
  v226[6] = v151;
  v226[7] = v147;
  v226[8] = v150;
  v226[9] = v149;
  v226[10] = v148;
  v90 = [NSArray arrayWithObjects:v226 count:11];
  v143 = [PTModule sectionWithRows:v90 title:@"Animation Settings"];

  v91 = [PTEditFloatRow rowWithTitle:@"Intensity Reduction Range (in points)" valueKeyPath:@"flexibleRectIntensityReductionRange"];
  v92 = [v91 between:0.0 and:1000.0];
  v146 = [v92 precision:3];

  v93 = [PTEditFloatRow rowWithTitle:@"Min Dark Luminance (Light Content) Intensity" valueKeyPath:@"minFlexibleRectDarkLuminanceIntensity"];
  v94 = [v93 between:0.0 and:1.0];
  v145 = [v94 precision:3];

  v95 = [PTEditFloatRow rowWithTitle:@"Min Light Luminance (Dark Content) Intensity" valueKeyPath:@"minFlexibleRectLightLuminanceIntensity"];
  v96 = [v95 between:0.0 and:1.0];
  v144 = [v96 precision:3];

  v225[0] = v146;
  v225[1] = v145;
  v225[2] = v144;
  v97 = [NSArray arrayWithObjects:v225 count:3];
  v139 = [PTModule sectionWithRows:v97 title:@"Flexible Rect Pointer"];

  v142 = [PTSwitchRow rowWithTitle:@"Allow Position to Position Animations" valueKeyPath:@"allowPositionToPositionAnimations"];
  v98 = [PTEditFloatRow rowWithTitle:@"Position to Position Animation Threshold (in degrees)" valueKeyPath:@"positionToPositionAnimationThreshold"];
  v99 = [v98 between:0.0 and:360.0];
  v100 = [v99 precision:0];
  v101 = [NSPredicate predicateWithFormat:@"allowPositionToPositionAnimations == YES"];
  v141 = [v100 condition:v101];

  v140 = [PTDrillDownRow rowWithTitle:@"Pointer Accessory Appearance" childSettingsKeyPath:@"pointerAccessoryAnimationSettings"];
  v224[0] = v142;
  v224[1] = v141;
  v224[2] = v140;
  v102 = [NSArray arrayWithObjects:v224 count:3];
  v138 = [PTModule sectionWithRows:v102 title:@"Pointer Accessories"];

  v103 = [PTEditFloatRow rowWithTitle:@"Minimum number of wiggle points for gesture recognition" valueKeyPath:@"shakeToFindWiggleCount"];
  v104 = [v103 between:5.0 and:15.0];
  v137 = [v104 precision:0];

  v105 = [PTEditFloatRow rowWithTitle:@"Maximum time between events still considered as one continuous gesture (seconds)" valueKeyPath:@"shakeToFindGestureInterval"];
  v106 = [v105 between:0.0 and:1.0];
  v136 = [v106 precision:2];

  v107 = [PTEditFloatRow rowWithTitle:@"Time after last input event at which to begin the decay of cursor size (seconds)" valueKeyPath:@"shakeToFindDecayInterval"];
  v108 = [v107 between:0.0 and:1.0];
  v135 = [v108 precision:2];

  v109 = [PTEditFloatRow rowWithTitle:@"Coefficient to convert from wiggles (input) to scale (output)" valueKeyPath:@"shakeToFindScaleFactor"];
  v110 = [v109 between:0.0 and:1.0];
  v134 = [v110 precision:2];

  v111 = [PTEditFloatRow rowWithTitle:@"Max factor to scale up the pointer size upon gesture detection" valueKeyPath:@"shakeToFindMaxScaleUpFactor"];
  v112 = [v111 between:0.0 and:6.0];
  v133 = [v112 precision:2];

  v113 = [PTEditFloatRow rowWithTitle:@"Maximum variance of slopes between wiggle points allowed to detect a line" valueKeyPath:@"shakeToFindSlopeVarianceThreshold"];
  v114 = [v113 between:0.0 and:0.5];
  v132 = [v114 precision:2];

  v115 = [PTEditFloatRow rowWithTitle:@"Time interval between re-evaluation of shake to find scale factor" valueKeyPath:@"shakeToFindScaleUpdateInterval"];
  v116 = [v115 between:0.0 and:0.2];
  v131 = [v116 precision:2];

  v130 = [PTDrillDownRow rowWithTitle:@"Shake To Find Expansion" childSettingsKeyPath:@"shakeToFindExpansionAnimationSettings"];
  v129 = [PTDrillDownRow rowWithTitle:@"Shake To Find Contraction" childSettingsKeyPath:@"shakeToFindContractionAnimationSettings"];
  v223[0] = v137;
  v223[1] = v136;
  v223[2] = v135;
  v223[3] = v134;
  v223[4] = v133;
  v223[5] = v132;
  v223[6] = v131;
  v223[7] = v130;
  v223[8] = v129;
  v117 = [NSArray arrayWithObjects:v223 count:9];
  v118 = [PTModule sectionWithRows:v117 title:@"Shake to Find"];

  v119 = [PTSwitchRow rowWithTitle:@"Show Debug Colors" valueKeyPath:@"showDebugColors"];
  v222 = v119;
  v120 = [NSArray arrayWithObjects:&v222 count:1];
  v121 = [PTModule sectionWithRows:v120];

  v122 = [PTRestoreDefaultSettingsRowAction actionWithSettingsKeyPath:0];
  v123 = [PTButtonRow rowWithTitle:@"Restore Defaults" action:v122];

  v221 = v123;
  v124 = [NSArray arrayWithObjects:&v221 count:1];
  v125 = [PTModule sectionWithRows:v124];

  v220[0] = v125;
  v220[1] = v213;
  v220[2] = v139;
  v220[3] = v138;
  v220[4] = v200;
  v220[5] = v199;
  v220[6] = v202;
  v220[7] = v201;
  v220[8] = v194;
  v220[9] = v191;
  v220[10] = v143;
  v220[11] = v118;
  v220[12] = v121;
  v126 = [NSArray arrayWithObjects:v220 count:13];
  v128 = [PTModule moduleWithTitle:0 contents:v126];

  return v128;
}

@end