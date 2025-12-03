@interface SBWindowingModifierBase
- (id)handleEvent:(id)event;
- (id)topMostItemsByAddingAppLayoutAndAccessories:(id)accessories toTopMostItems:(id)items orderFront:(BOOL)front;
- (void)willPerformAsTemporaryChildModifier;
@end

@implementation SBWindowingModifierBase

- (id)handleEvent:(id)event
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWindowingModifier.m" lineNumber:729 description:@"event dispatch unsupported. are you calling super? use activities instead"];

  return 0;
}

- (void)willPerformAsTemporaryChildModifier
{
  if (!self->_hasPerformedLayoutViewModelsAsTemporaryChildAtLeastOnce || ![(SBWindowingModifierBase *)self isStaticTemporaryChildModifier])
  {
    self->_hasPerformedLayoutViewModelsAsTemporaryChildAtLeastOnce = 1;

    [(SBWindowingModifierBase *)self layoutViewModelsIfNeeded];
  }
}

- (id)topMostItemsByAddingAppLayoutAndAccessories:(id)accessories toTopMostItems:(id)items orderFront:(BOOL)front
{
  frontCopy = front;
  v31[1] = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  itemsCopy = items;
  visibleSplitViewHandleNubViews = [(SBWindowingModifierBase *)self visibleSplitViewHandleNubViews];
  if ([visibleSplitViewHandleNubViews count])
  {
    v11 = objc_opt_new();
    v12 = [(SBWindowingModifierBase *)self zOrderedItemsInAppLayout:accessoriesCopy];
    v13 = [accessoriesCopy leafAppLayoutsFromDisplayItems:v12];

    visibleSplitViewHandleDimmingViews = [(SBWindowingModifierBase *)self visibleSplitViewHandleDimmingViews];
    [v11 addObjectsFromArray:v13];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke;
    v27[3] = &unk_2783B76F0;
    v15 = accessoriesCopy;
    v28 = v15;
    v16 = visibleSplitViewHandleDimmingViews;
    v29 = v16;
    v17 = v11;
    v30 = v17;
    [visibleSplitViewHandleNubViews enumerateObjectsUsingBlock:v27];
    if (frontCopy)
    {
      v18 = [v17 arrayByAddingObjectsFromArray:itemsCopy];
    }

    else
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_4;
      v25 = &unk_2783AEA98;
      v26 = v15;
      v19 = [itemsCopy bs_filter:&v22];

      v18 = [v19 arrayByAddingObjectsFromArray:{v17, v22, v23, v24, v25}];

      itemsCopy = v19;
    }
  }

  else if (frontCopy)
  {
    v18 = [itemsCopy sb_arrayByInsertingOrMovingObject:accessoriesCopy toIndex:0];
  }

  else
  {
    v31[0] = accessoriesCopy;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v18 = [v20 arrayByAddingObjectsFromArray:itemsCopy];
  }

  return v18;
}

void __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayItems];
  v5 = *(a1 + 32);
  v6 = [v4 bs_set];
  LODWORD(v5) = [v5 containsAnyItemFromSet:v6];

  if (v5)
  {
    v7 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_2;
    v17[3] = &unk_2783AEBD8;
    v8 = v4;
    v18 = v8;
    v9 = [v7 bs_firstObjectPassingTest:v17];
    v10 = *(a1 + 48);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_3;
    v15 = &unk_2783B76C8;
    v16 = v8;
    v11 = [v10 indexesOfObjectsPassingTest:&v12];
    [*(a1 + 48) insertObject:v9 atIndex:{objc_msgSend(v11, "lastIndex", v12, v13, v14, v15) + 1}];
    [*(a1 + 48) insertObject:v3 atIndex:{objc_msgSend(v11, "firstIndex")}];
  }
}

uint64_t __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 displayItems];
  v3 = BSEqualArrays();

  return v3;
}

uint64_t __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAppLayout])
  {
    v4 = *(a1 + 32);
    v5 = [v3 appLayout];
    v6 = [v5 allItems];
    v7 = [v6 firstObject];
    v8 = [v4 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __97__SBWindowingModifierBase_topMostItemsByAddingAppLayoutAndAccessories_toTopMostItems_orderFront___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAppLayout])
  {
    v4 = *(a1 + 32);
    v5 = [v3 appLayout];
    v6 = ([v4 isOrContainsAppLayout:v5] & 1) == 0 && objc_msgSend(v3, "switcherLayoutElementType") != 10 && objc_msgSend(v3, "switcherLayoutElementType") != 11;
  }

  else
  {
    v6 = [v3 switcherLayoutElementType] != 10 && objc_msgSend(v3, "switcherLayoutElementType") != 11;
  }

  return v6;
}

@end