@interface SBMedusaWindowDragGestureSwitcherModifier
- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_draggingFullScreenAppOrSplitView;
- (BOOL)_ourProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_shouldPushInFullScreenContent;
- (BOOL)_updateHomeScreenStyleInteractively;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGRect)_boundsForDraggingAppLayout;
- (CGRect)_initialTransformedFrameForDraggingAppLayout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBMedusaWindowDragGestureSwitcherModifier)initWithGestureID:(id)d selectedLeafAppLayout:(id)layout initialMainAppLayout:(id)appLayout initialFloatingAppLayout:(id)floatingAppLayout initialFloatingConfiguration:(int64_t)configuration;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)_platterScale;
- (double)_scaleForTranslation:(CGPoint)translation;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_appLayoutContainingSelectedDisplayItem;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)handleGestureEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)keyboardSuppressionMode;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBMedusaWindowDragGestureSwitcherModifier

- (SBMedusaWindowDragGestureSwitcherModifier)initWithGestureID:(id)d selectedLeafAppLayout:(id)layout initialMainAppLayout:(id)appLayout initialFloatingAppLayout:(id)floatingAppLayout initialFloatingConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  floatingAppLayoutCopy = floatingAppLayout;
  v21.receiver = self;
  v21.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v17 = [(SBGestureSwitcherModifier *)&v21 initWithGestureID:d];
  if (v17)
  {
    if (!layoutCopy)
    {
      [SBMedusaWindowDragGestureSwitcherModifier initWithGestureID:a2 selectedLeafAppLayout:v17 initialMainAppLayout:? initialFloatingAppLayout:? initialFloatingConfiguration:?];
    }

    objc_storeStrong(&v17->_selectedLeafAppLayout, layout);
    objc_storeStrong(&v17->_initialMainAppLayout, appLayout);
    objc_storeStrong(&v17->_initialFloatingAppLayout, floatingAppLayout);
    v17->_currentFloatingConfiguration = configuration;
    v17->_initialAnchorPoint = SBInvalidPoint;
    v17->_anchorPoint = SBInvalidPoint;
    v18 = [layoutCopy itemForLayoutRole:1];
    selectedDisplayItem = v17->_selectedDisplayItem;
    v17->_selectedDisplayItem = v18;
  }

  return v17;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v12.receiver = self;
  v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBChainableModifier *)&v12 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_destinationModifier)
    {
      v5 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:self->_selectedDisplayItem];
      [(SBChainableModifier *)self addChildModifier:v5 atLevel:0 key:0];
      v6 = [[SBMedusaWindowDragGestureDestinationModifier alloc] initWithSelectedLeafAppLayout:self->_selectedLeafAppLayout initialMainAppLayout:self->_initialMainAppLayout initialFloatingAppLayout:self->_initialFloatingAppLayout initialFloatingConfiguration:self->_currentFloatingConfiguration delegate:self];
      destinationModifier = self->_destinationModifier;
      self->_destinationModifier = v6;

      [(SBChainableModifier *)self addChildModifier:self->_destinationModifier atLevel:1 key:0];
    }

    v8 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__SBMedusaWindowDragGestureSwitcherModifier_didMoveToParentModifier___block_invoke;
    v10[3] = &unk_2783A92D8;
    v10[4] = self;
    v11 = v8;
    v9 = v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v9 usingBlock:v10];
  }
}

