@interface SBAppSwitcherModel
+ (NSString)appSwitcherHeaderIconImageDescriptorName;
- (SBAppSwitcherModel)init;
- (SBAppSwitcherModel)initWithApplicationController:(id)a3 recents:(id)a4;
- (SBAppSwitcherModelDelegate)delegate;
- (id)appLayoutContainingDisplayItem:(id)a3 includingHiddenAppLayouts:(BOOL)a4;
- (id)recentAppLayouts:(id)a3 willAddAppLayout:(id)a4 replacingAppLayouts:(id)a5 removingAppLayouts:(id)a6;
- (id)recentAppLayouts:(id)a3 willReplaceAppLayout:(id)a4 proposedReplacementAppLayout:(id)a5;
- (int64_t)_adjustedIndexForVisibleAppLayoutAtIndex:(unint64_t)a3;
- (unint64_t)indexOfDisplayItem:(id)a3 visible:(BOOL)a4;
- (void)clearAppLayoutsSnapshot;
- (void)dealloc;
- (void)modifyWithDropContext:(id)a3;
- (void)recentAppLayouts:(id)a3 didMoveAppLayoutToFront:(id)a4;
- (void)recentAppLayouts:(id)a3 didRemoveAppLayoutForFallingOffList:(id)a4;
- (void)takeAppLayoutsSnapshot;
@end

@implementation SBAppSwitcherModel

- (void)clearAppLayoutsSnapshot
{
  appLayoutsSnapshot = self->_appLayoutsSnapshot;
  self->_appLayoutsSnapshot = 0;
}

- (SBAppSwitcherModel)initWithApplicationController:(id)a3 recents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherModel;
  v8 = [(SBAppSwitcherModel *)&v17 init];
  if (v8)
  {
    kdebug_trace();
    objc_storeStrong(&v8->_recents, a4);
    [(SBRecentAppLayouts *)v8->_recents setDelegate:v8];
    objc_initWeak(&location, v8);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    recents = v8->_recents;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__SBAppSwitcherModel_initWithApplicationController_recents___block_invoke;
    v14[3] = &unk_2783AFD98;
    objc_copyWeak(&v15, &location);
    v11 = [v9 addObserverForName:@"SBRecentAppLayoutsDidChangeNotification" object:recents queue:0 usingBlock:v14];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_recentsChangedNotificationObserver];

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
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];
    v5 = MEMORY[0x277D1B238];
    if (v4 != 1)
    {
      v5 = MEMORY[0x277D1B240];
    }

    v6 = *v5;
  }

  return v6;
}

