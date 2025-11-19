@interface SBHomeGestureFloatingSwitcherModifier
- (BOOL)_hasPausedEnoughForFlyIn;
- (BOOL)_inMultitaskingForLocation:(CGPoint)a3 translation:(CGPoint)a4;
- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3;
- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBHomeGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 continuingGesture:(BOOL)a5 lastGestureWasAnArcSwipe:(BOOL)a6 floatingConfiguration:(int64_t)a7;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_centerYOffsetDuringGesture;
- (double)_distanceYToInSwitcherCardScale;
- (double)_distanceYToMaxTranslation;
- (double)_inSwitcherCenterYOffsetWhenPresented;
- (double)_scaleForTranslation:(CGPoint)a3;
- (double)_switcherCardScale;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)unconditionalDistanceThresholdForHome;
- (id)_layoutSettingsForAppLayout:(id)a3 layoutSettings:(id)a4;
- (id)_responseForActivatingFinalDestination:(int64_t)a3;
- (id)_updateForGestureDidBeginWithEvent:(id)a3;
- (id)_updateForGestureDidChangeWithEvent:(id)a3;
- (id)_updateForGestureDidEndWithEvent:(id)a3;
- (id)_updateInMultitaskingIfNeededWithEvent:(id)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleAppLayouts;
- (unint64_t)_selectedAppLayoutIndex;
- (unint64_t)slideOverTongueDirection;
- (void)_applyPrototypeSettings;
- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_beginAnimatingRampingPropertyWithSettings:(id)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBHomeGestureFloatingSwitcherModifier

- (SBHomeGestureFloatingSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 continuingGesture:(BOOL)a5 lastGestureWasAnArcSwipe:(BOOL)a6 floatingConfiguration:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  if (!v13)
  {
    [SBHomeGestureFloatingSwitcherModifier initWithGestureID:selectedAppLayout:continuingGesture:lastGestureWasAnArcSwipe:floatingConfiguration:];
  }

  v21.receiver = self;
  v21.super_class = SBHomeGestureFloatingSwitcherModifier;
  v14 = [(SBGestureSwitcherModifier *)&v21 initWithGestureID:v12];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_selectedAppLayout, a4);
    v15->_continuingGesture = a5;
    v15->_lastGestureWasAnArcSwipe = a6;
    v15->_floatingConfiguration = a7;
    v16 = objc_alloc_init(SBStackedFloatingSwitcherModifier);
    stackedLayoutModifier = v15->_stackedLayoutModifier;
    v15->_stackedLayoutModifier = v16;

    v18 = objc_alloc_init(SBDismissSiriSwitcherModifier);
    dismissSiriModifier = v15->_dismissSiriModifier;
    v15->_dismissSiriModifier = v18;

    [(SBChainableModifier *)v15 addChildModifier:v15->_dismissSiriModifier];
  }

  return v15;
}

- (void)didMoveToParentModifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBHomeGestureFloatingSwitcherModifier;
  [(SBChainableModifier *)&v10 didMoveToParentModifier:?];
  if (a3)
  {
    if (!self->_finalDestinationModifier)
    {
      v5 = [SBHomeGestureFinalDestinationSwitcherModifier alloc];
      v6 = [(SBHomeGestureFloatingSwitcherModifier *)self homeGestureSettings];
      [v6 minimumYDistanceForHomeOrAppSwitcher];
      v8 = [(SBHomeGestureFinalDestinationSwitcherModifier *)v5 initWithDelegate:self initialTranslationAdjustment:3 minYDistanceForHomeOrSwitcher:self->_continuingGesture startingEnvironmentMode:0 continuingGesture:*MEMORY[0x277CBF348] dockModifier:*(MEMORY[0x277CBF348] + 8), v7];
      finalDestinationModifier = self->_finalDestinationModifier;
      self->_finalDestinationModifier = v8;

      [(SBChainableModifier *)self addChildModifier:self->_finalDestinationModifier];
    }

    [(SBHomeGestureFloatingSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleHomeGestureSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBHomeGestureFloatingSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureFloatingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureFloatingSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBHomeGestureFloatingSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBHomeGestureFloatingSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBHomeGestureFloatingSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBHomeGestureFloatingSwitcherModifier.m" lineNumber:179 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBHomeGestureFloatingSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
  }

  v8 = v9;
LABEL_11:
  v11 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v6];

  return v11;
}

