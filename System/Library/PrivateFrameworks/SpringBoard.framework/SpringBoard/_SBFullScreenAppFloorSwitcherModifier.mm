@interface _SBFullScreenAppFloorSwitcherModifier
- (BOOL)_isLayoutRoleBehindCenterWindow:(int64_t)window appLayout:(id)layout;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (BOOL)isLayoutRoleSelectable:(int64_t)selectable inAppLayout:(id)layout;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout;
- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (CGRect)frameForAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (_SBFullScreenAppFloorSwitcherModifier)initWithActiveAppLayout:(id)layout homeAffordanceReuseIdentifier:(id)identifier;
- (char)activityModeForAppLayout:(id)layout;
- (char)jetsamModeForAppLayout:(id)layout;
- (double)backgroundOpacityForIndex:(unint64_t)index;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)handleSwitcherShortcutActionEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (id)topMostLayoutElements;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout;
- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout;
- (int64_t)touchBehaviorForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)wallpaperStyle;
- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)transactionCompletionOptions;
@end

@implementation _SBFullScreenAppFloorSwitcherModifier

- (id)topMostLayoutElements
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutsContainedWithinAppLayout:self->_activeAppLayout];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        activeAppLayout = self->_activeAppLayout;
        if (v8 == activeAppLayout)
        {
          v12 = v3;
          v13 = self->_activeAppLayout;
        }

        else
        {
          v10 = [*(*(&v16 + 1) + 8 * i) itemForLayoutRole:1];
          v11 = [(SBAppLayout *)activeAppLayout layoutRoleForItem:v10];

          v12 = v3;
          v13 = v8;
          if (v11 == 4)
          {
            [v3 insertObject:v8 atIndex:0];
            continue;
          }
        }

        [v12 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

- (unint64_t)transactionCompletionOptions
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(_SBFullScreenAppFloorSwitcherModifier *)self isReduceMotionEnabled];

    if (isReduceMotionEnabled)
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 6;
  }
}

- (CGRect)shelfBackgroundBlurFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)wallpaperScale
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings wallpaperScaleInApplication];
  v5 = v4;

  return v5;
}

- (double)homeScreenScale
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenScaleInApplication];
  v5 = v4;

  return v5;
}

- (double)homeScreenAlpha
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenOpacityInApplication];
  v5 = v4;

  return v5;
}

- (double)homeScreenDimmingAlpha
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings dimmingAlphaInApplication];
  v5 = v4;

  return v5;
}

- (double)homeScreenBackdropBlurProgress
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings homeScreenBlurInApplication];
  v5 = v4;

  return v5;
}

- (int64_t)wallpaperStyle
{
  if ([(SBAppLayout *)self->_activeAppLayout type])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (_SBFullScreenAppFloorSwitcherModifier)initWithActiveAppLayout:(id)layout homeAffordanceReuseIdentifier:(id)identifier
{
  layoutCopy = layout;
  identifierCopy = identifier;
  if (!layoutCopy)
  {
    [_SBFullScreenAppFloorSwitcherModifier initWithActiveAppLayout:a2 homeAffordanceReuseIdentifier:self];
  }

  v15.receiver = self;
  v15.super_class = _SBFullScreenAppFloorSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_activeAppLayout, layout);
    objc_storeStrong(&v11->_homeAffordanceReuseIdentifier, identifier);
    v12 = objc_alloc_init(SBDisplayItemLayoutGrid);
    layoutGrid = v11->_layoutGrid;
    v11->_layoutGrid = v12;
  }

  return v11;
}

- (CGRect)frameForAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    v7 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    [v7 boundingBox];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
    v16 = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __59___SBFullScreenAppFloorSwitcherModifier_frameForAppLayout___block_invoke;
    v38[3] = &unk_2783A8C90;
    v17 = v16;
    v39 = v17;
    v18 = [v17 appLayoutWithItemsPassingTest:v38];
    allItems = [layoutCopy allItems];
    v20 = [allItems count];

    if (v20 == 1 && v18 != layoutCopy)
    {
      v21 = [layoutCopy itemForLayoutRole:1];
      v22 = [v17 layoutRoleForItem:v21];
      [(_SBFullScreenAppFloorSwitcherModifier *)self containerViewBounds];
      v37.receiver = self;
      v37.super_class = _SBFullScreenAppFloorSwitcherModifier;
      [(_SBFullScreenAppFloorSwitcherModifier *)&v37 frameForLayoutRole:v22 inAppLayout:v17 withBounds:?];
      v9 = v23;
      v11 = v24;
      v13 = v25;
      v15 = v26;
    }

    v40.origin.x = v9;
    v40.origin.y = v11;
    v40.size.width = v13;
    v40.size.height = v15;
    if (CGRectIsNull(v40))
    {
      if ([layoutCopy environment] == 3)
      {
        [(_SBFullScreenAppFloorSwitcherModifier *)self centerWindowFrameInInterfaceOrientation:[(_SBFullScreenAppFloorSwitcherModifier *)self switcherInterfaceOrientation] centerConfiguration:1];
        v13 = v27;
        v15 = v28;
        v9 = *MEMORY[0x277CBF348];
        v11 = *(MEMORY[0x277CBF348] + 8);
      }

      else
      {
        [(_SBFullScreenAppFloorSwitcherModifier *)self containerViewBounds];
        v9 = v29;
        v11 = v30;
        v13 = v31;
        v15 = v32;
      }
    }
  }

  v33 = v9;
  v34 = v11;
  v35 = v13;
  v36 = v15;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  eventCopy = event;
  v21.receiver = self;
  v21.super_class = _SBFullScreenAppFloorSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v21 handleTapAppLayoutEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (([eventCopy isHandled] & 1) == 0 && objc_msgSend(appLayout, "isEqual:", self->_activeAppLayout))
  {
    v9 = [appLayout leafAppLayoutForRole:4];
    if (v9 && [eventCopy layoutRole] != 4)
    {
      v10 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __65___SBFullScreenAppFloorSwitcherModifier_handleTapAppLayoutEvent___block_invoke;
      v19[3] = &unk_2783A8C90;
      v13 = v9;
      v20 = v13;
      v14 = [appLayout appLayoutWithItemsPassingTest:v19];
      [v10 setAppLayout:v14];

      if ((isChamoisOrFlexibleWindowing & 1) == 0)
      {
        v15 = [(SBPerformTransitionSwitcherEventResponse *)v13 itemForLayoutRole:1];
        bundleIdentifier = [v15 bundleIdentifier];
        [v10 setBundleIdentifierForAppExpose:bundleIdentifier];
      }

      v17 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
      v12 = SBAppendSwitcherModifierResponse(v17, v5);

      v11 = v20;
    }

    else
    {
      if ((isChamoisOrFlexibleWindowing & 1) != 0 || [eventCopy source] != 1)
      {
        goto LABEL_12;
      }

      v10 = [SBSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy];
      v11 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
      v12 = SBAppendSwitcherModifierResponse(v11, v5);
    }

    v5 = v12;
LABEL_12:
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v36 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    v7 = [layoutsCopy bs_filter:&__block_literal_global_150];
    goto LABEL_22;
  }

  v7 = layoutsCopy;
  displayItemInSlideOver = [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemInSlideOver];
  v9 = displayItemInSlideOver;
  if (displayItemInSlideOver)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73___SBFullScreenAppFloorSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v33[3] = &unk_2783A8CB8;
    v10 = displayItemInSlideOver;
    v34 = v10;
    v11 = [v7 bs_firstObjectPassingTest:v33];
    allItems = [v11 allItems];
    if ([allItems count] >= 2)
    {
      v27 = v11;
      v13 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:v10 inAppLayout:v11];
      [(SBDisplayItemLayoutAttributes *)v13 slideOverConfiguration];
      v14 = v32[33];

      if (v14 != 1)
      {
        v11 = v27;
        goto LABEL_20;
      }

      v26 = v9;
      v15 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      allItems = v7;
      v16 = [allItems countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(allItems);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            if ([v20 containsItem:{v10, v26}] && (objc_msgSend(v20, "allItems"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22 != 1))
            {
              v23 = [v20 leafAppLayoutForItem:v10];
              v24 = [v20 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v20, "layoutRoleForItem:", v10)}];
              [v15 addObject:v23];
              [v15 addObject:v24];
            }

            else
            {
              [v15 addObject:v20];
            }
          }

          v17 = [allItems countByEnumeratingWithState:&v28 objects:v35 count:16];
        }

        while (v17);
      }

      v7 = v15;
      v9 = v26;
      v11 = v27;
    }

