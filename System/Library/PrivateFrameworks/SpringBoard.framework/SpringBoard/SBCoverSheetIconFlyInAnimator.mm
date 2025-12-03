@interface SBCoverSheetIconFlyInAnimator
- (CGPoint)_effectiveCenterPoint;
- (CGPoint)_positionForSpreadMultiplier:(double)multiplier point:(CGPoint)point;
- (CGPoint)_velocityForSpreadMultiplier:(double)multiplier spreadMultiplierVelocity:(double)velocity point:(CGPoint)point;
- (CGRect)_referenceBounds;
- (SBCoverSheetIconFlyInAnimator)initWithFolderController:(id)controller;
- (double)_blurRadiusForSpreadValue:(double)value;
- (double)_functionWithProgress:(double)progress distance:(double)distance;
- (double)_labelAlphaForFraction:(double)fraction;
- (double)_responseForPoint:(CGPoint)point center:(CGPoint)center;
- (double)_zPositionForPoint:(CGPoint)point center:(CGPoint)center andFraction:(double)fraction;
- (double)_zPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction;
- (void)_cleanupAnimation;
- (void)_createAnimatableProperties;
- (void)_prepareAnimation;
- (void)_prepareToAnimateZPositions;
- (void)_setAnimationFraction:(double)fraction withCenter:(CGPoint)center;
- (void)_setZPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction;
- (void)_updateDockForFraction:(double)fraction;
- (void)_updateLabelAlphaForPresentationValue:(BOOL)value;
- (void)_updateSpreadMultiplierForPresentation:(BOOL)presentation;
- (void)_updateWithSettings:(id)settings;
- (void)animateZPositionsToFraction:(double)fraction completionGroup:(id)group completion:(id)completion;
- (void)prepareWithVelocity:(double)velocity forFlyIn:(BOOL)in;
- (void)setFractionForAlphaFadeOfViews:(id)views;
- (void)setIconSpreadFraction:(double)fraction;
@end

@implementation SBCoverSheetIconFlyInAnimator

void __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabelAlphaForPresentationValue:1];
}

void __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpreadMultiplierForPresentation:1];
}

- (void)_createAnimatableProperties
{
  v23[1] = *MEMORY[0x277D85DE8];
  animationType = self->_animationType;
  v4 = objc_alloc_init(MEMORY[0x277D75D38]);
  labelAlphaDrivingProgressAnimatableProperty = self->_labelAlphaDrivingProgressAnimatableProperty;
  self->_labelAlphaDrivingProgressAnimatableProperty = v4;

  [(UIViewFloatAnimatableProperty *)self->_labelAlphaDrivingProgressAnimatableProperty setVelocityUsableForVFD:1];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D75D18];
  v23[0] = self->_labelAlphaDrivingProgressAnimatableProperty;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke;
  v19[3] = &unk_2783A8C68;
  objc_copyWeak(&v20, &location);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_2;
  v17[3] = &unk_2783A8C68;
  objc_copyWeak(&v18, &location);
  [v6 _createTransformerWithInputAnimatableProperties:v7 modelValueSetter:v19 presentationValueSetter:v17];

  if (CSFeatureEnabled())
  {
    v8 = objc_alloc_init(MEMORY[0x277D75D38]);
    spreadMultiplierAnimatableProperty = self->_spreadMultiplierAnimatableProperty;
    self->_spreadMultiplierAnimatableProperty = v8;

    [(UIViewFloatAnimatableProperty *)self->_spreadMultiplierAnimatableProperty setVelocityUsableForVFD:1];
    v10 = 0.0;
    if (animationType == 1)
    {
      v10 = 1.0;
    }

    [(UIViewFloatAnimatableProperty *)self->_spreadMultiplierAnimatableProperty setValue:v10];
    v11 = MEMORY[0x277D75D18];
    v22 = self->_spreadMultiplierAnimatableProperty;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_3;
    v15[3] = &unk_2783A8C68;
    objc_copyWeak(&v16, &location);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_4;
    v13[3] = &unk_2783A8C68;
    objc_copyWeak(&v14, &location);
    [v11 _createTransformerWithInputAnimatableProperties:v12 modelValueSetter:v15 presentationValueSetter:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_prepareAnimation
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = SBCoverSheetIconFlyInAnimator;
  [(SBCenterIconZoomAnimator *)&v6 _prepareAnimation];
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "icon animator %p - prepare", buf, 0xCu);
  }

  folderController = [(SBCenterIconZoomAnimator *)self folderController];
  pageControl = [folderController pageControl];
  [(SBCoverSheetIconFlyInAnimator *)self setPageControl:pageControl];
}

