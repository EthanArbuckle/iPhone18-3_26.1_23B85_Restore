@interface SBContinuousExposeWindowDragContainerSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldConfigureInAppDockHiddenAssertion;
- (BOOL)wantsDockBehaviorAssertion;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3;
- (CGRect)_boundingBoxForCurrentStage;
- (SBContinuousExposeWindowDragContainerSwitcherModifier)initWithAppLayouts:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 windowDragContentSwitcherModifier:(id)a6;
- (double)_dockProgressForDraggedWindow;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)continuousExposeStripProgress;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)dockProgress;
- (double)homeScreenDimmingAlpha;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_appLayoutContainingDisplayItem:(id)a3;
- (id)_createInterceptableTransitionRequestForActivatingAppLayout:(id)a3 withSelectedDisplayItem:(id)a4;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayout;
- (id)appLayoutOnStage;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (id)routingModifier:(id)a3 topMostLayoutElementsByModifier:(id)a4;
- (id)topMostLayoutElements;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeWindowDragContainerSwitcherModifier

- (SBContinuousExposeWindowDragContainerSwitcherModifier)initWithAppLayouts:(id)a3 initialAppLayout:(id)a4 selectedDisplayItem:(id)a5 windowDragContentSwitcherModifier:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v14 = [(SBFilteringSwitcherModifier *)&v17 initWithAppLayouts:a3 modifier:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_initialAppLayout, a4);
    objc_storeStrong(&v15->_selectedDisplayItem, a5);
    objc_storeStrong(&v15->_windowDragContentSwitcherModifier, a6);
    v15->_windowDragSpringLoadState = 0;
  }

  return v15;
}

- (void)didMoveToParentModifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  [(SBFilteringSwitcherModifier *)&v12 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _appLayoutContainingDisplayItem:self->_selectedDisplayItem];
    v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutContainingAppLayout:v5];
    appLayoutContainingAppLayout = self->_appLayoutContainingAppLayout;
    self->_appLayoutContainingAppLayout = v6;

    v11.receiver = self;
    v11.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v11 homeScreenDimmingAlpha];
    self->_initialHomeScreenDimmingAlpha = v8;
    v9 = [SBPinDesktopSpaceDisplayItemsSwitcherModifier modifierForGestureWithSelectedDisplayItem:self->_selectedDisplayItem context:self];
    if (v9)
    {
      [(SBChainableModifier *)self addChildModifier:v9];
    }

    if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
    {
      v10 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_initialAppLayout ignoreOcclusion:1 ignoreCentering:0];
      self->_selectedDisplayItemWasInitiallyFullScreen = [v10 containsObject:self->_selectedDisplayItem];
    }

    else
    {
      self->_selectedDisplayItemWasInitiallyFullScreen = 0;
    }
  }
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v6 = [(SBChainableModifier *)&v10 responseForProposedChildResponse:a3 childModifier:a4 event:a5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__SBContinuousExposeWindowDragContainerSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
  v9[3] = &unk_2783AF6C8;
  v9[4] = self;
  v7 = [v6 responseByTransformingResponseWithTransformer:v9];

  return v7;
}