LABEL_20:
  }

LABEL_22:

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(_SBFullScreenAppFloorSwitcherModifier *)self frameForAppLayout:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  homeGrabberSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout
{
  v4 = [layout itemForLayoutRole:2];
  if (v4)
  {
    windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
    v6 = [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(_SBFullScreenAppFloorSwitcherModifier *)self displayOrdinal])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SBFullScreenAppFloorSwitcherModifier;
    v7 = [(_SBFullScreenAppFloorSwitcherModifier *)&v9 activeCornersForTouchResizeForLayoutRole:role inAppLayout:layoutCopy];
  }

  return v7;
}

- (CGRect)frameForShelf:(id)shelf
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  layoutSettings = [animationSettings layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:layoutSettings];

  opacitySettings = [animationSettings opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:opacitySettings];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(_SBFullScreenAppFloorSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (double)backgroundOpacityForIndex:(unint64_t)index
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  v5 = [appLayouts objectAtIndex:index];

  v6 = 0.0;
  if ([v5 environment] != 3)
  {
    if ([v5 isSplitConfiguration])
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  return v6;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  v7 = [appLayouts objectAtIndex:index];

  v8 = 1.0;
  if (role != 4)
  {
    if ([v7 environment] == 3)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }
  }

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  [(_SBFullScreenAppFloorSwitcherModifier *)self displayCornerRadius];
  if ([v6 environment] == 3 && BSFloatIsZero())
  {
    switcherSettings = [(_SBFullScreenAppFloorSwitcherModifier *)self switcherSettings];
    [switcherSettings gridSwitcherHomeButtonDeviceCardCornerRadius];
  }

  SBRectCornerRadiiForRadius();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  allItems = [v6 allItems];
  if ([allItems count] != 1)
  {
    goto LABEL_8;
  }

  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ((isChamoisOrFlexibleWindowing & 1) == 0)
  {
    allItems = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutContainingAppLayout:v6];
    if (v6 != allItems)
    {
      v19 = [v6 itemForLayoutRole:1];
      -[_SBFullScreenAppFloorSwitcherModifier cornerRadiiForLayoutRole:inAppLayout:withCornerRadii:](self, "cornerRadiiForLayoutRole:inAppLayout:withCornerRadii:", [allItems layoutRoleForItem:v19], allItems, v9, v11, v13, v15);
      v9 = v20;
      v11 = v21;
      v13 = v22;
      v15 = v23;
    }

LABEL_8:
  }

  v24 = v9;
  v25 = v11;
  v26 = v13;
  v27 = v15;
  result.topRight = v27;
  result.bottomRight = v26;
  result.bottomLeft = v25;
  result.topLeft = v24;
  return result;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (action == 37)
  {
    displayItemInSlideOver = [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemInSlideOver];
    isAutomaticStageCreationEnabled = displayItemInSlideOver != 0;
  }

  else
  {
    if (action != 18)
    {
      isAutomaticStageCreationEnabled = 1;
      goto LABEL_7;
    }

    displayItemInSlideOver = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
    isAutomaticStageCreationEnabled = [displayItemInSlideOver isAutomaticStageCreationEnabled];
  }

LABEL_7:
  return isAutomaticStageCreationEnabled;
}

- (int64_t)touchBehaviorForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  if ([layout isEqual:self->_activeAppLayout])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v6 = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutContainingAppLayout:layout];
  LOBYTE(role) = [(_SBFullScreenAppFloorSwitcherModifier *)self _isLayoutRoleBehindCenterWindow:role appLayout:v6];

  return role ^ 1;
}

- (BOOL)isLayoutRoleSelectable:(int64_t)selectable inAppLayout:(id)layout
{
  v6 = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutContainingAppLayout:layout];
  LOBYTE(selectable) = [(_SBFullScreenAppFloorSwitcherModifier *)self _isLayoutRoleBehindCenterWindow:selectable appLayout:v6];

  return selectable;
}

- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v6 = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutContainingAppLayout:layout];
  LOBYTE(role) = [(_SBFullScreenAppFloorSwitcherModifier *)self _isLayoutRoleBehindCenterWindow:role appLayout:v6];

  return role;
}

- (BOOL)_isLayoutRoleBehindCenterWindow:(int64_t)window appLayout:(id)layout
{
  v5 = [layout itemForLayoutRole:4];
  if (v5)
  {
    IsValidForSplitView = SBLayoutRoleIsValidForSplitView(window);
  }

  else
  {
    IsValidForSplitView = 0;
  }

  return IsValidForSplitView;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  if (role == 4)
  {
    return 2;
  }

  if ([layout environment] == 3)
  {
    return 2;
  }

  return 1;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = _SBFullScreenAppFloorSwitcherModifier;
  v7 = [(_SBFullScreenAppFloorSwitcherModifier *)&v13 hiddenContentStatusBarPartsForLayoutRole:role inAppLayout:layoutCopy];
  v8 = [(SBAppLayout *)self->_activeAppLayout itemForLayoutRole:4];
  v9 = v8;
  if (role == 4 || v8 == 0)
  {
  }

  else
  {
    environment = [layoutCopy environment];

    if (environment != 3)
    {
      v7 |= 4uLL;
    }
  }

  return v7;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  appLayouts = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayouts];
  v4 = [appLayouts indexOfObject:self->_activeAppLayout];
  v10.length = [appLayouts count];
  v9.location = v4;
  v9.length = 2;
  v10.location = 0;
  v5 = NSIntersectionRange(v9, v10);
  v6 = [appLayouts subarrayWithRange:{v5.location, v5.length}];

  return v6;
}

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout
{
  if ([(_SBFullScreenAppFloorSwitcherModifier *)self displayOrdinal])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  layoutCopy = layout;
  layoutsCopy = layouts;
  if ([layoutsCopy containsObject:self->_activeAppLayout])
  {
    v8 = self->_activeAppLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _SBFullScreenAppFloorSwitcherModifier;
    v8 = [(_SBFullScreenAppFloorSwitcherModifier *)&v11 preferredAppLayoutToReuseAccessoryForAppLayout:layoutCopy fromAppLayouts:layoutsCopy];
  }

  v9 = v8;

  return v9;
}

