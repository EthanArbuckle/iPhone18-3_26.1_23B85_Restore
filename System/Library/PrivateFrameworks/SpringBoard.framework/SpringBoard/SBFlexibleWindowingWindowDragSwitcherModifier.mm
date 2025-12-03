@interface SBFlexibleWindowingWindowDragSwitcherModifier
- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_isStripStashed;
- (BOOL)_shouldLockYPosition;
- (BOOL)_slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:(CGPoint)center;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout;
- (BOOL)wantsSlideOverTongue;
- (CGPoint)_draggingItemScreenCenterForSize:(CGSize)size scale:(double)scale;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGPoint)preferredCenterForSelectedItemInDestinationModifier:(id)modifier clippingToInitialStageArea:(BOOL)area;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBFlexibleWindowingWindowDragSwitcherModifier)initWithGestureID:(id)d initialAppLayout:(id)layout selectedDisplayItem:(id)item wantsSlideOverTongue:(BOOL)tongue slideOverTongueState:(unint64_t)state slideOverTongueDirection:(unint64_t)direction;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)continuousExposeStripProgress;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)_appLayoutContainingDisplayItem:(id)item;
- (id)_baseLayoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutToAttachSlideOverTongue;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (void)_beginAnimatingAnchorPointRampingPropertyWithMode:(int64_t)mode settings:(id)settings;
- (void)didMoveToParentModifier:(id)modifier;
- (void)updateProposedAppLayoutWithAppLayout:(id)layout andInitialAppLayout:(id)appLayout;
@end

@implementation SBFlexibleWindowingWindowDragSwitcherModifier

- (SBFlexibleWindowingWindowDragSwitcherModifier)initWithGestureID:(id)d initialAppLayout:(id)layout selectedDisplayItem:(id)item wantsSlideOverTongue:(BOOL)tongue slideOverTongueState:(unint64_t)state slideOverTongueDirection:(unint64_t)direction
{
  layoutCopy = layout;
  itemCopy = item;
  v27.receiver = self;
  v27.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v18 = [(SBGestureSwitcherModifier *)&v27 initWithGestureID:d];
  if (v18)
  {
    if (itemCopy)
    {
      if (layoutCopy)
      {
LABEL_4:
        objc_storeStrong(v18 + 68, layout);
        objc_storeStrong(v18 + 69, item);
        v18[520] = tongue;
        *(v18 + 66) = state;
        *(v18 + 67) = direction;
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
      if (layoutCopy)
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

- (void)didMoveToParentModifier:(id)modifier
{
  v20.receiver = self;
  v20.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  [(SBChainableModifier *)&v20 didMoveToParentModifier:?];
  if (modifier && !self->_initialAutoLayoutSpace && self->_initialAppLayout)
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

    displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    if (displayItemInSlideOver)
    {
      if (BSEqualObjects())
      {
        v12 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:self->_initialAppLayout];
        [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
        v13 = v18[1];
        *&self->_initialSlideOverConfiguration.corner = v18[0];
        self->_initialSlideOverConfiguration.size = v13;
        *&self->_initialSlideOverConfiguration.isActive = v19;

        self->_startedStashed = ![(SBAppLayout *)self->_initialAppLayout containsItem:displayItemInSlideOver];
      }
    }

    switcherSettings = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];

    [windowingSettings windowDragRubberBandedTranslationRange];
    self->_rubberBandingRange = v16;
    [windowingSettings windowDragRubberBandedTranslationDetachmentThreshold];
    self->_detachmentThreshold = v17;
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_initialAppLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"initialAppLayout"];

  v7 = [v4 appendObject:self->_selectedDisplayItem withName:@"selectedDisplayItem"];
  v8 = [v4 appendPoint:@"initialAnchorPoint" withName:{self->_initialAnchorPoint.x, self->_initialAnchorPoint.y}];
  v9 = [v4 appendPoint:@"anchorPoint" withName:{self->_anchorPoint.x, self->_anchorPoint.y}];

  return v4;
}

- (void)updateProposedAppLayoutWithAppLayout:(id)layout andInitialAppLayout:(id)appLayout
{
  objc_storeStrong(&self->_initialAppLayout, appLayout);
  appLayoutCopy = appLayout;
  layoutCopy = layout;
  [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier updateProposedAppLayoutWithAppLayout:layoutCopy andInitialAppLayout:appLayoutCopy];
}

- (CGPoint)_draggingItemScreenCenterForSize:(CGSize)size scale:(double)scale
{
  __asm { FMOV            V5.2D, #0.5 }

  height = size.height;
  v10 = vmlaq_n_f64(self->_location, vmulq_f64(size, vsubq_f64(_Q5, self->_anchorPoint)), scale);
  v11 = v10.f64[1];
  v12 = v10.f64[0];
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)preferredCenterForSelectedItemInDestinationModifier:(id)modifier clippingToInitialStageArea:(BOOL)area
{
  areaCopy = area;
  v6 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v8 = [appLayouts indexOfObject:v6];

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
      displayItemLayoutAttributesCalculator = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      initialLayoutAttributes = self->_initialLayoutAttributes;
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [displayItemLayoutAttributesCalculator centerForLayoutAttributes:initialLayoutAttributes windowingConfiguration:windowingConfiguration];
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

    if (areaCopy)
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
  appLayoutsToCacheFullsizeSnapshots = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 appLayoutsToCacheFullsizeSnapshots];
  displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = displayItemInSlideOver;
  v6 = displayItemInSlideOver;
  v7 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [appLayoutsToCacheFullsizeSnapshots arrayByAddingObject:v7];

    appLayoutsToCacheFullsizeSnapshots = v8;
  }

  return appLayoutsToCacheFullsizeSnapshots;
}

- (id)appLayoutsToCacheSnapshots
{
  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  appLayoutsToCacheSnapshots = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 appLayoutsToCacheSnapshots];
  displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v10[3] = &unk_2783A8CB8;
  v11 = displayItemInSlideOver;
  v6 = displayItemInSlideOver;
  v7 = [appLayouts bs_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [appLayoutsToCacheSnapshots arrayByAddingObject:v7];

    appLayoutsToCacheSnapshots = v8;
  }

  return appLayoutsToCacheSnapshots;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v6 = [proposedAppLayout containsItem:self->_selectedDisplayItem];

  v18.receiver = self;
  v18.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v7 = [(SBGestureSwitcherModifier *)&v18 handleEvent:eventCopy];
  proposedAppLayout2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v9 = [proposedAppLayout2 containsItem:self->_selectedDisplayItem];

  v10 = v6 ^ v9;
  displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  v12 = displayItemInSlideOver;
  if ((v10 & 1) != 0 || !displayItemInSlideOver)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (-[SBDisplayItem isEqualToItem:](self->_selectedDisplayItem, displayItemInSlideOver) && [eventCopy isWindowDragGestureEvent] && objc_msgSend(eventCopy, "phase") == 1 && !-[SBAppLayout containsItem:](self->_initialAppLayout, "containsItem:", v12))
  {
LABEL_9:
    _baseLayoutSettings = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _baseLayoutSettings];
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _beginAnimatingAnchorPointRampingPropertyWithMode:3 settings:_baseLayoutSettings];
  }

