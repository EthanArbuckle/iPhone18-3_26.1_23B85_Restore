@interface SBFullScreenContinuousExposeSwitcherModifier
- (BOOL)_isAppLayoutEffectivelyOnStage:(id)a3;
- (BOOL)_isStripRevealedFromHidden;
- (BOOL)_isStripStashed;
- (BOOL)_shouldEnableItemResizeGrabbersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)_shouldEnableResizingForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)_wantsContinuousExposeHoverGestureForDismissingStrip;
- (BOOL)hasContentIntersectingMenuBarRegion;
- (BOOL)isContainerStatusBarPart:(unint64_t)a3 hiddenByLeafAppLayout:(id)a4;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleSelectable:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)shouldConfigureInAppDockHiddenAssertion;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)wantsContinuousExposeHoverGesture;
- (BOOL)wantsMenuBar;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForSplitViewHandleDimmingView:(id)a3;
- (CGRect)frameForSplitViewHandleNubView:(id)a3;
- (SBFullScreenContinuousExposeSwitcherModifier)initWithFullScreenAppLayout:(id)a3;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)_continuousExposeStripRevealProgress;
- (double)continuousExposeStripProgress;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (id)_responseForDismissingStrip;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleHoverEvent:(id)a3;
- (id)handlePointerCrossedDisplayBoundaryEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTapAppLayoutHeaderEvent:(id)a3;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTapSlideOverTongueEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (int64_t)touchBehaviorForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)footerViewIconAlignmentForAppLayout:(id)a3;
- (unint64_t)hiddenContainerStatusBarParts;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)_resetKeyboardNavigationZOrder;
- (void)_updateStripModifierIfNeeded;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenContinuousExposeSwitcherModifier

- (SBFullScreenContinuousExposeSwitcherModifier)initWithFullScreenAppLayout:(id)a3
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v11 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBFullScreenContinuousExposeSwitcherModifier *)a2 initWithFullScreenAppLayout:v7];
    }

    objc_storeStrong(&v7->_fullScreenAppLayout, a3);
    v7->_handlesTapAppLayoutEvents = 1;
    v7->_handlesTapAppLayoutHeaderEvents = 1;
    v8 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:v6];
    fullScreenAppLayoutModifier = v7->_fullScreenAppLayoutModifier;
    v7->_fullScreenAppLayoutModifier = v8;

    [(SBFullScreenAppLayoutSwitcherModifier *)v7->_fullScreenAppLayoutModifier setHandlesAssistantPresentationEvents:0];
    [(SBChainableModifier *)v7 addChildModifier:v7->_fullScreenAppLayoutModifier atLevel:1 key:0];
  }

  return v7;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  [(SBFullScreenContinuousExposeSwitcherModifier *)self _updateStripModifierIfNeeded];
  v7.receiver = self;
  v7.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBChainableModifier *)&v7 handleEvent:v4];

  return v5;
}

- (void)_updateStripModifierIfNeeded
{
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)self prefersStripHiddenAndDisabled];
  stripModifier = self->_stripModifier;
  if (v3)
  {
    if (stripModifier)
    {
      [(SBWindowingModifier *)stripModifier setState:1];
      v5 = self->_stripModifier;
      self->_stripModifier = 0;
    }
  }

  else if (!stripModifier)
  {
    v6 = objc_alloc_init(SBStripLayoutWindowingModifier);
    v7 = self->_stripModifier;
    self->_stripModifier = v6;

    v8 = self->_stripModifier;

    [(SBChainableModifier *)self addChildModifier:v8 atLevel:0 key:0];
  }
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBFullScreenContinuousExposeSwitcherModifier *)self _resetKeyboardNavigationZOrder];
    [(SBFullScreenContinuousExposeSwitcherModifier *)self _updateStripModifierIfNeeded];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v4 = [(SBChainableModifier *)&v12 descriptionBuilderWithMultilinePrefix:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBFullScreenContinuousExposeSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

id __86__SBFullScreenContinuousExposeSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 160) succinctDescription];
  v4 = [v2 appendObject:v3 withName:@"fullScreenAppLayout"];

  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 152) withName:@"handlesTapAppLayoutEvents"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 153) withName:@"handlesTapAppLayoutHeaderEvents"];
}

- (double)continuousExposeStripProgress
{
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripStashed]&& ![(SBFullScreenContinuousExposeSwitcherModifier *)self prefersStripHidden])
  {
    return 1.0;
  }

  [(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripRevealProgress];
  return result;
}

- (double)_continuousExposeStripRevealProgress
{
  v3.receiver = self;
  v3.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  [(SBFullScreenContinuousExposeSwitcherModifier *)&v3 continuousExposeStripProgress];
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    [(SBFullScreenAppLayoutSwitcherModifier *)self->_fullScreenAppLayoutModifier frameForIndex:a3];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v19 frameForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 0.5;
  v8 = 0.5;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v13 anchorPointForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    fullScreenAppLayoutModifier = [(SBChainableModifier *)self childModifierByKey:@"SBFullScreenContinuousExposeSwitcherModifierAssistantModifierKey"];
    v8 = fullScreenAppLayoutModifier;
    if (!fullScreenAppLayoutModifier)
    {
      fullScreenAppLayoutModifier = self->_fullScreenAppLayoutModifier;
    }

    [fullScreenAppLayoutModifier scaleForIndex:a3];
    v10 = v11;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v13 scaleForIndex:a3];
    v10 = v9;
  }

  return v10;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v9])
  {
    v18.receiver = self;
    v18.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v18 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v7])
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v12 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_fullScreenAppLayout];

  return v4;
}

