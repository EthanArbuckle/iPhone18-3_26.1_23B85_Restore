@interface PXImportManager
+ (NSArray)supportedTypeIdentifiers;
+ (NSArray)supportedTypes;
+ (PXImportManager)defaultManager;
- (PXImportManager)init;
- (id)_assetsForImportedItemProviders:(id)providers;
- (id)_collectionShareAssetSourcesForItemProviders:(id)providers;
- (id)_sourcesForItemProviders:(id)providers;
- (id)importItemProviders:(id)providers completionHandler:(id)handler;
- (id)importSharedSourcesForDragItems:(id)items completionHandler:(id)handler;
- (void)_addProgress:(id)progress forItemProviders:(id)providers;
- (void)_addProgress:(id)progress forItemProviders:(id)providers assetCreationCompletionHandler:(id)handler;
- (void)_addProgress:(id)progress forItemProviders:(id)providers sharedSourceCompletionHandler:(id)handler;
- (void)_handleCompletionOfImportForItemProvider:(id)provider resultObject:(id)object progress:(id)progress error:(id)error;
- (void)_removeObserverFromProgress:(id)progress;
- (void)fetchAssetsFromDrop:(id)drop importIfNeeded:(BOOL)needed completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PXImportManager

- (id)_collectionShareAssetSourcesForItemProviders:(id)providers
{
  v18 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = providersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_providersToImportedResultObjectMapping objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_sourcesForItemProviders:(id)providers
{
  v18 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = providersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_providersToImportedResultObjectMapping objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_assetsForImportedItemProviders:(id)providers
{
  v25 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = providersCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_providersToImportedResultObjectMapping objectForKey:*(*(&v19 + 1) + 8 * i), v19];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
    v23[0] = v14;
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
    v23[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [librarySpecificFetchOptions setInternalSortDescriptors:v16];

    v17 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v5 options:librarySpecificFetchOptions];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (PXProgressObserverContext == context)
  {
    v13 = objectCopy;
    completedUnitCount = [v13 completedUnitCount];
    if (completedUnitCount >= [v13 totalUnitCount] || objc_msgSend(v13, "isCancelled"))
    {
      v27 = [(NSMapTable *)self->_progressToErrorsMapping objectForKey:v13];
      v15 = [(NSMapTable *)self->_progressToProvidersMapping objectForKey:v13];
      v25 = [(NSMapTable *)self->_progressToCompletionHandlerMapping objectForKey:v13];
      if (v25)
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__PXImportManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        aBlock[3] = &unk_1E772D4B0;
        objc_copyWeak(&v35, &location);
        v34 = v15;
        v16 = _Block_copy(aBlock);
        if (v27)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v13 isCancelled] ^ 1;
        }

        (*(v25 + 16))(v25, v17, v27, v16);
        [(NSMapTable *)self->_progressToCompletionHandlerMapping removeObjectForKey:v13];

        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
      }

      v18 = [(NSMapTable *)self->_progressToSharedSourcesCompletionHandlerMapping objectForKey:v13, v25];
      if (v18)
      {
        v19 = [(PXImportManager *)self _collectionShareAssetSourcesForItemProviders:v15];
        if (v27)
        {
          v20 = 0;
        }

        else
        {
          v20 = [v13 isCancelled] ^ 1;
        }

        (v18)[2](v18, v20, v27, 0, v19);
        [(NSMapTable *)self->_progressToSharedSourcesCompletionHandlerMapping removeObjectForKey:v13];
      }

      [(PXImportManager *)self _removeObserverFromProgress:v13];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v21 = v15;
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v22)
      {
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [(NSMapTable *)self->_providersToImportedResultObjectMapping removeObjectForKey:*(*(&v29 + 1) + 8 * v24++)];
          }

          while (v22 != v24);
          v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v22);
      }

      [(NSMapTable *)self->_progressToProvidersMapping removeObjectForKey:v13];
      [(NSMapTable *)self->_progressToErrorsMapping removeObjectForKey:v13];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = PXImportManager;
    [(PXImportManager *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

id __66__PXImportManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _assetsForImportedItemProviders:*(a1 + 32)];

  return v3;
}

