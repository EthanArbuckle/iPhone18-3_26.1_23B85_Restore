@interface SBMedusaWindowDragGestureSwitcherModifier
- (BOOL)_anyProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_draggingFullScreenAppOrSplitView;
- (BOOL)_ourProposedAppLayoutContainsSelectedDisplayItem;
- (BOOL)_shouldPushInFullScreenContent;
- (BOOL)_updateHomeScreenStyleInteractively;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGRect)_boundsForDraggingAppLayout;
- (CGRect)_initialTransformedFrameForDraggingAppLayout;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBMedusaWindowDragGestureSwitcherModifier)initWithGestureID:(id)a3 selectedLeafAppLayout:(id)a4 initialMainAppLayout:(id)a5 initialFloatingAppLayout:(id)a6 initialFloatingConfiguration:(int64_t)a7;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_platterScale;
- (double)_scaleForTranslation:(CGPoint)a3;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_appLayoutContainingSelectedDisplayItem;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)a3;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBMedusaWindowDragGestureSwitcherModifier

- (SBMedusaWindowDragGestureSwitcherModifier)initWithGestureID:(id)a3 selectedLeafAppLayout:(id)a4 initialMainAppLayout:(id)a5 initialFloatingAppLayout:(id)a6 initialFloatingConfiguration:(int64_t)a7
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v17 = [(SBGestureSwitcherModifier *)&v21 initWithGestureID:a3];
  if (v17)
  {
    if (!v14)
    {
      [SBMedusaWindowDragGestureSwitcherModifier initWithGestureID:a2 selectedLeafAppLayout:v17 initialMainAppLayout:? initialFloatingAppLayout:? initialFloatingConfiguration:?];
    }

    objc_storeStrong(&v17->_selectedLeafAppLayout, a4);
    objc_storeStrong(&v17->_initialMainAppLayout, a5);
    objc_storeStrong(&v17->_initialFloatingAppLayout, a6);
    v17->_currentFloatingConfiguration = a7;
    v17->_initialAnchorPoint = SBInvalidPoint;
    v17->_anchorPoint = SBInvalidPoint;
    v18 = [v14 itemForLayoutRole:1];
    selectedDisplayItem = v17->_selectedDisplayItem;
    v17->_selectedDisplayItem = v18;
  }

  return v17;
}

- (void)didMoveToParentModifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBChainableModifier *)&v12 didMoveToParentModifier:?];
  if (a3)
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

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v46 handleGestureEvent:v4];
  [v4 locationInContainerView];
  self->_location.x = v6;
  self->_location.y = v7;
  [v4 translationInContainerView];
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
  if ([v4 phase] == 1)
  {
    v43 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v13 = SBAppendSwitcherModifierResponse(v43, v5);

    v14 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
    v15 = SBAppendSwitcherModifierResponse(v14, v13);

    v16 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:4];
    v5 = SBAppendSwitcherModifierResponse(v16, v15);

    v17 = [(SBMedusaWindowDragGestureSwitcherModifier *)self draggingAppLayoutsForWindowDrag];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __64__SBMedusaWindowDragGestureSwitcherModifier_handleGestureEvent___block_invoke;
    v45[3] = &unk_2783A8CB8;
    v45[4] = self;
    v18 = [v17 bs_firstObjectPassingTest:v45];

    [v4 sizeOfSelectedDisplayItem];
    self->_sizeOfSelectedDisplayItem.width = v19;
    self->_sizeOfSelectedDisplayItem.height = v20;
    v21 = [v18 preferredDisplayOrdinal];
    _ZF = v21 == [(SBMedusaWindowDragGestureSwitcherModifier *)self displayOrdinal];
    v23 = _ZF;
    v24 = !_ZF;
    self->_dragBeganInOtherSwitcher = v24;
    self->_dragBeganInOurSwitcher = v23;
    if (self->_dragBeganInOtherSwitcher)
    {
      [v4 locationInSelectedDisplayItem];
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

  v36 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _anyProposedAppLayoutContainsSelectedDisplayItem];
  v37 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _ourProposedAppLayoutContainsSelectedDisplayItem];
  if (*(&self->super.super.super.super.super.isa + v12[606]) == 1 && !v37 && v36 || self->_dragBeganInOtherSwitcher && v37)
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