- (id)appLayoutsToCacheSnapshots
{
  v2 = [(SBFullScreenContinuousExposeSwitcherModifier *)self visibleAppLayouts];
  v3 = [v2 allObjects];

  return v3;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _stageContainsFullScreenItem])
    {
      [(SBFullScreenContinuousExposeSwitcherModifier *)self displayCornerRadius];
    }

    else
    {
      [(SBFullScreenContinuousExposeSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v6];
    }

    [(SBFullScreenContinuousExposeSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
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

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v11])
  {
    [(SBFullScreenContinuousExposeSwitcherModifier *)self displayCornerRadius];
    v13 = v12;
    [(SBFullScreenContinuousExposeSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
    v14 = [v11 itemForLayoutRole:a3];
    SBRectCornerRadiiForRadius();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if (v14)
    {
      v23 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
      v24 = [v23 flexibleAutoLayoutItemForDisplayItem:v14];
      v25 = [v24 intersectedDisplayRectCorners];

      if (v25)
      {
        v16 = v13;
      }

      if ((v25 & 2) != 0)
      {
        v22 = v13;
      }

      if ((v25 & 4) != 0)
      {
        v18 = v13;
      }

      if ((v25 & 8) != 0)
      {
        v20 = v13;
      }
    }
  }

  else
  {
    v34.receiver = self;
    v34.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v34 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v16 = v26;
    v18 = v27;
    v20 = v28;
    v22 = v29;
  }

  v30 = v16;
  v31 = v18;
  v32 = v20;
  v33 = v22;
  result.topRight = v33;
  result.bottomRight = v32;
  result.bottomLeft = v31;
  result.topLeft = v30;
  return result;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _stageContainsFullScreenItem])
    {
      v7 = 0;
    }

    else
    {
      v7 = 15;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v9 maskedCornersForIndex:a3];
  }

  return v7;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v18 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v8])
  {
    v10 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
    v11 = [v10 isFlexibleWindowingEnabled];

    if (v11)
    {
      v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
      v13 = [v8 itemForLayoutRole:a3];
      v14 = [v12 flexibleAutoLayoutItemForDisplayItem:v13];

      v15 = [v14 intersectedDisplayRectCorners];
      v16 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v15 & 1) == 0)
      {
        v16 = v9;
      }

      if ((v15 & 2) != 0)
      {
        v16 &= ~2uLL;
      }

      if ((v15 & 4) != 0)
      {
        v16 &= ~4uLL;
      }

      if ((v15 & 8) != 0)
      {
        v9 = v16 & 0xFFFFFFFFFFFFFFF7;
      }

      else
      {
        v9 = v16;
      }
    }
  }

  return v9;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a4];

  v9 = 1.0;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v8])
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v12 shadowOpacityForLayoutRole:a3 atIndex:a4];
    v9 = v10;
  }

  return v9;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    Empty = SBSwitcherWallpaperGradientAttributesMakeEmpty();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:a3 inAppLayout:v6];
  }

  v9 = Empty;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 0.0;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 0.0;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v10 titleOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (int64_t)touchBehaviorForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  if ([(SBAppLayout *)self->_fullScreenAppLayout containsItem:v7])
  {
    v8 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
    v9 = [v8 flexibleAutoLayoutItemForDisplayItem:v7];

    if (([v9 isFullyOccluded] & 1) != 0 || objc_msgSend(v9, "isOverlapped"))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v10 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v12 touchBehaviorForLayoutRole:a3 inAppLayout:v6];
  }

  return v10;
}

- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutContainsOnlyResizableApps:v5]&& ([(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripRevealProgress], BSFloatIsZero()) && [(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v5];

  return v6;
}

- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _shouldEnableResizingForLayoutRole:a3 inAppLayout:v6])
  {
    v7 = -1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v9 activeCornersForTouchResizeForLayoutRole:a3 inAppLayout:v6];
  }

  return v7;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _shouldEnableItemResizeGrabbersForLayoutRole:a3 inAppLayout:v6])
  {
    v7 = [v6 itemForLayoutRole:a3];
    v8 = [(SBFullScreenContinuousExposeSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v6 ignoreOcclusion:1 ignoreCentering:0];
    v9 = [v8 containsObject:v7];

    v10 = [(SBFullScreenContinuousExposeSwitcherModifier *)self displayItemPrefersStatusBarHidden:v7];
    if (v9 && (v10 & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v12 = 4;
      }

      else
      {
        v12 = 8;
      }

      v13 = [(SBFullScreenContinuousExposeSwitcherModifier *)self displayItemInSlideOver];
      v14 = BSEqualObjects();

      if (v14)
      {
        v15 = [(SBFullScreenContinuousExposeSwitcherModifier *)self layoutAttributesForDisplayItem:v7 inAppLayout:v6];
        [(SBDisplayItemLayoutAttributes *)v15 slideOverConfiguration];
        IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v22);

        if (IsLeftSided)
        {
          v17 = 8;
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v18 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
        v19 = [v18 flexibleAutoLayoutItemForDisplayItem:v7];
        v17 = [v19 ownedDisplayRectCorners] & 0xC;
      }

      if (v17 == 8 || v17 == 4)
      {
        v11 = v17;
      }

      else
      {
        v11 = v12;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6]&& ![(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripRevealedFromHidden])
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v9 shouldAllowContentViewTouchesForLayoutRole:a3 inAppLayout:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isLayoutRoleSelectable:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6]|| [(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripRevealedFromHidden]|| (v10.receiver = self, v10.super_class = SBFullScreenContinuousExposeSwitcherModifier, [(SBFullScreenContinuousExposeSwitcherModifier *)&v10 isLayoutRoleSelectable:a3 inAppLayout:v6]))
  {
    IsOccluded = 1;
  }

  else
  {
    v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:v6];
    IsOccluded = SBOcclusionStateIsOccluded([(SBFullScreenContinuousExposeSwitcherModifier *)self occlusionStateForLayoutRole:a3 inAppLayout:v9]);
  }

  return IsOccluded;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
  v8 = [v6 itemForLayoutRole:a3];

  v9 = [v7 flexibleAutoLayoutItemForDisplayItem:v8];

  if ([v9 isFullyOccluded])
  {
    v10 = 3;
  }

  else if ([v9 isOverlapped])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (int64_t)homeScreenBackdropBlurType
{
  v2 = [(SBFullScreenContinuousExposeSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  if ([v3 blurWallpaperInApps])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (double)homeScreenBackdropBlurProgress
{
  v2 = [(SBFullScreenContinuousExposeSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  if ([v3 blurWallpaperInApps])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (double)homeScreenDimmingAlpha
{
  v3 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  [v3 occupiedAreaPercentage];
  v5 = v4;

  v6 = 1.0;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self switcherSettings];
    v8 = [v7 windowingSettings];
    [v8 maxHomeScreenDimmingAlphaForNonFullscreen];
    v6 = v9;
    v10 = (v5 + -0.7) * 0.5 / 0.3;
    if (v10 <= 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10 + 0.0;
    }

    if (v6 > v11)
    {
      return v11;
    }
  }

  return v6;
}

- (BOOL)wantsMenuBar
{
  v2 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  v3 = [v2 isFlexibleWindowingEnabled];

  return v3;
}

- (BOOL)hasContentIntersectingMenuBarRegion
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutOnStage];
  v4 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  v5 = [v4 isFlexibleWindowingEnabled];

  if (v5 && v3)
  {
    [(SBFullScreenContinuousExposeSwitcherModifier *)self statusBarHeight];
    v6 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v3];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 autoLayoutItems];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          [v12 position];
          [v12 size];
          if (BSFloatGreaterThanFloat())
          {

            v13 = 1;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v13 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v15 hasContentIntersectingMenuBarRegion];
LABEL_14:

  return v13;
}

- (unint64_t)hiddenContainerStatusBarParts
{
  v10.receiver = self;
  v10.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v10 hiddenContainerStatusBarParts];
  v4 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  v5 = [v4 isFlexibleWindowingEnabled];

  if (v5)
  {
    v6 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
    v7 = [v6 ownedDisplayRectCorners];
    v8 = [v6 ownedDisplayRectCorners];
    if (([(SBFullScreenContinuousExposeSwitcherModifier *)self isRTLEnabled]& 1) != 0)
    {
      if ((v7 & 1) == 0)
      {
        if (([(SBFullScreenContinuousExposeSwitcherModifier *)self isRTLEnabled]& 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    v3 |= 8uLL;
LABEL_8:
    if (([(SBFullScreenContinuousExposeSwitcherModifier *)self isRTLEnabled]& 1) == 0)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_9:
    if ((v8 & 2) == 0)
    {
LABEL_11:

      return v3;
    }

LABEL_10:
    v3 |= 2uLL;
    goto LABEL_11;
  }

  return v3;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (-[SBFullScreenContinuousExposeSwitcherModifier _isStripRevealedFromHidden](self, "_isStripRevealedFromHidden") && (-[SBFullScreenContinuousExposeSwitcherModifier windowManagementContext](self, "windowManagementContext"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isFlexibleWindowingEnabled], v7, !v8))
  {
    v9 = 10;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v11 hiddenContentStatusBarPartsForLayoutRole:a3 inAppLayout:v6];
  }

  return v9;
}

- (BOOL)isContainerStatusBarPart:(unint64_t)a3 hiddenByLeafAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v6];
  v8 = [v6 allItems];

  v9 = [v8 firstObject];

  v10 = [v7 flexibleAutoLayoutItemForDisplayItemIfExists:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 ownedDisplayRectCorners];
    if (a3 == 8)
    {
      v16 = [(SBFullScreenContinuousExposeSwitcherModifier *)self isRTLEnabled];
      v14 = -3;
      if (v16)
      {
        v14 = -2;
      }

      goto LABEL_10;
    }

    if (a3 == 2)
    {
      v13 = [(SBFullScreenContinuousExposeSwitcherModifier *)self isRTLEnabled];
      v14 = -3;
      if (!v13)
      {
        v14 = -2;
      }

LABEL_10:
      v15 = (v14 | v12) == -1;
      goto LABEL_11;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)shouldConfigureInAppDockHiddenAssertion
{
  v3 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  v4 = [v3 isDockVisible];
  if (![(SBFullScreenContinuousExposeSwitcherModifier *)self isSoftwareKeyboardVisible])
  {
    if (!v4)
    {
      v5 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = 1;
  if (([(SBFullScreenContinuousExposeSwitcherModifier *)self isMedusaHostedKeyboardVisible]& 1) == 0 && ((v4 ^ 1) & 1) == 0)
  {
LABEL_6:
    v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self prefersDockHidden];
  }

LABEL_8:

  return v5;
}

- (id)appLayoutsToResignActive
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v29 appLayoutsToResignActive];
  v4 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  v5 = [v4 isFlexibleWindowingEnabled];

  if (v5)
  {
    v23 = v3;
    v6 = [(SBFullScreenContinuousExposeSwitcherModifier *)self switcherSettings];
    v7 = [v6 windowingSettings];
    v24 = [v7 resignActivePartiallyOccludedWindows];

    v8 = [MEMORY[0x277CBEB58] set];
    [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutOnStage];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v28 = 0u;
    v9 = [v22 leafAppLayouts];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v14];
          v16 = [v14 allItems];
          v17 = [v16 firstObject];

          v18 = [v15 flexibleAutoLayoutItemForDisplayItem:v17];
          if (([v18 isFullyOccluded] & 1) != 0 || v24 && objc_msgSend(v18, "isOverlapped"))
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:&unk_283370BE0];
    v20 = [v19 bs_dictionaryByAddingEntriesFromDictionary:v23];

    v3 = v20;
  }

  return v3;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  if (a3 == 4)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  return [(SBFullScreenContinuousExposeSwitcherModifier *)&v7 isLayoutRoleMatchMovedToScene:a3 inAppLayout:a4];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    [(SBFullScreenContinuousExposeSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (unint64_t)footerViewIconAlignmentForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || ([(SBFullScreenContinuousExposeSwitcherModifier *)self perspectiveAngleForIndex:v6], !BSFloatIsZero()))
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v9 footerViewIconAlignmentForAppLayout:v4];
  }

  return v7;
}