SBPerformTransitionSwitcherEventResponse *__110__SBContinuousExposeWindowDragContainerSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(SBPerformTransitionSwitcherEventResponse *)v3 type]== 1)
  {
    v4 = [*(a1 + 32) appLayout];
    v5 = [*(a1 + 32) maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v4 ignoreOcclusion:1 ignoreCentering:0];
    v6 = [v5 containsObject:*(*(a1 + 32) + 248)];

    if (*(*(a1 + 32) + 232) == 1 && (v6 & 1) == 0)
    {
      v7 = v3;
      v8 = [(SBPerformTransitionSwitcherEventResponse *)v7 transitionRequest];
      v9 = [v8 appLayout];
      if ([v9 containsItem:*(*(a1 + 32) + 248)])
      {
        v19 = v8;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [*(a1 + 32) desktopSpaceDisplayItems];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              if (([(SBDisplayItem *)v15 isEqualToItem:?]& 1) == 0)
              {
                v16 = [v9 appLayoutByInsertingItem:v15];

                v9 = v16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v12);
        }

        v8 = v19;
        v17 = [v19 mutableCopy];
        [v17 setAppLayout:v9];
        v3 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v17 gestureInitiated:[(SBPerformTransitionSwitcherEventResponse *)v7 isGestureInitiated]];
      }

      else
      {
        v3 = v7;
      }
    }
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v17.receiver = self;
  v17.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v17 handleTimerEvent:v4];
  v6 = [v4 reason];

  if ([v6 isEqualToString:self->_continuousExposeSpringLoadReasonWithAppLayout])
  {
    windowDragSpringLoadState = self->_windowDragSpringLoadState;
    switch(windowDragSpringLoadState)
    {
      case 3:
        self->_windowDragSpringLoadState = 0;
        break;
      case 2:
        v8 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _createInterceptableTransitionRequestForActivatingAppLayout:self->_springLoadTargetAppLayout withSelectedDisplayItem:self->_selectedDisplayItem];
        if (v8)
        {
          self->_windowDragSpringLoadState = 3;
          v11 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v8 gestureInitiated:0];
          v12 = SBAppendSwitcherModifierResponse(v11, v5);

          v5 = v12;
        }

        else
        {
          self->_windowDragSpringLoadState = 0;
        }

        goto LABEL_10;
      case 1:
        self->_windowDragSpringLoadState = 2;
        v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_continuousExposeSpringLoadReasonWithAppLayout reason:0.4];
        v9 = SBAppendSwitcherModifierResponse(v8, v5);

        v10 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"kContinuousExposeSpringLoadBlinkingReason" reason:0.0];
        v5 = SBAppendSwitcherModifierResponse(v10, v9);