uint64_t __69__SBMedusaWindowDragGestureSwitcherModifier_didMoveToParentModifier___block_invoke(uint64_t a1)
{
  [*(a1 + 40) homeScreenAlpha];
  *(*(a1 + 32) + 232) = v2;
  [*(a1 + 40) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 240) = v3;
  result = [*(a1 + 40) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 248) = v5;
  return result;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v46.receiver = self;
  v46.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v46 handleGestureEvent:eventCopy];
  [eventCopy locationInContainerView];
  self->_location.x = v6;
  self->_location.y = v7;
  [eventCopy translationInContainerView];
  self->_translation.x = v8;
  self->_translation.y = v9;
  if ([(SBAppLayout *)self->_selectedLeafAppLayout isEqual:self->_initialMainAppLayout])
  {
    y = fabs(self->_translation.x);
    if (y < self->_translation.y)
    {
      y = self->_translation.y;
    }
  }

  else
  {
    y = self->_translation.y;
  }

  [(SBMedusaWindowDragGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:y];
  self->_progressToMaxTranslation = v11;
  v12 = &OBJC_IVAR___SBControlCenterController__idleTimerCoordinator;
  if ([eventCopy phase] == 1)
  {
    v43 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v13 = SBAppendSwitcherModifierResponse(v43, v5);

    v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
    v15 = SBAppendSwitcherModifierResponse(v14, v13);

    v16 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:4];
    v5 = SBAppendSwitcherModifierResponse(v16, v15);

    draggingAppLayoutsForWindowDrag = [(SBMedusaWindowDragGestureSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __64__SBMedusaWindowDragGestureSwitcherModifier_handleGestureEvent___block_invoke;
    v45[3] = &unk_2783A8CB8;
    v45[4] = self;
    v18 = [draggingAppLayoutsForWindowDrag bs_firstObjectPassingTest:v45];

    [eventCopy sizeOfSelectedDisplayItem];
    self->_sizeOfSelectedDisplayItem.width = v19;
    self->_sizeOfSelectedDisplayItem.height = v20;
    preferredDisplayOrdinal = [v18 preferredDisplayOrdinal];
    _ZF = preferredDisplayOrdinal == [(SBMedusaWindowDragGestureSwitcherModifier *)self displayOrdinal];
    v23 = _ZF;
    v24 = !_ZF;
    self->_dragBeganInOtherSwitcher = v24;
    self->_dragBeganInOurSwitcher = v23;
    if (self->_dragBeganInOtherSwitcher)
    {
      [eventCopy locationInSelectedDisplayItem];
      v26 = v25 / self->_sizeOfSelectedDisplayItem.width;
      v28 = v27 / self->_sizeOfSelectedDisplayItem.height;
      self->_initialAnchorPoint.x = v26;
    }

    else
    {
      [(SBMedusaWindowDragGestureSwitcherModifier *)self _initialTransformedFrameForDraggingAppLayout];
      v30 = v29;
      v32 = v31;
      UIRectGetCenter();
      v35 = (self->_location.x - v33) / v30 + 0.5;
      v28 = (self->_location.y - v34) / v32 + 0.5;
      self->_initialAnchorPoint.x = v35;
    }

    self->_initialAnchorPoint.y = v28;
    self->_anchorPoint = self->_initialAnchorPoint;

    v12 = &OBJC_IVAR___SBControlCenterController__idleTimerCoordinator;
  }

  _anyProposedAppLayoutContainsSelectedDisplayItem = [(SBMedusaWindowDragGestureSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];
  _ourProposedAppLayoutContainsSelectedDisplayItem = [(SBMedusaWindowDragGestureSwitcherModifier *)self _ourProposedAppLayoutContainsSelectedDisplayItem];
  if (*(&self->super.super.super.super.super.isa + v12[606]) == 1 && !_ourProposedAppLayoutContainsSelectedDisplayItem && _anyProposedAppLayoutContainsSelectedDisplayItem || self->_dragBeganInOtherSwitcher && _ourProposedAppLayoutContainsSelectedDisplayItem)
  {
    __asm { FMOV            V0.2D, #0.5 }
  }

  else
  {
    _Q0 = self->_initialAnchorPoint;
  }

  self->_anchorPoint = _Q0;

  return v5;
}

- (id)handleSceneReadyEvent:(id)event
{
  eventCopy = event;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleSceneReadyEvent:eventCopy];

  v7 = SBAppendSwitcherModifierResponse(v5, v6);

  return v7;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];
  if ([eventCopy isGestureInitiated] && objc_msgSend(eventCopy, "phase") >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  proposedAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  if ([proposedAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v6 = proposedAppLayout;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v6 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v9 appLayoutContainingAppLayout:layoutCopy];
  }

  v7 = v6;

  return v7;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v8.receiver = self;
  v8.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v4 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v8 adjustedAppLayoutsForAppLayouts:layouts];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SBMedusaWindowDragGestureSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v7[3] = &unk_2783A8CB8;
  v7[4] = self;
  if (([v4 bs_containsObjectPassingTest:v7] & 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:self->_selectedLeafAppLayout];

    v4 = v5;
  }

  return v4;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 containsItem:self->_selectedDisplayItem] && (BSPointEqualToPoint() & 1) == 0)
  {
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v13 anchorPointForIndex:index];
    x = v7;
    y = v9;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (([v6 containsItem:self->_selectedDisplayItem] & 1) == 0 && objc_msgSend(v6, "isEqual:", self->_initialFloatingAppLayout) && -[SBMedusaWindowDragGestureDestinationModifier hasEnteredPlatterZone](self->_destinationModifier, "hasEnteredPlatterZone"))
  {
    if (self->_currentFloatingConfiguration == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    [(SBMedusaWindowDragGestureSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBMedusaWindowDragGestureSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:v7];
  }

  else if ([v6 containsItem:self->_selectedDisplayItem])
  {
    [(SBMedusaWindowDragGestureSwitcherModifier *)self _boundsForDraggingAppLayout];
    UIRectCenteredAboutPoint();
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v20 frameForIndex:index];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  hasEnteredPlatterZone = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone];
  destinationModifier = self->_destinationModifier;
  if (hasEnteredPlatterZone)
  {
    [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier currentAppLayout];
  }

  else
  {
    [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier proposedAppLayout];
  }
  v14 = ;
  if (([layoutCopy containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    if (![v14 isOrContainsAppLayout:layoutCopy] || !objc_msgSend(layoutCopy, "isFullScreen") || ((v15 = -[SBMedusaWindowDragGestureDestinationModifier currentDestination](self->_destinationModifier, "currentDestination"), objc_msgSend(v14, "isFullScreen")) ? (v16 = (v15 & 0xFFFFFFFFFFFFFFFELL) == 4) : (v16 = 0), !v16))
    {
      v34.receiver = self;
      v34.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v34 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
      x = v17;
      y = v18;
      width = v19;
      height = v20;
      goto LABEL_12;
    }

    [(SBMedusaWindowDragGestureSwitcherModifier *)self containerViewBounds];
    x = v25;
    y = v26;
    v28 = v27;
    height = v29;
    medusaSettings = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    [medusaSettings draggingPlatterSideActivationGutterPadding];

    [(SBMedusaWindowDragGestureSwitcherModifier *)self _boundsForDraggingAppLayout];
    medusaSettings2 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    [medusaSettings2 iconPlatterScale];

    [(SBMedusaWindowDragGestureSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v33 = v32;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      if (v15 == 4)
      {
        goto LABEL_18;
      }
    }

    else if (v15 != 4)
    {
LABEL_18:
      width = v28 - v33;
      goto LABEL_12;
    }

    x = x + v33;
    goto LABEL_18;
  }

LABEL_12:

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    [(SBMedusaWindowDragGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
LABEL_8:
    v10 = v7;
    goto LABEL_9;
  }

  currentAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
  if (![currentAppLayout isOrContainsAppLayout:v6])
  {

    goto LABEL_7;
  }

  _shouldPushInFullScreenContent = [(SBMedusaWindowDragGestureSwitcherModifier *)self _shouldPushInFullScreenContent];

  if (!_shouldPushInFullScreenContent)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v12 scaleForIndex:index];
    goto LABEL_8;
  }

  v10 = 0.98;
LABEL_9:

  return v10;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 1.0;
  if (!-[SBAppLayout isOrContainsAppLayout:](self->_initialMainAppLayout, "isOrContainsAppLayout:", layoutCopy) && ([layoutCopy containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v7 = 1.0;
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 1)
  {
    appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
    v9 = [appLayouts objectAtIndex:index];

    v10 = [v9 itemForLayoutRole:role];
    if (![(SBAppLayout *)self->_initialMainAppLayout containsItem:v10]|| [(SBAppLayout *)self->_initialMainAppLayout layoutRoleForItem:v10]!= 4)
    {
      v13.receiver = self;
      v13.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v13 shadowOpacityForLayoutRole:role atIndex:index];
      v7 = v11;
    }
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v10 = [appLayouts objectAtIndex:index];

  if ([v10 containsItem:self->_selectedDisplayItem] && -[SBMedusaWindowDragGestureDestinationModifier hasEnteredPlatterZone](self->_destinationModifier, "hasEnteredPlatterZone"))
  {
    if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination]> 0xE)
    {
      goto LABEL_11;
    }

    [(SBMedusaWindowDragGestureSwitcherModifier *)self _platterScale];
    goto LABEL_9;
  }

  if (-[SBAppLayout containsAnyItemFromAppLayout:](self->_initialMainAppLayout, "containsAnyItemFromAppLayout:", v10) || (-[SBMedusaWindowDragGestureDestinationModifier currentAppLayout](self->_destinationModifier, "currentAppLayout"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsAnyItemFromAppLayout:v10], v11, v12))
  {
    [(SBMedusaWindowDragGestureSwitcherModifier *)self displayCornerRadius];
LABEL_9:
    SBRectCornerRadiiForRadius();
    goto LABEL_10;
  }

  v21.receiver = self;
  v21.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v21 cornerRadiiForIndex:index];
LABEL_10:
  v3 = v13;
  v4 = v14;
  v5 = v15;
  v6 = v16;
LABEL_11:

  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  result.topRight = v20;
  result.bottomRight = v19;
  result.bottomLeft = v18;
  result.topLeft = v17;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_selectedDisplayItem])
  {
    v7 = 2;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v7 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v9 shadowStyleForLayoutRole:role inAppLayout:layoutCopy];
  }

  return v7;
}