void __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabelAlphaForPresentationValue:0];
}

void __60__SBCoverSheetIconFlyInAnimator__createAnimatableProperties__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpreadMultiplierForPresentation:0];
}

- (SBCoverSheetIconFlyInAnimator)initWithFolderController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SBCoverSheetIconFlyInAnimator;
  v3 = [(SBCenterIconZoomAnimator *)&v11 initWithFolderController:controller];
  if (v3)
  {
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    coverSheetTransitionsSettings = [rootSettings coverSheetTransitionsSettings];
    flyInSettings = [coverSheetTransitionsSettings flyInSettings];

    [flyInSettings addKeyObserver:v3];
    [(SBCoverSheetIconFlyInAnimator *)v3 _updateWithSettings:flyInSettings];
    [(SBCoverSheetIconFlyInAnimator *)v3 _createAnimatableProperties];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    timingFunction = v3->_timingFunction;
    v3->_timingFunction = v7;

    v9 = SBLogCoverSheet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v3;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "icon animator: %p init", buf, 0xCu);
    }
  }

  return v3;
}

- (CGRect)_referenceBounds
{
  folderController = [(SBCenterIconZoomAnimator *)self folderController];
  view = [folderController view];
  window = [view window];
  screen = [window screen];
  [screen bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)prepareWithVelocity:(double)velocity forFlyIn:(BOOL)in
{
  inCopy = in;
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ICON_FLY_IN_ANIMATION_LIFECYCLE", " enableTelemetry=YES  isAnimation=YES ", v36, 2u);
  }

  kdebug_trace();
  v8 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v8))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ICON_FLY_IN_ANIMATION_PREPARATION", " enableTelemetry=YES  isAnimation=YES ", v36, 2u);
  }

  kdebug_trace();
  if ((CSFeatureEnabled() & 1) == 0)
  {
    [(SBIconAnimator *)self prepare];
  }

  animationType = self->_animationType;
  v10 = 1;
  if (!inCopy)
  {
    v10 = 2;
  }

  if (animationType)
  {
    self->_isReversing = animationType != v10;
  }

  self->_animationType = v10;
  self->_velocity = velocity;
  if (inCopy)
  {
    v11 = 2.0;
  }

  else
  {
    v11 = 4.0;
  }

  spreadMultiplierAnimatableProperty = [(SBCoverSheetIconFlyInAnimator *)self spreadMultiplierAnimatableProperty];
  [spreadMultiplierAnimatableProperty setVelocity:v11 * self->_velocity];

  v13 = CSFeatureEnabled();
  if (!animationType && v13)
  {
    [(SBIconAnimator *)self prepare];
    v14 = objc_alloc(MEMORY[0x277CD9EA0]);
    v15 = [v14 initWithType:*MEMORY[0x277CDA328]];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    [v15 setValue:v16 forKey:*MEMORY[0x277CDA4F0]];

    [v15 setValue:@"low" forKey:*MEMORY[0x277CDA4E8]];
    iconListView = [(SBIconZoomAnimator *)self iconListView];
    superview = [iconListView superview];
    layer = [superview layer];

    v37[0] = v15;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [layer setFilters:v20];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

    v22 = __sb__runningInSpringBoard();
    v23 = v22;
    if (v22)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      clearColor = [MEMORY[0x277D75418] currentDevice];
      if ([clearColor userInterfaceIdiom] != 1)
      {
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }
    }

    folderController = [(SBCenterIconZoomAnimator *)self folderController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
    }

    if ((isKindOfClass & 1) == 0 || self->_floatingDockBehaviorHidingAssertion)
    {
      goto LABEL_29;
    }

    if (inCopy)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    iconListView2 = [(SBIconZoomAnimator *)self iconListView];
    _sbWindowScene = [iconListView2 _sbWindowScene];
    clearColor = [_sbWindowScene floatingDockController];

    v29 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:clearColor visibleProgress:0 animated:0 gesturePossible:11 atLevel:@"iconFlyInOutAnimator" reason:0 withCompletion:v26];
    floatingDockBehaviorHidingAssertion = self->_floatingDockBehaviorHidingAssertion;
    self->_floatingDockBehaviorHidingAssertion = v29;

    goto LABEL_28;
  }

