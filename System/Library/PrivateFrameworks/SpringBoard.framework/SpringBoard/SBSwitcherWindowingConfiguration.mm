@interface SBSwitcherWindowingConfiguration
- (BOOL)isEqual:(id)a3;
- (CGRect)containerBounds;
- (CGSize)defaultWindowSize;
- (CGSize)minimumDefaultWindowSize;
- (SBSwitcherWindowingSettings)settings;
- (double)bestStageCornerRadiiSupportingSolarium:(BOOL)a3;
- (double)partiallyOccludedStageScaleForItemWithSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBSwitcherWindowingConfiguration

- (double)partiallyOccludedStageScaleForItemWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SBSwitcherWindowingConfiguration *)self flexibleStageOccludedAppMaxHeightReduction];
  v7 = v6;
  v8 = [(SBSwitcherWindowingConfiguration *)self settings];
  v9 = v8;
  if (v8)
  {
    [v8 stageOccludedAppScaleFactor];
    v11 = v10;
    [v9 flexibleStageOccludedAppMaxHeightReduction];
    v7 = v12;
  }

  else
  {
    v11 = 1.0;
  }

  if ([(SBSwitcherWindowingConfiguration *)self isFlexibleWindowingEnabled])
  {
    v13 = 1.0 - v7 / height;
  }

  else if (width == self->_containerBounds.size.width && height == self->_containerBounds.size.height)
  {
    [(SBSwitcherWindowingConfiguration *)self stageStatusBarClearingAppScale];
    v13 = v16;
  }

  else
  {
    [(SBSwitcherWindowingConfiguration *)self stageOccludedAppScale];
    v13 = v11 * v15;
  }

  return v13;
}

