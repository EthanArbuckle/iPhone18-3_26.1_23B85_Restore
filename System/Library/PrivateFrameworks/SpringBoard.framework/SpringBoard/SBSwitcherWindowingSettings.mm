@interface SBSwitcherWindowingSettings
+ (id)settingsControllerModule;
- (BOOL)_shouldPreferDockHiddenForWindowScene:(id)scene;
- (BOOL)_shouldPreferStripHiddenForWindowScene:(id)scene interfaceOrientation:(int64_t)orientation;
- (CGSize)_nearestGridSizeForSize:(CGSize)size gridWidths:(id)widths gridHeights:(id)heights bounds:(CGRect)bounds;
- (CGSize)diffuseShadowOffset;
- (SBSwitcherWindowingSettings)initWithDefaultValues;
- (double)_statusBarHeight;
- (double)_stripWidthForContainerBounds:(CGRect)bounds screenEdgePadding:(double)padding stripStackDistance:(double)distance stripCardScale:(double)scale stripTiltAngle:(double)angle containerPerspective:(double)perspective;
- (id)_gridHeightsForSafeHeight:(double)height minimumHeight:(double)minimumHeight stageInterItemSpacing:(double)spacing;
- (id)_gridWidthsForSafeWidth:(double)width minimumWidth:(double)minimumWidth stageInterItemSpacing:(double)spacing;
- (id)windowingConfigurationForContainerBounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation floatingDockHeight:(double)height requiresFullScreen:(BOOL)screen prefersStripHidden:(BOOL)hidden prefersDockHidden:(BOOL)dockHidden isEmbeddedDisplay:(BOOL)display isFlexibleWindowingEnabled:(BOOL)self0;
- (id)windowingConfigurationForContainerBounds:(CGRect)bounds nativeContainerReferencePixelBounds:(CGRect)pixelBounds interfaceOrientation:(int64_t)orientation floatingDockHeight:(double)height statusBarHeight:(double)barHeight prototypingMinimumWindowWidth:(double)width prototypingMinimumWindowHeight:(double)windowHeight prototypingSlideOverEnterCenterRegionThreshold:(double)self0 prototypingSlideOverExitCenterRegionThreshold:(double)self1 requiresFullScreen:(BOOL)self2 prefersStripHidden:(BOOL)self3 prefersDockHidden:(BOOL)self4 isEmbeddedDisplay:(BOOL)self5 isFlexibleWindowingEnabled:(BOOL)self6;
- (id)windowingConfigurationForWindowScene:(id)scene interfaceOrientation:(int64_t)orientation requiresFullScreen:(BOOL)screen floatingDockHeight:(double)height;
- (void)_observeAppSwitcherDefaults;
- (void)_updateCachedAppSwitcherDefaults;
- (void)dealloc;
- (void)setDefaultValues;
@end

@implementation SBSwitcherWindowingSettings

- (double)_statusBarHeight
{
  if (_statusBarHeight_onceToken_83 != -1)
  {
    [SBSwitcherWindowingSettings _statusBarHeight];
  }

  return *&_statusBarHeight___statusBarHeight_82;
}

- (SBSwitcherWindowingSettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = SBSwitcherWindowingSettings;
  initWithDefaultValues = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(SBSwitcherWindowingSettings *)initWithDefaultValues _observeAppSwitcherDefaults];
  }

  return v3;
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_appSwitcherDefaultsObserver invalidate];
  v3.receiver = self;
  v3.super_class = SBSwitcherWindowingSettings;
  [(PTSettings *)&v3 dealloc];
}

- (id)windowingConfigurationForWindowScene:(id)scene interfaceOrientation:(int64_t)orientation requiresFullScreen:(BOOL)screen floatingDockHeight:(double)height
{
  screenCopy = screen;
  sceneCopy = scene;
  switcherController = [sceneCopy switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v56 = [(SBSwitcherWindowingSettings *)self _shouldPreferStripHiddenForWindowScene:sceneCopy interfaceOrientation:orientation];
    v12 = [(SBSwitcherWindowingSettings *)self _shouldPreferDockHiddenForWindowScene:sceneCopy];
  }

  else
  {
    v56 = 0;
    v12 = 0;
  }

  screen = [sceneCopy screen];
  displayConfiguration = [screen displayConfiguration];
  [displayConfiguration bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v53 = *(MEMORY[0x277CBF348] + 8);
  v54 = *MEMORY[0x277CBF348];
  if (isChamoisOrFlexibleWindowing && ![sceneCopy isMainDisplayWindowScene])
  {
    v62.origin.x = v16;
    v62.origin.y = v18;
    v62.size.width = v20;
    v62.size.height = v22;
    Width = CGRectGetWidth(v62);
    v63.origin.x = v16;
    v63.origin.y = v18;
    v63.size.width = v20;
    v63.size.height = v22;
    Height = CGRectGetHeight(v63);
    if (Width >= Height)
    {
      v28 = Width;
    }

    else
    {
      v28 = Height;
    }

    v64.origin.x = v16;
    v64.origin.y = v18;
    v64.size.width = v20;
    v64.size.height = v22;
    v29 = CGRectGetWidth(v64);
    v65.origin.x = v16;
    v65.origin.y = v18;
    v65.size.width = v20;
    v65.size.height = v22;
    v30 = CGRectGetHeight(v65);
    if (v29 < v30)
    {
      v30 = v29;
    }

    v55 = v30;
    [(SBSwitcherWindowingSettings *)self _statusBarHeight];
    v52 = v31;
    v20 = v28;
  }

  else
  {
    if ((orientation - 1) >= 2)
    {
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      v23 = CGRectGetHeight(v60);
      v61.origin.x = v16;
      v61.origin.y = v18;
      v61.size.width = v20;
      v61.size.height = v22;
      v22 = CGRectGetWidth(v61);
      v20 = v23;
    }

    [(SBSwitcherWindowingSettings *)self _statusBarHeight];
    v52 = v24;
    v55 = v22;
    if (!isChamoisOrFlexibleWindowing)
    {
      v25 = 1;
      goto LABEL_17;
    }
  }

  v25 = [sceneCopy isExternalDisplayWindowScene] ^ 1;
LABEL_17:
  switcherController2 = [sceneCopy switcherController];
  windowManagementContext2 = [switcherController2 windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext2 isFlexibleWindowingEnabled];

  [screen nativeBounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(SBSwitcherWindowingSettings *)self minimumWindowWidth];
  v44 = v43;
  [(SBSwitcherWindowingSettings *)self minimumWindowHeight];
  v46 = v45;
  [(SBSwitcherWindowingSettings *)self slideOverEnterCenterRegionThreshold];
  v48 = v47;
  [(SBSwitcherWindowingSettings *)self slideOverExitCenterRegionThreshold];
  v50 = [(SBSwitcherWindowingSettings *)self windowingConfigurationForContainerBounds:orientation nativeContainerReferencePixelBounds:screenCopy interfaceOrientation:v56 floatingDockHeight:v12 statusBarHeight:v25 prototypingMinimumWindowWidth:isFlexibleWindowingEnabled prototypingMinimumWindowHeight:v54 prototypingSlideOverEnterCenterRegionThreshold:v53 prototypingSlideOverExitCenterRegionThreshold:v20 requiresFullScreen:v55 prefersStripHidden:v36 prefersDockHidden:v38 isEmbeddedDisplay:v40 isFlexibleWindowingEnabled:v42, *&height, v52, v44, v46, v48, v49];

  return v50;
}

- (id)windowingConfigurationForContainerBounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation floatingDockHeight:(double)height requiresFullScreen:(BOOL)screen prefersStripHidden:(BOOL)hidden prefersDockHidden:(BOOL)dockHidden isEmbeddedDisplay:(BOOL)display isFlexibleWindowingEnabled:(BOOL)self0
{
  enabledCopy = enabled;
  displayCopy = display;
  dockHiddenCopy = dockHidden;
  hiddenCopy = hidden;
  screenCopy = screen;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBSwitcherWindowingSettings *)self _statusBarHeight];
  v22 = v21;
  [(SBSwitcherWindowingSettings *)self minimumWindowWidth];
  v24 = v23;
  [(SBSwitcherWindowingSettings *)self minimumWindowHeight];
  v26 = v25;
  [(SBSwitcherWindowingSettings *)self slideOverEnterCenterRegionThreshold];
  v28 = v27;
  [(SBSwitcherWindowingSettings *)self slideOverExitCenterRegionThreshold];
  return [(SBSwitcherWindowingSettings *)self windowingConfigurationForContainerBounds:orientation nativeContainerReferencePixelBounds:screenCopy interfaceOrientation:hiddenCopy floatingDockHeight:dockHiddenCopy statusBarHeight:displayCopy prototypingMinimumWindowWidth:enabledCopy prototypingMinimumWindowHeight:x prototypingSlideOverEnterCenterRegionThreshold:y prototypingSlideOverExitCenterRegionThreshold:width requiresFullScreen:height prefersStripHidden:*MEMORY[0x277CBF3A0] prefersDockHidden:*(MEMORY[0x277CBF3A0] + 8) isEmbeddedDisplay:*(MEMORY[0x277CBF3A0] + 16) isFlexibleWindowingEnabled:*(MEMORY[0x277CBF3A0] + 24), *&height, v22, v24, v26, v28, v29];
}