- (id)handleSceneReadyEvent:(id)a3
{
  v4 = a3;
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v9.receiver = self;
  v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 handleSceneReadyEvent:v4];

  v7 = SBAppendSwitcherModifierResponse(v5, v6);

  return v7;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:v4];
  if ([v4 isGestureInitiated] && objc_msgSend(v4, "phase") >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  if ([v5 isOrContainsAppLayout:v4])
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v6 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v9 appLayoutContainingAppLayout:v4];
  }

  v7 = v6;

  return v7;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v4 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v8 adjustedAppLayoutsForAppLayouts:a3];
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

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem] && (BSPointEqualToPoint() & 1) == 0)
  {
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v13 anchorPointForIndex:a3];
    x = v7;
    y = v9;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v20 frameForIndex:a3];
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

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone];
  destinationModifier = self->_destinationModifier;
  if (v12)
  {
    [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier currentAppLayout];
  }

  else
  {
    [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier proposedAppLayout];
  }
  v14 = ;
  if (([v11 containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    if (![v14 isOrContainsAppLayout:v11] || !objc_msgSend(v11, "isFullScreen") || ((v15 = -[SBMedusaWindowDragGestureDestinationModifier currentDestination](self->_destinationModifier, "currentDestination"), objc_msgSend(v14, "isFullScreen")) ? (v16 = (v15 & 0xFFFFFFFFFFFFFFFELL) == 4) : (v16 = 0), !v16))
    {
      v34.receiver = self;
      v34.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v34 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
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
    v30 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    [v30 draggingPlatterSideActivationGutterPadding];

    [(SBMedusaWindowDragGestureSwitcherModifier *)self _boundsForDraggingAppLayout];
    v31 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    [v31 iconPlatterScale];

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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    [(SBMedusaWindowDragGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
LABEL_8:
    v10 = v7;
    goto LABEL_9;
  }

  v8 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
  if (![v8 isOrContainsAppLayout:v6])
  {

    goto LABEL_7;
  }

  v9 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _shouldPushInFullScreenContent];

  if (!v9)
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v12 scaleForIndex:a3];
    goto LABEL_8;
  }

  v10 = 0.98;
LABEL_9:

  return v10;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (!-[SBAppLayout isOrContainsAppLayout:](self->_initialMainAppLayout, "isOrContainsAppLayout:", v8) && ([v8 containsItem:self->_selectedDisplayItem] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    [(SBMedusaWindowDragGestureSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = 1.0;
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 1)
  {
    v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
    v9 = [v8 objectAtIndex:a4];

    v10 = [v9 itemForLayoutRole:a3];
    if (![(SBAppLayout *)self->_initialMainAppLayout containsItem:v10]|| [(SBAppLayout *)self->_initialMainAppLayout layoutRoleForItem:v10]!= 4)
    {
      v13.receiver = self;
      v13.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      [(SBMedusaWindowDragGestureSwitcherModifier *)&v13 shadowOpacityForLayoutRole:a3 atIndex:a4];
      v7 = v11;
    }
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v9 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v10 = [v9 objectAtIndex:a3];

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
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v21 cornerRadiiForIndex:a3];
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

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    v7 = 2;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v7 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v9 shadowStyleForLayoutRole:a3 inAppLayout:v6];
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
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self proposedAppLayoutForWindowDrag];
  v4 = [v3 allItems];
  v5 = [v4 count];

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

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v25.receiver = self;
  v25.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v6 = a4;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v25 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v9 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination:v25.receiver];
  v10 = [v6 itemForLayoutRole:a3];
  v11 = [v6 containsItem:self->_selectedDisplayItem];

  if (v11)
  {
    if (v9 - 11 <= 1)
    {
      v12 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
      [v12 resizeAnimationDismissItemOpacity];
      goto LABEL_21;
    }
  }

  else
  {
    if ([(SBAppLayout *)self->_initialMainAppLayout containsItem:v10])
    {
      v14 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
      v15 = [v14 containsItem:v10];

      if ((v15 & 1) == 0)
      {
        v18 = [(SBAppLayout *)self->_initialMainAppLayout layoutRoleForItem:v10];
        if (v18 == 3 && (v9 & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          v21 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
          v12 = v21;
        }

        else
        {
          v20 = v18;
          v21 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
          v12 = v21;
          if (v20 != 4 || v9 != 10)
          {
            [v21 defaultDimmingOpacity];
            v8 = v8 + v23;
LABEL_22:

            goto LABEL_23;
          }
        }

        [v21 replacementDimmingAlpha];
LABEL_21:
        v8 = v13;
        goto LABEL_22;
      }
    }

    if (v9 == 10)
    {
      v12 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
      if ([v12 containsItem:v10] && objc_msgSend(v12, "layoutRoleForItem:", v10) != 4)
      {
        v16 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
        [v16 defaultDimmingOpacity];
        v8 = v17;
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  return v8;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    goto LABEL_2;
  }

  v8 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentAppLayout];
  if (![v8 isOrContainsAppLayout:v6])
  {

LABEL_7:
    v11.receiver = self;
    v11.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v7 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v11 isContentStatusBarVisibleForIndex:a3];
    goto LABEL_8;
  }

  v9 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _shouldPushInFullScreenContent];

  if (!v9)
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
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v4 = [v2 setWithArray:v3];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  [v5 setApplyAssertionEvenIfAppIsHostingTheKeyboard:1];

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  if ([(SBDisplayItem *)v7 isEqualToItem:?]&& [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone]&& [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone];
    destinationModifier = self->_destinationModifier;
    if (v9)
    {
      [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier currentAppLayout];
    }

    else
    {
      [(SBMedusaWindowDragGestureDestinationModifier *)destinationModifier proposedAppLayout];
    }
    v11 = ;
    if (([v6 containsItem:self->_selectedDisplayItem] & 1) == 0 && objc_msgSend(v11, "isOrContainsAppLayout:", v6) && ((v12 = -[SBMedusaWindowDragGestureDestinationModifier currentDestination](self->_destinationModifier, "currentDestination"), objc_msgSend(v11, "isFullScreen")) ? (v13 = (v12 & 0xFFFFFFFFFFFFFFFELL) == 4) : (v13 = 0), v13) || (v15.receiver = self, v15.super_class = SBMedusaWindowDragGestureSwitcherModifier, -[SBMedusaWindowDragGestureSwitcherModifier isLayoutRoleBlurred:inAppLayout:](&v15, sel_isLayoutRoleBlurred_inAppLayout_, a3, v6)))
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
    }
  }

  return v8;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 containsItem:self->_selectedDisplayItem])
  {
    v8.receiver = self;
    v8.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:v4];
  }

  else
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(1u, 1);
  }

  v6 = v5;

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  if ([v4 switcherLayoutElementType] && -[SBGestureSwitcherModifier gesturePhase](self, "gesturePhase") == 1)
  {
    v21.receiver = self;
    v21.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBGestureSwitcherModifier *)&v21 animationAttributesForLayoutElement:v4];
    v6 = [v5 mutableCopy];

    v7 = v6;
    v8 = 2;
  }

  else
  {
    if ([v4 switcherLayoutElementType])
    {
      v19.receiver = self;
      v19.super_class = SBMedusaWindowDragGestureSwitcherModifier;
      v6 = [(SBGestureSwitcherModifier *)&v19 animationAttributesForLayoutElement:v4];
      goto LABEL_13;
    }

    v20.receiver = self;
    v20.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v9 = [(SBGestureSwitcherModifier *)&v20 animationAttributesForLayoutElement:v4];
    v6 = [v9 mutableCopy];

    LODWORD(v9) = [v4 containsItem:self->_selectedDisplayItem];
    v10 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 windowDragAnimationSettings];

      v13 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
      v14 = [v13 resizeAnimationSettings];

      v15 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
      [v14 dampingRatio];
      [v15 setTrackingDampingRatio:?];
      [v14 response];
      [v15 setTrackingResponse:?];
      v23 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      [v15 setFrameRateRange:1114113 highFrameRateReason:{*&v23.minimum, *&v23.maximum, *&v23.preferred}];
      [v6 setLayoutSettings:v15];
      [v6 setCornerRadiusSettings:v15];
      [v6 setPositionSettings:v12];
      if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier hasEnteredPlatterZone])
      {
        v16 = v15;
      }

      else
      {
        v16 = v12;
      }

      [v6 setScaleSettings:v16];

      goto LABEL_13;
    }

    v17 = [v10 resizeAnimationSettings];
    [v6 setLayoutSettings:v17];

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
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  v5 = [v3 setByAddingObject:v4];

  return v5;
}