LABEL_10:
        break;
    }
  }

  if ([v6 isEqualToString:@"kContinuousExposeSpringLoadBlinkingReason"] && self->_blinkCount <= 3)
  {
    v13 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"kContinuousExposeSpringLoadBlinkingReason" reason:0.1];
    v14 = SBAppendSwitcherModifierResponse(v13, v5);

    v15 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    v5 = SBAppendSwitcherModifierResponse(v15, v14);

    ++self->_blinkCount;
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v18 handleTransitionEvent:v4];
  if ([v4 isAppLaunchDuringWindowDragGestureTransition] && objc_msgSend(v4, "phase") == 1)
  {
    v6 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)self->_windowDragContentSwitcherModifier gestureModifier];
    v7 = [v4 toAppLayout];
    [v6 updateProposedAppLayoutWithAppLayout:v7 andInitialAppLayout:self->_initialAppLayout];

    windowDragContentSwitcherModifier = self->_windowDragContentSwitcherModifier;
    v9 = [v4 toAppLayout];
    [(SBContinuousExposeWindowDragContentSwitcherModifier *)windowDragContentSwitcherModifier updateFloorModifiersWithAppLayout:v9];
  }

  if ([v4 phase] == 3)
  {
    self->_blinkCount = 0;
  }

  if ([v4 phase] == 1)
  {
    initialAppLayout = self->_initialAppLayout;
    v11 = [v4 toAppLayout];
    LOBYTE(initialAppLayout) = [(SBAppLayout *)initialAppLayout isEqual:v11];

    if ((initialAppLayout & 1) == 0)
    {
      v12 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
      v13 = [v4 fromAppLayout];
      v14 = [v4 toAppLayout];
      v15 = [(SBInvalidateContinuousExposeIdentifiersEventResponse *)v12 initWithTransitioningFromAppLayout:v13 transitioningToAppLayout:v14 animated:1];

      v16 = SBAppendSwitcherModifierResponse(v15, v5);

      v5 = v16;
    }
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v27 handleGestureEvent:v4];
  self->_gesturePhase = [v4 phase];
  v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
  if ([v6 containsItem:self->_selectedDisplayItem])
  {
    self->_windowDragSpringLoadState = 0;
LABEL_12:
    self->_blinkCount = 0;
    continuousExposeSpringLoadReasonWithAppLayout = self->_continuousExposeSpringLoadReasonWithAppLayout;
    self->_continuousExposeSpringLoadReasonWithAppLayout = 0;

    springLoadTargetAppLayout = self->_springLoadTargetAppLayout;
    self->_springLoadTargetAppLayout = 0;

    goto LABEL_13;
  }

  [v4 locationInContainerView];
  v8 = v7;
  v10 = v9;
  v11 = [v4 selectedAppLayout];
  v12 = [v11 itemForLayoutRole:1];

  v13 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutAtLocation:v12 withDraggedItem:1 environment:v8, v10];
  if (v13 && ([v6 isOrContainsAppLayout:v13] & 1) == 0)
  {
    v15 = v13;
    v14 = self->_springLoadTargetAppLayout;
    self->_springLoadTargetAppLayout = v15;
  }

  else
  {
    v14 = self->_springLoadTargetAppLayout;
    self->_springLoadTargetAppLayout = 0;
  }

  if (self->_springLoadTargetAppLayout)
  {
    if (!self->_windowDragSpringLoadState)
    {
      self->_windowDragSpringLoadState = 1;
      v25 = MEMORY[0x277CCACA8];
      v26 = [(SBAppLayout *)self->_springLoadTargetAppLayout continuousExposeIdentifier];
      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [v16 UUIDString];
      v18 = [v25 stringWithFormat:@"kSpringLoading-%@-%@", v26, v17];
      v19 = self->_continuousExposeSpringLoadReasonWithAppLayout;
      self->_continuousExposeSpringLoadReasonWithAppLayout = v18;

      v20 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:self->_continuousExposeSpringLoadReasonWithAppLayout reason:0.8];
      v21 = SBAppendSwitcherModifierResponse(v20, v5);

      v5 = v21;
    }
  }

  else
  {
    self->_windowDragSpringLoadState = 0;
  }

  if (!self->_windowDragSpringLoadState)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleTapAppLayoutEvent:v4];
  v6 = [v4 appLayout];
  v7 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _createInterceptableTransitionRequestForActivatingAppLayout:v6 withSelectedDisplayItem:self->_selectedDisplayItem];

  if (v7)
  {
    v8 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v7 gestureInitiated:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    [v4 handleWithReason:@"SpringLoading"];
    v5 = v9;
  }

  return v5;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v3 = a3;
  v4 = [(SBSwitcherModifier *)&v6 handleTapOutsideToDismissEvent:v3];
  [v3 handleWithReason:{@"In window drag", v6.receiver, v6.super_class}];

  return v4;
}

- (id)appLayoutOnStage
{
  v2 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)self->_windowDragContentSwitcherModifier gestureModifier];
  v3 = [v2 proposedAppLayout];

  return v3;
}

