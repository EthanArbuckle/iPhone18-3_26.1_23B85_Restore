@interface SBAppSwitcherModel
+ (NSString)appSwitcherHeaderIconImageDescriptorName;
- (SBAppSwitcherModel)init;
- (SBAppSwitcherModel)initWithApplicationController:(id)controller recents:(id)recents;
- (SBAppSwitcherModelDelegate)delegate;
- (id)appLayoutContainingDisplayItem:(id)item includingHiddenAppLayouts:(BOOL)layouts;
- (id)recentAppLayouts:(id)layouts willAddAppLayout:(id)layout replacingAppLayouts:(id)appLayouts removingAppLayouts:(id)removingAppLayouts;
- (id)recentAppLayouts:(id)layouts willReplaceAppLayout:(id)layout proposedReplacementAppLayout:(id)appLayout;
- (int64_t)_adjustedIndexForVisibleAppLayoutAtIndex:(unint64_t)index;
- (unint64_t)indexOfDisplayItem:(id)item visible:(BOOL)visible;
- (void)clearAppLayoutsSnapshot;
- (void)dealloc;
- (void)modifyWithDropContext:(id)context;
- (void)recentAppLayouts:(id)layouts didMoveAppLayoutToFront:(id)front;
- (void)recentAppLayouts:(id)layouts didRemoveAppLayoutForFallingOffList:(id)list;
- (void)takeAppLayoutsSnapshot;
@end

@implementation SBAppSwitcherModel

- (void)clearAppLayoutsSnapshot
{
  appLayoutsSnapshot = self->_appLayoutsSnapshot;
  self->_appLayoutsSnapshot = 0;
}

- (SBAppSwitcherModel)initWithApplicationController:(id)controller recents:(id)recents
{
  controllerCopy = controller;
  recentsCopy = recents;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherModel;
  v8 = [(SBAppSwitcherModel *)&v17 init];
  if (v8)
  {
    kdebug_trace();
    objc_storeStrong(&v8->_recents, recents);
    [(SBRecentAppLayouts *)v8->_recents setDelegate:v8];
    objc_initWeak(&location, v8);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    recents = v8->_recents;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBAppSwitcherModel_initWithApplicationController_recents___block_invoke;
    v14[3] = &unk_2783AFD98;
    objc_copyWeak(&v15, &location);
    v11 = [defaultCenter addObserverForName:@"SBRecentAppLayoutsDidChangeNotification" object:recents queue:0 usingBlock:v14];
    recentsChangedNotificationObserver = v8->_recentsChangedNotificationObserver;
    v8->_recentsChangedNotificationObserver = v11;

    kdebug_trace();
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __60__SBAppSwitcherModel_initWithApplicationController_recents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"SBAppSwitcherModelDidChangeNotification" object:WeakRetained];
}

- (SBAppSwitcherModel)init
{
  v3 = +[SBApplicationController sharedInstance];
  v4 = objc_alloc_init(SBRecentAppLayouts);
  v5 = [(SBAppSwitcherModel *)self initWithApplicationController:v3 recents:v4];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_recentsChangedNotificationObserver];

  v4.receiver = self;
  v4.super_class = SBAppSwitcherModel;
  [(SBAppSwitcherModel *)&v4 dealloc];
}

+ (NSString)appSwitcherHeaderIconImageDescriptorName
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v2 = MEMORY[0x277D1B238];
    }

    else
    {
      v2 = MEMORY[0x277D1B240];
    }

    v6 = *v2;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v5 = MEMORY[0x277D1B238];
    if (userInterfaceIdiom != 1)
    {
      v5 = MEMORY[0x277D1B240];
    }

    v6 = *v5;
  }

  return v6;
}

