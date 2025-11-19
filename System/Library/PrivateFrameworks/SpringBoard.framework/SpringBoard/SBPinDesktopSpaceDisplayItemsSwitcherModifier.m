@interface SBPinDesktopSpaceDisplayItemsSwitcherModifier
+ (id)modifierForGestureWithSelectedDisplayItem:(id)a3 context:(id)a4;
+ (id)modifierForTransitionToAppLayout:(id)a3 context:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBPinDesktopSpaceDisplayItemsSwitcherModifier)initWithAppLayoutToPin:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)visibleAppLayouts;
@end

@implementation SBPinDesktopSpaceDisplayItemsSwitcherModifier

+ (id)modifierForGestureWithSelectedDisplayItem:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 windowManagementContext];
  v9 = [v7 appLayoutOnStage];
  if ([v8 isFlexibleWindowingEnabled])
  {
    v10 = [v8 isAutomaticStageCreationEnabled];
  }

  else
  {
    v10 = 1;
  }

  v11 = [v9 allItems];
  if ([v11 count] == 1)
  {
    v12 = [v7 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v9 ignoreOcclusion:1 ignoreCentering:0];
    v13 = [v12 count] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 containsItem:v6];
  v15 = 0;
  if (((v10 | v13) & 1) == 0 && v14)
  {
    v16 = [v7 appLayouts];
    v17 = [v7 desktopSpaceDisplayItems];
    v18 = [v17 mutableCopy];
    [v18 removeObject:v6];
    if ([v18 count])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__SBPinDesktopSpaceDisplayItemsSwitcherModifier_modifierForGestureWithSelectedDisplayItem_context___block_invoke;
      v22[3] = &unk_2783A8CB8;
      v23 = v18;
      v19 = [v16 bs_firstObjectPassingTest:v22];
      if (v19)
      {
        v20 = v19;
        v15 = [[a1 alloc] initWithAppLayoutToPin:v19];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (id)modifierForTransitionToAppLayout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 windowManagementContext];
  if ([v8 isFlexibleWindowingEnabled])
  {
    v9 = [v8 isAutomaticStageCreationEnabled];
  }

  else
  {
    v9 = 1;
  }

  v10 = [v6 allItems];
  if ([v10 count] == 1)
  {
    v11 = [v7 maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v6 ignoreOcclusion:1 ignoreCentering:0];
    v12 = [v11 count];

    if (v12)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = [v7 appLayouts];
      v15 = [v7 desktopSpaceDisplayItems];
      v16 = [v15 mutableCopy];
      v17 = [v6 itemForLayoutRole:1];
      [v16 removeObject:v17];

      if ([v16 count])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __90__SBPinDesktopSpaceDisplayItemsSwitcherModifier_modifierForTransitionToAppLayout_context___block_invoke;
        v23[3] = &unk_2783A8CB8;
        v18 = v16;
        v24 = v18;
        v19 = [v14 bs_firstObjectPassingTest:v23];
        if (v19)
        {
          v20 = v19;
          v21 = [[a1 alloc] initWithAppLayoutToPin:v19];

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (SBPinDesktopSpaceDisplayItemsSwitcherModifier)initWithAppLayoutToPin:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayoutToPin, a3);
    v8 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v5];
    fullScreenModifier = v7->_fullScreenModifier;
    v7->_fullScreenModifier = v8;
  }

  return v7;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutOnStage];
  v6 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  if (![v4 isEqual:v6] || (objc_msgSend(v4, "allItems"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bs_set"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "containsAnyItemFromSet:", v8), v8, v7, (v9 & 1) != 0))
  {
    v19.receiver = self;
    v19.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    v10 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v19 appLayoutContainingAppLayout:v4];
LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  if (!v5)
  {
    v10 = v6;
    goto LABEL_4;
  }

  v11 = v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v6 allItems];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      v18 = v11;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v11 = [v18 appLayoutByInsertingItem:*(*(&v20 + 1) + 8 * v17)];

        ++v17;
        v18 = v11;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

LABEL_5:

  return v11;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v7.receiver = self;
  v7.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  v4 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 appLayoutsToCacheSnapshots];
  if (([v4 containsObject:v3] & 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:v3];

    v4 = v5;
  }

  return v4;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v3 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v7.receiver = self;
  v7.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  v4 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 appLayoutsToCacheFullsizeSnapshots];
  if (([v4 containsObject:v3] & 1) == 0)
  {
    v5 = [v4 arrayByAddingObject:v3];

    v4 = v5;
  }

  return v4;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4010000000;
    v31 = &unk_21F9DA6A3;
    v32 = 0u;
    v33 = 0u;
    v9 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForIndex___block_invoke;
    v24[3] = &unk_2783AA618;
    v26 = &v28;
    v10 = v9;
    v25 = v10;
    v27 = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v10 usingBlock:v24];
    v11 = v29[4];
    v12 = v29[5];
    v13 = v29[6];
    v14 = v29[7];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v23 cornerRadiiForIndex:a3];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  result.topRight = v22;
  result.bottomRight = v21;
  result.bottomLeft = v20;
  result.topLeft = v19;
  return result;
}

uint64_t __69__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cornerRadiiForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v12 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v41 = &unk_21F9DA6A3;
    v42 = 0u;
    v43 = 0u;
    v14 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __102__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
    v29[3] = &unk_2783AA640;
    v32 = &v38;
    v15 = v14;
    v30 = v15;
    v33 = a3;
    v31 = v11;
    v34 = topLeft;
    v35 = bottomLeft;
    v36 = bottomRight;
    v37 = topRight;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v15 usingBlock:v29];
    v16 = v39[4];
    v17 = v39[5];
    v18 = v39[6];
    v19 = v39[7];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v28.receiver = self;
    v28.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v28 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
  }

  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  result.topRight = v27;
  result.bottomRight = v26;
  result.bottomLeft = v25;
  result.topLeft = v24;
  return result;
}

uint64_t __102__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cornerRadiiForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withCornerRadii:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4010000000;
    v31 = &unk_21F9DA6A3;
    v32 = 0u;
    v33 = 0u;
    v9 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__SBPinDesktopSpaceDisplayItemsSwitcherModifier_frameForIndex___block_invoke;
    v24[3] = &unk_2783AA618;
    v26 = &v28;
    v10 = v9;
    v25 = v10;
    v27 = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v10 usingBlock:v24];
    v11 = v29[4];
    v12 = v29[5];
    v13 = v29[6];
    v14 = v29[7];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v23 frameForIndex:a3];
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

uint64_t __63__SBPinDesktopSpaceDisplayItemsSwitcherModifier_frameForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) frameForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a4];

  v9 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v11 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__SBPinDesktopSpaceDisplayItemsSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
    v17[3] = &unk_2783AA6B8;
    v19 = &v22;
    v12 = v11;
    v18 = v12;
    v20 = a3;
    v21 = a4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v12 usingBlock:v17];
    v13 = v23[3];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v16 shadowOpacityForLayoutRole:a3 atIndex:a4];
    v13 = v14;
  }

  return v13;
}

uint64_t __84__SBPinDesktopSpaceDisplayItemsSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shadowOpacityForLayoutRole:*(a1 + 48) atIndex:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  v3 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v5 = [v3 setByAddingObject:v4];

  return v5;
}

@end