LABEL_30:
  if (CSFeatureEnabled())
  {
    [(SBCoverSheetIconFlyInAnimator *)self _prepareToAnimateZPositions];
  }

  folderController2 = [(SBCenterIconZoomAnimator *)self folderController];
  view = [folderController2 view];
  traitOverrides = [view traitOverrides];
  v34 = objc_opt_self();
  [traitOverrides setObject:MEMORY[0x277CBEC38] forTrait:v34];

  v35 = SBLogDashBoardTelemetrySignposts();
  if (os_signpost_enabled(v35))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ICON_FLY_IN_ANIMATION_PREPARATION", " enableTelemetry=YES  isAnimation=YES ", v36, 2u);
  }

  kdebug_trace();
}

- (void)setIconSpreadFraction:(double)fraction
{
  spreadMultiplierAnimatableProperty = [(SBCoverSheetIconFlyInAnimator *)self spreadMultiplierAnimatableProperty];
  [spreadMultiplierAnimatableProperty setValue:fraction];
}

- (void)setFractionForAlphaFadeOfViews:(id)views
{
  viewsCopy = views;
  animationType = self->_animationType;
  v6 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SBCoverSheetIconFlyInAnimator_setFractionForAlphaFadeOfViews___block_invoke;
  v16[3] = &unk_2783A9F58;
  v7 = viewsCopy;
  v17 = v7;
  v18 = animationType == 1;
  if (animationType == 1)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v6 performWithoutAnimation:v16];
  v14 = 0;
  v15 = 0;
  convertDampingRatioAndResponseToTensionAndFriction();
  v9 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SBCoverSheetIconFlyInAnimator_setFractionForAlphaFadeOfViews___block_invoke_2;
  v11[3] = &unk_2783A8BC8;
  v12 = v7;
  v13 = v8;
  v10 = v7;
  [v9 _animateUsingSpringWithTension:0 friction:v11 interactive:0 animations:0.0 completion:0.0];
}

void __64__SBCoverSheetIconFlyInAnimator_setFractionForAlphaFadeOfViews___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(a1 + 40) == 1)
        {
          [*(*(&v7 + 1) + 8 * v6) setAlpha:{0.0, v7}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __64__SBCoverSheetIconFlyInAnimator_setFractionForAlphaFadeOfViews___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (CGPoint)_effectiveCenterPoint
{
  [(SBCoverSheetIconFlyInAnimator *)self _referenceBounds];
  v3 = v2 * 0.5;
  v5 = v4 * 0.5 + -16.0;
  result.y = v5;
  result.x = v3;
  return result;
}

- (void)_setAnimationFraction:(double)fraction withCenter:(CGPoint)center
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBCoverSheetIconFlyInAnimator;
  [(SBCenterIconZoomAnimator *)&v10 _setAnimationFraction:fraction withCenter:center.x, center.y];
  v6 = SBLogCoverSheet();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    fractionCopy = fraction;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "set icon animator fraction: %.2f", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBCoverSheetIconFlyInAnimator__setAnimationFraction_withCenter___block_invoke;
  v9[3] = &unk_2783A8BC8;
  v9[4] = self;
  *&v9[5] = fraction;
  LODWORD(v7) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v8) = *(MEMORY[0x277CD9DD0] + 8);
  [MEMORY[0x277D75D18] sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v9 animations:{COERCE_DOUBLE(*MEMORY[0x277CD9DD0]), v7, v8}];
}