- (double)homeScreenAlpha
{
  v6.receiver = self;
  v6.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v6 homeScreenAlpha];
  v4 = v3;
  if ([(SBMedusaWindowDragGestureSwitcherModifier *)self _updateHomeScreenStyleInteractively])
  {
    return v4 + self->_progressToMaxTranslation * (self->_toHomeScreenAlpha - v4);
  }

  return v4;
}

- (double)homeScreenDimmingAlpha
{
  proposedAppLayoutForWindowDrag = [(SBMedusaWindowDragGestureSwitcherModifier *)self proposedAppLayoutForWindowDrag];
  allItems = [proposedAppLayoutForWindowDrag allItems];
  v5 = [allItems count];

  if (!v5)
  {
    return 0.0;
  }

  v6 = 1.0;
  if ([(SBGestureSwitcherModifier *)self gesturePhase]>= 2)
  {
    if ([(SBMedusaWindowDragGestureSwitcherModifier *)self _shouldPushInFullScreenContent])
    {
      v9.receiver = self;
      v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v9 homeScreenDimmingAlpha];
      v6 = v7;
      if ([(SBMedusaWindowDragGestureSwitcherModifier *)self _updateHomeScreenStyleInteractively])
      {
        if (v6 + self->_progressToMaxTranslation * (self->_toHomeScreenDimmingAlpha - v6) >= 0.2)
        {
          return v6 + self->_progressToMaxTranslation * (self->_toHomeScreenDimmingAlpha - v6);
        }

        else
        {
          return 0.2;
        }
      }
    }
  }

  return v6;
}

