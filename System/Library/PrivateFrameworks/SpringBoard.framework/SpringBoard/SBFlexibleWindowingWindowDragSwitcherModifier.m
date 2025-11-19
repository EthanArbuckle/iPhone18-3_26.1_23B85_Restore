@interface SBFlexibleWindowingWindowDragSwitcherModifier
- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_isStripStashed;
- (BOOL)_shouldLockYPosition;
- (BOOL)_slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:(CGPoint)a3;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3;
- (BOOL)wantsSlideOverTongue;
- (CGPoint)_draggingItemScreenCenterForSize:(CGSize)a3 scale:(double)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)preferredCenterForSelectedItemInDestinationModifier:(id)a3 clippingToInitialStageArea:(BOOL)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBFlexibleWindowingWindowDragSwitcherModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 wantsSlideOverTongue:(BOOL)a6 slideOverTongueState:(unint64_t)a7 slideOverTongueDirection:(unint64_t)a8;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)continuousExposeStripProgress;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (id)_appLayoutContainingDisplayItem:(id)a3;
- (id)_baseLayoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)appLayoutToAttachSlideOverTongue;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (void)_beginAnimatingAnchorPointRampingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)didMoveToParentModifier:(id)a3;
- (void)updateProposedAppLayoutWithAppLayout:(id)a3 andInitialAppLayout:(id)a4;
@end

@implementation SBFlexibleWindowingWindowDragSwitcherModifier

- (SBFlexibleWindowingWindowDragSwitcherModifier)initWithGestureID:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 wantsSlideOverTongue:(BOOL)a6 slideOverTongueState:(unint64_t)a7 slideOverTongueDirection:(unint64_t)a8
{
  v16 = a4;
  v17 = a5;
  v27.receiver = self;
  v27.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v18 = [(SBGestureSwitcherModifier *)&v27 initWithGestureID:a3];
  if (v18)
  {
    if (v17)
    {
      if (v16)
      {
LABEL_4:
        objc_storeStrong(v18 + 68, a4);
        objc_storeStrong(v18 + 69, a5);
        v18[520] = a6;
        *(v18 + 66) = a7;
        *(v18 + 67) = a8;
        *(v18 + 200) = SBInvalidPoint;
        *(v18 + 232) = SBInvalidPoint;
        v18[320] = [*(v18 + 68) containsItem:*(v18 + 69)];
        v19 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:*(v18 + 69)];
        [v18 addChildModifier:v19];
        v20 = [[SBContinuousExposeWindowDragDestinationSwitcherModifier alloc] initWithSelectedDisplayItem:*(v18 + 69) initialAppLayout:*(v18 + 68) delegate:v18];
        v21 = *(v18 + 42);
        *(v18 + 42) = v20;

        [v18 addChildModifier:*(v18 + 42)];
        v22 = objc_alloc_init(SBFlexibleWindowingAutoLayoutController);
        v23 = *(v18 + 45);
        *(v18 + 45) = v22;

        v24 = objc_alloc_init(SBDisplayItemLayoutGrid);
        v25 = *(v18 + 51);
        *(v18 + 51) = v24;

        *(v18 + 56) = arc4random();
        *(v18 + 504) = SBInvalidPoint;

        goto LABEL_5;
      }
    }

    else
    {
      [SBFlexibleWindowingWindowDragSwitcherModifier initWithGestureID:a2 initialAppLayout:v18 selectedDisplayItem:? wantsSlideOverTongue:? slideOverTongueState:? slideOverTongueDirection:?];
      if (v16)
      {
        goto LABEL_4;
      }
    }

    [SBFlexibleWindowingWindowDragSwitcherModifier initWithGestureID:a2 initialAppLayout:v18 selectedDisplayItem:? wantsSlideOverTongue:? slideOverTongueState:? slideOverTongueDirection:?];
    goto LABEL_4;
  }

LABEL_5:

  return v18;
}

- (void)didMoveToParentModifier:(id)a3
{
  v20.receiver = self;
  v20.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  [(SBChainableModifier *)&v20 didMoveToParentModifier:?];
  if (a3 && !self->_initialAutoLayoutSpace && self->_initialAppLayout)
  {
    v5 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:?];
    initialAutoLayoutSpace = self->_initialAutoLayoutSpace;
    self->_initialAutoLayoutSpace = v5;

    objc_storeStrong(&self->_previousAutoLayoutSpace, self->_initialAutoLayoutSpace);
    v7 = [(SBFlexibleWindowingAutoLayoutSpace *)self->_initialAutoLayoutSpace flexibleAutoLayoutItemForDisplayItemIfExists:self->_selectedDisplayItem];
    v8 = v7;
    if (v7)
    {
      [v7 frame];
      self->_lastCenterYBeforeStashingOrUnstashingBegan = v10 + v9 * 0.5;
    }

    v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    if (v11)
    {
      if (BSEqualObjects())
      {
        v12 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_initialAppLayout];
        [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
        v13 = v18[1];
        *&self->_initialSlideOverConfiguration.corner = v18[0];
        self->_initialSlideOverConfiguration.size = v13;
        *&self->_initialSlideOverConfiguration.isActive = v19;

        self->_startedStashed = ![(SBAppLayout *)self->_initialAppLayout containsItem:v11];
      }
    }

    v14 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    v15 = [v14 windowingSettings];

    [v15 windowDragRubberBandedTranslationRange];
    self->_rubberBandingRange = v16;
    [v15 windowDragRubberBandedTranslationDetachmentThreshold];
    self->_detachmentThreshold = v17;
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_initialAppLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"initialAppLayout"];

  v7 = [v4 appendObject:self->_selectedDisplayItem withName:@"selectedDisplayItem"];
  v8 = [v4 appendPoint:@"initialAnchorPoint" withName:{self->_initialAnchorPoint.x, self->_initialAnchorPoint.y}];
  v9 = [v4 appendPoint:@"anchorPoint" withName:{self->_anchorPoint.x, self->_anchorPoint.y}];

  return v4;
}

- (void)updateProposedAppLayoutWithAppLayout:(id)a3 andInitialAppLayout:(id)a4
{
  objc_storeStrong(&self->_initialAppLayout, a4);
  v7 = a4;
  v8 = a3;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier updateProposedAppLayoutWithAppLayout:v8 andInitialAppLayout:v7];
}

