@interface PXSelectionCoordinator
- (BOOL)modifySelectionWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4;
- (BOOL)test_validateInternalState;
- (NSOrderedSet)selectedObjectIDs;
- (PXSelectionCoordinator)initWithSelectedOIDs:(id)a3;
- (PXSelectionCoordinatorDelegate)delegate;
- (id)checkOutSelectionManagerForDataSourceManager:(id)a3;
- (id)selectionManager:(id)a3 validateSnapshot:(id)a4;
- (void)_handleDataSourceChangeToSelectionManager:(id)a3 state:(id)a4;
- (void)_handleSelectionChangeToSelectionManager:(id)a3 state:(id)a4;
- (void)_modifySelectionWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4 originatingSelectionManager:(id)a5;
- (void)_performChangesToCoordinatedSelectionManagersWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4 originatingSelectionManager:(id)a5;
- (void)_startMutatingSelectionManager:(id)a3;
- (void)_stopMutatingSelectionManager:(id)a3;
- (void)_updateSelectionLimitReached;
- (void)_updateSelectionManagerToGlobalState:(id)a3 managerState:(id)a4;
- (void)checkInSelectionManager:(id)a3;
- (void)modifySelectionWithOrder:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDelegate:(id)a3;
- (void)setSelectionCountLimit:(id)a3;
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
  v3 = [(PXSelectionCoordinator *)self stateByManager];
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(PXSelectionCoordinator *)self stateByManager];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 selectionSnapshot];
        v13 = [v9 selectionSnapshot];

        if (v12 != v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)selectionManager:(id)a3 validateSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXSelectionCoordinator *)self selectionCountLimit];
  v9 = v8;
  if (!v8 || self->_currentlyMutatingSelectionManager == v6 || (v10 = [v8 integerValue], -[PXSelectionCoordinator mutableSelectedObjectIDs](self, "mutableSelectedObjectIDs"), v11 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v11, "count"), v11, objc_msgSend(v7, "selectedIndexPaths"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), -[PXSectionedSelectionManager selectionSnapshot](v6, "selectionSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "selectedIndexPaths"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v13 - objc_msgSend(v15, "count"), v15, v14, v12, v16 < 1) || v16 + v28 <= v10 || (objc_msgSend(v7, "dataSource"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "selectedIndexPaths"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectIDsForIndexPathSet:", v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "set"), v20 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, -[PXSelectionCoordinator mutableSelectedObjectIDs](self, "mutableSelectedObjectIDs"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "set"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "setByAddingObjectsFromSet:", v20), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22, v21, v20, v24 <= v10) || v24 <= v28)
  {
    v26 = v7;
  }

  else
  {
    if (self->_delegateRespondsTo.rejectedCountLimitViolation)
    {
      v25 = [(PXSelectionCoordinator *)self delegate];
      [v25 selectionCoordinator:self rejectedCountLimitViolationForSelectionManager:v6];
    }

    v26 = 0;
  }

  return v26;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (CoordinatedSelectionManagerContext != a5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:331 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v17 = v9;
  v10 = [(PXSelectionCoordinator *)self stateByManager];
  v11 = [v10 objectForKey:v17];

  if (v11)
  {
    v12 = v17;
    if (self->_currentlyMutatingSelectionManager == v17)
    {
      if (self->_currentlyMutatingObservationCount)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:315 description:@"A coordinated selection manager was changed while the coordinator was updating it"];

        v12 = v17;
        v13 = self->_currentlyMutatingObservationCount + 1;
      }

      else
      {
        v13 = 1;
      }

      self->_currentlyMutatingObservationCount = v13;
      v14 = [(PXSectionedSelectionManager *)v12 selectionSnapshot];
      [v11 setSelectionSnapshot:v14];
    }

    else if ((v6 & 2) != 0)
    {
      [(PXSelectionCoordinator *)self _handleDataSourceChangeToSelectionManager:v17 state:v11];
    }

    else if (v6)
    {
      [(PXSelectionCoordinator *)self _handleSelectionChangeToSelectionManager:v17 state:v11];
    }
  }
}