- (id)windowingConfigurationForContainerBounds:(CGRect)bounds nativeContainerReferencePixelBounds:(CGRect)pixelBounds interfaceOrientation:(int64_t)orientation floatingDockHeight:(double)height statusBarHeight:(double)barHeight prototypingMinimumWindowWidth:(double)width prototypingMinimumWindowHeight:(double)windowHeight prototypingSlideOverEnterCenterRegionThreshold:(double)self0 prototypingSlideOverExitCenterRegionThreshold:(double)self1 requiresFullScreen:(BOOL)self2 prefersStripHidden:(BOOL)self3 prefersDockHidden:(BOOL)self4 isEmbeddedDisplay:(BOOL)self5 isFlexibleWindowingEnabled:(BOOL)self6
{
  enabledCopy = enabled;
  displayCopy = display;
  dockHiddenCopy = dockHidden;
  hiddenCopy = hidden;
  screenCopy = screen;
  width = pixelBounds.size.width;
  height = pixelBounds.size.height;
  rect2 = pixelBounds.origin.y;
  x = pixelBounds.origin.x;
  v20 = bounds.size.height;
  v21 = bounds.size.width;
  y = bounds.origin.y;
  v23 = bounds.origin.x;
  v25 = (orientation - 1) < 2;
  v26 = (self->_cachedWindowingConfiguration_interfaceOrientation - 3) < 0xFFFFFFFFFFFFFFFELL;
  v27 = SBFIsChamoisStripDisabledWhenHiddenAvailable();
  v28 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v29 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v30 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v31 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v32 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v33 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v34 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v35 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v36 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v37 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v38 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v39 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  if (!self->_cachedWindowingConfiguration)
  {
    v41 = y;
    v44 = v23;
    goto LABEL_22;
  }

  v148.size.height = v20;
  v40 = v23;
  v148.origin.x = v23;
  v41 = y;
  v148.origin.y = y;
  v42 = v21;
  v148.size.width = v21;
  v43 = v148.size.height;
  if (!CGRectEqualToRect(self->_cachedWindowingConfiguration_containerBounds, v148))
  {
    v44 = v40;
    goto LABEL_19;
  }

  v149.origin.x = x;
  v149.origin.y = rect2;
  v149.size.width = width;
  v149.size.height = height;
  v44 = v40;
  if ((CGRectEqualToRect(self->_cachedWindowingConfiguration_nativeContainerReferencePixelBounds, v149) & (v25 ^ v26)) != 1)
  {
LABEL_19:
    v20 = v43;
    goto LABEL_20;
  }

  v20 = v43;
  if (!BSFloatEqualToFloat())
  {
LABEL_20:
    v21 = v42;
LABEL_21:
    v39 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v38 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v37 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v36 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v35 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v34 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v33 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v32 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v31 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v29 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v30 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v28 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    goto LABEL_22;
  }

  v21 = v42;
  if (!BSFloatEqualToFloat() || !BSFloatEqualToFloat() || !BSFloatEqualToFloat() || !BSFloatEqualToFloat() || !BSFloatEqualToFloat())
  {
    goto LABEL_21;
  }

  v34 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v29 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v30 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  v28 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  if (self->_cachedWindowingConfiguration_requiresFullScreen == screenCopy)
  {
    v35 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v39 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v38 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v37 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v36 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v33 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v32 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v31 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    if (self->_cachedWindowingConfiguration_prefersStripHidden == hiddenCopy && self->_cachedWindowingConfiguration_prefersDockHidden == dockHiddenCopy && self->_cachedWindowingConfiguration_isEmbeddedDisplay == displayCopy && self->_cachedWindowingConfiguration_stripDisabledWhenHidden == v27 && self->_cachedWindowingConfiguration_isFlexibleWindowingEnabled == enabledCopy)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v39 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v38 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v37 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v36 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v35 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v33 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v32 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
    v31 = &OBJC_IVAR___SBApplicationSceneViewController__applicationSceneStatusBarDelegate;
  }

LABEL_22:
  self->_cachedWindowingConfiguration_containerBounds.origin.x = v44;
  self->_cachedWindowingConfiguration_containerBounds.origin.y = v41;
  self->_cachedWindowingConfiguration_containerBounds.size.width = v21;
  self->_cachedWindowingConfiguration_containerBounds.size.height = v20;
  self->_cachedWindowingConfiguration_nativeContainerReferencePixelBounds.origin.x = x;
  self->_cachedWindowingConfiguration_nativeContainerReferencePixelBounds.origin.y = rect2;
  self->_cachedWindowingConfiguration_nativeContainerReferencePixelBounds.size.width = width;
  self->_cachedWindowingConfiguration_nativeContainerReferencePixelBounds.size.height = height;
  self->_cachedWindowingConfiguration_interfaceOrientation = orientation;
  *(&self->super.super.isa + v28[347]) = height;
  *(&self->super.super.isa + v29[348]) = barHeight;
  *(&self->super.super.isa + v30[349]) = width;
  *(&self->super.super.isa + v31[350]) = windowHeight;
  *(&self->super.super.isa + v32[351]) = threshold;
  *(&self->super.super.isa + v33[352]) = regionThreshold;
  *(&self->super.super.isa + v34[353]) = screenCopy;
  *(&self->super.super.isa + v35[354]) = hiddenCopy;
  *(&self->super.super.isa + v36[355]) = dockHiddenCopy;
  *(&self->super.super.isa + v37[356]) = displayCopy;
  *(&self->super.super.isa + v38[357]) = v27;
  *(&self->super.super.isa + v39[358]) = enabledCopy;
  v136 = dbl_21F8A85F0[v21 > 1681.0];
  v45 = fmax(barHeight, 24.0);
  v46 = 0.0;
  if (!enabledCopy)
  {
    v46 = v45;
  }

  v146 = v46;
  if (enabledCopy)
  {
    v47 = 18.0;
  }

  else
  {
    v47 = v45;
  }

  if (enabledCopy)
  {
    v48 = 24.0;
  }

  else
  {
    v48 = v45;
  }

  if (!enabledCopy)
  {
    if (displayCopy)
    {
      embeddedDisplayChamoisSnapPaddingSettings = [(SBSwitcherWindowingSettings *)self embeddedDisplayChamoisSnapPaddingSettings];
      goto LABEL_35;
    }

    externalDisplayChamoisSnapPaddingSettings = [(SBSwitcherWindowingSettings *)self externalDisplayChamoisSnapPaddingSettings];
LABEL_38:
    v50 = externalDisplayChamoisSnapPaddingSettings;
    if (v20 >= [(SBSwitcherWindowingSettings *)self externalDisplayHighResVerticalResolution])
    {
      numberOfRowsWhileInAppOnExternalDisplayHighRes = [(SBSwitcherWindowingSettings *)self numberOfRowsWhileInAppOnExternalDisplayHighRes];
    }

    else
    {
      numberOfRowsWhileInAppOnExternalDisplayHighRes = [(SBSwitcherWindowingSettings *)self numberOfRowsWhileInAppOnExternalDisplay];
    }

    goto LABEL_41;
  }

  if (!displayCopy)
  {
    externalDisplayChamoisSnapPaddingSettings = [(SBSwitcherWindowingSettings *)self externalDisplayFlexibleWindowingSnapPaddingSettings];
    goto LABEL_38;
  }

  embeddedDisplayChamoisSnapPaddingSettings = [(SBSwitcherWindowingSettings *)self embeddedDisplayFlexibleWindowingSnapPaddingSettings];
LABEL_35:
  v50 = embeddedDisplayChamoisSnapPaddingSettings;
  numberOfRowsWhileInAppOnExternalDisplayHighRes = [(SBSwitcherWindowingSettings *)self numberOfRowsWhileInAppOnEmbeddedDisplay];
LABEL_41:
  if (numberOfRowsWhileInAppOnExternalDisplayHighRes <= 4)
  {
    v53 = 32.0;
  }

  else
  {
    v53 = 64.0;
  }

  if (numberOfRowsWhileInAppOnExternalDisplayHighRes <= 4)
  {
    v54 = 44.0;
  }

  else
  {
    v54 = 64.0;
  }

  v126 = v53;
  v127 = v54;
  v129 = numberOfRowsWhileInAppOnExternalDisplayHighRes;
  [(SBSwitcherWindowingSettings *)self _stripCardScaleForContainerBounds:numberOfRowsWhileInAppOnExternalDisplayHighRes screenEdgePadding:v44 stripVerticalEdgeSpacing:v41 stripInterItemSpacing:v21 floatingDockHeight:v20 numberOfRows:v47];
  if ((hiddenCopy & v27) != 0)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 1.13446401;
  }

  v128 = v55;
  v125 = v56;
  [(SBSwitcherWindowingSettings *)self _stripWidthForContainerBounds:v44 screenEdgePadding:v41 stripStackDistance:v21 stripCardScale:v20 stripTiltAngle:v48 containerPerspective:60.0, *&v136];
  v144 = v57;
  if (displayCopy)
  {
    v135 = v21 - v57;
    v119 = -v146;
    v58 = v20 - height + v146 * -2.0;
    v124 = v58;
  }

  else
  {
    v135 = *MEMORY[0x277CBF3A8];
    v124 = *(MEMORY[0x277CBF3A8] + 8);
    v119 = -v146;
    v58 = v20 - height + v146 * -2.0;
  }

  v59 = 320.0;
  if (enabledCopy)
  {
    v59 = 375.0;
  }

  if (v21 <= 1920.0)
  {
    v60 = v59;
  }

  else
  {
    v60 = 414.0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v132 = v50;
  v130 = v48;
  v131 = v47;
  v122 = v60;
  if (hiddenCopy && dockHiddenCopy)
  {
    v62 = [(SBSwitcherWindowingSettings *)self _gridWidthsForSafeWidth:v21 minimumWidth:v60 stageInterItemSpacing:10.0];
    [array addObjectsFromArray:v62];
    v63 = v135;
  }

  else
  {
    v63 = v135;
    if (hiddenCopy)
    {
      v62 = [(SBSwitcherWindowingSettings *)self _gridWidthsForSafeWidth:v21 + v119 * 2.0 minimumWidth:v60 stageInterItemSpacing:10.0];
      [array addObjectsFromArray:v62];
    }

    else
    {
      if (displayCopy)
      {
        v64 = [(SBSwitcherWindowingSettings *)self _gridWidthsForSafeWidth:v21 + v119 * 2.0 minimumWidth:v60 stageInterItemSpacing:10.0];
        [array addObjectsFromArray:v64];
      }

      else
      {
        v65 = (v21 - v135) * 0.5;
        if (v144 < v65)
        {
          v65 = v144;
        }

        v66 = [(SBSwitcherWindowingSettings *)self _gridWidthsForSafeWidth:v21 - v65 - v146 minimumWidth:v60 stageInterItemSpacing:10.0];
        [array addObjectsFromArray:v66];

        v64 = [MEMORY[0x277CCABB0] numberWithDouble:v21 + v119 * 2.0];
        [array addObject:v64];
      }

      if (v135 == 0.0)
      {
        goto LABEL_81;
      }

      v67 = [array count];
      if (v67)
      {
        v68 = v67;
        v69 = 0;
        v70 = -1;
        v71 = 1.79769313e308;
        do
        {
          v72 = [array objectAtIndex:v69];
          [v72 doubleValue];
          v74 = v73;

          v75 = vabdd_f64(v74, v135);
          if (v75 < v71)
          {
            v70 = v69;
            v71 = v75;
          }

          ++v69;
        }

        while (v68 != v69);
        v76 = v70 != -1 && v71 < 44.0;
        v63 = v135;
        if (v76)
        {
          [array removeObjectAtIndex:v70];
        }
      }

      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
      [array addObject:v62];
    }
  }

LABEL_81:
  v134 = barHeight + barHeight;
  v77 = round(v58);
  [array sortUsingSelector:sel_compare_];
  array2 = [MEMORY[0x277CBEB18] array];
  v121 = v77;
  if (hiddenCopy && dockHiddenCopy)
  {
    v79 = [(SBSwitcherWindowingSettings *)self _gridHeightsForSafeHeight:v20 minimumHeight:480.0 stageInterItemSpacing:10.0];
    [array2 addObjectsFromArray:v79];
    v80 = dockHiddenCopy;
  }

  else
  {
    v80 = dockHiddenCopy;
    if (dockHiddenCopy)
    {
      v79 = [(SBSwitcherWindowingSettings *)self _gridHeightsForSafeHeight:v20 + v119 * 2.0 minimumHeight:480.0 stageInterItemSpacing:10.0];
      [array2 addObjectsFromArray:v79];
    }

    else
    {
      v81 = [(SBSwitcherWindowingSettings *)self _gridHeightsForSafeHeight:v77 minimumHeight:480.0 stageInterItemSpacing:10.0];
      [array2 addObjectsFromArray:v81];

      v79 = [MEMORY[0x277CCABB0] numberWithDouble:v20 + v119 * 2.0];
      [array2 addObject:v79];
    }
  }

  [array2 sortUsingSelector:sel_compare_];
  v82 = [array2 count];
  if (v80)
  {
    v83 = -1;
  }

  else
  {
    v84 = [array2 count];
    v83 = -2;
    if (v84 == 1)
    {
      v83 = -1;
    }
  }

  v85 = v132;
  v86 = [array2 objectAtIndex:v83 + v82];
  [v86 doubleValue];
  v88 = v87;

  v89 = v21 + v144 * -2.0;
  v90 = 1590.0;
  v91 = fmax(v21 * 0.65, 1590.0);
  if (v89 >= v91)
  {
    v89 = v91;
  }

  if (v63 >= v89)
  {
    v89 = v63;
  }

  v92 = v146 + v146;
  if (v80)
  {
    v92 = 0.0;
  }

  v93 = v21 - v92;
  if (hiddenCopy && displayCopy)
  {
    v94 = v93;
  }

  else
  {
    v94 = v89;
  }

  if (!BSFloatGreaterThanFloat())
  {
    v90 = v94;
  }

  [(SBSwitcherWindowingSettings *)self _nearestGridSizeForSize:array gridWidths:array2 gridHeights:v90 bounds:v88, v44, v41, v21, v20];
  v97 = 44.0;
  if (enabledCopy)
  {
    v97 = 0.0;
    v98 = v21;
  }

  else
  {
    v98 = v95;
  }

  if (enabledCopy)
  {
    v99 = v20;
  }

  else
  {
    v99 = v96;
  }

  if (enabledCopy && !displayCopy)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v98 = v101;
    v99 = v102;

    v97 = 0.0;
  }

  v133 = v97;
  [(SBSwitcherWindowingSettings *)self _nearestGridSizeForSize:array gridWidths:array2 gridHeights:v90 bounds:v20, v44, v41, v21, v20];
  v120 = v103;
  v104 = BSFloatGreaterThanFloat();
  widthCopy = v122;
  if (v104)
  {
    widthCopy = width;
  }

  v123 = widthCopy;
  if (BSFloatGreaterThanFloat())
  {
    windowHeightCopy = windowHeight;
  }

  else
  {
    windowHeightCopy = 486.0;
  }

  v107 = BSFloatGreaterThanFloat();
  thresholdCopy = 96.0;
  if (v107)
  {
    thresholdCopy = threshold;
  }

  v142 = thresholdCopy;
  v109 = BSFloatGreaterThanFloat();
  regionThresholdCopy = 192.0;
  if (v109)
  {
    regionThresholdCopy = regionThreshold;
  }

  v141 = regionThresholdCopy;
  v111 = objc_opt_new();
  [(SBSwitcherWindowingConfiguration *)v111 setSettings:self];
  [(SBSwitcherWindowingConfiguration *)v111 setContainerBounds:v44, v41, v21, v20];
  [(SBSwitcherWindowingConfiguration *)v111 setRequiresFullScreen:screenCopy];
  [(SBSwitcherWindowingConfiguration *)v111 setDefaultWindowSize:v98, v99];
  [(SBSwitcherWindowingConfiguration *)v111 setMinimumDefaultWindowSize:v135, v124];
  [(SBSwitcherWindowingConfiguration *)v111 setMaximumWindowHeightWithDock:v121];
  [(SBSwitcherWindowingConfiguration *)v111 setMaximumWindowWidthForOverlapping:v120];
  [(SBSwitcherWindowingConfiguration *)v111 setMinimumWindowWidth:v123];
  [(SBSwitcherWindowingConfiguration *)v111 setMinimumWindowHeight:windowHeightCopy];
  [(SBSwitcherWindowingConfiguration *)v111 setMinimumOnscreenWindowMargin:v134];
  [(SBSwitcherWindowingConfiguration *)v111 setSplitViewHandleNubWidth:10.0];
  [(SBSwitcherWindowingConfiguration *)v111 setSplitViewHandleDimmingWidth:144.0];
  [(SBSwitcherWindowingConfiguration *)v111 setDockTopMargin:8.0];
  [(SBSwitcherWindowingConfiguration *)v111 setFloatingDockHeightWithTopAndBottomPadding:height + 8.0];
  [(SBSwitcherWindowingConfiguration *)v111 setStatusBarHeight:barHeight];
  [(SBSwitcherWindowingConfiguration *)v111 setContainerPerspective:v136];
  [(SBSwitcherWindowingConfiguration *)v111 setScreenEdgePadding:v146];
  [(SBSwitcherWindowingConfiguration *)v111 setSnapPaddingSettings:v85];
  [(SBSwitcherWindowingConfiguration *)v111 setStripWidth:v144];
  [(SBSwitcherWindowingConfiguration *)v111 setStripVerticalEdgeSpacing:v126];
  [(SBSwitcherWindowingConfiguration *)v111 setStripInterItemSpacing:v127];
  [(SBSwitcherWindowingConfiguration *)v111 setStripTiltAngle:v125];
  v112 = 40.0;
  if (v21 <= 1681.0)
  {
    v112 = 30.0;
  }

  [(SBSwitcherWindowingConfiguration *)v111 setStripIconLength:v112];
  [(SBSwitcherWindowingConfiguration *)v111 setStripOffscreenPadding:v130];
  [(SBSwitcherWindowingConfiguration *)v111 setStripScreenEdgePadding:v131];
  [(SBSwitcherWindowingConfiguration *)v111 setStripStackDistance:60.0];
  [(SBSwitcherWindowingConfiguration *)v111 setStripCardScale:v128];
  [(SBSwitcherWindowingConfiguration *)v111 setStripCornerRadii:10.0];
  [(SBSwitcherWindowingConfiguration *)v111 setNonSolariumStageCornerRadii:32.0];
  [(SBSwitcherWindowingConfiguration *)v111 setSolariumStageCornerRadii:32.0];
  [(SBSwitcherWindowingConfiguration *)v111 setStageInterItemSpacing:10.0];
  [(SBSwitcherWindowingConfiguration *)v111 setStageOccludedAppScale:-12.0 / v20 + 1.0];
  [(SBSwitcherWindowingConfiguration *)v111 setStageStatusBarClearingAppScale:1.0 - v134 / v20];
  [(SBSwitcherWindowingConfiguration *)v111 setStageOcclusionDodgingPeekLength:v133];
  [(SBSwitcherWindowingConfiguration *)v111 setStageOcclusionDodgingPeekScale:0.9];
  [(SBSwitcherWindowingConfiguration *)v111 setNumberOfRowsWhileInApp:v129];
  [(SBSwitcherWindowingConfiguration *)v111 setMaximumNumberOfVisibleIconsInStrip:4];
  [(SBSwitcherWindowingConfiguration *)v111 setIsFlexibleWindowingEnabled:enabledCopy];
  [(SBSwitcherWindowingConfiguration *)v111 setPrefersStripHidden:hiddenCopy];
  [(SBSwitcherWindowingConfiguration *)v111 setPrefersDockHidden:v80];
  [(SBSwitcherWindowingConfiguration *)v111 setUsesStripAreaForOverlapping:displayCopy];
  [(SBSwitcherWindowingConfiguration *)v111 setSlideOverBorderWidth:12.0];
  [(SBSwitcherWindowingConfiguration *)v111 setSlideOverEnterCenterRegionThreshold:v142];
  [(SBSwitcherWindowingConfiguration *)v111 setSlideOverExitCenterRegionThreshold:v141];
  [(SBSwitcherWindowingConfiguration *)v111 setSlideOverThresholdToForegroundUnstashingApp:100.0];
  [(SBSwitcherWindowingConfiguration *)v111 setGridWidths:array];
  [(SBSwitcherWindowingConfiguration *)v111 setGridHeights:array2];
  v113 = round(v20 * 0.0625);
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherHorizontalEdgeSpacing:v113];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherVerticalEdgeSpacing:round(v20 * 0.10546875)];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherHorizontalInterItemSpacing:v113];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherVerticalInterItemSpacing:round(v20 * 0.0859375)];
  if (v21 > 1920.0)
  {
    [(SBSwitcherWindowingConfiguration *)v111 switcherHorizontalEdgeSpacing];
    [(SBSwitcherWindowingConfiguration *)v111 setSwitcherHorizontalEdgeSpacing:round(v114 * 1.5)];
    [(SBSwitcherWindowingConfiguration *)v111 switcherVerticalEdgeSpacing];
    [(SBSwitcherWindowingConfiguration *)v111 setSwitcherVerticalEdgeSpacing:round(v115 * 1.5)];
  }

  [(SBSwitcherWindowingSettings *)self switcherHeightForIconAndLabelsUnderEachPile];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherHeightForIconAndLabelsUnderEachPile:?];
  [(SBSwitcherWindowingSettings *)self switcherPileCardMinimumPeekAmount];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherPileCardMinimumPeekAmount:?];
  [(SBSwitcherWindowingSettings *)self switcherPileCompactingFactor];
  [(SBSwitcherWindowingConfiguration *)v111 setSwitcherPileCompactingFactor:?];
  cachedWindowingConfiguration = self->_cachedWindowingConfiguration;
  self->_cachedWindowingConfiguration = v111;