- (id)topMostLayoutElements
{
  v30.receiver = self;
  v30.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v30 topMostLayoutElements];
  v4 = [v3 mutableCopy];

  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self visibleSplitViewHandleNubViews];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__SBFullScreenContinuousExposeSwitcherModifier_topMostLayoutElements__block_invoke;
  v28[3] = &unk_2783B5470;
  v6 = v4;
  v29 = v6;
  [v5 enumerateObjectsUsingBlock:v28];

  v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self visibleSplitViewHandleDimmingViews];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __69__SBFullScreenContinuousExposeSwitcherModifier_topMostLayoutElements__block_invoke_2;
  v26 = &unk_2783B5498;
  v8 = v6;
  v27 = v8;
  [v7 enumerateObjectsUsingBlock:&v23];

  v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext:v23];
  LOBYTE(v7) = [v9 isFlexibleWindowingEnabled];

  if (v7)
  {
    if ((-[SBFullScreenContinuousExposeSwitcherModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") & 1) != 0 || (-[SBSwitcherModifier flexibleAutoLayoutSpaceForAppLayout:](self, "flexibleAutoLayoutSpaceForAppLayout:", self->_fullScreenAppLayout), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isStripVisible], v10, v11))
    {
      fullScreenAppLayout = self->_fullScreenAppLayout;
      v13 = self;
      v14 = v8;
      v15 = 1;
    }

    else
    {
      fullScreenAppLayout = self->_fullScreenAppLayout;
      v13 = self;
      v14 = v8;
      v15 = 0;
    }

    v16 = [(SBSwitcherModifier *)v13 topMostLayoutElementsByAddingAppLayoutAndAccessories:fullScreenAppLayout toTopMostLayoutElements:v14 orderFront:v15];
  }

  else
  {
    v16 = [v8 sb_arrayByInsertingOrMovingObject:self->_fullScreenAppLayout toIndex:0];
  }

  v17 = [v16 mutableCopy];

  v18 = [(SBFullScreenContinuousExposeSwitcherModifier *)self continuousExposeStripTongueBackdropCaptureLayoutElement];
  if (v18)
  {
    [v17 removeObject:self->_fullScreenAppLayout];
    [v17 insertObject:v18 atIndex:0];
    v19 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:self->_fullScreenAppLayout toTopMostLayoutElements:v17 orderFront:1];
    v20 = [v19 mutableCopy];

    v17 = v20;
  }

  v21 = [(SBFullScreenContinuousExposeSwitcherModifier *)self slideOverTongueLayoutElement];
  if (v21)
  {
    [v17 insertObject:v21 atIndex:0];
  }

  return v17;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  if (![a3 isEqual:self->_fullScreenAppLayout] || !-[SBFullScreenContinuousExposeSwitcherModifier _stageContainsFullScreenItem](self, "_stageContainsFullScreenItem") || !-[SBFullScreenContinuousExposeSwitcherModifier isDisplayEmbedded](self, "isDisplayEmbedded"))
  {
    return 0;
  }

  v4 = [(SBFullScreenContinuousExposeSwitcherModifier *)self homeGrabberSettings];
  v5 = [v4 isEnabled];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self isHomeAffordanceSupportedForAppLayout:self->_fullScreenAppLayout])
  {
    [MEMORY[0x277CBEB98] setWithObject:self->_fullScreenAppLayout];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenContinuousExposeSwitcherModifier;
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [(SBFullScreenContinuousExposeSwitcherModifier *)v4 _isAppLayoutEffectivelyOnStage:v6];
  return v4 ^ 1;
}