- (id)appLayout
{
  v2 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)self->_windowDragContentSwitcherModifier gestureModifier];
  v3 = [v2 proposedAppLayout];

  return v3;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3
{
  v4 = a3;
  if (-[SBAppLayout containsItem:](self->_initialAppLayout, "containsItem:", self->_selectedDisplayItem) || (-[SBDisplayItem bundleIdentifier](self->_selectedDisplayItem, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 containsObject:v5], v5, !v6))
  {
    v10.receiver = self;
    v10.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    v7 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v10 adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:v4];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v13 appLayoutsForContinuousExposeIdentifier:v4];
  if (![(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
  {
    v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
    v7 = [v6 containsItem:self->_selectedDisplayItem];

    if (v7)
    {
      v8 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
      v9 = [v8 leafAppLayoutForItem:self->_selectedDisplayItem];

      v10 = [v9 continuousExposeIdentifier];
      if (BSEqualStrings())
      {
        v11 = [v5 count];

        if (v11)
        {
LABEL_7:

          goto LABEL_8;
        }

        v14[0] = v9;
        [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
        v5 = v10 = v5;
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (double)homeScreenDimmingAlpha
{
  if (![(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem])
  {
    return self->_initialHomeScreenDimmingAlpha;
  }

  v10.receiver = self;
  v10.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v10 homeScreenDimmingAlpha];
  v4 = v3;
  v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self switcherSettings];
  v6 = [v5 windowingSettings];
  [v6 maxHomeScreenDimmingAlphaForNonFullscreen];
  v8 = v7;

  if (v4 <= v8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

- (double)continuousExposeStripProgress
{
  v8.receiver = self;
  v8.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v8 continuousExposeStripProgress];
  v4 = v3;
  if (BSFloatIsZero())
  {
    v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v10 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType] && (objc_msgSend(v4, "containsItem:", self->_selectedDisplayItem) & 1) == 0)
  {
    v6 = [v5 mutableCopy];
    v7 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self medusaSettings];
    v8 = [v7 resizeAnimationSettings];
    [v6 setLayoutSettings:v8];

    [v6 setUpdateMode:3];
    v5 = v6;
  }

  return v5;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  initialAppLayout = self->_initialAppLayout;
  v8 = [v6 itemForLayoutRole:a3];
  LOBYTE(initialAppLayout) = [(SBAppLayout *)initialAppLayout containsItem:v8];

  if (initialAppLayout)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    v9 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v11 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return v9;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  initialAppLayout = self->_initialAppLayout;
  v8 = [v6 itemForLayoutRole:a3];
  if (![(SBAppLayout *)initialAppLayout containsItem:v8])
  {

    goto LABEL_5;
  }

  v9 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self windowManagementContext];
  v10 = [v9 isFlexibleWindowingEnabled];

  if (v10)
  {
LABEL_5:
    v12.receiver = self;
    v12.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    LOBYTE(a3) = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v12 isLayoutRoleBlurred:a3 inAppLayout:v6];
    goto LABEL_6;
  }

  v13.receiver = self;
  v13.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  LODWORD(a3) = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v13 isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
LABEL_6:

  return a3;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v15.receiver = self;
  v15.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v6 = a4;
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v15 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  initialAppLayout = self->_initialAppLayout;
  v10 = [v6 itemForLayoutRole:{a3, v15.receiver, v15.super_class}];

  LODWORD(initialAppLayout) = [(SBAppLayout *)initialAppLayout containsItem:v10];
  if (initialAppLayout)
  {
    v11 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    [v12 resizeBlurDelay];
    v8 = v13;
  }

  return v8;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_initialAppLayout containsAnyItemFromAppLayout:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v7 wantsSceneResizesHostedContextForAppLayout:v4];
  }

  return v5;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBAppLayout *)self->_springLoadTargetAppLayout isOrContainsAppLayout:v6])
  {
    if (self->_blinkCount)
    {
      v7 = 0.5;
    }

    else
    {
      v7 = 0.2;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
    v7 = v8;
  }

  return v7;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (![v8 containsItem:self->_selectedDisplayItem] || self->_windowDragSpringLoadState != 1 || (-[SBContinuousExposeWindowDragContainerSwitcherModifier appLayoutOnStage](self, "appLayoutOnStage"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsItem:", self->_selectedDisplayItem), v9, v11 = 0.5, v10))
  {
    v14.receiver = self;
    v14.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (BOOL)wantsDockBehaviorAssertion
{
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _dockProgressForDraggedWindow];
  v3 = BSFloatLessThanFloat();
  if (v3)
  {
    LOBYTE(v3) = ![(SBContinuousExposeWindowDragContainerSwitcherModifier *)self shouldConfigureInAppDockHiddenAssertion];
  }

  return v3;
}

- (double)dockProgress
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v6 dockProgress];
  v4 = v3;
  [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _dockProgressForDraggedWindow];
  if (result >= v4)
  {
    return v4;
  }

  return result;
}

- (double)_dockProgressForDraggedWindow
{
  v3 = 1.0;
  if (([(SBContinuousExposeWindowDragContainerSwitcherModifier *)self prefersDockHidden]& 1) == 0)
  {
    if ([(SBAppLayout *)self->_initialAppLayout containsItem:self->_selectedDisplayItem]|| ([(SBContinuousExposeWindowDragContainerSwitcherModifier *)self displayItemInSlideOver], v4 = objc_claimAutoreleasedReturnValue(), v5 = BSEqualObjects(), v4, v5))
    {
      v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self windowManagementContext];
      v7 = [v6 isFlexibleWindowingEnabled];

      v8 = [(SBSwitcherModifier *)self windowingConfiguration];
      [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self containerViewBounds];
      v10 = v9;
      [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self floatingDockHeight];
      v12 = v11;
      if (v7)
      {
        [v8 dockTopMargin];
        v14 = v13;
        v15 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayouts];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __86__SBContinuousExposeWindowDragContainerSwitcherModifier__dockProgressForDraggedWindow__block_invoke;
        v29[3] = &unk_2783AE1A0;
        v29[4] = self;
        v16 = [v15 indexOfObjectPassingTest:v29];

        MaxY = 0.0;
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self frameForIndex:v16];
          v19 = v18;
          v21 = v20;
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self anchorPointForIndex:v16];
          MaxY = v21 + v19 + (0.5 - v22) * v21;
          v23 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self displayItemInSlideOver];
          v24 = BSEqualObjects();

          if (v24)
          {
            [v8 slideOverBorderWidth];
            MaxY = MaxY + v25;
          }
        }
      }

      else
      {
        [v8 screenEdgePadding];
        v14 = v26;
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _boundingBoxForCurrentStage];
        MaxY = CGRectGetMaxY(v30);
      }

      v27 = v10 - v12;
      v3 = 1.0;
      if (v14 + MaxY > v27)
      {
        v3 = (v12 - (v27 + (v14 + MaxY - v27) * 0.75 - v27)) / v12;
      }
    }
  }

  return v3;
}