LABEL_124:
  v117 = self->_cachedWindowingConfiguration;

  return v117;
}

- (id)_gridWidthsForSafeWidth:(double)width minimumWidth:(double)minimumWidth stageInterItemSpacing:(double)spacing
{
  v8 = objc_opt_new();
  v9 = vcvtmd_s64_f64((width + spacing) / (minimumWidth + spacing));
  v10 = width - spacing;
  if (v9 < 1)
  {
LABEL_11:
    v25 = floor((minimumWidth + minimumWidth) * 0.5);
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:(v25 + v25) * 0.5];
    [v8 addObject:v26];

    v27 = floor((v10 - minimumWidth + v10 - minimumWidth) * 0.5);
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:(v27 + v27) * 0.5];
    [v8 addObject:v28];

    goto LABEL_12;
  }

  v11 = 0;
  v12 = floor((v10 * 0.5 + v10 * 0.5) * 0.5);
  v13 = (v12 + v12) * 0.5;
  while (1)
  {
    v14 = v9 + v11;
    if (v9 + v11 == 2)
    {
      v20 = MEMORY[0x277CCABB0];
      v22 = v13;
      goto LABEL_8;
    }

    if (v14 == 1)
    {
      break;
    }

    v15 = floor((width - (v9 + v11 - 1) * spacing) / v14);
    v16 = floor((v15 + v15) * 0.5);
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:(v16 + v16) * 0.5];
    [v8 addObject:v17];

    v18 = floor((v10 - v15 + v10 - v15) * 0.5);
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:(v18 + v18) * 0.5];
    [v8 addObject:v19];

    if (v11)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x277CCABB0];
    v21 = floor((width - v15 * 0.5 + width - v15 * 0.5) * 0.5);
    v22 = (v21 + v21) * 0.5;
