@interface PXLoadingStatusManager
+ (PXLoadingStatusManager)defaultManager;
- (BOOL)_needsUpdate;
- (PXLoadingStatusManager)init;
- (id)loadingStatusForItemIdentifier:(id)a3;
- (id)willBeginLoadOperationWithItemIdentifier:(id)a3;
- (void)_didUpdateLoadOperationWithTrackingID:(id)a3 withProgress:(double)a4 indeterminate:(BOOL)a5;
- (void)_invalidateLoadingStatusForItemIdentifier:(id)a3;
- (void)_resetLoadingStatusForItemIdentifierIfAppropriate:(id)a3;
- (void)_setLoadingStatus:(id)a3 forItemIdentifier:(id)a4;
- (void)_setLoadingStatus:(id)a3 forLoadOperationTrackingID:(id)a4;
- (void)_setNeedsUpdate;
- (void)_updateIfNeeded;
- (void)_updateLoadingStatusForItemIdentifier:(id)a3;
- (void)_updateLoadingStatusForItemIdentifierIfNeeded:(id)a3;
- (void)_updateLoadingStatusForItemIdentifiersIfNeeded;
- (void)_updateNowIfNeeded;
- (void)didCancelLoadOperationWithTrackingID:(id)a3;
- (void)didCompleteLoadOperationWithTrackingID:(id)a3 withSuccess:(BOOL)a4 error:(id)a5 isFromExplicitUserAction:(BOOL)a6;
@end

@implementation PXLoadingStatusManager

- (PXLoadingStatusManager)init
{
  v16.receiver = self;
  v16.super_class = PXLoadingStatusManager;
  v2 = [(PXLoadingStatusManager *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    loadOperationTrackingIDsByItemIdentifier = v2->__loadOperationTrackingIDsByItemIdentifier;
    v2->__loadOperationTrackingIDsByItemIdentifier = v3;

    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    loadingStatusByItemIdentifier = v2->__loadingStatusByItemIdentifier;
    v2->__loadingStatusByItemIdentifier = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    itemIdentifierByLoadOperationTrackingID = v2->__itemIdentifierByLoadOperationTrackingID;
    v2->__itemIdentifierByLoadOperationTrackingID = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    loadingStatusByLoadOperationTrackingID = v2->__loadingStatusByLoadOperationTrackingID;
    v2->__loadingStatusByLoadOperationTrackingID = v9;

    v11 = [MEMORY[0x1E695DFA8] set];
    invalidLoadingStatusItemIdentifiers = v2->__invalidLoadingStatusItemIdentifiers;
    v2->__invalidLoadingStatusItemIdentifiers = v11;

    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v13;
  }

  return v2;
}

- (void)_updateLoadingStatusForItemIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v6 = [v5 objectForKey:v4];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v19;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (v16)
        {
          if (v12 == 0.0)
          {
            v17 = v16;

            v12 = v12 + 1.0;
          }

          else
          {
            v12 = v12 + 1.0;
            v17 = [v10 operationStatusByMixingOperationStatus:v16 withMixFactor:1.0 / v12];
          }

          v10 = v17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(PXLoadingStatusManager *)self _setLoadingStatus:v10 forItemIdentifier:v4];
}

- (void)_updateLoadingStatusForItemIdentifierIfNeeded:(id)a3
{
  v5 = a3;
  v4 = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  if ([v4 containsObject:v5])
  {
    [v4 removeObject:v5];
    [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifier:v5];
  }
}

- (void)_updateLoadingStatusForItemIdentifiersIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  v4 = [v3 copy];
  [v3 removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifier:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_invalidateLoadingStatusForItemIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
    [v5 addObject:v4];

    [(PXLoadingStatusManager *)self _setNeedsUpdate];
  }
}

- (void)_updateNowIfNeeded
{
  [(PXLoadingStatusManager *)self _setUpdateScheduled:0];

  [(PXLoadingStatusManager *)self _updateIfNeeded];
}

- (void)_setNeedsUpdate
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (![(PXLoadingStatusManager *)self _isUpdateScheduled])
  {
    [(PXLoadingStatusManager *)self _setUpdateScheduled:1];
    v4[0] = *MEMORY[0x1E695DA28];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [(PXLoadingStatusManager *)self performSelector:sel__updateNowIfNeeded withObject:0 afterDelay:v3 inModes:0.0];
  }
}