- (BOOL)shouldConfigureInAppDockHiddenAssertion
{
  v3 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self windowManagementContext];
  v4 = [v3 isFlexibleWindowingEnabled];

  if (v4)
  {
    if ([(SBContinuousExposeWindowDragContainerSwitcherModifier *)self isSoftwareKeyboardVisible]&& ([(SBContinuousExposeWindowDragContainerSwitcherModifier *)self isMedusaHostedKeyboardVisible]& 1) != 0)
    {
      return 1;
    }

    if (([(SBContinuousExposeWindowDragContainerSwitcherModifier *)self prefersDockHidden]& 1) != 0)
    {
      return 1;
    }

    [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _dockProgressForDraggedWindow];
    if (BSFloatIsZero())
    {
      return 1;
    }

    v6 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __96__SBContinuousExposeWindowDragContainerSwitcherModifier_shouldConfigureInAppDockHiddenAssertion__block_invoke;
    v45[3] = &unk_2783A8C90;
    v45[4] = self;
    v7 = [v6 appLayoutWithItemsPassingTest:v45];

    if (v7)
    {
      v8 = [v7 allItems];
      v9 = [v8 count];

      if (v9)
      {
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self containerViewBounds];
        v43 = v11;
        v44 = v10;
        v13 = v12;
        v15 = v14;
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self floatingDockHeight];
        v17 = v16;
        v18 = [(SBSwitcherModifier *)self windowingConfiguration];
        v19 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self displayItemLayoutAttributesCalculator];
        v20 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self switcherInterfaceOrientation];
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self screenScale];
        v22 = v21;
        v23 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self isDisplayEmbedded];
        v24 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self prefersStripHidden];
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
        v37 = [v19 flexibleWindowingAutoLayoutSpaceForAppLayout:v7 containerOrientation:v20 floatingDockHeight:v23 screenScale:v24 bounds:0 isEmbeddedDisplay:v17 prefersStripHidden:v22 prefersDockHidden:v44 leftStatusBarPartIntersectionRegion:v43 rightStatusBarPartIntersectionRegion:{v13, v15, v26, v28, v30, v32, v33, v34, v35, v36}];

        [v37 boundingBox];
        v40 = v38 + v39;
        [v18 dockTopMargin];
        v42 = v15 - v17 - v41;

        if (v40 > v42)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  else
  {
    v46.receiver = self;
    v46.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    return [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v46 shouldConfigureInAppDockHiddenAssertion];
  }
}

