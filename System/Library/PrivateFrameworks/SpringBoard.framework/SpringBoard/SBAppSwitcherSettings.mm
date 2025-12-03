@interface SBAppSwitcherSettings
+ (id)settingsControllerModule;
- (double)_spacingBetweenLeadingEdgeAndIcon;
- (id)archiveValueForKey:(id)key;
- (int64_t)effectiveSwitcherStyle;
- (void)setDefaultValues;
- (void)setSimplicityOptions:(int64_t)options;
@end

@implementation SBAppSwitcherSettings

- (int64_t)effectiveSwitcherStyle
{
  result = [(SBAppSwitcherSettings *)self switcherStyle];
  if (!result)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)setDefaultValues
{
  animationSettings = [(SBAppSwitcherSettings *)self animationSettings];
  [animationSettings setDefaultValues];

  windowingSettings = [(SBAppSwitcherSettings *)self windowingSettings];
  [windowingSettings setDefaultValues];

  floatingSwitcherSettings = [(SBAppSwitcherSettings *)self floatingSwitcherSettings];
  [floatingSwitcherSettings setDefaultValues];

  centerWindowSizingSettings = [(SBAppSwitcherSettings *)self centerWindowSizingSettings];
  [centerWindowSizingSettings setDefaultValues];

  sceneRelevancySettings = [(SBAppSwitcherSettings *)self sceneRelevancySettings];
  [sceneRelevancySettings setDefaultValues];

  [(SBAppSwitcherSettings *)self setMScale:0.45];
  [(SBAppSwitcherSettings *)self setCenterPoint:0.4];
  [(SBAppSwitcherSettings *)self setMaxScale:1.3];
  [(SBAppSwitcherSettings *)self setMAlpha:1.5];
  [(SBAppSwitcherSettings *)self setBAlpha:0.95];
  [(SBAppSwitcherSettings *)self setMDarkening:0.55];
  [(SBAppSwitcherSettings *)self setBDarkening:0.0];
  [(SBAppSwitcherSettings *)self setMaxDarkening:0.35];
  if (__sb__runningInSpringBoard())
  {
    [(SBAppSwitcherSettings *)self setSwitcherCardScaleWhileTouched:dbl_21F8A8120[SBFEffectiveDeviceClass() == 2]];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    -[SBAppSwitcherSettings setSwitcherCardScaleWhileTouched:](self, "setSwitcherCardScaleWhileTouched:", dbl_21F8A8120[[currentDevice userInterfaceIdiom] == 1]);
  }

  [(SBAppSwitcherSettings *)self setSwitcherCardScaleWhileCursorHovered:1.0154];
  if (__sb__runningInSpringBoard())
  {
    v10 = SBFEffectiveDeviceClass();
    v11 = 30.0;
    if (v10 == 2)
    {
      v11 = 16.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCardShadowRadius:v11];
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
    v14 = 30.0;
    if (userInterfaceIdiom == 1)
    {
      v14 = 16.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCardShadowRadius:v14];
  }

  if (__sb__runningInSpringBoard())
  {
    [(SBAppSwitcherSettings *)self setSwitcherCardShadowOpacity:dbl_21F8A8130[SBFEffectiveDeviceClass() == 2]];
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    -[SBAppSwitcherSettings setSwitcherCardShadowOpacity:](self, "setSwitcherCardShadowOpacity:", dbl_21F8A8130[[currentDevice3 userInterfaceIdiom] == 1]);
  }

  [(SBAppSwitcherSettings *)self setSwitcherCardShadowOffsetHorizontal:0.0];
  if (__sb__runningInSpringBoard())
  {
    v16 = SBFEffectiveDeviceClass();
    v17 = 8.0;
    if (v16 != 2)
    {
      v17 = 0.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCardShadowOffsetVertical:v17];
  }

  else
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice4 userInterfaceIdiom];
    v20 = 8.0;
    if (userInterfaceIdiom2 != 1)
    {
      v20 = 0.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCardShadowOffsetVertical:v20];
  }

  currentDevice6 = qword_21F8A6000;
  if (__sb__runningInSpringBoard())
  {
    v22 = SBFEffectiveDeviceClass();
    v23 = -0.01;
    if (v22 == 2)
    {
      v23 = 0.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCenterYOffsetPercentOfScreenHeight:v23];
  }

  else
  {
    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice5 userInterfaceIdiom];
    v26 = -0.01;
    if (userInterfaceIdiom3 == 1)
    {
      v26 = 0.0;
    }

    [(SBAppSwitcherSettings *)self setSwitcherCenterYOffsetPercentOfScreenHeight:v26];
  }

  [(SBAppSwitcherSettings *)self setSwitcherCardShadowRadiusWhileTouched:50.0];
  [(SBAppSwitcherSettings *)self setSwitcherCardShadowOpacityWhileTouched:0.22];
  [(SBAppSwitcherSettings *)self setSwitcherCardShadowOffsetHorizontalWhileTouched:0.0];
  [(SBAppSwitcherSettings *)self setSwitcherCardShadowOffsetVerticalWhileTouched:25.0];
  [(SBAppSwitcherSettings *)self setCursorHoverShadowRadiusInterpolationAmount:0.33];
  [(SBAppSwitcherSettings *)self setCursorHoverShadowOpacityInterpolationAmount:0.33];
  [(SBAppSwitcherSettings *)self setCursorHoverShadowOffsetInterpolationAmount:0.33];
  [(SBAppSwitcherSettings *)self setPeekInsetWidth:48.0];
  [(SBAppSwitcherSettings *)self setMinPeekDistance:0.0];
  [(SBAppSwitcherSettings *)self setPeekCascadingOffset:10.0];
  [(SBAppSwitcherSettings *)self setPeekingCardScale:0.75];
  [(SBAppSwitcherSettings *)self setPeekingAbsolutePerspectiveAngle:30.0];
  [(SBAppSwitcherSettings *)self setTintStyleDimmingAlphaInFocusForDarkMode:0.75];
  [(SBAppSwitcherSettings *)self setTintStyleDimmingAlphaUnFocusForDarkMode:0.25];
  [(SBAppSwitcherSettings *)self setTintStyleDimmingAlphaInFocusForLightMode:0.35];
  [(SBAppSwitcherSettings *)self setGridSwitcherPageScale:0.3];
  [(SBAppSwitcherSettings *)self setShowFloats:0];
  v27 = __sb__runningInSpringBoard();
  v28 = v27;
  if (v27)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {

      goto LABEL_42;
    }
  }

  v29 = __sb__runningInSpringBoard();
  v30 = v29;
  if (v29)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v32 = v31;
  v33 = *(MEMORY[0x277D66E30] + 280);
  if ((v30 & 1) == 0)
  {
  }

  if ((v28 & 1) == 0)
  {
  }

  if (v32 >= v33)
  {
    v34 = 8.0;
    v35 = 91.0;
    v36 = 57.0;
    v37 = 84.0;
    v38 = 58.5;
    goto LABEL_58;
  }