- (id)topMostLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 topMostLayoutElements];
  v4 = [v3 mutableCopy];

  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  [v4 removeObject:v5];
  [v4 insertObject:v5 atIndex:0];
  if (self->_initialFloatingAppLayout && ![(SBAppLayout *)self->_selectedLeafAppLayout isEqual:?])
  {
    [v4 removeObject:self->_initialFloatingAppLayout];
    [v4 insertObject:self->_initialFloatingAppLayout atIndex:0];
  }

  return v4;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  selectedDisplayItem = self->_selectedDisplayItem;
  v5 = a3;
  if ([v5 containsItem:selectedDisplayItem])
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 layoutRoleForItem:self->_selectedDisplayItem];

    v5 = [v6 numberWithInteger:v7];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:v5];
  }

  v9 = v8;

  return v9;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 visibleHomeAffordanceLayoutElements];
  if ([v3 containsObject:self->_selectedLeafAppLayout])
  {
    v4 = [v3 mutableCopy];
    [v4 removeObject:self->_selectedLeafAppLayout];

    v3 = v4;
  }

  if ([v3 containsObject:self->_initialMainAppLayout] && -[SBAppLayout containsItem:](self->_initialMainAppLayout, "containsItem:", self->_selectedDisplayItem))
  {
    v5 = [v3 mutableCopy];
    [v5 removeObject:self->_initialMainAppLayout];

    v3 = v5;
  }

  return v3;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 1)
  {
    v7.receiver = self;
    v7.super_class = SBMedusaWindowDragGestureSwitcherModifier;
    v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v7 isResizeGrabberVisibleForAppLayout:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)&v14 resizeGrabberLayoutAttributesForAppLayout:v4];
  v6 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  v7 = [v6 itemForLayoutRole:2];
  if (v7 && [v6 isOrContainsAppLayout:v4] && (objc_msgSend(v4, "containsItem:", self->_selectedDisplayItem) & 1) == 0)
  {
    v8 = [v6 containsItem:self->_selectedDisplayItem];

    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = [v4 itemForLayoutRole:1];
    v10 = [v6 layoutRoleForItem:v9];

    v11 = [(SBMedusaWindowDragGestureSwitcherModifier *)self isRTLEnabled];
    if ((v10 == 1) & (v11 ^ 1) | (v10 == 2) & v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 2;
    }

    [v5 setEdge:v12];
    v7 = [v6 leafAppLayoutForRole:v10];
    [v5 setLeafAppLayout:v7];
  }