- (double)bestStageCornerRadiiSupportingSolarium:(BOOL)a3
{
  v3 = 200;
  if (a3)
  {
    v3 = 208;
  }

  return *(&self->super.isa + v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(SBSwitcherWindowingConfiguration *)v5 containerBounds];
      v26.origin.x = v6;
      v26.origin.y = v7;
      v26.size.width = v8;
      v26.size.height = v9;
      if (CGRectEqualToRect(self->_containerBounds, v26))
      {
        requiresFullScreen = self->_requiresFullScreen;
        if (requiresFullScreen == [(SBSwitcherWindowingConfiguration *)v5 requiresFullScreen])
        {
          [(SBSwitcherWindowingConfiguration *)v5 defaultWindowSize];
          v12 = 0;
          if (self->_defaultWindowSize.width != v13)
          {
            goto LABEL_54;
          }

          if (self->_defaultWindowSize.height != v11)
          {
            goto LABEL_54;
          }

          [(SBSwitcherWindowingConfiguration *)v5 minimumDefaultWindowSize];
          v12 = 0;
          if (self->_minimumDefaultWindowSize.width != v15 || self->_minimumDefaultWindowSize.height != v14)
          {
            goto LABEL_54;
          }

          [(SBSwitcherWindowingConfiguration *)v5 maximumWindowHeightWithDock];
          if (BSFloatEqualToFloat())
          {
            [(SBSwitcherWindowingConfiguration *)v5 maximumWindowWidthForOverlapping];
            if (BSFloatEqualToFloat())
            {
              [(SBSwitcherWindowingConfiguration *)v5 minimumWindowWidth];
              if (BSFloatEqualToFloat())
              {
                [(SBSwitcherWindowingConfiguration *)v5 minimumWindowHeight];
                if (BSFloatEqualToFloat())
                {
                  [(SBSwitcherWindowingConfiguration *)v5 containerPerspective];
                  if (BSFloatEqualToFloat())
                  {
                    [(SBSwitcherWindowingConfiguration *)v5 splitViewHandleNubWidth];
                    if (BSFloatEqualToFloat())
                    {
                      [(SBSwitcherWindowingConfiguration *)v5 splitViewHandleDimmingWidth];
                      if (BSFloatEqualToFloat())
                      {
                        [(SBSwitcherWindowingConfiguration *)v5 dockTopMargin];
                        if (BSFloatEqualToFloat())
                        {
                          [(SBSwitcherWindowingConfiguration *)v5 floatingDockHeightWithTopAndBottomPadding];
                          if (BSFloatEqualToFloat())
                          {
                            [(SBSwitcherWindowingConfiguration *)v5 screenEdgePadding];
                            if (BSFloatEqualToFloat())
                            {
                              [(SBSwitcherWindowingConfiguration *)v5 stripWidth];
                              if (BSFloatEqualToFloat())
                              {
                                [(SBSwitcherWindowingConfiguration *)v5 stripVerticalEdgeSpacing];
                                if (BSFloatEqualToFloat())
                                {
                                  [(SBSwitcherWindowingConfiguration *)v5 stripInterItemSpacing];
                                  if (BSFloatEqualToFloat())
                                  {
                                    [(SBSwitcherWindowingConfiguration *)v5 stripTiltAngle];
                                    if (BSFloatEqualToFloat())
                                    {
                                      [(SBSwitcherWindowingConfiguration *)v5 stripIconLength];
                                      if (BSFloatEqualToFloat())
                                      {
                                        [(SBSwitcherWindowingConfiguration *)v5 stripOffscreenPadding];
                                        if (BSFloatEqualToFloat())
                                        {
                                          [(SBSwitcherWindowingConfiguration *)v5 stripScreenEdgePadding];
                                          if (BSFloatEqualToFloat())
                                          {
                                            [(SBSwitcherWindowingConfiguration *)v5 stripStackDistance];
                                            if (BSFloatEqualToFloat())
                                            {
                                              [(SBSwitcherWindowingConfiguration *)v5 stripCardScale];
                                              if (BSFloatEqualToFloat())
                                              {
                                                [(SBSwitcherWindowingConfiguration *)v5 stripCornerRadii];
                                                if (BSFloatEqualToFloat())
                                                {
                                                  [(SBSwitcherWindowingConfiguration *)v5 nonSolariumStageCornerRadii];
                                                  if (BSFloatEqualToFloat())
                                                  {
                                                    [(SBSwitcherWindowingConfiguration *)v5 solariumStageCornerRadii];
                                                    if (BSFloatEqualToFloat())
                                                    {
                                                      [(SBSwitcherWindowingConfiguration *)v5 stageInterItemSpacing];
                                                      if (BSFloatEqualToFloat())
                                                      {
                                                        [(SBSwitcherWindowingConfiguration *)v5 stageOccludedAppScale];
                                                        if (BSFloatEqualToFloat())
                                                        {
                                                          [(SBSwitcherWindowingConfiguration *)v5 stageStatusBarClearingAppScale];
                                                          if (BSFloatEqualToFloat())
                                                          {
                                                            [(SBSwitcherWindowingConfiguration *)v5 stageOcclusionDodgingPeekLength];
                                                            if (BSFloatEqualToFloat())
                                                            {
                                                              [(SBSwitcherWindowingConfiguration *)v5 stageOcclusionDodgingPeekScale];
                                                              if (BSFloatEqualToFloat())
                                                              {
                                                                numberOfRowsWhileInApp = self->_numberOfRowsWhileInApp;
                                                                if (numberOfRowsWhileInApp == [(SBSwitcherWindowingConfiguration *)v5 numberOfRowsWhileInApp])
                                                                {
                                                                  maximumNumberOfVisibleIconsInStrip = self->_maximumNumberOfVisibleIconsInStrip;
                                                                  if (maximumNumberOfVisibleIconsInStrip == [(SBSwitcherWindowingConfiguration *)v5 maximumNumberOfVisibleIconsInStrip])
                                                                  {
                                                                    isFlexibleWindowingEnabled = self->_isFlexibleWindowingEnabled;
                                                                    if (isFlexibleWindowingEnabled == [(SBSwitcherWindowingConfiguration *)v5 isFlexibleWindowingEnabled])
                                                                    {
                                                                      prefersStripHidden = self->_prefersStripHidden;
                                                                      if (prefersStripHidden == [(SBSwitcherWindowingConfiguration *)v5 prefersStripHidden])
                                                                      {
                                                                        prefersDockHidden = self->_prefersDockHidden;
                                                                        if (prefersDockHidden == [(SBSwitcherWindowingConfiguration *)v5 prefersDockHidden])
                                                                        {
                                                                          usesStripAreaForOverlapping = self->_usesStripAreaForOverlapping;
                                                                          if (usesStripAreaForOverlapping == [(SBSwitcherWindowingConfiguration *)v5 usesStripAreaForOverlapping])
                                                                          {
                                                                            v22 = [(SBSwitcherWindowingConfiguration *)v5 gridWidths];
                                                                            if (BSEqualArrays())
                                                                            {
                                                                              v23 = [(SBSwitcherWindowingConfiguration *)v5 gridHeights];
                                                                              if (BSEqualArrays() && ([(SBSwitcherWindowingConfiguration *)v5 switcherHorizontalEdgeSpacing], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingConfiguration *)v5 switcherHorizontalInterItemSpacing], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingConfiguration *)v5 switcherVerticalEdgeSpacing], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingConfiguration *)v5 switcherVerticalInterItemSpacing], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingConfiguration *)v5 switcherHeightForIconAndLabelsUnderEachPile], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingConfiguration *)v5 switcherPileCardMinimumPeekAmount], BSFloatEqualToFloat()))
                                                                              {
                                                                                [(SBSwitcherWindowingConfiguration *)v5 switcherPileCompactingFactor];
                                                                                v24 = BSFloatEqualToFloat();
                                                                              }

                                                                              else
                                                                              {
                                                                                v24 = 0;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v24 = 0;
                                                                            }

                                                                            v12 = v24;
                                                                            goto LABEL_54;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v12 = 0;
LABEL_54:

      goto LABEL_55;
    }

    v12 = 0;
  }

LABEL_55:

  return v12;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSwitcherWindowingConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(SBSwitcherWindowingConfiguration *)self defaultWindowSize];
  v5 = [v4 appendSize:@"defaultWindowSize" withName:?];
  [(SBSwitcherWindowingConfiguration *)self minimumDefaultWindowSize];
  v6 = [v4 appendSize:@"minimumDefaultWindowSize" withName:?];
  v7 = [(SBSwitcherWindowingConfiguration *)self gridWidths];
  v8 = [v4 appendObject:v7 withName:@"gridWidths"];

  v9 = [(SBSwitcherWindowingConfiguration *)self gridHeights];
  v10 = [v4 appendObject:v9 withName:@"gridHeights"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBSwitcherWindowingConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setContainerBounds:{self->_containerBounds.origin.x, self->_containerBounds.origin.y, self->_containerBounds.size.width, self->_containerBounds.size.height}];
  [v4 setRequiresFullScreen:self->_requiresFullScreen];
  [v4 setDefaultWindowSize:{self->_defaultWindowSize.width, self->_defaultWindowSize.height}];
  [v4 setMinimumDefaultWindowSize:{self->_minimumDefaultWindowSize.width, self->_minimumDefaultWindowSize.height}];
  [v4 setMaximumWindowHeightWithDock:self->_maximumWindowHeightWithDock];
  [v4 setMaximumWindowWidthForOverlapping:self->_maximumWindowWidthForOverlapping];
  [v4 setMinimumWindowWidth:self->_minimumWindowWidth];
  [v4 setMinimumWindowHeight:self->_minimumWindowHeight];
  [v4 setContainerPerspective:self->_containerPerspective];
  [v4 setSplitViewHandleNubWidth:self->_splitViewHandleNubWidth];
  [v4 setSplitViewHandleDimmingWidth:self->_splitViewHandleDimmingWidth];
  [v4 setDockTopMargin:self->_dockTopMargin];
  [v4 setFloatingDockHeightWithTopAndBottomPadding:self->_floatingDockHeightWithTopAndBottomPadding];
  [v4 setScreenEdgePadding:self->_screenEdgePadding];
  [v4 setStripWidth:self->_stripWidth];
  [v4 setStripVerticalEdgeSpacing:self->_stripVerticalEdgeSpacing];
  [v4 setStripInterItemSpacing:self->_stripInterItemSpacing];
  [v4 setStripTiltAngle:self->_stripTiltAngle];
  [v4 setStripIconLength:self->_stripIconLength];
  [v4 setStripOffscreenPadding:self->_stripOffscreenPadding];
  [v4 setStripScreenEdgePadding:self->_stripScreenEdgePadding];
  [v4 setStripStackDistance:self->_stripStackDistance];
  [v4 setStripCardScale:self->_stripCardScale];
  [v4 setStripCornerRadii:self->_stripCornerRadii];
  [v4 setNonSolariumStageCornerRadii:self->_nonSolariumStageCornerRadii];
  [v4 setSolariumStageCornerRadii:self->_solariumStageCornerRadii];
  [v4 setStageInterItemSpacing:self->_stageInterItemSpacing];
  [v4 setStageOccludedAppScale:self->_stageOccludedAppScale];
  [v4 setStageStatusBarClearingAppScale:self->_stageStatusBarClearingAppScale];
  [v4 setStageOcclusionDodgingPeekLength:self->_stageOcclusionDodgingPeekLength];
  [v4 setStageOcclusionDodgingPeekScale:self->_stageOcclusionDodgingPeekScale];
  [v4 setNumberOfRowsWhileInApp:self->_numberOfRowsWhileInApp];
  [v4 setMaximumNumberOfVisibleIconsInStrip:self->_maximumNumberOfVisibleIconsInStrip];
  [v4 setIsFlexibleWindowingEnabled:self->_isFlexibleWindowingEnabled];
  [v4 setPrefersStripHidden:self->_prefersStripHidden];
  [v4 setPrefersDockHidden:self->_prefersDockHidden];
  [v4 setUsesStripAreaForOverlapping:self->_usesStripAreaForOverlapping];
  [v4 setGridWidths:self->_gridWidths];
  [v4 setGridHeights:self->_gridHeights];
  [v4 setSwitcherHorizontalEdgeSpacing:self->_switcherHorizontalEdgeSpacing];
  [v4 setSwitcherHorizontalInterItemSpacing:self->_switcherHorizontalInterItemSpacing];
  [v4 setSwitcherVerticalEdgeSpacing:self->_switcherVerticalEdgeSpacing];
  [v4 setSwitcherVerticalInterItemSpacing:self->_switcherVerticalInterItemSpacing];
  [v4 setSwitcherHeightForIconAndLabelsUnderEachPile:self->_switcherHeightForIconAndLabelsUnderEachPile];
  [v4 setSwitcherPileCardMinimumPeekAmount:self->_switcherPileCardMinimumPeekAmount];
  [v4 setSwitcherPileCompactingFactor:self->_switcherPileCompactingFactor];
  [v4 setSlideOverBorderWidth:self->_slideOverBorderWidth];
  [v4 setSlideOverExitCenterRegionThreshold:self->_slideOverExitCenterRegionThreshold];
  [v4 setSlideOverEnterCenterRegionThreshold:self->_slideOverEnterCenterRegionThreshold];
  [v4 setSlideOverThresholdToForegroundUnstashingApp:self->_slideOverThresholdToForegroundUnstashingApp];
  return v4;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)defaultWindowSize
{
  width = self->_defaultWindowSize.width;
  height = self->_defaultWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumDefaultWindowSize
{
  width = self->_minimumDefaultWindowSize.width;
  height = self->_minimumDefaultWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBSwitcherWindowingSettings)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_settings);

  return WeakRetained;
}

@end