- (void)_removeObserverFromProgress:(id)progress
{
  progressCopy = progress;
  v5 = NSStringFromSelector(sel_completedUnitCount);
  [progressCopy removeObserver:self forKeyPath:v5 context:PXProgressObserverContext];

  v6 = NSStringFromSelector(sel_isCancelled);
  [progressCopy removeObserver:self forKeyPath:v6 context:PXProgressObserverContext];
}

- (void)_addProgress:(id)progress forItemProviders:(id)providers
{
  progressToProvidersMapping = self->_progressToProvidersMapping;
  progressCopy = progress;
  [(NSMapTable *)progressToProvidersMapping setObject:providers forKey:progressCopy];
  v8 = NSStringFromSelector(sel_completedUnitCount);
  [progressCopy addObserver:self forKeyPath:v8 options:4 context:PXProgressObserverContext];

  v9 = NSStringFromSelector(sel_isCancelled);
  [progressCopy addObserver:self forKeyPath:v9 options:4 context:PXProgressObserverContext];

  progress = [(PXImportManager *)self progress];
  [progress addChild:progressCopy withPendingUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
}

- (void)_addProgress:(id)progress forItemProviders:(id)providers assetCreationCompletionHandler:(id)handler
{
  progressToCompletionHandlerMapping = self->_progressToCompletionHandlerMapping;
  providersCopy = providers;
  progressCopy = progress;
  v10 = _Block_copy(handler);
  [(NSMapTable *)progressToCompletionHandlerMapping setObject:v10 forKey:progressCopy];

  [(PXImportManager *)self _addProgress:progressCopy forItemProviders:providersCopy];
}

- (void)_addProgress:(id)progress forItemProviders:(id)providers sharedSourceCompletionHandler:(id)handler
{
  progressToSharedSourcesCompletionHandlerMapping = self->_progressToSharedSourcesCompletionHandlerMapping;
  providersCopy = providers;
  progressCopy = progress;
  v10 = _Block_copy(handler);
  [(NSMapTable *)progressToSharedSourcesCompletionHandlerMapping setObject:v10 forKey:progressCopy];

  [(PXImportManager *)self _addProgress:progressCopy forItemProviders:providersCopy];
}

- (void)_handleCompletionOfImportForItemProvider:(id)provider resultObject:(id)object progress:(id)progress error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  objectCopy = object;
  progressCopy = progress;
  errorCopy = error;
  if (errorCopy)
  {
    v14 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [progressCopy localizedDescription];
      v19 = 138413058;
      v20 = providerCopy;
      v21 = 2112;
      v22 = objectCopy;
      v23 = 2112;
      v24 = localizedDescription;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Error importing item provider: %@ resultObject: %@ progress: %@ error: %@", &v19, 0x2Au);
    }

    progressToErrorsMapping = self->_progressToErrorsMapping;
    v17 = errorCopy;
    v18 = progressCopy;
  }

  else
  {
    progressToErrorsMapping = self->_providersToImportedResultObjectMapping;
    v17 = objectCopy;
    v18 = providerCopy;
  }

  [(NSMapTable *)progressToErrorsMapping setObject:v17 forKey:v18];
  [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
}

- (id)importItemProviders:(id)providers completionHandler:(id)handler
{
  val = self;
  v42 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  handlerCopy = handler;
  v6 = [providersCopy count];
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v6];
  [v7 setCancellable:1];
  [v7 setPausable:0];
  v25 = +[PXImportManager supportedTypeIdentifiers];
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  objc_initWeak(&location, val);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  obj = providersCopy;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v25;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v40 count:16];
        if (v13)
        {
          v14 = *v30;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 hasRepresentationConformingToTypeIdentifier:*(*(&v29 + 1) + 8 * j) fileOptions:{0, val}])
              {
                [v24 addObject:v11];
                v26[0] = MEMORY[0x1E69E9820];
                v26[1] = 3221225472;
                v26[2] = __57__PXImportManager_importItemProviders_completionHandler___block_invoke;
                v26[3] = &unk_1E772D488;
                objc_copyWeak(&v28, &location);
                v26[4] = v11;
                v27 = v7;
                [v11 px_createAssetWithImportSessionID:uUIDString completionBlock:v26];

                objc_destroyWeak(&v28);
                goto LABEL_18;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v29 objects:v40 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v16 = PLDragAndDropGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v11;
          _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "No supported representation found for itemProvider: %@", buf, 0xCu);
        }

        [v7 setTotalUnitCount:{objc_msgSend(v7, "totalUnitCount") - 1}];