LABEL_10:

  return v5;
}

- (CGRect)_boundsForDraggingAppLayout
{
  v4 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination];
  v5 = [(SBMedusaWindowDragGestureSwitcherModifier *)self switcherInterfaceOrientation];
  v6 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  v7 = v6;
  if (self->_dragBeganInOtherSwitcher && ([v6 containsItem:self->_selectedDisplayItem] & 1) == 0)
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
    if (v4 > 4)
    {
      if ((v4 - 6) < 8)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        v15 = SBStringForWindowDragGestureDestination(v4);
        [v14 handleFailureInMethod:a2 object:self file:@"SBMedusaWindowDragGestureSwitcherModifier.m" lineNumber:653 description:{@"Unsupported destination when dragging fullscreen app: %@", v15}];

LABEL_40:
        goto LABEL_41;
      }

      if (v4 != 5)
      {
        if (v4 != 14)
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

    if (v4 > 2)
    {
      if (v4 == 3)
      {
LABEL_38:
        v25 = &SBLayoutRoleSide;
        goto LABEL_39;
      }
    }

    else
    {
      if (v4 < 2)
      {
        goto LABEL_37;
      }

      if (v4 != 2)
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

  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      if (v4 != 4)
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

    if (v4 >= 2)
    {
      if (v4 != 2)
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

  if (v4 <= 10)
  {
    if ((v4 - 6) < 4)
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

    if (v4 == 10)
    {
LABEL_31:
      [(SBMedusaWindowDragGestureSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:v5 centerConfiguration:1];
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  if (v4 <= 12)
  {
    if (v4 != 11)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v4 == 13)
  {
    goto LABEL_31;
  }

  if (v4 == 14)
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
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self _appLayoutContainingSelectedDisplayItem];
  v4 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v5 = [v4 indexOfObject:v3];

  v39.receiver = self;
  v39.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v39 frameForIndex:v5];
  v7 = v6;
  v9 = v8;
  v10 = [v3 layoutRoleForItem:self->_selectedDisplayItem];
  SBRectWithSize();
  v38.receiver = self;
  v38.super_class = SBMedusaWindowDragGestureSwitcherModifier;
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v38 frameForLayoutRole:v10 inAppLayout:v3 withBounds:?];
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
  [(SBMedusaWindowDragGestureSwitcherModifier *)&v36 scaleForLayoutRole:v10 inAppLayout:v3];
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
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self medusaSettings];
  [v3 windowPlatterScale];
  v5 = v4;
  if ([(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier currentDestination]== 1)
  {
    [v3 windowPlatterScaleForReplacingEntireSpace];
    v5 = v6;
  }

  return v5;
}

- (double)_scaleForTranslation:(CGPoint)a3
{
  y = a3.y;
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
  v2 = self;
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self proposedAppLayoutsForWindowDrag];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __93__SBMedusaWindowDragGestureSwitcherModifier__anyProposedAppLayoutContainsSelectedDisplayItem__block_invoke;
  v5[3] = &unk_2783A8CB8;
  v5[4] = v2;
  LOBYTE(v2) = [v3 bs_containsObjectPassingTest:v5];

  return v2;
}

- (BOOL)_ourProposedAppLayoutContainsSelectedDisplayItem
{
  v2 = self;
  v3 = [(SBMedusaWindowDragGestureDestinationModifier *)self->_destinationModifier proposedAppLayout];
  LOBYTE(v2) = [v3 containsItem:v2->_selectedDisplayItem];

  return v2;
}

- (id)_appLayoutContainingSelectedDisplayItem
{
  v3 = [(SBMedusaWindowDragGestureSwitcherModifier *)self appLayouts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBMedusaWindowDragGestureSwitcherModifier__appLayoutContainingSelectedDisplayItem__block_invoke;
  v6[3] = &unk_2783A8CB8;
  v6[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v6];

  return v4;
}

- (void)initWithGestureID:(uint64_t)a1 selectedLeafAppLayout:(uint64_t)a2 initialMainAppLayout:initialFloatingAppLayout:initialFloatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMedusaWindowDragGestureSwitcherModifier.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"selectedLeafAppLayout"}];
}

@end