- (void)_performChangesToCoordinatedSelectionManagersWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4 originatingSelectionManager:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v31 = v8;
  if ([v8 count])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 count] != 0;
  }

  v34 = v10;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = [(PXSelectionCoordinator *)self stateByManager];
  v12 = [v11 keyEnumerator];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
        v17 = [(PXSelectionCoordinator *)self selectionLimitReached];
        v18 = [v16 selectionSnapshot];
        v19 = v18;
        if (v16 == v33)
        {
          v28 = [v18 isSelectionLimitReached];

          if (v17 != v28 || v34)
          {
            [(PXSelectionCoordinator *)self _startMutatingSelectionManager:v16];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke;
            v42[3] = &unk_1E7BB63C8;
            v43 = v17;
            v44 = v34;
            v42[4] = v16;
            v42[5] = self;
            [v16 performChanges:v42];
            [(PXSelectionCoordinator *)self _stopMutatingSelectionManager:v16];
          }
        }

        else
        {
          v20 = [v18 dataSource];

          v21 = [v31 set];
          v22 = [v20 indexPathSetForObjectIDs:v21];

          v23 = [v9 set];
          [v20 indexPathSetForObjectIDs:v23];
          v25 = v24 = v9;

          [(PXSelectionCoordinator *)self _startMutatingSelectionManager:v16];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __128__PXSelectionCoordinator__performChangesToCoordinatedSelectionManagersWithRemovedOIDs_insertedOIDs_originatingSelectionManager___block_invoke_2;
          v35[3] = &unk_1E7BB63F0;
          v36 = v22;
          v37 = v25;
          v40 = v17;
          v41 = v34;
          v38 = v16;
          v39 = self;
          v26 = v25;
          v27 = v22;
          [v16 performChanges:v35];
          [(PXSelectionCoordinator *)self _stopMutatingSelectionManager:v16];

          v9 = v24;
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

- (void)_modifySelectionWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4 originatingSelectionManager:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  if ([v20 count])
  {
    v10 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v11 = [v10 intersectsOrderedSet:v20];
  }

  else
  {
    v11 = 0;
  }

  if ([v8 count])
  {
    v12 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v13 = [v8 isSubsetOfOrderedSet:v12] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  [v14 minusOrderedSet:v20];

  v15 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  [v15 unionOrderedSet:v8];

  v16 = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _updateSelectionLimitReached];
  v17 = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _performChangesToCoordinatedSelectionManagersWithRemovedOIDs:v20 insertedOIDs:v8 originatingSelectionManager:v9];

  if (((v11 | v13) & 1) != 0 && self->_delegateRespondsTo.didUpdateSelectedObjects)
  {
    v18 = [(PXSelectionCoordinator *)self delegate];
    [v18 selectionCoordinator:self didUpdateSelectedObjectsWithRemovedOIDs:v20 insertedOIDs:v8];
  }

  if (v16 != v17 && self->_delegateRespondsTo.selectionLimitStatusChanged)
  {
    v19 = [(PXSelectionCoordinator *)self delegate];
    [v19 selectionLimitStatusChangedForSelectionCoordinator:self];
  }
}

- (void)_handleSelectionChangeToSelectionManager:(id)a3 state:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v6 selectionSnapshot];
  v8 = [v20 selectionSnapshot];
  v9 = [v7 selectedIndexPaths];
  v10 = [v9 mutableCopy];

  v11 = [v8 selectedIndexPaths];
  [v10 minusIndexPathSet:v11];

  v12 = [v8 selectedIndexPaths];
  v13 = [v12 mutableCopy];

  v14 = [v7 selectedIndexPaths];
  [v13 minusIndexPathSet:v14];

  if (self->_delegateRespondsTo.willUpdateSelectedObjects)
  {
    v15 = [(PXSelectionCoordinator *)self delegate];
    [v15 selectionCoordinator:self willUpdateSelectedObjectsForSnapshot:v8 withRemovedIndexes:v10 insertedIndexes:v13];
  }

  v16 = [v7 dataSource];
  v17 = [v16 objectIDsForIndexPathSet:v10];

  v18 = [v8 dataSource];
  v19 = [v18 objectIDsForIndexPathSet:v13];

  [v6 setSelectionSnapshot:v8];
  [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:v17 insertedOIDs:v19 originatingSelectionManager:v20];
}