void __66__SBCoverSheetIconFlyInAnimator__setAnimationFraction_withCenter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) labelAlphaDrivingProgressAnimatableProperty];
  [v2 setValue:*(a1 + 40)];
}

- (void)_updateDockForFraction:(double)fraction
{
  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v6 = CSFeatureEnabled();

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

LABEL_9:
    v8.receiver = self;
    v8.super_class = SBCoverSheetIconFlyInAnimator;
    [(SBCenterIconZoomAnimator *)&v8 _updateDockForFraction:fraction * 4.0];
    dockOffscreenFractionModifier = [(SBCenterIconZoomAnimator *)self dockOffscreenFractionModifier];
    [dockOffscreenFractionModifier layoutIfNeededForDockOffscreenFractionChanged];

    return;
  }

  if (SBFEffectiveDeviceClass() != 2 || (CSFeatureEnabled() & 1) == 0)
  {
    goto LABEL_9;
  }
}

- (void)_setZPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  if ((CSFeatureEnabled() & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBCoverSheetIconFlyInAnimator;
    [(SBCenterIconZoomAnimator *)&v10 _setZPositionForView:viewCopy center:x andFraction:y, fraction];
  }
}

- (double)_zPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction
{
  y = center.y;
  x = center.x;
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (CSFeatureEnabled())
  {
    v25.receiver = self;
    v25.super_class = SBCoverSheetIconFlyInAnimator;
    [(SBCenterIconZoomAnimator *)&v25 _zPositionForView:viewCopy center:x andFraction:y, fraction];
    v11 = v10;
  }

  else
  {
    iconListView = [(SBIconZoomAnimator *)self iconListView];
    [viewCopy center];
    v14 = v13;
    v16 = v15;
    superview = [viewCopy superview];
    [iconListView convertPoint:superview fromView:{v14, v16}];
    [iconListView fractionalCoordinateAtPoint:?];
    v19 = v18;
    v21 = v20;

    [(SBCoverSheetIconFlyInAnimator *)self _zPositionForPoint:v19 center:v21 andFraction:x, y, fraction];
    v11 = v22;
    v23 = SBLogCoverSheet();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v27 = viewCopy;
      v28 = 2048;
      v29 = v19;
      v30 = 2048;
      v31 = v21;
      v32 = 2048;
      v33 = v11;
      _os_log_debug_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEBUG, "extraView: %@, viewCenter: (%.2f, %.2f), zPosition: %.2f", buf, 0x2Au);
    }
  }

  return v11;
}

- (double)_zPositionForPoint:(CGPoint)point center:(CGPoint)center andFraction:(double)fraction
{
  y = center.y;
  x = center.x;
  v8 = point.y;
  v9 = point.x;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  if (x == *&SBCoverSheetIconFlyInDefaultCenter && y == unk_27CF03CB0)
  {
    [(SBCenterIconZoomAnimator *)self centerCol];
    x = v13;
    [(SBCenterIconZoomAnimator *)self centerRow];
    y = v14;
  }

  v15 = sqrt((v8 - y) * (v8 - y) + (v9 - x) * (v9 - x));
  iconRowsForCurrentOrientation = [iconListView iconRowsForCurrentOrientation];
  v17 = iconRowsForCurrentOrientation * iconRowsForCurrentOrientation;
  iconColumnsForCurrentOrientation = [iconListView iconColumnsForCurrentOrientation];
  [(SBCoverSheetIconFlyInAnimator *)self _functionWithProgress:1.0 distance:sqrt(v17 + iconColumnsForCurrentOrientation * iconColumnsForCurrentOrientation)];
  v20 = v19;
  effectMultiplier = self->_effectMultiplier;
  [(SBCoverSheetIconFlyInAnimator *)self _functionWithProgress:fraction distance:v15];
  v23 = effectMultiplier * v22 / v20;

  return v23;
}

