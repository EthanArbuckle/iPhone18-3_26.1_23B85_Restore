@interface PXStoryViewResourcesPreloadingController
- (PXStoryViewModel)viewModel;
- (PXStoryViewResourcesPreloadingController)initWithObservableModel:(id)model;
- (PXStoryViewResourcesPreloadingController)initWithViewModel:(id)model;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (id)resourcesPreloadingControllerForModel:(id)model;
- (void)_invalidateResourcesPreloadingControllers;
- (void)_updateResourcesPreloadingControllers;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)setIsActive:(BOOL)active;
@end

@implementation PXStoryViewResourcesPreloadingController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __81__PXStoryViewResourcesPreloadingController_diagnosticTextForHUDType_displaySize___block_invoke;
  v17 = &unk_1E773BCF0;
  v18 = v5;
  selfCopy = self;
  v6 = v5;
  v7 = _Block_copy(&v14);
  v8 = [(PXStoryViewResourcesPreloadingController *)self viewModel:v14];
  mainModel = [v8 mainModel];
  v20[0] = mainModel;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v7[2](v7, @"Main", v10);

  relatedModels = [v8 relatedModels];
  v7[2](v7, @"Related", relatedModels);

  v12 = [v6 copy];

  return v12;
}

void __81__PXStoryViewResourcesPreloadingController_diagnosticTextForHUDType_displaySize___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) appendFormat:@"%@:\n", a2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 40) resourcesPreloadingControllerForModel:*(*(&v16 + 1) + 8 * i)];
        v12 = *(a1 + 32);
        v13 = [v11 diagnosticDescription];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = @"??";
        }

        [v12 appendString:v15];

        [*(a1 + 32) appendString:@"\n"];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)handleModelChange:(unint64_t)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = PXStoryViewResourcesPreloadingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((changeCopy & 0x140) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__PXStoryViewResourcesPreloadingController_handleModelChange___block_invoke;
    v5[3] = &unk_1E773BCC8;
    v5[4] = self;
    [(PXStoryController *)self performChanges:v5];
  }
}

- (void)_updateResourcesPreloadingControllers
{
  v46 = *MEMORY[0x1E69E9840];
  resourcesPreloadingControllers = [(PXStoryViewResourcesPreloadingController *)self resourcesPreloadingControllers];
  isActive = [(PXStoryViewResourcesPreloadingController *)self isActive];
  v6 = isActive;
  v7 = "MacSyncedAssetsNotificationListManager" + 32;
  if (isActive)
  {
    viewModel = [(PXStoryViewResourcesPreloadingController *)self viewModel];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    keyEnumerator = [resourcesPreloadingControllers keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          [v9 addObject:*(*(&v40 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [keyEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    v15 = +[PXStorySettings sharedInstance];
    preloadNonKeyRelated = [v15 preloadNonKeyRelated];

    resourcesPreloadingCoordinator = [(PXStoryViewResourcesPreloadingController *)self resourcesPreloadingCoordinator];
    v33[0] = MEMORY[0x1E69E9820];
    v7 = "anager";
    v33[1] = 3221225472;
    v33[2] = __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke;
    v33[3] = &unk_1E773BC80;
    v34 = v9;
    v35 = resourcesPreloadingControllers;
    v36 = viewModel;
    selfCopy = self;
    v38 = a2;
    v39 = preloadNonKeyRelated;
    v18 = viewModel;
    v19 = v9;
    [resourcesPreloadingCoordinator performChanges:v33];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  objectEnumerator = [resourcesPreloadingControllers objectEnumerator];
  v21 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    v24 = *(v7 + 63);
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = v24;
        v27[2] = __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke_5;
        v27[3] = &__block_descriptor_33_e55_v16__0___PXStoryMutableResourcesPreloadingController__8l;
        v28 = v6;
        [v26 performChanges:v27];
        ++v25;
      }

      while (v22 != v25);
      v22 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v44 count:16];
    }

    while (v22);
  }
}

void __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke_2;
  aBlock[3] = &unk_1E773BC58;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  v38 = *(a1 + 64);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v35 = v7;
  v36 = v6;
  v8 = v3;
  v37 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [*(a1 + 48) mainModel];
  v9[2](v9, v10, 0);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [*(a1 + 48) relatedModels];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if ([v16 viewMode] == 3 && objc_msgSend(v16, "thumbnailStyle") == 2)
        {
          v17 = 1;
        }

        else
        {
          if (*(a1 + 72) != 1)
          {
            continue;
          }

          v17 = 2;
        }

        v9[2](v9, v16, v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = *(a1 + 32);
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [*(a1 + 40) objectForKey:v23];
        if (!v24)
        {
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          [v25 handleFailureInMethod:*(a1 + 64) object:*(a1 + 56) file:@"PXStoryViewResourcesPreloadingController.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"unusedResourcesPreloadingController != nil"}];
        }

        [v24 performChanges:&__block_literal_global_132741];
        [v8 removePreloadingController:v24];
        [*(a1 + 40) removeObjectForKey:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v20);
  }
}

void __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) removeObject:v5];
    v6 = [*(a1 + 40) objectForKey:v5];
    if (!v6)
    {
      if (!*(a1 + 48))
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:*(a1 + 72) object:*(a1 + 56) file:@"PXStoryViewResourcesPreloadingController.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"viewModel != nil"}];
      }

      v7 = [PXStoryResourcesPreloadingController alloc];
      v8 = [*(a1 + 48) mediaProvider];
      v6 = [(PXStoryResourcesPreloadingController *)v7 initWithModel:v5 mediaProvider:v8];

      [*(a1 + 40) setObject:v6 forKey:v5];
    }

    v9 = 2;
    v10 = a3 == 0;
    if (a3 == 1)
    {
      v10 = 0;
    }

    else
    {
      v9 = a3 == 0;
    }

    v11 = a3 == 2;
    if (a3 == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = v9;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke_3;
    v15[3] = &__block_descriptor_34_e55_v16__0___PXStoryMutableResourcesPreloadingController__8l;
    v13 = !v11 && v10;
    v16 = 0;
    v17 = v13;
    [(PXStoryController *)v6 performChanges:v15];
    [*(a1 + 64) addPreloadingController:v6 withPriority:v12];
  }
}

