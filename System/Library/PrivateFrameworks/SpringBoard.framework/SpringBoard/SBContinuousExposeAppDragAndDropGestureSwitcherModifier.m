@interface SBContinuousExposeAppDragAndDropGestureSwitcherModifier
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBContinuousExposeAppDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 appLayout:(id)a4 displayItemThatWouldBeEvicted:(id)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)backgroundOpacityForIndex:(unint64_t)a3;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenDimmingAlpha;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
@end

@implementation SBContinuousExposeAppDragAndDropGestureSwitcherModifier

- (SBContinuousExposeAppDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 appLayout:(id)a4 displayItemThatWouldBeEvicted:(id)a5
{
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  v12 = [(SBGestureSwitcherModifier *)&v14 initWithGestureID:a3];
  if (v12)
  {
    if (!v10)
    {
      [SBContinuousExposeAppDragAndDropGestureSwitcherModifier initWithGestureID:a2 appLayout:v12 displayItemThatWouldBeEvicted:?];
    }

    objc_storeStrong(&v12->_appLayout, a4);
    objc_storeStrong(&v12->_initialAppLayout, v12->_appLayout);
    objc_storeStrong(&v12->_displayItemThatWouldBeEvictedIfAny, a5);
  }

  return v12;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v43 handleGestureEvent:v4];
  if ([v4 isCanceled])
  {
    [(SBChainableModifier *)self setState:1];
    v6 = v5;
    goto LABEL_24;
  }

  v7 = v4;
  self->_dropAction = [v7 dropAction];
  v8 = [v7 draggedSceneIdentifier];
  draggedSceneIdentifier = self->_draggedSceneIdentifier;
  self->_draggedSceneIdentifier = v8;

  self->_hasPlatterized = [v7 hasPlatterized];
  self->_hasPreviewLifted = [v7 hasPreviewLifted];
  self->_draggedSceneOriginalLayoutRole = [v7 draggedSceneLayoutRole];
  [v7 platterViewFrame];
  self->_platterFrame.origin.x = v10;
  self->_platterFrame.origin.y = v11;
  self->_platterFrame.size.width = v12;
  self->_platterFrame.size.height = v13;
  p_location = &self->_location;
  [v7 locationInContainerView];
  self->_location.x = v15;
  self->_location.y = v16;
  self->_gestureEnded = [v7 phase] == 3;
  [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self containerViewBounds];
  v18 = v17;
  v19 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self isRTLEnabled];
  x = self->_location.x;
  if (v19)
  {
    if (p_location->x < v18 * 0.5)
    {
      goto LABEL_19;
    }
  }

  else if (p_location->x >= v18 * 0.5)
  {
    goto LABEL_19;
  }

  v42.receiver = self;
  v42.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v42 continuousExposeStripProgress];
  v21 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self isContinuousExposeStripVisible];
  v22 = [(SBSwitcherModifier *)self windowingConfiguration];
  v23 = v22;
  if (v21)
  {
    [v22 stripWidth];
  }

  else
  {
    [v22 stripScreenEdgePadding];
  }

  v25 = v24;

  if ([(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self isRTLEnabled])
  {
    v26 = p_location->x > v18 - v25;
  }

  else
  {
    v26 = p_location->x < v25;
  }

  if (BSFloatGreaterThanFloat())
  {
    if (!v26)
    {
      v27 = [SBUpdateContinuousExposeStripsPresentationResponse alloc];
      v28 = 0;
      v29 = 1;
LABEL_18:
      v30 = [(SBUpdateContinuousExposeStripsPresentationResponse *)v27 initWithPresentationOptions:v28 dismissalOptions:v29];
      v31 = SBAppendSwitcherModifierResponse(v30, v5);

      v5 = v31;
    }
  }

  else if (v26)
  {
    v27 = [SBUpdateContinuousExposeStripsPresentationResponse alloc];
    v28 = 1;
    v29 = 0;
    goto LABEL_18;
  }

LABEL_19:
  if (self->_gestureEnded)
  {
    v32 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self topMostLayoutRolesForAppLayout:self->_appLayout, x];
    v33 = [v32 firstObject];
    v34 = [v33 integerValue];

    v35 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:v34];
    v36 = [v35 uniqueIdentifier];
    LODWORD(v34) = [v36 isEqualToString:self->_draggedSceneIdentifier];

    if (v34)
    {
      v37 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v38 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self appLayoutByBringingItemToFront:v35 inAppLayout:self->_appLayout];
      [(SBSwitcherTransitionRequest *)v37 setAppLayout:v38];

      v39 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v37 gestureInitiated:0];
      v40 = SBAppendSwitcherModifierResponse(v39, v5);

      v5 = v40;
    }
  }

  v6 = v5;