- (id)topMostLayoutElements
{
  v14.receiver = self;
  v14.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v3 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v14 topMostLayoutElements];
  v4 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self displayItemInSlideOver];
  if (v4)
  {
    if ([(SBAppLayout *)self->_appLayoutContainingAppLayout containsItem:v4])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __78__SBContinuousExposeWindowDragContainerSwitcherModifier_topMostLayoutElements__block_invoke;
      v13[3] = &unk_2783B76C8;
      v13[4] = self;
      v5 = [v3 indexOfObjectPassingTest:v13];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        v7 = [(SBAppLayout *)self->_appLayoutContainingAppLayout leafAppLayoutForItem:v4];
        v8 = [v3 sb_arrayByInsertingOrMovingObject:v7 toIndex:v6];

        v3 = v8;
      }
    }
  }

  v9 = [(SBAppLayout *)self->_appLayoutContainingAppLayout allItems];
  if ([v9 count] >= 2)
  {
    appLayoutContainingAppLayout = self->_appLayoutContainingAppLayout;
    v11 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
    LOBYTE(appLayoutContainingAppLayout) = [(SBAppLayout *)appLayoutContainingAppLayout isOrContainsAppLayout:v11];

    if (appLayoutContainingAppLayout)
    {
      goto LABEL_9;
    }

    [v3 sb_arrayByRemovingObject:self->_appLayoutContainingAppLayout];
    v3 = v9 = v3;
  }

LABEL_9:

  return v3;
}

uint64_t __78__SBContinuousExposeWindowDragContainerSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 switcherLayoutElementType] == 10)
  {
    v4 = 1;
  }

  else if ([v3 isAppLayout])
  {
    v5 = *(*(a1 + 32) + 176);
    v6 = [v3 appLayout];
    v4 = [v5 isOrContainsAppLayout:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  gesturePhase = self->_gesturePhase;
  v8 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
  v9 = v8;
  if (gesturePhase != 3)
  {
    if ([v8 isOrContainsAppLayout:v6] && !self->_autoLayoutSpaceWithDraggedItemExcluded)
    {
      v10 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutContainingAppLayout:v6];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __97__SBContinuousExposeWindowDragContainerSwitcherModifier_occlusionStateForLayoutRole_inAppLayout___block_invoke;
      v50[3] = &unk_2783A8C90;
      v50[4] = self;
      v11 = [v10 appLayoutWithItemsPassingTest:v50];

      if (v11)
      {
        v12 = [v11 allItems];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self displayItemLayoutAttributesCalculator];
          v48 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self switcherInterfaceOrientation];
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self floatingDockHeight];
          v47 = v15;
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self screenScale];
          v46 = v16;
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self containerViewBounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self isDisplayEmbedded];
          v26 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self prefersStripHidden];
          v27 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self prefersDockHidden];
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
          v40 = [v14 flexibleWindowingAutoLayoutSpaceForAppLayout:v11 containerOrientation:v48 floatingDockHeight:v25 screenScale:v26 bounds:v27 isEmbeddedDisplay:v47 prefersStripHidden:v46 prefersDockHidden:v18 leftStatusBarPartIntersectionRegion:v20 rightStatusBarPartIntersectionRegion:{v22, v24, v29, v31, v33, v35, v36, v37, v38, v39}];
          autoLayoutSpaceWithDraggedItemExcluded = self->_autoLayoutSpaceWithDraggedItemExcluded;
          self->_autoLayoutSpaceWithDraggedItemExcluded = v40;
        }
      }
    }

    if (self->_autoLayoutSpaceWithDraggedItemExcluded)
    {
      v42 = [v6 itemForLayoutRole:a3];
      if (([(SBDisplayItem *)v42 isEqualToItem:?]& 1) != 0)
      {
        v43 = 1;
LABEL_20:

        goto LABEL_21;
      }

      if ([(SBFlexibleWindowingAutoLayoutSpace *)self->_autoLayoutSpaceWithDraggedItemExcluded containsDisplayItem:v42])
      {
        v44 = [(SBFlexibleWindowingAutoLayoutSpace *)self->_autoLayoutSpaceWithDraggedItemExcluded flexibleAutoLayoutItemForDisplayItem:v42];
        if ([v44 isFullyOccluded])
        {
          v43 = 3;
        }

        else if ([v44 isOverlapped])
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        goto LABEL_20;
      }
    }
  }

  v49.receiver = self;
  v49.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v43 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v49 occlusionStateForLayoutRole:a3 inAppLayout:v6];