void __81__PXStoryViewResourcesPreloadingController__updateResourcesPreloadingControllers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIsSongResourcesPreloadingEnabled:v3];
  [v4 setShouldSkipInitialSegment:*(a1 + 33)];
}

- (void)_invalidateResourcesPreloadingControllers
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateResourcesPreloadingControllers];
}

- (id)resourcesPreloadingControllerForModel:(id)model
{
  modelCopy = model;
  resourcesPreloadingControllers = [(PXStoryViewResourcesPreloadingController *)self resourcesPreloadingControllers];
  v6 = [resourcesPreloadingControllers objectForKey:modelCopy];

  return v6;
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryViewResourcesPreloadingController *)self _invalidateResourcesPreloadingControllers];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryViewResourcesPreloadingController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateResourcesPreloadingControllers, v4.receiver, v4.super_class}];
}

- (PXStoryViewResourcesPreloadingController)initWithViewModel:(id)model
{
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = PXStoryViewResourcesPreloadingController;
  v6 = [(PXStoryController *)&v22 initWithObservableModel:modelCopy];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->_viewModel, modelCopy);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __62__PXStoryViewResourcesPreloadingController_initWithViewModel___block_invoke;
    v20 = &unk_1E774B048;
    v9 = v7;
    v21 = v9;
    [modelCopy performChanges:&v17];

    WeakRetained = objc_loadWeakRetained(&v7->_viewModel);
    resourcesPreloadingCoordinator = [WeakRetained resourcesPreloadingCoordinator];
    resourcesPreloadingCoordinator = v9->_resourcesPreloadingCoordinator;
    v9->_resourcesPreloadingCoordinator = resourcesPreloadingCoordinator;

    if (!v9->_resourcesPreloadingCoordinator)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXStoryViewResourcesPreloadingController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"_resourcesPreloadingCoordinator != nil", v17, v18, v19, v20}];
    }

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    resourcesPreloadingControllers = v9->_resourcesPreloadingControllers;
    v9->_resourcesPreloadingControllers = strongToStrongObjectsMapTable;
  }

  return v7;
}

- (PXStoryViewResourcesPreloadingController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewResourcesPreloadingController.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXStoryViewResourcesPreloadingController initWithObservableModel:]"}];

  abort();
}

@end