- (id)_updateForGestureDidBeginWithEvent:(id)a3
{
  v4 = a3;
  if (self->_gestureHasBegun)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v6;

  v8 = self->_displayLink;
  v9 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x277CBE738]];

  self->_inMultitasking = 0;
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  [v4 locationInContainerView];
  v11 = v10;
  v13 = v12;
  UIRectGetCenter();
  self->_touchOffset.x = v11 - v14;
  self->_touchOffset.y = v13 - v15;
  self->_initialTouchLocation.x = v11;
  self->_initialTouchLocation.y = v13;
  self->_lastTouchLocation.x = v11;
  self->_lastTouchLocation.y = v13;
  [(SBHomeGestureFloatingSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  v16 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBChainableModifierEventResponse *)v5 addChildResponse:v16];
  if (self->_continuingGesture && (-[SBHomeGestureFloatingSwitcherModifier appLayouts](self, "appLayouts"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, v18 >= 2))
  {
    v19 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
    v20 = [(SBUpdateLayoutSwitcherEventResponse *)v19 animationSettings];
    v21 = [v20 layoutSettings];
    [(SBHomeGestureFloatingSwitcherModifier *)self _beginAnimatingRampingPropertyWithSettings:v21];
  }

  else
  {
    v19 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:2];
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v19];
  }

  return v5;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBHomeGestureFloatingSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  if ([(SBHomeGestureFloatingSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:self->_translation.y])
  {
    self->_gestureHoldTimer = 0;
  }

  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  [v4 locationInContainerView];
  v7 = v6;
  v9 = v8;
  v10 = [(SBHomeGestureFloatingSwitcherModifier *)self _updateInMultitaskingIfNeededWithEvent:v4];
  if (v10)
  {
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v10];
  }

  self->_lastTouchLocation.x = v7;
  self->_lastTouchLocation.y = v9;

  return v5;
}

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFloatingSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  [(SBHomeGestureFloatingSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_gestureLiftOffVelocity = self->_velocity;
  self->_gestureLiftOffTranslation = self->_translation;
  [v4 locationInContainerView];
  self->_lastTouchLocation.x = v6;
  self->_lastTouchLocation.y = v7;
  v8 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v9 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier finalDestinationReason];
  v10 = objc_alloc_init(SBSwitcherModifierEventResponse);
  if (([v4 isCanceled] & 1) == 0 && objc_msgSend(v4, "touchType") == 1)
  {
    v11 = [(SBHomeGestureFloatingSwitcherModifier *)self homeGestureSettings];
    v12 = v11;
    if (v8 == 4 && self->_selectedAppLayout && [v11 injectGestureVelocityForZoomDown])
    {
      v13 = [(SBHomeGestureFloatingSwitcherModifier *)self visibleAppLayouts];
      [v4 velocityInContainerView];
      v15 = v14;
      v17 = v16;
      [(SBHomeGestureFloatingSwitcherModifier *)self switcherViewBounds];
      v19 = v18;
      v20 = [(SBHomeGestureFloatingSwitcherModifier *)self homeGestureSettings];
      v21 = [(SBHomeGestureFloatingSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"transform"];
      v22 = v21;
      if (v21)
      {
        [v21 CATransform3DValue];
        CATransform3DGetAffineTransform(&v81, &v84);
        a = v81.a;
      }

      else
      {
        a = 0.0;
      }

      [v20 scaleVelocityPercentOfGestureVelocityYDividedByViewHeight];
      v25 = v17 / v19 * v24;
      if ([v20 onlyInjectVelocityForShortFlicks] && fabs(a / v25) >= 0.15)
      {
        v26 = 0;
      }

      else
      {
        v71 = self;
        v65 = v22;
        v67 = v9;
        v68 = v10;
        v69 = v4;
        v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
        v70 = v20;
        [v20 maximumScaleVelocity];
        memset(&v84, 0, sizeof(v84));
        SBVelocityMatrixForUniform2DScaling();
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v66 = v13;
        v27 = v13;
        v28 = [v27 countByEnumeratingWithState:&v77 objects:v83 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v78;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v78 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v77 + 1) + 8 * i);
              v33 = [SBInjectVelocitySwitcherEventResponse alloc];
              v76 = v84;
              v34 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v76];
              v35 = [(SBInjectVelocitySwitcherEventResponse *)v33 initWithVelocity:v34 forKey:@"transform" appLayout:v32];
              [v26 addObject:v35];
            }

            v29 = [v27 countByEnumeratingWithState:&v77 objects:v83 count:16];
          }

          while (v29);
        }

        v36 = [(SBHomeGestureFloatingSwitcherModifier *)v71 currentVelocityValueForVisibleAppLayout:v71->_selectedAppLayout key:@"position"];
        v63 = v36;
        if (v36)
        {
          [v36 CGPointValue];
          v38 = v37;
          v40 = v39;
        }

        else
        {
          v38 = *MEMORY[0x277CBF348];
          v40 = *(MEMORY[0x277CBF348] + 8);
        }

        [v70 positionVelocityXPercentOfGestureVelocityX];
        v42 = v41;
        [v70 positionVelocityYPercentOfGestureVelocityY];
        v44 = v43;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v45 = v27;
        v46 = [v45 countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = fabs(v38);
          if (fabs(v15) >= v48)
          {
            v49 = v15;
          }

          else
          {
            v49 = v38;
          }

          if (fabs(v49) >= v48)
          {
            v50 = v17;
          }

          else
          {
            v50 = v40;
          }

          v51 = v44 * v50;
          v52 = v42 * v49;
          v53 = *v73;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v73 != v53)
              {
                objc_enumerationMutation(v45);
              }

              v55 = *(*(&v72 + 1) + 8 * j);
              v56 = [SBInjectVelocitySwitcherEventResponse alloc];
              v57 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v52, v51}];
              v58 = [(SBInjectVelocitySwitcherEventResponse *)v56 initWithVelocity:v57 forKey:@"position" appLayout:v55];
              [v26 addObject:v58];
            }

            v47 = [v45 countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v47);
        }

        v10 = v68;
        v4 = v69;
        v20 = v70;
        self = v71;
        v8 = 4;
        v9 = v67;
        v13 = v66;
        v22 = v65;
      }

      if ([v26 count])
      {
        [(SBChainableModifierEventResponse *)v10 addChildResponses:v26];
      }
    }
  }

  v59 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    v60 = NSStringFromSBHomeGestureFinalDestination(v8);
    LODWORD(v84.m11) = 138412802;
    *(&v84.m11 + 4) = v60;
    WORD2(v84.m12) = 2048;
    *(&v84.m12 + 6) = v8;
    HIWORD(v84.m13) = 2112;
    *&v84.m14 = v9;
    _os_log_impl(&dword_21ED4E000, v59, OS_LOG_TYPE_INFO, "Floating Home Gesture Modifier - Final Response: %@ (%lu), Reason: %@", &v84, 0x20u);
  }

  v61 = [(SBHomeGestureFloatingSwitcherModifier *)self _responseForActivatingFinalDestination:v8];
  [(SBChainableModifierEventResponse *)v10 addChildResponse:v61];

  return v10;
}