- (CGPoint)_draggingItemScreenCenterForSize:(CGSize)a3 scale:(double)a4
{
  __asm { FMOV            V5.2D, #0.5 }

  height = a3.height;
  v10 = vmlaq_n_f64(self->_location, vmulq_f64(a3, vsubq_f64(_Q5, self->_anchorPoint)), a4);
  v11 = v10.f64[1];
  v12 = v10.f64[0];
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)preferredCenterForSelectedItemInDestinationModifier:(id)a3 clippingToInitialStageArea:(BOOL)a4
{
  v4 = a4;
  v6 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  v7 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    x = self->_location.x;
    y = self->_location.y;
  }

  else
  {
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self frameForIndex:v8];
    v12 = v11;
    v14 = v13;
    if (self->_prefersInitialLayout)
    {
      v15 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      initialLayoutAttributes = self->_initialLayoutAttributes;
      v17 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v15 centerForLayoutAttributes:initialLayoutAttributes windowingConfiguration:v17];
      x = v18;
      y = v19;
    }

    else
    {
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:v8];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _draggingItemScreenCenterForSize:v12 scale:v14, v20];
      x = v21;
      y = v22;
    }

    if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _shouldLockYPosition])
    {
      y = self->_lastCenterYBeforeStashingOrUnstashingBegan;
    }

    if (v4)
    {
      initialAutoLayoutSpace = self->_initialAutoLayoutSpace;
      if (initialAutoLayoutSpace)
      {
        [(SBFlexibleWindowingAutoLayoutSpace *)initialAutoLayoutSpace stageArea];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [(SBFlexibleWindowingAutoLayoutSpace *)self->_initialAutoLayoutSpace boundingBox];
        v42.origin.x = v32;
        v42.origin.y = v33;
        v42.size.width = v34;
        v42.size.height = v35;
        v40.origin.x = v25;
        v40.origin.y = v27;
        v40.size.width = v29;
        v40.size.height = v31;
        v41 = CGRectUnion(v40, v42);
        v36 = v12 * 0.5 + v41.origin.x;
        if (x < v36)
        {
          x = v36;
        }

        if (y >= v41.origin.y + v41.size.height - v14 * 0.5)
        {
          y = v41.origin.y + v41.size.height - v14 * 0.5;
        }
      }
    }
  }

  v37 = x;
  v38 = y;
  result.y = v38;
  result.x = v37;
  return result;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 appLayoutsToCacheFullsizeSnapshots];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v3 arrayByAddingObject:v7];

    v3 = v8;
  }

  return v3;
}

- (id)appLayoutsToCacheSnapshots
{
  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 appLayoutsToCacheSnapshots];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v3 arrayByAddingObject:v7];

    v3 = v8;
  }

  return v3;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v6 = [v5 containsItem:self->_selectedDisplayItem];

  v18.receiver = self;
  v18.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v18 handleEvent:v4];
  v8 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v9 = [v8 containsItem:self->_selectedDisplayItem];

  v10 = v6 ^ v9;
  v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  v12 = v11;
  if ((v10 & 1) != 0 || !v11)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (-[SBDisplayItem isEqualToItem:](self->_selectedDisplayItem, v11) && [v4 isWindowDragGestureEvent] && objc_msgSend(v4, "phase") == 1 && !-[SBAppLayout containsItem:](self->_initialAppLayout, "containsItem:", v12))
  {
LABEL_9:
    v13 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _baseLayoutSettings];
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _beginAnimatingAnchorPointRampingPropertyWithMode:3 settings:v13];
  }

LABEL_10:
  v14 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self proposedAppLayout];
  v15 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v14];
  previousAutoLayoutSpace = self->_previousAutoLayoutSpace;
  self->_previousAutoLayoutSpace = v15;

  return v7;
}

