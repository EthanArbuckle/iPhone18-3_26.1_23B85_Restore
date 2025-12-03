@interface SBHomeGestureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setHomeGestureTuningDefaults;
- (void)setLatchDefaults;
@end

@implementation SBHomeGestureSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureSettings;
  [(PTSettings *)&v8 setDefaultValues];
  v3 = SBFEffectiveHomeButtonType();
  [(SBHomeGestureSettings *)self setHomeGestureEnabled:SBIsHomeGestureEnabledByDefault()];
  v4 = v3 == 2;
  v5 = v3 == 2;
  v6 = 10.0;
  if (v4)
  {
    v6 = 5.0;
  }

  [(SBHomeGestureSettings *)self setHysteresis:v6];
  [(SBHomeGestureSettings *)self setRecognizeAlongEdge:v5];
  [(SBHomeGestureSettings *)self setUseZStackResolverResults:1];
  [(SBHomeGestureSettings *)self setHomeGestureTuningDefaults];
  [(SBHomeGestureSettings *)self setLatchDefaults];
  [(SBHomeGestureSettings *)self setSecondsToAllowMultipleEdges:1.5];
  [(SBHomeGestureSettings *)self setPreventMultipleEdgesAfterAppInteraction:1];
  [(SBHomeGestureSettings *)self setSecondsToResetSwitcherListAfterTransition:5.0];
  [(SBHomeGestureSettings *)self setResetSwitcherListAfterAppInteraction:1];
  [(SBHomeGestureSettings *)self setTravelDistanceForTranslatingScreenHeight:180.0];
  [(SBHomeGestureSettings *)self setMinimumDistanceThresholdToScaleMultiplier:32.0];
  exclusionTrapezoidSettings = [(SBHomeGestureSettings *)self exclusionTrapezoidSettings];
  [exclusionTrapezoidSettings setDefaultValues];

  [(SBHomeGestureSettings *)self setHomeGestureXOffsetFactor:1.0];
  [(SBHomeGestureSettings *)self setHomeGestureCenterZoomDownCenterYOffsetFactor:-0.2];
  [(SBHomeGestureSettings *)self setHomeGestureMinimumCardScale:0.4];
  [(SBHomeGestureSettings *)self homeGestureMinimumCardScale];
  [(SBHomeGestureSettings *)self setHomeGestureMinimumCardScaleRubberBandingRange:?];
  [(SBHomeGestureSettings *)self setEdgeAngleWindow:2.70526034];
}

