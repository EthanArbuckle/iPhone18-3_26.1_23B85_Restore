@interface PXLoadingStatusManager
+ (PXLoadingStatusManager)defaultManager;
- (BOOL)_needsUpdate;
- (PXLoadingStatusManager)init;
- (id)loadingStatusForItemIdentifier:(id)identifier;
- (id)willBeginLoadOperationWithItemIdentifier:(id)identifier;
- (void)_didUpdateLoadOperationWithTrackingID:(id)d withProgress:(double)progress indeterminate:(BOOL)indeterminate;
- (void)_invalidateLoadingStatusForItemIdentifier:(id)identifier;
- (void)_resetLoadingStatusForItemIdentifierIfAppropriate:(id)appropriate;
- (void)_setLoadingStatus:(id)status forItemIdentifier:(id)identifier;
- (void)_setLoadingStatus:(id)status forLoadOperationTrackingID:(id)d;
- (void)_setNeedsUpdate;
- (void)_updateIfNeeded;
- (void)_updateLoadingStatusForItemIdentifier:(id)identifier;
- (void)_updateLoadingStatusForItemIdentifierIfNeeded:(id)needed;
- (void)_updateLoadingStatusForItemIdentifiersIfNeeded;
- (void)_updateNowIfNeeded;
- (void)didCancelLoadOperationWithTrackingID:(id)d;
- (void)didCompleteLoadOperationWithTrackingID:(id)d withSuccess:(BOOL)success error:(id)error isFromExplicitUserAction:(BOOL)action;
@end

@implementation PXLoadingStatusManager

- (PXLoadingStatusManager)init
{
  v16.receiver = self;
  v16.super_class = PXLoadingStatusManager;
  v2 = [(PXLoadingStatusManager *)&v16 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    loadOperationTrackingIDsByItemIdentifier = v2->__loadOperationTrackingIDsByItemIdentifier;
    v2->__loadOperationTrackingIDsByItemIdentifier = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    loadingStatusByItemIdentifier = v2->__loadingStatusByItemIdentifier;
    v2->__loadingStatusByItemIdentifier = strongToStrongObjectsMapTable2;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemIdentifierByLoadOperationTrackingID = v2->__itemIdentifierByLoadOperationTrackingID;
    v2->__itemIdentifierByLoadOperationTrackingID = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    loadingStatusByLoadOperationTrackingID = v2->__loadingStatusByLoadOperationTrackingID;
    v2->__loadingStatusByLoadOperationTrackingID = dictionary2;

    v11 = [MEMORY[0x1E695DFA8] set];
    invalidLoadingStatusItemIdentifiers = v2->__invalidLoadingStatusItemIdentifiers;
    v2->__invalidLoadingStatusItemIdentifiers = v11;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)_updateLoadingStatusForItemIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _loadOperationTrackingIDsByItemIdentifier = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v6 = [_loadOperationTrackingIDsByItemIdentifier objectForKey:identifierCopy];

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
        _loadingStatusByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
        v16 = [_loadingStatusByLoadOperationTrackingID objectForKeyedSubscript:v14];

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

  [(PXLoadingStatusManager *)self _setLoadingStatus:v10 forItemIdentifier:identifierCopy];
}

- (void)_updateLoadingStatusForItemIdentifierIfNeeded:(id)needed
{
  neededCopy = needed;
  _invalidLoadingStatusItemIdentifiers = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  if ([_invalidLoadingStatusItemIdentifiers containsObject:neededCopy])
  {
    [_invalidLoadingStatusItemIdentifiers removeObject:neededCopy];
    [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifier:neededCopy];
  }
}

- (void)_updateLoadingStatusForItemIdentifiersIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  _invalidLoadingStatusItemIdentifiers = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  v4 = [_invalidLoadingStatusItemIdentifiers copy];
  [_invalidLoadingStatusItemIdentifiers removeAllObjects];
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

- (void)_invalidateLoadingStatusForItemIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    _invalidLoadingStatusItemIdentifiers = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
    [_invalidLoadingStatusItemIdentifiers addObject:identifierCopy];

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
  _invalidLoadingStatusItemIdentifiers = [(PXLoadingStatusManager *)self _invalidLoadingStatusItemIdentifiers];
  v3 = [_invalidLoadingStatusItemIdentifiers count] != 0;

  return v3;
}

