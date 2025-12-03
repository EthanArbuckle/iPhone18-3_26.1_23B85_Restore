@interface PXSelectionCoordinator
- (BOOL)modifySelectionWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs;
- (BOOL)test_validateInternalState;
- (NSOrderedSet)selectedObjectIDs;
- (PXSelectionCoordinator)initWithSelectedOIDs:(id)ds;
- (PXSelectionCoordinatorDelegate)delegate;
- (id)checkOutSelectionManagerForDataSourceManager:(id)manager;
- (id)selectionManager:(id)manager validateSnapshot:(id)snapshot;
- (void)_handleDataSourceChangeToSelectionManager:(id)manager state:(id)state;
- (void)_handleSelectionChangeToSelectionManager:(id)manager state:(id)state;
- (void)_modifySelectionWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs originatingSelectionManager:(id)manager;
- (void)_performChangesToCoordinatedSelectionManagersWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs originatingSelectionManager:(id)manager;
- (void)_startMutatingSelectionManager:(id)manager;
- (void)_stopMutatingSelectionManager:(id)manager;
- (void)_updateSelectionLimitReached;
- (void)_updateSelectionManagerToGlobalState:(id)state managerState:(id)managerState;
- (void)checkInSelectionManager:(id)manager;
- (void)modifySelectionWithOrder:(id)order;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setSelectionCountLimit:(id)limit;
@end

@implementation PXSelectionCoordinator

- (PXSelectionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)test_validateInternalState
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  stateByManager = [(PXSelectionCoordinator *)self stateByManager];
  keyEnumerator = [stateByManager keyEnumerator];

  v5 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        stateByManager2 = [(PXSelectionCoordinator *)self stateByManager];
        v11 = [stateByManager2 objectForKey:v9];

        selectionSnapshot = [v11 selectionSnapshot];
        selectionSnapshot2 = [v9 selectionSnapshot];

        if (selectionSnapshot != selectionSnapshot2)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (id)selectionManager:(id)manager validateSnapshot:(id)snapshot
{
  managerCopy = manager;
  snapshotCopy = snapshot;
  selectionCountLimit = [(PXSelectionCoordinator *)self selectionCountLimit];
  v9 = selectionCountLimit;
  if (!selectionCountLimit || self->_currentlyMutatingSelectionManager == managerCopy || (v10 = [selectionCountLimit integerValue], -[PXSelectionCoordinator mutableSelectedObjectIDs](self, "mutableSelectedObjectIDs"), v11 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v11, "count"), v11, objc_msgSend(snapshotCopy, "selectedIndexPaths"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), -[PXSectionedSelectionManager selectionSnapshot](managerCopy, "selectionSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "selectedIndexPaths"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v13 - objc_msgSend(v15, "count"), v15, v14, v12, v16 < 1) || v16 + v28 <= v10 || (objc_msgSend(snapshotCopy, "dataSource"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(snapshotCopy, "selectedIndexPaths"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectIDsForIndexPathSet:", v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "set"), v20 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, -[PXSelectionCoordinator mutableSelectedObjectIDs](self, "mutableSelectedObjectIDs"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "set"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "setByAddingObjectsFromSet:", v20), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22, v21, v20, v24 <= v10) || v24 <= v28)
  {
    v26 = snapshotCopy;
  }

  else
  {
    if (self->_delegateRespondsTo.rejectedCountLimitViolation)
    {
      delegate = [(PXSelectionCoordinator *)self delegate];
      [delegate selectionCoordinator:self rejectedCountLimitViolationForSelectionManager:managerCopy];
    }

    v26 = 0;
  }

  return v26;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CoordinatedSelectionManagerContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:331 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v17 = observableCopy;
  stateByManager = [(PXSelectionCoordinator *)self stateByManager];
  v11 = [stateByManager objectForKey:v17];

  if (v11)
  {
    v12 = v17;
    if (self->_currentlyMutatingSelectionManager == v17)
    {
      if (self->_currentlyMutatingObservationCount)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:315 description:@"A coordinated selection manager was changed while the coordinator was updating it"];

        v12 = v17;
        v13 = self->_currentlyMutatingObservationCount + 1;
      }

      else
      {
        v13 = 1;
      }

      self->_currentlyMutatingObservationCount = v13;
      selectionSnapshot = [(PXSectionedSelectionManager *)v12 selectionSnapshot];
      [v11 setSelectionSnapshot:selectionSnapshot];
    }

    else if ((changeCopy & 2) != 0)
    {
      [(PXSelectionCoordinator *)self _handleDataSourceChangeToSelectionManager:v17 state:v11];
    }

    else if (changeCopy)
    {
      [(PXSelectionCoordinator *)self _handleSelectionChangeToSelectionManager:v17 state:v11];
    }
  }
}