- (double)homeScreenBackdropBlurProgress
{
  v6.receiver = self;
  v6.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v6 homeScreenBackdropBlurProgress];
  v4 = v3;
  if ([(SBMedusaWindowDragGestureSwitcherModifier *)self _updateHomeScreenStyleInteractively])
  {
    if (v4 + self->_progressToMaxTranslation * (self->_toHomeScreenBlurProgress - v4) >= 0.5)
    {
      v4 = v4 + self->_progressToMaxTranslation * (self->_toHomeScreenBlurProgress - v4);
    }

    else
    {
      v4 = 0.5;
    }
  }

  return fmin(fmax(v4, 0.0), 1.0);
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v25.receiver = self;
  v25.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  layoutCopy = layout;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v25 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  v9 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination:v25.receiver];
  v10 = [layoutCopy itemForLayoutRole:role];
  v11 = [layoutCopy containsItem:self->_selectedDisplayItem];

  if (v11)
  {
    if (v9 - 11 <= 1)
    {
      medusaSettings = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
      [medusaSettings resizeAnimationDismissItemOpacity];
      goto LABEL_21;
    }
  }

  else
  {
    if ([(SBAppLayout *)self->_initialMainAppLayout containsItem:v10])
    {
      proposedAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
      v15 = [proposedAppLayout containsItem:v10];

      if ((v15 & 1) == 0)
      {
        v18 = [(SBAppLayout *)self->_initialMainAppLayout layoutRoleForItem:v10];
        if (v18 == 3 && (v9 & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          medusaSettings2 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
          medusaSettings = medusaSettings2;
        }

        else
        {
          v20 = v18;
          medusaSettings2 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
          medusaSettings = medusaSettings2;
          if (v20 != 4 || v9 != 10)
          {
            [medusaSettings2 defaultDimmingOpacity];
            v8 = v8 + v23;
LABEL_22:

            goto LABEL_23;
          }
        }

        [medusaSettings2 replacementDimmingAlpha];
LABEL_21:
        v8 = v13;
        goto LABEL_22;
      }
    }

    if (v9 == 10)
    {
      medusaSettings = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
      if ([medusaSettings containsItem:v10] && objc_msgSend(medusaSettings, "layoutRoleForItem:", v10) != 4)
      {
        medusaSettings3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
        [medusaSettings3 defaultDimmingOpacity];
        v8 = v17;
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  return v8;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    goto LABEL_2;
  }

  currentAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
  if (![currentAppLayout isOrContainsAppLayout:v6])
  {

LABEL_7:
    v11.receiver = self;
    v11.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v7 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v11 isContentStatusBarVisibleForIndex:index];
    goto LABEL_8;
  }

  _shouldPushInFullScreenContent = [(SBMedusaWindowDragGestureSwitcherModifier *)self _shouldPushInFullScreenContent];

  if (!_shouldPushInFullScreenContent)
  {
    goto LABEL_7;
  }

LABEL_2:
  v7 = 0;
LABEL_8:

  return v7;
}

- (id)keyboardSuppressionMode
{
  v2 = MEMORY[0x277CBEB98];
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:appLayouts];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:blurred];
  if ([(SBDisplayItem *)v7 isEqualToItem:?]&& [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone]&& [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    hasEnteredPlatterZone = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone];
    destinationModifier = self->_destinationModifier;
    if (hasEnteredPlatterZone)
    {
      [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier currentAppLayout];
    }

    else
    {
      [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier proposedAppLayout];
    }
    v11 = ;
    if (([layoutCopy containsItem:self->_selectedDisplayItem] & 1) == 0 && objc_msgSend(v11, "isOrContainsAppLayout:", layoutCopy) && ((v12 = -[SBMedusaWindowDragGestureDestinationModifier currentDestination](self->_destinationModifier, "currentDestination"), objc_msgSend(v11, "isFullScreen")) ? (v13 = (v12 & 0xFFFFFFFFFFFFFFFELL) == 4) : (v13 = 0), v13) || (v15.receiver = self, v15.super_class = SBMedusaWindowDragGestureSwitcherModifier, -[SBMedusaWindowDragGestureSwitcherModifier isLayoutRoleBlurred:inAppLayout:](&v15, sel_isLayoutRoleBlurred_inAppLayout_, blurred, layoutCopy)))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy]^ 1;
    }
  }

  return v8;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_selectedDisplayItem])
  {
    v8.receiver = self;
    v8.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  else
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(1u, 1);
  }

  v6 = v5;

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  if ([elementCopy switcherLayoutElementType] && -[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") == 1)
  {
    v21.receiver = self;
    v21.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBGestureSwitcherModifier *)&v21 animationAttributesForLayoutElement:elementCopy];
    v6 = [v5 mutableCopy];

    v7 = v6;
    v8 = 2;
  }

  else
  {
    if ([elementCopy switcherLayoutElementType])
    {
      v19.receiver = self;
      v19.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      v6 = [(SBGestureSwitcherModifier *)&v19 animationAttributesForLayoutElement:elementCopy];
      goto LABEL_13;
    }

    v20.receiver = self;
    v20.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v9 = [(SBGestureSwitcherModifier *)&v20 animationAttributesForLayoutElement:elementCopy];
    v6 = [v9 mutableCopy];

    LODWORD(v9) = [elementCopy containsItem:self->_selectedDisplayItem];
    medusaSettings = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    v11 = medusaSettings;
    if (v9)
    {
      windowDragAnimationSettings = [medusaSettings windowDragAnimationSettings];

      medusaSettings2 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
      resizeAnimationSettings = [medusaSettings2 resizeAnimationSettings];

      initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
      [resizeAnimationSettings dampingRatio];
      [initWithDefaultValues setTrackingDampingRatio:?];
      [resizeAnimationSettings response];
      [initWithDefaultValues setTrackingResponse:?];
      v23 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      [initWithDefaultValues setFrameRateRange:1114113 highFrameRateReason:{*&v23.minimum, *&v23.maximum, *&v23.preferred}];
      [v6 setLayoutSettings:initWithDefaultValues];
      [v6 setCornerRadiusSettings:initWithDefaultValues];
      [v6 setPositionSettings:windowDragAnimationSettings];
      if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone])
      {
        v16 = initWithDefaultValues;
      }

      else
      {
        v16 = windowDragAnimationSettings;
      }

      [v6 setScaleSettings:v16];

      goto LABEL_13;
    }

    resizeAnimationSettings2 = [medusaSettings resizeAnimationSettings];
    [v6 setLayoutSettings:resizeAnimationSettings2];

    v7 = v6;
    v8 = 3;
  }

  [v7 setUpdateMode:v8];