LABEL_18:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v7 totalUnitCount] < 1)
  {
    v17 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = obj;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "No supported representations found for itemProviders: %@", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No supported representation."];
    (*(handlerCopy + 2))(handlerCopy, 0, v18, 0);
  }

  else
  {
    [(PXImportManager *)val _addProgress:v7 forItemProviders:v24 assetCreationCompletionHandler:handlerCopy];
  }

  objc_destroyWeak(&location);

  return v7;
}

void __57__PXImportManager_importItemProviders_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 48));
  v5;
  *(a1 + 40);
  v6;
  px_dispatch_on_main_queue();
}

void __57__PXImportManager_importItemProviders_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleCompletionOfImportForItemProvider:*(a1 + 32) resultObject:*(a1 + 40) progress:*(a1 + 48) error:*(a1 + 56)];
}

- (PXImportManager)init
{
  v14.receiver = self;
  v14.super_class = PXImportManager;
  v2 = [(PXImportManager *)&v14 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    progressToProvidersMapping = v2->_progressToProvidersMapping;
    v2->_progressToProvidersMapping = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    progressToCompletionHandlerMapping = v2->_progressToCompletionHandlerMapping;
    v2->_progressToCompletionHandlerMapping = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    progressToSharedSourcesCompletionHandlerMapping = v2->_progressToSharedSourcesCompletionHandlerMapping;
    v2->_progressToSharedSourcesCompletionHandlerMapping = strongToStrongObjectsMapTable3;

    strongToStrongObjectsMapTable4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    progressToErrorsMapping = v2->_progressToErrorsMapping;
    v2->_progressToErrorsMapping = strongToStrongObjectsMapTable4;

    strongToStrongObjectsMapTable5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    providersToImportedResultObjectMapping = v2->_providersToImportedResultObjectMapping;
    v2->_providersToImportedResultObjectMapping = strongToStrongObjectsMapTable5;
  }

  return v2;
}

+ (NSArray)supportedTypeIdentifiers
{
  [self supportedTypes];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

+ (NSArray)supportedTypes
{
  if (supportedTypes_onceToken != -1)
  {
    dispatch_once(&supportedTypes_onceToken, &__block_literal_global_2718);
  }

  v3 = supportedTypes_supportedTypes;

  return v3;
}

void *__33__PXImportManager_supportedTypes__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  if ([v2 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (PXImportManager)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PXImportManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_defaultManager;

  return v2;
}

void __33__PXImportManager_defaultManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultManager_defaultManager;
  defaultManager_defaultManager = v1;
}

- (void)fetchAssetsFromDrop:(id)drop importIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  v62 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  completionCopy = completion;
  v9 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (neededCopy)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = _Block_copy(completionCopy);
    *buf = 138412802;
    v57 = dropCopy;
    v58 = 2112;
    v59 = v10;
    v60 = 2112;
    v61 = v11;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "_fetchAssetsFromDrop: %@ importIfNeeded: %@ completion: %@", buf, 0x20u);
  }

  if (!dropCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportManager.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"dropSession"}];
  }

  v43 = neededCopy;
  v44 = completionCopy;
  if (!completionCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXImportManager.m" lineNumber:313 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  array = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF70] array];
  v46 = v45 = dropCopy;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  items = [dropCopy items];
  v14 = [items countByEnumeratingWithState:&v51 objects:v55 count:16];
  v47 = array;
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(items);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        localObject = [v18 localObject];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_22;
        }

        assetReference = [localObject assetReference];
        asset = [assetReference asset];

        if (!asset)
        {
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXImportManager.m" lineNumber:325 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"pxLocalObject.assetReference.asset", v25}];

LABEL_22:
          asset = 0;
          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXImportManager.m" lineNumber:325 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"pxLocalObject.assetReference.asset", v27, px_descriptionForAssertionMessage}];

          array = v47;
        }

        if ([asset sourceType] != 2)
        {
          objectID = [asset objectID];
          [v46 addObject:objectID];

          array = v47;
          goto LABEL_24;
        }

LABEL_23:
        [array addObject:v18];