- (id)visibleSplitViewHandleNubViews
{
  v2 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  v3 = [v2 groups];
  v4 = [v3 bs_map:&__block_literal_global_147];

  return v4;
}

SBSwitcherSplitViewHandleNubElement *__78__SBFullScreenContinuousExposeSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SBSwitcherSplitViewHandleNubElement alloc];
  v4 = [v2 displayItemsInGroup];

  v5 = [(SBSwitcherSplitViewHandleNubElement *)v3 initWithDisplayItems:v4];

  return v5;
}

- (id)visibleSplitViewHandleDimmingViews
{
  v2 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  v3 = [v2 groups];
  v4 = [v3 bs_map:&__block_literal_global_96_0];

  return v4;
}

SBSwitcherSplitViewHandleDimmingElement *__82__SBFullScreenContinuousExposeSwitcherModifier_visibleSplitViewHandleDimmingViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SBSwitcherSplitViewHandleDimmingElement alloc];
  v4 = [v2 displayItemsInGroup];

  v5 = [(SBSwitcherSplitViewHandleDimmingElement *)v3 initWithDisplayItems:v4];

  return v5;
}

- (CGRect)frameForSplitViewHandleNubView:(id)a3
{
  v8 = a3;
  v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)self visibleSplitViewHandleNubViews];
  v10 = [v9 containsObject:v8];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v8 displayItems];
  v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  v13 = [v12 groups];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__SBFullScreenContinuousExposeSwitcherModifier_frameForSplitViewHandleNubView___block_invoke;
  v27[3] = &unk_2783B54E0;
  v28 = v11;
  v14 = v11;
  v15 = [v13 bs_firstObjectPassingTest:v27];

  if (v15)
  {
    [v15 resizeGrabberPosition];
    v17 = v16;
    v19 = v18;
    [v15 intersectionHeight];
    v3 = v20;
    v21 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v21 splitViewHandleNubWidth];
    v4 = v22;

    v5 = v17 - v4 * 0.5;
    v6 = v19 - v3 * 0.5;
  }

  if (!v15)
  {
LABEL_5:
    v5 = *MEMORY[0x277CBF398];
    v6 = *(MEMORY[0x277CBF398] + 8);
    v4 = *(MEMORY[0x277CBF398] + 16);
    v3 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v5;
  v24 = v6;
  v25 = v4;
  v26 = v3;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

uint64_t __79__SBFullScreenContinuousExposeSwitcherModifier_frameForSplitViewHandleNubView___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayItemsInGroup];
  v3 = BSEqualArrays();

  return v3;
}

- (CGRect)frameForSplitViewHandleDimmingView:(id)a3
{
  v8 = a3;
  v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)self visibleSplitViewHandleDimmingViews];
  v10 = [v9 containsObject:v8];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v8 displayItems];
  v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_fullScreenAppLayout];
  v13 = [v12 groups];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __83__SBFullScreenContinuousExposeSwitcherModifier_frameForSplitViewHandleDimmingView___block_invoke;
  v27[3] = &unk_2783B54E0;
  v28 = v11;
  v14 = v11;
  v15 = [v13 bs_firstObjectPassingTest:v27];

  if (v15)
  {
    [v15 resizeGrabberPosition];
    v17 = v16;
    v19 = v18;
    [v15 intersectionHeight];
    v3 = v20;
    v21 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v21 splitViewHandleDimmingWidth];
    v4 = v22;

    v5 = v17 - v4 * 0.5;
    v6 = v19 - v3 * 0.5;
  }

  if (!v15)
  {
LABEL_5:
    v5 = *MEMORY[0x277CBF398];
    v6 = *(MEMORY[0x277CBF398] + 8);
    v4 = *(MEMORY[0x277CBF398] + 16);
    v3 = *(MEMORY[0x277CBF398] + 24);
  }

  v23 = v5;
  v24 = v6;
  v25 = v4;
  v26 = v3;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

uint64_t __83__SBFullScreenContinuousExposeSwitcherModifier_frameForSplitViewHandleDimmingView___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 displayItemsInGroup];
  v3 = BSEqualArrays();

  return v3;
}

- (BOOL)wantsContinuousExposeHoverGesture
{
  v5.receiver = self;
  v5.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)&v5 wantsContinuousExposeHoverGesture];
  return v3 | [(SBFullScreenContinuousExposeSwitcherModifier *)self _wantsContinuousExposeHoverGestureForDismissingStrip];
}