- (void)_updateIfNeeded
{
  if ([(PXLoadingStatusManager *)self _needsUpdate])
  {
    [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifiersIfNeeded];
    if ([(PXLoadingStatusManager *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:206 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_resetLoadingStatusForItemIdentifierIfAppropriate:(id)appropriate
{
  v34 = *MEMORY[0x1E69E9840];
  appropriateCopy = appropriate;
  _loadOperationTrackingIDsByItemIdentifier = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v6 = [_loadOperationTrackingIDsByItemIdentifier objectForKey:appropriateCopy];

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
        _loadingStatusByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
        v15 = [_loadingStatusByLoadOperationTrackingID objectForKeyedSubscript:v13];

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
          _loadingStatusByLoadOperationTrackingID2 = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
          [_loadingStatusByLoadOperationTrackingID2 removeObjectForKey:v21];

          _itemIdentifierByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
          [_itemIdentifierByLoadOperationTrackingID removeObjectForKey:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v8 minusSet:v16];
    [(PXLoadingStatusManager *)self _invalidateLoadingStatusForItemIdentifier:appropriateCopy];
  }
}

- (void)_setLoadingStatus:(id)status forItemIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  identifierCopy = identifier;
  _loadingStatusByItemIdentifier = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v9 = [_loadingStatusByItemIdentifier objectForKey:identifierCopy];
  if (v9 != statusCopy && ([statusCopy isEqual:v9] & 1) == 0)
  {
    if (statusCopy)
    {
      [_loadingStatusByItemIdentifier setObject:statusCopy forKey:identifierCopy];
    }

    else
    {
      [_loadingStatusByItemIdentifier removeObjectForKey:identifierCopy];
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

          [*(*(&v15 + 1) + 8 * i) loadingStatusManager:self didUpdateLoadingStatus:statusCopy forItemIdentifier:{identifierCopy, v15}];
        }

        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)_setLoadingStatus:(id)status forLoadOperationTrackingID:(id)d
{
  statusCopy = status;
  dCopy = d;
  _loadingStatusByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v8 = [_loadingStatusByLoadOperationTrackingID objectForKeyedSubscript:dCopy];
  if (v8 != statusCopy && ([statusCopy isEqual:v8] & 1) == 0)
  {
    if (statusCopy)
    {
      [_loadingStatusByLoadOperationTrackingID setObject:statusCopy forKeyedSubscript:dCopy];
    }

    else
    {
      [_loadingStatusByLoadOperationTrackingID removeObjectForKey:dCopy];
    }

    _itemIdentifierByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
    v10 = [_itemIdentifierByLoadOperationTrackingID objectForKeyedSubscript:dCopy];

    [(PXLoadingStatusManager *)self _invalidateLoadingStatusForItemIdentifier:v10];
  }
}

- (void)didCancelLoadOperationWithTrackingID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  _loadingStatusByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v6 = [_loadingStatusByLoadOperationTrackingID objectForKeyedSubscript:dCopy];

  if (v6)
  {
    v7 = [PXOperationStatus alloc];
    [v6 progress];
    v9 = v8;
    error = [v6 error];
    v11 = [(PXOperationStatus *)v7 initWithState:4 progress:0 indeterminate:error error:0 creationDate:v9];

    [(PXLoadingStatusManager *)self _setLoadingStatus:v11 forLoadOperationTrackingID:dCopy];
  }
}

- (void)didCompleteLoadOperationWithTrackingID:(id)d withSuccess:(BOOL)success error:(id)error isFromExplicitUserAction:(BOOL)action
{
  successCopy = success;
  dCopy = d;
  errorCopy = error;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  _loadingStatusByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _loadingStatusByLoadOperationTrackingID];
  v12 = [_loadingStatusByLoadOperationTrackingID objectForKeyedSubscript:dCopy];

  date = [MEMORY[0x1E695DF00] date];
  if (v12)
  {
    v14 = [PXOperationStatus alloc];
    if (successCopy)
    {
      v15 = 2;
      v16 = 0;
    }

    else
    {
      v15 = 3;
      v16 = errorCopy;
    }

    v17 = [(PXOperationStatus *)v14 initWithState:v15 progress:0 indeterminate:v16 error:date creationDate:1.0];

    [(PXLoadingStatusManager *)self _setLoadingStatus:v17 forLoadOperationTrackingID:dCopy];
  }
}

- (void)_didUpdateLoadOperationWithTrackingID:(id)d withProgress:(double)progress indeterminate:(BOOL)indeterminate
{
  indeterminateCopy = indeterminate;
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"loadOperationTrackingID"}];
  }

  _itemIdentifierByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
  v10 = [_itemIdentifierByLoadOperationTrackingID objectForKeyedSubscript:dCopy];

  [(PXLoadingStatusManager *)self _resetLoadingStatusForItemIdentifierIfAppropriate:v10];
  v11 = [PXOperationStatus alloc];
  if (indeterminateCopy)
  {
    progressCopy = 0.5;
    v13 = 1;
  }

  else
  {
    progressCopy = progress;
    v13 = 0;
  }

  v14 = [(PXOperationStatus *)v11 initWithState:1 progress:v13 indeterminate:0 error:0 creationDate:progressCopy];
  [(PXLoadingStatusManager *)self _setLoadingStatus:v14 forLoadOperationTrackingID:dCopy];
}

- (id)willBeginLoadOperationWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingStatusManager.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];
  }

  _loadingStatusByItemIdentifier = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v7 = [_loadingStatusByItemIdentifier objectForKey:identifierCopy];

  if ([v7 state] == 3)
  {
    [(PXLoadingStatusManager *)self _resetLoadingStatusForItemIdentifierIfAppropriate:identifierCopy];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  _loadOperationTrackingIDsByItemIdentifier = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
  v11 = [_loadOperationTrackingIDsByItemIdentifier objectForKey:identifierCopy];

  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    _loadOperationTrackingIDsByItemIdentifier2 = [(PXLoadingStatusManager *)self _loadOperationTrackingIDsByItemIdentifier];
    [_loadOperationTrackingIDsByItemIdentifier2 setObject:v11 forKey:identifierCopy];
  }

  [v11 addObject:uUIDString];
  _itemIdentifierByLoadOperationTrackingID = [(PXLoadingStatusManager *)self _itemIdentifierByLoadOperationTrackingID];
  [_itemIdentifierByLoadOperationTrackingID setObject:identifierCopy forKeyedSubscript:uUIDString];

  return uUIDString;
}

- (id)loadingStatusForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PXLoadingStatusManager *)self _updateLoadingStatusForItemIdentifierIfNeeded:identifierCopy];
  _loadingStatusByItemIdentifier = [(PXLoadingStatusManager *)self _loadingStatusByItemIdentifier];
  v6 = [_loadingStatusByItemIdentifier objectForKey:identifierCopy];

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