LABEL_10:
  proposedAppLayout3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self proposedAppLayout];
  v15 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:proposedAppLayout3];
  previousAutoLayoutSpace = self->_previousAutoLayoutSpace;
  self->_previousAutoLayoutSpace = v15;

  return v7;
}

- (id)handleGestureEvent:(id)event
{
  v311 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v309.receiver = self;
  v309.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v309 handleGestureEvent:eventCopy];
  [eventCopy locationInContainerView];
  self->_location.x = v6;
  self->_location.y = v7;
  p_translation = &self->_translation;
  [eventCopy translationInContainerView];
  self->_translation.x = v9;
  self->_translation.y = v10;
  v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
  v12 = ([eventCopy isCanceled] & 1) != 0 || -[SBContinuousExposeWindowDragDestinationSwitcherModifier proposedDestination](self->_destinationModifier, "proposedDestination") == 0;
  self->_gestureWasCanceled = v12;
  windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
  phase = [eventCopy phase];
  v280 = phase;
  selfCopy = self;
  if (phase == 2)
  {
    if (self->_gestureWasCanceled)
    {
      goto LABEL_49;
    }

    v275 = windowingConfiguration;
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

    proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if (![proposedAppLayout containsItem:self->_selectedDisplayItem])
    {
      v11 = &OBJC_IVAR___SBExternalDisplayCoverSheetController__screenOn;
      v15 = proposedAppLayout;
LABEL_48:

      windowingConfiguration = v275;
      goto LABEL_49;
    }

    v278 = v5;
    v303 = 0u;
    v304 = 0;
    v33 = [proposedAppLayout leafAppLayoutForItem:self->_selectedDisplayItem];
    v302.receiver = self;
    v302.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v302 windowControlsLayoutForLeafAppLayout:v33];

    v264 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:proposedAppLayout];
    v271 = proposedAppLayout;
    v267 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:proposedAppLayout];
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
        layoutSettings = [v38 layoutSettings];

        [v267 setAnimationSettings:layoutSettings];
        self = selfCopy;
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
            allItems = [(SBAppLayout *)self->_initialAppLayout allItems];
            v45 = [allItems count];

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

              selfCopy->_hasUnstashed = 1;
              v278 = v180;
              self = selfCopy;
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
      windowingConfiguration2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
      appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
      v184 = [appLayouts indexOfObject:windowingConfiguration2];

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
      if (v191 >= v196 && v191 <= v197 && [eventCopy selectedEdge] == 1)
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
          self = selfCopy;
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
        windowingConfiguration2 = [(SBSwitcherModifier *)self windowingConfiguration];
        [windowingConfiguration2 screenEdgePadding];
        v263 = v145;
        [windowingConfiguration2 defaultWindowSize];
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
        v147 = v146;
        v149 = v148;
        v151 = v150;
        v153 = v152;
        SBDisplayItemTileConfigurationMakeNotTiled(&v295);
        v154 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v264];
        displayItemLayoutAttributesCalculator = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:v264 windowingConfiguration:windowingConfiguration2];
        v157 = v156;
        v159 = v158;

        displayItemLayoutAttributesCalculator2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        [displayItemLayoutAttributesCalculator2 sizeForLayoutAttributes:v154 windowingConfiguration:windowingConfiguration2];
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
            layoutRestrictions = [v204 layoutRestrictions];
            windowingConfiguration3 = [(SBSwitcherModifier *)self windowingConfiguration];
            if ((layoutRestrictions & 0x10) != 0)
            {
              [(SBDisplayItemLayoutAttributes *)v40 attributedSize];
              if (v290 == 3)
              {
                authenticator = [(SBHomeScreenConfigurationServer *)v40 authenticator];
                selectedDisplayItem = self->_selectedDisplayItem;
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
                v210 = v209;
                v212 = v211;
                v214 = v213;
                v216 = v215;
                layoutGrid = selfCopy->_layoutGrid;
                v218 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy layoutRestrictionInfoForItem:selfCopy->_selectedDisplayItem];
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy screenScale];
                v219 = layoutGrid;
                self = selfCopy;
                [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy minSizeForDisplayItem:selectedDisplayItem inContainerBounds:v219 layoutGrid:v218 layoutRestrictionInfo:authenticator contentOrientation:windowingConfiguration3 screenScale:v210 windowingConfiguration:v212, v214, v216, v220];
                v222 = v221;
                v224 = v223;

                v298 = 0;
                v296 = 0;
                v297 = 0u;
                v295 = 0u;
                [windowingConfiguration3 containerBounds];
                v226 = v225;
                v228 = v227;
                v230 = v229;
                v232 = v231;
                [windowingConfiguration3 defaultWindowSize];
                [windowingConfiguration3 screenEdgePadding];
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

          v262 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesMapForAppLayout:v167, v262];
          v236 = [v262 mutableCopy];

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

            self = selfCopy;
            [v267 setAnimationSettings:v247];

            v5 = v246;
            selfCopy->_draggedDisplayItemIntersectsHomeAffordanceArea = v243;
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
          windowingConfiguration2 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v264];
        }

        else
        {
          windowingConfiguration2 = v264;
        }

        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
        v258 = v257;
        v260 = v259;
        [v275 defaultWindowSize];
        [v275 screenEdgePadding];
        v270 = 1;
        if ([SBDisplayItemLayoutAttributes sizeInBounds:windowingConfiguration2 defaultSize:? screenEdgePadding:?]!= v258 || v261 != v260)
        {
          v40 = windowingConfiguration2;
          goto LABEL_159;
        }

        v40 = [(SBSwitcherModifier *)self defaultMultitaskingLayoutAttributesForDisplayItem:self->_selectedDisplayItem layoutAttributes:windowingConfiguration2 layoutGrid:self->_layoutGrid];
      }

      v270 = 1;
    }

    goto LABEL_159;
  }

  if (phase == 1)
  {
    v277 = v5;
    v15 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
    draggingAppLayoutsForWindowDrag = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
    v308[0] = MEMORY[0x277D85DD0];
    v308[1] = 3221225472;
    v308[2] = __68__SBFlexibleWindowingWindowDragSwitcherModifier_handleGestureEvent___block_invoke;
    v308[3] = &unk_2783A8CB8;
    v308[4] = self;
    v17 = [draggingAppLayoutsForWindowDrag bs_firstObjectPassingTest:v308];

    p_sizeOfSelectedDisplayItem = &self->_sizeOfSelectedDisplayItem;
    -[SBFlexibleWindowingWindowDragSwitcherModifier sizeOfDisplayItem:inDisplayWithOrdinal:](self, "sizeOfDisplayItem:inDisplayWithOrdinal:", self->_selectedDisplayItem, [v17 preferredDisplayOrdinal]);
    self->_sizeOfSelectedDisplayItem.width = v19;
    self->_sizeOfSelectedDisplayItem.height = v20;
    v268 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v15];
    v266 = [v268 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
    self->_draggedDisplayItemIntersectsHomeAffordanceArea = [(SBSwitcherModifier *)self autoLayoutItemIntersectsHomeAffordanceArea:?];
    [eventCopy sizeOfSelectedDisplayItem];
    v269 = v17;
    preferredDisplayOrdinal = [v17 preferredDisplayOrdinal];
    v275 = windowingConfiguration;
    if (preferredDisplayOrdinal == [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayOrdinal])
    {
      hasMultipleDisplays = 0;
    }

    else
    {
      hasMultipleDisplays = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self hasMultipleDisplays];
    }

    self->_dragBeganInOtherSwitcher = hasMultipleDisplays;
    isDraggingFromContinuousExposeStrips = [eventCopy isDraggingFromContinuousExposeStrips];
    self->_dragBeganInAnyStrip = isDraggingFromContinuousExposeStrips;
    self->_dragBeganOnAnyStage = isDraggingFromContinuousExposeStrips ^ 1;
    proposedAppLayout2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if ([proposedAppLayout2 containsItem:self->_selectedDisplayItem])
    {
      v48 = v15;
      v49 = eventCopy;
      v50 = [proposedAppLayout2 leafAppLayoutForItem:self->_selectedDisplayItem];
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

      v54 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self layoutAttributesForDisplayItem:self->_selectedDisplayItem inAppLayout:proposedAppLayout2];
      initialLayoutAttributes = self->_initialLayoutAttributes;
      self->_initialLayoutAttributes = v54;

      self->_initialLocation = self->_location;
      self->_prefersInitialLayout = *p_selectedAppLayoutWasInitiallyFullScreen;
      eventCopy = v49;
      v15 = v48;
    }

    if (v15)
    {
      appLayouts2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
      v57 = [appLayouts2 indexOfObject:v15];

      [eventCopy locationInSelectedDisplayItem];
      v59 = v58;
      v61 = v60;
      v272 = v15;
      if (selfCopy->_dragBeganInOtherSwitcher)
      {
        width = p_sizeOfSelectedDisplayItem->width;
        height = p_sizeOfSelectedDisplayItem->height;
      }

      else
      {
        v306.receiver = selfCopy;
        v306.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v306 frameForIndex:v57];
        v64 = [v15 layoutRoleForItem:selfCopy->_selectedDisplayItem];
        SBRectWithSize();
        v305.receiver = selfCopy;
        v305.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v305 frameForLayoutRole:v64 inAppLayout:v15 withBounds:?];
        width = v65;
        height = v66;
        v67 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy layoutAttributesForDisplayItem:selfCopy->_selectedDisplayItem inAppLayout:v15];
        selfCopy->_initialNormalizedCenter.x = [(SBDisplayItemLayoutAttributes *)v67 normalizedCenter];
        selfCopy->_initialNormalizedCenter.y = v68;
      }

      p_x = &selfCopy->_anchorPoint.x;
      selfCopy->_anchorPoint.x = v59 / width;
      selfCopy->_anchorPoint.y = v61 / height;
      displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy displayItemInSlideOver];
      v71 = selfCopy;
      v72 = [(SBDisplayItem *)displayItemInSlideOver isEqualToItem:?];

      if (v72)
      {
        if (selfCopy->_startedStashed)
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
        v71 = selfCopy;
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

    displayItemInSlideOver2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
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
  _anyProposedAppLayoutContainsSelectedDisplayItem = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];
  v84 = v11[947];
  proposedAppLayout3 = [*(&self->super.super.super.super.super.isa + v84) proposedAppLayout];
  selfCopy2 = self;
  v87 = [proposedAppLayout3 containsItem:self->_selectedDisplayItem];

  if (selfCopy2->_dragBeganInOurSwitcher && (v87 & 1) == 0 && _anyProposedAppLayoutContainsSelectedDisplayItem)
  {
    __asm { FMOV            V0.2D, #0.5 }

    v92 = selfCopy;
LABEL_53:
    v92->_anchorPoint = _Q0;
    goto LABEL_56;
  }

  if (selfCopy->_dragBeganInOtherSwitcher & v87)
  {
    __asm { FMOV            V0.2D, #0.5 }

    selfCopy->_anchorPoint = _Q0;
    v92 = selfCopy;
  }

  else
  {
    v92 = selfCopy;
    if (selfCopy->_dragBeganInAnyStrip && _anyProposedAppLayoutContainsSelectedDisplayItem)
    {
      __asm { FMOV            V0.2D, #0.5 }

      goto LABEL_53;
    }

    if (_anyProposedAppLayoutContainsSelectedDisplayItem || !selfCopy->_dragBeganOnAnyStage)
    {
      _Q0 = selfCopy->_initialAnchorPoint;
      goto LABEL_53;
    }

    selfCopy->_anchorPoint.x = 0.4;
  }

LABEL_56:
  if (v280 == 3)
  {
    if (v92->_gestureWasCanceled)
    {
      proposedAppLayout4 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v92->_initialAppLayout];
      v95 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:proposedAppLayout4 gestureInitiated:1];
      v96 = SBAppendSwitcherModifierResponse(v95, v5);
LABEL_113:

      v5 = v96;
      goto LABEL_114;
    }

    proposedAppLayout4 = [*(&v92->super.super.super.super.super.isa + v84) proposedAppLayout];
    x = v92->_averageVelocity.x;
    y = v92->_averageVelocity.y;
    [eventCopy translationInContainerView];
    if (([eventCopy isPointerTouch] & 1) == 0 && !v92->_selectedAppLayoutWasInitiallyFullScreen)
    {
      v99 = 0;
      v124 = fabs(x);
      if (y <= v124 || y - v124 < 1600.0)
      {
        goto LABEL_64;
      }

      if (BSFloatGreaterThanOrEqualToFloat() && ![*(&v92->super.super.super.super.super.isa + v84) tileDestinationForEvent:eventCopy] && -[SBAppLayout containsItem:](v92->_initialAppLayout, "containsItem:", v92->_selectedDisplayItem))
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
          v171 = [proposedAppLayout4 appLayoutWithItemsPassingTest:v288];

          windowManagementContext = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v125 windowManagementContext];
          if (([windowManagementContext isAutomaticStageCreationEnabled] & 1) == 0)
          {
            v173 = [SBRemoveFromDesktopSwitcherEventResponse alloc];
            v174 = [MEMORY[0x277CBEB98] setWithObject:v125->_selectedDisplayItem];
            v175 = [(SBRemoveFromDesktopSwitcherEventResponse *)v173 initWithDisplayItems:v174];
            v176 = SBAppendSwitcherModifierResponse(v175, v5);
            v177 = v5;
            v5 = v176;
          }

          v99 = 1;
          proposedAppLayout4 = v171;
          v92 = selfCopy;
        }

        goto LABEL_64;
      }
    }

    v99 = 0;
