@interface SBAppDragAndDropGestureSwitcherModifier
- (BOOL)_shouldPushInFullScreenContentForEvent:(id)a3;
- (BOOL)_showResizeUI;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBAppDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 floatingSwitcherVisible:(BOOL)a4 fullScreenAppLayout:(id)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)backgroundOpacityForIndex:(unint64_t)a3;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenDimmingAlpha;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleBlurProgressEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleResizeProgressEvent:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)_recomputeBlurStateWithCompletion:(id)a3;
@end

@implementation SBAppDragAndDropGestureSwitcherModifier

- (SBAppDragAndDropGestureSwitcherModifier)initWithGestureID:(id)a3 floatingSwitcherVisible:(BOOL)a4 fullScreenAppLayout:(id)a5
{
  v10 = a5;
  v13.receiver = self;
  v13.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v11 = [(SBGestureSwitcherModifier *)&v13 initWithGestureID:a3];
  if (v11)
  {
    if (!v10)
    {
      [SBAppDragAndDropGestureSwitcherModifier initWithGestureID:a2 floatingSwitcherVisible:v11 fullScreenAppLayout:?];
    }

    v11->_floatingSwitcherVisible = a4;
    objc_storeStrong(&v11->_fullScreenAppLayout, a5);
    objc_storeStrong(&v11->_initialFullScreenAppLayout, v11->_fullScreenAppLayout);
  }

  return v11;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__115;
  v35 = __Block_byref_object_dispose__115;
  v30.receiver = self;
  v30.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v36 = [(SBGestureSwitcherModifier *)&v30 handleGestureEvent:v4];
  if ([v4 isCanceled])
  {
    [(SBChainableModifier *)self setState:1];
    v5 = v32[5];
  }

  else
  {
    v6 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
    v7 = [v6 indexOfObject:self->_fullScreenAppLayout];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    [(SBAppDragAndDropGestureSwitcherModifier *)self frameForIndex:v8];
    v10 = v9;
    v12 = v11;
    v13 = v4;
    self->_shouldPushInFullScreenContent = [(SBAppDragAndDropGestureSwitcherModifier *)self _shouldPushInFullScreenContentForEvent:v13];
    self->_dropAction = [v13 dropAction];
    v14 = [v13 draggedSceneIdentifier];
    draggedSceneIdentifier = self->_draggedSceneIdentifier;
    self->_draggedSceneIdentifier = v14;

    self->_isWindowDrag = [v13 isWindowDrag];
    self->_hasPlatterized = [v13 hasPlatterized];
    self->_hasPreviewLifted = [v13 hasPreviewLifted];
    self->_draggedSceneOriginalLayoutRole = [v13 draggedSceneLayoutRole];
    [v13 platterViewFrame];
    self->_platterFrame.origin.x = v16;
    self->_platterFrame.origin.y = v17;
    self->_platterFrame.size.width = v18;
    self->_platterFrame.size.height = v19;
    [v13 locationInContainerView];
    self->_location.x = v20;
    self->_location.y = v21;
    self->_gestureEnded = [v13 phase] == 3;
    v22 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
    v23 = [v22 indexOfObject:self->_fullScreenAppLayout];

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    [(SBAppDragAndDropGestureSwitcherModifier *)self frameForIndex:v24];
    v27 = (v10 != v26 || v12 != v25) && !self->_gestureEnded;
    self->_needsBlurBecauseFramesWillMismatch = v27;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __62__SBAppDragAndDropGestureSwitcherModifier_handleGestureEvent___block_invoke;
    v29[3] = &unk_2783B3C88;
    v29[4] = &v31;
    [(SBAppDragAndDropGestureSwitcherModifier *)self _recomputeBlurStateWithCompletion:v29];
    v5 = v32[5];
  }

  _Block_object_dispose(&v31, 8);

  return v5;
}

