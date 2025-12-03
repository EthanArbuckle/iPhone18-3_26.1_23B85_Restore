@interface _SBActiveAppFloorFloatingSwitcherModifier
- (BOOL)_isActiveAppLayoutAtIndex:(unint64_t)index;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (_SBActiveAppFloorFloatingSwitcherModifier)initWithActiveAppLayout:(id)layout fullScreenAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode;
- (char)activityModeForAppLayout:(id)layout;
- (char)jetsamModeForAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)shadowOffsetForIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSwitcherShortcutActionEvent:(id)event;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout;
- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout;
- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout;
- (int64_t)touchBehaviorForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)transactionCompletionOptions;
@end

@implementation _SBActiveAppFloorFloatingSwitcherModifier

- (_SBActiveAppFloorFloatingSwitcherModifier)initWithActiveAppLayout:(id)layout fullScreenAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration environmentMode:(int64_t)mode
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_activeAppLayout, layout);
    objc_storeStrong(&v14->_fullScreenAppLayout, appLayout);
    v14->_floatingConfiguration = configuration;
    v14->_environmentMode = mode;
  }

  return v14;
}

- (id)visibleAppLayouts
{
  if (self->_activeAppLayout)
  {
    [MEMORY[0x277CBEB98] setWithObject:?];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v2 = ;

  return v2;
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

- (id)animationAttributesForLayoutElement:(id)element
{
  switcherSettings = [(_SBActiveAppFloorFloatingSwitcherModifier *)self switcherSettings];
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
  [(_SBActiveAppFloorFloatingSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layout = [(_SBActiveAppFloorFloatingSwitcherModifier *)self _isActiveAppLayoutAtIndex:index, layout];
  result = 0.0;
  if (layout)
  {
    return 1.0;
  }

  return result;
}

- (double)shadowOffsetForIndex:(unint64_t)index
{
  result = 1.0;
  if (self->_floatingConfiguration == 1)
  {
    return -1.0;
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  medusaSettings = [(_SBActiveAppFloorFloatingSwitcherModifier *)self medusaSettings];
  [medusaSettings cornerRadiusForFloatingApps];
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

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout
{
  if ([(_SBActiveAppFloorFloatingSwitcherModifier *)self displayOrdinal])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)topMostLayoutElements
{
  slideOverTongueLayoutElement = [(_SBActiveAppFloorFloatingSwitcherModifier *)self slideOverTongueLayoutElement];
  activeAppLayout = self->_activeAppLayout;
  appLayouts = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  v6 = appLayouts;
  if (activeAppLayout)
  {
    v7 = 1;
  }

  else
  {
    v7 = slideOverTongueLayoutElement == 0;
  }

  if (!v7)
  {
    v8 = [appLayouts mutableCopy];

    [v8 insertObject:slideOverTongueLayoutElement atIndex:0];
    v6 = v8;
  }

  return v6;
}

- (unint64_t)transactionCompletionOptions
{
  appLayouts = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(_SBActiveAppFloorFloatingSwitcherModifier *)self isReduceMotionEnabled];

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

- (char)jetsamModeForAppLayout:(id)layout
{
  if (self->_activeAppLayout == layout)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  return [(_SBActiveAppFloorFloatingSwitcherModifier *)&v6 jetsamModeForAppLayout:?];
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
  v6.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  return [(_SBActiveAppFloorFloatingSwitcherModifier *)&v6 activityModeForAppLayout:?];
}

- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout
{
  if (((self->_floatingConfiguration - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    return 41;
  }

  else
  {
    return 40;
  }
}

- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout
{
  allItems = [layout allItems];
  firstObject = [allItems firstObject];

  v6 = [(SBAppLayout *)self->_fullScreenAppLayout itemForLayoutRole:1];
  [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayItemSupportsMedusa:v6];

  if ([(_SBActiveAppFloorFloatingSwitcherModifier *)self displayItemDisablesKillingInSwitcher:firstObject])
  {
    v7 = 0xFFFFFFFF80000000;
  }

  else
  {
    v7 = -2146435072;
  }

  if ([(_SBActiveAppFloorFloatingSwitcherModifier *)self hasMultipleDisplays])
  {
    isDisplayEmbedded = [(_SBActiveAppFloorFloatingSwitcherModifier *)self isDisplayEmbedded];
    v9 = 0x80000;
    if (isDisplayEmbedded)
    {
      v9 = 0x40000;
    }

    v7 |= v9;
  }

  return v7;
}

- (id)handleSwitcherShortcutActionEvent:(id)event
{
  eventCopy = event;
  v33.receiver = self;
  v33.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v33 handleSwitcherShortcutActionEvent:eventCopy];
  if (([eventCopy isHandled] & 1) == 0)
  {
    displayItem = [eventCopy displayItem];
    shortcutActionType = [eventCopy shortcutActionType];
    if (shortcutActionType <= 37)
    {
      if (shortcutActionType <= 32)
      {
        if (shortcutActionType != 18)
        {
          if (shortcutActionType == 20)
          {
            v8 = [SBDestroyDisplayItemSwitcherEventResponse alloc];
            v9 = displayItem;
            v10 = 0;
LABEL_22:
            v11 = [(SBDestroyDisplayItemSwitcherEventResponse *)v8 initWithDisplayItem:v9 destroyAllScenesMatchingBundleIdentifier:v10];
            v26 = SBAppendSwitcherModifierResponse(v11, v5);
LABEL_37:

            v5 = v26;
            goto LABEL_38;
          }

          goto LABEL_38;
        }

        displayConfigurationsOfOtherDisplays = [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayConfigurationsOfOtherDisplays];
        firstObject = [displayConfigurationsOfOtherDisplays firstObject];
        v21 = firstObject;
        if (firstObject)
        {
          displayConfiguration = firstObject;
        }

        else
        {
          displayConfiguration = [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayConfiguration];
        }

        v23 = displayConfiguration;

        v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v28 = [(SBAppLayout *)self->_activeAppLayout leafAppLayoutForItem:displayItem];
        [(SBSwitcherTransitionRequest *)v11 setAppLayout:v28];

        [(SBSwitcherTransitionRequest *)v11 setDisplayConfiguration:v23];
        goto LABEL_30;
      }

      if (shortcutActionType == 33)
      {
        v8 = [SBDestroyDisplayItemSwitcherEventResponse alloc];
        v9 = displayItem;
        v10 = 1;
        goto LABEL_22;
      }

      if (shortcutActionType != 37)
      {
LABEL_38:
        [eventCopy handleWithReason:@"Active Floating App Layout"];

        goto LABEL_39;
      }

      v14 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByModifyingConfiguration:1];
      v15 = [v14 appLayoutByInsertingItem:displayItem inLayoutRole:1];

      v16 = [v15 appLayoutByRemovingItemInLayoutRole:2];

      v12 = [v16 appLayoutByRemovingItemInLayoutRole:4];

      v13 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v11 = v13;
LABEL_13:
      [(SBSwitcherTransitionRequest *)v13 setAppLayout:v12];

LABEL_31:
      if (!v11)
      {
        goto LABEL_38;
      }

      v29 = [eventCopy shortcutSource] - 1;
      if (v29 > 3)
      {
        v30 = 0;
      }

      else
      {
        v30 = qword_21F8A6DB0[v29];
      }

      [(SBSwitcherTransitionRequest *)v11 setSource:v30];
      v27 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v11 gestureInitiated:0];
      goto LABEL_36;
    }

    if (shortcutActionType <= 39)
    {
      if (shortcutActionType == 38)
      {
        v23 = [(SBAppLayout *)self->_fullScreenAppLayout itemForLayoutRole:1];
        v24 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByInsertingItem:displayItem inLayoutRole:1];
        v25 = [v24 appLayoutByInsertingItem:v23 inLayoutRole:2];

        v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        [(SBSwitcherTransitionRequest *)v11 setAppLayout:v25];

LABEL_30:
        goto LABEL_31;
      }

      v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v12 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByInsertingItem:displayItem inLayoutRole:2];
      v13 = v11;
      goto LABEL_13;
    }

    if (shortcutActionType == 40)
    {
      if (self->_floatingConfiguration == 2)
      {
        v17 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v11 = v17;
        v18 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      if (shortcutActionType != 41)
      {
        goto LABEL_38;
      }

      if (self->_floatingConfiguration == 1)
      {
        v17 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v11 = v17;
        v18 = 2;
LABEL_25:
        [(SBSwitcherTransitionRequest *)v17 setFloatingConfiguration:v18];
        goto LABEL_31;
      }
    }

    if ([eventCopy shortcutSource] == 2)
    {
      goto LABEL_38;
    }

    v11 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:displayItem];
    v27 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v11 level:3];
LABEL_36:
    v31 = v27;
    v26 = SBAppendSwitcherModifierResponse(v27, v5);

    v5 = v31;
    goto LABEL_37;
  }

LABEL_39:

  return v5;
}

- (BOOL)_isActiveAppLayoutAtIndex:(unint64_t)index
{
  selfCopy = self;
  appLayouts = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_activeAppLayout];
  return selfCopy;
}

@end