- (void)_handleDataSourceChangeToSelectionManager:(id)a3 state:(id)a4
{
  v19 = self;
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v20 = a4;
  v21 = [v20 selectionSnapshot];
  v23 = [v24 selectionSnapshot];
  v22 = [v24 dataSourceManager];
  v5 = [v21 dataSource];
  v6 = [v23 dataSource];
  v7 = [v22 allChangeDetailsFromDataSource:v5 toDataSource:v6];

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
        v13 = [v12 sectionChanges];
        if (([v13 hasIncrementalChanges] & 1) == 0)
        {

LABEL_13:
          *(v31 + 24) = 1;
          goto LABEL_14;
        }

        v14 = [v12 sectionChanges];
        v15 = [v14 insertedIndexes];
        v16 = [v15 count] == 0;

        if (!v16)
        {
          goto LABEL_13;
        }

        v17 = [v12 sectionsWithItemChanges];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __74__PXSelectionCoordinator__handleDataSourceChangeToSelectionManager_state___block_invoke;
        v25[3] = &unk_1E7BB84F0;
        v25[4] = v12;
        v25[5] = &v30;
        [v17 enumerateIndexesUsingBlock:v25];

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
      v35 = v22;
      _os_log_impl(&dword_1B3F73000, v18, OS_LOG_TYPE_DEFAULT, "Reloading selection state for data source manager %@", buf, 0xCu);
    }

    [(PXSelectionCoordinator *)v19 _updateSelectionManagerToGlobalState:v24 managerState:v20];
  }

  else
  {
    [v20 setSelectionSnapshot:v23];
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

- (void)_updateSelectionManagerToGlobalState:(id)a3 managerState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataSourceManager];
  v9 = [v8 dataSource];

  v10 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v11 = [v10 set];
  v12 = [v9 indexPathSetForObjectIDs:v11];

  LOBYTE(v10) = [(PXSelectionCoordinator *)self selectionLimitReached];
  [(PXSelectionCoordinator *)self _startMutatingSelectionManager:v6];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__PXSelectionCoordinator__updateSelectionManagerToGlobalState_managerState___block_invoke;
  v19 = &unk_1E7BB63A0;
  v23 = v10;
  v20 = v12;
  v21 = v6;
  v22 = self;
  v13 = v6;
  v14 = v12;
  [v13 performChanges:&v16];
  v15 = [v13 selectionSnapshot];
  [v7 setSelectionSnapshot:v15];

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

- (void)modifySelectionWithOrder:(id)a3
{
  v10 = a3;
  v5 = [(PXSelectionCoordinator *)self selectedObjectIDs];
  if (!v10 || (v6 = [v10 count], v7 = objc_msgSend(v5, "count"), v8 = v10, v6 != v7))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"updatedSelectionOrder && updatedSelectionOrder.count == currentSelectionOrder.count"}];

    v8 = v10;
  }

  [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:v5 insertedOIDs:v8 originatingSelectionManager:0];
}