LABEL_13:

  return v6;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  visibleAppLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 visibleAppLayouts];
  _appLayoutContainingSelectedDisplayItem = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  v5 = [visibleAppLayouts setByAddingObject:_appLayoutContainingSelectedDisplayItem];

  return v5;
}

- (id)topMostLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  topMostLayoutElements = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 topMostLayoutElements];
  v4 = [topMostLayoutElements mutableCopy];

  _appLayoutContainingSelectedDisplayItem = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  [v4 removeObject:_appLayoutContainingSelectedDisplayItem];
  [v4 insertObject:_appLayoutContainingSelectedDisplayItem atIndex:0];
  if (self->_initialFloatingAppLayout && ![(SBAppLayout *)self->_selectedLeafAppLayout isEqual:?])
  {
    [v4 removeObject:self->_initialFloatingAppLayout];
    [v4 insertObject:self->_initialFloatingAppLayout atIndex:0];
  }

  return v4;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v12[1] = *MEMORY[0x277D85DE8];
  selectedDisplayItem = self->_selectedDisplayItem;
  layoutCopy = layout;
  if ([layoutCopy containsItem:selectedDisplayItem])
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [layoutCopy layoutRoleForItem:self->_selectedDisplayItem];

    layoutCopy = [v6 numberWithInteger:v7];
    v12[0] = layoutCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:layoutCopy];
  }

  v9 = v8;

  return v9;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  visibleHomeAffordanceLayoutElements = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 visibleHomeAffordanceLayoutElements];
  if ([visibleHomeAffordanceLayoutElements containsObject:self->_selectedLeafAppLayout])
  {
    v4 = [visibleHomeAffordanceLayoutElements mutableCopy];
    [v4 removeObject:self->_selectedLeafAppLayout];

    visibleHomeAffordanceLayoutElements = v4;
  }

  if ([visibleHomeAffordanceLayoutElements containsObject:self->_initialMainAppLayout] && -[SBAppLayout containsItem:](self->_initialMainAppLayout, "containsItem:", self->_selectedDisplayItem))
  {
    v5 = [visibleHomeAffordanceLayoutElements mutableCopy];
    [v5 removeObject:self->_initialMainAppLayout];

    visibleHomeAffordanceLayoutElements = v5;
  }

  return visibleHomeAffordanceLayoutElements;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 1)
  {
    v7.receiver = self;
    v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 isResizeGrabberVisibleForAppLayout:layoutCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v14 resizeGrabberLayoutAttributesForAppLayout:layoutCopy];
  proposedAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  v7 = [proposedAppLayout itemForLayoutRole:2];
  if (v7 && [proposedAppLayout isOrContainsAppLayout:layoutCopy] && (objc_msgSend(layoutCopy, "containsItem:", self->_selectedDisplayItem) & 1) == 0)
  {
    v8 = [proposedAppLayout containsItem:self->_selectedDisplayItem];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [layoutCopy itemForLayoutRole:1];
    v10 = [proposedAppLayout layoutRoleForItem:v9];

    isRTLEnabled = [(SBMedusaWindowDragGestureSwitcherModifier *)self isRTLEnabled];
    if ((v10 == 1) & (isRTLEnabled ^ 1) | (v10 == 2) & isRTLEnabled)
    {
      v12 = 8;
    }

    else
    {
      v12 = 2;
    }

    [v5 setEdge:v12];
    v7 = [proposedAppLayout leafAppLayoutForRole:v10];
    [v5 setLeafAppLayout:v7];
  }