- (id)handleGestureEvent:(id)a3
{
  v311 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v309.receiver = self;
  v309.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v309 handleGestureEvent:v4];
  [v4 locationInContainerView];
  self->_location.x = v6;
  self->_location.y = v7;
  p_translation = &self->_translation;
  [v4 translationInContainerView];
  self->_translation.x = v9;
  self->_translation.y = v10;
  v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
  v12 = ([v4 isCanceled] & 1) != 0 || -[SBContinuousExposeWindowDragDestinationSwitcherModifier proposedDestination](self->_destinationModifier, "proposedDestination") == 0;
  self->_gestureWasCanceled = v12;
  v13 = [(SBSwitcherModifier *)self windowingConfiguration];
  v14 = [v4 phase];
  v280 = v14;
  v282 = self;
  if (v14 == 2)
  {
    if (self->_gestureWasCanceled)
    {
      goto LABEL_49;
    }

    v275 = v13;
    self->_layOutSlideOverItemFullyOffscreen = 0;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
    self->_averageVelocity.x = v23;
    self->_averageVelocity.y = v24;
    prefersInitialLayout = self->_prefersInitialLayout;
    if (prefersInitialLayout)
    {
      hypot(p_translation->x, self->_translation.y);
      v26 = *(MEMORY[0x277CF0B30] + 16);
      v295 = *MEMORY[0x277CF0B30];
      v296 = v26;
      BSUIConstrainValueToIntervalWithRubberBand();
      v28 = v27;
      v29 = atan2(self->_translation.y, p_translation->x);
      rubberBandingRange = self->_rubberBandingRange;
      v31 = __sincos_stret(v29);
      self->_rubberBandedTranslation.x = rubberBandingRange * (v31.__cosval * (v28 / rubberBandingRange));
      self->_rubberBandedTranslation.y = rubberBandingRange * (v31.__sinval * (v28 / rubberBandingRange));
      self->_prefersInitialLayout = v28 < self->_detachmentThreshold;
    }

    v32 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if (![v32 containsItem:self->_selectedDisplayItem])
    {
      v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
      v15 = v32;
LABEL_48:

      v13 = v275;
      goto LABEL_49;
    }

    v278 = v5;
    v303 = 0u;
    v304 = 0;
    v33 = [v32 leafAppLayoutForItem:self->_selectedDisplayItem];
    v302.receiver = self;
    v302.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v302 windowControlsLayoutForLeafAppLayout:v33];

    v264 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v32];
    v271 = v32;
    v267 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v32];
    margin = self->_currentWindowControlsLayout.margin;
    v295 = *&self->_currentWindowControlsLayout.style;
    v296 = margin;
    v291 = v303;
    v292 = v304;
    v35 = SBWindowControlsLayoutEqual(&v295, &v291);
    if (!v35)
    {
      v36 = v304;
      *&self->_currentWindowControlsLayout.style = v303;
      self->_currentWindowControlsLayout.margin = v36;
      v37 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
      if (v37)
      {
        v38 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self animationAttributesForLayoutElement:v37];
        v39 = [v38 layoutSettings];

        [v267 setAnimationSettings:v39];
        self = v282;
      }
    }

    v270 = !v35;
    v301 = 0;
    v299 = 0u;
    v300 = 0;
    v40 = v264;
    [(SBDisplayItemLayoutAttributes *)v264 slideOverConfiguration];
    v295 = v299;
    v296 = v300;
    *&v297 = v301;
    if ((SBDisplayItemSlideOverConfigurationIsValid(&v295) & 1) != 0 || self->_slideOverIsCenterExiting)
    {
      if (self->_startedStashed)
      {
        v41 = v275;
        if (!self->_hasUnstashed)
        {
          v42 = fabs(p_translation->x);
          [v275 slideOverThresholdToForegroundUnstashingApp];
          if (v42 >= v43)
          {
            v44 = [(SBAppLayout *)self->_initialAppLayout allItems];
            v45 = [v44 count];

            if (v45)
            {
              v270 = 1;
              self->_hasUnstashed = 1;
            }

            else
            {
              v168 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
              initialAppLayout = self->_initialAppLayout;
              if (initialAppLayout)
              {
                v170 = initialAppLayout;
              }

              else
              {
                v170 = +[SBAppLayout homeScreenAppLayout];
              }

              v178 = [(SBAppLayout *)v170 appLayoutByInsertingItem:self->_selectedDisplayItem];

              [(SBSwitcherTransitionRequest *)v168 setAppLayout:v178];
              [(SBSwitcherTransitionRequest *)v168 setSource:77];
              v179 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v168 gestureInitiated:0];
              v180 = SBAppendSwitcherModifierResponse(v179, v5);

              v282->_hasUnstashed = 1;
              v278 = v180;
              self = v282;
            }
          }
        }
      }

      else
      {
        v41 = v275;
      }

      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      v182 = v181;
      v144 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
      v183 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
      v184 = [v183 indexOfObject:v144];

      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self frameForIndex:v184];
      v186 = v185;
      v188 = v187;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:v184];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _draggingItemScreenCenterForSize:v186 scale:v188, v189];
      v191 = v190;
      v193 = v192;
      if (![(SBFlexibleWindowingWindowDragSwitcherModifier *)self _shouldLockYPosition])
      {
        self->_lastCenterYBeforeStashingOrUnstashingBegan = v193;
      }

      [v41 slideOverEnterCenterRegionThreshold];
      v194 = v182 * 0.5;
      v196 = v182 * 0.5 - v195;
      v197 = v182 * 0.5 + v195;
      [v41 slideOverExitCenterRegionThreshold];
      v199 = v191 <= v194 + v198 && v191 >= v194 - v198;
      v5 = v278;
      if (v191 >= v196 && v191 <= v197 && [v4 selectedEdge] == 1)
      {
        if (self->_slideOverIsCenterExiting)
        {
          v40 = v264;
        }

        else
        {
          v40 = v264;
          if (![(SBFlexibleWindowingWindowDragSwitcherModifier *)self _slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:v191, v193]&& !self->_startedStashed)
          {
            v250 = MEMORY[0x277CCACA8];
            v251 = objc_opt_class();
            v252 = NSStringFromClass(v251);
            v253 = [v250 stringWithFormat:@"%@-SlideOverCenterExitingUpdate-%ld", v252, self->_slideOverCenterExitingUpdateGeneration];
            slideOverCenterExitingUpdateReason = self->_slideOverCenterExitingUpdateReason;
            self->_slideOverCenterExitingUpdateReason = v253;

            self->_slideOverCenterSettledPosition.x = v191;
            self->_slideOverCenterSettledPosition.y = v193;
            v255 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_slideOverCenterExitingUpdateReason reason:0.1];
            v256 = SBAppendSwitcherModifierResponse(v255, v278);

            ++self->_slideOverCenterExitingUpdateGeneration;
            v40 = v264;

            v5 = v256;
          }
        }
      }

      else
      {
        if (v191 >= v196 && v191 <= v197 || v199 || !self->_slideOverIsCenterExiting)
        {
          v40 = v264;
        }

        else
        {
          LOBYTE(v301) = 1;
          self->_slideOverIsCenterExiting = 0;
          v295 = v299;
          v296 = v300;
          *&v297 = v301;
          v200 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v264];

          v201 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:self->_selectedDisplayItem direction:0];
          v202 = SBAppendSwitcherModifierResponse(v201, v278);

          v270 = 1;
          v40 = v200;
          v5 = v202;
          self = v282;
        }

        if (!self->_startedStashed || self->_hasUnstashed)
        {
          v270 |= BYTE1(v301);
        }

        v203 = self->_slideOverCenterExitingUpdateReason;
        self->_slideOverCenterExitingUpdateReason = 0;

        self->_slideOverCenterSettledPosition = SBInvalidPoint;
      }
    }

    else
    {
      [(SBDisplayItemLayoutAttributes *)v264 tileConfiguration];
      if (SBDisplayItemTileConfigurationIsValid(&v295))
      {
        v144 = [(SBSwitcherModifier *)self windowingConfiguration];
        [v144 screenEdgePadding];
        v263 = v145;
        [v144 defaultWindowSize];
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
        v147 = v146;
        v149 = v148;
        v151 = v150;
        v153 = v152;
        SBDisplayItemTileConfigurationMakeNotTiled(&v295);
        v154 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v264];
        v155 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        [v155 sizeForLayoutAttributes:v264 windowingConfiguration:v144];
        v157 = v156;
        v159 = v158;

        v160 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        [v160 sizeForLayoutAttributes:v154 windowingConfiguration:v144];
        v162 = v161;
        v164 = v163;

        if (v162 == v151 && v164 == v153 || v162 == *MEMORY[0x277CBF3A8] && v164 == *(MEMORY[0x277CBF3A8] + 8))
        {
          v298 = 0;
          v296 = 0;
          v297 = 0u;
          v295 = 0u;
          v262 = v263;
          SBDisplayItemAttributedSizeInfer(&v295, v157, v159, v147, v149, v151, v153);
          SBDisplayItemTileConfigurationMakeNotTiled(&v291);
          v165 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v264];

          v291 = v295;
          v292 = v296;
          v293 = v297;
          v294 = v298;
          v166 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v165];
        }

        else
        {
          SBDisplayItemTileConfigurationMakeNotTiled(&v295);
          v165 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v264];

          v166 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v165];
        }

        v40 = v166;
      }

      else
      {
        if (!prefersInitialLayout)
        {
LABEL_159:
          v167 = v271;
LABEL_160:
          if (SBFIsFullScreenLetterboxingAvailable())
          {
            v204 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutRestrictionInfoForItem:self->_selectedDisplayItem];
            v205 = [v204 layoutRestrictions];
            v206 = [(SBSwitcherModifier *)self windowingConfiguration];
            if ((v205 & 0x10) != 0)
            {
              [(SBDisplayItemLayoutAttributes *)v40 attributedSize];
              if (v290 == 3)
              {
                v207 = [(SBHomeScreenConfigurationServer *)v40 authenticator];
                selectedDisplayItem = self->_selectedDisplayItem;
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
                v210 = v209;
                v212 = v211;
                v214 = v213;
                v216 = v215;
                layoutGrid = v282->_layoutGrid;
                v218 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 layoutRestrictionInfoForItem:v282->_selectedDisplayItem];
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 screenScale];
                v219 = layoutGrid;
                self = v282;
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 minSizeForDisplayItem:selectedDisplayItem inContainerBounds:v219 layoutGrid:v218 layoutRestrictionInfo:v207 contentOrientation:v206 screenScale:v210 windowingConfiguration:v212, v214, v216, v220];
                v222 = v221;
                v224 = v223;

                v298 = 0;
                v296 = 0;
                v297 = 0u;
                v295 = 0u;
                [v206 containerBounds];
                v226 = v225;
                v228 = v227;
                v230 = v229;
                v232 = v231;
                [v206 defaultWindowSize];
                [v206 screenEdgePadding];
                v262 = v233;
                SBDisplayItemAttributedSizeInfer(&v295, v222, v224, v226, v228, v230, v232);
                v291 = v295;
                v292 = v296;
                v293 = v297;
                v294 = v298;
                v234 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v40];

                v40 = [(SBDisplayItemLayoutAttributes *)v234 attributesByModifyingNormalizedCenter:0.5];
              }
            }

            v167 = v271;
          }

          v235 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesMapForAppLayout:v167, v262];
          v236 = [v235 mutableCopy];

          v237 = v40;
          if (v270)
          {
            v238 = [MEMORY[0x277CBEB98] setWithObject:self->_selectedDisplayItem];
            v239 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v167 calculatedUsingNewLayoutAttributesMap:v236 itemsNeedingPositionSnapping:v238 itemsNeedingSizeSnapping:0];
          }

          else
          {
            v238 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v167];
            v239 = v238;
          }

          v240 = [v239 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
          v241 = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:v240];
          v265 = v239;
          if (self->_draggedDisplayItemIntersectsHomeAffordanceArea == v241)
          {
            v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
            if ((v270 & 1) == 0)
            {
              v242 = v267;
LABEL_173:

              v15 = v271;
              goto LABEL_48;
            }
          }

          else
          {
            v243 = v241;
            v244 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
            v245 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self animationAttributesForLayoutElement:v244];
            [v245 layoutSettings];
            v247 = v246 = v5;

            self = v282;
            [v267 setAnimationSettings:v247];

            v5 = v246;
            v282->_draggedDisplayItemIntersectsHomeAffordanceArea = v243;
            v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
          }

          [v236 setObject:v40 forKey:self->_selectedDisplayItem];
          v242 = v267;
          [v267 setDisplayItemLayoutAttributesMap:v236];
          [v267 setSceneUpdatesOnly:1];
          v248 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v267 gestureInitiated:1];
          v249 = SBAppendSwitcherModifierResponse(v248, v5);

          v5 = v249;
          goto LABEL_173;
        }

        v167 = v271;
        if (self->_prefersInitialLayout)
        {
          goto LABEL_160;
        }

        if (!self->_selectedAppLayoutWasInitiallyFullScreen)
        {
          v40 = v264;
          goto LABEL_160;
        }

        if ([(SBHomeScreenConfigurationServer *)v264 connections]== 2 || [(SBHomeScreenConfigurationServer *)v264 connections]== 1)
        {
          v144 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v264];
        }

        else
        {
          v144 = v264;
        }

        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
        v258 = v257;
        v260 = v259;
        [v275 defaultWindowSize];
        [v275 screenEdgePadding];
        v270 = 1;
        if ([SBDisplayItemLayoutAttributes sizeInBounds:v144 defaultSize:? screenEdgePadding:?]!= v258 || v261 != v260)
        {
          v40 = v144;
          goto LABEL_159;
        }

        v40 = [(SBSwitcherModifier *)self defaultMultitaskingLayoutAttributesForDisplayItem:self->_selectedDisplayItem layoutAttributes:v144 layoutGrid:self->_layoutGrid];
      }

      v270 = 1;
    }

    goto LABEL_159;
  }

  if (v14 == 1)
  {
    v277 = v5;
    v15 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
    v16 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
    v308[0] = MEMORY[0x277D85DD0];
    v308[1] = 3221225472;
    v308[2] = __68__SBFlexibleWindowingWindowDragSwitcherModifier_handleGestureEvent___block_invoke;
    v308[3] = &unk_2783A8CB8;
    v308[4] = self;
    v17 = [v16 bs_firstObjectPassingTest:v308];

    p_sizeOfSelectedDisplayItem = &self->_sizeOfSelectedDisplayItem;
    -[SBFlexibleWindowingWindowDragSwitcherModifier sizeOfDisplayItem:inDisplayWithOrdinal:](self, "sizeOfDisplayItem:inDisplayWithOrdinal:", self->_selectedDisplayItem, [v17 preferredDisplayOrdinal]);
    self->_sizeOfSelectedDisplayItem.width = v19;
    self->_sizeOfSelectedDisplayItem.height = v20;
    v268 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v15];
    v266 = [v268 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
    self->_draggedDisplayItemIntersectsHomeAffordanceArea = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:?];
    [v4 sizeOfSelectedDisplayItem];
    v269 = v17;
    v21 = [v17 preferredDisplayOrdinal];
    v275 = v13;
    if (v21 == [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayOrdinal])
    {
      v22 = 0;
    }

    else
    {
      v22 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self hasMultipleDisplays];
    }

    self->_dragBeganInOtherSwitcher = v22;
    v46 = [v4 isDraggingFromContinuousExposeStrips];
    self->_dragBeganInAnyStrip = v46;
    self->_dragBeganOnAnyStage = v46 ^ 1;
    v47 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if ([v47 containsItem:self->_selectedDisplayItem])
    {
      v48 = v15;
      v49 = v4;
      v50 = [v47 leafAppLayoutForItem:self->_selectedDisplayItem];
      v307.receiver = self;
      v307.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v307 windowControlsLayoutForLeafAppLayout:v50];
      v51 = v296;
      *&self->_currentWindowControlsLayout.style = v295;
      self->_currentWindowControlsLayout.margin = v51;

      if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
      {
        v52 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_initialAppLayout ignoreOcclusion:0 ignoreCentering:1];
        p_selectedAppLayoutWasInitiallyFullScreen = &self->_selectedAppLayoutWasInitiallyFullScreen;
        self->_selectedAppLayoutWasInitiallyFullScreen = [v52 containsObject:self->_selectedDisplayItem];
      }

      else
      {
        p_selectedAppLayoutWasInitiallyFullScreen = &self->_selectedAppLayoutWasInitiallyFullScreen;
        self->_selectedAppLayoutWasInitiallyFullScreen = 0;
      }

      v54 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v47];
      initialLayoutAttributes = self->_initialLayoutAttributes;
      self->_initialLayoutAttributes = v54;

      self->_initialLocation = self->_location;
      self->_prefersInitialLayout = *p_selectedAppLayoutWasInitiallyFullScreen;
      v4 = v49;
      v15 = v48;
    }

    if (v15)
    {
      v56 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
      v57 = [v56 indexOfObject:v15];

      [v4 locationInSelectedDisplayItem];
      v59 = v58;
      v61 = v60;
      v272 = v15;
      if (v282->_dragBeganInOtherSwitcher)
      {
        width = p_sizeOfSelectedDisplayItem->width;
        height = p_sizeOfSelectedDisplayItem->height;
      }

      else
      {
        v306.receiver = v282;
        v306.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v306 frameForIndex:v57];
        v64 = [v15 layoutRoleForItem:v282->_selectedDisplayItem];
        SBRectWithSize();
        v305.receiver = v282;
        v305.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v305 frameForLayoutRole:v64 inAppLayout:v15 withBounds:?];
        width = v65;
        height = v66;
        v67 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 layoutAttributesForDisplayItem:v282->_selectedDisplayItem inAppLayout:v15];
        v282->_initialNormalizedCenter.x = [(SBDisplayItemLayoutAttributes *)v67 normalizedCenter];
        v282->_initialNormalizedCenter.y = v68;
      }

      p_x = &v282->_anchorPoint.x;
      v282->_anchorPoint.x = v59 / width;
      v282->_anchorPoint.y = v61 / height;
      v70 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 displayItemInSlideOver];
      v71 = v282;
      v72 = [(SBDisplayItem *)v70 isEqualToItem:?];

      if (v72)
      {
        if (v282->_startedStashed)
        {
          v73 = 0.0;
          v74 = 1.0;
        }

        else
        {
          [v275 slideOverBorderWidth];
          v73 = -v75 / width;
          v74 = (width + v75) / width;
        }

        if (v73 < *p_x)
        {
          v73 = *p_x;
        }

        if (v74 > v73)
        {
          v74 = v73;
        }

        *p_x = v74;
        v71 = v282;
      }

      v71->_initialAnchorPoint = *p_x;
      v76 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
      v77 = SBAppendSwitcherModifierResponse(v76, v277);

      v78 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
      v79 = SBAppendSwitcherModifierResponse(v78, v77);

      v80 = objc_alloc_init(SBDismissMenuBarSwitcherEventResponse);
      v277 = SBAppendSwitcherModifierResponse(v80, v79);

      self = v71;
      v15 = v272;
    }

    v81 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    if (BSEqualObjects())
    {
      v82 = ![(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem];
    }

    else
    {
      v82 = 0;
    }

    v5 = v277;
    v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
    self->_layOutSlideOverItemFullyOffscreen = v82;

    goto LABEL_48;
  }