- (void)_beginAnimatingRampingPropertyWithSettings:(id)a3
{
  v4 = a3;
  rampingProperty = self->_rampingProperty;
  if (rampingProperty)
  {
    [(UIViewFloatAnimatableProperty *)rampingProperty invalidate];
    v6 = self->_rampingProperty;
    self->_rampingProperty = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x277D75D38]);
  v8 = self->_rampingProperty;
  self->_rampingProperty = v7;

  [(UIViewFloatAnimatableProperty *)self->_rampingProperty setValue:0.0];
  objc_initWeak(&location, self);
  v9 = self->_rampingProperty;
  v10 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__SBHomeGestureFloatingSwitcherModifier__beginAnimatingRampingPropertyWithSettings___block_invoke;
  v15[3] = &unk_2783A8C18;
  v15[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SBHomeGestureFloatingSwitcherModifier__beginAnimatingRampingPropertyWithSettings___block_invoke_2;
  v12[3] = &unk_2783AF0A0;
  objc_copyWeak(&v14, &location);
  v11 = v9;
  v13 = v11;
  [v10 sb_animateWithSettings:v4 mode:3 animations:v15 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __84__SBHomeGestureFloatingSwitcherModifier__beginAnimatingRampingPropertyWithSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[28];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[28];
      v6[28] = 0;
    }

    WeakRetained = v6;
  }
}

- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3
{
  v4 = a3;
  [v4 translationInContainerView];
  v6 = v5 + self->_translationAdjustmentForStartingFromSwitcher.x + self->_translationAdjustmentForStartingFromHomeScreen.x;
  v8 = v7 + self->_translationAdjustmentForStartingFromSwitcher.y + self->_translationAdjustmentForStartingFromHomeScreen.y;
  [(SBHomeGestureFloatingSwitcherModifier *)self _distanceYToInSwitcherCardScale];
  v10 = -v8 / v9;
  [(SBHomeGestureFloatingSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v8];
  self->_translation.x = v6;
  self->_translation.y = v8;
  self->_progressToInSwitcherCardScale = v10;
  self->_progressToMaxTranslation = v11;
  [v4 lastTouchTimestamp];
  self->_lastTouchTimestamp = v12;
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  if ([(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled])
  {
    v15 = -v6;
  }

  else
  {
    v15 = v6;
  }

  [(SBHomeGestureFloatingSwitcherModifier *)self scaleForIndex:0];
  v17 = v16;
  v18 = v16 * v14 * -0.55;
  if (v15 < v18)
  {
    BSUIConstrainValueWithRubberBand();
    v15 = v18 - v19;
  }

  v20 = v14 * v17 * 0.55;
  if (v15 > v20)
  {
    BSUIConstrainValueWithRubberBand();
    v15 = v20 + v21;
  }

  v22 = [(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled];
  v23 = -v15;
  if (!v22)
  {
    v23 = v15;
  }

  self->_translation.x = v23;
  self->_translation.y = v8;
  [v4 averageTouchVelocityOverTimeDuration:0.0416666667];
  self->_velocity.x = v24;
  self->_velocity.y = v25;
  BSUIConstrainValueToIntervalWithRubberBand();
  self->_rubberbandedYTranslation = v26;
  self->_scaleProgress = v26 / 475.0 + 0.0;
  self->_multitaskingHintProgress = self->_rubberbandedYTranslation / 150.0 + 0.0;
}

- (double)unconditionalDistanceThresholdForHome
{
  v3 = *&kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_1;
  v4 = *&kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_1;
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  result = v3 * v5;
  if (self->_hasTriggeredCardFlyIn)
  {
    v7 = result - v4 * v5;
    result = result + v4 * v5;
    if (v7 < 100.0 - self->_translationYWhenTriggeredCardFlyIn)
    {
      v7 = 100.0 - self->_translationYWhenTriggeredCardFlyIn;
    }

    if (result > v7)
    {
      result = v7;
    }

    if (!self->_inMultitasking)
    {
      return result + -50.0;
    }
  }

  return result;
}

- (id)_responseForActivatingFinalDestination:(int64_t)a3
{
  v5 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v6 = v5;
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v18 = self->_selectedAppLayout;
      goto LABEL_29;
    }

    v9 = 0;
    if (a3 != 1)
    {
      goto LABEL_30;
    }

    v12 = [v5 indexOfObject:self->_selectedAppLayout];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v12;
      if ([v6 count])
      {
        if (!v7)
        {
          v9 = [v6 lastObject];
          goto LABEL_30;
        }

        if (v7 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        goto LABEL_25;
      }
    }

LABEL_26:
    v7 = 0;
    v9 = 0;
    goto LABEL_30;
  }

  if (a3 == 2)
  {
    v15 = [v5 indexOfObject:self->_selectedAppLayout];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if ([v6 count])
      {
        v17 = [v6 count];
        if (v16 + 1 < v17 - 1)
        {
          v14 = v16 + 1;
        }

        else
        {
          v14 = v17 - 1;
        }

LABEL_25:
        v18 = [v6 objectAtIndex:v14];
LABEL_29:
        v9 = v18;
        v7 = 0;
        goto LABEL_30;
      }
    }

    goto LABEL_26;
  }

  if (a3 == 3)
  {
    v9 = self->_selectedAppLayout;
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = 0;
    if (a3 == 4)
    {
      floatingConfiguration = self->_floatingConfiguration;
      v11 = 4;
      if (floatingConfiguration != 2)
      {
        v11 = 0;
      }

      if (floatingConfiguration == 1)
      {
        v7 = 3;
      }

      else
      {
        v7 = v11;
      }

      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = 0;
    }
  }

LABEL_30:
  v19 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v19 setAppLayout:v9];
  [(SBSwitcherTransitionRequest *)v19 setFloatingSwitcherVisible:v8];
  [(SBSwitcherTransitionRequest *)v19 setFloatingConfiguration:v7];
  v20 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v19 gestureInitiated:1];

  return v20;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBHomeGestureFloatingSwitcherModifier;
  v5 = [(SBHomeGestureFloatingSwitcherModifier *)&v16 adjustedAppLayoutsForAppLayouts:v4];
  if (-[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") != 3 && [v4 count] >= 5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [v4 indexOfObject:self->_selectedAppLayout];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0)
    {
      [v6 addObjectsFromArray:v4];
    }

    else
    {
      v9 = v7;
      v10 = [v4 subarrayWithRange:{v9, objc_msgSend(v4, "count") - v9}];
      [v6 addObjectsFromArray:v10];

      v11 = [v4 subarrayWithRange:{0, v9}];
      [v6 addObjectsFromArray:v11];
    }

    v12 = [v6 subarrayWithRange:{0, 3}];
    v13 = [v12 mutableCopy];

    v14 = [v6 lastObject];
    [v13 addObject:v14];

    v5 = v13;
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  stackedLayoutModifier = self->_stackedLayoutModifier;
  v35 = *MEMORY[0x277CBF3A0];
  v36 = v5;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__SBHomeGestureFloatingSwitcherModifier_frameForIndex___block_invoke;
  v30[3] = &unk_2783AA618;
  v30[4] = self;
  v30[5] = &v31;
  v30[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:stackedLayoutModifier usingBlock:v30];
  [(SBHomeGestureFloatingSwitcherModifier *)self _frameOffsetForTranslation:self->_translation.x, self->_translation.y];
  v8 = v7;
  v10 = v9;
  if (![(SBHomeGestureFloatingSwitcherModifier *)self _isSelectedAppLayoutAtIndex:a3]&& self->_inMultitasking)
  {
    x = self->_translation.x;
    if ([(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled])
    {
      x = -x;
    }

    multitaskingHintProgress = self->_multitaskingHintProgress;
    v13 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v14 = x * -0.4;
    v15 = [v13 count] - 1;

    v16 = (v14 + -70.0) * multitaskingHintProgress + (1.0 - multitaskingHintProgress) * v14;
    if (x >= 0.0)
    {
      x = (v14 * 0.25 + -105.0) * multitaskingHintProgress + (1.0 - multitaskingHintProgress) * v14;
      v19 = x;
    }

    else
    {
      v17 = (v14 + -70.0) * multitaskingHintProgress + (1.0 - multitaskingHintProgress) * v14;
      if (v15 != 1)
      {
        v17 = (v14 + -70.0) * multitaskingHintProgress + (1.0 - multitaskingHintProgress) * v14;
        if (v16 > x)
        {
          BSUIConstrainValueWithRubberBand();
          v17 = x + v18;
        }
      }

      v19 = v16 + multitaskingHintProgress * -35.0;
      if (v19 <= x)
      {
        x = v19;
      }

      v16 = v17;
    }

    v20 = [(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled];
    if (v15 == a3)
    {
      v21 = v19;
    }

    else
    {
      v21 = x;
    }

    if (a3 == 1)
    {
      v21 = v16;
    }

    if (v20)
    {
      v8 = -v21;
    }

    else
    {
      v8 = v21;
    }
  }

  v37 = CGRectOffset(v32[1], v8, v10);
  v22 = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v32[1] = v37;
  _Block_object_dispose(&v31, 8);
  v26 = v22;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

uint64_t __55__SBHomeGestureFloatingSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 152) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBHomeGestureFloatingSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?])
  {
    x = self->_translation.x;
    y = self->_translation.y;

    [(SBHomeGestureFloatingSwitcherModifier *)self _scaleForTranslation:x, y];
  }

  else
  {
    v8 = 2;
    if (a3 < 2)
    {
      v8 = a3;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    stackedLayoutModifier = self->_stackedLayoutModifier;
    v16 = 0x3FF0000000000000;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__SBHomeGestureFloatingSwitcherModifier_scaleForIndex___block_invoke;
    v12[3] = &unk_2783AA618;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:stackedLayoutModifier usingBlock:v12];
    [(SBHomeGestureFloatingSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
    v11 = v10 * v14[3];
    v14[3] = v11;
    _Block_object_dispose(&v13, 8);
    return v11;
  }

  return result;
}

uint64_t __55__SBHomeGestureFloatingSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 152) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (id)visibleAppLayouts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  if ([v4 count])
  {
    v5 = [v4 count] - 1;
    if (v5 >= 2)
    {
      v5 = 2;
    }

    v6 = [v4 subarrayWithRange:{0, v5 + 1}];
    [v3 addObjectsFromArray:v6];

    v7 = [v4 lastObject];
    [v3 addObject:v7];
  }

  return v3;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v3 = [(SBHomeGestureFloatingSwitcherModifier *)self medusaSettings];
  [v3 cornerRadiusForFloatingApps];
  SBRectCornerRadiiForRadius();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.topRight = v15;
  result.bottomRight = v14;
  result.bottomLeft = v13;
  result.topLeft = v12;
  return result;
}

- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3
{
  x = a3.x;
  v6 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [(SBHomeGestureFloatingSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:a3.y];
  v8 = v7;
  [(SBHomeGestureFloatingSwitcherModifier *)self _centerYOffsetDuringGesture];
  v10 = v5 + v8 * v9 + 0.0;
  [(SBHomeGestureFloatingSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v12 = v11;
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  v14 = x + v6 + self->_touchOffset.x / (v13 * 0.5) * ((v13 - v12 * v13) * 0.5);
  v15 = v10;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)_scaleForTranslation:(CGPoint)a3
{
  [(SBHomeGestureFloatingSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:a3.y];
  result = 1.0 - v3;
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result >= 0.4)
  {
    if (result > 1.0)
    {
      BSUIConstrainValueWithRubberBand();
      return v6 + 1.0;
    }
  }

  else
  {
    BSUIConstrainValueWithRubberBand();
    return 0.4 - v5;
  }

  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v7 = [v6 indexOfObject:v5];

  v8 = fabs(self->_translation.x);
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  v10 = v8 / (v9 / 1.5);
  v11 = 0.0;
  if (v10 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v10 + 0.0;
  }

  v13 = [(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled];
  x = self->_translation.x;
  if (v13)
  {
    x = -x;
  }

  if (x >= 0.0)
  {
    v16 = 1;
    if (!v7)
    {
      return v11;
    }
  }

  else
  {
    v15 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v16 = [v15 count] - 1;

    if (!v7)
    {
      return v11;
    }
  }

  if (v7 == v16)
  {
    v17 = fmin(v12, 1.0);
    return v17 * 0.0 + (1.0 - v17) * 0.05625;
  }

  return 0.075;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  if (!a4)
  {
    return 1.0;
  }

  v5 = 0.0;
  if (self->_inMultitasking)
  {
    v7 = fabs(self->_translation.x);
    [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
    v9 = v7 / (v8 * 0.25);
    v10 = v9 <= 0.0 ? 0.0 : v9 + 0.0;
    v11 = fmin(fmax(fmin(v10, 1.0) + self->_multitaskingHintProgress, 0.0), 1.0);
    v5 = v11 * 0.75 + (1.0 - v11) * 0.0;
    v12 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v13 = [v12 count];

    if (v13 >= 4)
    {
      v14 = [(SBHomeGestureFloatingSwitcherModifier *)self isRTLEnabled];
      x = self->_translation.x;
      if (v14)
      {
        x = -x;
      }

      if (x >= 0.0 && v13 - 1 == a4)
      {
        return 0.0;
      }

      if (x < 0.0 && v13 - 2 == a4)
      {
        return 0.0;
      }
    }
  }

  return v5;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
{
  result = 0.0;
  if (!a3)
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v3;
    v23 = v4;
    v11 = fabs(self->_translation.x);
    [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
    v13 = v11 / (v12 * 0.25);
    if (v13 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13 + 0.0;
    }

    v15 = fmin(fmax(fmin(v14, 1.0) + self->_multitaskingHintProgress, 0.0), 1.0);
    v17.receiver = self;
    v17.super_class = SBHomeGestureFloatingSwitcherModifier;
    [(SBHomeGestureFloatingSwitcherModifier *)&v17 shadowOffsetForIndex:0];
    return (1.0 - v15) * v16 + 0.0;
  }

  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  if (self->_selectedAppLayout)
  {
    v3 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v4 = [v3 indexOfObject:self->_selectedAppLayout];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
  v6 = [v5 numberOfSnapshotsToCacheInSwitcher];

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v4 numberOfSnapshotsToCache:1 biasForward:v6, 1];
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SBHomeGestureFloatingSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v24 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType])
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 layoutSettings];
    v8 = [(SBHomeGestureFloatingSwitcherModifier *)self _layoutSettingsForAppLayout:v4 layoutSettings:v7];
    [v6 setLayoutSettings:v8];

    v5 = v6;
  }

  if (self->_rampingProperty && ![v4 switcherLayoutElementType])
  {
    v9 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
    v10 = [v9 count];
    v11 = [v9 indexOfObject:v4];
    if (v10 >= 2 && v11 == v10 - 1)
    {
      v12 = [v5 mutableCopy];
      v23 = [v12 layoutSettings];
      v13 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
      v14 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
      v15 = [v14 animationSettings];
      v16 = [v15 arcSwipeSettings];

      [(UIViewFloatAnimatableProperty *)self->_rampingProperty presentationValue];
      v18 = v17;
      [v16 response];
      v20 = v19;
      [v23 trackingResponse];
      [v13 setTrackingResponse:v18 * v21 + (1.0 - v18) * v20];
      [v16 dampingRatio];
      [v13 setTrackingDampingRatio:?];
      v26 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      [v13 setFrameRateRange:1114113 highFrameRateReason:{*&v26.minimum, *&v26.maximum, *&v26.preferred}];
      [v12 setLayoutSettings:v13];

      v5 = v12;
    }
  }

  return v5;
}

- (id)_layoutSettingsForAppLayout:(id)a3 layoutSettings:(id)a4
{
  v6 = a4;
  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:a3]|| !self->_inMultitaskingChangedProperty)
  {
    v10 = v6;
  }

  else
  {
    v7 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
    v8 = [v7 animationSettings];
    v9 = [v8 cardFlyInSettings];

    v10 = objc_alloc_init(MEMORY[0x277D65E60]);
    [v10 setDefaultValues];
    v11 = 0.0;
    if (self->_inMultitasking)
    {
      [(UIViewFloatAnimatableProperty *)self->_inMultitaskingChangedProperty presentationValue];
      v13 = v12;
      v14 = fabs(self->_translation.x);
      [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
      v16 = v14 / v15;
      v17 = v14 / v15 + 0.0;
      if (v16 <= 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = v17;
      }

      v11 = fmin(fmax(1.0 - (1.0 - v13) * (1.0 - fmin(v18, 1.0)), 0.0), 1.0);
    }

    [v6 trackingResponse];
    v20 = v19;
    [v9 response];
    v22 = v11 * (v20 - v21);
    [v9 response];
    [v10 setTrackingResponse:v23 + v22];
    [v6 dampingRatio];
    [v10 setTrackingDampingRatio:?];
    v26 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v10 setFrameRateRange:1114113 highFrameRateReason:{*&v26.minimum, *&v26.maximum, *&v26.preferred}];
  }

  return v10;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283371978];

  return v6;
}