- (void)modifyWithDropContext:(id)context
{
  contextCopy = context;
  currentDropRegion = [contextCopy currentDropRegion];
  currentDropAction = [contextCopy currentDropAction];
  if ((SBSwitcherDropRegionWarrantsModelUpdate(currentDropRegion) & 1) == 0)
  {
    [(SBAppSwitcherModel *)a2 modifyWithDropContext:?];
  }

  draggingAppLayout = [contextCopy draggingAppLayout];
  v8 = [draggingAppLayout itemForLayoutRole:{objc_msgSend(contextCopy, "draggingLayoutRole")}];
  intersectingAppLayout = [contextCopy intersectingAppLayout];
  v10 = [intersectingAppLayout itemForLayoutRole:1];
  v45 = v8;
  v11 = [(SBAppSwitcherModel *)self indexOfDisplayItem:v8 visible:1];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBAppSwitcherModel *)a2 modifyWithDropContext:?];
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v44 = v10;
  v57 = [(SBAppSwitcherModel *)self indexOfDisplayItem:v10 visible:1];
  if (currentDropAction != 3 && currentDropAction != 5 && v55[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:140 description:@"Couldn't find the target app layout's index"];
  }

  v12 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:0];
  lastObject = [v12 lastObject];
  v14 = [lastObject isOrContainsAppLayout:intersectingAppLayout];

  if (currentDropAction <= 4)
  {
    if (currentDropAction > 2)
    {
      if (currentDropAction == 3)
      {
        [(SBAppSwitcherModel *)self remove:draggingAppLayout];
        closestVisibleAppLayout = [contextCopy closestVisibleAppLayout];
        finalTargetAppLayout2 = [closestVisibleAppLayout itemForLayoutRole:1];

        v23 = [(SBAppSwitcherModel *)self indexOfDisplayItem:finalTargetAppLayout2 visible:0];
        finalTargetAppLayout = [contextCopy finalTargetAppLayout];
        if ([finalTargetAppLayout isSplitConfiguration])
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:172 description:@"Expected full configuration layout"];
        }

        [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout atIndex:v23];
        goto LABEL_51;
      }

      finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:draggingAppLayout withAppLayout:finalTargetAppLayout2];
    }

    else
    {
      if (currentDropAction == 1)
      {
        if ([draggingAppLayout isSplitConfiguration])
        {
          remainingAppLayout = [contextCopy remainingAppLayout];
          [(SBAppSwitcherModel *)self replaceAppLayout:draggingAppLayout withAppLayout:remainingAppLayout];
        }

        else
        {
          [(SBAppSwitcherModel *)self remove:draggingAppLayout];
        }

        finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
        [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout2 atIndex:0];
        goto LABEL_52;
      }

      if (currentDropAction != 2)
      {
        goto LABEL_53;
      }

      [(SBAppSwitcherModel *)self remove:draggingAppLayout];
      finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:intersectingAppLayout withAppLayout:finalTargetAppLayout2];
      if ([intersectingAppLayout isSplitConfiguration])
      {
        finalTargetAppLayout = [contextCopy evictedAppLayout];
        [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout afterAppLayout:finalTargetAppLayout2];
        goto LABEL_51;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  if (currentDropAction <= 6)
  {
    if (currentDropAction != 5)
    {
      evictedAppLayout = [contextCopy evictedAppLayout];

      if (evictedAppLayout)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:270 description:@"Full -> Full shouldn't have an evicted layout"];
      }

      remainingAppLayout2 = [contextCopy remainingAppLayout];

      if (remainingAppLayout2)
      {
        currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:271 description:@"Full -> Full shouldn't have a remaining layout"];
      }

      [(SBAppSwitcherModel *)self remove:draggingAppLayout];
      [(SBAppSwitcherModel *)self remove:intersectingAppLayout];
      if (v14 && ([draggingAppLayout isSplitConfiguration] & 1) == 0 && (objc_msgSend(intersectingAppLayout, "isSplitConfiguration") & 1) == 0)
      {
        --v55[3];
      }

      v20 = [(SBAppSwitcherModel *)self _adjustedIndexForVisibleAppLayoutAtIndex:v55[3]];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:282 description:@"Failed to find the adjusted insertion index"];
      }

      finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
      [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout2 atIndex:v20];
      goto LABEL_52;
    }

    closestVisibleAppLayout2 = [contextCopy closestVisibleAppLayout];
    finalTargetAppLayout2 = [closestVisibleAppLayout2 itemForLayoutRole:1];

    v34 = [(SBAppSwitcherModel *)self indexOfDisplayItem:finalTargetAppLayout2 visible:0];
    remainingAppLayout3 = [contextCopy remainingAppLayout];
    [(SBAppSwitcherModel *)self replaceAppLayout:draggingAppLayout withAppLayout:remainingAppLayout3];

    finalTargetAppLayout = [contextCopy finalTargetAppLayout];
    [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout atIndex:v34];
    goto LABEL_51;
  }

  switch(currentDropAction)
  {
    case 7:
      v24 = v55[3];
      finalTargetAppLayout3 = [contextCopy finalTargetAppLayout];
      v43 = v24;
      evictedAppLayout2 = [contextCopy evictedAppLayout];
      [(SBAppSwitcherModel *)self remove:draggingAppLayout];
      [(SBAppSwitcherModel *)self remove:intersectingAppLayout];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke;
      v50[3] = &unk_2783B24A0;
      v53 = &v54;
      v50[4] = self;
      v27 = evictedAppLayout2;
      v51 = v27;
      v28 = finalTargetAppLayout3;
      v52 = v28;
      v41 = MEMORY[0x223D6F7F0](v50);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke_2;
      v46[3] = &unk_2783B6880;
      v46[4] = self;
      v49 = &v54;
      finalTargetAppLayout2 = v28;
      v47 = finalTargetAppLayout2;
      finalTargetAppLayout = v27;
      v48 = finalTargetAppLayout;
      v29 = MEMORY[0x223D6F7F0](v46);
      if (v43 <= v11)
      {
        intersectingAppLayoutIsOnFirstRow = [contextCopy intersectingAppLayoutIsOnFirstRow];
        v30 = v41;
      }

      else
      {
        v30 = v41;
        v31 = v41;
        if (v14)
        {
LABEL_50:
          v31[2]();

          goto LABEL_51;
        }

        intersectingAppLayoutIsOnFirstRow = [contextCopy intersectingAppLayoutIsOnFirstRow];
      }

      if (intersectingAppLayoutIsOnFirstRow)
      {
        v31 = v29;
      }

      else
      {
        v31 = v30;
      }

      goto LABEL_50;
    case 8:
      finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:intersectingAppLayout withAppLayout:finalTargetAppLayout2];
      finalTargetAppLayout = [contextCopy remainingAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:draggingAppLayout withAppLayout:finalTargetAppLayout];
      goto LABEL_51;
    case 9:
      finalTargetAppLayout2 = [contextCopy finalTargetAppLayout];
      finalTargetAppLayout = [contextCopy evictedAppLayout];
      remainingAppLayout4 = [contextCopy remainingAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:draggingAppLayout withAppLayout:remainingAppLayout4];
      [(SBAppSwitcherModel *)self replaceAppLayout:intersectingAppLayout withAppLayout:finalTargetAppLayout2];
      [(SBAppSwitcherModel *)self addAppLayout:finalTargetAppLayout afterAppLayout:finalTargetAppLayout2];