LABEL_21:

  return v43;
}

- (id)visibleSplitViewHandleNubViews
{
  v33.receiver = self;
  v33.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
  v3 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)&v33 visibleSplitViewHandleNubViews];
  v4 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self windowManagementContext];
  v5 = [v4 isFlexibleWindowingEnabled];

  if (v5)
  {
    v6 = [v3 mutableCopy];
    v7 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayouts];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__SBContinuousExposeWindowDragContainerSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke;
    v32[3] = &unk_2783AE1A0;
    v32[4] = self;
    v8 = [v7 indexOfObjectPassingTest:v32];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *MEMORY[0x277CBF398];
      v10 = *(MEMORY[0x277CBF398] + 8);
      v11 = *(MEMORY[0x277CBF398] + 16);
      v12 = *(MEMORY[0x277CBF398] + 24);
      v13 = 0x7FEFFFFFFFFFFFFFLL;
      v14 = 0x7FEFFFFFFFFFFFFFLL;
    }

    else
    {
      [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self frameForIndex:v8];
      v9 = v16;
      v10 = v17;
      v11 = v18;
      v12 = v19;
      [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self anchorPointForIndex:v8];
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__SBContinuousExposeWindowDragContainerSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke_2;
    v23[3] = &unk_2783BF9E0;
    v23[4] = self;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v20 = v6;
    v24 = v20;
    [v3 enumerateObjectsUsingBlock:v23];
    v21 = v24;
    v15 = v20;
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

void __87__SBContinuousExposeWindowDragContainerSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayItems];
  v5 = [v4 firstObject];
  v6 = [v4 lastObject];
  if ([(SBDisplayItem *)v5 isEqualToItem:?])
  {
    if (*(a1 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 72) + *(a1 + 56) + (0.5 - *(a1 + 88)) * *(a1 + 72);
    v12.receiver = *(a1 + 32);
    v12.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    objc_msgSendSuper2(&v12, sel_frameForSplitViewHandleNubView_, v3);
  }

  else
  {
    if (![(SBDisplayItem *)v6 isEqualToItem:?]|| *(a1 + 48) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v7 = *(a1 + 56) + (0.5 - *(a1 + 88)) * *(a1 + 72);
    v11.receiver = *(a1 + 32);
    v11.super_class = SBContinuousExposeWindowDragContainerSwitcherModifier;
    objc_msgSendSuper2(&v11, sel_frameForSplitViewHandleNubView_, v3);
    v8 = v9 + v10;
  }

  if (vabdd_f64(v7, v8) > 2.0)
  {
    [*(a1 + 40) removeObject:v3];
  }

LABEL_9:
}

- (id)visibleSplitViewHandleDimmingViews
{
  v2 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self visibleSplitViewHandleNubViews];
  v3 = [v2 bs_map:&__block_literal_global_346];

  return v3;
}