- (void)setHomeGestureTuningDefaults
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 10.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 12.0;
  }

  [(SBHomeGestureSettings *)self setMinimumYDistanceForHomeOrAppSwitcher:v5];
  [(SBHomeGestureSettings *)self minimumYDistanceForHomeOrAppSwitcher];
  [(SBHomeGestureSettings *)self setMinimumYDistanceToConsiderAccelerationDip:?];
  [(SBHomeGestureSettings *)self minimumYDistanceForHomeOrAppSwitcher];
  [(SBHomeGestureSettings *)self setMinimumXDistanceForFirstArcSwipe:?];
  [(SBHomeGestureSettings *)self setMinimumXDistanceToTriggerArcByDistancePortrait:17.0];
  [(SBHomeGestureSettings *)self setMinimumXDistanceToTriggerArcByDistanceLandscape:37.0];
  [(SBHomeGestureSettings *)self setMaximumYDistanceToTriggerArcByDistance:9.0];
  [(SBHomeGestureSettings *)self setMaximumYDistanceToTriggerArcByFlick:21.0];
  [(SBHomeGestureSettings *)self setVelocityYThresholdForUnconditionalHome:-204.0];
  [(SBHomeGestureSettings *)self setMinimumYVelocityForHome:-51.0];
  [(SBHomeGestureSettings *)self setVelocityXThresholdForUnconditionalArcSwipe:208.0];
  [(SBHomeGestureSettings *)self setMinimumYVelocityForArcSwipe:51.0];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  [(SBHomeGestureSettings *)self setNormalizedDistanceYThresholdForUnconditionalHome:dbl_21F8A84E0[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 0.1;
  }

  else
  {
    v10 = 0.2;
  }

  [(SBHomeGestureSettings *)self setNormalizedDistanceYThresholdRangeForUnconditionalHome:v10];
  [(SBHomeGestureSettings *)self setNormalizedDistanceYThresholdForUnconditionalHomeInSlideOver:0.6];
  [(SBHomeGestureSettings *)self setNormalizedDistanceYThresholdRangeForUnconditionalHomeInSlideOver:0.2];
  [(SBHomeGestureSettings *)self setPauseVelocityThresholdForAppSwitcher:51.0];
  [(SBHomeGestureSettings *)self setPauseVelocityThresholdForDefiniteAppSwitcher:27.0];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  [(SBHomeGestureSettings *)self setMaximumAdaptivePauseVelocityThresholdForAppSwitcher:dbl_21F8A84F0[(userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
  [(SBHomeGestureSettings *)self setSnapToMaxVelocityThresholdAfterAccelerationDip:1];
  [(SBHomeGestureSettings *)self setMaximumAdaptiveVelocityThresholdForDock:308.0];
  [(SBHomeGestureSettings *)self setAppSwitcherVelocityThresholdIncreasingRateFraction:0.2];
  [(SBHomeGestureSettings *)self setDockVelocityThresholdIncreasingRateFraction:0.2];
  [(SBHomeGestureSettings *)self setAdaptiveThresholdsDecreasingRateFraction:0.142857143];
  [(SBHomeGestureSettings *)self setVelocitySlopeThresholdForBottomSwipeUpArc:0.5];
  [(SBHomeGestureSettings *)self setVelocitySlopeThresholdForScrunchArc:1.0];
  [(SBHomeGestureSettings *)self setVelocitySlopeThresholdForCurrentLayout:1.0];
  [(SBHomeGestureSettings *)self setEdgeDistanceToCorrectGestureFinalDestination:3.0];
  [(SBHomeGestureSettings *)self setCardFlyInMaximumVelocityThreshold:3.33];

  [(SBHomeGestureSettings *)self setCardFlyInDelayAfterEnteringAppSwitcher:0.1];
}

- (void)setLatchDefaults
{
  [(SBHomeGestureSettings *)self setMaximumDistanceYThresholdToPresentDock:260.0];
  [(SBHomeGestureSettings *)self setVerticalRubberbandStart:98.0];
  [(SBHomeGestureSettings *)self setVerticalRubberbandEnd:200.0];
  [(SBHomeGestureSettings *)self setVerticalRubberbandDistance:24.0];
  [(SBHomeGestureSettings *)self setVerticalRubberbandExponent:4.0];
  [(SBHomeGestureSettings *)self setHorizontalRubberbandStart:24.0];
  [(SBHomeGestureSettings *)self setHorizontalRubberbandEnd:92.0];
  [(SBHomeGestureSettings *)self setHorizontalRubberbandDistance:16.0];
  [(SBHomeGestureSettings *)self setHorizontalRubberbandExponent:4.0];
  [(SBHomeGestureSettings *)self setInjectGestureVelocityForZoomDown:1];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SBHomeGestureSettings *)self setOnlyInjectVelocityForShortFlicks:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
  [(SBHomeGestureSettings *)self setPositionVelocityXPercentOfGestureVelocityX:1.0];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v7 = 0.3;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 0.5;
  }

  [(SBHomeGestureSettings *)self setPositionVelocityYPercentOfGestureVelocityY:v7];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v10 = 1.4;
  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 1.5;
  }

  [(SBHomeGestureSettings *)self setScaleVelocityPercentOfGestureVelocityYDividedByViewHeight:v10];

  [(SBHomeGestureSettings *)self setMaximumScaleVelocity:10.0];
}