- (void)_prepareToAnimateZPositions
{
  if (self->_animationType == 1)
  {
    v3 = 10000.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(SBCoverSheetIconFlyInAnimator *)self _referenceBounds];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBCoverSheetIconFlyInAnimator__prepareToAnimateZPositions__block_invoke;
  v8[3] = &unk_2783AE700;
  v8[4] = self;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  *&v8[9] = v3;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v8];
}

uint64_t __60__SBCoverSheetIconFlyInAnimator__prepareToAnimateZPositions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SBCoverSheetIconFlyInAnimator__prepareToAnimateZPositions__block_invoke_2;
  v3[3] = &unk_2783B5DC0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  return [v1 enumerateIconsAndIconViewsWithHandler:v3];
}

void __60__SBCoverSheetIconFlyInAnimator__prepareToAnimateZPositions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v6 = *(a1 + 64) * *(*(a1 + 32) + 288) / -200.0;
    v7 = MEMORY[0x277CCABB0];
    v8 = a3;
    v9 = [v7 numberWithDouble:v6];
    [v8 _setVelocity:v9 forKey:@"zPosition"];

    v10 = [v8 layer];

    [v10 setZPosition:*(a1 + 72)];
  }
}

- (void)animateZPositionsToFraction:(double)fraction completionGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  if (self->_animationType == 1)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 10000.0;
  }

  iconListView = [(SBIconZoomAnimator *)self iconListView];
  [(SBCoverSheetIconFlyInAnimator *)self _effectiveCenterPoint];
  v12 = v11;
  v14 = v13;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__56;
  v26[4] = __Block_byref_object_dispose__56;
  v15 = groupCopy;
  v27 = v15;
  v16 = fmin((self->_velocity + -3.0) * -0.22 / 7.0 + 0.82, 0.82);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__SBCoverSheetIconFlyInAnimator_animateZPositionsToFraction_completionGroup_completion___block_invoke;
  v18[3] = &unk_2783B5DE8;
  v17 = iconListView;
  v19 = v17;
  selfCopy = self;
  v22 = v12;
  v23 = v14;
  v21 = v26;
  v24 = v16;
  v25 = v9;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v18];

  _Block_object_dispose(v26, 8);
}

void __88__SBCoverSheetIconFlyInAnimator_animateZPositionsToFraction_completionGroup_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = v6;
  if ((a4 & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = [v6 icon];
    [v8 centerForIcon:v9];
    v11 = v10;
    v13 = v12;

    v14 = [v7 window];
    [v14 convertPoint:*(a1 + 32) fromView:{v11, v13}];
    v16 = v15;
    v18 = v17;

    [*(a1 + 40) _responseForPoint:v16 center:{v18, *(a1 + 56), *(a1 + 64)}];
    v24 = 0;
    v25 = 0;
    convertDampingRatioAndResponseToTensionAndFriction();
    dispatch_group_enter(*(*(*(a1 + 48) + 8) + 40));
    v19 = MEMORY[0x277D75D18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__SBCoverSheetIconFlyInAnimator_animateZPositionsToFraction_completionGroup_completion___block_invoke_2;
    v21[3] = &unk_2783A8BC8;
    v22 = v7;
    v23 = *(a1 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__SBCoverSheetIconFlyInAnimator_animateZPositionsToFraction_completionGroup_completion___block_invoke_3;
    v20[3] = &unk_2783AF0F0;
    v20[4] = *(a1 + 48);
    [v19 _animateUsingSpringWithTension:0 friction:v21 interactive:v20 animations:0.0 completion:0.0];
  }
}

void __88__SBCoverSheetIconFlyInAnimator_animateZPositionsToFraction_completionGroup_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setZPosition:*(a1 + 40)];
}

- (double)_responseForPoint:(CGPoint)point center:(CGPoint)center
{
  animationType = self->_animationType;
  flyZResponse = self->_flyZResponse;
  flyZCurveFactor = self->_flyZCurveFactor;
  UIDistanceBetweenPoints();
  v8 = v7;
  if (__sb__runningInSpringBoard())
  {
    v9 = dbl_21F8A6B00[SBFEffectiveDeviceClass() == 2];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v9 = dbl_21F8A6B00[[currentDevice userInterfaceIdiom] == 1];
  }

  v11 = 0.0;
  if (v8 >= 0.0)
  {
    v11 = 1.0;
    if (v8 <= v9)
    {
      v11 = v8 / v9 + 0.0;
    }
  }

  v12 = pow(v11, 3.0) / flyZCurveFactor;
  if (animationType != 1)
  {
    v12 = -v12;
  }

  return flyZResponse + v12;
}