- (BOOL)modifySelectionWithRemovedOIDs:(id)a3 insertedOIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"removedOIDs && insertedOIDs"}];
  }

  v10 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v11 = [v10 mutableCopy];

  v12 = [v7 mutableCopy];
  [v12 intersectOrderedSet:v11];
  [v11 minusOrderedSet:v12];
  v13 = [v9 mutableCopy];
  [v13 minusOrderedSet:v11];
  [v11 unionOrderedSet:v13];
  v14 = [(PXSelectionCoordinator *)self selectionCountLimit];
  v15 = v14;
  if (v14 && (v16 = [v14 integerValue], v16 < objc_msgSend(v11, "count")))
  {
    v17 = [v11 count];
    v18 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
    v19 = v17 <= [v18 count];
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

- (void)checkInSelectionManager:(id)a3
{
  v4 = a3;
  v5 = [(PXSelectionCoordinator *)self stateByManager];
  [v5 removeObjectForKey:v4];
}

- (id)checkOutSelectionManagerForDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v4];

  [(PXSectionedSelectionManager *)v5 setSnapshotValidator:self];
  v6 = [_PXSelectionCoordinatorState alloc];
  v7 = [(PXSectionedSelectionManager *)v5 selectionSnapshot];
  v8 = [(_PXSelectionCoordinatorState *)v6 initWithSelectionSnapshot:v7];

  v9 = [(PXSelectionCoordinator *)self stateByManager];
  [v9 setObject:v8 forKey:v5];

  [(PXObservable *)v5 registerChangeObserver:self context:CoordinatedSelectionManagerContext];
  [(PXSelectionCoordinator *)self _updateSelectionManagerToGlobalState:v5 managerState:v8];

  return v5;
}

- (void)_stopMutatingSelectionManager:(id)a3
{
  currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  if (currentlyMutatingSelectionManager != a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"_currentlyMutatingSelectionManager == selectionManager"}];

    currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  }

  self->_currentlyMutatingSelectionManager = 0;
}

- (void)_startMutatingSelectionManager:(id)a3
{
  v5 = a3;
  currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  if (currentlyMutatingSelectionManager)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"_currentlyMutatingSelectionManager == nil"}];

    currentlyMutatingSelectionManager = self->_currentlyMutatingSelectionManager;
  }

  self->_currentlyMutatingSelectionManager = v5;

  self->_currentlyMutatingObservationCount = 0;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v6 = [(PXSelectionCoordinator *)self selectionCountLimit];
  v3 = [(PXSelectionCoordinator *)self selectedObjectIDs];
  v4 = [v3 count];

  if (v6)
  {
    v5 = v4 >= [v6 integerValue];
  }

  else
  {
    v5 = 0;
  }

  [(PXSelectionCoordinator *)self setSelectionLimitReached:v5];
}

- (NSOrderedSet)selectedObjectIDs
{
  v2 = [(PXSelectionCoordinator *)self mutableSelectedObjectIDs];
  v3 = [v2 copy];

  return v3;
}

- (void)setSelectionCountLimit:(id)a3
{
  v13 = a3;
  v6 = self->_selectionCountLimit;
  v7 = v6;
  if (v6 != v13)
  {
    v8 = [(NSNumber *)v6 isEqual:v13];

    v10 = v13;
    if (v8)
    {
      goto LABEL_8;
    }

    if (v13 && [(NSNumber *)v13 integerValue]< 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSelectionCoordinator.m" lineNumber:65 description:@"Negative count limits are invalid"];
    }

    objc_storeStrong(&self->_selectionCountLimit, a3);
    v7 = [MEMORY[0x1E695DFB8] orderedSet];
    v11 = [MEMORY[0x1E695DFB8] orderedSet];
    [(PXSelectionCoordinator *)self _modifySelectionWithRemovedOIDs:v7 insertedOIDs:v11 originatingSelectionManager:0];
  }

  v10 = v13;
LABEL_8:

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (PXSelectionCoordinator)initWithSelectedOIDs:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PXSelectionCoordinator;
  v5 = [(PXSelectionCoordinator *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 mutableCopy];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA0] orderedSet];
    }

    mutableSelectedObjectIDs = v5->_mutableSelectedObjectIDs;
    v5->_mutableSelectedObjectIDs = v6;

    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    stateByManager = v5->_stateByManager;
    v5->_stateByManager = v8;
  }

  return v5;
}

@end