- (BOOL)_wantsContinuousExposeHoverGestureForDismissingStrip
{
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  if ([v3 isFlexibleWindowingEnabled] && -[SBFullScreenContinuousExposeSwitcherModifier lastTouchTypeForPresentingStrip](self, "lastTouchTypeForPresentingStrip") != 2)
  {
    v4 = 0;
  }

  else
  {
    [(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripRevealProgress];
    v4 = BSFloatGreaterThanFloat();
  }

  return v4;
}

- (id)_responseForDismissingStrip
{
  v3 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
  v4 = [SBTimerEventSwitcherEventResponse alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBFullScreenContinuousExposeSwitcherModifier__responseForDismissingStrip__block_invoke;
  v7[3] = &unk_2783ACE58;
  v7[4] = self;
  v5 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:v7 validator:@"SBBeginAnimatedStripDismissalReason" reason:0.0];
  [(SBChainableModifierEventResponse *)v3 addChildResponse:v5];

  return v3;
}

uint64_t __75__SBFullScreenContinuousExposeSwitcherModifier__responseForDismissingStrip__block_invoke(uint64_t a1)
{
  [*(a1 + 32) continuousExposeStripProgress];

  return BSFloatIsZero();
}

- (id)handleHoverEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v10 handleHoverEvent:v4];
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _wantsContinuousExposeHoverGestureForDismissingStrip])
  {
    [v4 position];
    v6 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v6 stripWidth];
    if (BSFloatGreaterThanFloat())
    {
      [(SBFullScreenContinuousExposeSwitcherModifier *)self containerViewBounds];
      [v6 stripWidth];
      if (BSFloatLessThanFloat())
      {
        v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self _responseForDismissingStrip];
        v8 = SBAppendSwitcherModifierResponse(v7, v5);

        v5 = v8;
      }
    }
  }

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v19 handleTapAppLayoutEvent:v4];
  if (self->_handlesTapAppLayoutEvents && ([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 appLayout];
    if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6])
    {
      if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripRevealedFromHidden])
      {
        v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self _responseForDismissingStrip];
        v8 = SBAppendSwitcherModifierResponse(v7, v5);

        v9 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:self->_fullScreenAppLayout];
        v5 = v8;
      }

      else
      {
        v13 = [v6 itemForLayoutRole:{objc_msgSend(v4, "layoutRole")}];
        v9 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v14 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:v6];
        v15 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutByBringingItemToFront:v13 inAppLayout:v14];
        [(SBSwitcherTransitionRequest *)v9 setAppLayout:v15];

        [(SBSwitcherTransitionRequest *)v9 setActivatingDisplayItem:v13];
        if ([v4 source] == 1)
        {
          [(SBSwitcherTransitionRequest *)v9 setSource:51];
        }
      }
    }

    else
    {
      v9 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      [(SBSwitcherTransitionRequest *)v9 setAppLayout:v6];
      if (([v4 modifierFlags] & 0x20000) != 0)
      {
        [(SBSwitcherTransitionRequest *)v9 setEntityInsertionPolicy:1];
      }

      v10 = [v6 continuousExposeIdentifier];
      v11 = [(SBAppLayout *)self->_fullScreenAppLayout continuousExposeIdentifier];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        [(SBSwitcherTransitionRequest *)v9 setSource:63];
      }
    }

    v16 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v9 gestureInitiated:0];
    v17 = SBAppendSwitcherModifierResponse(v16, v5);

    [v4 handleWithReason:@"Full Screen Continuous Expose"];
    v5 = v17;
  }

  return v5;
}

- (id)handleTapAppLayoutHeaderEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v14 handleTapAppLayoutHeaderEvent:v4];
  if (self->_handlesTapAppLayoutHeaderEvents && ([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 appLayout];
    v7 = [v6 itemForLayoutRole:{objc_msgSend(v4, "layoutRole")}];

    if ([(SBFullScreenContinuousExposeSwitcherModifier *)self displayItemSupportsMultipleWindowsIndicator:v7])
    {
      v8 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      [(SBSwitcherTransitionRequest *)v8 setSource:3];
      v9 = [v7 bundleIdentifier];
      [(SBSwitcherTransitionRequest *)v8 setBundleIdentifierForAppExpose:v9];

      v10 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v8 gestureInitiated:0];
    }

    else
    {
      v8 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:v7];
      v10 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v8 level:3];
    }

    v11 = v10;
    v12 = SBAppendSwitcherModifierResponse(v10, v5);

    [v4 handleWithReason:@"Full Screen Continuous Expose"];
    v5 = v12;
  }

  return v5;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v17 handleTapOutsideToDismissEvent:v4];
  v6 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripRevealedFromHidden])
  {
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self _responseForDismissingStrip];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v9 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:self->_fullScreenAppLayout];
    v5 = v8;
LABEL_3:
    v10 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v9 gestureInitiated:0];
    v11 = SBAppendSwitcherModifierResponse(v10, v5);

    v5 = v11;
    goto LABEL_10;
  }

  if ([v4 isPointerTouch])
  {
    v12 = [(SBFullScreenContinuousExposeSwitcherModifier *)self switcherSettings];
    v13 = [v12 windowingSettings];
    v14 = [v13 tapWallpaperToGoHome];

    if (v14)
    {
      v15 = +[SBAppLayout homeScreenAppLayout];
      v9 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v15];

      goto LABEL_3;
    }

    if ([v6 isFlexibleWindowingEnabled] && -[SBFullScreenContinuousExposeSwitcherModifier isDisplayEmbedded](self, "isDisplayEmbedded"))
    {
      v9 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      [(SBSwitcherTransitionRequest *)v9 setPeekConfiguration:2];
      [(SBSwitcherTransitionRequest *)v9 setAppLayout:self->_fullScreenAppLayout];
      [(SBSwitcherTransitionRequest *)v9 setUnlockedEnvironmentMode:1];
      goto LABEL_3;
    }
  }