- (void)_performChangesToCoordinatedSelectionManagersWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs originatingSelectionManager:(id)manager
{
  v50 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  managerCopy = manager;
  v31 = dsCopy;
  if ([dsCopy count])
  {
    v10 = 1;
  }

  else
  {
    v10 = [iDsCopy count] != 0;
  }

  v34 = v10;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  stateByManager = [(PXSelectionCoordinator *)self stateByManager];
  keyEnumerator = [stateByManager keyEnumerator];

  obj = keyEnumerator;
  v13 = [keyEnumerator countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        selectionLimitReached = [(PXSelectionCoordinator *)self selectionLimitReached];
        selectionSnapshot = [v16 selectionSnapshot];
        v19 = selectionSnapshot;
        if (v16 == managerCopy)
        {
          isSelectionLimitReached = [selectionSnapshot isSelectionLimitReached];

          if (selectionLimitReached != isSelectionLimitReached || v34)
          {
            [(PXSelectionCoordinator *)self _startMutatingSelectionManager:v16];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke;
            v42[3] = &unk_1E7BB63C8;
            v43 = selectionLimitReached;
            v44 = v34;
            v42[4] = v16;
            v42[5] = self;
            [v16 performChanges:v42];
            [(PXSelectionCoordinator *)self _stopMutatingSelectionManager:v16];
          }
        }

        else
        {
          dataSource = [selectionSnapshot dataSource];

          v21 = [v31 set];
          v22 = [dataSource indexPathSetForObjectIDs:v21];

          v23 = [iDsCopy set];
          [dataSource indexPathSetForObjectIDs:v23];
          v25 = v24 = iDsCopy;

          [(PXSelectionCoordinator *)self _startMutatingSelectionManager:v16];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke_2;
          v35[3] = &unk_1E7BB63F0;
          v36 = v22;
          v37 = v25;
          v40 = selectionLimitReached;
          v41 = v34;
          v38 = v16;
          selfCopy = self;
          v26 = v25;
          v27 = v22;
          [v16 performChanges:v35];
          [(PXSelectionCoordinator *)self _stopMutatingSelectionManager:v16];

          iDsCopy = v24;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v14);
  }
}

void __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke(uint64_t a1, void *a2)
{
  [a2 setSelectionLimitReached:*(a1 + 48)];
  if (*(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) selectedObjectIDs];
    [v3 setOverallSelectionOrder:v4];
  }
}

void __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSelectedState:0 forIndexPathSet:v3];
  [v4 setSelectedState:1 forIndexPathSet:*(a1 + 40)];
  [v4 setSelectionLimitReached:*(a1 + 64)];

  if (*(a1 + 65) == 1)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) selectedObjectIDs];
    [v5 setOverallSelectionOrder:v6];
  }
}