LABEL_24:
      }

      v15 = [items countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v15);
  }

  v29 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v46 count];
    v31 = [v47 count];
    *buf = 134218240;
    v57 = v30;
    array = v47;
    v58 = 2048;
    v59 = v31;
    _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEBUG, "Found %ld local drag assets and %ld drag items needing import", buf, 0x16u);
  }

  if (v43 && [array count])
  {
    v32 = +[PXImportManager defaultManager];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __70__PXImportManager_iOS__fetchAssetsFromDrop_importIfNeeded_completion___block_invoke;
    v48[3] = &unk_1E772D520;
    v49 = v46;
    v50 = v44;
    v33 = [v32 importDragItems:v47 completionHandler:v48];

    array = v47;
  }

  else if ([v46 count])
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v35 = objc_alloc(MEMORY[0x1E69788E0]);
    fetchType = [MEMORY[0x1E6978630] fetchType];
    v37 = [v35 initWithOids:v46 photoLibrary:px_deprecated_appPhotoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    (v44)[2](v44, v37);
    array = v47;
  }

  else
  {
    v44[2](v44, 0);
  }
}

void __70__PXImportManager_iOS__fetchAssetsFromDrop_importIfNeeded_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "Import completed: success %@ error %@", &v22, 0x16u);
  }

  if (!v8)
  {
    v13 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v7;
      v19 = "importDragItems failed to return importedAssets with error: %@";
      v20 = v13;
      v21 = 12;
LABEL_12:
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, v19, &v22, v21);
    }

LABEL_13:
    v12 = 0;
    v18 = 0;
    goto LABEL_14;
  }

  v11 = v8[2](v8);
  if (!v11)
  {
    v13 = PLDragAndDropGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      v19 = "importedAssets returned a nil result";
      v20 = v13;
      v21 = 2;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = v11;
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [v12 fetchedObjectIDs];
  [v13 addObjectsFromArray:v14];

  [v13 addObjectsFromArray:*(a1 + 32)];
  v15 = objc_alloc(MEMORY[0x1E69788E0]);
  v16 = [v12 photoLibrary];
  v17 = [MEMORY[0x1E6978630] fetchType];
  v18 = [v15 initWithOids:v13 photoLibrary:v16 fetchType:v17 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

LABEL_14:
  (*(*(a1 + 40) + 16))();
}

- (id)importSharedSourcesForDragItems:(id)items completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v6 = [itemsCopy count];
  v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v6];
  [v7 setCancellable:1];
  [v7 setPausable:0];
  v24 = +[PXImportManager supportedTypeIdentifiers];
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  objc_initWeak(&location, self);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        itemProvider = [v11 itemProvider];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = v24;
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v42 count:16];
        if (v14)
        {
          v15 = *v30;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v13);
              }

              if ([itemProvider hasRepresentationConformingToTypeIdentifier:*(*(&v29 + 1) + 8 * j) fileOptions:0])
              {
                [v23 addObject:itemProvider];
                v25[0] = MEMORY[0x1E69E9820];
                v25[1] = 3221225472;
                v25[2] = __74__PXImportManager_iOS__importSharedSourcesForDragItems_completionHandler___block_invoke;
                v25[3] = &unk_1E772D4F8;
                objc_copyWeak(&v28, &location);
                v18 = itemProvider;
                v26 = v18;
                v27 = v7;
                [v18 px_createStreamShareSourceWithCompletionBlock:v25];

                objc_destroyWeak(&v28);
                goto LABEL_18;
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v29 objects:v42 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v17 = PLDragAndDropGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = v11;
          v40 = 2112;
          v41 = itemProvider;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "No supported representation found for dragItem: %@ dragItem.itemProvider: %@", buf, 0x16u);
        }

        [v7 setTotalUnitCount:{objc_msgSend(v7, "totalUnitCount") - 1}];
LABEL_18:
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v8);
  }

  [(PXImportManager *)self _addProgress:v7 forItemProviders:v23 sharedSourceCompletionHandler:handlerCopy];
  objc_destroyWeak(&location);

  return v7;
}

void __74__PXImportManager_iOS__importSharedSourcesForDragItems_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCompletionOfImportForItemProvider:*(a1 + 32) resultObject:v7 progress:*(a1 + 40) error:v6];
}

@end