LABEL_24:

  return v6;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gestureEnded && !self->_transitionModifier)
  {
    v6 = [v4 fromAppLayout];
    dropTransitionFromAppLayout = self->_dropTransitionFromAppLayout;
    self->_dropTransitionFromAppLayout = v6;

    v8 = [SBContinuousExposeDragAndDropToAppTransitionSwitcherModifier alloc];
    v9 = [v5 transitionID];
    v10 = [(SBTransitionSwitcherModifier *)v8 initWithTransitionID:v9];
    transitionModifier = self->_transitionModifier;
    self->_transitionModifier = v10;

    [(SBChainableModifier *)self addChildModifier:self->_transitionModifier];
  }

  else if ([v4 isGestureInitiated] && !self->_transitionModifier)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v12 = [v5 toAppLayout];
  appLayout = self->_appLayout;
  self->_appLayout = v12;

  v16.receiver = self;
  v16.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  v14 = [(SBGestureSwitcherModifier *)&v16 handleTransitionEvent:v5];

  return v14;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  v5 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v25 topMostLayoutRolesForAppLayout:v4];
  if ([v4 isEqual:self->_initialAppLayout])
  {
    v6 = [v5 mutableCopy];
    v7 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v4 allItems];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v6;
      v20 = v5;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 uniqueIdentifier];
          v15 = [v14 isEqualToString:self->_draggedSceneIdentifier];

          if (v15)
          {
            v7 = [v4 layoutRoleForItem:v13];
            v6 = v19;
            v5 = v20;
            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v6 = v19;
      v5 = v20;
      v7 = 0;
    }

LABEL_13:

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v6 removeObject:v16];

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v6 insertObject:v17 atIndex:0];
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  v7 = v6;
  if (self->_gestureEnded && (dropTransitionFromAppLayout = self->_dropTransitionFromAppLayout, dropTransitionFromAppLayout != self->_appLayout) && (v9 = MEMORY[0x277CBEB98], [v6 allItems], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "setWithArray:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[SBAppLayout containsAnyItemFromSet:](dropTransitionFromAppLayout, "containsAnyItemFromSet:", v11), v11, v10, v12))
  {
    -[SBContinuousExposeAppDragAndDropGestureSwitcherModifier frameForIndex:](&v26, sel_frameForIndex_, [v5 indexOfObject:self->_appLayout], v25.receiver, v25.super_class, self, SBContinuousExposeAppDragAndDropGestureSwitcherModifier);
  }

  else
  {
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v25 frameForIndex:a3, self, SBContinuousExposeAppDragAndDropGestureSwitcherModifier, v26.receiver, v26.super_class];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)backgroundOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  result = 0.0;
  if (v6)
  {
    v8.receiver = self;
    v8.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v8 backgroundOpacityForIndex:a3, 0.0];
  }

  return result;
}

- (double)homeScreenDimmingAlpha
{
  v3 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self windowManagementContext];
  v4 = [v3 isChamoisOrFlexibleWindowing];

  if (v4)
  {
    v10 = self;
    v5 = &v10;
LABEL_6:
    v5[1] = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
    objc_msgSendSuper2(v5, sel_homeScreenDimmingAlpha, v9);
    return result;
  }

  transitionModifier = self->_transitionModifier;
  if (!transitionModifier || (v7 = [(SBTransitionSwitcherModifier *)transitionModifier transitionPhase], result = 1.0, v7 <= 1))
  {
    v9 = self;
    v5 = &v9;
    goto LABEL_6;
  }

  return result;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3
{
  if (self->_appLayout == a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  return [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v6 isResizeGrabberVisibleForAppLayout:?];
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  displayItemThatWouldBeEvictedIfAny = self->_displayItemThatWouldBeEvictedIfAny;
  if (!displayItemThatWouldBeEvictedIfAny || self->_appLayout != v6)
  {
    goto LABEL_7;
  }

  v9 = [(SBAppLayout *)v6 itemForLayoutRole:a3];
  if (([(SBDisplayItem *)displayItemThatWouldBeEvictedIfAny isEqualToItem:v9]& 1) == 0)
  {

LABEL_7:
    v14.receiver = self;
    v14.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:a3 inAppLayout:v7];
    v11 = v12;
    goto LABEL_8;
  }

  dropAction = self->_dropAction;

  v11 = 0.5;
  if (!dropAction)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v4 = [(SBAppLayout *)self->_appLayout itemForLayoutRole:a3, a4];
  v5 = v4 != 0;

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_initialAppLayout isOrContainsAppLayout:v6]|| (dropTransitionFromAppLayout = self->_dropTransitionFromAppLayout) != 0 && [(SBAppLayout *)dropTransitionFromAppLayout isOrContainsAppLayout:v6])
  {
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
    [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)&v20 cornerRadiiForIndex:a3];
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.topRight = v19;
  result.bottomRight = v18;
  result.bottomLeft = v17;
  result.topLeft = v16;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeAppDragAndDropGestureSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBContinuousExposeAppDragAndDropGestureSwitcherModifier *)self medusaSettings];
  v7 = [v6 resizeAnimationSettings];
  [v5 setLayoutSettings:v7];

  [v5 setUpdateMode:3];

  return v5;
}

- (void)initWithGestureID:(uint64_t)a1 appLayout:(uint64_t)a2 displayItemThatWouldBeEvicted:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeAppDragAndDropGestureSwitcherModifier.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end