LABEL_49:
  v83 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];
  v84 = v11[947];
  v85 = [*(&self->super.super.super.super.super.isa + v84) proposedAppLayout];
  v86 = self;
  v87 = [v85 containsItem:self->_selectedDisplayItem];

  if (v86->_dragBeganInOurSwitcher && (v87 & 1) == 0 && v83)
  {
    __asm { FMOV            V0.2D, #0.5 }

    v92 = v282;
LABEL_53:
    v92->_anchorPoint = _Q0;
    goto LABEL_56;
  }

  if (v282->_dragBeganInOtherSwitcher & v87)
  {
    __asm { FMOV            V0.2D, #0.5 }

    v282->_anchorPoint = _Q0;
    v92 = v282;
  }

  else
  {
    v92 = v282;
    if (v282->_dragBeganInAnyStrip && v83)
    {
      __asm { FMOV            V0.2D, #0.5 }

      goto LABEL_53;
    }

    if (v83 || !v282->_dragBeganOnAnyStage)
    {
      _Q0 = v282->_initialAnchorPoint;
      goto LABEL_53;
    }

    v282->_anchorPoint.x = 0.4;
  }

LABEL_56:
  if (v280 == 3)
  {
    if (v92->_gestureWasCanceled)
    {
      v94 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v92->_initialAppLayout];
      v95 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v94 gestureInitiated:1];
      v96 = SBAppendSwitcherModifierResponse(v95, v5);
LABEL_113:

      v5 = v96;
      goto LABEL_114;
    }

    v94 = [*(&v92->super.super.super.super.super.isa + v84) proposedAppLayout];
    x = v92->_averageVelocity.x;
    y = v92->_averageVelocity.y;
    [v4 translationInContainerView];
    if (([v4 isPointerTouch] & 1) == 0 && !v92->_selectedAppLayoutWasInitiallyFullScreen)
    {
      v99 = 0;
      v124 = fabs(x);
      if (y <= v124 || y - v124 < 1600.0)
      {
        goto LABEL_64;
      }

      if (BSFloatGreaterThanOrEqualToFloat() && ![*(&v92->super.super.super.super.super.isa + v84) tileDestinationForEvent:v4] && -[SBAppLayout containsItem:](v92->_initialAppLayout, "containsItem:", v92->_selectedDisplayItem))
      {
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 displayItemInSlideOver];
        v126 = v125 = v92;
        v127 = BSEqualObjects();

        if (v127)
        {
          v99 = 0;
          v92 = v125;
        }

        else
        {
          v288[0] = MEMORY[0x277D85DD0];
          v288[1] = 3221225472;
          v288[2] = __68__SBFlexibleWindowingWindowDragSwitcherModifier_handleGestureEvent___block_invoke_2;
          v288[3] = &unk_2783A8C90;
          v288[4] = v125;
          v171 = [v94 appLayoutWithItemsPassingTest:v288];

          v172 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v125 windowManagementContext];
          if (([v172 isAutomaticStageCreationEnabled] & 1) == 0)
          {
            v173 = [SBRemoveFromDesktopSwitcherEventResponse alloc];
            v174 = [MEMORY[0x277CBEB98] setWithObject:v125->_selectedDisplayItem];
            v175 = [(SBRemoveFromDesktopSwitcherEventResponse *)v173 initWithDisplayItems:v174];
            v176 = SBAppendSwitcherModifierResponse(v175, v5);
            v177 = v5;
            v5 = v176;
          }

          v99 = 1;
          v94 = v171;
          v92 = v282;
        }

        goto LABEL_64;
      }
    }

    v99 = 0;