LABEL_64:
    if ([proposedAppLayout4 containsItem:v92->_selectedDisplayItem])
    {
      v274 = v99;
      v276 = windowingConfiguration;
      v279 = v5;
      v281 = eventCopy;
      v100 = proposedAppLayout4;
      [(SBSwitcherModifier *)v92 flexibleAutoLayoutSpaceForAppLayout:?];
      v284 = 0u;
      v285 = 0u;
      v286 = 0u;
      v273 = v287 = 0u;
      autoLayoutItems = [v273 autoLayoutItems];
      v102 = [autoLayoutItems countByEnumeratingWithState:&v284 objects:v310 count:16];
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
              objc_enumerationMutation(autoLayoutItems);
            }

            v106 = *(*(&v284 + 1) + 8 * i);
            displayItem = [v106 displayItem];
            v108 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 layoutAttributesForDisplayItem:displayItem inAppLayout:proposedAppLayout4];
            if ([(SBDisplayItem *)displayItem isEqualToItem:?]&& [(SBHomeScreenConfigurationServer *)v108 connections]== 2)
            {
              v118 = v92->_initialNormalizedCenter.x;
              v110 = v92->_initialNormalizedCenter.y;
            }

            else
            {
              [v106 position];
              v112 = v111;
              v114 = v113;
              [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 containerViewBounds];
              v118 = [(SBDisplayItemLayoutAttributes *)v112 normalizedPointForPoint:v114 inBounds:v115, v116, v117, v118];
              v110 = v119;
            }

            if (v118 != 1.79769313e308 || v110 != 1.79769313e308)
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
                v110 = [(SBDisplayItemLayoutAttributes *)v121 attributesByModifyingNormalizedCenter:v118, v110];

                v121 = v110;
              }

              v123 = [(SBDisplayItemLayoutAttributes *)v121 attributesByModifyingCascaded:?];

              [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy updateLayoutAttributes:v123 ofDisplayItem:displayItem];
              v92 = selfCopy;
            }
          }

          v103 = [autoLayoutItems countByEnumeratingWithState:&v284 objects:v310 count:16];
        }

        while (v103);
      }

      v99 = v274;
      if ((v274 & 1) == 0)
      {
        proposedAppLayout4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)v92 appLayoutByBringingItemToFront:v92->_selectedDisplayItem inAppLayout:proposedAppLayout4];
      }

      windowingConfiguration = v276;
      v5 = v279;

      eventCopy = v281;
    }

    if (!proposedAppLayout4)
    {
      proposedAppLayout4 = +[SBAppLayout homeScreenAppLayout];
    }

    v128 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:proposedAppLayout4];
    v95 = v128;
    if (v99)
    {
      [(SBPerformTransitionSwitcherEventResponse *)v128 setPeekConfiguration:1];
      v129 = +[SBAppLayout homeScreenAppLayout];
      v130 = [proposedAppLayout4 isEqual:v129];

      if ((v130 & 1) == 0)
      {
        [(SBPerformTransitionSwitcherEventResponse *)v95 setMinimizingDisplayItem:selfCopy->_selectedDisplayItem];
      }

      v131 = v5;
      v132 = selfCopy;
      v133 = selfCopy->_initialLayoutAttributes;
      if (v133)
      {
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy updateLayoutAttributes:v133 ofDisplayItem:selfCopy->_selectedDisplayItem];
      }
    }

    else
    {
      v131 = v5;
      v132 = selfCopy;
      displayItemInSlideOver3 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy displayItemInSlideOver];
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
    if (proposedAppLayout4 && (v136 & 1) == 0 && ([proposedAppLayout4 containsItem:selfCopy->_selectedDisplayItem] & 1) == 0)
    {
      v137 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:1 dismissalOptions:0];
      v138 = SBAppendSwitcherModifierResponse(v137, v96);

      v96 = v138;
    }

    [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy continuousExposeStripProgress];
    if (BSFloatGreaterThanFloat() && [(SBFlexibleWindowingWindowDragSwitcherModifier *)selfCopy _isStripStashed])
    {
      v139 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
      SBAppendSwitcherModifierResponse(v139, v96);
      v141 = v140 = eventCopy;

      v96 = v141;
      eventCopy = v140;
    }

    goto LABEL_113;
  }