LABEL_51:
      goto LABEL_52;
  }

LABEL_53:
  _Block_object_dispose(&v54, 8);
}

uint64_t __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addAppLayout:*(a1 + 40) atIndex:{objc_msgSend(*(a1 + 32), "_adjustedIndexForVisibleAppLayoutAtIndex:", *(*(*(a1 + 56) + 8) + 24) - 1)}];
  v2 = [*(a1 + 32) _adjustedIndexForVisibleAppLayoutAtIndex:*(*(*(a1 + 56) + 8) + 24)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 addAppLayout:v4 atIndex:v2];
}

uint64_t __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addAppLayout:*(a1 + 40) atIndex:{objc_msgSend(*(a1 + 32), "_adjustedIndexForVisibleAppLayoutAtIndex:", *(*(*(a1 + 56) + 8) + 24))}];
  v2 = [*(a1 + 32) _adjustedIndexForVisibleAppLayoutAtIndex:*(*(*(a1 + 56) + 8) + 24) + 1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);

  return [v3 addAppLayout:v4 atIndex:v2];
}

- (unint64_t)indexOfDisplayItem:(id)item visible:(BOOL)visible
{
  visibleCopy = visible;
  itemCopy = item;
  v7 = [(SBRecentAppLayouts *)self->_recents recentsIncludingHiddenAppLayouts:!visibleCopy];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SBAppSwitcherModel_indexOfDisplayItem_visible___block_invoke;
  v11[3] = &unk_2783B19E8;
  v8 = itemCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateObjectsUsingBlock:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __49__SBAppSwitcherModel_indexOfDisplayItem_visible___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsItem:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)appLayoutContainingDisplayItem:(id)item includingHiddenAppLayouts:(BOOL)layouts
{
  layoutsCopy = layouts;
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(SBRecentAppLayouts *)self->_recents recentsIncludingHiddenAppLayouts:layoutsCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 containsItem:{itemCopy, v13}])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (int64_t)_adjustedIndexForVisibleAppLayoutAtIndex:(unint64_t)index
{
  v5 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:1];
  v6 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:0];
  if ([v6 count] <= index)
  {
    v9 = [v5 count];
  }

  else
  {
    v7 = [v6 objectAtIndex:index];
    v8 = [v7 itemForLayoutRole:1];
    v9 = [(SBAppSwitcherModel *)self indexOfDisplayItem:v8 visible:0];
  }

  return v9;
}

