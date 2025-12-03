@interface SBHHomePullToSearchSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHHomePullToSearchSettings

- (void)setDefaultValues
{
  [(SBHHomePullToSearchSettings *)self setPullTransitionDistance:24.0];
  [(SBHHomePullToSearchSettings *)self setPullTransitionActivationThreshold:75.0];
  [(SBHHomePullToSearchSettings *)self setPullTransitionRubberbandThreshold:24.0];
  [(SBHHomePullToSearchSettings *)self setPullGestureBeganFromTopLeeway:24.0];
  [(SBHHomePullToSearchSettings *)self setBackgroundBlurInteractiveTransitionDistance:150.0];
  [(SBHHomePullToSearchSettings *)self setBackgroundBlurStartThreshold:0.0];
  [(SBHHomePullToSearchSettings *)self setBackgroundBlurEndThreshold:0.75];
  [(SBHHomePullToSearchSettings *)self setBackgroundUnblurStartThreshold:1.0];
  [(SBHHomePullToSearchSettings *)self setBackgroundUnblurEndThreshold:0.0];
  [(SBHHomePullToSearchSettings *)self setSearchContentFadeInteractiveTransitionDistance:150.0];
  [(SBHHomePullToSearchSettings *)self setSearchContentFadeInStartThreshold:0.1];
  [(SBHHomePullToSearchSettings *)self setSearchContentFadeInEndThreshold:1.0];
  [(SBHHomePullToSearchSettings *)self setSearchContentFadeOutStartThreshold:1.0];
  [(SBHHomePullToSearchSettings *)self setSearchContentFadeOutEndThreshold:0.5];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceBackgroundMaterialFadeInteractiveTransitionDistance:150.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceBackgroundMaterialFadeStartThreshold:0.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceBackgroundMaterialFadeEndThreshold:0.1];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceContentFadeStartThreshold:0.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceContentFadeEndThreshold:0.6];
  [(SBHHomePullToSearchSettings *)self setSearchBarContentFadeStartThreshold:0.4];
  [(SBHHomePullToSearchSettings *)self setSearchBarContentFadeEndThreshold:1.0];
  [(SBHHomePullToSearchSettings *)self setScalesSearchAffordanceContentWhileFading:1];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceTransformStartThreshold:0.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceTransformEndThreshold:150.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceMaxScaleX:1.2];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceMaxScaleY:1.23];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceScaleRubberbandingRange:0.15];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceMaxOffset:75.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceOffsetRubberbandingRange:0.0];
  [(SBHHomePullToSearchSettings *)self setSearchAffordanceTransientFadeInThreshold:0.5];
  [(SBHHomePullToSearchSettings *)self setAllowsKeyboardWhileInteractive:1];
  [(SBHHomePullToSearchSettings *)self setAllowsKeyboardWhileInteractiveWithoutSearchAffordance:0];
  [(SBHHomePullToSearchSettings *)self setInteractiveKeyboardPresentationThreshold:75.0];
  [(SBHHomePullToSearchSettings *)self setInteractiveKeyboardPresentationOffset:0.0];
  [(SBHHomePullToSearchSettings *)self setKeyboardFollowsSpotlightContent:1];
  [(SBHHomePullToSearchSettings *)self setAppIconsFollowTranslation:1];
  [(SBHHomePullToSearchSettings *)self setAllowsVelocityInjection:1];
  [(SBHHomePullToSearchSettings *)self setInjectsVelocityOnlyForShortSwipes:1];
  [(SBHHomePullToSearchSettings *)self setShortSwipeMaximumPercentageOfExpectedVelocity:0.15];
  [(SBHHomePullToSearchSettings *)self setInjectedPercentageOfGestureVelocity:1.0];
  [(SBHHomePullToSearchSettings *)self setKeyboardInjectedVelocityPercentage:0.0];
  [(SBHHomePullToSearchSettings *)self setInjectsVelocityForNonInteractiveTransitions:0];
  [(SBHHomePullToSearchSettings *)self setInjectedVelocityForNonInteractiveTransitions:3000.0];
  [(SBHHomePullToSearchSettings *)self setKeyboardInjectedVelocityPercentageForNonInteractiveTransitions:0.0];
  initWithDefaultValues = [objc_alloc(MEMORY[0x1E69D3FC8]) initWithDefaultValues];
  [initWithDefaultValues setDampingRatio:0.8];
  [initWithDefaultValues setResponse:0.47];
  [initWithDefaultValues setTrackingDampingRatio:0.92];
  [initWithDefaultValues setTrackingResponse:0.08];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues setFrameRateRange:1114138 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
  [(SBHHomePullToSearchSettings *)self setPullTransitionAnimationSettings:initWithDefaultValues];
}