- (void)_cleanupAnimation
{
  icons = [self icons];
  [icons count];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "icon scroll view layer opacity is still == 0 after cleanup, iconCount: %lu", v4, v5, v6, v7, 0);
}

void __50__SBCoverSheetIconFlyInAnimator__cleanupAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v3 = [*(a1 + 32) layer];
  LODWORD(v2) = 1.0;
  [v3 setOpacity:v2];
}

- (void)_updateSpreadMultiplierForPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v42 = *MEMORY[0x277D85DE8];
  if ([(SBCenterIconZoomAnimator *)self animatingIcons])
  {
    currentDevice = 320;
    spreadMultiplierAnimatableProperty = self->_spreadMultiplierAnimatableProperty;
    if (presentationCopy)
    {
      [(UIViewFloatAnimatableProperty *)spreadMultiplierAnimatableProperty presentationValue];
      v8 = v7;
      [(UIViewFloatAnimatableProperty *)self->_spreadMultiplierAnimatableProperty velocity];
      v10 = v9 * -0.7;
    }

    else
    {
      [(UIViewFloatAnimatableProperty *)spreadMultiplierAnimatableProperty value];
      v8 = v11;
      v10 = -0.0;
    }

    animationType = self->_animationType;
    v13 = __sb__runningInSpringBoard();
    v14 = v13;
    if (v13)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        goto LABEL_15;
      }
    }

    if (presentationCopy && !(animationType == 1 ? v8 <= 0.9 : v8 >= 0.95))
    {
      v32 = CSFeatureEnabled();
      v33 = v32;
      if (v14)
      {
        if (!v32)
        {
          goto LABEL_16;
        }
      }

      else
      {

        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v34 = 0.0;
      block[1] = 3221225472;
      block[0] = MEMORY[0x277D85DD0];
      block[2] = __72__SBCoverSheetIconFlyInAnimator__updateSpreadMultiplierForPresentation___block_invoke;
      block[3] = &unk_2783A8BC8;
      if (animationType == 1)
      {
        v34 = 1.0;
      }

      block[4] = self;
      *&block[5] = v34;
      dispatch_async(MEMORY[0x277D85CD0], block);
LABEL_16:
      v16 = v8 * -0.7 + 1.7;
      iconListView = [(SBIconZoomAnimator *)self iconListView];
      superview = [iconListView superview];
      v18Superview = [superview superview];

      [(SBCoverSheetIconFlyInAnimator *)self _blurRadiusForSpreadValue:v8];
      v21 = v20;
      if (presentationCopy)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
        [v18Superview _setPresentationValue:v22 forKey:@"filters.gaussianBlur.inputRadius"];

        if (animationType == 1)
        {
          if (self->_isReversing)
          {
            [v18Superview _setPresentationValue:&unk_28336F320 forKey:@"opacity"];
          }

          goto LABEL_31;
        }

        [(SBCoverSheetIconFlyInAnimator *)self _iconViewAlphaForSpreadValue:v8];
        v27 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v18Superview _setPresentationValue:v27 forKey:@"opacity"];
      }

      else
      {
        layer = [v18Superview layer];
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
        [layer setValue:v24 forKeyPath:@"filters.gaussianBlur.inputRadius"];

        if (animationType == 1)
        {
          if (!self->_isReversing)
          {
LABEL_31:
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __72__SBCoverSheetIconFlyInAnimator__updateSpreadMultiplierForPresentation___block_invoke_39;
            v35[3] = &unk_2783B5E10;
            v35[4] = self;
            *&v35[5] = v16;
            *&v35[6] = v10;
            v36 = presentationCopy;
            [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v35];

            return;
          }

          v25 = SBLogCoverSheet();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy2 = self;
            _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "icon animator %p setting icon scroll view alpha 1.0 (reversal)", buf, 0xCu);
          }

          layer2 = [v18Superview layer];
          v27 = layer2;
          LODWORD(v28) = 1.0;
        }

        else
        {
          [(SBCoverSheetIconFlyInAnimator *)self _iconViewAlphaForSpreadValue:v8];
          v30 = v29;
          v31 = SBLogCoverSheet();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            selfCopy2 = self;
            v40 = 2048;
            v41 = v30;
            _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "icon animator %p setting folder view alpha %f", buf, 0x16u);
          }

          layer2 = [v18Superview layer];
          v27 = layer2;
          *&v28 = v30;
        }

        [layer2 setOpacity:v28];
      }

      goto LABEL_31;
    }

    if (v14)
    {
      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }
}