void __62__SBAppDragAndDropGestureSwitcherModifier_handleGestureEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleResizeProgressEvent:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__115;
  v17 = __Block_byref_object_dispose__115;
  v12.receiver = self;
  v12.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v18 = [(SBSwitcherModifier *)&v12 handleResizeProgressEvent:v4];
  [v4 progress];
  self->_isResizing = BSFloatIsOne() ^ 1;
  [v4 progress];
  v5 = [(SBAppDragAndDropGestureSwitcherModifier *)self medusaSettings];
  [v5 dropAnimationUnblurThresholdPercentage];
  self->_hasResizedEnoughToUnblur = BSFloatGreaterThanOrEqualToFloat();

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__SBAppDragAndDropGestureSwitcherModifier_handleResizeProgressEvent___block_invoke;
  v11[3] = &unk_2783B3C88;
  v11[4] = &v13;
  [(SBAppDragAndDropGestureSwitcherModifier *)self _recomputeBlurStateWithCompletion:v11];
  v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v7 = SBAppendSwitcherModifierResponse(v6, v14[5]);
  v8 = v14[5];
  v14[5] = v7;

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __69__SBAppDragAndDropGestureSwitcherModifier_handleResizeProgressEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleBlurProgressEvent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__115;
  v16 = __Block_byref_object_dispose__115;
  v11.receiver = self;
  v11.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleBlurProgressEvent:v4];
  [v4 progress];
  self->_isBlurring = BSFloatIsOne() ^ 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBAppDragAndDropGestureSwitcherModifier_handleBlurProgressEvent___block_invoke;
  v10[3] = &unk_2783B3C88;
  v10[4] = &v12;
  [(SBAppDragAndDropGestureSwitcherModifier *)self _recomputeBlurStateWithCompletion:v10];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v13[5]);
  v7 = v13[5];
  v13[5] = v6;

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __67__SBAppDragAndDropGestureSwitcherModifier_handleBlurProgressEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__115;
  v16 = __Block_byref_object_dispose__115;
  v11.receiver = self;
  v11.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBAppDragAndDropGestureSwitcherModifier_handleSceneReadyEvent___block_invoke;
  v10[3] = &unk_2783B3C88;
  v10[4] = &v12;
  [(SBAppDragAndDropGestureSwitcherModifier *)self _recomputeBlurStateWithCompletion:v10];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v13[5]);
  v7 = v13[5];
  v13[5] = v6;

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __65__SBAppDragAndDropGestureSwitcherModifier_handleSceneReadyEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
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

    v8 = [SBDragAndDropToAppTransitionSwitcherModifier alloc];
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
  fullScreenAppLayout = self->_fullScreenAppLayout;
  self->_fullScreenAppLayout = v12;

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__115;
  v22 = __Block_byref_object_dispose__115;
  v17.receiver = self;
  v17.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v23 = [(SBGestureSwitcherModifier *)&v17 handleTransitionEvent:v5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBAppDragAndDropGestureSwitcherModifier_handleTransitionEvent___block_invoke;
  v16[3] = &unk_2783B3C88;
  v16[4] = &v18;
  [(SBAppDragAndDropGestureSwitcherModifier *)self _recomputeBlurStateWithCompletion:v16];
  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v14;
}