LABEL_114:
  v142 = v5;

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  v35.receiver = self;
  v35.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v35 handleTimerEvent:eventCopy];
  if (!self->_startedStashed)
  {
    slideOverCenterExitingUpdateReason = self->_slideOverCenterExitingUpdateReason;
    if (slideOverCenterExitingUpdateReason)
    {
      reason = [eventCopy reason];
      v8 = [(NSString *)slideOverCenterExitingUpdateReason isEqual:reason];

      if (v8)
      {
        appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __66__SBFlexibleWindowingWindowDragSwitcherModifier_handleTimerEvent___block_invoke;
        v34[3] = &unk_2783A8CB8;
        v34[4] = self;
        v10 = [appLayouts bs_firstObjectPassingTest:v34];

        appLayouts2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
        v12 = [appLayouts2 indexOfObject:v10];

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
          proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
          v23 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:proposedAppLayout];

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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];
  if ([eventCopy phase] >= 2 && (objc_msgSend(eventCopy, "isAppLaunchDuringWindowDragGestureTransition") & 1) == 0 && (objc_msgSend(eventCopy, "isUnstashFromHomeTransition") & 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  if ([proposedAppLayout containsAllItemsFromAppLayout:layoutCopy])
  {
    v6 = proposedAppLayout;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v6 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v9 appLayoutContainingAppLayout:layoutCopy];
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
    proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    if ([proposedAppLayout containsItem:self->_selectedDisplayItem])
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

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    v69.receiver = self;
    v69.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v69 frameForIndex:index];
  }

  else
  {
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem:1.79769313e308];
    proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    v10 = [proposedAppLayout containsItem:self->_selectedDisplayItem];

    v11 = !self->_dragBeganInOtherSwitcher || !v8;
    if (v11 || (v10 & 1) != 0)
    {
      proposedAppLayout2 = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
      if ([proposedAppLayout2 containsItem:self->_selectedDisplayItem])
      {
        v19 = proposedAppLayout2;
      }

      else
      {
        v19 = v6;
      }

      v20 = v19;
      displayItemLayoutAttributesCalculator = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemLayoutAttributesCalculator];
      v67 = [v20 layoutRoleForItem:self->_selectedDisplayItem];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      v65 = v22;
      v66 = v21;
      v24 = v23;
      v26 = v25;
      switcherInterfaceOrientation = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherInterfaceOrientation];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self floatingDockHeight];
      v28 = v27;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self screenScale];
      v30 = v29;
      isDisplayEmbedded = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self isDisplayEmbedded];
      prefersStripHidden = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self prefersStripHidden];
      prefersDockHidden = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self prefersDockHidden];
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
      LOBYTE(v63) = prefersDockHidden;
      [displayItemLayoutAttributesCalculator frameForLayoutRole:v67 inAppLayout:v20 containerBounds:switcherInterfaceOrientation containerOrientation:1 floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden isChamoisWindowingUIEnabled:v66 isEmbeddedDisplay:v65 prefersStripHidden:v24 prefersDockHidden:v26 leftStatusBarPartIntersectionRegion:v28 rightStatusBarPartIntersectionRegion:{v30, v63, v35, v37, v39, v41, v42, v43, v44, v45}];
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
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v75 frameForIndex:index];
      width = v48;
      height = v49;
    }

    displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    v51 = BSEqualObjects();

    if (v51)
    {
      [(SBFlexibleWindowingWindowDragSwitcherModifier *)self containerViewBounds];
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [windowingConfiguration slideOverBorderWidth];

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
        [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:index];
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

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v16 scaleForIndex:index, self, SBFlexibleWindowingWindowDragSwitcherModifier, v17.receiver, v17.super_class];
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
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    [windowingConfiguration stripCardScale];
    v8 = v15;

    goto LABEL_12;
  }

  if (!self->_dragBeganOnAnyStage)
  {
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v17 scaleForIndex:index, v16.receiver, v16.super_class, self, SBFlexibleWindowingWindowDragSwitcherModifier];
    goto LABEL_11;
  }

  v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem:1.79769313e308];
  proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v13 = [proposedAppLayout containsItem:self->_selectedDisplayItem];

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

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![v6 containsItem:self->_selectedDisplayItem] || ((x = self->_anchorPoint.x, y = self->_anchorPoint.y, x == 1.79769313e308) ? (v9 = y == 1.79769313e308) : (v9 = 0), v9))
  {
    v14.receiver = self;
    v14.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v14 anchorPointForIndex:index];
    x = v10;
    y = v11;
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v7 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (![v6 containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v7 = self->_anchorPoint.y == 1.79769313e308) : (v7 = 0), v7))
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 shouldPinLayoutRolesToSpace:space];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if (![layoutCopy containsItem:self->_selectedDisplayItem] || (self->_anchorPoint.x == 1.79769313e308 ? (v12 = self->_anchorPoint.y == 1.79769313e308) : (v12 = 0), v12))
  {
    v21.receiver = self;
    v21.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v21 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 1.0;
  if (([layoutCopy containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  v12 = [layoutCopy itemForLayoutRole:role];
  if (![(SBDisplayItem *)v12 isEqualToItem:?])
  {

    goto LABEL_6;
  }

  if (self->_dragBeganInAnyStrip)
  {
    _anyProposedAppLayoutContainsSelectedDisplayItem = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];

    if (_anyProposedAppLayoutContainsSelectedDisplayItem)
    {
      goto LABEL_8;
    }

LABEL_6:
    v35.receiver = self;
    v35.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v35 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    goto LABEL_16;
  }

LABEL_8:
  [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayCornerRadius];
  v19 = v22;
  [(SBFlexibleWindowingWindowDragSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:layoutCopy];
  SBRectCornerRadiiForRadius();
  v15 = v23;
  v17 = v24;
  v26 = v25;
  v21 = v27;
  v28 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
  v29 = [v28 flexibleAutoLayoutItemForDisplayItem:self->_selectedDisplayItem];
  intersectedDisplayRectCorners = [v29 intersectedDisplayRectCorners];

  if (intersectedDisplayRectCorners)
  {
    v15 = v19;
  }

  if ((intersectedDisplayRectCorners & 2) != 0)
  {
    v21 = v19;
  }

  if ((intersectedDisplayRectCorners & 4) != 0)
  {
    v17 = v19;
  }

  if ((intersectedDisplayRectCorners & 8) == 0)
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

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    if ([proposedAppLayout containsItem:self->_selectedDisplayItem])
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
      [windowingConfiguration stripCornerRadii];
    }

    [(SBFlexibleWindowingWindowDragSwitcherModifier *)self scaleForIndex:index];
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
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v25 cornerRadiiForIndex:index];
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

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  initialAppLayout = self->_initialAppLayout;
  v8 = [layoutCopy itemForLayoutRole:scene];
  if ([(SBAppLayout *)initialAppLayout containsItem:v8])
  {
  }

  else
  {
    selectedDisplayItem = self->_selectedDisplayItem;
    v10 = [layoutCopy itemForLayoutRole:scene];
    LOBYTE(selectedDisplayItem) = [(SBDisplayItem *)selectedDisplayItem isEqualToItem:v10];

    if ((selectedDisplayItem & 1) == 0)
    {
      v13.receiver = self;
      v13.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
      v11 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v13 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
      goto LABEL_6;
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout
{
  layoutCopy = layout;
  if (-[SBAppLayout containsAnyItemFromAppLayout:](self->_initialAppLayout, "containsAnyItemFromAppLayout:", layoutCopy) || ([layoutCopy containsItem:self->_selectedDisplayItem] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v5 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:layoutCopy];
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  visibleAppLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  if (v4)
  {
    v5 = [visibleAppLayouts setByAddingObject:v4];

    visibleAppLayouts = v5;
  }

  return visibleAppLayouts;
}

- (id)topMostLayoutElements
{
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  topMostLayoutElements = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v11 topMostLayoutElements];
  v4 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
  if (v4)
  {
    v5 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v4 toIndex:0];

    bs_set = [v5 bs_set];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__SBFlexibleWindowingWindowDragSwitcherModifier_topMostLayoutElements__block_invoke;
    v10[3] = &unk_2783BEAB8;
    v10[4] = self;
    v7 = [bs_set objectsPassingTest:v10];

    bs_array = [v7 bs_array];
    topMostLayoutElements = [bs_array arrayByAddingObjectsFromArray:v5];
  }

  return topMostLayoutElements;
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

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v27.receiver = self;
  v27.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v27 animationAttributesForLayoutElement:elementCopy];
  if ([elementCopy switcherLayoutElementType] || !objc_msgSend(elementCopy, "containsItem:", self->_selectedDisplayItem))
  {
    v21 = v5;
  }

  else
  {
    initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    _baseLayoutSettings = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self _baseLayoutSettings];
    [_baseLayoutSettings dampingRatio];
    [initWithDefaultValues setTrackingDampingRatio:?];
    v26 = _baseLayoutSettings;
    [_baseLayoutSettings response];
    [initWithDefaultValues setTrackingResponse:?];
    initWithDefaultValues2 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    switcherSettings = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    windowDragAnimationSettings = [windowingSettings windowDragAnimationSettings];

    anchorPointRampingProperty = self->_anchorPointRampingProperty;
    if (anchorPointRampingProperty)
    {
      [(UIViewFloatAnimatableProperty *)anchorPointRampingProperty presentationValue];
      v14 = v13;
      [windowDragAnimationSettings trackingResponse];
      v16 = v15;
      [initWithDefaultValues trackingResponse];
      v18 = v14 * (v16 - v17);
      [initWithDefaultValues trackingResponse];
      v20 = v19 + v18;
    }

    else
    {
      [windowDragAnimationSettings trackingResponse];
    }

    [initWithDefaultValues2 setTrackingResponse:v20];
    [windowDragAnimationSettings trackingDampingRatio];
    [initWithDefaultValues2 setTrackingDampingRatio:?];
    v29 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [initWithDefaultValues2 setFrameRateRange:1114113 highFrameRateReason:{*&v29.minimum, *&v29.maximum, *&v29.preferred}];
    v21 = [v5 mutableCopy];
    [v21 setLayoutSettings:initWithDefaultValues];
    [v21 setPositionSettings:initWithDefaultValues2];
    switcherSettings2 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self switcherSettings];
    windowingSettings2 = [switcherSettings2 windowingSettings];
    stageCornerRadiusSettings = [windowingSettings2 stageCornerRadiusSettings];
    [v21 setCornerRadiusSettings:stageCornerRadiusSettings];

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

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = 0.0;
  if (([layoutCopy containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
    v7 = v8;
  }

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (![v6 containsItem:self->_selectedDisplayItem] || (v7 = 0.0, -[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") <= 1))
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 titleAndIconOpacityForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    if ([(SBFlexibleWindowingWindowDragSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem])
    {
      v8 = *MEMORY[0x277CBF348];
      v7 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      isRTLEnabled = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self isRTLEnabled];
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [windowingConfiguration stripTiltAngle];
      v7 = v13;
      if (isRTLEnabled)
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
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v16 perspectiveAngleForIndex:index];
    v8 = v9;
    v7 = v10;
  }

  v14 = v8;
  v15 = v7;
  result.y = v15;
  result.x = v14;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_selectedDisplayItem])
  {
    Empty = SBSwitcherWallpaperGradientAttributesMakeEmpty();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:role inAppLayout:layoutCopy];
  }

  v9 = Empty;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_selectedDisplayItem] && (-[SBFlexibleWindowingWindowDragSwitcherModifier proposedAppLayout](self, "proposedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsItem:", self->_selectedDisplayItem), v7, !v8))
  {
    v9 = 2;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v9 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v11 shadowStyleForLayoutRole:role inAppLayout:layoutCopy];
  }

  return v9;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:role];
  if (([(SBDisplayItem *)v7 isEqualToItem:?]& 1) != 0)
  {
    v8 = 10;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    v8 = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v10 hiddenContentStatusBarPartsForLayoutRole:role inAppLayout:layoutCopy];
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
    displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    if (!displayItemInSlideOver || ![(SBDisplayItem *)self->_selectedDisplayItem isEqualToItem:displayItemInSlideOver])
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
  displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver && [(SBDisplayItem *)self->_selectedDisplayItem isEqualToItem:displayItemInSlideOver])
  {
    appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__SBFlexibleWindowingWindowDragSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke;
    v8[3] = &unk_2783A8CB8;
    v9 = displayItemInSlideOver;
    appLayoutToAttachSlideOverTongue = [appLayouts bs_firstObjectPassingTest:v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFlexibleWindowingWindowDragSwitcherModifier;
    appLayoutToAttachSlideOverTongue = [(SBFlexibleWindowingWindowDragSwitcherModifier *)&v7 appLayoutToAttachSlideOverTongue];
  }

  return appLayoutToAttachSlideOverTongue;
}

