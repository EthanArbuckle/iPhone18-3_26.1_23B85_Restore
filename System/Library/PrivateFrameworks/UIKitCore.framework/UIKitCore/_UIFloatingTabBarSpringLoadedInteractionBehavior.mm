@interface _UIFloatingTabBarSpringLoadedInteractionBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (_UIFloatingTabBar)tabBar;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UIFloatingTabBarSpringLoadedInteractionBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  contextCopy = context;
  tabBar = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
  tabModel = [tabBar tabModel];
  isEditing = [tabModel isEditing];

  if ((isEditing & 1) == 0)
  {
    tabBar2 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
    pinnedItemsView = [tabBar2 pinnedItemsView];
    [contextCopy locationInView:pinnedItemsView];
    v13 = v12;
    v15 = v14;

    tabBar3 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
    pinnedItemsView2 = [tabBar3 pinnedItemsView];
    v18 = [pinnedItemsView2 itemIndexForItemAtLocation:{v13, v15}];

    targetItem = [contextCopy targetItem];
    tabBar4 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
    v21 = tabBar4;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      collectionView = [tabBar4 collectionView];
      [contextCopy locationInView:collectionView];
      v24 = v23;
      v26 = v25;

      tabBar5 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
      collectionView2 = [tabBar5 collectionView];
      [collectionView2 bounds];
      v43.x = v24;
      v43.y = v26;
      v29 = CGRectContainsPoint(v44, v43);

      if (!v29)
      {
        tabForSelection = 0;
LABEL_17:
        v32 = 0;
        goto LABEL_18;
      }

      tabBar6 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
      collectionView3 = [tabBar6 collectionView];
      v32 = [collectionView3 indexPathForItemAtPoint:{v24, v26}];

      tabBar7 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
      dataSource = [tabBar7 dataSource];
      v35 = [dataSource itemIdentifierForIndexPath:v32];

      tabForSelection = [v35 tabForSelection];

      if (!tabForSelection)
      {
        goto LABEL_18;
      }
    }

    else
    {
      pinnedItemsView3 = [tabBar4 pinnedItemsView];
      tabForSelection = [pinnedItemsView3 tabForSelectionAtItemIndex:v18];

      v32 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:3];
      if (!tabForSelection)
      {
LABEL_18:
        isSpringLoaded = 0;
        goto LABEL_19;
      }
    }

    [contextCopy setTargetItem:v32];
    if (!targetItem)
    {
      goto LABEL_15;
    }

    v38 = targetItem;
    v39 = v32;
    v40 = v39;
    if (v38 == v39)
    {

      goto LABEL_15;
    }

    if (v39)
    {
      v41 = [v38 isEqual:v39];

      if (!v41)
      {
        isSpringLoaded = 0;
        v32 = v40;
LABEL_19:

        goto LABEL_20;
      }

LABEL_15:
      isSpringLoaded = [tabForSelection isSpringLoaded];
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  isSpringLoaded = 0;
LABEL_20:

  return isSpringLoaded;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  interactionCopy = interaction;
  [contextCopy state];
  targetItem = [contextCopy targetItem];
  tabBar = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
  v9 = [tabBar _viewForItemAtIndexPath:targetItem];
  [contextCopy setTargetView:v9];

  tabBar2 = [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)self tabBar];
  blinkEffect = [tabBar2 blinkEffect];
  [blinkEffect interaction:interactionCopy didChangeWithContext:contextCopy];
}

- (_UIFloatingTabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

@end