- (void)modifyWithDropContext:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDropRegion];
  v6 = [v4 currentDropAction];
  if ((SBSwitcherDropRegionWarrantsModelUpdate(v5) & 1) == 0)
  {
    [(SBAppSwitcherModel *)a2 modifyWithDropContext:?];
  }

  v7 = [v4 draggingAppLayout];
  v8 = [v7 itemForLayoutRole:{objc_msgSend(v4, "draggingLayoutRole")}];
  v9 = [v4 intersectingAppLayout];
  v10 = [v9 itemForLayoutRole:1];
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
  if (v6 != 3 && v6 != 5 && v55[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:140 description:@"Couldn't find the target app layout's index"];
  }

  v12 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:0];
  v13 = [v12 lastObject];
  v14 = [v13 isOrContainsAppLayout:v9];

  if (v6 <= 4)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        [(SBAppSwitcherModel *)self remove:v7];
        v22 = [v4 closestVisibleAppLayout];
        v15 = [v22 itemForLayoutRole:1];

        v23 = [(SBAppSwitcherModel *)self indexOfDisplayItem:v15 visible:0];
        v16 = [v4 finalTargetAppLayout];
        if ([v16 isSplitConfiguration])
        {
          v40 = [MEMORY[0x277CCA890] currentHandler];
          [v40 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:172 description:@"Expected full configuration layout"];
        }

        [(SBAppSwitcherModel *)self addAppLayout:v16 atIndex:v23];
        goto LABEL_51;
      }

      v15 = [v4 finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:v7 withAppLayout:v15];
    }

    else
    {
      if (v6 == 1)
      {
        if ([v7 isSplitConfiguration])
        {
          v21 = [v4 remainingAppLayout];
          [(SBAppSwitcherModel *)self replaceAppLayout:v7 withAppLayout:v21];
        }

        else
        {
          [(SBAppSwitcherModel *)self remove:v7];
        }

        v15 = [v4 finalTargetAppLayout];
        [(SBAppSwitcherModel *)self addAppLayout:v15 atIndex:0];
        goto LABEL_52;
      }

      if (v6 != 2)
      {
        goto LABEL_53;
      }

      [(SBAppSwitcherModel *)self remove:v7];
      v15 = [v4 finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:v9 withAppLayout:v15];
      if ([v9 isSplitConfiguration])
      {
        v16 = [v4 evictedAppLayout];
        [(SBAppSwitcherModel *)self addAppLayout:v16 afterAppLayout:v15];
        goto LABEL_51;
      }
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v6 <= 6)
  {
    if (v6 != 5)
    {
      v18 = [v4 evictedAppLayout];

      if (v18)
      {
        v37 = [MEMORY[0x277CCA890] currentHandler];
        [v37 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:270 description:@"Full -> Full shouldn't have an evicted layout"];
      }

      v19 = [v4 remainingAppLayout];

      if (v19)
      {
        v38 = [MEMORY[0x277CCA890] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:271 description:@"Full -> Full shouldn't have a remaining layout"];
      }

      [(SBAppSwitcherModel *)self remove:v7];
      [(SBAppSwitcherModel *)self remove:v9];
      if (v14 && ([v7 isSplitConfiguration] & 1) == 0 && (objc_msgSend(v9, "isSplitConfiguration") & 1) == 0)
      {
        --v55[3];
      }

      v20 = [(SBAppSwitcherModel *)self _adjustedIndexForVisibleAppLayoutAtIndex:v55[3]];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = [MEMORY[0x277CCA890] currentHandler];
        [v39 handleFailureInMethod:a2 object:self file:@"SBAppSwitcherModel.m" lineNumber:282 description:@"Failed to find the adjusted insertion index"];
      }

      v15 = [v4 finalTargetAppLayout];
      [(SBAppSwitcherModel *)self addAppLayout:v15 atIndex:v20];
      goto LABEL_52;
    }

    v33 = [v4 closestVisibleAppLayout];
    v15 = [v33 itemForLayoutRole:1];

    v34 = [(SBAppSwitcherModel *)self indexOfDisplayItem:v15 visible:0];
    v35 = [v4 remainingAppLayout];
    [(SBAppSwitcherModel *)self replaceAppLayout:v7 withAppLayout:v35];

    v16 = [v4 finalTargetAppLayout];
    [(SBAppSwitcherModel *)self addAppLayout:v16 atIndex:v34];
    goto LABEL_51;
  }

  switch(v6)
  {
    case 7:
      v24 = v55[3];
      v25 = [v4 finalTargetAppLayout];
      v43 = v24;
      v26 = [v4 evictedAppLayout];
      [(SBAppSwitcherModel *)self remove:v7];
      [(SBAppSwitcherModel *)self remove:v9];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke;
      v50[3] = &unk_2783B24A0;
      v53 = &v54;
      v50[4] = self;
      v27 = v26;
      v51 = v27;
      v28 = v25;
      v52 = v28;
      v41 = MEMORY[0x223D6F7F0](v50);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __44__SBAppSwitcherModel_modifyWithDropContext___block_invoke_2;
      v46[3] = &unk_2783B6880;
      v46[4] = self;
      v49 = &v54;
      v15 = v28;
      v47 = v15;
      v16 = v27;
      v48 = v16;
      v29 = MEMORY[0x223D6F7F0](v46);
      if (v43 <= v11)
      {
        v32 = [v4 intersectingAppLayoutIsOnFirstRow];
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

        v32 = [v4 intersectingAppLayoutIsOnFirstRow];
      }

      if (v32)
      {
        v31 = v29;
      }

      else
      {
        v31 = v30;
      }

      goto LABEL_50;
    case 8:
      v15 = [v4 finalTargetAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:v9 withAppLayout:v15];
      v16 = [v4 remainingAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:v7 withAppLayout:v16];
      goto LABEL_51;
    case 9:
      v15 = [v4 finalTargetAppLayout];
      v16 = [v4 evictedAppLayout];
      v17 = [v4 remainingAppLayout];
      [(SBAppSwitcherModel *)self replaceAppLayout:v7 withAppLayout:v17];
      [(SBAppSwitcherModel *)self replaceAppLayout:v9 withAppLayout:v15];
      [(SBAppSwitcherModel *)self addAppLayout:v16 afterAppLayout:v15];

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

- (unint64_t)indexOfDisplayItem:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SBRecentAppLayouts *)self->_recents recentsIncludingHiddenAppLayouts:!v4];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SBAppSwitcherModel_indexOfDisplayItem_visible___block_invoke;
  v11[3] = &unk_2783B19E8;
  v8 = v6;
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

- (id)appLayoutContainingDisplayItem:(id)a3 includingHiddenAppLayouts:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SBRecentAppLayouts *)self->_recents recentsIncludingHiddenAppLayouts:v4];
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
        if ([v11 containsItem:{v6, v13}])
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

- (int64_t)_adjustedIndexForVisibleAppLayoutAtIndex:(unint64_t)a3
{
  v5 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:1];
  v6 = [(SBAppSwitcherModel *)self appLayoutsIncludingHiddenAppLayouts:0];
  if ([v6 count] <= a3)
  {
    v9 = [v5 count];
  }

  else
  {
    v7 = [v6 objectAtIndex:a3];
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

- (void)recentAppLayouts:(id)a3 didRemoveAppLayoutForFallingOffList:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appSwitcherModel:self didRemoveAppLayoutForFallingOffList:v5];
}

- (void)recentAppLayouts:(id)a3 didMoveAppLayoutToFront:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appSwitcherModel:self didMoveAppLayoutToFront:v5];
}

- (id)recentAppLayouts:(id)a3 willReplaceAppLayout:(id)a4 proposedReplacementAppLayout:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained appSwitcherModel:self willReplaceAppLayout:v7 proposedReplacementAppLayout:v8];
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v12;
}

- (id)recentAppLayouts:(id)a3 willAddAppLayout:(id)a4 replacingAppLayouts:(id)a5 removingAppLayouts:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained appSwitcherModel:self willAddAppLayout:v9 replacingAppLayouts:v10 removingAppLayouts:v11];
  }

  else
  {
    v14 = v9;
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