+ (id)settingsControllerModule
{
  v151[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Home Gesture" valueKeyPath:@"homeGestureEnabled"];
  v151[0] = v2;
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Hysteresis" valueKeyPath:@"hysteresis"];
  v4 = [v3 between:0.0 and:25.0];
  v5 = [v4 valueFormatter:&__block_literal_global_377];
  v151[1] = v5;
  v6 = [MEMORY[0x277D432A8] rowWithTitle:@"Recognize Along Edge" valueKeyPath:@"recognizeAlongEdge"];
  v151[2] = v6;
  v7 = [MEMORY[0x277D432A8] rowWithTitle:@"Use ZStackResolver Results" valueKeyPath:@"useZStackResolverResults"];
  v151[3] = v7;
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:4];

  v141 = [MEMORY[0x277D43210] sectionWithRows:v136];
  v8 = MEMORY[0x277CCAC30];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v11 = [v8 predicateWithValue:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v137 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Y Distance For Home Or Switcher" valueKeyPath:@"minimumYDistanceForHomeOrAppSwitcher"];
  v134 = [v137 between:0.0 and:500.0];
  v150[0] = v134;
  v131 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Y Distance To Consider Acceleration Dip" valueKeyPath:@"minimumYDistanceToConsiderAccelerationDip"];
  v128 = [v131 between:0.0 and:500.0];
  v150[1] = v128;
  v124 = [MEMORY[0x277D431E8] rowWithTitle:@"Min X Distance For First Arc" valueKeyPath:@"minimumXDistanceForFirstArcSwipe"];
  v121 = [v124 between:0.0 and:500.0];
  v150[2] = v121;
  v118 = [MEMORY[0x277D431E8] rowWithTitle:@"Min X Distance For Arc By Distance (Portrait)" valueKeyPath:@"minimumXDistanceToTriggerArcByDistancePortrait"];
  v115 = [v118 between:0.0 and:500.0];
  v150[3] = v115;
  v112 = [MEMORY[0x277D431E8] rowWithTitle:@"Min X Distance For Arc By Distance (Landscape)" valueKeyPath:@"minimumXDistanceToTriggerArcByDistanceLandscape"];
  v110 = [v112 between:0.0 and:500.0];
  v150[4] = v110;
  v108 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Y Distance For Arc By Distance" valueKeyPath:@"maximumYDistanceToTriggerArcByDistance"];
  v106 = [v108 between:0.0 and:500.0];
  v150[5] = v106;
  v105 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Y Distance For Arc By Flick" valueKeyPath:@"maximumYDistanceToTriggerArcByFlick"];
  v104 = [v105 between:0.0 and:500.0];
  v150[6] = v104;
  v103 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity Y For Unconditional Home" valueKeyPath:@"velocityYThresholdForUnconditionalHome"];
  v102 = [v103 between:-500.0 and:0.0];
  v150[7] = v102;
  v101 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Y Velocity For Home" valueKeyPath:@"minimumYVelocityForHome"];
  v100 = [v101 between:-500.0 and:0.0];
  v150[8] = v100;
  v99 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity X For Unconditional Arc" valueKeyPath:@"velocityXThresholdForUnconditionalArcSwipe"];
  v98 = [v99 between:0.0 and:500.0];
  v150[9] = v98;
  v97 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Y Velocity For Arc" valueKeyPath:@"minimumYVelocityForArcSwipe"];
  v96 = [v97 between:0.0 and:500.0];
  v150[10] = v96;
  v95 = [MEMORY[0x277D431E8] rowWithTitle:@"Normalized Distance Y For Unconditional Home" valueKeyPath:@"normalizedDistanceYThresholdForUnconditionalHome"];
  v94 = [v95 between:0.0 and:500.0];
  v150[11] = v94;
  v93 = [MEMORY[0x277D431E8] rowWithTitle:@"Normalized Distance Y Range For Unconditional Home" valueKeyPath:@"normalizedDistanceYThresholdRangeForUnconditionalHome"];
  v92 = [v93 between:0.0 and:500.0];
  v150[12] = v92;
  v91 = [MEMORY[0x277D431E8] rowWithTitle:@"Normalized Distance Y For Unconditional Home In SlideOver" valueKeyPath:@"normalizedDistanceYThresholdForUnconditionalHomeInSlideOver"];
  v90 = [v91 between:0.0 and:500.0];
  v150[13] = v90;
  v89 = [MEMORY[0x277D431E8] rowWithTitle:@"Normalized Distance Y Range For Unconditional Home In SlideOver" valueKeyPath:@"normalizedDistanceYThresholdRangeForUnconditionalHomeInSlideOver"];
  v88 = [v89 between:0.0 and:500.0];
  v150[14] = v88;
  v87 = [MEMORY[0x277D431E8] rowWithTitle:@"Pause Velocity For Switcher" valueKeyPath:@"pauseVelocityThresholdForAppSwitcher"];
  v86 = [v87 between:0.0 and:500.0];
  v150[15] = v86;
  v85 = [MEMORY[0x277D431E8] rowWithTitle:@"Pause Velocity For Definite Switcher" valueKeyPath:@"pauseVelocityThresholdForDefiniteAppSwitcher"];
  v84 = [v85 between:0.0 and:500.0];
  v150[16] = v84;
  v83 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Adaptive Pause Velocity For Switcher" valueKeyPath:@"maximumAdaptivePauseVelocityThresholdForAppSwitcher"];
  v82 = [v83 between:0.0 and:500.0];
  v150[17] = v82;
  v81 = [MEMORY[0x277D431E8] rowWithTitle:@"Snap To Max Velocity After Acceleration Dip" valueKeyPath:@"snapToMaxVelocityThresholdAfterAccelerationDip"];
  v80 = [v81 between:0.0 and:500.0];
  v150[18] = v80;
  v79 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Adaptive Velocity For Dock" valueKeyPath:@"maximumAdaptiveVelocityThresholdForDock"];
  v78 = [v79 between:0.0 and:500.0];
  v77 = [v78 condition:v11];
  v150[19] = v77;
  v76 = [MEMORY[0x277D431E8] rowWithTitle:@"Switcher Velocity Increasing Rate Fraction" valueKeyPath:@"appSwitcherVelocityThresholdIncreasingRateFraction"];
  v75 = [v76 between:0.0 and:500.0];
  v150[20] = v75;
  v74 = [MEMORY[0x277D431E8] rowWithTitle:@"Dock Velocity Increasing Rate Fraction" valueKeyPath:@"dockVelocityThresholdIncreasingRateFraction"];
  v73 = [v74 between:0.0 and:500.0];
  v140 = v11;
  v72 = [v73 condition:v11];
  v150[21] = v72;
  v71 = [MEMORY[0x277D431E8] rowWithTitle:@"Adaptive Thresholds Decreasing Rate Fraction" valueKeyPath:@"adaptiveThresholdsDecreasingRateFraction"];
  v70 = [v71 between:0.0 and:500.0];
  v150[22] = v70;
  v69 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity Slope For Bottom Swipe Up Arc" valueKeyPath:@"velocitySlopeThresholdForBottomSwipeUpArc"];
  v68 = [v69 between:0.0 and:500.0];
  v150[23] = v68;
  v67 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity Slope For Scrunch Arc" valueKeyPath:@"velocitySlopeThresholdForScrunchArc"];
  v66 = [v67 between:0.0 and:500.0];
  v150[24] = v66;
  v65 = [MEMORY[0x277D431E8] rowWithTitle:@"Velocity Slope For Current Layout" valueKeyPath:@"velocitySlopeThresholdForCurrentLayout"];
  v12 = [v65 between:0.0 and:500.0];
  v150[25] = v12;
  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Edge Distance To Correct Gesture Final Action" valueKeyPath:@"edgeDistanceToCorrectGestureFinalDestination"];
  v14 = [v13 between:0.0 and:500.0];
  v150[26] = v14;
  v15 = [MEMORY[0x277D431E8] rowWithTitle:@"Card Fly In Max Velocity Threshold" valueKeyPath:@"cardFlyInMaximumVelocityThreshold"];
  v16 = [v15 between:0.0 and:500.0];
  v150[27] = v16;
  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Card Fly In Delay After Entering Switcher" valueKeyPath:@"cardFlyInDelayAfterEnteringAppSwitcher"];
  v18 = [v17 between:0.0 and:500.0];
  v150[28] = v18;
  v19 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Distance Y To Present Dock" valueKeyPath:@"maximumDistanceYThresholdToPresentDock"];
  v20 = [v19 between:0.0 and:500.0];
  v21 = [v20 condition:v11];
  v150[29] = v21;
  v139 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:30];

  v138 = [MEMORY[0x277D43210] sectionWithRows:v139];
  v132 = [MEMORY[0x277D431E8] rowWithTitle:@"Vertical Rubberband Start" valueKeyPath:@"verticalRubberbandStart"];
  v129 = [v132 between:0.0 and:500.0];
  v149[0] = v129;
  v125 = [MEMORY[0x277D431E8] rowWithTitle:@"Vertical Rubberband End" valueKeyPath:@"verticalRubberbandEnd"];
  v122 = [v125 between:0.0 and:500.0];
  v149[1] = v122;
  v119 = [MEMORY[0x277D431E8] rowWithTitle:@"Vertical Rubberband Distance" valueKeyPath:@"verticalRubberbandDistance"];
  v116 = [v119 between:0.0 and:500.0];
  v149[2] = v116;
  v113 = [MEMORY[0x277D431E8] rowWithTitle:@"Vertical Rubberband Exponent" valueKeyPath:@"verticalRubberbandExponent"];
  v22 = [v113 between:0.0 and:10.0];
  v149[3] = v22;
  v23 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Rubberband Start" valueKeyPath:@"horizontalRubberbandStart"];
  v24 = [v23 between:0.0 and:500.0];
  v149[4] = v24;
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Rubberband End" valueKeyPath:@"horizontalRubberbandEnd"];
  v26 = [v25 between:0.0 and:500.0];
  v149[5] = v26;
  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Rubberband Distance" valueKeyPath:@"horizontalRubberbandDistance"];
  v28 = [v27 between:0.0 and:500.0];
  v149[6] = v28;
  v29 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Rubberband Exponent" valueKeyPath:@"horizontalRubberbandExponent"];
  v30 = [v29 between:0.0 and:10.0];
  v149[7] = v30;
  v135 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:8];

  v133 = [MEMORY[0x277D43210] sectionWithRows:v135 title:@"Latch" condition:v140];
  v126 = [MEMORY[0x277D432A8] rowWithTitle:@"Inject Velocity For Zoom Down" valueKeyPath:@"injectGestureVelocityForZoomDown"];
  v148[0] = v126;
  v31 = [MEMORY[0x277D432A8] rowWithTitle:@"Only for Short Flicks" valueKeyPath:@"onlyInjectVelocityForShortFlicks"];
  v148[1] = v31;
  v32 = [MEMORY[0x277D431E8] rowWithTitle:@"Position Velocity X Percent of Gesture Velocity X" valueKeyPath:@"positionVelocityXPercentOfGestureVelocityX"];
  v33 = [v32 between:0.0 and:500.0];
  v148[2] = v33;
  v34 = [MEMORY[0x277D431E8] rowWithTitle:@"Position Velocity Y Percent Of Gesture Velocity Y" valueKeyPath:@"positionVelocityYPercentOfGestureVelocityY"];
  v35 = [v34 between:0.0 and:500.0];
  v148[3] = v35;
  v36 = [MEMORY[0x277D431E8] rowWithTitle:@"Scale Velocity Percent Of Gesture Velocity Y Divided By View Height" valueKeyPath:@"scaleVelocityPercentOfGestureVelocityYDividedByViewHeight"];
  v37 = [v36 between:0.0 and:10.0];
  v148[4] = v37;
  v38 = [MEMORY[0x277D431E8] rowWithTitle:@"Maximum Scale Velocity" valueKeyPath:@"maximumScaleVelocity"];
  v39 = [v38 between:0.0 and:20.0];
  v148[5] = v39;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:6];

  v127 = [MEMORY[0x277D43210] sectionWithRows:v130 title:@"Velocity Injection"];
  v40 = [MEMORY[0x277D431E8] rowWithTitle:@"Seconds to Allow Multiple Edges" valueKeyPath:@"secondsToAllowMultipleEdges"];
  v41 = [v40 between:0.0 and:10.0];
  v42 = [v41 valueFormatter:&__block_literal_global_377];
  v147[0] = v42;
  v43 = [MEMORY[0x277D432A8] rowWithTitle:@"Reset After App Interaction" valueKeyPath:@"preventMultipleEdgesAfterAppInteraction"];
  v147[1] = v43;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:2];

  v120 = [MEMORY[0x277D43210] sectionWithRows:v123 title:@"Orientation"];
  v44 = [MEMORY[0x277D431E8] rowWithTitle:@"Seconds to Reset Switcher List After Transition" valueKeyPath:@"secondsToResetSwitcherListAfterTransition"];
  v45 = [v44 between:0.0 and:10.0];
  v46 = [v45 valueFormatter:&__block_literal_global_377];
  v146[0] = v46;
  v47 = [MEMORY[0x277D432A8] rowWithTitle:@"Reset After App Interaction" valueKeyPath:@"resetSwitcherListAfterAppInteraction"];
  v146[1] = v47;
  v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];

  v114 = [MEMORY[0x277D43210] sectionWithRows:v117 title:@"Switcher Model Changes"];
  v48 = [MEMORY[0x277D431E8] rowWithTitle:@"Travel Distance For Translating Screen Height" valueKeyPath:@"travelDistanceForTranslatingScreenHeight"];
  v49 = [v48 precision:2];
  v145[0] = v49;
  v50 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Distance Threshold To Scale Multiplier" valueKeyPath:@"minimumDistanceThresholdToScaleMultiplier"];
  v51 = [v50 precision:2];
  v145[1] = v51;
  v111 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:2];

  v52 = [MEMORY[0x277D43210] sectionWithRows:v111 title:@"Trackpad"];
  v109 = [MEMORY[0x277D431D8] rowWithTitle:@"Exclusion Trapezoids" childSettingsKeyPath:@"exclusionTrapezoidSettings"];
  v53 = MEMORY[0x277D43210];
  v144 = v109;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
  v107 = [v53 sectionWithRows:v54];

  v55 = MEMORY[0x277D431B0];
  v56 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v57 = [v55 rowWithTitle:@"Restore Defaults" action:v56];

  v58 = MEMORY[0x277D43210];
  v143 = v57;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v60 = [v58 sectionWithRows:v59];

  v61 = MEMORY[0x277D43210];
  v142[0] = v141;
  v142[1] = v138;
  v142[2] = v133;
  v142[3] = v127;
  v142[4] = v120;
  v142[5] = v114;
  v142[6] = v52;
  v142[7] = v107;
  v142[8] = v60;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v142 count:9];
  v63 = [v61 moduleWithTitle:0 contents:v62];

  return v63;
}

uint64_t __49__SBHomeGestureSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 floatValue];
  v4 = roundf(v3 + v3) * 0.5;

  return [v2 numberWithDouble:v4];
}

@end