- (void)_modifySelectionWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs originatingSelectionManager:(id)manager
{
  dsCopy = ds;
  iDsCopy = iDs;
  managerCopy = manager;
  if ([dsCopy count])
  {
    mutableSelectedObjectIDs = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v11 = [mutableSelectedObjectIDs intersectsOrderedSet:dsCopy];
  }

  else
  {
    v11 = 0;
  }

  if ([iDsCopy count])
  {
    mutableSelectedObjectIDs2 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v13 = [iDsCopy isSubsetOfOrderedSet:mutableSelectedObjectIDs2] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  mutableSelectedObjectIDs3 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  [mutableSelectedObjectIDs3 minusOrderedSet:dsCopy];

  mutableSelectedObjectIDs4 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  [mutableSelectedObjectIDs4 unionOrderedSet:iDsCopy];

  selectionLimitReached = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _updateSelectionLimitReached];
  selectionLimitReached2 = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _performChangesToCoordinatedSelectionManagersWithRemovedOIDs:dsCopy insertedOIDs:iDsCopy originatingSelectionManager:managerCopy];

  if (((v11 | v13) & 1) != 0 && self->_delegateRespondsTo.didUpdateSelectedObjects)
  {
    delegate = [(PXSelectionCoordinator *)self delegate];
    [delegate selectionCoordinator:self didUpdateSelectedObjectsWithRemovedOIDs:dsCopy insertedOIDs:iDsCopy];
  }

  if (selectionLimitReached != selectionLimitReached2 && self->_delegateRespondsTo.selectionLimitStatusChanged)
  {
    delegate2 = [(PXSelectionCoordinator *)self delegate];
    [delegate2 selectionLimitStatusChangedForSelectionCoordinator:self];
  }
}

- (void)_handleSelectionChangeToSelectionManager:(id)manager state:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  selectionSnapshot = [stateCopy selectionSnapshot];
  selectionSnapshot2 = [managerCopy selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v10 = [selectedIndexPaths mutableCopy];

  selectedIndexPaths2 = [selectionSnapshot2 selectedIndexPaths];
  [v10 minusIndexPathSet:selectedIndexPaths2];

  selectedIndexPaths3 = [selectionSnapshot2 selectedIndexPaths];
  v13 = [selectedIndexPaths3 mutableCopy];

  selectedIndexPaths4 = [selectionSnapshot selectedIndexPaths];
  [v13 minusIndexPathSet:selectedIndexPaths4];

  if (self->_delegateRespondsTo.willUpdateSelectedObjects)
  {
    delegate = [(PXSelectionCoordinator *)self delegate];
    [delegate selectionCoordinator:self willUpdateSelectedObjectsForSnapshot:selectionSnapshot2 withRemovedIndexes:v10 insertedIndexes:v13];
  }

  dataSource = [selectionSnapshot dataSource];
  v17 = [dataSource objectIDsForIndexPathSet:v10];

  dataSource2 = [selectionSnapshot2 dataSource];
  v19 = [dataSource2 objectIDsForIndexPathSet:v13];

  [stateCopy setSelectionSnapshot:selectionSnapshot2];
  [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:v17 insertedOIDs:v19 originatingSelectionManager:managerCopy];
}

- (void)_handleDataSourceChangeToSelectionManager:(id)manager state:(id)state
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  stateCopy = state;
  selectionSnapshot = [stateCopy selectionSnapshot];
  selectionSnapshot2 = [managerCopy selectionSnapshot];
  dataSourceManager = [managerCopy dataSourceManager];
  dataSource = [selectionSnapshot dataSource];
  dataSource2 = [selectionSnapshot2 dataSource];
  v7 = [dataSourceManager allChangeDetailsFromDataSource:dataSource toDataSource:dataSource2];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v9)
  {
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        sectionChanges = [v12 sectionChanges];
        if (([sectionChanges hasIncrementalChanges] & 1) == 0)
        {

LABEL_13:
          *(v31 + 24) = 1;
          goto LABEL_14;
        }

        sectionChanges2 = [v12 sectionChanges];
        insertedIndexes = [sectionChanges2 insertedIndexes];
        v16 = [insertedIndexes count] == 0;

        if (!v16)
        {
          goto LABEL_13;
        }

        sectionsWithItemChanges = [v12 sectionsWithItemChanges];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __74__PXSelectionCoordinator__handleDataSourceChangeToSelectionManager_state___block_invoke;
        v25[3] = &unk_1E7BB84F0;
        v25[4] = v12;
        v25[5] = &v30;
        [sectionsWithItemChanges enumerateIndexesUsingBlock:v25];

        if (v31[3])
        {
          goto LABEL_14;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (*(v31 + 24) == 1)
  {
    if (PXSelectionCoordinatorGetLog_predicate != -1)
    {
      dispatch_once(&PXSelectionCoordinatorGetLog_predicate, &__block_literal_global_7544);
    }

    v18 = PXSelectionCoordinatorGetLog_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = dataSourceManager;
      _os_log_impl(&dword_1B3F73000, v18, OS_LOG_TYPE_DEFAULT, "Reloading selection state for data source manager %@", buf, 0xCu);
    }

    [(PXSelectionCoordinator *)selfCopy _updateSelectionManagerToGlobalState:managerCopy managerState:stateCopy];
  }

  else
  {
    [stateCopy setSelectionSnapshot:selectionSnapshot2];
  }

  _Block_object_dispose(&v30, 8);
}