LABEL_8:
    v23 = [v20 numberWithDouble:v22];
    [v8 addObject:v23];

LABEL_9:
    --v11;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  [v8 addObject:v24];

  if (v9 < 3)
  {
    goto LABEL_11;
  }

LABEL_12:
  [v8 sortUsingSelector:sel_compare_];
  v29 = objc_opt_new();
  if ([v8 count] >= 3)
  {
    v30 = 0;
    v31 = minimumWidth * 0.75;
    do
    {
      v32 = [v8 objectAtIndexedSubscript:v30];
      [v32 doubleValue];
      v34 = v33;

      v35 = [v8 objectAtIndexedSubscript:++v30];
      [v35 doubleValue];
      v37 = v36;

      v38 = v37 - v34;
      if (v37 - v34 > v31)
      {
        v39 = floor(((v34 + v37) * 0.5 + (v34 + v37) * 0.5) * 0.5);
        v40 = [MEMORY[0x277CCABB0] numberWithDouble:(v39 + v39) * 0.5];
        [v29 addObject:v40];
      }
    }

    while (v30 < [v8 count] - 2);
  }

  [v8 addObjectsFromArray:v29];
  [v8 sortUsingSelector:sel_compare_];

  return v8;
}

- (id)_gridHeightsForSafeHeight:(double)height minimumHeight:(double)minimumHeight stageInterItemSpacing:(double)spacing
{
  array = [MEMORY[0x277CBEB18] array];
  if (height >= minimumHeight)
  {
    v9 = (height + (height - spacing) * -0.5) * 0.25;
    do
    {
      v10 = floor((height + height) * 0.5);
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:(v10 + v10) * 0.5];
      [array addObject:v11];

      height = height - v9;
    }

    while (height >= minimumHeight);
  }

  return array;
}

- (CGSize)_nearestGridSizeForSize:(CGSize)size gridWidths:(id)widths gridHeights:(id)heights bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v9 = size.height;
  v10 = size.width;
  widthsCopy = widths;
  heightsCopy = heights;
  v13 = MEMORY[0x277CBF3A8];
  v14 = *MEMORY[0x277CBF3A8];
  if ([widthsCopy count])
  {
    v15 = 0;
    v16 = 1.79769313e308;
    do
    {
      v17 = [widthsCopy objectAtIndex:v15];
      [v17 doubleValue];
      v19 = v18;

      v20 = vabdd_f64(v19, v10);
      if (v20 < v16)
      {
        v16 = v20;
        v14 = v19;
      }

      ++v15;
    }

    while (v15 < [widthsCopy count]);
  }

  v21 = *(v13 + 8);
  if ([heightsCopy count])
  {
    v22 = 0;
    v23 = 1.79769313e308;
    do
    {
      v24 = [heightsCopy objectAtIndex:v22];
      [v24 doubleValue];
      v26 = v25;

      v27 = vabdd_f64(v26, v9);
      if (v27 < v23)
      {
        v23 = v27;
        v21 = v26;
      }

      ++v22;
    }

    while (v22 < [heightsCopy count]);
  }

  lastObject = [widthsCopy lastObject];
  [lastObject doubleValue];
  if (BSFloatEqualToFloat())
  {
    lastObject2 = [heightsCopy lastObject];
    [lastObject2 doubleValue];
    v30 = BSFloatEqualToFloat();

    if (v30)
    {
      v21 = height;
      v14 = width;
    }
  }

  else
  {
  }

  v31 = v14;
  v32 = v21;
  result.height = v32;
  result.width = v31;
  return result;
}

- (double)_stripWidthForContainerBounds:(CGRect)bounds screenEdgePadding:(double)padding stripStackDistance:(double)distance stripCardScale:(double)scale stripTiltAngle:(double)angle containerPerspective:(double)perspective
{
  v10 = 0;
  v11 = bounds.size.width * 0.5;
  v13 = MEMORY[0x277CD9DE8];
  v14 = 0.0;
  while (v14 == 0.0 || BSFloatGreaterThanFloat() && v10 <= 9)
  {
    [(SBSwitcherWindowingSettings *)self numberOfVisibleItemsPerGroup];
    memset(&v29, 0, sizeof(v29));
    CATransform3DMakeScale(&v29, scale, scale, 1.0);
    memset(&v28, 0, sizeof(v28));
    CATransform3DMakeRotation(&v28, angle, 0.0, 1.0, 0.0);
    memset(&v27, 0, sizeof(v27));
    a = v29;
    b = v28;
    CATransform3DConcat(&v27, &a, &b);
    a = v27;
    CAPointApplyTransform();
    v16 = *(v13 + 48);
    *&a.m21 = *(v13 + 32);
    *&a.m23 = v16;
    *&a.m31 = *(v13 + 64);
    a.m33 = *(v13 + 80);
    v17 = *(v13 + 16);
    *&a.m11 = *v13;
    *&a.m13 = v17;
    v18 = *(v13 + 112);
    *&a.m41 = *(v13 + 96);
    *&a.m43 = v18;
    a.m34 = -1.0 / perspective;
    CAPointApplyTransform();
    v21 = round(v11 + v19 / v20 + padding);
    v22 = floor((v21 + v21) * 0.5);
    v14 = (v22 + v22) * 0.5;
    ++v10;
  }

  return v14;
}