LABEL_10:

  return v5;
}

- (CGRect)_boundsForDraggingAppLayout
{
  currentDestination = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination];
  switcherInterfaceOrientation = [(SBMedusaWindowDragGestureSwitcherModifier *)self switcherInterfaceOrientation];
  proposedAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  v7 = proposedAppLayout;
  if (self->_dragBeganInOtherSwitcher && ([proposedAppLayout containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    goto LABEL_32;
  }

  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  if ([(SBAppLayout *)self->_initialMainAppLayout isFullScreen]&& [(SBAppLayout *)self->_selectedLeafAppLayout isEqual:self->_initialMainAppLayout])
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __72__SBMedusaWindowDragGestureSwitcherModifier__boundsForDraggingAppLayout__block_invoke;
    v43[3] = &unk_2783B84D8;
    v43[4] = self;
    v12 = MEMORY[0x223D6F7F0](v43);
    v13 = v12;
    if (currentDestination > 4)
    {
      if ((currentDestination - 6) < 8)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v15 = SBStringForWindowDragGestureDestination(currentDestination);
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBMedusaWindowDragGestureSwitcherModifier.m" lineNumber:653 description:{@"Unsupported destination when dragging fullscreen app: %@", v15}];

LABEL_40:
        goto LABEL_41;
      }

      if (currentDestination != 5)
      {
        if (currentDestination != 14)
        {
          goto LABEL_40;
        }

LABEL_37:
        v26 = SBAppLayoutGenericAppLayoutWithConfiguration(1);
        [(SBMedusaWindowDragGestureSwitcherModifier *)self containerViewBounds];
        v42.receiver = self;
        v42.super_class = SBMedusaWindowDragGestureSwitcherModifier;
        [(SBMedusaWindowDragGestureSwitcherModifier *)&v42 frameForLayoutRole:1 inAppLayout:v26 withBounds:?];
        v8 = v27;
        v9 = v28;
        v10 = v29;
        v11 = v30;

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (currentDestination > 2)
    {
      if (currentDestination == 3)
      {
LABEL_38:
        v25 = &SBLayoutRoleSide;
        goto LABEL_39;
      }
    }

    else
    {
      if (currentDestination < 2)
      {
        goto LABEL_37;
      }

      if (currentDestination != 2)
      {
        goto LABEL_40;
      }
    }

    v25 = &SBLayoutRolePrimary;
LABEL_39:
    (*(v12 + 16))(v12, *v25);
    SBRectWithSize();
    v8 = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
    goto LABEL_40;
  }

  if (currentDestination <= 5)
  {
    if (currentDestination > 2)
    {
      if (currentDestination != 4)
      {
LABEL_21:
        [(SBMedusaWindowDragGestureSwitcherModifier *)self containerViewBounds];
        v39.receiver = self;
        v39.super_class = SBMedusaWindowDragGestureSwitcherModifier;
        [(SBMedusaWindowDragGestureSwitcherModifier *)&v39 frameForLayoutRole:2 inAppLayout:v7 withBounds:?];
        goto LABEL_32;
      }

LABEL_22:
      [(SBMedusaWindowDragGestureSwitcherModifier *)self containerViewBounds];
      v40.receiver = self;
      v40.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v40 frameForLayoutRole:1 inAppLayout:v7 withBounds:?];
      goto LABEL_32;
    }

    if (currentDestination >= 2)
    {
      if (currentDestination != 2)
      {
        goto LABEL_41;
      }

      goto LABEL_22;
    }

LABEL_29:
    v16 = SBAppLayoutGenericAppLayoutWithConfiguration(1);
    [(SBMedusaWindowDragGestureSwitcherModifier *)self containerViewBounds];
    v41.receiver = self;
    v41.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v41 frameForLayoutRole:1 inAppLayout:v16 withBounds:?];
    v8 = v17;
    v9 = v18;
    v10 = v19;
    v11 = v20;

    goto LABEL_41;
  }

  if (currentDestination <= 10)
  {
    if ((currentDestination - 6) < 4)
    {
      [(SBMedusaWindowDragGestureSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBMedusaWindowDragGestureSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:2];
LABEL_32:
      SBRectWithSize();
      v8 = v21;
      v9 = v22;
      v10 = v23;
      v11 = v24;
      goto LABEL_41;
    }

    if (currentDestination == 10)
    {
LABEL_31:
      [(SBMedusaWindowDragGestureSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:switcherInterfaceOrientation centerConfiguration:1];
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  if (currentDestination <= 12)
  {
    if (currentDestination != 11)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (currentDestination == 13)
  {
    goto LABEL_31;
  }

  if (currentDestination == 14)
  {
    goto LABEL_29;
  }

LABEL_41:

  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

double __72__SBMedusaWindowDragGestureSwitcherModifier__boundsForDraggingAppLayout__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = SBAppLayoutGenericAppLayoutWithConfiguration(3);
  [*(a1 + 32) containerViewBounds];
  [v4 frameForLayoutRole:a2 inAppLayout:v5 withBounds:?];
  v7 = v6;

  return v7;
}

- (CGRect)_initialTransformedFrameForDraggingAppLayout
{
  _appLayoutContainingSelectedDisplayItem = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v5 = [appLayouts indexOfObject:_appLayoutContainingSelectedDisplayItem];

  v39.receiver = self;
  v39.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v39 frameForIndex:v5];
  v7 = v6;
  v9 = v8;
  v10 = [_appLayoutContainingSelectedDisplayItem layoutRoleForItem:self->_selectedDisplayItem];
  SBRectWithSize();
  v38.receiver = self;
  v38.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v38 frameForLayoutRole:v10 inAppLayout:_appLayoutContainingSelectedDisplayItem withBounds:?];
  v12 = v11;
  v14 = v13;
  v16 = v7 + v15;
  v18 = v9 + v17;
  v37.receiver = self;
  v37.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v37 scaleForIndex:v5];
  v20 = v19;
  v36.receiver = self;
  v36.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v36 scaleForLayoutRole:v10 inAppLayout:_appLayoutContainingSelectedDisplayItem];
  v22 = v20 * v21;
  UIRectGetCenter();
  CGAffineTransformMakeScale(&v35, v22, v22);
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v12;
  v40.size.height = v14;
  CGRectApplyAffineTransform(v40, &v35);
  UIRectCenteredAboutPoint();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (double)_platterScale
{
  medusaSettings = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
  [medusaSettings windowPlatterScale];
  v5 = v4;
  if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination]== 1)
  {
    [medusaSettings windowPlatterScaleForReplacingEntireSpace];
    v5 = v6;
  }

  return v5;
}