uint64_t __72__SBCoverSheetIconFlyInAnimator__updateSpreadMultiplierForPresentation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 344) setAnimated:1];
  v2 = *(*(a1 + 32) + 344);
  v3 = *(a1 + 40);

  return [v2 modifyProgress:0 interactive:0 completion:v3];
}

void __72__SBCoverSheetIconFlyInAnimator__updateSpreadMultiplierForPresentation___block_invoke_39(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if ((a4 & 1) == 0)
  {
    v9 = [*(a1 + 32) iconListView];
    [v9 centerForIcon:v7];
    v11 = v10;
    v13 = v12;

    [*(a1 + 32) _positionForSpreadMultiplier:*(a1 + 40) point:{v11, v13}];
    v15 = v14;
    v17 = v16;
    [*(a1 + 32) _velocityForSpreadMultiplier:*(a1 + 40) spreadMultiplierVelocity:*(a1 + 48) point:{v11, v13}];
    if (*(a1 + 56) == 1)
    {
      v20 = v18;
      v21 = v19;
      *v26 = v15;
      *&v26[1] = v17;
      v22 = [MEMORY[0x277CCAE60] valueWithBytes:v26 objCType:"{CGPoint=dd}"];
      v25[0] = v20;
      v25[1] = v21;
      v23 = [MEMORY[0x277CCAE60] valueWithBytes:v25 objCType:"{CGPoint=dd}"];
      [v8 _setPresentationValue:v22 velocity:v23 preferredFrameRateRangeMaximum:120 forKey:@"position"];
    }

    else
    {
      v24 = [v8 layer];
      [v24 setPosition:{v15, v17}];
    }
  }
}

- (double)_blurRadiusForSpreadValue:(double)value
{
  v3 = 10.0;
  if (self->_animationType == 1)
  {
    v3 = 6.0;
  }

  return v3 + (0.0 - v3) * value;
}

