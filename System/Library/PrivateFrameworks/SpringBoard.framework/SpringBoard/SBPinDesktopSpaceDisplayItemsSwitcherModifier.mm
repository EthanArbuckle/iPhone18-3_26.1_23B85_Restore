@interface SBPinDesktopSpaceDisplayItemsSwitcherModifier
+ (id)modifierForGestureWithSelectedDisplayItem:(id)item context:(id)context;
+ (id)modifierForTransitionToAppLayout:(id)layout context:(id)context;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBPinDesktopSpaceDisplayItemsSwitcherModifier)initWithAppLayoutToPin:(id)pin;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)visibleAppLayouts;
@end

@implementation SBPinDesktopSpaceDisplayItemsSwitcherModifier

+ (id)modifierForGestureWithSelectedDisplayItem:(id)item context:(id)context
{
  itemCopy = item;
  contextCopy = context;
  windowManagementContext = [contextCopy windowManagementContext];
  appLayoutOnStage = [contextCopy appLayoutOnStage];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  }

  else
  {
    isAutomaticStageCreationEnabled = 1;
  }

  allItems = [appLayoutOnStage allItems];
  if ([allItems count] == 1)
  {
    v12 = [contextCopy maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:appLayoutOnStage ignoreOcclusion:1 ignoreCentering:0];
    v13 = [v12 count] == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = [appLayoutOnStage containsItem:itemCopy];
  v15 = 0;
  if (((isAutomaticStageCreationEnabled | v13) & 1) == 0 && v14)
  {
    appLayouts = [contextCopy appLayouts];
    desktopSpaceDisplayItems = [contextCopy desktopSpaceDisplayItems];
    v18 = [desktopSpaceDisplayItems mutableCopy];
    [v18 removeObject:itemCopy];
    if ([v18 count])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __99__SBPinDesktopSpaceDisplayItemsSwitcherModifier_modifierForGestureWithSelectedDisplayItem_context___block_invoke;
      v22[3] = &unk_2783A8CB8;
      v23 = v18;
      v19 = [appLayouts bs_firstObjectPassingTest:v22];
      if (v19)
      {
        v20 = v19;
        v15 = [[self alloc] initWithAppLayoutToPin:v19];
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

+ (id)modifierForTransitionToAppLayout:(id)layout context:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  windowManagementContext = [contextCopy windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
  }

  else
  {
    isAutomaticStageCreationEnabled = 1;
  }

  allItems = [layoutCopy allItems];
  if ([allItems count] == 1)
  {
    v11 = [contextCopy maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:layoutCopy ignoreOcclusion:1 ignoreCentering:0];
    v12 = [v11 count];

    if (v12)
    {
      v13 = isAutomaticStageCreationEnabled;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      appLayouts = [contextCopy appLayouts];
      desktopSpaceDisplayItems = [contextCopy desktopSpaceDisplayItems];
      v16 = [desktopSpaceDisplayItems mutableCopy];
      v17 = [layoutCopy itemForLayoutRole:1];
      [v16 removeObject:v17];

      if ([v16 count])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __90__SBPinDesktopSpaceDisplayItemsSwitcherModifier_modifierForTransitionToAppLayout_context___block_invoke;
        v23[3] = &unk_2783A8CB8;
        v18 = v16;
        v24 = v18;
        v19 = [appLayouts bs_firstObjectPassingTest:v23];
        if (v19)
        {
          v20 = v19;
          v21 = [[self alloc] initWithAppLayoutToPin:v19];

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

- (SBPinDesktopSpaceDisplayItemsSwitcherModifier)initWithAppLayoutToPin:(id)pin
{
  pinCopy = pin;
  v11.receiver = self;
  v11.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayoutToPin, pin);
    v8 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:pinCopy];
    fullScreenModifier = v7->_fullScreenModifier;
    v7->_fullScreenModifier = v8;
  }

  return v7;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  v25 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  appLayoutOnStage = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutOnStage];
  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  if (![layoutCopy isEqual:appLayoutToPin] || (objc_msgSend(layoutCopy, "allItems"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bs_set"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(appLayoutOnStage, "containsAnyItemFromSet:", v8), v8, v7, (v9 & 1) != 0))
  {
    v19.receiver = self;
    v19.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    v10 = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v19 appLayoutContainingAppLayout:layoutCopy];
LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  if (!appLayoutOnStage)
  {
    v10 = appLayoutToPin;
    goto LABEL_4;
  }

  v11 = appLayoutOnStage;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allItems = [appLayoutToPin allItems];
  v14 = [allItems countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allItems);
        }

        v11 = [v18 appLayoutByInsertingItem:*(*(&v20 + 1) + 8 * v17)];

        ++v17;
        v18 = v11;
      }

      while (v15 != v17);
      v15 = [allItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

LABEL_5:

  return v11;
}

- (id)appLayoutsToCacheSnapshots
{
  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v7.receiver = self;
  v7.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  appLayoutsToCacheSnapshots = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 appLayoutsToCacheSnapshots];
  if (([appLayoutsToCacheSnapshots containsObject:appLayoutToPin] & 1) == 0)
  {
    v5 = [appLayoutsToCacheSnapshots arrayByAddingObject:appLayoutToPin];

    appLayoutsToCacheSnapshots = v5;
  }

  return appLayoutsToCacheSnapshots;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v7.receiver = self;
  v7.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
  appLayoutsToCacheFullsizeSnapshots = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 appLayoutsToCacheFullsizeSnapshots];
  if (([appLayoutsToCacheFullsizeSnapshots containsObject:appLayoutToPin] & 1) == 0)
  {
    v5 = [appLayoutsToCacheFullsizeSnapshots arrayByAddingObject:appLayoutToPin];

    appLayoutsToCacheFullsizeSnapshots = v5;
  }

  return appLayoutsToCacheFullsizeSnapshots;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v8 = [v6 isEqual:appLayoutToPin];

  if (v8)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4010000000;
    v31 = &unk_21F9DA6A3;
    v32 = 0u;
    v33 = 0u;
    fullScreenModifier = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForIndex___block_invoke;
    v24[3] = &unk_2783AA618;
    v26 = &v28;
    v10 = fullScreenModifier;
    v25 = v10;
    indexCopy = index;
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
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v23 cornerRadiiForIndex:index];
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

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v13 = [layoutCopy isEqual:appLayoutToPin];

  if (v13)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v41 = &unk_21F9DA6A3;
    v42 = 0u;
    v43 = 0u;
    fullScreenModifier = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __102__SBPinDesktopSpaceDisplayItemsSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
    v29[3] = &unk_2783AA640;
    v32 = &v38;
    v15 = fullScreenModifier;
    v30 = v15;
    roleCopy = role;
    v31 = layoutCopy;
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
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v28 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
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

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v8 = [v6 isEqual:appLayoutToPin];

  if (v8)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x4010000000;
    v31 = &unk_21F9DA6A3;
    v32 = 0u;
    v33 = 0u;
    fullScreenModifier = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__SBPinDesktopSpaceDisplayItemsSwitcherModifier_frameForIndex___block_invoke;
    v24[3] = &unk_2783AA618;
    v26 = &v28;
    v10 = fullScreenModifier;
    v25 = v10;
    indexCopy = index;
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
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v23 frameForIndex:index];
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

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v10 = [v8 isEqual:appLayoutToPin];

  if (v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    fullScreenModifier = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self fullScreenModifier];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__SBPinDesktopSpaceDisplayItemsSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
    v17[3] = &unk_2783AA6B8;
    v19 = &v22;
    v12 = fullScreenModifier;
    v18 = v12;
    roleCopy = role;
    indexCopy = index;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v12 usingBlock:v17];
    v13 = v23[3];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SBPinDesktopSpaceDisplayItemsSwitcherModifier;
    [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v16 shadowOpacityForLayoutRole:role atIndex:index];
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
  visibleAppLayouts = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)&v7 visibleAppLayouts];
  appLayoutToPin = [(SBPinDesktopSpaceDisplayItemsSwitcherModifier *)self appLayoutToPin];
  v5 = [visibleAppLayouts setByAddingObject:appLayoutToPin];

  return v5;
}

@end