LABEL_42:
  v39 = __sb__runningInSpringBoard();
  v40 = v39;
  if (v39)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] != 1)
    {

LABEL_56:
      v34 = 6.0;
      v35 = 68.0;
      v36 = 42.5;
      v37 = 63.0;
      v46 = 0x4046000000000000;
      goto LABEL_57;
    }
  }

  v41 = __sb__runningInSpringBoard();
  v42 = v41;
  if (v41)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v44 = v43;
  v45 = *(MEMORY[0x277D66E30] + 264);
  if ((v42 & 1) == 0)
  {
  }

  if ((v40 & 1) == 0)
  {
  }

  if (v44 < v45)
  {
    goto LABEL_56;
  }

  v34 = 6.5;
  v35 = 74.0;
  v36 = 44.5;
  v37 = 68.5;
  v46 = 0x4048000000000000;
LABEL_57:
  v38 = *&v46;
LABEL_58:
  [(SBAppSwitcherSettings *)self setGridSwitcherHorizontalInterpageSpacingLandscape:v38];
  [(SBAppSwitcherSettings *)self setGridSwitcherVerticalNaturalSpacingLandscape:v37];
  [(SBAppSwitcherSettings *)self setGridSwitcherHorizontalInterpageSpacingPortrait:v36];
  [(SBAppSwitcherSettings *)self setGridSwitcherVerticalNaturalSpacingPortrait:v35];
  [(SBAppSwitcherSettings *)self setGridSwitcherSnapToControlCenterHeightSlop:v34];
  [(SBAppSwitcherSettings *)self setGridSwitcherSwipeUpNormalizedRubberbandingRange:0.6];
  [(SBAppSwitcherSettings *)self setGridSwitcherSwipeUpNormalizedRubberbandedTranslationAtMinimumScale:0.25];
  [(SBAppSwitcherSettings *)self setGridSwitcherSwipeUpMinimumScale:0.9];
  [(SBAppSwitcherSettings *)self setGridSwitcherHomeButtonDeviceCardCornerRadius:7.0];
  [(SBAppSwitcherSettings *)self setAppExposeNonFloatingSingleRowScale:0.42];
  [(SBAppSwitcherSettings *)self gridSwitcherPageScale];
  [(SBAppSwitcherSettings *)self setAppExposeNonFloatingDoubleRowScale:?];
  [(SBAppSwitcherSettings *)self setAppExposeFloatingDoubleRowScale:0.6];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_60;
    }

LABEL_65:
    [(SBAppSwitcherSettings *)self setNumberOfSnapshotsToCacheInSwitcher:12];
    [(SBAppSwitcherSettings *)self setNumberOfSnapshotsToAlwaysKeepAround:7];
    goto LABEL_79;
  }

  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  currentDevice6 = [currentDevice7 userInterfaceIdiom];

  if (currentDevice6 == 1)
  {
    goto LABEL_65;
  }

LABEL_60:
  [(SBAppSwitcherSettings *)self setNumberOfSnapshotsToAlwaysKeepAround:0];
  v47 = __sb__runningInSpringBoard();
  v48 = v47;
  if (v47)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_77;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom])
    {

LABEL_77:
      selfCopy2 = self;
      v56 = 9;
      goto LABEL_78;
    }
  }

  v50 = __sb__runningInSpringBoard();
  v51 = v50;
  if (v50)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v53 = v52;
  v54 = *(MEMORY[0x277D66E30] + 56);
  if ((v51 & 1) == 0)
  {
  }

  if ((v48 & 1) == 0)
  {
  }

  if (v53 < v54)
  {
    goto LABEL_77;
  }

  selfCopy2 = self;
  v56 = 7;
LABEL_78:
  [(SBAppSwitcherSettings *)selfCopy2 setNumberOfSnapshotsToCacheInSwitcher:v56];
LABEL_79:
  [(SBAppSwitcherSettings *)self _spacingBetweenLeadingEdgeAndIcon];
  [(SBAppSwitcherSettings *)self setSpacingBetweenLeadingEdgeAndIcon:?];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_81;
    }

LABEL_87:
    [(SBAppSwitcherSettings *)self setSpacingBetweenTrailingEdgeAndLabels:8.0];
    v58 = 16.0;
LABEL_98:
    v62 = 29.0;
    goto LABEL_99;
  }

  currentDevice8 = [MEMORY[0x277D75418] currentDevice];
  currentDevice6 = [currentDevice8 userInterfaceIdiom];

  if (currentDevice6 == 1)
  {
    goto LABEL_87;
  }

LABEL_81:
  if (!__sb__runningInSpringBoard())
  {
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice9 userInterfaceIdiom])
    {
    }

    else
    {
      currentDevice6 = SBFEffectiveHomeButtonType();

      if (currentDevice6 == 2)
      {
        goto LABEL_91;
      }
    }

LABEL_97:
    [(SBAppSwitcherSettings *)self setSpacingBetweenTrailingEdgeAndLabels:14.0];
    v58 = 9.0;
    goto LABEL_98;
  }

  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_97;
  }

LABEL_91:
  [(SBAppSwitcherSettings *)self setSpacingBetweenTrailingEdgeAndLabels:24.0];
  v60 = __sb__runningInSpringBoard();
  v61 = v60;
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_130;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v61)
      {
        goto LABEL_130;
      }

      goto LABEL_122;
    }
  }

  else
  {
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice6 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_122:

      goto LABEL_130;
    }
  }

  v69 = __sb__runningInSpringBoard();
  v70 = v69;
  if (v69)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v72 = v71;
  v73 = *(MEMORY[0x277D66E30] + 136);
  if ((v70 & 1) == 0)
  {
  }

  if ((v61 & 1) == 0)
  {
  }

  if (v72 >= v73)
  {
    v58 = 8.0;
    v62 = 28.0;
    goto LABEL_99;
  }

LABEL_130:
  v58 = 8.0;
  v62 = 26.0;
LABEL_99:
  [(SBAppSwitcherSettings *)self setIconSideLength:v62];
  [(SBAppSwitcherSettings *)self setMultipleWindowsIndicatorSideLength:v62];
  [(SBAppSwitcherSettings *)self setSpacingBetweenSnapshotAndIcon:v58];
  [(SBAppSwitcherSettings *)self setSpacingBetweenSnapshotAndDescriptionLabelBaseline:16.0];
  [(SBAppSwitcherSettings *)self setSpacingBetweenTitleAndSubtitleBaseline:18.0];
  [(SBAppSwitcherSettings *)self setSpacingBetweenIconAndLabel:8.0];
  [(SBAppSwitcherSettings *)self setSpacingBetweenLabelAndMultipleWindowsIndicator:8.0];
  [(SBAppSwitcherSettings *)self setSpacingBetweenLabelAndSecondIcon:21.0];
  [(SBAppSwitcherSettings *)self setSpacingBetweenBoundsCenterAndSecondIcon:3.0];
  [(SBAppSwitcherSettings *)self setSimplicityOptions:0];
  [(SBAppSwitcherSettings *)self setUseAsynchronousRendering:1];
  [(SBAppSwitcherSettings *)self setShouldRoundCornersDuringSwipeUp:1];
  if (SBFEffectiveHomeButtonType() == 2)
  {
LABEL_100:
    v63 = 5.0;
    goto LABEL_101;
  }

  if (__sb__runningInSpringBoard())
  {
    v64 = SBFEffectiveDeviceClass();
    v63 = 0.0;
    if (v64 == 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice10 userInterfaceIdiom];

    v63 = 0.0;
    if (userInterfaceIdiom4 == 1)
    {
      goto LABEL_100;
    }
  }