void __74__PXSelectionCoordinator__handleDataSourceChangeToSelectionManager_state___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) itemChangesInSection:a2];
  if (![v7 hasIncrementalChanges] || (objc_msgSend(v7, "insertedIndexes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_updateSelectionManagerToGlobalState:(id)state managerState:(id)managerState
{
  stateCopy = state;
  managerStateCopy = managerState;
  dataSourceManager = [stateCopy dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  mutableSelectedObjectIDs = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v11 = [mutableSelectedObjectIDs set];
  v12 = [dataSource indexPathSetForObjectIDs:v11];

  LOBYTE(mutableSelectedObjectIDs) = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _startMutatingSelectionManager:stateCopy];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__PXSelectionCoordinator__updateSelectionManagerToGlobalState_managerState___block_invoke;
  v19 = &unk_1E7BB63A0;
  v23 = mutableSelectedObjectIDs;
  v20 = v12;
  v21 = stateCopy;
  selfCopy = self;
  v13 = stateCopy;
  v14 = v12;
  [v13 performChanges:&v16];
  selectionSnapshot = [v13 selectionSnapshot];
  [managerStateCopy setSelectionSnapshot:selectionSnapshot];

  [(PXSelectionCoordinator *)self _stopMutatingSelectionManager:v13];
}

void __76__PXSelectionCoordinator__updateSelectionManagerToGlobalState_managerState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSelectedIndexPaths:v3];
  [v4 setSelectionLimitReached:*(a1 + 56)];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) selectedObjectIDs];
  [v5 setOverallSelectionOrder:v6];
}

- (void)modifySelectionWithOrder:(id)order
{
  orderCopy = order;
  selectedObjectIDs = [(PXSelectionCoordinator *)self selectedObjectIDs];
  if (!orderCopy || (v6 = [orderCopy count], v7 = objc_msgSend(selectedObjectIDs, "count"), v8 = orderCopy, v6 != v7))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"updatedSelectionOrder && updatedSelectionOrder.count == currentSelectionOrder.count"}];

    v8 = orderCopy;
  }

  [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:selectedObjectIDs insertedOIDs:v8 originatingSelectionManager:0];
}

- (BOOL)modifySelectionWithRemovedOIDs:(id)ds insertedOIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v9 = iDsCopy;
  if (!dsCopy || !iDsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"removedOIDs && insertedOIDs"}];
  }

  mutableSelectedObjectIDs = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v11 = [mutableSelectedObjectIDs mutableCopy];

  v12 = [dsCopy mutableCopy];
  [v12 intersectOrderedSet:v11];
  [v11 minusOrderedSet:v12];
  v13 = [v9 mutableCopy];
  [v13 minusOrderedSet:v11];
  [v11 unionOrderedSet:v13];
  selectionCountLimit = [(PXSelectionCoordinator *)self selectionCountLimit];
  v15 = selectionCountLimit;
  if (selectionCountLimit && (v16 = [selectionCountLimit integerValue], v16 < objc_msgSend(v11, "count")))
  {
    v17 = [v11 count];
    mutableSelectedObjectIDs2 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v19 = v17 <= [mutableSelectedObjectIDs2 count];
  }

  else
  {
    v19 = 1;
  }

  if ([v12 count])
  {
    v20 = 0;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = [v13 count] == 0;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (!v20)
  {
    [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:v12 insertedOIDs:v9 originatingSelectionManager:0];
  }

LABEL_13:

  return v19 || v20;
}