uint64_t __47__SBSwitcherWindowingSettings__statusBarHeight__block_invoke()
{
  result = [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  _statusBarHeight___statusBarHeight_82 = v1;
  return result;
}

- (BOOL)_shouldPreferStripHiddenForWindowScene:(id)scene interfaceOrientation:(int64_t)orientation
{
  sceneCopy = scene;
  switcherController = [sceneCopy switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];

  if (isAutomaticStageCreationEnabled)
  {
    isMainDisplayWindowScene = [sceneCopy isMainDisplayWindowScene];
    v10 = &OBJC_IVAR___SBSwitcherWindowingSettings__cachedChamoisHideStripsExternal;
    if (isMainDisplayWindowScene)
    {
      v10 = &OBJC_IVAR___SBSwitcherWindowingSettings__cachedChamoisHideStrips;
    }

    v11 = *(&self->super.super.isa + *v10);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_shouldPreferDockHiddenForWindowScene:(id)scene
{
  isMainDisplayWindowScene = [scene isMainDisplayWindowScene];
  v5 = &OBJC_IVAR___SBSwitcherWindowingSettings__cachedChamoisHideDockExternal;
  if (isMainDisplayWindowScene)
  {
    v5 = &OBJC_IVAR___SBSwitcherWindowingSettings__cachedChamoisHideDock;
  }

  return *(&self->super.super.isa + *v5);
}

- (void)_observeAppSwitcherDefaults
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  appSwitcherDefaults = [v3 appSwitcherDefaults];

  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideStrips"];
  v16[0] = v5;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideStripsExternal"];
  v16[1] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideDock"];
  v16[2] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisHideDockExternal"];
  v16[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v10 = MEMORY[0x277D85CD0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SBSwitcherWindowingSettings__observeAppSwitcherDefaults__block_invoke;
  v13[3] = &unk_2783A8C68;
  objc_copyWeak(&v14, &location);
  v11 = [appSwitcherDefaults observeDefaults:v9 onQueue:MEMORY[0x277D85CD0] withBlock:v13];
  appSwitcherDefaultsObserver = self->_appSwitcherDefaultsObserver;
  self->_appSwitcherDefaultsObserver = v11;

  [(SBSwitcherWindowingSettings *)self _updateCachedAppSwitcherDefaults];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __58__SBSwitcherWindowingSettings__observeAppSwitcherDefaults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCachedAppSwitcherDefaults];
}

- (void)_updateCachedAppSwitcherDefaults
{
  v3 = +[SBDefaults localDefaults];
  appSwitcherDefaults = [v3 appSwitcherDefaults];

  self->_cachedChamoisHideStrips = [appSwitcherDefaults chamoisHideStrips];
  self->_cachedChamoisHideStripsExternal = [appSwitcherDefaults chamoisHideStripsExternal];
  self->_cachedChamoisHideDock = [appSwitcherDefaults chamoisHideDock];
  self->_cachedChamoisHideDockExternal = [appSwitcherDefaults chamoisHideDockExternal];
}

- (void)setDefaultValues
{
  v30.receiver = self;
  v30.super_class = SBSwitcherWindowingSettings;
  [(PTSettings *)&v30 setDefaultValues];
  [(SBSwitcherWindowingSettings *)self setNumberOfVisibleItemsPerGroup:3];
  [(SBSwitcherWindowingSettings *)self setNumberOfRowsWhileInAppOnEmbeddedDisplay:4];
  [(SBSwitcherWindowingSettings *)self setNumberOfRowsWhileInAppOnExternalDisplay:4];
  [(SBSwitcherWindowingSettings *)self setNumberOfRowsWhileInAppOnExternalDisplayHighRes:5];
  [(SBSwitcherWindowingSettings *)self setExternalDisplayHighResVerticalResolution:1440];
  [(SBSwitcherWindowingSettings *)self setStripsHoverRevealZoneWidthType:0];
  [(SBSwitcherWindowingSettings *)self setStripsHoverRevealZoneWidthFixed:5.0];
  [(SBSwitcherWindowingSettings *)self setStripsHoverRevealZoneWidthScale:0.15];
  [(SBSwitcherWindowingSettings *)self setPinWindowEdgeForResizeMargin:88.0];
  [(SBSwitcherWindowingSettings *)self setStripDropZoneMultiplier:0.5];
  [(SBSwitcherWindowingSettings *)self setUseLeadingWindowEdgeForDropZoneCalculations:0];
  [(SBSwitcherWindowingSettings *)self setRejectDropsWhenStageIsFull:0];
  [(SBSwitcherWindowingSettings *)self setAllowTrueMaximizeForAllApps:0];
  [(SBSwitcherWindowingSettings *)self setRasterizeScaledApps:0];
  [(SBSwitcherWindowingSettings *)self setChangeFocusOnClickDown:1];
  [(SBSwitcherWindowingSettings *)self setBlurWallpaperInApps:0];
  [(SBSwitcherWindowingSettings *)self setUseLowFatigueStripAnimation:0];
  [(SBSwitcherWindowingSettings *)self setTapWallpaperToGoHome:0];
  [(SBSwitcherWindowingSettings *)self setStageOccludedAppScaleFactor:1.0];
  [(SBSwitcherWindowingSettings *)self setFlexibleStageOccludedAppMaxHeightReduction:4.0];
  [(SBSwitcherWindowingSettings *)self setPartiallyOffscreenWindowMargin:44.0];
  initWithDefaultValues = [[SBSwitcherChamoisSnapPaddingSettings alloc] initWithDefaultValues];
  [(SBSwitcherWindowingSettings *)self setEmbeddedDisplayChamoisSnapPaddingSettings:initWithDefaultValues];

  initWithDefaultValues2 = [[SBSwitcherChamoisSnapPaddingSettings alloc] initWithDefaultValues];
  [(SBSwitcherWindowingSettings *)self setExternalDisplayChamoisSnapPaddingSettings:initWithDefaultValues2];

  initWithDefaultValues3 = [[SBSwitcherFlexibleWindowingSnapPaddingSettings alloc] initWithDefaultValues];
  [(SBSwitcherWindowingSettings *)self setEmbeddedDisplayFlexibleWindowingSnapPaddingSettings:initWithDefaultValues3];

  initWithDefaultValues4 = [[SBSwitcherFlexibleWindowingSnapPaddingSettings alloc] initWithDefaultValues];
  [(SBSwitcherWindowingSettings *)self setExternalDisplayFlexibleWindowingSnapPaddingSettings:initWithDefaultValues4];

  [(SBSwitcherWindowingSettings *)self setMinimumWindowWidth:0.0];
  [(SBSwitcherWindowingSettings *)self setMinimumWindowHeight:0.0];
  [(SBSwitcherWindowingSettings *)self setPreventFlatteningUnoccludedScenes:0];
  [(SBSwitcherWindowingSettings *)self setResignActivePartiallyOccludedWindows:0];
  [(SBSwitcherWindowingSettings *)self setUpdateWindowLayerFullOcclusion:1];
  [(SBSwitcherWindowingSettings *)self setSecondsToResetSwitcherListAfterTransition:5.0];
  [(SBSwitcherWindowingSettings *)self setPercentageOfTransitionForSplitViewHandleFadeInDelay:0.6];
  [(SBSwitcherWindowingSettings *)self setInitialScaleForSplitViewHandles:0.75];
  [(SBSwitcherWindowingSettings *)self setMaxHomeScreenDimmingAlphaForNonFullscreen:0.5];
  [(SBSwitcherWindowingSettings *)self setMinHomeScreenDimmingAlphaResponse:0.15];
  [(SBSwitcherWindowingSettings *)self setMaxHomeScreenDimmingAlphaResponse:0.8];
  initWithDefaultValues5 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues5 setDampingRatio:1.0];
  [initWithDefaultValues5 setResponse:0.5];
  v31 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues5 setFrameRateRange:1114113 highFrameRateReason:{*&v31.minimum, *&v31.maximum, *&v31.preferred}];
  [(SBSwitcherWindowingSettings *)self setStageCornerRadiusSettings:initWithDefaultValues5];
  v8 = +[SBDefaults localDefaults];
  appSwitcherDefaults = [v8 appSwitcherDefaults];

  -[SBSwitcherWindowingSettings setFakeStorageForBackgroundNethermostWindows:](self, "setFakeStorageForBackgroundNethermostWindows:", [appSwitcherDefaults backgroundNethermostWindows]);
  -[SBSwitcherWindowingSettings setFakeStorageForWantsManyForegroundWindows:](self, "setFakeStorageForWantsManyForegroundWindows:", [appSwitcherDefaults wantsManyForegroundWindows]);
  [(SBSwitcherWindowingSettings *)self setSwitcherHeightForIconAndLabelsUnderEachPile:60.0];
  [(SBSwitcherWindowingSettings *)self setSwitcherPileCardMinimumPeekAmount:25.0];
  [(SBSwitcherWindowingSettings *)self setSwitcherPileCompactingFactor:0.6];
  [(SBSwitcherWindowingSettings *)self setSwitcherCornerRadius:10.0];
  [(SBSwitcherWindowingSettings *)self setRimShadowOpacity:0.15];
  [(SBSwitcherWindowingSettings *)self setRimShadowRadius:0.5];
  [(SBSwitcherWindowingSettings *)self setDiffuseShadowOpacity:0.35];
  [(SBSwitcherWindowingSettings *)self setDiffuseShadowRadius:70.0];
  [(SBSwitcherWindowingSettings *)self setDiffuseShadowOffset:0.0, 35.0];
  splitResizeAnimationSettings = [(SBSwitcherWindowingSettings *)self splitResizeAnimationSettings];
  [splitResizeAnimationSettings setDefaultValues];

  splitResizeAnimationSettings2 = [(SBSwitcherWindowingSettings *)self splitResizeAnimationSettings];
  [splitResizeAnimationSettings2 setTrackingDampingRatio:1.0];

  splitResizeAnimationSettings3 = [(SBSwitcherWindowingSettings *)self splitResizeAnimationSettings];
  [splitResizeAnimationSettings3 setTrackingResponse:0.024];

  splitResizeAnimationSettings4 = [(SBSwitcherWindowingSettings *)self splitResizeAnimationSettings];
  [splitResizeAnimationSettings4 setResponse:0.457];

  splitResizeAnimationSettings5 = [(SBSwitcherWindowingSettings *)self splitResizeAnimationSettings];
  v32 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [splitResizeAnimationSettings5 setFrameRateRange:1114144 highFrameRateReason:{*&v32.minimum, *&v32.maximum, *&v32.preferred}];

  liveResizeDuringDragLayoutAnimationSettings = [(SBSwitcherWindowingSettings *)self liveResizeDuringDragLayoutAnimationSettings];
  [liveResizeDuringDragLayoutAnimationSettings setTrackingDampingRatio:1.0];

  liveResizeDuringDragLayoutAnimationSettings2 = [(SBSwitcherWindowingSettings *)self liveResizeDuringDragLayoutAnimationSettings];
  [liveResizeDuringDragLayoutAnimationSettings2 setTrackingResponse:0.325];

  liveResizeDuringDragLayoutAnimationSettings3 = [(SBSwitcherWindowingSettings *)self liveResizeDuringDragLayoutAnimationSettings];
  v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [liveResizeDuringDragLayoutAnimationSettings3 setFrameRateRange:1114144 highFrameRateReason:{*&v33.minimum, *&v33.maximum, *&v33.preferred}];

  liveResizeAfterReleaseLayoutAnimationSettings = [(SBSwitcherWindowingSettings *)self liveResizeAfterReleaseLayoutAnimationSettings];
  [liveResizeAfterReleaseLayoutAnimationSettings setTrackingDampingRatio:0.92];

  liveResizeAfterReleaseLayoutAnimationSettings2 = [(SBSwitcherWindowingSettings *)self liveResizeAfterReleaseLayoutAnimationSettings];
  [liveResizeAfterReleaseLayoutAnimationSettings2 setTrackingResponse:0.6];

  liveResizeAfterReleaseLayoutAnimationSettings3 = [(SBSwitcherWindowingSettings *)self liveResizeAfterReleaseLayoutAnimationSettings];
  v34 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [liveResizeAfterReleaseLayoutAnimationSettings3 setFrameRateRange:1114144 highFrameRateReason:{*&v34.minimum, *&v34.maximum, *&v34.preferred}];

  [(SBSwitcherWindowingSettings *)self setLiveResizeSceneUpdateDistanceThreshold:0.0];
  [(SBSwitcherWindowingSettings *)self setLiveResizeSceneUpdateTimeThreshold:0.1];
  [(SBSwitcherWindowingSettings *)self setWindowDragRubberBandedTranslationRange:88.0];
  [(SBSwitcherWindowingSettings *)self setWindowDragRubberBandedTranslationDetachmentThreshold:44.0];
  windowDragAnimationSettings = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  [windowDragAnimationSettings setDefaultValues];

  windowDragAnimationSettings2 = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  [windowDragAnimationSettings2 setDampingRatio:0.92];

  windowDragAnimationSettings3 = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  [windowDragAnimationSettings3 setResponse:0.457];

  windowDragAnimationSettings4 = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  [windowDragAnimationSettings4 setTrackingDampingRatio:0.92];

  windowDragAnimationSettings5 = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  [windowDragAnimationSettings5 setTrackingResponse:0.1];

  windowDragAnimationSettings6 = [(SBSwitcherWindowingSettings *)self windowDragAnimationSettings];
  v35 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [windowDragAnimationSettings6 setFrameRateRange:1114144 highFrameRateReason:{*&v35.minimum, *&v35.maximum, *&v35.preferred}];

  initWithDefaultValues6 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues6 setResponse:0.5];
  [initWithDefaultValues6 setDampingRatio:1.0];
  v36 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues6 setFrameRateRange:1114144 highFrameRateReason:{*&v36.minimum, *&v36.maximum, *&v36.preferred}];
  [(SBSwitcherWindowingSettings *)self setAppToAppLayoutSettings:initWithDefaultValues6];
  initWithDefaultValues7 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues6 setResponse:0.5];
  [initWithDefaultValues6 setDampingRatio:0.86];
  v37 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues6 setFrameRateRange:1114144 highFrameRateReason:{*&v37.minimum, *&v37.maximum, *&v37.preferred}];
  [(SBSwitcherWindowingSettings *)self setAppToPeekLayoutSettings:initWithDefaultValues7];
  initWithDefaultValues8 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [initWithDefaultValues8 setResponse:0.4];
  [initWithDefaultValues8 setDampingRatio:1.0];
  [initWithDefaultValues8 setRetargetImpulse:0.016];
  v38 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [initWithDefaultValues8 setFrameRateRange:1114144 highFrameRateReason:{*&v38.minimum, *&v38.maximum, *&v38.preferred}];
  [(SBSwitcherWindowingSettings *)self setStageFocusChangeSettings:initWithDefaultValues8];
  [(SBSwitcherWindowingSettings *)self setHomeGestureMinimumYDistanceForHomeOrAppSwitcher:20.0];
  [(SBSwitcherWindowingSettings *)self setThreeDotsTopAffordanceLeadingEdgeOffset:10.0];
  [(SBSwitcherWindowingSettings *)self setThreeDotsTopAffordanceTopEdgeOffset:10.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsInlineLeadingEdgeOffset:21.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsInlineTopNoSafeAreaEdgeOffset:11.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsInlineTopWithSafeAreaEdgeOffset:11.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsModalLeadingEdgeOffset:21.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsModalTopNoSafeAreaEdgeOffset:6.0];
  [(SBSwitcherWindowingSettings *)self setWindowControlsModalTopWithSafeAreaEdgeOffset:6.0];
  [(SBSwitcherWindowingSettings *)self setSlideOverEnterCenterRegionThreshold:96.0];
  [(SBSwitcherWindowingSettings *)self setSlideOverExitCenterRegionThreshold:192.0];
}