+ (id)settingsControllerModule
{
  v96[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v75 = [v2 rowWithTitle:@"Restore Defaults" action:action];

  v4 = MEMORY[0x1E69C6638];
  v96[0] = v75;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  v85 = [v4 sectionWithRows:v5];

  v74 = [MEMORY[0x1E69C6610] rowWithTitle:@"Pull Transition" childSettingsKeyPath:@"pullTransitionAnimationSettings"];
  v6 = MEMORY[0x1E69C6638];
  v95 = v74;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v84 = [v6 sectionWithRows:v7 title:@"Animation Settings"];

  v73 = [MEMORY[0x1E69C6618] rowWithTitle:@"Pull Distance" valueKeyPath:@"pullTransitionDistance"];
  v72 = [MEMORY[0x1E69C6618] rowWithTitle:@"Activation Threshold" valueKeyPath:@"pullTransitionActivationThreshold"];
  v71 = [MEMORY[0x1E69C6618] rowWithTitle:@"Rubber-Band Threshold" valueKeyPath:@"pullTransitionRubberbandThreshold"];
  v70 = [MEMORY[0x1E69C6618] rowWithTitle:@"Began From Top Leeway" valueKeyPath:@"pullGestureBeganFromTopLeeway"];
  v8 = MEMORY[0x1E69C6638];
  v94[0] = v73;
  v94[1] = v72;
  v94[2] = v71;
  v94[3] = v70;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
  v83 = [v8 sectionWithRows:v9 title:@"Pull Transition"];

  v69 = [MEMORY[0x1E69C6618] rowWithTitle:@"Interactive Blur Distance" valueKeyPath:@"backgroundBlurInteractiveTransitionDistance"];
  v68 = [MEMORY[0x1E69C6618] rowWithTitle:@"Blur Start" valueKeyPath:@"backgroundBlurStartThreshold"];
  v67 = [MEMORY[0x1E69C6618] rowWithTitle:@"Blur End" valueKeyPath:@"backgroundBlurEndThreshold"];
  v66 = [MEMORY[0x1E69C6618] rowWithTitle:@"Unblur Start" valueKeyPath:@"backgroundUnblurStartThreshold"];
  v65 = [MEMORY[0x1E69C6618] rowWithTitle:@"Unblur End" valueKeyPath:@"backgroundUnblurEndThreshold"];
  v10 = MEMORY[0x1E69C6638];
  v93[0] = v69;
  v93[1] = v68;
  v93[2] = v67;
  v93[3] = v66;
  v93[4] = v65;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:5];
  v82 = [v10 sectionWithRows:v11 title:@"Background Blur"];

  v64 = [MEMORY[0x1E69C6618] rowWithTitle:@"Interactive Fade-In Distance" valueKeyPath:@"searchContentFadeInteractiveTransitionDistance"];
  v63 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade-In Start" valueKeyPath:@"searchContentFadeInStartThreshold"];
  v62 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade-In End" valueKeyPath:@"searchContentFadeInEndThreshold"];
  v61 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade-Out Start" valueKeyPath:@"searchContentFadeOutStartThreshold"];
  v60 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade-Out End" valueKeyPath:@"searchContentFadeOutEndThreshold"];
  v12 = MEMORY[0x1E69C6638];
  v92[0] = v64;
  v92[1] = v63;
  v92[2] = v62;
  v92[3] = v61;
  v92[4] = v60;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:5];
  v81 = [v12 sectionWithRows:v13 title:@"Search Content"];

  v59 = [MEMORY[0x1E69C6618] rowWithTitle:@"Interactive Fade Distance" valueKeyPath:@"searchAffordanceBackgroundMaterialFadeInteractiveTransitionDistance"];
  v58 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade Start" valueKeyPath:@"searchAffordanceBackgroundMaterialFadeStartThreshold"];
  v57 = [MEMORY[0x1E69C6618] rowWithTitle:@"Fade End" valueKeyPath:@"searchAffordanceBackgroundMaterialFadeEndThreshold"];
  v14 = MEMORY[0x1E69C6638];
  v91[0] = v59;
  v91[1] = v58;
  v91[2] = v57;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
  v77 = [v14 sectionWithRows:v15 title:@"Search Pill Background Material Fade"];

  v80 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Text Fade Start" valueKeyPath:@"searchAffordanceContentFadeStartThreshold"];
  v79 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Text Fade End" valueKeyPath:@"searchAffordanceContentFadeEndThreshold"];
  v78 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Bar Text Fade Start" valueKeyPath:@"searchBarContentFadeStartThreshold"];
  v76 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Bar Text Fade End" valueKeyPath:@"searchBarContentFadeEndThreshold"];
  v56 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Search Pill Text Scales While Fading" valueKeyPath:@"scalesSearchAffordanceContentWhileFading"];
  v55 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Scale/Translate Start" valueKeyPath:@"searchAffordanceTransformStartThreshold"];
  v54 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Scale/Translate End" valueKeyPath:@"searchAffordanceTransformEndThreshold"];
  v53 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Max Scale X" valueKeyPath:@"searchAffordanceMaxScaleX"];
  v52 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Max Scale Y" valueKeyPath:@"searchAffordanceMaxScaleY"];
  v51 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Rubberbanding Range" valueKeyPath:@"searchAffordanceScaleRubberbandingRange"];
  v50 = [MEMORY[0x1E69C6618] rowWithTitle:@"Search Pill Max Offset" valueKeyPath:@"searchAffordanceMaxOffset"];
  v49 = [MEMORY[0x1E69C6618] rowWithTitle:@"Offset Rubberbanding Range" valueKeyPath:@"searchAffordanceOffsetRubberbandingRange"];
  v48 = [MEMORY[0x1E69C6618] rowWithTitle:@"Transient Search Pill Fade Threshold" valueKeyPath:@"searchAffordanceTransientFadeInThreshold"];
  v16 = MEMORY[0x1E69C6638];
  v90[0] = v80;
  v90[1] = v79;
  v90[2] = v78;
  v90[3] = v76;
  v90[4] = v56;
  v90[5] = v55;
  v90[6] = v54;
  v90[7] = v53;
  v90[8] = v52;
  v90[9] = v51;
  v90[10] = v50;
  v90[11] = v49;
  v90[12] = v48;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:13];
  v40 = [v16 sectionWithRows:v17 title:@"Search Pill / Bar"];

  v47 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Bring In While Interactive" valueKeyPath:@"allowsKeyboardWhileInteractive"];
  v46 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Interactive Keyboard Without Pill" valueKeyPath:@"allowsKeyboardWhileInteractiveWithoutSearchAffordance"];
  v45 = [MEMORY[0x1E69C6618] rowWithTitle:@"Interactive Keyboard Threshold" valueKeyPath:@"interactiveKeyboardPresentationThreshold"];
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Interactive Presentation Offset" valueKeyPath:@"interactiveKeyboardPresentationOffset"];
  [v18 setMinValue:-1000.0];
  v19 = v18;
  v44 = v18;
  [v18 setMaxValue:1000.0];
  v43 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Keyboard Follows Spotlight" valueKeyPath:@"keyboardFollowsSpotlightContent"];
  v20 = MEMORY[0x1E69C6638];
  v89[0] = v47;
  v89[1] = v46;
  v89[2] = v45;
  v89[3] = v19;
  v89[4] = v43;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  v41 = [v20 sectionWithRows:v21 title:@"Keyboard"];

  v42 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Icons Follow Translation" valueKeyPath:@"appIconsFollowTranslation"];
  v22 = MEMORY[0x1E69C6638];
  v88 = v42;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v39 = [v22 sectionWithRows:v23 title:@"App Icons"];

  v38 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Inject Velocity" valueKeyPath:@"allowsVelocityInjection"];
  v37 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Short Swipes Only" valueKeyPath:@"injectsVelocityOnlyForShortSwipes"];
  v36 = [MEMORY[0x1E69C6618] rowWithTitle:@"Short Swipe Max % Expected Velocity" valueKeyPath:@"shortSwipeMaximumPercentageOfExpectedVelocity"];
  v35 = [MEMORY[0x1E69C6618] rowWithTitle:@"Injected % Gesture Velocity" valueKeyPath:@"injectedPercentageOfGestureVelocity"];
  v24 = [MEMORY[0x1E69C6618] rowWithTitle:@"Keyboard % Velocity" valueKeyPath:@"keyboardInjectedVelocityPercentage"];
  [v24 setMinValue:-2.0];
  [v24 setMaxValue:2.0];
  v25 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Inject For Button Taps" valueKeyPath:@"injectsVelocityForNonInteractiveTransitions"];
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Button Tap Velocity" valueKeyPath:@"injectedVelocityForNonInteractiveTransitions"];
  v27 = [MEMORY[0x1E69C6618] rowWithTitle:@"Button Tap Keyboard % Velocity" valueKeyPath:@"keyboardInjectedVelocityPercentageForNonInteractiveTransitions"];
  [v27 setMinValue:-2.0];
  [v27 setMaxValue:2.0];
  v28 = MEMORY[0x1E69C6638];
  v87[0] = v38;
  v87[1] = v37;
  v87[2] = v36;
  v87[3] = v35;
  v87[4] = v24;
  v87[5] = v25;
  v87[6] = v26;
  v87[7] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:8];
  v30 = [v28 sectionWithRows:v29 title:@"Velocity Injection"];

  v31 = MEMORY[0x1E69C6638];
  v86[0] = v84;
  v86[1] = v83;
  v86[2] = v82;
  v86[3] = v81;
  v86[4] = v77;
  v86[5] = v40;
  v86[6] = v41;
  v86[7] = v39;
  v86[8] = v30;
  v86[9] = v85;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:10];
  v33 = [v31 moduleWithTitle:@"Pull To Search" contents:v32];

  return v33;
}

@end