- (BOOL)_needsUpdate
{
  v2 = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_updateIfNeeded
{
  if ([(PXLoadingStatusManager *)self _needsUpdate])
  {
    [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifiersIfNeeded];
    if ([(PXLoadingStatusManager *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:206 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_resetLoadingStatusForItemIdentifierIfAppropriate:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v6 = [v5 objectForKey:v4];

  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
        v15 = [v14 objectForKeyedSubscript:v13];

        if ([v15 state] == 1)
        {
          [v7 removeAllObjects];

          goto LABEL_13;
        }

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if ([v7 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          v22 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
          [v22 removeObjectForKey:v21];

          v23 = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
          [v23 removeObjectForKey:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v8 minusSet:v16];
    [(PXLoadingStatusManager *)self _invalidateLoadingStatusForItemIdentifier:v4];
  }
}

- (void)_setLoadingStatus:(id)a3 forItemIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v9 = [v8 objectForKey:v7];
  if (v9 != v6 && ([v6 isEqual:v9] & 1) == 0)
  {
    if (v6)
    {
      [v8 setObject:v6 forKey:v7];
    }

    else
    {
      [v8 removeObjectForKey:v7];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * i) loadingStatusManager:self didUpdateLoadingStatus:v6 forItemIdentifier:{v7, v15}];
        }

        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)_setLoadingStatus:(id)a3 forLoadOperationTrackingID:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v8 = [v7 objectForKeyedSubscript:v6];
  if (v8 != v11 && ([v11 isEqual:v8] & 1) == 0)
  {
    if (v11)
    {
      [v7 setObject:v11 forKeyedSubscript:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }

    v9 = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
    v10 = [v9 objectForKeyedSubscript:v6];

    [(PXLoadingStatusManager *)self _invalidateLoadingStatusForItemIdentifier:v10];
  }
}

- (void)didCancelLoadOperationWithTrackingID:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  v5 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v6 = [v5 objectForKeyedSubscript:v13];

  if (v6)
  {
    v7 = [PXOperationStatus alloc];
    [v6 progress];
    v9 = v8;
    v10 = [v6 error];
    v11 = [(PXOperationStatus *)v7 initWithState:4 progress:0 indeterminate:v10 error:0 creationDate:v9];

    [(PXLoadingStatusManager *)self _setLoadingStatus:v11 forLoadOperationTrackingID:v13];
  }
}

- (void)didCompleteLoadOperationWithTrackingID:(id)a3 withSuccess:(BOOL)a4 error:(id)a5 isFromExplicitUserAction:(BOOL)a6
{
  v7 = a4;
  v19 = a3;
  v10 = a5;
  if (!v19)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  v11 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v12 = [v11 objectForKeyedSubscript:v19];

  v13 = [MEMORY[0x1E695DF00] date];
  if (v12)
  {
    v14 = [PXOperationStatus alloc];
    if (v7)
    {
      v15 = 2;
      v16 = 0;
    }

    else
    {
      v15 = 3;
      v16 = v10;
    }

    v17 = [(PXOperationStatus *)v14 initWithState:v15 progress:0 indeterminate:v16 error:v13 creationDate:1.0];

    [(PXLoadingStatusManager *)self _setLoadingStatus:v17 forLoadOperationTrackingID:v19];
  }
}

- (void)_didUpdateLoadOperationWithTrackingID:(id)a3 withProgress:(double)a4 indeterminate:(BOOL)a5
{
  v5 = a5;
  v16 = a3;
  if (!v16)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  v9 = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
  v10 = [v9 objectForKeyedSubscript:v16];

  [(PXLoadingStatusManager *)self _resetLoadingStatusForItemIdentifierIfAppropriate:v10];
  v11 = [PXOperationStatus alloc];
  if (v5)
  {
    v12 = 0.5;
    v13 = 1;
  }

  else
  {
    v12 = a4;
    v13 = 0;
  }

  v14 = [(PXOperationStatus *)v11 initWithState:1 progress:v13 indeterminate:0 error:0 creationDate:v12];
  [(PXLoadingStatusManager *)self _setLoadingStatus:v14 forLoadOperationTrackingID:v16];
}

- (id)willBeginLoadOperationWithItemIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];
  }

  v6 = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v7 = [v6 objectForKey:v5];

  if ([v7 state] == 3)
  {
    [(PXLoadingStatusManager *)self _resetLoadingStatusForItemIdentifierIfAppropriate:v5];
  }

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v11 = [v10 objectForKey:v5];

  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v12 = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
    [v12 setObject:v11 forKey:v5];
  }

  [v11 addObject:v9];
  v13 = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
  [v13 setObject:v5 forKeyedSubscript:v9];

  return v9;
}

- (id)loadingStatusForItemIdentifier:(id)a3
{
  v4 = a3;
  [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifierIfNeeded:v4];
  v5 = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (PXLoadingStatusManager)defaultManager
{
  if (defaultManager_onceToken_6609 != -1)
  {
    dispatch_once(&defaultManager_onceToken_6609, &__block_literal_global_6610);
  }

  v3 = defaultManager_manager;

  return v3;
}

uint64_t __40__PXLoadingStatusManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(PXLoadingStatusManager);
  v1 = defaultManager_manager;
  defaultManager_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end