LABEL_101:
  [(SBAppSwitcherSettings *)self setAsynchronousRenderingDisableSurfaceCacheDelayDuration:v63];
  [(SBAppSwitcherSettings *)self setPreventMedusaSnapshotsAfterTransitionDuration:1.5];
  [(SBAppSwitcherSettings *)self setCoplanarSpacingPhone:24.0];
  [(SBAppSwitcherSettings *)self setCoplanarSpacingPad:48.0];
  [(SBAppSwitcherSettings *)self setLiveResizeSceneUpdateDistanceThreshold:80.0];
  [(SBAppSwitcherSettings *)self setLiveResizeSceneUpdateTimeThresholdSeconds:0.08];
  [(SBAppSwitcherSettings *)self setLiveResizeUsesGrid:0];
  [(SBAppSwitcherSettings *)self setLiveResizeGridRubberbandingRange:200.0];
  [(SBAppSwitcherSettings *)self setLiveResizeGridMinimumWidth:100.0];
  [(SBAppSwitcherSettings *)self setLiveResizeGridMinimumHeight:300.0];
  [(SBAppSwitcherSettings *)self setLiveResizeSendsAnimatedSceneSizeUpdates:0];
  [(SBAppSwitcherSettings *)self setLiveResizePointerInteractionRegionOuterLength:12.5];
  [(SBAppSwitcherSettings *)self setLiveResizePointerInteractionRegionInnerLength:5.0];
  [(SBAppSwitcherSettings *)self setSnapshotAspectRatioAcceptanceThreshold:0.1];
  [(SBAppSwitcherSettings *)self setSwitcherStyle:0];
  [(SBAppSwitcherSettings *)self setDeckSwitcherPageScale:0.75];
  [(SBAppSwitcherSettings *)self setDeckSwitcherDecelerationRate:0.993];
  [(SBAppSwitcherSettings *)self setAExpLayoutCoeff:-18.0];
  [(SBAppSwitcherSettings *)self setBExpLayoutCoeff:9.0];
  [(SBAppSwitcherSettings *)self setDepthPadding:0.13];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_115;
    }

LABEL_114:
    [(SBAppSwitcherSettings *)self setDeckSwitcherPageScale:0.7];
    [(SBAppSwitcherSettings *)self setAExpLayoutCoeff:-28.0];
    [(SBAppSwitcherSettings *)self setBExpLayoutCoeff:8.5];
    [(SBAppSwitcherSettings *)self setDepthPadding:0.123];
    goto LABEL_115;
  }

  currentDevice11 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice11 userInterfaceIdiom])
  {

    goto LABEL_115;
  }

  v68 = SBFEffectiveHomeButtonType();

  if (v68 == 2)
  {
    goto LABEL_114;
  }

LABEL_115:
  [(SBAppSwitcherSettings *)self setUseTitleOpacityPrototypeSettings:0];
  [(SBAppSwitcherSettings *)self setTitleOpacityACoeff:0.16];
  [(SBAppSwitcherSettings *)self setTitleOpacityBCoeff:8.0];
  [(SBAppSwitcherSettings *)self setTitleOpacityCCoeff:0.023];
  [(SBAppSwitcherSettings *)self setTitleOpacityDCoeff:40.0];
  [(SBAppSwitcherSettings *)self setOffscreenCardScaleForFlyIn:0.8];
  [(SBAppSwitcherSettings *)self setShouldRedactWindowContents:0];
  [(SBAppSwitcherSettings *)self setShowModifierDebugLabel:0];
  [(SBAppSwitcherSettings *)self setShowMainModifierTimeline:0];
  [(SBAppSwitcherSettings *)self setShowLockedModifierTimeline:0];

  [(SBAppSwitcherSettings *)self setShouldDisableSwitcherModelUpdatesForDemo:0];
}