- (CGPoint)_positionForSpreadMultiplier:(double)multiplier point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SBCoverSheetIconFlyInAnimator *)self _effectiveCenterPoint];
  v8 = v7 + (x - v7) * multiplier;
  v10 = v9 + (y - v9) * multiplier;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGPoint)_velocityForSpreadMultiplier:(double)multiplier spreadMultiplierVelocity:(double)velocity point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SBCoverSheetIconFlyInAnimator *)self _effectiveCenterPoint];
  v10 = (x - v8) * velocity;
  v11 = (y - v9) * velocity;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_updateLabelAlphaForPresentationValue:(BOOL)value
{
  valueCopy = value;
  v33 = *MEMORY[0x277D85DE8];
  if ((CSFeatureEnabled() & 1) == 0)
  {
    animationType = self->_animationType;
    if (CSFeatureEnabled())
    {
      if (![(SBCenterIconZoomAnimator *)self animatingIcons]|| animationType != 1)
      {
        return;
      }
    }

    else if (![(SBCenterIconZoomAnimator *)self animatingIcons])
    {
      return;
    }

    labelAlphaDrivingProgressAnimatableProperty = [(SBCoverSheetIconFlyInAnimator *)self labelAlphaDrivingProgressAnimatableProperty];
    v7 = labelAlphaDrivingProgressAnimatableProperty;
    if (valueCopy)
    {
      [labelAlphaDrivingProgressAnimatableProperty presentationValue];
      v9 = v8;

      [(SBCoverSheetIconFlyInAnimator *)self _labelAlphaForFraction:v9];
      v11 = v10;
      v12 = SBLogCoverSheet();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        selfCopy2 = self;
        v29 = 2048;
        v30 = v9;
        v31 = 2048;
        v32 = v11;
        _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "icon animator: %p fractionPresentationValue:\t%.2f\tlabelAlpha: %2f", buf, 0x20u);
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __71__SBCoverSheetIconFlyInAnimator__updateLabelAlphaForPresentationValue___block_invoke;
      v26[3] = &__block_descriptor_40_e34_v28__0__SBIcon_8__SBIconView_16B24l;
      *&v26[4] = v11;
      [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v26];
      pageControl = [(SBCoverSheetIconFlyInAnimator *)self pageControl];
      pageControl2 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [pageControl _setPresentationValue:pageControl2 forKey:@"opacity"];
    }

    else
    {
      [labelAlphaDrivingProgressAnimatableProperty value];
      v16 = v15;

      [(SBCoverSheetIconFlyInAnimator *)self _labelAlphaForFraction:v16];
      v18 = v17;
      v19 = SBLogCoverSheet();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        selfCopy2 = self;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v18;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_INFO, "icon animator: %p fractionModelValue:\t\t%.2f\tlabelAlpha: %2f", buf, 0x20u);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __71__SBCoverSheetIconFlyInAnimator__updateLabelAlphaForPresentationValue___block_invoke_45;
      v25[3] = &__block_descriptor_40_e34_v28__0__SBIcon_8__SBIconView_16B24l;
      *&v25[4] = v18;
      [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v25];
      folderController = [(SBCenterIconZoomAnimator *)self folderController];
      v21 = objc_opt_class();
      pageControl = folderController;
      if (v21)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = pageControl;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      isPageManagementUIVisible = [v23 isPageManagementUIVisible];
      if (isPageManagementUIVisible)
      {
        goto LABEL_21;
      }

      pageControl2 = [(SBCoverSheetIconFlyInAnimator *)self pageControl];
      [pageControl2 setAlpha:v18];
    }

LABEL_21:
  }
}

void __71__SBCoverSheetIconFlyInAnimator__updateLabelAlphaForPresentationValue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [v8 effectiveIconLabelAlpha];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v4 = [v8 labelView];
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
    [v4 _setPresentationValue:v5 forKey:@"opacity"];

    v6 = [v8 labelAccessoryView];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
    [v6 _setPresentationValue:v7 forKey:@"opacity"];
  }
}

void __71__SBCoverSheetIconFlyInAnimator__updateLabelAlphaForPresentationValue___block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [v6 effectiveIconLabelAlpha];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v4 = [v6 labelView];
    [v4 setAlpha:*(a1 + 32)];

    v5 = [v6 labelAccessoryView];
    [v5 setAlpha:*(a1 + 32)];
  }
}

- (double)_labelAlphaForFraction:(double)fraction
{
  BSIntervalSubIntervalValueForValue();
  *&v4 = v4;
  [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v4, 0, 1, 0x3FF0000000000000, 1, 0, 1, 0x3FC999999999999ALL, 1, 0, 1, 0x3FF0000000000000, 1];
  return 1.0 - v5;
}

- (void)_updateWithSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy baselineDistance];
  self->_baselineDistance = v5;
  [settingsCopy effectMultiplier];
  self->_effectMultiplier = v6;
  [settingsCopy distanceExponent];
  self->_distanceExponent = v7;
  [settingsCopy iconFlyZResponse];
  self->_flyZResponse = v8;
  [settingsCopy iconFlyZCurveFactor];
  v10 = v9;

  self->_flyZCurveFactor = v10;
}

- (double)_functionWithProgress:(double)progress distance:(double)distance
{
  v6 = exp(progress) + -1.0;
  baselineDistance = self->_baselineDistance;
  return v6 * (baselineDistance + pow(distance, self->_distanceExponent));
}

@end