SBSwitcherSplitViewHandleDimmingElement *__91__SBContinuousExposeWindowDragContainerSwitcherModifier_visibleSplitViewHandleDimmingViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SBSwitcherSplitViewHandleDimmingElement alloc];
  v4 = [v2 displayItems];

  v5 = [(SBSwitcherSplitViewHandleDimmingElement *)v3 initWithDisplayItems:v4];

  return v5;
}

- (id)routingModifier:(id)a3 topMostLayoutElementsByModifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 modifiers];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v6 objectForKey:*(*(&v17 + 1) + 8 * i)];
        [v7 addObjectsFromArray:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v7];
  v15 = [v14 array];

  return v15;
}

- (id)_createInterceptableTransitionRequestForActivatingAppLayout:(id)a3 withSelectedDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
  v9 = self->_initialAppLayout;
  v10 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self _appLayoutContainingDisplayItem:v7];
  if (v10)
  {
    v11 = [(SBContinuousExposeWindowDragContentSwitcherModifier *)self->_windowDragContentSwitcherModifier gestureModifier];
    v12 = [v11 appLayoutByAddingAppLayout:v10 toAppLayout:v6];

    if (![v8 containsItem:v7] || (v13 = -[SBAppLayout containsItem:](v9, "containsItem:", v7), v14 = v12, !v13))
    {
      v14 = v6;
    }

    v15 = v14;
    initialAppLayout = self->_initialAppLayout;
    self->_initialAppLayout = v12;
    v17 = v12;

    v18 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v15];
    [v18 setAppLaunchDuringWindowDragGesture:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_appLayoutContainingDisplayItem:(id)a3
{
  v4 = a3;
  v5 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayouts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SBContinuousExposeWindowDragContainerSwitcherModifier__appLayoutContainingDisplayItem___block_invoke;
  v9[3] = &unk_2783A8CB8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

- (CGRect)_boundingBoxForCurrentStage
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayoutOnStage];
  if (v3)
  {
    v4 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v3];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v3 allItems];
    v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v42;
      v8 = 1.79769313e308;
      v9 = -1.79769313e308;
      v10 = -1.79769313e308;
      v11 = 1.79769313e308;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v4 flexibleAutoLayoutItemForDisplayItem:v13];
          [v14 size];
          v16 = v15;
          v18 = v17;
          [v14 position];
          v20 = v19;
          v22 = v21;
          if ([(SBDisplayItem *)self->_selectedDisplayItem isEqualToItem:v13])
          {
            v23 = [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self appLayouts];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __84__SBContinuousExposeWindowDragContainerSwitcherModifier__boundingBoxForCurrentStage__block_invoke;
            v40[3] = &unk_2783AE1A0;
            v40[4] = self;
            v24 = [v23 indexOfObjectPassingTest:v40];

            if (v24 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self frameForIndex:v24];
              v26 = v25;
              v28 = v27;
              v16 = v29;
              v18 = v30;
              [(SBContinuousExposeWindowDragContainerSwitcherModifier *)self anchorPointForIndex:v24];
              v33 = v28 + (0.5 - v32) * v18;
              v20 = v16 * 0.5 + v26 + (0.5 - v31) * v16;
              v22 = v18 * 0.5 + v33;
            }
          }

          if (v11 >= v20 - v16 * 0.5)
          {
            v11 = v20 - v16 * 0.5;
          }

          v34 = v18 * 0.5;
          if (v8 >= v22 - v18 * 0.5)
          {
            v8 = v22 - v18 * 0.5;
          }

          if (v10 < v20 + v16 * 0.5)
          {
            v10 = v20 + v16 * 0.5;
          }

          if (v9 < v22 + v34)
          {
            v9 = v22 + v34;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 1.79769313e308;
      v9 = -1.79769313e308;
      v10 = -1.79769313e308;
      v11 = 1.79769313e308;
    }
  }

  else
  {
    v8 = 1.79769313e308;
    v9 = -1.79769313e308;
    v10 = -1.79769313e308;
    v11 = 1.79769313e308;
  }

  v35 = v10 - v11;
  v36 = v9 - v8;
  v37 = v11;
  v38 = v8;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

@end