+ (id)settingsControllerModule
{
  v414[1] = *MEMORY[0x277D85DE8];
  v384 = [MEMORY[0x277D432A8] rowWithTitle:@"Sliders/Floats" valueKeyPath:@"showFloats"];
  v331 = [MEMORY[0x277CCAC30] predicateWithFormat:@"showFloats == YES"];
  v385 = [MEMORY[0x277CCAC30] predicateWithFormat:@"showFloats == NO"];
  v318 = [MEMORY[0x277D431D8] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"animationSettings"];
  v2 = MEMORY[0x277D43210];
  v414[0] = v318;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v414 count:1];
  v383 = [v2 sectionWithRows:v3];

  v317 = [MEMORY[0x277D431D8] rowWithTitle:@"Windowing Settings" childSettingsKeyPath:@"windowingSettings"];
  v4 = MEMORY[0x277D43210];
  v413 = v317;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v413 count:1];
  v382 = [v4 sectionWithRows:v5];

  v316 = [MEMORY[0x277D431D8] rowWithTitle:@"System Aperture Settings" childSettingsKeyPath:@"systemApertureSettings"];
  v6 = MEMORY[0x277D43210];
  v412 = v316;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v412 count:1];
  v381 = [v6 sectionWithRows:v7];

  v315 = [MEMORY[0x277D431D8] rowWithTitle:@"Floating Switcher Settings" childSettingsKeyPath:@"floatingSwitcherSettings"];
  v8 = MEMORY[0x277D43210];
  v411 = v315;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v411 count:1];
  v380 = [v8 sectionWithRows:v9];

  v314 = [MEMORY[0x277D431D8] rowWithTitle:@"Center Window Sizing Settings" childSettingsKeyPath:@"centerWindowSizingSettings"];
  v10 = MEMORY[0x277D43210];
  v410 = v314;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v410 count:1];
  v379 = [v10 sectionWithRows:v11];

  v313 = [MEMORY[0x277D431D8] rowWithTitle:@"Scene Relevancy Settings" childSettingsKeyPath:@"sceneRelevancySettings"];
  v12 = MEMORY[0x277D43210];
  v409 = v313;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v409 count:1];
  v378 = [v12 sectionWithRows:v13];

  v14 = MEMORY[0x277D431D8];
  v15 = NSStringFromSelector(sel_dashboardHomeGestureSettings);
  v312 = [v14 rowWithTitle:@"Dashboard Home Gesture Settings" childSettingsKeyPath:v15];

  v16 = MEMORY[0x277D43210];
  v408 = v312;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v408 count:1];
  v377 = [v16 sectionWithRows:v17 title:@"Dashboard Settings"];

  v18 = MEMORY[0x277D43210];
  v19 = MEMORY[0x277D431E8];
  v20 = NSStringFromSelector(sel_liveResizeSceneUpdateDistanceThreshold);
  v21 = [v19 rowWithTitle:@"Live Resize Distance Threshold for Scene Size Update" valueKeyPath:v20];
  v22 = [v21 between:0.0 and:1000.0];
  v407[0] = v22;
  v23 = MEMORY[0x277D431E8];
  v24 = NSStringFromSelector(sel_liveResizeSceneUpdateTimeThresholdSeconds);
  v25 = [v23 rowWithTitle:@"Live Resize Pause Threshold for Scene Size Update (seconds)" valueKeyPath:v24];
  v26 = [v25 precision:3];
  v27 = [v26 between:0.0 and:5.0];
  v407[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v407 count:2];
  v376 = [v18 sectionWithRows:v28 title:@"Live Resize"];

  v374 = MEMORY[0x277D43210];
  v29 = MEMORY[0x277D432A8];
  v372 = NSStringFromSelector(sel_liveResizeUsesGrid);
  v370 = [v29 rowWithTitle:@"Live Resizes Uses Grid" valueKeyPath:v372];
  v406[0] = v370;
  v30 = MEMORY[0x277D431E8];
  v368 = NSStringFromSelector(sel_liveResizeGridRubberbandingRange);
  v365 = [v30 rowWithTitle:@"Live Resize Grid Rubberbanding Range" valueKeyPath:v368];
  v362 = [v365 precision:0];
  v31 = [v362 between:0.0 and:500.0];
  v406[1] = v31;
  v32 = MEMORY[0x277D431E8];
  v33 = NSStringFromSelector(sel_liveResizeGridMinimumWidth);
  v34 = [v32 rowWithTitle:@"Live Resize Grid Minimum Width" valueKeyPath:v33];
  v35 = [v34 precision:0];
  v36 = [v35 between:0.0 and:1500.0];
  v406[2] = v36;
  v37 = MEMORY[0x277D431E8];
  v38 = NSStringFromSelector(sel_liveResizeGridMinimumHeight);
  v39 = [v37 rowWithTitle:@"Live Resize Grid Minimum Height" valueKeyPath:v38];
  v40 = [v39 precision:0];
  v41 = [v40 between:0.0 and:1500.0];
  v406[3] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v406 count:4];
  v375 = [v374 sectionWithRows:v42 title:@"Live Resize On Grid"];

  v43 = MEMORY[0x277D43210];
  v44 = MEMORY[0x277D432A8];
  v45 = NSStringFromSelector(sel_liveResizeSendsAnimatedSceneSizeUpdates);
  v46 = [v44 rowWithTitle:@"Send Animated Scene Size Updates" valueKeyPath:v45];
  v405 = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v405 count:1];
  v373 = [v43 sectionWithRows:v47 title:@"Live Resize With Animation"];

  v48 = MEMORY[0x277D43210];
  v49 = MEMORY[0x277D431E8];
  v50 = NSStringFromSelector(sel_liveResizePointerInteractionRegionOuterLength);
  v51 = [v49 rowWithTitle:@"Live Resize Pointer Interaction Region Outer Length" valueKeyPath:v50];
  v52 = [v51 precision:0];
  v53 = [v52 between:1.0 and:1500.0];
  v404[0] = v53;
  v54 = MEMORY[0x277D431E8];
  v55 = NSStringFromSelector(sel_liveResizePointerInteractionRegionInnerLength);
  v56 = [v54 rowWithTitle:@"Live Resize Pointer Interaction Region Inner Length" valueKeyPath:v55];
  v57 = [v56 precision:0];
  v58 = [v57 between:1.0 and:1500.0];
  v404[1] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v404 count:2];
  v371 = [v48 sectionWithRows:v59 title:@"Live Resize Pointer Interaction"];

  v60 = MEMORY[0x277D43210];
  v61 = MEMORY[0x277D431E8];
  v62 = NSStringFromSelector(sel_snapshotAspectRatioAcceptanceThreshold);
  v63 = [v61 rowWithTitle:@"Snapshot Aspect Ratio Acceptance Threshold" valueKeyPath:v62];
  v64 = [v63 precision:2];
  v65 = [v64 between:0.0 and:1.0];
  v403 = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v403 count:1];
  v369 = [v60 sectionWithRows:v66 title:@"Snapshots"];

  v366 = MEMORY[0x277D43210];
  v363 = [MEMORY[0x277D431B8] rowWithTitle:@"Switcher" valueKeyPath:@"switcherStyle"];
  v359 = [v363 possibleValues:&unk_28336EA78 titles:&unk_28336EA60];
  v402[0] = v359;
  v67 = MEMORY[0x277D43290];
  v355 = NSStringFromSelector(sel_switcherCardScaleWhileTouched);
  v68 = [v67 rowWithTitle:@"Scale When Touched/Dragged" valueKeyPath:v355];
  v69 = [v68 minValue:0.9 maxValue:1.1];
  v402[1] = v69;
  v70 = MEMORY[0x277D43290];
  v71 = NSStringFromSelector(sel_switcherCardScaleWhileCursorHovered);
  v72 = [v70 rowWithTitle:@"Scale When Cursor Hovers" valueKeyPath:v71];
  v73 = [v72 minValue:0.9 maxValue:1.1];
  v402[2] = v73;
  v74 = MEMORY[0x277D431E8];
  v75 = NSStringFromSelector(sel_switcherCardScaleWhileCursorHovered);
  v76 = [v74 rowWithTitle:&stru_283094718 valueKeyPath:v75];
  v77 = [v76 precision:4];
  v78 = [v77 between:0.9 and:1.1];
  v402[3] = v78;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v402 count:4];
  v367 = [v366 sectionWithRows:v79 title:@"Card Style"];

  v80 = MEMORY[0x277D43210];
  v81 = [MEMORY[0x277D43290] rowWithTitle:@"Shadow Radius" valueKeyPath:@"switcherCardShadowRadius"];
  v82 = [v81 minValue:0.0 maxValue:50.0];
  v401[0] = v82;
  v83 = [MEMORY[0x277D43290] rowWithTitle:@"Shadow Opacity" valueKeyPath:@"switcherCardShadowOpacity"];
  v84 = [v83 minValue:0.0 maxValue:0.5];
  v401[1] = v84;
  v85 = [MEMORY[0x277D43290] rowWithTitle:@"Shadow Horizontal Offset" valueKeyPath:@"switcherCardShadowOffsetHorizontal"];
  v86 = [v85 minValue:0.0 maxValue:60.0];
  v401[2] = v86;
  v87 = [MEMORY[0x277D43290] rowWithTitle:@"Shadow Vertical Offset" valueKeyPath:@"switcherCardShadowOffsetVertical"];
  v88 = [v87 minValue:0.0 maxValue:60.0];
  v401[3] = v88;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v401 count:4];
  v364 = [v80 sectionWithRows:v89 title:@"Card Shadow"];

  v360 = MEMORY[0x277D43210];
  v90 = MEMORY[0x277D43290];
  v356 = NSStringFromSelector(sel_switcherCardShadowRadiusWhileTouched);
  v352 = [v90 rowWithTitle:@"Shadow Radius When Touched" valueKeyPath:v356];
  v348 = [v352 minValue:0.0 maxValue:50.0];
  v400[0] = v348;
  v91 = MEMORY[0x277D43290];
  v92 = NSStringFromSelector(sel_switcherCardShadowOpacityWhileTouched);
  v93 = [v91 rowWithTitle:@"Shadow Opacity When Touched" valueKeyPath:v92];
  v94 = [v93 minValue:0.0 maxValue:1.0];
  v400[1] = v94;
  v95 = MEMORY[0x277D43290];
  v96 = NSStringFromSelector(sel_switcherCardShadowOffsetHorizontalWhileTouched);
  v97 = [v95 rowWithTitle:@"Shadow Horizontal Offset When Touched" valueKeyPath:v96];
  v98 = [v97 minValue:0.0 maxValue:60.0];
  v400[2] = v98;
  v99 = MEMORY[0x277D43290];
  v100 = NSStringFromSelector(sel_switcherCardShadowOffsetVerticalWhileTouched);
  v101 = [v99 rowWithTitle:@"Shadow Vertical Offset When Touched" valueKeyPath:v100];
  v102 = [v101 minValue:0.0 maxValue:60.0];
  v400[3] = v102;
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:v400 count:4];
  v361 = [v360 sectionWithRows:v103 title:@"Card Shadow When Touched/Dragged"];

  v357 = MEMORY[0x277D43210];
  v104 = MEMORY[0x277D43290];
  v105 = NSStringFromSelector(sel_cursorHoverShadowRadiusInterpolationAmount);
  v106 = [v104 rowWithTitle:@"Shadow Radius Interpolation Amount" valueKeyPath:v105];
  v107 = [v106 minValue:0.0 maxValue:1.0];
  v399[0] = v107;
  v108 = MEMORY[0x277D43290];
  v109 = NSStringFromSelector(sel_cursorHoverShadowOpacityInterpolationAmount);
  v110 = [v108 rowWithTitle:@"Shadow Opacity Interpolation Amount" valueKeyPath:v109];
  v111 = [v110 minValue:0.0 maxValue:1.0];
  v399[1] = v111;
  v112 = MEMORY[0x277D43290];
  v113 = NSStringFromSelector(sel_cursorHoverShadowOffsetInterpolationAmount);
  v114 = [v112 rowWithTitle:@"Shadow Offset Interpolation Amount" valueKeyPath:v113];
  v115 = [v114 minValue:0.0 maxValue:1.0];
  v399[2] = v115;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v399 count:3];
  v358 = [v357 sectionWithRows:v116 title:@"Hover Shadow Interpolation Amount"];

  v353 = MEMORY[0x277D43210];
  v117 = MEMORY[0x277D43290];
  v349 = NSStringFromSelector(sel_peekInsetWidth);
  v346 = [v117 rowWithTitle:@"Peek Inset From Edge" valueKeyPath:v349];
  v344 = [v346 minValue:0.0 maxValue:150.0];
  v398[0] = v344;
  v118 = MEMORY[0x277D43290];
  v342 = NSStringFromSelector(sel_minPeekDistance);
  v340 = [v118 rowWithTitle:@"Minimum Peek Inset From Edge" valueKeyPath:v342];
  v338 = [v340 minValue:0.0 maxValue:100.0];
  v398[1] = v338;
  v119 = MEMORY[0x277D43290];
  v120 = NSStringFromSelector(sel_peekCascadingOffset);
  v121 = [v119 rowWithTitle:@"Peek Cascading Offset" valueKeyPath:v120];
  v122 = [v121 minValue:0.0 maxValue:20.0];
  v398[2] = v122;
  v123 = MEMORY[0x277D43290];
  v124 = NSStringFromSelector(sel_peekingCardScale);
  v125 = [v123 rowWithTitle:@"Peeking Card Scale" valueKeyPath:v124];
  v126 = [v125 minValue:0.1 maxValue:1.5];
  v398[3] = v126;
  v127 = MEMORY[0x277D43290];
  v128 = NSStringFromSelector(sel_peekingAbsolutePerspectiveAngle);
  v129 = [v127 rowWithTitle:@"Peeking Absolute Perspective Angle" valueKeyPath:v128];
  v130 = [v129 minValue:0.0 maxValue:90.0];
  v398[4] = v130;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v398 count:5];
  v354 = [v353 sectionWithRows:v131 title:@"Peek"];

  v350 = MEMORY[0x277D43210];
  v132 = MEMORY[0x277D43290];
  v133 = NSStringFromSelector(sel_tintStyleDimmingAlphaInFocusForDarkMode);
  v134 = [v132 rowWithTitle:@"Tint style dimming alpha in-focus for dark mode" valueKeyPath:v133];
  v135 = [v134 minValue:0.0 maxValue:1.0];
  v397[0] = v135;
  v136 = MEMORY[0x277D43290];
  v137 = NSStringFromSelector(sel_tintStyleDimmingAlphaUnFocusForDarkMode);
  v138 = [v136 rowWithTitle:@"Tint style dimming alpha un-focus for dark mode" valueKeyPath:v137];
  v139 = [v138 minValue:0.0 maxValue:1.0];
  v397[1] = v139;
  v140 = MEMORY[0x277D43290];
  v141 = NSStringFromSelector(sel_tintStyleDimmingAlphaInFocusForLightMode);
  v142 = [v140 rowWithTitle:@"Tint style dimming alpha in-focus for light mode" valueKeyPath:v141];
  v143 = [v142 minValue:0.0 maxValue:1.0];
  v397[2] = v143;
  v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v397 count:3];
  v351 = [v350 sectionWithRows:v144 title:@"Shelf"];

  v145 = [MEMORY[0x277D43290] rowWithTitle:@"Scale Slope" valueKeyPath:@"mScale"];
  v146 = [v145 minValue:0.0 maxValue:2.0];
  v347 = [v146 condition:v385];

  v147 = [MEMORY[0x277D431E8] rowWithTitle:@"Scale Slope" valueKeyPath:@"mScale"];
  v345 = [v147 condition:v331];

  [v345 setPrecision:6];
  v148 = [MEMORY[0x277D43290] rowWithTitle:@"Center Point" valueKeyPath:@"centerPoint"];
  v149 = [v148 minValue:0.0 maxValue:1.0];
  v343 = [v149 condition:v385];

  v150 = [MEMORY[0x277D431E8] rowWithTitle:@"Center Point" valueKeyPath:@"centerPoint"];
  v341 = [v150 condition:v331];

  [v341 setPrecision:6];
  v151 = [MEMORY[0x277D43290] rowWithTitle:@"Max Scale" valueKeyPath:@"maxScale"];
  v152 = [v151 minValue:0.0 maxValue:1.5];
  v339 = [v152 condition:v385];

  v153 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Scale" valueKeyPath:@"maxScale"];
  v337 = [v153 condition:v331];

  [v337 setPrecision:6];
  v154 = [MEMORY[0x277D43290] rowWithTitle:@"Alpha Slope" valueKeyPath:@"mAlpha"];
  v155 = [v154 minValue:0.0 maxValue:2.0];
  v336 = [v155 condition:v385];

  v156 = [MEMORY[0x277D431E8] rowWithTitle:@"Alpha Slope" valueKeyPath:@"mAlpha"];
  v335 = [v156 condition:v331];

  [v335 setPrecision:6];
  v157 = [MEMORY[0x277D43290] rowWithTitle:@"Alpha Offset" valueKeyPath:@"bAlpha"];
  v158 = [v157 minValue:0.0 maxValue:1.0];
  v334 = [v158 condition:v385];

  v159 = [MEMORY[0x277D431E8] rowWithTitle:@"Alpha Offset" valueKeyPath:@"bAlpha"];
  v333 = [v159 condition:v331];

  [v333 setPrecision:6];
  v160 = [MEMORY[0x277D43290] rowWithTitle:@"Darkening Slope" valueKeyPath:@"mDarkening"];
  v161 = [v160 minValue:0.0 maxValue:2.0];
  v332 = [v161 condition:v385];

  v162 = [MEMORY[0x277D431E8] rowWithTitle:@"Darkening Slope" valueKeyPath:@"mDarkening"];
  v163 = [v162 condition:v331];

  v311 = v163;
  [v163 setPrecision:6];
  v164 = [MEMORY[0x277D43290] rowWithTitle:@"Darkening Offset" valueKeyPath:@"bDarkening"];
  v165 = [v164 minValue:0.0 maxValue:2.0];
  v310 = [v165 condition:v385];

  v166 = [MEMORY[0x277D431E8] rowWithTitle:@"Darkening Offset" valueKeyPath:@"bDarkening"];
  v167 = [v166 condition:v331];

  v309 = v167;
  [v167 setPrecision:6];
  v168 = [MEMORY[0x277D43290] rowWithTitle:@"Max Darkening" valueKeyPath:@"maxDarkening"];
  v169 = [v168 minValue:0.0 maxValue:2.0];
  v308 = [v169 condition:v385];

  v170 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Darkening" valueKeyPath:@"maxDarkening"];
  v171 = [v170 condition:v331];

  v307 = v171;
  [v171 setPrecision:6];
  v172 = MEMORY[0x277D43210];
  v396[0] = v347;
  v396[1] = v345;
  v396[2] = v343;
  v396[3] = v341;
  v396[4] = v339;
  v396[5] = v337;
  v396[6] = v336;
  v396[7] = v335;
  v396[8] = v334;
  v396[9] = v333;
  v396[10] = v308;
  v396[11] = v332;
  v396[12] = v163;
  v396[13] = v310;
  v396[14] = v167;
  v396[15] = v171;
  v173 = [MEMORY[0x277CBEA60] arrayWithObjects:v396 count:16];
  v330 = [v172 sectionWithRows:v173];

  v174 = [MEMORY[0x277D43290] rowWithTitle:@"Grid Page Scale" valueKeyPath:@"gridSwitcherPageScale"];
  v175 = [v174 minValue:0.1 maxValue:0.5];
  v329 = [v175 condition:v385];

  v176 = [MEMORY[0x277D431E8] rowWithTitle:@"Grid Page Scale" valueKeyPath:@"gridSwitcherPageScale"];
  v328 = [v176 condition:v331];

  [v328 setPrecision:6];
  v177 = [MEMORY[0x277D43290] rowWithTitle:@"Horiz. Spacing Landscape" valueKeyPath:@"gridSwitcherHorizontalInterpageSpacingLandscape"];
  v178 = [v177 minValue:0.0 maxValue:100.0];
  v327 = [v178 condition:v385];

  v179 = [MEMORY[0x277D431E8] rowWithTitle:@"Horiz. Spacing Landscape" valueKeyPath:@"gridSwitcherHorizontalInterpageSpacingLandscape"];
  v326 = [v179 condition:v331];

  [v326 setPrecision:6];
  v180 = [MEMORY[0x277D43290] rowWithTitle:@"Vert. Nat. Spacing Landscape" valueKeyPath:@"gridSwitcherVerticalNaturalSpacingLandscape"];
  v181 = [v180 minValue:0.0 maxValue:150.0];
  v325 = [v181 condition:v385];

  v182 = [MEMORY[0x277D431E8] rowWithTitle:@"Vert. Nat. Spacing Landscape" valueKeyPath:@"gridSwitcherVerticalNaturalSpacingLandscape"];
  v324 = [v182 condition:v331];

  [v324 setPrecision:6];
  v183 = [MEMORY[0x277D43290] rowWithTitle:@"Horiz. Spacing Portrait" valueKeyPath:@"gridSwitcherHorizontalInterpageSpacingPortrait"];
  v184 = [v183 minValue:0.0 maxValue:100.0];
  v323 = [v184 condition:v385];

  v185 = [MEMORY[0x277D431E8] rowWithTitle:@"Horiz. Spacing Portrait" valueKeyPath:@"gridSwitcherHorizontalInterpageSpacingPortrait"];
  v322 = [v185 condition:v331];

  [v322 setPrecision:6];
  v186 = [MEMORY[0x277D43290] rowWithTitle:@"Vert. Nat. Spacing Portrait" valueKeyPath:@"gridSwitcherVerticalNaturalSpacingPortrait"];
  v187 = [v186 minValue:0.0 maxValue:200.0];
  v306 = [v187 condition:v385];

  v188 = [MEMORY[0x277D431E8] rowWithTitle:@"Vert. Nat. Spacing Portrait" valueKeyPath:@"gridSwitcherVerticalNaturalSpacingPortrait"];
  v189 = [v188 condition:v331];

  [v189 setPrecision:6];
  v190 = [MEMORY[0x277D43290] rowWithTitle:@"Snap To CC Height Slop" valueKeyPath:@"gridSwitcherSnapToControlCenterHeightSlop"];
  v191 = [v190 minValue:0.0 maxValue:60.0];
  v305 = [v191 condition:v385];

  v192 = [MEMORY[0x277D431E8] rowWithTitle:@"Snap To CC Height Slop" valueKeyPath:@"gridSwitcherSnapToControlCenterHeightSlop"];
  v193 = [v192 condition:v331];

  v304 = v193;
  [v193 setPrecision:6];
  v194 = [MEMORY[0x277D431E8] rowWithTitle:@"Swipe Up Rubberbanding Range (% of screen height)" valueKeyPath:@"gridSwitcherSwipeUpNormalizedRubberbandingRange"];
  v303 = [v194 between:0.0 and:1.0];

  v195 = [MEMORY[0x277D431E8] rowWithTitle:@"Swipe Up Rubberbanded Translation at Minimum Scale (% of screen height)" valueKeyPath:@"gridSwitcherSwipeUpNormalizedRubberbandedTranslationAtMinimumScale"];
  v302 = [v195 between:0.0 and:1.0];

  v196 = [MEMORY[0x277D431E8] rowWithTitle:@"Swipe Up Minimum Scale" valueKeyPath:@"gridSwitcherSwipeUpMinimumScale"];
  v301 = [v196 between:0.0 and:1.0];

  v197 = MEMORY[0x277D43210];
  v395[0] = v384;
  v395[1] = v329;
  v395[2] = v328;
  v395[3] = v327;
  v395[4] = v326;
  v395[5] = v325;
  v395[6] = v324;
  v395[7] = v323;
  v395[8] = v322;
  v395[9] = v306;
  v395[10] = v189;
  v395[11] = v305;
  v395[12] = v193;
  v395[13] = v303;
  v395[14] = v302;
  v395[15] = v301;
  v198 = [MEMORY[0x277CBEA60] arrayWithObjects:v395 count:16];
  v321 = [v197 sectionWithRows:v198 title:@"Grid Layout"];

  v199 = [MEMORY[0x277D431E8] rowWithTitle:@"Non Floating Single Row Scale" valueKeyPath:@"appExposeNonFloatingSingleRowScale"];
  v300 = [v199 precision:0];

  v200 = [MEMORY[0x277D431E8] rowWithTitle:@"Non Floating Gridified Scale" valueKeyPath:@"appExposeNonFloatingDoubleRowScale"];
  v299 = [v200 precision:0];

  v201 = [MEMORY[0x277D431E8] rowWithTitle:@"Floating Gridified Scale" valueKeyPath:@"appExposeFloatingDoubleRowScale"];
  v298 = [v201 precision:0];

  v202 = MEMORY[0x277D43210];
  v394[0] = v300;
  v394[1] = v299;
  v394[2] = v298;
  v203 = [MEMORY[0x277CBEA60] arrayWithObjects:v394 count:3];
  v320 = [v202 sectionWithRows:v203 title:@"App Expose"];

  v297 = [MEMORY[0x277D432A8] rowWithTitle:@"Use Asynchronous Rendering" valueKeyPath:@"useAsynchronousRendering"];
  v296 = [MEMORY[0x277D432A8] rowWithTitle:@"Round Corners During Swipe Up" valueKeyPath:@"shouldRoundCornersDuringSwipeUp"];
  v204 = [MEMORY[0x277D431E8] rowWithTitle:@"Asynchronous Rendering Disable Surface Cache Delay" valueKeyPath:@"asynchronousRenderingDisableSurfaceCacheDelayDuration"];
  v205 = [v204 precision:0];
  v295 = [v205 between:0.0 and:20.0];

  v206 = [MEMORY[0x277D431E8] rowWithTitle:@"Prevent Medusa Snapshots After Transition Duration" valueKeyPath:@"preventMedusaSnapshotsAfterTransitionDuration"];
  v207 = [v206 precision:0];
  v294 = [v207 between:0.0 and:20.0];

  v208 = MEMORY[0x277D43210];
  v393[0] = v297;
  v393[1] = v296;
  v393[2] = v295;
  v393[3] = v294;
  v209 = [MEMORY[0x277CBEA60] arrayWithObjects:v393 count:4];
  v319 = [v208 sectionWithRows:v209];

  v210 = [MEMORY[0x277D431E8] rowWithTitle:@"Deck Page Scale" valueKeyPath:@"deckSwitcherPageScale"];
  v211 = [v210 between:0.1 and:1.0];
  v293 = [v211 precision:2];

  v212 = [MEMORY[0x277D431E8] rowWithTitle:@"Deck Deceleration Rate" valueKeyPath:@"deckSwitcherDecelerationRate"];
  v213 = [v212 between:0.1 and:1.0];
  v292 = [v213 precision:3];

  v214 = [MEMORY[0x277D431E8] rowWithTitle:@"Translation" valueKeyPath:@"aExpLayoutCoeff"];
  v215 = [v214 between:-220.0 and:120.0];
  v291 = [v215 precision:2];

  v216 = [MEMORY[0x277D431E8] rowWithTitle:@"Curve Exponent" valueKeyPath:@"bExpLayoutCoeff"];
  v217 = [v216 between:0.0 and:30.0];
  v290 = [v217 precision:2];

  v218 = [MEMORY[0x277D431E8] rowWithTitle:@"Depth Padding" valueKeyPath:@"depthPadding"];
  v219 = [v218 between:0.001 and:0.2];
  v289 = [v219 precision:3];

  v220 = [MEMORY[0x277D431E8] rowWithTitle:@"Offscreen Card Scale for Fly In" valueKeyPath:@"offscreenCardScaleForFlyIn"];
  v221 = [v220 between:0.01 and:1.0];
  v288 = [v221 precision:2];

  v222 = MEMORY[0x277D43210];
  v392[0] = v293;
  v392[1] = v292;
  v392[2] = v291;
  v392[3] = v290;
  v392[4] = v289;
  v392[5] = v288;
  v223 = [MEMORY[0x277CBEA60] arrayWithObjects:v392 count:6];
  v284 = [v222 sectionWithRows:v223 title:@"Deck Switcher Layout"];

  v287 = [MEMORY[0x277D432A8] rowWithTitle:@"Enabled" valueKeyPath:@"useTitleOpacityPrototypeSettings"];
  v224 = [MEMORY[0x277D43290] rowWithTitle:@"Title Opacity A" valueKeyPath:@"titleOpacityACoeff"];
  v286 = [v224 minValue:0.0 maxValue:0.5];

  v225 = [MEMORY[0x277D431E8] rowWithTitle:@"Title Opacity A" valueKeyPath:@"titleOpacityACoeff"];
  v226 = [v225 between:0.0 and:0.1];

  v285 = v226;
  [v226 setPrecision:6];
  v227 = [MEMORY[0x277D43290] rowWithTitle:@"Title Opacity B" valueKeyPath:@"titleOpacityBCoeff"];
  v283 = [v227 minValue:0.0 maxValue:50.0];

  v228 = [MEMORY[0x277D43290] rowWithTitle:@"Title Opacity C" valueKeyPath:@"titleOpacityCCoeff"];
  v282 = [v228 minValue:0.0 maxValue:0.04];

  v281 = [MEMORY[0x277D431E8] rowWithTitle:@"Title Opacity C" valueKeyPath:@"titleOpacityCCoeff"];
  v229 = [MEMORY[0x277D43290] rowWithTitle:@"Title Opacity D" valueKeyPath:@"titleOpacityDCoeff"];
  v280 = [v229 minValue:20.0 maxValue:200.0];

  [v281 setPrecision:6];
  v230 = MEMORY[0x277D43210];
  v391[0] = v287;
  v391[1] = v286;
  v391[2] = v226;
  v391[3] = v283;
  v391[4] = v282;
  v391[5] = v281;
  v391[6] = v280;
  v231 = [MEMORY[0x277CBEA60] arrayWithObjects:v391 count:7];
  v274 = [v230 sectionWithRows:v231 title:@"Title Opacity"];

  v279 = [MEMORY[0x277D432A8] rowWithTitle:@"Redact Window Contents" valueKeyPath:@"shouldRedactWindowContents"];
  v278 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Modifier Debug Label" valueKeyPath:@"showModifierDebugLabel"];
  v277 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Main Modifier Timeline" valueKeyPath:@"showMainModifierTimeline"];
  v276 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Floating Modifier Timeline" valueKeyPath:@"showFloatingModifierTimeline"];
  v275 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Locked Modifier Timeline" valueKeyPath:@"showLockedModifierTimeline"];
  v232 = MEMORY[0x277D43210];
  v390[0] = v279;
  v390[1] = v278;
  v390[2] = v277;
  v390[3] = v276;
  v390[4] = v275;
  v233 = [MEMORY[0x277CBEA60] arrayWithObjects:v390 count:5];
  v273 = [v232 sectionWithRows:v233];

  v234 = [MEMORY[0x277D432A8] rowWithTitle:@"No Snapshots" valueKeyPath:@"simplicityOptionNoSnapshots"];
  v272 = [v234 valueValidator:&__block_literal_global_335];

  v235 = [MEMORY[0x277D432A8] rowWithTitle:@"No Crossfade" valueKeyPath:@"simplicityOptionNoCrossfade"];
  v271 = [v235 valueValidator:&__block_literal_global_541];

  v236 = [MEMORY[0x277D432A8] rowWithTitle:@"No Labels" valueKeyPath:@"simplicityOptionNoLabels"];
  v270 = [v236 valueValidator:&__block_literal_global_543];

  v237 = [MEMORY[0x277D432A8] rowWithTitle:@"No Icons" valueKeyPath:@"simplicityOptionNoIcons"];
  v269 = [v237 valueValidator:&__block_literal_global_545_0];

  v238 = [MEMORY[0x277D432A8] rowWithTitle:@"No Blurs" valueKeyPath:@"simplicityOptionNoBlurs"];
  v268 = [v238 valueValidator:&__block_literal_global_547];

  v239 = [MEMORY[0x277D432A8] rowWithTitle:@"No Shadows" valueKeyPath:@"simplicityOptionNoShadows"];
  v267 = [v239 valueValidator:&__block_literal_global_549];

  v240 = [MEMORY[0x277D432A8] rowWithTitle:@"No Control Center" valueKeyPath:@"simplicityOptionNoControlCenter"];
  v266 = [v240 valueValidator:&__block_literal_global_551];

  v241 = [MEMORY[0x277D432A8] rowWithTitle:@"No Snapshot Bkg" valueKeyPath:@"simplicityOptionNoSnapshotBkg"];
  v265 = [v241 valueValidator:&__block_literal_global_553];

  v242 = MEMORY[0x277D43210];
  v389[0] = v272;
  v389[1] = v271;
  v389[2] = v270;
  v389[3] = v269;
  v389[4] = v268;
  v389[5] = v267;
  v389[6] = v266;
  v389[7] = v265;
  v243 = [MEMORY[0x277CBEA60] arrayWithObjects:v389 count:8];
  v264 = [v242 sectionWithRows:v243 title:@"Simplicity"];

  v263 = [MEMORY[0x277D431B0] rowWithTitle:@"Clear Switcher Model" outletKeyPath:@"clearModelOutlet"];
  v262 = [MEMORY[0x277D431B0] rowWithTitle:@"Stash Switcher Model" outletKeyPath:@"stashModelOutlet"];
  v261 = [MEMORY[0x277D431B0] rowWithTitle:@"Load Stashed Switcher Model" outletKeyPath:@"loadModelOutlet"];
  v260 = [MEMORY[0x277D431B0] rowWithTitle:@"Add All Apps to Model" outletKeyPath:@"addAppsToModelOutlet"];
  v259 = [MEMORY[0x277D431B0] rowWithTitle:@"Add Apps used in PPT tests to Model" outletKeyPath:@"addPPTAppsToModelOutlet"];
  v244 = [MEMORY[0x277D432A8] rowWithTitle:@"Disable Model Updates for Demo" valueKeyPath:@"shouldDisableSwitcherModelUpdatesForDemo"];
  v245 = [v244 valueValidator:&__block_literal_global_551];

  v246 = MEMORY[0x277D43210];
  v388[0] = v263;
  v388[1] = v262;
  v388[2] = v261;
  v388[3] = v260;
  v388[4] = v259;
  v388[5] = v245;
  v247 = [MEMORY[0x277CBEA60] arrayWithObjects:v388 count:6];
  v248 = [v246 sectionWithRows:v247];

  v249 = MEMORY[0x277D431B0];
  v250 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v251 = [v249 rowWithTitle:@"Restore Defaults" action:v250];

  v252 = MEMORY[0x277D43210];
  v387 = v251;
  v253 = [MEMORY[0x277CBEA60] arrayWithObjects:&v387 count:1];
  v254 = [v252 sectionWithRows:v253];

  v255 = MEMORY[0x277D43210];
  v386[0] = v383;
  v386[1] = v382;
  v386[2] = v369;
  v386[3] = v381;
  v386[4] = v380;
  v386[5] = v379;
  v386[6] = v378;
  v386[7] = v377;
  v386[8] = v376;
  v386[9] = v375;
  v386[10] = v373;
  v386[11] = v371;
  v386[12] = v367;
  v386[13] = v364;
  v386[14] = v361;
  v386[15] = v358;
  v386[16] = v354;
  v386[17] = v351;
  v386[18] = v330;
  v386[19] = v319;
  v386[20] = v321;
  v386[21] = v320;
  v386[22] = v264;
  v386[23] = v284;
  v386[24] = v274;
  v386[25] = v273;
  v386[26] = v248;
  v386[27] = v254;
  v256 = [MEMORY[0x277CBEA60] arrayWithObjects:v386 count:28];
  v257 = [v255 moduleWithTitle:@"App Switcher" contents:v256];

  return v257;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v5 setSimplicityOptions:{objc_msgSend(v5, "simplicityOptions") & 0xFFFFFFFFFFFFFFFELL | objc_msgSend(v4, "BOOLValue")}];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 2;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFFDLL];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 4;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFFBLL];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 8;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFF7];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 16;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFEFLL];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 32;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFDFLL];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 64;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFFBFLL];

  return v4;
}