- (void)takeAppLayoutsSnapshot
{
  v3 = [(SBRecentAppLayouts *)self->_recents recentsIncludingHiddenAppLayouts:1];
  appLayoutsSnapshot = self->_appLayoutsSnapshot;
  self->_appLayoutsSnapshot = v3;
}

- (void)recentAppLayouts:(id)layouts didRemoveAppLayoutForFallingOffList:(id)list
{
  listCopy = list;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appSwitcherModel:self didRemoveAppLayoutForFallingOffList:listCopy];
}

- (void)recentAppLayouts:(id)layouts didMoveAppLayoutToFront:(id)front
{
  frontCopy = front;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appSwitcherModel:self didMoveAppLayoutToFront:frontCopy];
}

- (id)recentAppLayouts:(id)layouts willReplaceAppLayout:(id)layout proposedReplacementAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained appSwitcherModel:self willReplaceAppLayout:layoutCopy proposedReplacementAppLayout:appLayoutCopy];
  }

  else
  {
    v11 = appLayoutCopy;
  }

  v12 = v11;

  return v12;
}

- (id)recentAppLayouts:(id)layouts willAddAppLayout:(id)layout replacingAppLayouts:(id)appLayouts removingAppLayouts:(id)removingAppLayouts
{
  layoutCopy = layout;
  appLayoutsCopy = appLayouts;
  removingAppLayoutsCopy = removingAppLayouts;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained appSwitcherModel:self willAddAppLayout:layoutCopy replacingAppLayouts:appLayoutsCopy removingAppLayouts:removingAppLayoutsCopy];
  }

  else
  {
    v14 = layoutCopy;
  }

  v15 = v14;

  return v15;
}

- (SBAppSwitcherModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)modifyWithDropContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSwitcherModel.m" lineNumber:123 description:@"Unsupported drop region provided to modifyWithDropContext."];
}

- (void)modifyWithDropContext:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSwitcherModel.m" lineNumber:134 description:@"Couldn't find the dragged app layout's index"];
}

@end