LABEL_64:
    if ([v94 containsItem:v92->_selectedDisplayItem])
    {
      v274 = v99;
      v276 = v13;
      v279 = v5;
      v281 = v4;
      v100 = v94;
      [(SBSwitcherModifier *)v92 flexibleAutoLayoutSpaceForAppLayout:?];
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v273 = v287 = 0u;
      v101 = [v273 autoLayoutItems];
      v102 = [v101 countByEnumeratingWithState:&v284 objects:v310 count:16];
      if (v102)
      {
        v103 = v102;
        v104 = *v285;
        do
        {
          for (i = 0; i != v103; ++i)
          {
            if (*v285 != v104)
            {
              objc_enumerationMutation(v101);
            }

            v106 = *(*(&v284 + 1) + 8 * i);
            v107 = [v106 displayItem];
            v108 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 layoutAttributesForDisplayItem:v107 inAppLayout:v94];
            if ([(SBDisplayItem *)v107 isEqualToItem:?]&& [(SBHomeScreenConfigurationServer *)v108 connections]== 2)
            {
              v109 = v92->_initialNormalizedCenter.x;
              v110 = v92->_initialNormalizedCenter.y;
            }

            else
            {
              [v106 position];
              v112 = v111;
              v114 = v113;
              [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 containerViewBounds];
              v109 = [(SBDisplayItemLayoutAttributes *)v112 normalizedPointForPoint:v114 inBounds:v115, v116, v117, v118];
              v110 = v119;
            }

            if (v109 != 1.79769313e308 || v110 != 1.79769313e308)
            {
              v121 = v108;
              *&v297 = 0;
              v295 = 0u;
              v296 = 0;
              [(SBDisplayItemLayoutAttributes *)v121 slideOverConfiguration];
              v291 = v295;
              v292 = v296;
              *&v293 = v297;
              if ((SBDisplayItemSlideOverConfigurationIsValid(&v291) & 1) == 0)
              {
                v122 = [(SBDisplayItemLayoutAttributes *)v121 attributesByModifyingNormalizedCenter:v109, v110];

                v121 = v122;
              }

              v123 = [(SBDisplayItemLayoutAttributes *)v121 attributesByModifyingCascaded:?];

              [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 updateLayoutAttributes:v123 ofDisplayItem:v107];
              v92 = v282;
            }
          }

          v103 = [v101 countByEnumeratingWithState:&v284 objects:v310 count:16];
        }

        while (v103);
      }

      v99 = v274;
      if ((v274 & 1) == 0)
      {
        v94 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 appLayoutByBringingItemToFront:v92->_selectedDisplayItem inAppLayout:v94];
      }

      v13 = v276;
      v5 = v279;

      v4 = v281;
    }

    if (!v94)
    {
      v94 = +[SBAppLayout homeScreenAppLayout];
    }

    v128 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v94];
    v95 = v128;
    if (v99)
    {
      [(SBPerformTransitionSwitcherEventResponse *)v128 setPeekConfiguration:1];
      v129 = +[SBAppLayout homeScreenAppLayout];
      v130 = [v94 isEqual:v129];

      if ((v130 & 1) == 0)
      {
        [(SBPerformTransitionSwitcherEventResponse *)v95 setMinimizingDisplayItem:v282->_selectedDisplayItem];
      }

      v131 = v5;
      v132 = v282;
      v133 = v282->_initialLayoutAttributes;
      if (v133)
      {
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 updateLayoutAttributes:v133 ofDisplayItem:v282->_selectedDisplayItem];
      }
    }

    else
    {
      v131 = v5;
      v132 = v282;
      v134 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 displayItemInSlideOver];
      v135 = BSEqualObjects();

      if (v135)
      {
        [(SBPerformTransitionSwitcherEventResponse *)v95 setPeekConfiguration:1];
      }
    }

    v5 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v95 gestureInitiated:1];
    v96 = SBAppendSwitcherModifierResponse(v5, v131);

    [(SBFlexibleWindowingWindowDragSwitcherModifier *)v132 continuousExposeStripProgress];
    v283.receiver = v132;
    v283.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v283 continuousExposeStripProgress];
    v136 = BSFloatEqualToFloat();
    if (v94 && (v136 & 1) == 0 && ([v94 containsItem:v282->_selectedDisplayItem] & 1) == 0)
    {
      v137 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:1 dismissalOptions:0];
      v138 = SBAppendSwitcherModifierResponse(v137, v96);

      v96 = v138;
    }

    [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 continuousExposeStripProgress];
    if (BSFloatGreaterThanFloat() && [(SBFlexibleWindowingWindowDragSwitcherModifier *)v282 _isStripStashed])
    {
      v139 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
      SBAppendSwitcherModifierResponse(v139, v96);
      v141 = v140 = v4;

      v96 = v141;
      v4 = v140;
    }

    goto LABEL_113;
  }