- (void)_beginAnimatingAnchorPointRampingPropertyWithMode:(int64_t)mode settings:(id)settings
{
  settingsCopy = settings;
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
  v11 = [settingsCopy copy];
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
  [v17 sb_animateWithSettings:v15 mode:mode animations:v22 completion:v19];

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
  medusaSettings = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self medusaSettings];
  resizeAnimationSettings = [medusaSettings resizeAnimationSettings];

  return resizeAnimationSettings;
}

- (id)_appLayoutContainingDisplayItem:(id)item
{
  itemCopy = item;
  appLayouts = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBFlexibleWindowingWindowDragSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v9[3] = &unk_2783A8CB8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [appLayouts bs_firstObjectPassingTest:v9];

  return v7;
}

- (BOOL)_isStripStashed
{
  proposedAppLayout = [(SBContinuousExposeWindowDragDestinationSwitcherModifier *)self->_destinationModifier proposedAppLayout];
  v4 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:proposedAppLayout];

  LOBYTE(proposedAppLayout) = [v4 isStripVisible];
  return proposedAppLayout ^ 1;
}

- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem
{
  selfCopy = self;
  proposedAppLayoutsForWindowDrag = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self proposedAppLayoutsForWindowDrag];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__SBFlexibleWindowingWindowDragSwitcherModifier__anyProposedAppLayoutContainsSelectedDisplayItem__block_invoke;
  v5[3] = &unk_2783A8CB8;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [proposedAppLayoutsForWindowDrag bs_containsObjectPassingTest:v5];

  return selfCopy;
}

- (BOOL)_shouldLockYPosition
{
  if (self->_dragBeganInOtherSwitcher)
  {
    return 0;
  }

  else
  {
    displayItemInSlideOver = [(SBFlexibleWindowingWindowDragSwitcherModifier *)self displayItemInSlideOver];
    v5 = BSEqualObjects();

    return v5 && self->_startedStashed;
  }
}

- (BOOL)_slideOverCenterExitingTimerWaitingWhileStillCloseWithCenter:(CGPoint)center
{
  x = self->_slideOverCenterSettledPosition.x;
  y = self->_slideOverCenterSettledPosition.y;
  v5 = x == 1.79769313e308 && y == 1.79769313e308;
  result = !v5 && (center.x == 1.79769313e308 ? (v6 = center.y == 1.79769313e308) : (v6 = 0), !v6) && sqrt((x - center.x) * (x - center.x) + (y - center.y) * (y - center.y)) <= 14.1421356;
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