- (double)_scaleForTranslation:(CGPoint)translation
{
  y = translation.y;
  if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone]&& [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination])
  {

    [(SBMedusaWindowDragGestureSwitcherModifier *)self _platterScale];
  }

  else
  {
    [(SBMedusaWindowDragGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:y];
    result = 1.0 - v6;
    if (result < 0.0)
    {
      result = 0.0;
    }

    if (result >= 0.2)
    {
      if (result > 1.0)
      {
        BSUIConstrainValueWithRubberBand();
        return v8 + 1.0;
      }
    }

    else
    {
      BSUIConstrainValueWithRubberBand();
      return 0.2 - v7;
    }
  }

  return result;
}

- (BOOL)_updateHomeScreenStyleInteractively
{
  if (![(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone]|| (v3 = [(SBAppLayout *)self->_selectedLeafAppLayout isEqual:self->_initialMainAppLayout]))
  {

    LOBYTE(v3) = [(SBMedusaWindowDragGestureSwitcherModifier *)self _draggingFullScreenAppOrSplitView];
  }

  return v3;
}

- (BOOL)_draggingFullScreenAppOrSplitView
{
  v3 = [(SBAppLayout *)self->_initialMainAppLayout containsItem:self->_selectedDisplayItem];
  if (v3)
  {
    v4 = [(SBAppLayout *)self->_initialMainAppLayout layoutRoleForItem:self->_selectedDisplayItem];

    LOBYTE(v3) = SBLayoutRoleIsValidForSplitView(v4);
  }

  return v3;
}

- (BOOL)_shouldPushInFullScreenContent
{
  if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone])
  {
    return 1;
  }

  return [(SBMedusaWindowDragGestureSwitcherModifier *)self _draggingFullScreenAppOrSplitView];
}

- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem
{
  selfCopy = self;
  proposedAppLayoutsForWindowDrag = [(SBMedusaWindowDragGestureSwitcherModifier *)self proposedAppLayoutsForWindowDrag];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __93__SBMedusaWindowDragGestureSwitcherModifier__anyProposedAppLayoutContainsSelectedDisplayItem__block_invoke;
  v5[3] = &unk_2783A8CB8;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [proposedAppLayoutsForWindowDrag bs_containsObjectPassingTest:v5];

  return selfCopy;
}

- (BOOL)_ourProposedAppLayoutContainsSelectedDisplayItem
{
  selfCopy = self;
  proposedAppLayout = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  LOBYTE(selfCopy) = [proposedAppLayout containsItem:selfCopy->_selectedDisplayItem];

  return selfCopy;
}

- (id)_appLayoutContainingSelectedDisplayItem
{
  appLayouts = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBMedusaWindowDragGestureSwitcherModifier__appLayoutContainingSelectedDisplayItem__block_invoke;
  v6[3] = &unk_2783A8CB8;
  v6[4] = self;
  v4 = [appLayouts bs_firstObjectPassingTest:v6];

  return v4;
}

- (void)initWithGestureID:(uint64_t)a1 selectedLeafAppLayout:(uint64_t)a2 initialMainAppLayout:initialFloatingAppLayout:initialFloatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMedusaWindowDragGestureSwitcherModifier.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"selectedLeafAppLayout"}];
}

@end