LABEL_114:
  v142 = v5;

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v35 handleTimerEvent:v4];
  if (!self->_startedStashed)
  {
    slideOverCenterExitingUpdateReason = self->_slideOverCenterExitingUpdateReason;
    if (slideOverCenterExitingUpdateReason)
    {
      v7 = [v4 reason];
      v8 = [(NSString *)slideOverCenterExitingUpdateReason isEqual:v7];

      if (v8)
      {
        v9 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __66__SBFlexibleWindowingWindowDragSwitcherModifier_handleTimerEvent___block_invoke;
        v34[3] = &unk_2783A8CB8;
        v34[4] = self;
        v10 = [v9 bs_firstObjectPassingTest:v34];

        v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
        v12 = [v11 indexOfObject:v10];

        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self frameForIndex:v12];
        v14 = v13;
        v16 = v15;
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:v12];
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _draggingItemScreenCenterForSize:v14 scale:v16, v17];
        if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:?])
        {
          v18 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v10];
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
          LOBYTE(v33) = 0;
          self->_slideOverIsCenterExiting = 1;
          v28 = v31;
          v29 = v32;
          v30 = v33;
          v19 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v18];

          [(SBFlexibleWindowingWindowDragSwitcherModifier *)self updateLayoutAttributes:v19 ofDisplayItem:self->_selectedDisplayItem, v28, v29, v30];
          v20 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesMapForAppLayout:v10];
          v21 = [v20 mutableCopy];

          [v21 setObject:v19 forKey:self->_selectedDisplayItem];
          v22 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
          v23 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v22];

          [v23 setDisplayItemLayoutAttributesMap:v21];
          [v23 setSceneUpdatesOnly:1];
          v24 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v23 gestureInitiated:1];
          v25 = SBAppendSwitcherModifierResponse(v24, v5);

          v5 = v25;
        }

        v26 = self->_slideOverCenterExitingUpdateReason;
        self->_slideOverCenterExitingUpdateReason = 0;
      }
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:v4];
  if ([v4 phase] >= 2 && (objc_msgSend(v4, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(v4, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  if ([v5 containsAllItemsFromAppLayout:v4])
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v6 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v9 appLayoutContainingAppLayout:v4];
  }

  v7 = v6;

  return v7;
}

- (double)continuousExposeStripProgress
{
  v8.receiver = self;
  v8.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v8 continuousExposeStripProgress];
  v4 = v3;
  if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _isStripStashed])
  {
    v5 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if ([v5 containsItem:self->_selectedDisplayItem])
    {
    }

    else
    {
      v6 = [(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem];

      if (v6)
      {
        return 1.0;
      }
    }
  }

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    v69.receiver = self;
    v69.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v69 frameForIndex:a3];
  }

  else
  {
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem:1.79769313e308];
    v9 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    v10 = [v9 containsItem:self->_selectedDisplayItem];

    v11 = !self->_dragBeganInOtherSwitcher || !v8;
    if (v11 || (v10 & 1) != 0)
    {
      v18 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
      if ([v18 containsItem:self->_selectedDisplayItem])
      {
        v19 = v18;
      }

      else
      {
        v19 = v6;
      }

      v20 = v19;
      v68 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      v67 = [v20 layoutRoleForItem:self->_selectedDisplayItem];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      v65 = v22;
      v66 = v21;
      v24 = v23;
      v26 = v25;
      v64 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self floatingDockHeight];
      v28 = v27;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self screenScale];
      v30 = v29;
      v31 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self isDisplayEmbedded];
      v32 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self prefersStripHidden];
      v33 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self prefersDockHidden];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      LOBYTE(v63) = v33;
      [v68 frameForLayoutRole:v67 inAppLayout:v20 containerBounds:v64 containerOrientation:1 floatingDockHeight:v31 screenScale:v32 isChamoisWindowingUIEnabled:v66 isEmbeddedDisplay:v65 prefersStripHidden:v24 prefersDockHidden:v26 leftStatusBarPartIntersectionRegion:v28 rightStatusBarPartIntersectionRegion:{v30, v63, v35, v37, v39, v41, v42, v43, v44, v45}];
      width = v46;
      height = v47;
    }

    else
    {
      width = self->_sizeOfSelectedDisplayItem.width;
      height = self->_sizeOfSelectedDisplayItem.height;
    }

    if (SBSizeEqualsSize())
    {
      v75.receiver = self;
      v75.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v75 frameForIndex:a3];
      width = v48;
      height = v49;
    }

    v50 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    v51 = BSEqualObjects();

    if (v51)
    {
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      v52 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v52 slideOverBorderWidth];

      if (self->_layOutSlideOverItemFullyOffscreen)
      {
        v74 = 0;
        v72 = 0u;
        v73 = 0u;
        v53 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:v6];
        [(SBDisplayItemLayoutAttributes *)v53 slideOverConfiguration];

        v70[0] = v72;
        v70[1] = v73;
        v71 = v74;
        SBDisplayItemSlideOverIsLeftSided(v70);
      }

      if (![(SBFlexibleWindowingWindowDragSwitcherModifier *)self _shouldLockYPosition])
      {
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:a3];
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _draggingItemScreenCenterForSize:width scale:height, v54];
      }

      SBRectWithSize();
    }

    else
    {
      SBRectWithSize();
    }

    UIRectCenteredAboutPoint();
  }

  v55 = v14;
  v56 = v15;
  v57 = v16;
  v58 = v17;

  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  result.size.height = v62;
  result.size.width = v61;
  result.origin.y = v60;
  result.origin.x = v59;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v16 scaleForIndex:a3, self, SBFlexibleWindowingWindowDragSwitcherModifier, v17.receiver, v17.super_class];