- (unint64_t)slideOverTongueDirection
{
  if (SBFloatingConfigurationIsLeft(self->_floatingConfiguration))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_updateInMultitaskingIfNeededWithEvent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  inMultitasking = self->_inMultitasking;
  [v4 locationInContainerView];
  v8 = v7;
  v10 = v9;

  v11 = [(SBHomeGestureFloatingSwitcherModifier *)self _inMultitaskingForLocation:v8 translation:v10, self->_translation.x, self->_translation.y];
  self->_inMultitasking = v11;
  if (inMultitasking != v11)
  {
    if (v11)
    {
      self->_hasTriggeredCardFlyIn = 1;
      self->_translationYWhenTriggeredCardFlyIn = self->_translation.y;
    }

    v12 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
    v13 = [v12 animationSettings];
    v14 = [v13 layoutSettings];
    [(SBHomeGestureFloatingSwitcherModifier *)self _beginAnimatingMultitaskingPropertyWithMode:3 settings:v14];
  }

  return v5;
}

- (BOOL)_hasPausedEnoughForFlyIn
{
  if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier hasSeenAccelerationDipForAppSwitcher])
  {
    return 1;
  }

  v4 = *&kCardFlyInDelayAfterEnteringAppSwitcher_0;
  return self->_gestureHoldTimer > (v4 * SBScreenMaximumFramesPerSecond());
}