LABEL_10:

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v63 handleTransitionEvent:v4];
  v6 = [v4 fromAppLayout];
  v7 = [v4 toAppLayout];
  v8 = [v4 fromDisplayItemLayoutAttributesMap];
  v9 = [v4 toDisplayItemLayoutAttributesMap];
  if ([v4 phase] == 2)
  {
    v10 = [v7 allItems];
    if ([v10 count] <= 2)
    {
    }

    else
    {
      v11 = [v6 isEqual:v7];

      if (v11)
      {
        if ([v4 isKeyboardShortcutInitiated])
        {
          v56 = v6;
          v12 = [v8 allKeys];
          v13 = SBDisplayItemDescendingInteractionTimeComparator(v8);
          v14 = [v12 sortedArrayUsingComparator:v13];

          v15 = [v9 allKeys];
          v16 = SBDisplayItemDescendingInteractionTimeComparator(v9);
          v17 = [v15 sortedArrayUsingComparator:v16];

          v18 = v17;
          v19 = [v14 firstObject];
          v20 = [v17 firstObject];
          if (([(SBDisplayItem *)v19 isEqualToItem:v20]& 1) != 0)
          {

LABEL_12:
            v6 = v56;
            goto LABEL_15;
          }

          v54 = v18;
          v55 = v14;
          zOrderedLeafAppLayoutsForKeyboardNavigation = self->_zOrderedLeafAppLayoutsForKeyboardNavigation;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __70__SBFullScreenContinuousExposeSwitcherModifier_handleTransitionEvent___block_invoke;
          v61[3] = &unk_2783AE1A0;
          v53 = v19;
          v62 = v53;
          v22 = [(NSArray *)zOrderedLeafAppLayoutsForKeyboardNavigation indexOfObjectPassingTest:v61];
          v23 = (v22 + 1) % [(NSArray *)self->_zOrderedLeafAppLayoutsForKeyboardNavigation count];
          if (v22 <= 0)
          {
            v22 = [(NSArray *)self->_zOrderedLeafAppLayoutsForKeyboardNavigation count];
          }

          v24 = [(NSArray *)self->_zOrderedLeafAppLayoutsForKeyboardNavigation objectAtIndex:v23];
          if ([v24 containsItem:v20])
          {

            goto LABEL_12;
          }

          v25 = [(NSArray *)self->_zOrderedLeafAppLayoutsForKeyboardNavigation objectAtIndex:v22 - 1];
          v26 = [v25 containsItem:v20];

          v6 = v56;
          if (v26)
          {
            goto LABEL_15;
          }
        }

        [(SBFullScreenContinuousExposeSwitcherModifier *)self _resetKeyboardNavigationZOrder];
      }
    }
  }

LABEL_15:
  if ([v4 phase] == 2 && objc_msgSend(v4, "toEnvironmentMode") != 3)
  {
    v27 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
    v28 = SBAppendSwitcherModifierResponse(v27, v5);

    v5 = v28;
  }

  if ([v4 phase] == 1)
  {
    v29 = [(SBFullScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
    v30 = [v29 isFlexibleWindowingEnabled];

    if (v30 && ([v9 allKeys], v57 = v6, v31 = objc_claimAutoreleasedReturnValue(), v58[0] = MEMORY[0x277D85DD0], v58[1] = 3221225472, v58[2] = __70__SBFullScreenContinuousExposeSwitcherModifier_handleTransitionEvent___block_invoke_2, v58[3] = &unk_2783AF5D8, v32 = v8, v59 = v32, v33 = v9, v60 = v33, objc_msgSend(v31, "bs_firstObjectPassingTest:", v58), v34 = objc_claimAutoreleasedReturnValue(), v31, v6 = v57, v60, v59, v34))
    {
      if (os_variant_has_internal_content())
      {
        v35 = [(SBUpdateMenuBarVisibilitySwitcherEventResponse *)v34 bundleIdentifier];
        v36 = [v35 isEqualToString:@"com.apple.purplebuddy"];

        v6 = v57;
        if (v36)
        {
          v37 = SBLogMenuBar();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v51 = [v32 objectForKey:v34];
            v52 = [v33 objectForKey:v34];
            *buf = 138412546;
            v65 = v51;
            v66 = 2112;
            v67 = v52;
            _os_log_error_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_ERROR, "asked to peek menu bar for Buddy, had fromAttributes %@, to %@", buf, 0x16u);
          }

          v6 = v57;
        }
      }

      v38 = objc_alloc_init(SBPeekMenuBarSwitcherEventResponse);
      v39 = SBAppendSwitcherModifierResponse(v38, v5);

      v40 = 0;
      v5 = v38;
    }

    else
    {
      v34 = objc_alloc_init(SBUpdateMenuBarVisibilitySwitcherEventResponse);
      v39 = SBAppendSwitcherModifierResponse(v34, v5);
      v40 = 1;
    }

    v5 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = [v4 phase];
  if ((v40 & 1) == 0 && v41 == 3)
  {
    v42 = [v9 allKeys];
    v43 = SBDisplayItemDescendingInteractionTimeComparator(v9);
    v44 = [v42 sortedArrayUsingComparator:v43];

    v45 = [v44 firstObject];
    v46 = [v8 allKeys];
    v47 = [v46 containsObject:v45];

    if ((v47 & 1) == 0)
    {
      v48 = objc_alloc_init(SBUpdateMenuBarVisibilitySwitcherEventResponse);
      v49 = SBAppendSwitcherModifierResponse(v48, v5);

      v5 = v49;
    }
  }

  return v5;
}