+ (id)settingsControllerModule
{
  v279[9] = *MEMORY[0x277D85DE8];
  v258 = MEMORY[0x277D43210];
  v2 = MEMORY[0x277D431E8];
  v255 = NSStringFromSelector(sel_stripDropZoneMultiplier);
  v251 = [v2 rowWithTitle:@"Drop Into Strip Zone Width Multiplier" valueKeyPath:v255];
  v246 = [v251 between:0.0 and:1.0];
  v240 = [v246 precision:2];
  v279[0] = v240;
  v3 = MEMORY[0x277D432A8];
  v235 = NSStringFromSelector(sel_useLeadingWindowEdgeForDropZoneCalculations);
  v230 = [v3 rowWithTitle:@"Use Leading Window Edge For Drop Zone Calculations" valueKeyPath:v235];
  v279[1] = v230;
  v4 = MEMORY[0x277D432A8];
  v225 = NSStringFromSelector(sel_rejectDropsWhenStageIsFull);
  v220 = [v4 rowWithTitle:@"Reject Drops When Stage Is Full" valueKeyPath:v225];
  v279[2] = v220;
  v5 = MEMORY[0x277D432A8];
  v215 = NSStringFromSelector(sel_allowTrueMaximizeForAllApps);
  v210 = [v5 rowWithTitle:@"Allow True Maximize For All Apps" valueKeyPath:v215];
  v279[3] = v210;
  v6 = MEMORY[0x277D432A8];
  v205 = NSStringFromSelector(sel_rasterizeScaledApps);
  v7 = [v6 rowWithTitle:@"Rasterize Scaled Apps" valueKeyPath:v205];
  v279[4] = v7;
  v8 = MEMORY[0x277D432A8];
  v9 = NSStringFromSelector(sel_changeFocusOnClickDown);
  v10 = [v8 rowWithTitle:@"Change Focus on Click Down" valueKeyPath:v9];
  v279[5] = v10;
  v11 = MEMORY[0x277D432A8];
  v12 = NSStringFromSelector(sel_blurWallpaperInApps);
  v13 = [v11 rowWithTitle:@"Blur Wallpaper In Apps" valueKeyPath:v12];
  v279[6] = v13;
  v14 = MEMORY[0x277D432A8];
  v15 = NSStringFromSelector(sel_useLowFatigueStripAnimation);
  v16 = [v14 rowWithTitle:@"Use Low Fatigue Strip Animation" valueKeyPath:v15];
  v279[7] = v16;
  v17 = MEMORY[0x277D432A8];
  v18 = NSStringFromSelector(sel_tapWallpaperToGoHome);
  v19 = [v17 rowWithTitle:@"Tap on Wallpaper to go Home" valueKeyPath:v18];
  v279[8] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v279 count:9];
  v259 = [v258 sectionWithRows:v20 title:@"Layout and Policy"];

  v256 = MEMORY[0x277D43210];
  v21 = MEMORY[0x277D431E8];
  v252 = NSStringFromSelector(sel_switcherHeightForIconAndLabelsUnderEachPile);
  v247 = [v21 rowWithTitle:@"Switcher Height for Icons and Labels Under Each Pile" valueKeyPath:v252];
  v241 = [v247 between:0.0 and:200.0];
  v22 = [v241 precision:0];
  v278[0] = v22;
  v23 = MEMORY[0x277D431E8];
  v24 = NSStringFromSelector(sel_switcherPileCardMinimumPeekAmount);
  v25 = [v23 rowWithTitle:@"Switcher Pile Card Peek Amount" valueKeyPath:v24];
  v26 = [v25 between:0.0 and:300.0];
  v27 = [v26 precision:0];
  v278[1] = v27;
  v28 = MEMORY[0x277D431E8];
  v29 = NSStringFromSelector(sel_switcherPileCompactingFactor);
  v30 = [v28 rowWithTitle:@"Pile Compacting Factor" valueKeyPath:v29];
  v31 = [v30 between:0.0 and:1.0];
  v32 = [v31 precision:2];
  v278[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v278 count:3];
  v257 = [v256 sectionWithRows:v33 title:@"Switcher Layout"];

  v253 = MEMORY[0x277D43210];
  v34 = MEMORY[0x277D431E8];
  v248 = NSStringFromSelector(sel_stageOccludedAppScaleFactor);
  v242 = [v34 rowWithTitle:@"Stage Occluded App Scale Factor" valueKeyPath:v248];
  v236 = [v242 between:0.5 and:2.0];
  v231 = [v236 precision:4];
  v277[0] = v231;
  v35 = MEMORY[0x277D431E8];
  v226 = NSStringFromSelector(sel_flexibleStageOccludedAppMaxHeightReduction);
  v221 = [v35 rowWithTitle:@"Maximum Overlapped App Height Reduction" valueKeyPath:v226];
  v216 = [v221 between:0.0 and:50.0];
  v36 = [v216 precision:4];
  v277[1] = v36;
  v37 = MEMORY[0x277D431E8];
  v38 = NSStringFromSelector(sel_partiallyOffscreenWindowMargin);
  v39 = [v37 rowWithTitle:@"Partially Offscreen Window Margin" valueKeyPath:v38];
  v40 = [v39 between:1.0 and:100.0];
  v41 = [v40 precision:0];
  v277[2] = v41;
  v42 = MEMORY[0x277D431D8];
  v43 = NSStringFromSelector(sel_embeddedDisplayChamoisSnapPaddingSettings);
  v44 = [v42 rowWithTitle:@"Chamois Embedded Display Snap Padding Settings" childSettingsKeyPath:v43];
  v277[3] = v44;
  v45 = MEMORY[0x277D431D8];
  v46 = NSStringFromSelector(sel_externalDisplayChamoisSnapPaddingSettings);
  v47 = [v45 rowWithTitle:@"Chamois External Display Snap Padding Settings" childSettingsKeyPath:v46];
  v277[4] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v277 count:5];
  v254 = [v253 sectionWithRows:v48 title:@"Stage Layout"];

  v249 = MEMORY[0x277D43210];
  v49 = MEMORY[0x277D431E8];
  v243 = NSStringFromSelector(sel_windowControlsInlineLeadingEdgeOffset);
  v237 = [v49 rowWithTitle:@"Inline Leading Edge Offset" valueKeyPath:v243];
  v232 = [v237 between:-2000.0 and:2000.0];
  v227 = [v232 precision:0];
  v276[0] = v227;
  v50 = MEMORY[0x277D431E8];
  v222 = NSStringFromSelector(sel_windowControlsInlineTopNoSafeAreaEdgeOffset);
  v217 = [v50 rowWithTitle:@"Inline Top (No Safe Area) Offset" valueKeyPath:v222];
  v211 = [v217 between:-2000.0 and:2000.0];
  v206 = [v211 precision:0];
  v276[1] = v206;
  v51 = MEMORY[0x277D431E8];
  v201 = NSStringFromSelector(sel_windowControlsInlineTopWithSafeAreaEdgeOffset);
  v197 = [v51 rowWithTitle:@"Inline Top (With Safe Area) Offset" valueKeyPath:v201];
  v195 = [v197 between:-2000.0 and:2000.0];
  v193 = [v195 precision:0];
  v276[2] = v193;
  v52 = MEMORY[0x277D431E8];
  v191 = NSStringFromSelector(sel_windowControlsModalLeadingEdgeOffset);
  v189 = [v52 rowWithTitle:@"Modal Leading Edge Offset" valueKeyPath:v191];
  v187 = [v189 between:-2000.0 and:2000.0];
  v53 = [v187 precision:0];
  v276[3] = v53;
  v54 = MEMORY[0x277D431E8];
  v55 = NSStringFromSelector(sel_windowControlsModalTopNoSafeAreaEdgeOffset);
  v56 = [v54 rowWithTitle:@"Modal Top (No Safe Area) Offset" valueKeyPath:v55];
  v57 = [v56 between:-2000.0 and:2000.0];
  v58 = [v57 precision:0];
  v276[4] = v58;
  v59 = MEMORY[0x277D431E8];
  v60 = NSStringFromSelector(sel_windowControlsInlineTopWithSafeAreaEdgeOffset);
  v61 = [v59 rowWithTitle:@"Modal Top (With Safe Area) Offset" valueKeyPath:v60];
  v62 = [v61 between:-2000.0 and:2000.0];
  v63 = [v62 precision:0];
  v276[5] = v63;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:6];
  v250 = [v249 sectionWithRows:v64 title:@"Window Controls"];

  v244 = MEMORY[0x277D43210];
  v65 = MEMORY[0x277D431E8];
  v238 = NSStringFromSelector(sel_minimumWindowWidth);
  v233 = [v65 rowWithTitle:@"Minimum Window Width" valueKeyPath:v238];
  v228 = [v233 between:0.0 and:2000.0];
  v223 = [v228 precision:0];
  v275[0] = v223;
  v66 = MEMORY[0x277D431E8];
  v218 = NSStringFromSelector(sel_minimumWindowHeight);
  v212 = [v66 rowWithTitle:@"Minimum Window Height" valueKeyPath:v218];
  v207 = [v212 between:0.0 and:2000.0];
  v202 = [v207 precision:0];
  v275[1] = v202;
  v67 = MEMORY[0x277D431D8];
  v198 = NSStringFromSelector(sel_embeddedDisplayFlexibleWindowingSnapPaddingSettings);
  v196 = [v67 rowWithTitle:@"Flexible Windowing Embedded Display Snap Padding Settings" childSettingsKeyPath:v198];
  v275[2] = v196;
  v68 = MEMORY[0x277D431D8];
  v194 = NSStringFromSelector(sel_externalDisplayFlexibleWindowingSnapPaddingSettings);
  v192 = [v68 rowWithTitle:@"Flexible Windowing Display Snap Padding Settings" childSettingsKeyPath:v194];
  v275[3] = v192;
  v69 = MEMORY[0x277D432A8];
  v190 = NSStringFromSelector(sel_preventFlatteningUnoccludedScenes);
  v188 = [v69 rowWithTitle:@"Prevent Flattening Unoccluded Scenes" valueKeyPath:v190];
  v275[4] = v188;
  v70 = MEMORY[0x277D432A8];
  v186 = NSStringFromSelector(sel_resignActivePartiallyOccludedWindows);
  v185 = [v70 rowWithTitle:@"Resign Active Partially Occluded Windows" valueKeyPath:v186];
  v275[5] = v185;
  v71 = MEMORY[0x277D432A8];
  v184 = NSStringFromSelector(sel_updateWindowLayerFullOcclusion);
  v183 = [v71 rowWithTitle:@"Update Window Layer Full Occlusion" valueKeyPath:v184];
  v275[6] = v183;
  v72 = MEMORY[0x277D431E8];
  v182 = NSStringFromSelector(sel_secondsToResetSwitcherListAfterTransition);
  v181 = [v72 rowWithTitle:@"Seconds to Reset Switcher List After Transition" valueKeyPath:v182];
  v180 = [v181 between:0.0 and:10.0];
  v179 = [v180 valueFormatter:&__block_literal_global_99];
  v275[7] = v179;
  v73 = MEMORY[0x277D431E8];
  v178 = NSStringFromSelector(sel_percentageOfTransitionForSplitViewHandleFadeInDelay);
  v177 = [v73 rowWithTitle:@"Percentage of Transition Layout Settling Duration for Split View Handle Fade-In Delay" valueKeyPath:v178];
  v176 = [v177 between:0.0 and:1.0];
  v175 = [v176 precision:2];
  v275[8] = v175;
  v74 = MEMORY[0x277D431E8];
  v174 = NSStringFromSelector(sel_initialScaleForSplitViewHandles);
  v173 = [v74 rowWithTitle:@"Initial Scale For Split View Handles" valueKeyPath:v174];
  v172 = [v173 between:0.0 and:1.0];
  v171 = [v172 precision:2];
  v275[9] = v171;
  v75 = MEMORY[0x277D431E8];
  v170 = NSStringFromSelector(sel_maxHomeScreenDimmingAlphaForNonFullscreen);
  v169 = [v75 rowWithTitle:@"Maximum Home Screen Dimming Alpha When Not Full Screen" valueKeyPath:v170];
  v168 = [v169 between:0.0 and:1.0];
  v167 = [v168 precision:2];
  v275[10] = v167;
  v76 = MEMORY[0x277D431E8];
  v166 = NSStringFromSelector(sel_maxHomeScreenDimmingAlphaForNonFullscreen);
  v165 = [v76 rowWithTitle:@"Minimum Home Screen Dimming Alpha Response" valueKeyPath:v166];
  v164 = [v165 between:0.0 and:1.0];
  v163 = [v164 precision:2];
  v275[11] = v163;
  v77 = MEMORY[0x277D431E8];
  v162 = NSStringFromSelector(sel_maxHomeScreenDimmingAlphaForNonFullscreen);
  v161 = [v77 rowWithTitle:@"Maximum Home Screen Dimming Alpha Response" valueKeyPath:v162];
  v160 = [v161 between:0.0 and:1.0];
  v159 = [v160 precision:2];
  v275[12] = v159;
  v78 = MEMORY[0x277D431D8];
  v158 = NSStringFromSelector(sel_stageCornerRadiusSettings);
  v79 = [v78 rowWithTitle:@"Stage Corner Radius Settings" childSettingsKeyPath:v158];
  v275[13] = v79;
  v80 = MEMORY[0x277D431E8];
  v81 = NSStringFromSelector(sel_slideOverEnterCenterRegionThreshold);
  v82 = [v80 rowWithTitle:@"Slide Over Enter Center Region Threshold" valueKeyPath:v81];
  v83 = [v82 between:1.0 and:500.0];
  v84 = [v83 precision:3];
  v275[14] = v84;
  v85 = MEMORY[0x277D431E8];
  v86 = NSStringFromSelector(sel_slideOverExitCenterRegionThreshold);
  v87 = [v85 rowWithTitle:@"Slide Over Exit Center Region Threshold" valueKeyPath:v86];
  v88 = [v87 between:1.0 and:500.0];
  v89 = [v88 precision:3];
  v275[15] = v89;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:16];
  v245 = [v244 sectionWithRows:v90 title:@"Flexible Windowing"];

  v91 = +[SBDefaults localDefaults];
  appSwitcherDefaults = [v91 appSwitcherDefaults];

  v93 = MEMORY[0x277D432A8];
  v94 = NSStringFromSelector(sel_fakeStorageForBackgroundNethermostWindows);
  v95 = [v93 rowWithTitle:@"Background Nethermost Windows" valueKeyPath:v94];

  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_2;
  v266[3] = &unk_2783ADCB8;
  v96 = appSwitcherDefaults;
  v267 = v96;
  [v95 setValueValidatator:v266];
  v264[0] = MEMORY[0x277D85DD0];
  v264[1] = 3221225472;
  v264[2] = __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_3;
  v264[3] = &unk_2783ADCB8;
  v97 = v96;
  v265 = v97;
  v234 = v95;
  [v95 setValueFormatter:v264];
  v98 = MEMORY[0x277D432A8];
  v99 = NSStringFromSelector(sel_fakeStorageForWantsManyForegroundWindows);
  v100 = [v98 rowWithTitle:@"Many Foreground Windows" valueKeyPath:v99];

  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_4;
  v262[3] = &unk_2783ADCB8;
  v101 = v97;
  v263 = v101;
  [v100 setValueValidatator:v262];
  v260[0] = MEMORY[0x277D85DD0];
  v260[1] = 3221225472;
  v260[2] = __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_5;
  v260[3] = &unk_2783ADCB8;
  v261 = v101;
  v239 = v101;
  v102 = v100;
  v229 = v100;
  [v100 setValueFormatter:v260];
  v103 = MEMORY[0x277D431B0];
  v104 = NSStringFromSelector(sel_killSpringBoardOutlet);
  v224 = [v103 rowWithTitle:@"Kill SpringBoard" outletKeyPath:v104];

  v105 = MEMORY[0x277D43210];
  v274[0] = v95;
  v274[1] = v102;
  v274[2] = v224;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:3];
  v219 = [v105 sectionWithRows:v106];

  v213 = MEMORY[0x277D43210];
  v107 = MEMORY[0x277D431D8];
  v208 = NSStringFromSelector(sel_liveResizeDuringDragLayoutAnimationSettings);
  v203 = [v107 rowWithTitle:@"Live Resize During Drag Layout Settings" childSettingsKeyPath:v208];
  v273[0] = v203;
  v108 = MEMORY[0x277D431D8];
  v199 = NSStringFromSelector(sel_liveResizeAfterReleaseLayoutAnimationSettings);
  v109 = [v108 rowWithTitle:@"Live Resize After Release Layout Settings" childSettingsKeyPath:v199];
  v273[1] = v109;
  v110 = MEMORY[0x277D431E8];
  v111 = NSStringFromSelector(sel_liveResizeSceneUpdateDistanceThreshold);
  v112 = [v110 rowWithTitle:@"Distance Threshold" valueKeyPath:v111];
  v113 = [v112 between:0.0 and:834.0];
  v114 = [v113 precision:3];
  v273[2] = v114;
  v115 = MEMORY[0x277D431E8];
  v116 = NSStringFromSelector(sel_liveResizeSceneUpdateTimeThreshold);
  v117 = [v115 rowWithTitle:@"Time Threshold" valueKeyPath:v116];
  v118 = [v117 between:0.0 and:10.0];
  v119 = [v118 precision:3];
  v273[3] = v119;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:4];
  v214 = [v213 sectionWithRows:v120 title:@"Live Resize Settings"];

  v121 = MEMORY[0x277D43210];
  v122 = MEMORY[0x277D431D8];
  v123 = NSStringFromSelector(sel_splitResizeAnimationSettings);
  v124 = [v122 rowWithTitle:@"Split Resize Settings" childSettingsKeyPath:v123];
  v272 = v124;
  v125 = [MEMORY[0x277CBEA60] arrayWithObjects:&v272 count:1];
  v209 = [v121 sectionWithRows:v125 title:@"Split Resize Settings"];

  v126 = MEMORY[0x277D43210];
  v127 = MEMORY[0x277D431E8];
  v128 = NSStringFromSelector(sel_windowDragRubberBandedTranslationRange);
  v129 = [v127 rowWithTitle:@"Rubber-Banded Translation Range" valueKeyPath:v128];
  v271[0] = v129;
  v130 = MEMORY[0x277D431E8];
  v131 = NSStringFromSelector(sel_windowDragRubberBandedTranslationDetachmentThreshold);
  v132 = [v130 rowWithTitle:@"Rubber-Banded Translation Detachment Threshold" valueKeyPath:v131];
  v271[1] = v132;
  v133 = MEMORY[0x277D431D8];
  v134 = NSStringFromSelector(sel_windowDragAnimationSettings);
  v135 = [v133 rowWithTitle:@"Window Drag Settings" childSettingsKeyPath:v134];
  v271[2] = v135;
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v271 count:3];
  v204 = [v126 sectionWithRows:v136 title:@"Window Drag Gesture Settings"];

  v137 = MEMORY[0x277D43210];
  v138 = MEMORY[0x277D431D8];
  v139 = NSStringFromSelector(sel_appToAppLayoutSettings);
  v140 = [v138 rowWithTitle:@"App To App Layout Settings" childSettingsKeyPath:v139];
  v270[0] = v140;
  v141 = MEMORY[0x277D431D8];
  v142 = NSStringFromSelector(sel_appToAppOpacitySettings);
  v143 = [v141 rowWithTitle:@"App To App Opacity Settings" childSettingsKeyPath:v142];
  v270[1] = v143;
  v144 = MEMORY[0x277D431D8];
  v145 = NSStringFromSelector(sel_stageFocusChangeSettings);
  v146 = [v144 rowWithTitle:@"Stage Focus Change Settings" childSettingsKeyPath:v145];
  v270[2] = v146;
  v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v270 count:3];
  v200 = [v137 sectionWithRows:v147 title:@"Animation Settings"];

  v148 = MEMORY[0x277D43210];
  v149 = MEMORY[0x277D431B0];
  v150 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v151 = [v149 rowWithTitle:@"Restore Defaults" action:v150];
  v269 = v151;
  v152 = [MEMORY[0x277CBEA60] arrayWithObjects:&v269 count:1];
  v153 = [v148 sectionWithRows:v152];

  v154 = MEMORY[0x277D43210];
  v268[0] = v259;
  v268[1] = v257;
  v268[2] = v254;
  v268[3] = v250;
  v268[4] = v245;
  v268[5] = v219;
  v268[6] = v214;
  v268[7] = v209;
  v268[8] = v204;
  v268[9] = v200;
  v268[10] = v153;
  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v268 count:11];
  v156 = [v154 moduleWithTitle:@"Windowing" contents:v155];

  return v156;
}

uint64_t __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 floatValue];
  v4 = roundf(v3 + v3) * 0.5;

  return [v2 numberWithDouble:v4];
}

id __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setBackgroundNethermostWindows:{objc_msgSend(v3, "BOOLValue")}];

  return v3;
}

uint64_t __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 backgroundNethermostWindows];
  [v4 setFakeStorageForBackgroundNethermostWindows:v5];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5];
}

id __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setWantsManyForegroundWindows:{objc_msgSend(v3, "BOOLValue")}];

  return v3;
}

uint64_t __55__SBSwitcherWindowingSettings_settingsControllerModule__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 wantsManyForegroundWindows];
  [v4 setFakeStorageForWantsManyForegroundWindows:v5];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithBool:v5];
}

- (CGSize)diffuseShadowOffset
{
  objc_copyStruct(v4, &self->_diffuseShadowOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end