- (void)_displayLinkFired:(id)a3
{
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 2)
  {
    [(SBHomeGestureFloatingSwitcherModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
    v4 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
    if (v4)
    {
      v5 = v4 == 4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      self->_gestureHoldTimer = 0;
    }

    else if (v4 == 3 && BSFloatLessThanFloat())
    {
      ++self->_gestureHoldTimer;
    }

    if (!self->_inMultitasking && [(SBHomeGestureFloatingSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {

      [(SBHomeGestureFloatingSwitcherModifier *)self gestureHandlingModifierRequestsUpdate:self];
    }
  }
}

- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4
{
  v6 = a4;
  inMultitaskingChangedProperty = self->_inMultitaskingChangedProperty;
  if (inMultitaskingChangedProperty)
  {
    [(UIViewFloatAnimatableProperty *)inMultitaskingChangedProperty invalidate];
    v8 = self->_inMultitaskingChangedProperty;
    self->_inMultitaskingChangedProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_inMultitaskingChangedProperty;
  self->_inMultitaskingChangedProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_inMultitaskingChangedProperty setValue:0.0];
  v11 = [v6 copy];
  LODWORD(v12) = *MEMORY[0x277CD9DD0];
  LODWORD(v13) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v14) = *(MEMORY[0x277CD9DD0] + 8);
  [v11 setFrameRateRange:0 highFrameRateReason:{v12, v13, v14}];
  v15 = v11;

  objc_initWeak(&location, self);
  v16 = self->_inMultitaskingChangedProperty;
  v17 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__SBHomeGestureFloatingSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__SBHomeGestureFloatingSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __94__SBHomeGestureFloatingSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[30];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[30];
      v6[30] = 0;
    }

    WeakRetained = v6;
  }
}

- (BOOL)_inMultitaskingForLocation:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  inMultitasking = self->_inMultitasking;
  v8 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination:a3.x];
  v9 = (v8 - 1) < 2 || inMultitasking;
  v10 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v11 = [v10 count];

  v13 = fabs(x) > fabs(y) && v8 != 4;
  v14 = v13 || v9;
  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = [(SBHomeGestureFloatingSwitcherModifier *)self _hasPausedEnoughForFlyIn]|| v15;
  return ![(SBHomeGestureFloatingSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:y]& v16;
}

- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3
{
  v3 = -a3;
  [(SBHomeGestureFloatingSwitcherModifier *)self unconditionalDistanceThresholdForHome];
  return v4 < v3;
}

- (double)_distanceYToInSwitcherCardScale
{
  [(SBHomeGestureFloatingSwitcherModifier *)self _switcherCardScale];
  v4 = v3;
  [(SBHomeGestureFloatingSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  v6 = v5;
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  return (1.0 - v4) * v7 * 0.5 - v6;
}

- (double)_distanceYToMaxTranslation
{
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  [(SBHomeGestureFloatingSwitcherModifier *)self _centerYOffsetDuringGesture];
  return v4 * 0.5 - v5;
}

- (double)_inSwitcherCenterYOffsetWhenPresented
{
  v3 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
  [v3 switcherCenterYOffsetPercentOfScreenHeight];

  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  [(SBHomeGestureFloatingSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_centerYOffsetDuringGesture
{
  v3 = [(SBHomeGestureFloatingSwitcherModifier *)self homeGestureSettings];
  [v3 homeGestureCenterZoomDownCenterYOffsetFactor];
  [(SBHomeGestureFloatingSwitcherModifier *)self containerViewBounds];
  [(SBHomeGestureFloatingSwitcherModifier *)self screenScale];
  BSFloatRoundForScale();
  v5 = v4;

  return v5;
}

- (double)_switcherCardScale
{
  v2 = [(SBHomeGestureFloatingSwitcherModifier *)self switcherSettings];
  [v2 deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

- (unint64_t)_selectedAppLayoutIndex
{
  v3 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v4 = v3;
  if (v3 && self->_selectedAppLayout)
  {
    v5 = [v3 indexOfObject:?];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBHomeGestureFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_selectedAppLayout];
  return v4;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  v9 = [(SBHomeGestureFloatingSwitcherModifier *)self homeGestureSettings];
  [v9 normalizedDistanceYThresholdForUnconditionalHomeInSlideOver];
  kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_1 = v4;
  [v9 normalizedDistanceYThresholdRangeForUnconditionalHomeInSlideOver];
  kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_1 = v5;
  [v9 pauseVelocityThresholdForAppSwitcher];
  [v9 velocityXThresholdForUnconditionalArcSwipe];
  [v9 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher_2 = v3 * v6;
  [v9 cardFlyInMaximumVelocityThreshold];
  *&kCardFlyInMaximumVelocityThreshold_1 = v3 * v7;
  [v9 cardFlyInDelayAfterEnteringAppSwitcher];
  kCardFlyInDelayAfterEnteringAppSwitcher_0 = v8;
}

- (void)initWithGestureID:selectedAppLayout:continuingGesture:lastGestureWasAnArcSwipe:floatingConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"selectedAppLayout" object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidBeginWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidBeginWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidChangeWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidChangeWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidEndWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidEndWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end