void __65__SBAppDragAndDropGestureSwitcherModifier_handleTransitionEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SBAppendSwitcherModifierResponse(a2, *(*(*(a1 + 32) + 8) + 40));
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  v7 = v6;
  if (self->_gestureEnded && (dropTransitionFromAppLayout = self->_dropTransitionFromAppLayout, dropTransitionFromAppLayout != self->_fullScreenAppLayout) && (v9 = MEMORY[0x277CBEB98], [v6 allItems], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "setWithArray:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[SBAppLayout containsAnyItemFromSet:](dropTransitionFromAppLayout, "containsAnyItemFromSet:", v11), v11, v10, v12))
  {
    -[SBAppDragAndDropGestureSwitcherModifier frameForIndex:](&v26, sel_frameForIndex_, [v5 indexOfObject:self->_fullScreenAppLayout], v25.receiver, v25.super_class, self, SBAppDragAndDropGestureSwitcherModifier);
  }

  else
  {
    [(SBAppDragAndDropGestureSwitcherModifier *)&v25 frameForIndex:a3, self, SBAppDragAndDropGestureSwitcherModifier, v26.receiver, v26.super_class];
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

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (self->_fullScreenAppLayout == v6)
  {
    if (self->_gestureEnded)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = [(SBAppLayout *)v6 allItems];
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            if ([(SBAppLayout *)v7 layoutRoleForItem:v14]== a3)
            {
              v15 = [v14 uniqueIdentifier];
              v16 = [v15 isEqualToString:self->_draggedSceneIdentifier];

              if (v16)
              {

                isBlurred = 0;
                goto LABEL_16;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    isBlurred = self->_isBlurred;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBAppDragAndDropGestureSwitcherModifier;
    isBlurred = [(SBAppDragAndDropGestureSwitcherModifier *)&v18 isLayoutRoleBlurred:a3 inAppLayout:v6];
  }

LABEL_16:

  return isBlurred;
}

- (double)backgroundOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBAppDragAndDropGestureSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  result = 0.0;
  if (v6)
  {
    v8.receiver = self;
    v8.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v8 backgroundOpacityForIndex:a3, 0.0];
  }

  return result;
}

- (double)homeScreenDimmingAlpha
{
  v3 = [(SBAppDragAndDropGestureSwitcherModifier *)self windowManagementContext];
  v4 = [v3 isChamoisOrFlexibleWindowing];

  if (v4)
  {
    v10 = self;
    v5 = &v10;
LABEL_6:
    v5[1] = SBAppDragAndDropGestureSwitcherModifier;
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
  if (self->_fullScreenAppLayout == a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBAppDragAndDropGestureSwitcherModifier;
  return [(SBAppDragAndDropGestureSwitcherModifier *)&v6 isResizeGrabberVisibleForAppLayout:?];
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (self->_fullScreenAppLayout != v6 || !self->_dropAction)
  {
    v15.receiver = self;
    v15.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v15 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
    v8 = v7;
    goto LABEL_3;
  }

  v10 = [(SBAppDragAndDropGestureSwitcherModifier *)self medusaSettings];
  [v10 defaultDimmingOpacity];
  v12 = v11;

  v8 = 0.0;
  if (self->_gestureEnded)
  {
    goto LABEL_3;
  }

  dropAction = self->_dropAction;
  switch(dropAction)
  {
    case 3:
      v14 = &SBLayoutRoleSide;
LABEL_12:
      if (*v14 == a3)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0.0;
      }

      break;
    case 2:
      v14 = &SBLayoutRolePrimary;
      goto LABEL_12;
    case 1:
      v8 = v12;
      break;
  }

LABEL_3:

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if (self->_fullScreenAppLayout == v11 && !self->_gestureEnded)
  {
    if ([(SBAppDragAndDropGestureSwitcherModifier *)self _isDraggingLiveWindow]&& !self->_hasPlatterized)
    {
      dropAction = self->_dropAction;
      if (dropAction == 4)
      {
        draggedSceneOriginalLayoutRole = self->_draggedSceneOriginalLayoutRole;
        v64 = &SBLayoutRoleSide;
      }

      else
      {
        if (dropAction != 5)
        {
          goto LABEL_35;
        }

        draggedSceneOriginalLayoutRole = self->_draggedSceneOriginalLayoutRole;
        v64 = &SBLayoutRolePrimary;
      }

      if (draggedSceneOriginalLayoutRole == *v64)
      {
        v87.receiver = self;
        v87.super_class = SBAppDragAndDropGestureSwitcherModifier;
        [(SBAppDragAndDropGestureSwitcherModifier *)&v87 frameForLayoutRole:1 inAppLayout:v11 withBounds:x, y, width, height];
        v30 = v65;
        v32 = v66;
        v34 = v67;
        v36 = v68;
        v86.receiver = self;
        v86.super_class = SBAppDragAndDropGestureSwitcherModifier;
        [(SBAppDragAndDropGestureSwitcherModifier *)&v86 frameForLayoutRole:2 inAppLayout:v11 withBounds:x, y, width, height];
        if (a3 == 1)
        {
          v30 = v30 + v71 + v69 - (v30 + v34);
          goto LABEL_37;
        }

        if (a3 == 2)
        {
          v36 = v72;
          v34 = v71;
          v32 = v70;
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

    if (a3 != 1)
    {
      goto LABEL_35;
    }

    v52 = [(SBAppLayout *)v11 itemForLayoutRole:2];

    if (v52 || (self->_dropAction & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_35;
    }

    v85.receiver = self;
    v85.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v85 frameForLayoutRole:1 inAppLayout:v11 withBounds:x, y, width, height];
    v30 = v53;
    v32 = v54;
    v56 = v55;
    v36 = v57;
    v58 = [(SBAppDragAndDropGestureSwitcherModifier *)self medusaSettings];
    [v58 draggingPlatterSideActivationGutterPadding];

    [(SBAppDragAndDropGestureSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v60 = v59;
    v61 = self->_dropAction;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      if (v61 == 4)
      {
        goto LABEL_40;
      }
    }

    else if (v61 != 4)
    {
LABEL_40:
      v34 = v56 - v60;
      goto LABEL_37;
    }

    v30 = v30 + v60;
    goto LABEL_40;
  }

  if ([(SBAppLayout *)self->_initialFullScreenAppLayout isOrContainsAppLayout:v11]&& !self->_gestureEnded)
  {
    initialFullScreenAppLayout = self->_initialFullScreenAppLayout;
    v38 = [(SBAppLayout *)v11 itemForLayoutRole:1];
    v39 = [(SBAppLayout *)initialFullScreenAppLayout layoutRoleForItem:v38];

    v40 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
    v41 = [v40 indexOfObject:v11];

    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v43 = self->_initialFullScreenAppLayout;
    [(SBAppDragAndDropGestureSwitcherModifier *)self frameForIndex:v42];
    SBRectWithSize();
    v84.receiver = self;
    v84.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v84 frameForLayoutRole:v39 inAppLayout:v43 withBounds:v44, v45, v46, v47];
    goto LABEL_36;
  }

  fullScreenAppLayout = self->_fullScreenAppLayout;
  if (fullScreenAppLayout == v11 || !self->_gestureEnded || (dropTransitionFromAppLayout = self->_dropTransitionFromAppLayout, dropTransitionFromAppLayout == fullScreenAppLayout) || (v14 = MEMORY[0x277CBEB98], -[SBAppLayout allItems](v11, "allItems"), v15 = objc_claimAutoreleasedReturnValue(), [v14 setWithArray:v15], v16 = objc_claimAutoreleasedReturnValue(), v17 = -[SBAppLayout containsAnyItemFromSet:](dropTransitionFromAppLayout, "containsAnyItemFromSet:", v16), v16, v15, v18 = self->_dropTransitionFromAppLayout, v19 = MEMORY[0x277CBEB98], -[SBAppLayout allItems](self->_fullScreenAppLayout, "allItems"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setWithArray:", v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = -[SBAppLayout containsAnyItemFromSet:](v18, "containsAnyItemFromSet:", v21), v21, v20, !v17) || !v22)
  {
LABEL_35:
    v77.receiver = self;
    v77.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v77 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
LABEL_36:
    v30 = v48;
    v32 = v49;
    v34 = v50;
    v36 = v51;
    goto LABEL_37;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v23 = self->_dropTransitionFromAppLayout;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __85__SBAppDragAndDropGestureSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
  v79[3] = &unk_2783B19C0;
  v79[4] = self;
  v79[5] = &v80;
  [(SBAppLayout *)v23 enumerate:v79];
  v24 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v25 = [v24 indexOfObject:v11];

  if (v25 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  v27 = v81[3];
  v28 = self->_dropTransitionFromAppLayout;
  [(SBAppDragAndDropGestureSwitcherModifier *)self frameForIndex:v26];
  SBRectWithSize();
  v78.receiver = self;
  v78.super_class = SBAppDragAndDropGestureSwitcherModifier;
  [(SBAppDragAndDropGestureSwitcherModifier *)&v78 frameForLayoutRole:v27 inAppLayout:v28 withBounds:?];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  _Block_object_dispose(&v80, 8);
LABEL_37:

  v73 = v30;
  v74 = v32;
  v75 = v34;
  v76 = v36;
  result.size.height = v76;
  result.size.width = v75;
  result.origin.y = v74;
  result.origin.x = v73;
  return result;
}

uint64_t __85__SBAppDragAndDropGestureSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(*(a1 + 32) + 168) containsItem:?];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  if (!self->_isResizing)
  {
    return 0;
  }

  v4 = [(SBAppLayout *)self->_fullScreenAppLayout itemForLayoutRole:a3, a4];
  v5 = v4 != 0;

  return v5;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_fullScreenAppLayout && self->_shouldPushInFullScreenContent && !self->_gestureEnded)
  {
    v8 = 0.98;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v10 scaleForIndex:a3];
    v8 = v7;
  }

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBAppDragAndDropGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 environment] == 1)
  {
    [(SBAppDragAndDropGestureSwitcherModifier *)self displayCornerRadius];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBAppDragAndDropGestureSwitcherModifier;
    [(SBAppDragAndDropGestureSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v4 = [(SBGestureSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBAppDragAndDropGestureSwitcherModifier *)self medusaSettings];
  v7 = [v6 resizeAnimationSettings];
  [v5 setLayoutSettings:v7];

  [v5 setUpdateMode:3];

  return v5;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBAppDragAndDropGestureSwitcherModifier;
  v6 = a4;
  v7 = [(SBAppDragAndDropGestureSwitcherModifier *)&v16 resizeProgressNotificationsForLayoutRole:a3 inAppLayout:v6];
  fullScreenAppLayout = self->_fullScreenAppLayout;

  if (fullScreenAppLayout == v6)
  {
    v9 = [(SBAppDragAndDropGestureSwitcherModifier *)self medusaSettings:v16.receiver];
    [v9 dropAnimationUnblurThresholdPercentage];
    v11 = v10;

    v17[0] = &unk_28336F740;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v17[1] = v12;
    v17[2] = &unk_28336F750;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v14 = [v7 setByAddingObjectsFromArray:v13];

    v7 = v14;
  }

  return v7;
}

- (BOOL)_shouldPushInFullScreenContentForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 dropAction];
  if ((v5 - 1) < 5)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  if ((v5 - 6) <= 3)
  {
    if ([v4 isWindowDrag])
    {
      v6 = [v4 hasPlatterized];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:
  if ([(SBAppDragAndDropGestureSwitcherModifier *)self _isDraggingLiveWindow])
  {
    v6 &= self->_hasPreviewLifted;
  }

  v7 = v6 & ~self->_floatingSwitcherVisible;

  return v7 & 1;
}

- (BOOL)_showResizeUI
{
  if (self->_gestureEnded)
  {
    return 0;
  }

  return (self->_dropAction & 0xFFFFFFFFFFFFFFFELL) == 4 && (![(SBAppDragAndDropGestureSwitcherModifier *)self _isDraggingLiveWindow]|| self->_hasPlatterized);
}

- (void)_recomputeBlurStateWithCompletion:(id)a3
{
  v4 = a3;
  isBlurred = self->_isBlurred;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  fullScreenAppLayout = self->_fullScreenAppLayout;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__SBAppDragAndDropGestureSwitcherModifier__recomputeBlurStateWithCompletion___block_invoke;
  v12[3] = &unk_2783B19C0;
  v12[4] = self;
  v12[5] = &v13;
  [(SBAppLayout *)fullScreenAppLayout enumerate:v12];
  if (!self->_gestureEnded)
  {
    if (self->_isBlurred)
    {
      isResizing = self->_isResizing;
      goto LABEL_7;
    }

LABEL_6:
    isResizing = 0;
    goto LABEL_7;
  }

  if (!self->_isBlurred)
  {
    goto LABEL_6;
  }

  isResizing = !self->_hasResizedEnoughToUnblur;
LABEL_7:
  v8 = *(v14 + 24) != 1 || [(SBAppDragAndDropGestureSwitcherModifier *)self _showResizeUI]|| isResizing || self->_needsBlurBecauseFramesWillMismatch;
  v9 = self->_isBlurred;
  if (v9 != v8)
  {
    self->_isBlurred = v8;
    LOBYTE(v9) = v8;
  }

  if (self->_gestureEnded && isBlurred && !v9)
  {
    v10 = objc_alloc_init(SBUpdateDragPlatterBlurSwitcherEventResponse);
    v11 = SBAppendSwitcherModifierResponse(v10, 0);
    if (v4)
    {
      v4[2](v4, v11);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __77__SBAppDragAndDropGestureSwitcherModifier__recomputeBlurStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = [v5[21] leafAppLayoutForRole:a2];
  LOBYTE(a2) = [v5 isLayoutRoleContentReady:a2 inAppLayout:v6];

  if (a2)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 32);
  if (*(v8 + 278) != 1)
  {
    goto LABEL_12;
  }

  v9 = *(v8 + 192);
  if (v9 > 7)
  {
    goto LABEL_8;
  }

  if (((1 << v9) & 0xC) != 0)
  {
    v11 = 276;
    goto LABEL_14;
  }

  if (((1 << v9) & 0x30) == 0)
  {
    if (((1 << v9) & 0xC0) != 0)
    {
LABEL_2:
      v7 = 1;
      goto LABEL_15;
    }

LABEL_8:
    if ((*(v8 + 208) & 1) == 0)
    {
      v10 = [v12 uniqueIdentifier];
      v7 = [v10 isEqualToString:*(*(a1 + 32) + 200)];

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (*(v8 + 208) != 1)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_15;
  }

  v11 = 209;
LABEL_14:
  v7 = *(v8 + v11) ^ 1;
LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) &= v7;
}

- (void)initWithGestureID:(uint64_t)a1 floatingSwitcherVisible:(uint64_t)a2 fullScreenAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppDragAndDropGestureSwitcherModifier.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"fullScreenAppLayout"}];
}

@end