LABEL_11:
    v8 = v9;
    goto LABEL_12;
  }

  v8 = 1.0;
  if (self->_layOutSlideOverItemFullyOffscreen)
  {
    goto LABEL_12;
  }

  if (self->_dragBeganInAnyStrip)
  {
    if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem:1.79769313e308])
    {
      v8 = 0.6;
      goto LABEL_12;
    }

LABEL_25:
    v14 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v14 stripCardScale];
    v8 = v15;

    goto LABEL_12;
  }

  if (!self->_dragBeganOnAnyStage)
  {
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v17 scaleForIndex:a3, v16.receiver, v16.super_class, self, SBFlexibleWindowingWindowDragSwitcherModifier];
    goto LABEL_11;
  }

  v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem:1.79769313e308];
  v12 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v13 = [v12 containsItem:self->_selectedDisplayItem];

  if (self->_dragBeganInOtherSwitcher)
  {
    if (v13)
    {
      v8 = 0.6;
    }

    else
    {
      v8 = 1.0;
    }

    if (((v13 | v11) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v13)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.6;
    }

    if (((v13 | v11) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:

  return v8;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![v6 containsItem:self->_selectedDisplayItem] || ((x = self->_anchorPoint.x, y = self->_anchorPoint.y, x == 1.79769313e308) ? (v9 = y == 1.79769313e308) : (v9 = 0), v9))
  {
    v14.receiver = self;
    v14.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v14 anchorPointForIndex:a3];
    x = v10;
    y = v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v7 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 shouldPinLayoutRolesToSpace:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if (![v11 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v12 = self->_anchorPoint.y == 1.79769313e308) : (v12 = 0), v12))
  {
    v21.receiver = self;
    v21.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v21 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    x = v13;
    y = v14;
    width = v15;
    height = v16;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (([v8 containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  if (![(SBDisplayItem *)v12 isEqualToItem:?])
  {

    goto LABEL_6;
  }

  if (self->_dragBeganInAnyStrip)
  {
    v13 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];

    if (v13)
    {
      goto LABEL_8;
    }

LABEL_6:
    v35.receiver = self;
    v35.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v35 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    goto LABEL_16;
  }

LABEL_8:
  [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayCornerRadius];
  v19 = v22;
  [(SBFlexibleWindowingWindowDragSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
  SBRectCornerRadiiForRadius();
  v15 = v23;
  v17 = v24;
  v26 = v25;
  v21 = v27;
  v28 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
  v29 = [v28 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
  v30 = [v29 intersectedDisplayRectCorners];

  if (v30)
  {
    v15 = v19;
  }

  if ((v30 & 2) != 0)
  {
    v21 = v19;
  }

  if ((v30 & 4) != 0)
  {
    v17 = v19;
  }

  if ((v30 & 8) == 0)
  {
    v19 = v26;
  }

LABEL_16:

  v31 = v15;
  v32 = v17;
  v33 = v19;
  v34 = v21;
  result.topRight = v34;
  result.bottomRight = v33;
  result.bottomLeft = v32;
  result.topLeft = v31;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    v7 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    v8 = [(SBSwitcherModifier *)self windowingConfiguration];
    if ([v7 containsItem:self->_selectedDisplayItem])
    {
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayCornerRadius];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
      if ([(SBSwitcherModifier *)self appLayoutContainsFullScreenDisplayItem:v6])
      {
        BSFloatIsZero();
      }
    }

    else
    {
      [v8 stripCornerRadii];
    }

    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v25 cornerRadiiForIndex:a3];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.topRight = v24;
  result.bottomRight = v23;
  result.bottomLeft = v22;
  result.topLeft = v21;
  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  initialAppLayout = self->_initialAppLayout;
  v8 = [v6 itemForLayoutRole:a3];
  if ([(SBAppLayout *)initialAppLayout containsItem:v8])
  {
  }

  else
  {
    selectedDisplayItem = self->_selectedDisplayItem;
    v10 = [v6 itemForLayoutRole:a3];
    LOBYTE(selectedDisplayItem) = [(SBDisplayItem *)selectedDisplayItem isEqualToItem:v10];

    if ((selectedDisplayItem & 1) == 0)
    {
      v13.receiver = self;
      v13.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
      v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v13 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
      goto LABEL_6;
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3
{
  v4 = a3;
  if (-[SBAppLayout containsAnyItemFromAppLayout:](self->_initialAppLayout, "containsAnyItemFromAppLayout:", v4) || ([v4 containsItem:self->_selectedDisplayItem] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:v4];
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  if (v4)
  {
    v5 = [v3 setByAddingObject:v4];

    v3 = v5;
  }

  return v3;
}

- (id)topMostLayoutElements
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v11 topMostLayoutElements];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  if (v4)
  {
    v5 = [v3 sb_arrayByInsertingOrMovingObject:v4 toIndex:0];

    v6 = [v5 bs_set];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__SBFlexibleWindowingWindowDragSwitcherModifier_topMostLayoutElements__block_invoke;
    v10[3] = &unk_2783BEAB8;
    v10[4] = self;
    v7 = [v6 objectsPassingTest:v10];

    v8 = [v7 bs_array];
    v3 = [v8 arrayByAddingObjectsFromArray:v5];
  }

  return v3;
}

uint64_t __70__SBFlexibleWindowingWindowDragSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 switcherLayoutElementType] == 10)
  {
    v4 = [v3 displayItems];
    v5 = [v4 containsObject:*(*(a1 + 32) + 552)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v27 animationAttributesForLayoutElement:v4];
  if ([v4 switcherLayoutElementType] || !objc_msgSend(v4, "containsItem:", self->_selectedDisplayItem))
  {
    v21 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    v7 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _baseLayoutSettings];
    [v7 dampingRatio];
    [v6 setTrackingDampingRatio:?];
    v26 = v7;
    [v7 response];
    [v6 setTrackingResponse:?];
    v8 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    v9 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    v10 = [v9 windowingSettings];
    v11 = [v10 windowDragAnimationSettings];

    anchorPointRampingProperty = self->_anchorPointRampingProperty;
    if (anchorPointRampingProperty)
    {
      [(UIViewFloatAnimatableProperty *)anchorPointRampingProperty presentationValue];
      v14 = v13;
      [v11 trackingResponse];
      v16 = v15;
      [v6 trackingResponse];
      v18 = v14 * (v16 - v17);
      [v6 trackingResponse];
      v20 = v19 + v18;
    }

    else
    {
      [v11 trackingResponse];
    }

    [v8 setTrackingResponse:v20];
    [v11 trackingDampingRatio];
    [v8 setTrackingDampingRatio:?];
    v29 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v8 setFrameRateRange:1114113 highFrameRateReason:{*&v29.minimum, *&v29.maximum, *&v29.preferred}];
    v21 = [v5 mutableCopy];
    [v21 setLayoutSettings:v6];
    [v21 setPositionSettings:v8];
    v23 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    v24 = [v23 windowingSettings];
    v25 = [v24 stageCornerRadiusSettings];
    [v21 setCornerRadiusSettings:v25];

    [v21 setCornerRadiusUpdateMode:3];
    if (self->_layOutSlideOverItemFullyOffscreen)
    {
      [v21 setUpdateMode:2];
      [v21 setLayoutUpdateMode:2];
      [v21 setPositionUpdateMode:2];
    }
  }

  return v21;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = 0.0;
  if (([v6 containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
    v7 = v8;
  }

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![v6 containsItem:self->_selectedDisplayItem] || (v7 = 0.0, -[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") <= 1))
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem])
    {
      v8 = *MEMORY[0x277CBF348];
      v7 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self isRTLEnabled];
      v12 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v12 stripTiltAngle];
      v7 = v13;
      if (v11)
      {
        v7 = -v13;
      }

      v8 = 0.0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v16 perspectiveAngleForIndex:a3];
    v8 = v9;
    v7 = v10;
  }

  v14 = v8;
  v15 = v7;
  result.y = v15;
  result.x = v14;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    Empty = SBSwitcherWallpaperGradientAttributesMakeEmpty();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:a3 inAppLayout:v6];
  }

  v9 = Empty;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 containsItem:self->_selectedDisplayItem] && (-[SBFlexibleWindowingWindowDragSwitcherModifier proposedAppLayout](self, "proposedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsItem:", self->_selectedDisplayItem), v7, !v8))
  {
    v9 = 2;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v9 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v11 shadowStyleForLayoutRole:a3 inAppLayout:v6];
  }

  return v9;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  if (([(SBDisplayItem *)v7 isEqualToItem:?]& 1) != 0)
  {
    v8 = 10;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 hiddenContentStatusBarPartsForLayoutRole:a3 inAppLayout:v6];
  }

  return v8;
}

