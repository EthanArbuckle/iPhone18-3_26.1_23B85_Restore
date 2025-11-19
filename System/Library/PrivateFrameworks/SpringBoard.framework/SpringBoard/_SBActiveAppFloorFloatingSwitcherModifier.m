@interface _SBActiveAppFloorFloatingSwitcherModifier
- (BOOL)_isActiveAppLayoutAtIndex:(unint64_t)a3;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_SBActiveAppFloorFloatingSwitcherModifier)initWithActiveAppLayout:(id)a3 fullScreenAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 environmentMode:(int64_t)a6;
- (char)activityModeForAppLayout:(id)a3;
- (char)jetsamModeForAppLayout:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSwitcherShortcutActionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)a3;
- (int64_t)selectedActionTypeForLeafAppLayout:(id)a3;
- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)a3;
- (int64_t)touchBehaviorForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)transactionCompletionOptions;
@end

@implementation _SBActiveAppFloorFloatingSwitcherModifier

- (_SBActiveAppFloorFloatingSwitcherModifier)initWithActiveAppLayout:(id)a3 fullScreenAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 environmentMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_activeAppLayout, a3);
    objc_storeStrong(&v14->_fullScreenAppLayout, a4);
    v14->_floatingConfiguration = a5;
    v14->_environmentMode = a6;
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

- (CGRect)frameForShelf:(id)a3
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(_SBActiveAppFloorFloatingSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v5 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self _isActiveAppLayoutAtIndex:a5, a4];
  result = 0.0;
  if (v5)
  {
    return 1.0;
  }

  return result;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
{
  result = 1.0;
  if (self->_floatingConfiguration == 1)
  {
    return -1.0;
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v3 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self medusaSettings];
  [v3 cornerRadiusForFloatingApps];
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

- (int64_t)touchBehaviorForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if ([a4 isEqual:self->_activeAppLayout])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
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

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
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

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)a3
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
  v3 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self slideOverTongueLayoutElement];
  activeAppLayout = self->_activeAppLayout;
  v5 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  v6 = v5;
  if (activeAppLayout)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (!v7)
  {
    v8 = [v5 mutableCopy];

    [v8 insertObject:v3 atIndex:0];
    v6 = v8;
  }

  return v6;
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self isReduceMotionEnabled];

    if (v4)
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

- (char)jetsamModeForAppLayout:(id)a3
{
  if (self->_activeAppLayout == a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  return [(_SBActiveAppFloorFloatingSwitcherModifier *)&v6 jetsamModeForAppLayout:?];
}

- (char)activityModeForAppLayout:(id)a3
{
  if (self->_activeAppLayout == a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  return [(_SBActiveAppFloorFloatingSwitcherModifier *)&v6 activityModeForAppLayout:?];
}

- (int64_t)selectedActionTypeForLeafAppLayout:(id)a3
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

- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)a3
{
  v4 = [a3 allItems];
  v5 = [v4 firstObject];

  v6 = [(SBAppLayout *)self->_fullScreenAppLayout itemForLayoutRole:1];
  [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayItemSupportsMedusa:v6];

  if ([(_SBActiveAppFloorFloatingSwitcherModifier *)self displayItemDisablesKillingInSwitcher:v5])
  {
    v7 = 0xFFFFFFFF80000000;
  }

  else
  {
    v7 = -2146435072;
  }

  if ([(_SBActiveAppFloorFloatingSwitcherModifier *)self hasMultipleDisplays])
  {
    v8 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self isDisplayEmbedded];
    v9 = 0x80000;
    if (v8)
    {
      v9 = 0x40000;
    }

    v7 |= v9;
  }

  return v7;
}

- (id)handleSwitcherShortcutActionEvent:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _SBActiveAppFloorFloatingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v33 handleSwitcherShortcutActionEvent:v4];
  if (([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 displayItem];
    v7 = [v4 shortcutActionType];
    if (v7 <= 37)
    {
      if (v7 <= 32)
      {
        if (v7 != 18)
        {
          if (v7 == 20)
          {
            v8 = [SBDestroyDisplayItemSwitcherEventResponse alloc];
            v9 = v6;
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

        v19 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayConfigurationsOfOtherDisplays];
        v20 = [v19 firstObject];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self displayConfiguration];
        }

        v23 = v22;

        v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v28 = [(SBAppLayout *)self->_activeAppLayout leafAppLayoutForItem:v6];
        [(SBSwitcherTransitionRequest *)v11 setAppLayout:v28];

        [(SBSwitcherTransitionRequest *)v11 setDisplayConfiguration:v23];
        goto LABEL_30;
      }

      if (v7 == 33)
      {
        v8 = [SBDestroyDisplayItemSwitcherEventResponse alloc];
        v9 = v6;
        v10 = 1;
        goto LABEL_22;
      }

      if (v7 != 37)
      {
LABEL_38:
        [v4 handleWithReason:@"Active Floating App Layout"];

        goto LABEL_39;
      }

      v14 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByModifyingConfiguration:1];
      v15 = [v14 appLayoutByInsertingItem:v6 inLayoutRole:1];

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

      v29 = [v4 shortcutSource] - 1;
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

    if (v7 <= 39)
    {
      if (v7 == 38)
      {
        v23 = [(SBAppLayout *)self->_fullScreenAppLayout itemForLayoutRole:1];
        v24 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByInsertingItem:v6 inLayoutRole:1];
        v25 = [v24 appLayoutByInsertingItem:v23 inLayoutRole:2];

        v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        [(SBSwitcherTransitionRequest *)v11 setAppLayout:v25];

LABEL_30:
        goto LABEL_31;
      }

      v11 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v12 = [(SBAppLayout *)self->_fullScreenAppLayout appLayoutByInsertingItem:v6 inLayoutRole:2];
      v13 = v11;
      goto LABEL_13;
    }

    if (v7 == 40)
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
      if (v7 != 41)
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

    if ([v4 shortcutSource] == 2)
    {
      goto LABEL_38;
    }

    v11 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:v6];
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

- (BOOL)_isActiveAppLayoutAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(_SBActiveAppFloorFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_activeAppLayout];
  return v4;
}

@end