- (void)checkInSelectionManager:(id)manager
{
  managerCopy = manager;
  stateByManager = [(PXSelectionCoordinator *)self stateByManager];
  [stateByManager removeObjectForKey:managerCopy];
}

- (id)checkOutSelectionManagerForDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:managerCopy];

  [(PXSectionedSelectionManager *)v5 setSnapshotValidator:self];
  v6 = [_PXSelectionCoordinatorState alloc];
  selectionSnapshot = [(PXSectionedSelectionManager *)v5 selectionSnapshot];
  v8 = [(_PXSelectionCoordinatorState *)v6 initWithSelectionSnapshot:selectionSnapshot];

  stateByManager = [(PXSelectionCoordinator *)self stateByManager];
  [stateByManager setObject:v8 forKey:v5];

  [(PXObservable *)v5 registerChangeObserver:self context:CoordinatedSelectionManagerContext];
  [(PXSelectionCoordinator *)self _updateSelectionManagerToGlobalState:v5 managerState:v8];

  return v5;
}

- (void)_stopMutatingSelectionManager:(id)manager
{
  currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  if (currentlyMutatingSelectionManager != manager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"_currentlyMutatingSelectionManager == selectionManager"}];

    currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  }

  self->_currentlyMutatingSelectionManager = 0;
}

- (void)_startMutatingSelectionManager:(id)manager
{
  managerCopy = manager;
  currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  if (currentlyMutatingSelectionManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"_currentlyMutatingSelectionManager == nil"}];

    currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  }

  self->_currentlyMutatingSelectionManager = managerCopy;

  self->_currentlyMutatingObservationCount = 0;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.willUpdateSelectedObjects = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didUpdateSelectedObjects = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.rejectedCountLimitViolation = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.selectionLimitStatusChanged = objc_opt_respondsToSelector() & 1;
  }
}

- (void)_updateSelectionLimitReached
{
  selectionCountLimit = [(PXSelectionCoordinator *)self selectionCountLimit];
  selectedObjectIDs = [(PXSelectionCoordinator *)self selectedObjectIDs];
  v4 = [selectedObjectIDs count];

  if (selectionCountLimit)
  {
    v5 = v4 >= [selectionCountLimit integerValue];
  }

  else
  {
    v5 = 0;
  }

  [(PXSelectionCoordinator *)self setSelectionLimitReached:v5];
}

- (NSOrderedSet)selectedObjectIDs
{
  mutableSelectedObjectIDs = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v3 = [mutableSelectedObjectIDs copy];

  return v3;
}

- (void)setSelectionCountLimit:(id)limit
{
  limitCopy = limit;
  v6 = self->_selectionCountLimit;
  orderedSet = v6;
  if (v6 != limitCopy)
  {
    v8 = [(NSNumber *)v6 isEqual:limitCopy];

    v10 = limitCopy;
    if (v8)
    {
      goto LABEL_8;
    }

    if (limitCopy && [(NSNumber *)limitCopy integerValue]< 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:65 description:@"Negative count limits are invalid"];
    }

    objc_storeStrong(&self->_selectionCountLimit, limit);
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    orderedSet2 = [MEMORY[0x1E695DFB8] orderedSet];
    [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:orderedSet insertedOIDs:orderedSet2 originatingSelectionManager:0];
  }

  v10 = limitCopy;
LABEL_8:

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (PXSelectionCoordinator)initWithSelectedOIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = PXSelectionCoordinator;
  v5 = [(PXSelectionCoordinator *)&v11 init];
  if (v5)
  {
    if (dsCopy)
    {
      orderedSet = [dsCopy mutableCopy];
    }

    else
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    }

    mutableSelectedObjectIDs = v5->_mutableSelectedObjectIDs;
    v5->_mutableSelectedObjectIDs = orderedSet;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    stateByManager = v5->_stateByManager;
    v5->_stateByManager = weakToStrongObjectsMapTable;
  }

  return v5;
}

@end