- (BOOL)wantsSlideOverTongue
{
  wantsSlideOverTongue = self->_wantsSlideOverTongue;
  if (!wantsSlideOverTongue)
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    return [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v4 wantsSlideOverTongue];
  }

  return wantsSlideOverTongue;
}

- (unint64_t)slideOverTongueState
{
  if (self->_wantsSlideOverTongue)
  {
    slideOverTongueState = self->_slideOverTongueState;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    slideOverTongueState = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v9 slideOverTongueState];
    if (!self->_wantsSlideOverTongue)
    {
      return slideOverTongueState;
    }
  }

  if (self->_slideOverTongueState == 1)
  {
    v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    if (!v4 || ![(SBDisplayItem *)self->_selectedDisplayItem isEqualToItem:v4])
    {
      goto LABEL_14;
    }

    slideOverTongueDirection = self->_slideOverTongueDirection;
    if (slideOverTongueDirection == 1)
    {
      x = self->_location.x;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      if (x >= v7 + -24.0)
      {
        goto LABEL_13;
      }

      slideOverTongueDirection = self->_slideOverTongueDirection;
    }

    if (slideOverTongueDirection != 2 || self->_location.x > 24.0)
    {
      slideOverTongueState = 0;
LABEL_14:

      return slideOverTongueState;
    }

LABEL_13:
    slideOverTongueState = 1;
    goto LABEL_14;
  }

  return slideOverTongueState;
}

- (unint64_t)slideOverTongueDirection
{
  if (self->_wantsSlideOverTongue)
  {
    return self->_slideOverTongueDirection;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  return [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v5 slideOverTongueDirection];
}

- (id)appLayoutToAttachSlideOverTongue
{
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  if (v3 && [(SBDisplayItem *)self->_selectedDisplayItem isEqualToItem:v3])
  {
    v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke;
    v8[3] = &unk_2783A8CB8;
    v9 = v3;
    v5 = [v4 bs_firstObjectPassingTest:v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 appLayoutToAttachSlideOverTongue];
  }

  return v5;
}

- (void)_beginAnimatingAnchorPointRampingPropertyWithMode:(int64_t)a3 settings:(id)a4
{
  v6 = a4;
  anchorPointRampingProperty = self->_anchorPointRampingProperty;
  if (anchorPointRampingProperty)
  {
    [(UIViewFloatAnimatableProperty *)anchorPointRampingProperty invalidate];
    v8 = self->_anchorPointRampingProperty;
    self->_anchorPointRampingProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_anchorPointRampingProperty;
  self->_anchorPointRampingProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_anchorPointRampingProperty setValue:0.0];
  v11 = [v6 copy];
  LODWORD(v12) = *MEMORY[0x277CD9DD0];
  LODWORD(v13) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v14) = *(MEMORY[0x277CD9DD0] + 8);
  [v11 setFrameRateRange:1114112 highFrameRateReason:{v12, v13, v14}];
  v15 = v11;

  objc_initWeak(&location, self);
  v16 = self->_anchorPointRampingProperty;
  v17 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__SBFlexibleWindowingWindowDragSwitcherModifier__beginAnimatingAnchorPointRampingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SBFlexibleWindowingWindowDragSwitcherModifier__beginAnimatingAnchorPointRampingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __108__SBFlexibleWindowingWindowDragSwitcherModifier__beginAnimatingAnchorPointRampingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[41];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[41];
      v6[41] = 0;
    }

    WeakRetained = v6;
  }
}

- (id)_baseLayoutSettings
{
  v2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self medusaSettings];
  v3 = [v2 resizeAnimationSettings];

  return v3;
}

- (id)_appLayoutContainingDisplayItem:(id)a3
{
  v4 = a3;
  v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBFlexibleWindowingWindowDragSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v9[3] = &unk_2783A8CB8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)_isStripStashed
{
  v3 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v4 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v3];

  LOBYTE(v3) = [v4 isStripVisible];
  return v3 ^ 1;
}

- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem
{
  v2 = self;
  v3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self proposedAppLayoutsForWindowDrag];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__SBFlexibleWindowingWindowDragSwitcherModifier__anyProposedAppLayoutContainsSelectedDisplayItem__block_invoke;
  v5[3] = &unk_2783A8CB8;
  v5[4] = v2;
  LOBYTE(v2) = [v3 bs_containsObjectPassingTest:v5];

  return v2;
}

- (BOOL)_shouldLockYPosition
{
  if (self->_dragBeganInOtherSwitcher)
  {
    return 0;
  }

  else
  {
    v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    v5 = BSEqualObjects();

    return v5 && self->_startedStashed;
  }
}

- (BOOL)_slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:(CGPoint)a3
{
  x = self->_slideOverCenterSettledPosition.x;
  y = self->_slideOverCenterSettledPosition.y;
  v5 = x == 1.79769313e308 && y == 1.79769313e308;
  result = !v5 && (a3.x == 1.79769313e308 ? (v6 = a3.y == 1.79769313e308) : (v6 = 0), !v6) && sqrt((x - a3.x) * (x - a3.x) + (y - a3.y) * (y - a3.y)) <= 14.1421356;
  return result;
}

- (void)initWithGestureID:(uint64_t)a1 initialAppLayout:(uint64_t)a2 selectedDisplayItem:wantsSlideOverTongue:slideOverTongueState:slideOverTongueDirection:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingWindowDragSwitcherModifier.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"selectedDisplayItem"}];
}

- (void)initWithGestureID:(uint64_t)a1 initialAppLayout:(uint64_t)a2 selectedDisplayItem:wantsSlideOverTongue:slideOverTongueState:slideOverTongueDirection:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingWindowDragSwitcherModifier.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"initialAppLayout"}];
}

@end