id __49__SBAppSwitcherSettings_settingsControllerModule__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 simplicityOptions];
  v7 = [v4 BOOLValue];
  v8 = 128;
  if (!v7)
  {
    v8 = 0;
  }

  [v5 setSimplicityOptions:v8 | v6 & 0xFFFFFFFFFFFFFF7FLL];

  return v4;
}

- (id)archiveValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"simplicityOptionNoSnapshots"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoCrossfade") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoLabels") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoIcons") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoBlurs") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoShadows") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoControlCenter") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"simplicityOptionNoSnapshotBkg"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBAppSwitcherSettings;
    v5 = [(PTSettings *)&v7 archiveValueForKey:keyCopy];
  }

  return v5;
}

- (void)setSimplicityOptions:(int64_t)options
{
  if (self->_simplicityOptions != options)
  {
    self->_simplicityOptions = options;
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoSnapshots:options & 1];
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoCrossfade:(options >> 1) & 1];
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoLabels:(options >> 2) & 1];
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoIcons:(options >> 3) & 1];
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoBlurs:(options >> 4) & 1];
    [(SBAppSwitcherSettings *)self setSimplicityOptionNoShadows:(options >> 5) & 1];

    [(SBAppSwitcherSettings *)self setSimplicityOptionNoControlCenter:(options >> 6) & 1];
  }
}

- (double)_spacingBetweenLeadingEdgeAndIcon
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass();
    result = 8.0;
    if (v2 == 2)
    {
      return result;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 8.0;
    if (userInterfaceIdiom == 1)
    {
      return result;
    }
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass())
    {
      v6 = SBFEffectiveDeviceClass();
      result = 14.0;
      if (v6 != 1)
      {
        return result;
      }
    }

    v7 = SBFEffectiveHomeButtonType();
    result = 14.0;
    if (v7 != 2)
    {
      return result;
    }

LABEL_13:
    v10 = SBHScreenTypeForCurrentDevice();
    result = 24.0;
    if ((v10 - 9) <= 0xF)
    {
      return dbl_21F8A8140[v10 - 9];
    }

    return result;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {

    return 14.0;
  }

  v9 = SBFEffectiveHomeButtonType();

  result = 14.0;
  if (v9 == 2)
  {
    goto LABEL_13;
  }

  return result;
}

@end