- (char)jetsamModeForAppLayout:(id)layout
{
  if (self->_activeAppLayout == layout)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBFullScreenAppFloorSwitcherModifier;
  return [(_SBFullScreenAppFloorSwitcherModifier *)&v6 jetsamModeForAppLayout:?];
}

- (char)activityModeForAppLayout:(id)layout
{
  if (self->_activeAppLayout == layout)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBFullScreenAppFloorSwitcherModifier;
  return [(_SBFullScreenAppFloorSwitcherModifier *)&v6 activityModeForAppLayout:?];
}

- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v7 = 0;
  }

  else
  {
    allItems = [layoutCopy allItems];
    firstObject = [allItems firstObject];

    if ([(SBAppLayout *)self->_activeAppLayout configuration]== 1 && [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:firstObject]== 1)
    {
      v7 = 37;
    }

    else if ([(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:firstObject]== 1)
    {
      v7 = 38;
    }

    else if ([(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:firstObject]== 2)
    {
      v7 = 39;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout
{
  allItems = [layout allItems];
  firstObject = [allItems firstObject];

  v6 = [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:firstObject];
  windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
  isDisplayEmbedded = [(_SBFullScreenAppFloorSwitcherModifier *)self isDisplayEmbedded];
  if (!SBLayoutRoleIsValid(v6))
  {
    v10 = 0;
    goto LABEL_35;
  }

  if (![windowManagementContext isChamoisOrFlexibleWindowing])
  {
    if ([windowManagementContext isMedusaEnabled])
    {
      if ([(_SBFullScreenAppFloorSwitcherModifier *)self displayItemSupportsMedusa:firstObject])
      {
        allItems2 = [(SBAppLayout *)self->_activeAppLayout allItems];
        [allItems2 count];

        if (v6 != 1)
        {
          v12 = [(SBAppLayout *)self->_activeAppLayout itemForLayoutRole:?];
          [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemSupportsMedusa:v12];
        }

        [(SBAppLayout *)self->_activeAppLayout configuration];
      }

      v13 = 0xFFFFFFFF80000000;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_26;
  }

  if (![windowManagementContext isFlexibleWindowingEnabled])
  {
    goto LABEL_16;
  }

  v9 = [(_SBFullScreenAppFloorSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:self->_activeAppLayout ignoreOcclusion:1 ignoreCentering:0];
  if (![v9 containsObject:firstObject])
  {
    v14 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:firstObject inAppLayout:self->_activeAppLayout];
    connections = [(SBHomeScreenConfigurationServer *)v14 connections];

    if (connections == 1)
    {
      goto LABEL_15;
    }

LABEL_16:
    v13 = 18;
    goto LABEL_17;
  }

LABEL_15:
  v13 = 20;
LABEL_17:
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    v16 = 62940128;
    if (!isDisplayEmbedded)
    {
      v16 = 62956512;
    }

    v17 = v13 | v16;
    v18 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:firstObject inAppLayout:self->_activeAppLayout];
    [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
    IsValid = SBDisplayItemSlideOverConfigurationIsValid(v23);

    if (IsValid)
    {
      v13 = v17 | 0x8000000;
    }

    else
    {
      v13 = v17 | 0x4000000;
    }
  }

  if ([windowManagementContext isAutomaticStageCreationEnabled] && isDisplayEmbedded & 1 | ((objc_msgSend(windowManagementContext, "isFlexibleWindowingEnabled") & 1) == 0))
  {
    v13 |= 8uLL;
  }

LABEL_26:
  if ((-[_SBFullScreenAppFloorSwitcherModifier displayItemDisablesKillingInSwitcher:](self, "displayItemDisablesKillingInSwitcher:", firstObject) & 1) == 0 && ([windowManagementContext baseStyle] || -[_SBFullScreenAppFloorSwitcherModifier hasMultipleDisplays](self, "hasMultipleDisplays")))
  {
    v13 |= 0x100000uLL;
  }

  hasMultipleDisplays = [(_SBFullScreenAppFloorSwitcherModifier *)self hasMultipleDisplays];
  v21 = 0x80000;
  if (isDisplayEmbedded)
  {
    v21 = 0x40000;
  }

  if (!hasMultipleDisplays)
  {
    v21 = 0;
  }

  v10 = v21 | v13;
LABEL_35:

  return v10;
}

- (id)handleSwitcherShortcutActionEvent:(id)event
{
  v408[4] = *MEMORY[0x277D85DE8];
  v399.receiver = self;
  v399.super_class = _SBFullScreenAppFloorSwitcherModifier;
  eventCopy = event;
  v310 = [(SBSwitcherModifier *)&v399 handleSwitcherShortcutActionEvent:?];
  if (([eventCopy isHandled] & 1) == 0)
  {
    windowManagementContext = [(_SBFullScreenAppFloorSwitcherModifier *)self windowManagementContext];
    windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
    displayItem = [eventCopy displayItem];
    v393 = 0;
    v394 = &v393;
    v395 = 0x3032000000;
    v396 = __Block_byref_object_copy__55;
    v397 = __Block_byref_object_dispose__55;
    v398 = 0;
    v387 = 0;
    v388 = &v387;
    v389 = 0x3032000000;
    v390 = __Block_byref_object_copy__55;
    v391 = __Block_byref_object_dispose__55;
    v392 = 0;
    v383 = 0;
    v384 = &v383;
    v385 = 0x2020000000;
    v386 = 0;
    v377 = 0;
    v378 = &v377;
    v379 = 0x3032000000;
    v380 = __Block_byref_object_copy__55;
    v381 = __Block_byref_object_dispose__55;
    v382 = objc_opt_new();
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
    selfCopy2 = self;
    if (isFlexibleWindowingEnabled)
    {
      v8 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_activeAppLayout];
      isDockVisible = [v8 isDockVisible];

      selfCopy2 = self;
    }

    else
    {
      isDockVisible = 0;
    }

    v371[0] = MEMORY[0x277D85DD0];
    v371[1] = 3221225472;
    v371[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke;
    v371[3] = &unk_2783B56A8;
    v371[4] = selfCopy2;
    v10 = displayItem;
    v372 = v10;
    v373 = &v383;
    v374 = &v387;
    v375 = &v393;
    v376 = &v377;
    v306 = MEMORY[0x223D6F7F0](v371);
    v365[0] = MEMORY[0x277D85DD0];
    v365[1] = 3221225472;
    v365[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_2;
    v365[3] = &unk_2783B56D0;
    v365[4] = self;
    v11 = v10;
    v366 = v11;
    v367 = &v387;
    v370 = isDockVisible;
    v368 = &v377;
    v369 = &v393;
    v303 = MEMORY[0x223D6F7F0](v365);
    v361[0] = MEMORY[0x277D85DD0];
    v361[1] = 3221225472;
    v361[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_3;
    v361[3] = &unk_2783AB348;
    v361[4] = self;
    v12 = v11;
    v362 = v12;
    v363 = &v387;
    v364 = &v393;
    v301 = MEMORY[0x223D6F7F0](v361);
    v356[0] = MEMORY[0x277D85DD0];
    v356[1] = 3221225472;
    v356[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_4;
    v356[3] = &unk_2783B56F8;
    v358 = &v387;
    v356[4] = self;
    v13 = v12;
    v357 = v13;
    v359 = &v377;
    v360 = &v393;
    v305 = MEMORY[0x223D6F7F0](v356);
    v350[0] = MEMORY[0x277D85DD0];
    v350[1] = 3221225472;
    v350[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_5;
    v350[3] = &unk_2783B5720;
    v350[4] = self;
    v14 = v13;
    v351 = v14;
    v354 = &v383;
    v304 = windowManagementContext;
    v352 = v304;
    v309 = eventCopy;
    v353 = v309;
    v355 = &v387;
    v302 = MEMORY[0x223D6F7F0](v350);
    v346[0] = MEMORY[0x277D85DD0];
    v346[1] = 3221225472;
    v346[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_6;
    v346[3] = &unk_2783AED90;
    v346[4] = self;
    v308 = v14;
    v347 = v308;
    v307 = windowingConfiguration;
    v348 = v307;
    v349 = &v387;
    v300 = MEMORY[0x223D6F7F0](v346);
    shortcutActionType = [v309 shortcutActionType];
    selfCopy19 = self;
    v17 = &unk_28336E280;
    v18 = 5;
    switch(shortcutActionType)
    {
      case 1:
      case 16:
        v19 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:v308 inAppLayout:self->_activeAppLayout];
        if (![(_SBFullScreenAppFloorSwitcherModifier *)self canZoomDisplayItem:v308 inAppLayout:self->_activeAppLayout])
        {
          goto LABEL_105;
        }

        v302[2]();
        goto LABEL_106;
      case 2:
        if (![v304 isFlexibleWindowingEnabled] || (-[_SBFullScreenAppFloorSwitcherModifier canZoomDisplayItem:inAppLayout:](self, "canZoomDisplayItem:inAppLayout:", v308, self->_activeAppLayout) & 1) != 0)
        {
          goto LABEL_145;
        }

        v300[2]();
        v118 = objc_alloc_init(SBDismissMenuBarSwitcherEventResponse);
        v65 = SBAppendSwitcherModifierResponse(v118, v310);

        goto LABEL_87;
      case 3:
        v115 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v116 = v388[5];
        v388[5] = v115;

        [v388[5] setPeekConfiguration:2];
        selfCopy19 = self;
        if (![v304 isFlexibleWindowingEnabled])
        {
          goto LABEL_145;
        }

        [v388[5] setUnlockedEnvironmentMode:1];
        v117 = (v388 + 5);
        p_activeAppLayout = &self->_activeAppLayout;
        goto LABEL_183;
      case 4:
        v156 = [SBRemoveFromDesktopSwitcherEventResponse alloc];
        v157 = [MEMORY[0x277CBEB98] setWithObject:v308];
        v158 = [(SBRemoveFromDesktopSwitcherEventResponse *)v156 initWithDisplayItems:v157];
        v159 = SBAppendSwitcherModifierResponse(v158, v310);

        v160 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v161 = v388[5];
        v388[5] = v160;

        v162 = v388[5];
        v163 = [(SBAppLayout *)self->_activeAppLayout appLayoutByRemovingItemInLayoutRole:[(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308]];
        [v162 setAppLayout:v163];

        [v388[5] setMinimizingDisplayItem:v308];
        selfCopy19 = self;
        [v388[5] setPeekConfiguration:1];
        [v388[5] setPrefersZoomDownAnimation:1];
        v310 = v159;
        goto LABEL_145;
      case 5:
        if (isDockVisible)
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_95;
      case 6:
        if (isDockVisible)
        {
          v18 = 4;
        }

        else
        {
          v18 = 2;
        }

        goto LABEL_95;
      case 7:
        goto LABEL_95;
      case 8:
        v18 = 6;
        goto LABEL_95;
      case 9:
        v17 = &unk_28336E238;
        v108 = &unk_28336E220;
        goto LABEL_53;
      case 10:
        v17 = &unk_28336E268;
        v108 = &unk_28336E250;
LABEL_53:
        if (isDockVisible)
        {
          v17 = v108;
        }

        goto LABEL_82;
      case 11:
        goto LABEL_82;
      case 12:
        v17 = &unk_28336E298;
        goto LABEL_82;
      case 13:
        bs_set = [&unk_28336E2B0 bs_set];
        v297 = [bs_set mutableCopy];

        v407[0] = &unk_283370C88;
        v341 = xmmword_21F8A6990;
        v67 = [MEMORY[0x277CCAE60] valueWithBytes:&v341 objCType:"{CGPoint=dd}"];
        v408[0] = v67;
        v407[1] = &unk_283370CA0;
        __asm { FMOV            V0.2D, #0.75 }

        v340 = _Q0;
        v73 = [MEMORY[0x277CCAE60] valueWithBytes:&v340 objCType:"{CGPoint=dd}"];
        v408[1] = v73;
        v407[2] = &unk_283370CB8;
        __asm { FMOV            V0.2D, #0.25 }

        v339 = _Q0;
        v75 = [MEMORY[0x277CCAE60] valueWithBytes:&v339 objCType:"{CGPoint=dd}"];
        v408[2] = v75;
        v407[3] = &unk_283370CD0;
        v338[0] = 0x3FE8000000000000;
        v338[1] = 0x3FD0000000000000;
        v76 = [MEMORY[0x277CCAE60] valueWithBytes:v338 objCType:"{CGPoint=dd}"];
        v408[3] = v76;
        v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v408 forKeys:v407 count:4];

        v298 = objc_opt_new();
        selfCopy8 = self;
        v299 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesMapForAppLayout:self->_activeAppLayout];
        [(_SBFullScreenAppFloorSwitcherModifier *)self containerViewBounds];
        v296 = v79;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        v312 = [(_SBFullScreenAppFloorSwitcherModifier *)selfCopy8 lastInteractedItemsInAppLayout:selfCopy8->_activeAppLayout];
        displayItemInSlideOver = [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemInSlideOver];
        v295 = displayItemInSlideOver;
        if (displayItemInSlideOver && ([(SBDisplayItem *)v308 isEqualToItem:displayItemInSlideOver]& 1) == 0)
        {
          v87 = [v312 sb_arrayByRemovingObject:displayItemInSlideOver];

          v312 = v87;
          selfCopy8 = self;
        }

        for (obj = 0; ; ++obj)
        {
          allItems = [(SBAppLayout *)selfCopy8->_activeAppLayout allItems];
          v89 = [allItems count];

          v90 = 4;
          if (v89 < 4)
          {
            v90 = v89;
          }

          if (obj >= v90)
          {
            break;
          }

          v91 = [v312 objectAtIndex:?];
          v92 = [v299 objectForKey:v91];
          if (v92)
          {
            displayItemLayoutAttributesCalculator = [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemLayoutAttributesCalculator];
            [displayItemLayoutAttributesCalculator centerForLayoutAttributes:v92 windowingConfiguration:v307];
            [(SBDisplayItemLayoutAttributes *)v94 normalizedPointForPoint:v95 inBounds:v296, v81, v83, v85];

            v336 = 0u;
            v337 = 0u;
            v334 = 0u;
            v335 = 0u;
            v96 = v297;
            integerValue = 0;
            v98 = [v96 countByEnumeratingWithState:&v334 objects:v406 count:16];
            if (v98)
            {
              v99 = *v335;
              v100 = 1.79769313e308;
              do
              {
                for (i = 0; i != v98; ++i)
                {
                  if (*v335 != v99)
                  {
                    objc_enumerationMutation(v96);
                  }

                  v102 = *(*(&v334 + 1) + 8 * i);
                  v103 = [v77 objectForKey:v102];
                  [v103 bs_CGPointValue];

                  SBPointDistanceSquared();
                  v105 = v104;
                  if (v104 < v100)
                  {
                    integerValue = [v102 integerValue];
                    v100 = v105;
                  }
                }

                v98 = [v96 countByEnumeratingWithState:&v334 objects:v406 count:16];
              }

              while (v98);
            }

            v106 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [v298 addObject:v106];

            v107 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
            [v96 removeObject:v107];
          }

          selfCopy8 = self;
        }

        (v305)[2](v305, v298);

        goto LABEL_144;
      case 14:
        v17 = &unk_28336E2C8;
        goto LABEL_82;
      case 15:
        v17 = &unk_28336E2E0;
LABEL_82:
        (v305)[2](v305, v17);
        goto LABEL_145;
      case 17:
        v133 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_activeAppLayout];
        [(_SBFullScreenAppFloorSwitcherModifier *)self containerViewBounds];
        v315 = v135;
        obja = v134;
        v137 = v136;
        v139 = v138;
        v140 = v136 + v138 * 0.5;
        if (([(_SBFullScreenAppFloorSwitcherModifier *)self prefersDockHidden]& 1) == 0)
        {
          [(_SBFullScreenAppFloorSwitcherModifier *)self floatingDockHeight];
          v142 = v141;
          v143 = [v133 flexibleAutoLayoutItemForDisplayItem:v308];
          [v143 size];
          v145 = v144;

          autoLayoutItems = [v133 autoLayoutItems];
          v147 = v139 - v142;
          v148 = (v139 - v142) * 0.5;
          v149 = v148 + v145 * 0.5;
          for (j = 1; j < [autoLayoutItems count]; ++j)
          {
            v151 = [autoLayoutItems objectAtIndex:j];
            [v151 frame];
            v153 = v152;
            v155 = v154;

            if (v149 < v153 + v155)
            {
              v149 = v153 + v155;
            }
          }

          if (v149 < v147)
          {
            v140 = v148;
          }

          selfCopy19 = self;
        }

        v212 = [(_SBFullScreenAppFloorSwitcherModifier *)selfCopy19 layoutAttributesForDisplayItem:v308 inAppLayout:selfCopy19->_activeAppLayout];
        displayItemLayoutAttributesCalculator2 = [(_SBFullScreenAppFloorSwitcherModifier *)selfCopy19 displayItemLayoutAttributesCalculator];
        [displayItemLayoutAttributesCalculator2 centerForLayoutAttributes:v212 windowingConfiguration:v307];
        v207 = *&obja + *&v315 * 0.5;
        v209 = v208 == v140 && v206 == v207;

        if (!v209)
        {
          SBDisplayItemTileConfigurationMakeNotTiled(&v320);
          v210 = [SBDisplayItemLayoutAttributes attributesByModifyingTileConfiguration:v212];

          v139 = [(SBDisplayItemLayoutAttributes *)v207 normalizedPointForPoint:v140 inBounds:*&obja, v137, *&v315, v139];
          v212 = [(SBDisplayItemLayoutAttributes *)v210 attributesByModifyingNormalizedCenter:v139, v212];

          v213 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v214 = v388[5];
          v388[5] = v213;

          v215 = objc_alloc(MEMORY[0x277CBEB38]);
          v405 = v212;
          v216 = [MEMORY[0x277CBEA60] arrayWithObjects:&v405 count:1];
          v404 = v308;
          v217 = [MEMORY[0x277CBEA60] arrayWithObjects:&v404 count:1];
          v218 = [v215 initWithObjects:v216 forKeys:v217];
          v219 = v394[5];
          v394[5] = v218;

          [v388[5] setDisplayItemLayoutAttributesMap:v394[5]];
          [v378[5] addObject:v308];
        }

        goto LABEL_144;
      case 18:
      case 19:
        if (![(_SBFullScreenAppFloorSwitcherModifier *)self hasMultipleDisplays])
        {
          goto LABEL_145;
        }

        if ([v304 isFlexibleWindowingEnabled] && (objc_msgSend(v304, "isAutomaticStageCreationEnabled") & 1) == 0)
        {
          v220 = [[SBRequestMoveDisplayItemToOtherDisplaySwitcherEventResponse alloc] initWithDisplayItem:v308];
          v65 = SBAppendSwitcherModifierResponse(v220, v310);

LABEL_87:
          v310 = v65;
        }

        else
        {
          v20 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v21 = v388[5];
          v388[5] = v20;

          v22 = v388[5];
          v23 = [(SBAppLayout *)self->_activeAppLayout leafAppLayoutForItem:v308];
          [v22 setAppLayout:v23];

          v24 = v388[5];
          displayConfigurationsOfOtherDisplays = [(_SBFullScreenAppFloorSwitcherModifier *)self displayConfigurationsOfOtherDisplays];
          firstObject = [displayConfigurationsOfOtherDisplays firstObject];
          [v24 setDisplayConfiguration:firstObject];
        }

        goto LABEL_144;
      case 20:
        v125 = [[SBDestroyDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 destroyAllScenesMatchingBundleIdentifier:0];
        v65 = SBAppendSwitcherModifierResponse(v125, v310);

        goto LABEL_87;
      case 21:
        v126 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v127 = v388[5];
        v388[5] = v126;

        v128 = [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308];
        activeAppLayout = self->_activeAppLayout;
        if (v128 == 1)
        {
          v130 = [(SBAppLayout *)activeAppLayout itemForLayoutRole:2];
          v131 = [(SBAppLayout *)activeAppLayout appLayoutByInsertingItem:v130 inLayoutRole:1];

          v132 = [v131 appLayoutByRemovingItemInLayoutRole:2];

          v19 = [v132 appLayoutByModifyingConfiguration:{-[SBAppLayout configuration](self->_activeAppLayout, "configuration")}];

          [v388[5] setAppLayout:v19];
          [v388[5] setPeekConfiguration:3];
        }

        else
        {
          v191 = [(SBAppLayout *)activeAppLayout appLayoutByRemovingItemInLayoutRole:2];
          v19 = [v191 appLayoutByModifyingConfiguration:{-[SBAppLayout configuration](self->_activeAppLayout, "configuration")}];

          [v388[5] setAppLayout:v19];
          [v388[5] setPeekConfiguration:2];
        }

        goto LABEL_106;
      case 22:
        v18 = 7;
        goto LABEL_95;
      case 23:
        v18 = 8;
        goto LABEL_95;
      case 24:
        v18 = 9;
        goto LABEL_95;
      case 25:
        v18 = 10;
LABEL_95:
        v306[2](v306, v18);
        goto LABEL_145;
      case 26:
        v181 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 direction:0];
        v52 = SBAppendSwitcherModifierResponse(v181, v310);

        v322 = 0;
        v320 = 0u;
        v321 = 0u;
        v182 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:v308 inAppLayout:self->_activeAppLayout];
        [(SBDisplayItemLayoutAttributes *)v182 slideOverConfiguration];

        SBDisplayItemSlideOverConfigurationNone(v333);
        selfCopy19 = self;
        v331[0] = v320;
        v331[1] = v321;
        v332 = v322;
        if (SBEqualDisplayItemSlideOverConfigurations(v331, v333))
        {
          v183 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1);
        }

        else
        {
          v183 = v320;
        }

        v303[2](v303, v183);
        goto LABEL_122;
      case 27:
        v51 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 direction:1];
        v52 = SBAppendSwitcherModifierResponse(v51, v310);

        v301[2]();
        selfCopy19 = self;
        goto LABEL_122;
      case 28:
        v176 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 direction:0];
        v52 = SBAppendSwitcherModifierResponse(v176, v310);

        v303[2](v303, 0);
        selfCopy19 = self;
        goto LABEL_122;
      case 29:
        v177 = [[SBToggleSlideOverForDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 direction:0];
        v52 = SBAppendSwitcherModifierResponse(v177, v310);

        v303[2](v303, 2);
        selfCopy19 = self;
LABEL_122:
        v310 = v52;
        goto LABEL_145;
      case 30:
        displayItemInSlideOver2 = [(_SBFullScreenAppFloorSwitcherModifier *)self displayItemInSlideOver];
        v164 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:displayItemInSlideOver2 inAppLayout:self->_activeAppLayout];
        [(SBDisplayItemLayoutAttributes *)v164 slideOverConfiguration];
        if (BYTE1(v322) == 1)
        {
          v165 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v166 = v388[5];
          v388[5] = v165;

          v167 = [(SBAppLayout *)self->_activeAppLayout appLayoutByInsertingItem:displayItemInSlideOver2];
          allItems6 = [(_SBFullScreenAppFloorSwitcherModifier *)self appLayoutByBringingItemToFront:displayItemInSlideOver2 inAppLayout:v167];

          [v388[5] setAppLayout:allItems6];
          BYTE1(v322) = 0;
          v45 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v164];

          v168 = v388[5];
          v402 = displayItemInSlideOver2;
          v403 = v45;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
          [v168 setDisplayItemLayoutAttributesMap:v50];
LABEL_85:

          v164 = v45;
        }

        else
        {
          v192 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v193 = v388[5];
          v388[5] = v192;

          v194 = v388[5];
          v195 = [(SBAppLayout *)self->_activeAppLayout appLayoutByRemovingItemInLayoutRole:[(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:displayItemInSlideOver2]];
          [v194 setAppLayout:v195];

          [v388[5] setMinimizingDisplayItem:displayItemInSlideOver2];
          [v388[5] setPeekConfiguration:1];
        }

LABEL_112:
        goto LABEL_144;
      case 31:
        v19 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesForDisplayItem:v308 inAppLayout:self->_activeAppLayout];
        if ([v304 isFlexibleWindowingEnabled])
        {
          if ([(_SBFullScreenAppFloorSwitcherModifier *)self canZoomDisplayItem:v308 inAppLayout:self->_activeAppLayout])
          {
            v119 = v302;
          }

          else
          {
            v119 = v300;
          }

          v119[2]();
        }

        else
        {
LABEL_105:
          v184 = [(SBHomeScreenConfigurationServer *)v19 connections]== 2;
          *(v384 + 24) = v184;
        }

LABEL_106:

        goto LABEL_144;
      case 32:
        v169 = [SBNewWindowRequestSwitcherEventResponse alloc];
        bundleIdentifier = [v308 bundleIdentifier];
        v171 = [(SBNewWindowRequestSwitcherEventResponse *)v169 initWithBundleIdentifier:bundleIdentifier];
        v65 = SBAppendSwitcherModifierResponse(v171, v310);

        goto LABEL_87;
      case 33:
        v64 = [[SBDestroyDisplayItemSwitcherEventResponse alloc] initWithDisplayItem:v308 destroyAllScenesMatchingBundleIdentifier:1];
        v65 = SBAppendSwitcherModifierResponse(v64, v310);

        goto LABEL_87;
      case 34:
        bundleIdentifier2 = [v308 bundleIdentifier];
        if (bundleIdentifier2)
        {
          v54 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v55 = v388[5];
          v388[5] = v54;

          [v388[5] setAnimationDisabled:1];
          v56 = self->_activeAppLayout;
          v344[0] = MEMORY[0x277D85DD0];
          v344[1] = 3221225472;
          v344[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_7;
          v344[3] = &unk_2783A8C90;
          v345 = bundleIdentifier2;
          v57 = [(SBAppLayout *)v56 appLayoutWithItemsPassingTest:v344];
          v58 = MEMORY[0x277CBEB58];
          allItems2 = [(SBAppLayout *)self->_activeAppLayout allItems];
          v60 = [v58 setWithArray:allItems2];

          if (v57)
          {
            v61 = MEMORY[0x277CBEB98];
            allItems3 = [v57 allItems];
            v63 = [v61 setWithArray:allItems3];
            [v60 minusSet:v63];

            [v388[5] setAppLayout:v57];
          }

          else
          {
            [v388[5] setUnlockedEnvironmentMode:1];
            [v388[5] setPeekConfiguration:1];
          }

          v227 = [[SBRemoveFromDesktopSwitcherEventResponse alloc] initWithDisplayItems:v60];
          v228 = SBAppendSwitcherModifierResponse(v227, v310);

          v310 = v228;
        }

        goto LABEL_144;
      case 35:
        bundleIdentifier3 = [v308 bundleIdentifier];
        if (bundleIdentifier3)
        {
          v33 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v34 = v388[5];
          v388[5] = v33;

          [v388[5] setAnimationDisabled:1];
          v35 = self->_activeAppLayout;
          v342[0] = MEMORY[0x277D85DD0];
          v342[1] = 3221225472;
          v342[2] = __75___SBFullScreenAppFloorSwitcherModifier_handleSwitcherShortcutActionEvent___block_invoke_8;
          v342[3] = &unk_2783A8C90;
          v343 = bundleIdentifier3;
          v36 = [(SBAppLayout *)v35 appLayoutWithItemsPassingTest:v342];
          v37 = MEMORY[0x277CBEB58];
          allItems4 = [(SBAppLayout *)self->_activeAppLayout allItems];
          v39 = [v37 setWithArray:allItems4];

          if (v36)
          {
            v40 = MEMORY[0x277CBEB98];
            allItems5 = [v36 allItems];
            v42 = [v40 setWithArray:allItems5];
            [v39 minusSet:v42];

            [v388[5] setAppLayout:v36];
          }

          else
          {
            [v388[5] setUnlockedEnvironmentMode:1];
            [v388[5] setPeekConfiguration:1];
          }

          if ([v39 count])
          {
            v225 = [[SBRemoveFromDesktopSwitcherEventResponse alloc] initWithDisplayItems:v39];
            v226 = SBAppendSwitcherModifierResponse(v225, v310);

            v310 = v226;
          }
        }

        goto LABEL_144;
      case 36:
        displayItemInSlideOver2 = [(_SBFullScreenAppFloorSwitcherModifier *)self _demoLayoutAttributesForDisplayItem:v308 inAppLayout:self->_activeAppLayout];
        if (!displayItemInSlideOver2)
        {
          goto LABEL_112;
        }

        v44 = [(_SBFullScreenAppFloorSwitcherModifier *)self layoutAttributesMapForAppLayout:self->_activeAppLayout];
        v45 = [v44 mutableCopy];

        v46 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v47 = v388[5];
        v388[5] = v46;

        [v45 setObject:displayItemInSlideOver2 forKey:v308];
        objc_storeStrong(v394 + 5, v45);
        [v388[5] setAppLayout:self->_activeAppLayout];
        [v388[5] setDisplayItemLayoutAttributesMap:v45];
        allItems6 = [(SBAppLayout *)self->_activeAppLayout allItems];
        v49 = [allItems6 mutableCopy];
        v50 = v378[5];
        v378[5] = v49;
        goto LABEL_85;
      case 37:
        if ([(SBAppLayout *)self->_activeAppLayout configuration]== 1 && [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308]!= 4)
        {
          goto LABEL_118;
        }

        v27 = [(SBAppLayout *)self->_activeAppLayout appLayoutByModifyingConfiguration:1];
        v28 = [v27 appLayoutByInsertingItem:v308 inLayoutRole:1];

        v29 = [v28 appLayoutByRemovingItemInLayoutRole:2];

        v30 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v31 = v388[5];
        v388[5] = v30;

        [v388[5] setAppLayout:v29];
        goto LABEL_144;
      case 38:
        allItems7 = [(SBAppLayout *)self->_activeAppLayout allItems];
        v179 = [allItems7 count] == 1;

        if (v179)
        {
          v174 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v175 = 2;
          goto LABEL_100;
        }

        selfCopy19 = self;
        if ([(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308]== 1)
        {
          goto LABEL_118;
        }

        v221 = [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308];
        v222 = self->_activeAppLayout;
        if (v221 != 2)
        {
          v285 = [(SBAppLayout *)v222 itemForLayoutRole:1];
          v286 = [(SBAppLayout *)self->_activeAppLayout appLayoutByInsertingItem:v308 inLayoutRole:1];
          v287 = [v286 appLayoutByInsertingItem:v285 inLayoutRole:2];

          v288 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v289 = v388[5];
          v388[5] = v288;

          [v388[5] setAppLayout:v287];
          goto LABEL_144;
        }

        v198 = [(SBAppLayout *)v222 itemForLayoutRole:1];
        v223 = [(SBAppLayout *)self->_activeAppLayout appLayoutByInsertingItem:v308 inLayoutRole:1];
        v200 = [v223 appLayoutByInsertingItem:v198 inLayoutRole:2];

        if ([v200 configuration] == 2)
        {
          v224 = 4;
        }

        else
        {
          if ([v200 configuration] != 4)
          {
            goto LABEL_189;
          }

          v224 = 2;
        }

        v293 = [v200 appLayoutByModifyingConfiguration:v224];

        v200 = v293;
        goto LABEL_189;
      case 39:
        allItems8 = [(SBAppLayout *)self->_activeAppLayout allItems];
        v173 = [allItems8 count] == 1;

        if (v173)
        {
          v174 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v175 = 3;
LABEL_100:
          v180 = v388[5];
          v388[5] = v174;

          [v388[5] setPeekConfiguration:v175];
          selfCopy19 = self;
LABEL_145:
          if (*(v384 + 24) == 1 && [v309 shortcutSource] != 2)
          {
            v231 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:v308];
            v232 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v231 level:3];
            v233 = SBAppendSwitcherModifierResponse(v232, v310);

            v310 = v233;
          }

          else
          {
            if (!v388[5])
            {
LABEL_177:
              [v309 handleWithReason:@"Full Screen App Layout"];

              _Block_object_dispose(&v377, 8);
              _Block_object_dispose(&v383, 8);
              _Block_object_dispose(&v387, 8);

              _Block_object_dispose(&v393, 8);
              break;
            }

            shortcutSource = [v309 shortcutSource];
            if ((shortcutSource - 1) >= 4)
            {
              v230 = 0;
            }

            else
            {
              v230 = qword_21F8A69A0[shortcutSource - 1];
            }

            [v388[5] setSource:v230];
            if ([v378[5] count])
            {
              v234 = [(_SBFullScreenAppFloorSwitcherModifier *)selfCopy19 layoutAttributesMapForAppLayout:selfCopy19->_activeAppLayout];
              v235 = objc_opt_new();
              v329 = 0u;
              v330 = 0u;
              v327 = 0u;
              v328 = 0u;
              objb = v234;
              v236 = [objb countByEnumeratingWithState:&v327 objects:v401 count:16];
              if (v236)
              {
                v237 = *v328;
                do
                {
                  for (k = 0; k != v236; ++k)
                  {
                    if (*v328 != v237)
                    {
                      objc_enumerationMutation(objb);
                    }

                    v239 = *(*(&v327 + 1) + 8 * k);
                    v240 = [v394[5] objectForKey:v239];
                    v241 = v240;
                    if (v240)
                    {
                      v242 = v240;
                    }

                    else
                    {
                      v242 = [objb objectForKey:v239];
                    }

                    v243 = v242;

                    [v235 setObject:v243 forKey:v239];
                  }

                  v236 = [objb countByEnumeratingWithState:&v327 objects:v401 count:16];
                }

                while (v236);
              }

              v244 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:self->_activeAppLayout calculatedUsingNewLayoutAttributesMap:v235 itemsNeedingPositionSnapping:v378[5] itemsNeedingSizeSnapping:0];
              v325 = 0u;
              v326 = 0u;
              v323 = 0u;
              v324 = 0u;
              v313 = v244;
              autoLayoutItems2 = [v244 autoLayoutItems];
              v246 = [autoLayoutItems2 countByEnumeratingWithState:&v323 objects:v400 count:16];
              if (v246)
              {
                v247 = *v324;
                v316 = autoLayoutItems2;
                do
                {
                  for (m = 0; m != v246; ++m)
                  {
                    if (*v324 != v247)
                    {
                      objc_enumerationMutation(v316);
                    }

                    v249 = *(*(&v323 + 1) + 8 * m);
                    displayItem2 = [v249 displayItem];
                    v251 = [v235 objectForKey:displayItem2];
                    [(SBDisplayItemLayoutAttributes *)v251 tileConfiguration];
                    if (!SBDisplayItemTileConfigurationIsValid(&v320))
                    {
                      [(SBDisplayItemLayoutAttributes *)v251 slideOverConfiguration];
                      if ((SBDisplayItemSlideOverConfigurationIsValid(&v320) & 1) == 0 && ![(SBHomeScreenConfigurationServer *)v251 connections])
                      {
                        [v249 position];
                        v253 = v252;
                        v255 = v254;
                        configuration = [v313 configuration];
                        [configuration containerBounds];
                        v260 = [(SBDisplayItemLayoutAttributes *)v253 normalizedPointForPoint:v255 inBounds:v257, v258, v259, v260];
                        v262 = [(SBDisplayItemLayoutAttributes *)v251 attributesByModifyingNormalizedCenter:v260, v262];

                        [v249 size];
                        v265 = v264;
                        v267 = v266;
                        configuration2 = [v313 configuration];
                        [configuration2 containerBounds];
                        v270 = v269;
                        v272 = v271;
                        v274 = v273;
                        v276 = v275;
                        windowingConfiguration2 = [(SBSwitcherModifier *)self windowingConfiguration];
                        [windowingConfiguration2 defaultWindowSize];
                        windowingConfiguration3 = [(SBSwitcherModifier *)self windowingConfiguration];
                        [windowingConfiguration3 screenEdgePadding];
                        v294 = v279;
                        SBDisplayItemAttributedSizeInfer(&v320, v265, v267, v270, v272, v274, v276);
                        v251 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v262];

                        [v235 setObject:v251 forKey:{displayItem2, v294}];
                      }
                    }
                  }

                  autoLayoutItems2 = v316;
                  v246 = [v316 countByEnumeratingWithState:&v323 objects:v400 count:16];
                }

                while (v246);
              }

              [v388[5] setDisplayItemLayoutAttributesMap:v235];
            }

            v280 = [SBPerformTransitionSwitcherEventResponse alloc];
            v231 = [(SBPerformTransitionSwitcherEventResponse *)v280 initWithTransitionRequest:v388[5] gestureInitiated:0];
            SBAppendSwitcherModifierResponse(v231, v310);
            v310 = v232 = v310;
          }

          goto LABEL_177;
        }

        selfCopy19 = self;
        if ([(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308]== 2)
        {
LABEL_118:
          *(v384 + 24) = 1;
          goto LABEL_145;
        }

        v196 = [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308];
        v197 = self->_activeAppLayout;
        if (v196 != 1)
        {
          v282 = [(SBAppLayout *)v197 appLayoutByInsertingItem:v308 inLayoutRole:2];
          v283 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v284 = v388[5];
          v388[5] = v283;

          [v388[5] setAppLayout:v282];
          goto LABEL_144;
        }

        v198 = [(SBAppLayout *)v197 itemForLayoutRole:2];
        v199 = [(SBAppLayout *)self->_activeAppLayout appLayoutByInsertingItem:v308 inLayoutRole:2];
        v200 = [v199 appLayoutByInsertingItem:v198 inLayoutRole:1];

        if ([v200 configuration] == 2)
        {
          v201 = 4;
        }

        else
        {
          if ([v200 configuration] != 4)
          {
LABEL_189:
            v291 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
            v292 = v388[5];
            v388[5] = v291;

            [v388[5] setAppLayout:v200];
            goto LABEL_144;
          }

          v201 = 2;
        }

        v290 = [v200 appLayoutByModifyingConfiguration:v201];

        v200 = v290;
        goto LABEL_189;
      case 40:
        v109 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v110 = v388[5];
        v388[5] = v109;

        p_activeAppLayout = &self->_activeAppLayout;
        v112 = [(SBAppLayout *)self->_activeAppLayout layoutRoleForItem:v308];
        v113 = self->_activeAppLayout;
        if (v112 == 4)
        {
          v114 = [(SBAppLayout *)v113 appLayoutByInsertingItem:v308 inLayoutRole:3];
          [v388[5] setFloatingConfiguration:1];
          [v388[5] setAppLayout:v114];

          goto LABEL_144;
        }

        v185 = [(SBAppLayout *)v113 itemForLayoutRole:2];
        v186 = v185 == 0;

        if (!v186)
        {
          v187 = *p_activeAppLayout;
          v188 = [(SBAppLayout *)v187 itemForLayoutRole:2];
          v189 = [(SBAppLayout *)v187 appLayoutByInsertingItem:v188 inLayoutRole:1];

          v190 = [v189 appLayoutByInsertingItem:v308 inLayoutRole:3];

          [v388[5] setFloatingConfiguration:1];
          [v388[5] setAppLayout:v190];

          goto LABEL_144;
        }

        [v388[5] setPeekConfiguration:2];
        selfCopy19 = self;
        [v388[5] setAppLayoutEnvironment:2];
        [v388[5] setFloatingConfiguration:1];
        goto LABEL_182;
      case 41:
        v120 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v121 = v388[5];
        v388[5] = v120;

        p_activeAppLayout = &self->_activeAppLayout;
        allItems9 = [(SBAppLayout *)self->_activeAppLayout allItems];
        v123 = [allItems9 count] == 1;

        v124 = v388[5];
        if (v123)
        {
          [v124 setPeekConfiguration:3];
          selfCopy19 = self;
          [v388[5] setAppLayoutEnvironment:2];
          [v388[5] setFloatingConfiguration:2];
LABEL_182:
          v117 = (v388 + 5);
LABEL_183:
          [*v117 setAppLayout:*p_activeAppLayout];
        }

        else
        {
          [v124 setFloatingConfiguration:2];
          v202 = v388[5];
          v203 = [(SBAppLayout *)*p_activeAppLayout appLayoutByInsertingItem:v308 inLayoutRole:3];
          [v202 setAppLayout:v203];

LABEL_144:
          selfCopy19 = self;
        }

        goto LABEL_145;
      default:
        goto LABEL_145;
    }
  }

  return v310;
}

- (void)initWithActiveAppLayout:(uint64_t)a1 homeAffordanceReuseIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenAppLayoutSwitcherModifier.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"appLayout != nil"}];
}

@end