BOOL __70__SBFullScreenContinuousExposeSwitcherModifier_handleTransitionEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if (v4)
  {
    v5 = [*(a1 + 40) objectForKey:v3];
    v6 = [(SBHomeScreenConfigurationServer *)v5 connections]== 2 && [(SBHomeScreenConfigurationServer *)v4 connections]!= 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handlePointerCrossedDisplayBoundaryEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handlePointerCrossedDisplayBoundaryEvent:v4];
  if (([(SBFullScreenContinuousExposeSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) == 0)
  {
    v6 = [v4 edge];
    if (v6 == [(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripEdge])
    {
      [(SBFullScreenContinuousExposeSwitcherModifier *)self continuousExposeStripProgress];
      if (BSFloatIsZero())
      {
        v7 = [v4 direction];
        if (v7 == 1 || ![v4 direction])
        {
          v8 = [[SBPresentContinuousExposeStripEdgeProtectGrabberEventResponse alloc] initForInitialPresentation:v7 == 1];
          v9 = SBAppendSwitcherModifierResponse(v8, v5);

          v5 = v9;
        }
      }
    }
  }

  return v5;
}

- (id)handleTapSlideOverTongueEvent:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SBFullScreenContinuousExposeSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v21 handleTapSlideOverTongueEvent:a3];
  v5 = [(SBFullScreenContinuousExposeSwitcherModifier *)self displayItemInSlideOver];
  if (v5)
  {
    v6 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByInsertingItem:v5];
    v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutByBringingItemToFront:v5 inAppLayout:v6];

    v8 = [(SBFullScreenContinuousExposeSwitcherModifier *)self layoutAttributesForDisplayItem:v5 inAppLayout:v7];
    v9 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v7];
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    [(SBDisplayItemLayoutAttributes *)v8 slideOverConfiguration];
    BYTE1(v20) = 0;
    v15 = v18;
    v16 = v19;
    v17 = v20;
    v10 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v8];

    v22 = v5;
    v23[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:{1, v15, v16, v17}];
    [v9 setDisplayItemLayoutAttributesMap:v11];

    [v9 setSource:60];
    v12 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v9 gestureInitiated:0];
    v13 = SBAppendSwitcherModifierResponse(v12, v4);

    v4 = v13;
  }

  return v4;
}

- (BOOL)_isStripStashed
{
  v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutOnStage];
  v4 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v3];

  LOBYTE(v3) = [v4 isStripVisible];
  return v3 ^ 1;
}

- (BOOL)_shouldEnableItemResizeGrabbersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [(SBFullScreenContinuousExposeSwitcherModifier *)self _shouldEnableResizingForLayoutRole:a3 inAppLayout:v6];
  v8 = [v6 itemForLayoutRole:a3];

  if (v7)
  {
    v9 = [(SBFullScreenContinuousExposeSwitcherModifier *)self lastInteractedItemsInAppLayout:self->_fullScreenAppLayout];
    v10 = [v9 firstObject];
    if (BSEqualObjects())
    {
      v11 = 1;
    }

    else
    {
      v12 = [(SBFullScreenContinuousExposeSwitcherModifier *)self displayItemInSlideOver];
      v11 = BSEqualObjects();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldEnableResizingForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  [(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripRevealProgress];
  v7 = ((BSFloatIsZero() & 1) != 0 || ![(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripStashed]) && [(SBFullScreenContinuousExposeSwitcherModifier *)self isDisplayEmbedded]&& [(SBFullScreenContinuousExposeSwitcherModifier *)self _isAppLayoutEffectivelyOnStage:v6]&& [(SBFullScreenContinuousExposeSwitcherModifier *)self appLayoutContainsOnlyResizableApps:v6]&& SBLayoutRoleIsValidForSplitView(a3) && [(SBFullScreenContinuousExposeSwitcherModifier *)self occlusionStateForLayoutRole:a3 inAppLayout:v6]!= 3;

  return v7;
}

- (BOOL)_isAppLayoutEffectivelyOnStage:(id)a3
{
  v4 = a3;
  if ([(SBAppLayout *)self->_fullScreenAppLayout containsAllItemsFromAppLayout:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 containsAllItemsFromAppLayout:self->_fullScreenAppLayout];
  }

  return v5;
}

- (BOOL)_isStripRevealedFromHidden
{
  if ([(SBFullScreenContinuousExposeSwitcherModifier *)self _isStripStashed]|| (v3 = [(SBFullScreenContinuousExposeSwitcherModifier *)self prefersStripHidden]) != 0)
  {
    [(SBFullScreenContinuousExposeSwitcherModifier *)self _continuousExposeStripRevealProgress];

    LOBYTE(v3) = BSFloatGreaterThanFloat();
  }

  return v3;
}

- (void)_resetKeyboardNavigationZOrder
{
  v8 = [(SBFullScreenContinuousExposeSwitcherModifier *)self layoutAttributesMapForAppLayout:self->_fullScreenAppLayout];
  v3 = [v8 allKeys];
  v4 = SBDisplayItemDescendingInteractionTimeComparator(v8);
  v5 = [v3 sortedArrayUsingComparator:v4];

  v6 = [(SBAppLayout *)self->_fullScreenAppLayout leafAppLayoutsFromDisplayItems:v5];
  zOrderedLeafAppLayoutsForKeyboardNavigation = self->_zOrderedLeafAppLayoutsForKeyboardNavigation;
  self->_zOrderedLeafAppLayoutsForKeyboardNavigation = v6;
}

- (void)initWithFullScreenAppLayout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenContinuousExposeSwitcherModifier.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end