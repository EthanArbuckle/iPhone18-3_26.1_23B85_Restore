@interface PXStoryPersistenceController
- (PXStoryModel)model;
- (PXStoryPersistenceController)initWithModel:(id)model;
- (PXStoryPersistenceController)initWithObservableModel:(id)model;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_ensureWriter;
- (void)_handleWriteSuccess:(BOOL)success createdAssetCollection:(id)collection error:(id)error forPersistableRecipe:(id)recipe recipeAssetEdits:(id)edits;
- (void)_invalidatePersistableRecipe;
- (void)_invalidatePersistableRecipeManager;
- (void)_invalidateRecipeAssetEdits;
- (void)_invalidateWrite;
- (void)_updatePersistableRecipe;
- (void)_updatePersistableRecipeManager;
- (void)_updateRecipeAssetEdits;
- (void)_updateWrite;
- (void)configureUpdater:(id)updater;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setConfiguration:(id)configuration;
- (void)setError:(id)error;
- (void)setIsActive:(BOOL)active;
- (void)setPersistableRecipe:(id)recipe;
- (void)setPersistableRecipeManager:(id)manager;
- (void)setRecipeAssetEdits:(id)edits;
- (void)setWriterProgress:(id)progress;
@end

@implementation PXStoryPersistenceController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  error = [(PXStoryPersistenceController *)self error];
  [v4 setObject:error forKeyedSubscript:@"Persistence"];

  v6 = [v4 copy];

  return v6;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(PXStoryPersistenceController *)self persisted])
  {
    v6 = @"✅ Changes saved successfully\n";
LABEL_5:
    [v5 appendString:v6];
    goto LABEL_6;
  }

  writerProgress = [(PXStoryPersistenceController *)self writerProgress];

  if (writerProgress)
  {
    v6 = @"Writing…\n";
    goto LABEL_5;
  }

  error = [(PXStoryPersistenceController *)self error];

  if (error)
  {
    error2 = [(PXStoryPersistenceController *)self error];
    [v5 appendFormat:@"❌ Changes failed to be saved: %@\n", error2];
  }

  else
  {
    if (![(PXStoryPersistenceController *)self isActive])
    {
      v6 = @"⚠️ Inactive";
      goto LABEL_5;
    }

    persistableRecipeManager = [(PXStoryPersistenceController *)self persistableRecipeManager];
    isReadyToProducePersistableRecipe = [persistableRecipeManager isReadyToProducePersistableRecipe];

    if (isReadyToProducePersistableRecipe)
    {
      persistableRecipeManager2 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      isProducingPersistableRecipe = [persistableRecipeManager2 isProducingPersistableRecipe];

      if (isProducingPersistableRecipe)
      {
        v6 = @"🔳 Producing persistable recipe…\n";
        goto LABEL_5;
      }

      persistableRecipeManager3 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      error3 = [persistableRecipeManager3 error];

      if (!error3)
      {
        persistableRecipe = [(PXStoryPersistenceController *)self persistableRecipe];

        if (persistableRecipe)
        {
          v6 = @"❌ Unexpected state\n";
        }

        else
        {
          v6 = @"🔳 No changes to save\n";
        }

        goto LABEL_5;
      }

      error2 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v18Error = [error2 error];
      [v5 appendFormat:@"❌ Persistabled recipe failed to be produced: %@\n", v18Error];
    }

    else
    {
      [v5 appendString:@"⚠️ Waiting…\n"];
      error2 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v18Error = [error2 diagnosticDescription];
      [v5 appendFormat:@"%@\n", v18Error];
    }
  }

LABEL_6:
  writer = [(PXStoryPersistenceController *)self writer];

  if (writer)
  {
    writer2 = [(PXStoryPersistenceController *)self writer];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v5 appendFormat:@"Writer: %@\n", v11];
  }

  persistableRecipeManager4 = [(PXStoryPersistenceController *)self persistableRecipeManager];

  if (persistableRecipeManager4)
  {
    persistableRecipeManager5 = [(PXStoryPersistenceController *)self persistableRecipeManager];
    diagnosticDescription = [persistableRecipeManager5 diagnosticDescription];
    [v5 appendFormat:@"Manager: %@\n", diagnosticDescription];
  }

  v15 = [v5 copy];

  return v15;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PersistableRecipeManagerObservationContext == context)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__PXStoryPersistenceController_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E7731A00;
    v12[4] = self;
    v12[5] = change;
    v9 = v12;
    goto LABEL_7;
  }

  if (StoryModelObservationContext == context)
  {
    if ((change & 0x2000000000) == 0)
    {
      goto LABEL_8;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PXStoryPersistenceController_observable_didChange_context___block_invoke_2;
    v11[3] = &unk_1E77319D8;
    v11[4] = self;
    v9 = v11;
LABEL_7:
    [(PXStoryController *)self performChanges:v9];
    goto LABEL_8;
  }

  v10.receiver = self;
  v10.super_class = PXStoryPersistenceController;
  [(PXStoryController *)&v10 observable:observableCopy didChange:change context:context];
LABEL_8:
}

void __61__PXStoryPersistenceController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 4) != 0)
  {
    [*(a1 + 32) _invalidatePersistableRecipe];
    v3 = *(a1 + 40);
  }

  if ((v3 & 8) != 0)
  {
    [*(a1 + 32) _invalidateRecipeAssetEdits];
  }
}

void __61__PXStoryPersistenceController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) model];
  v2 = [v3 configuration];
  [*(a1 + 32) setConfiguration:v2];
}

- (void)_handleWriteSuccess:(BOOL)success createdAssetCollection:(id)collection error:(id)error forPersistableRecipe:(id)recipe recipeAssetEdits:(id)edits
{
  successCopy = success;
  v38 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  errorCopy = error;
  recipeCopy = recipe;
  editsCopy = edits;
  if (successCopy)
  {
    v16 = 0;
  }

  else
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Recipe failed to be written: %@", buf, 0xCu);
    }

    model = [(PXStoryPersistenceController *)self model];
    [model reportPersistenceFailureWithError:errorCopy];

    v16 = errorCopy;
  }

  [(PXStoryPersistenceController *)self setPersisted:successCopy];
  [(PXStoryPersistenceController *)self setError:v16];
  [(PXStoryPersistenceController *)self setWriterProgress:0];
  if (collectionCopy)
  {
    persistableRecipe = [(PXStoryPersistenceController *)self persistableRecipe];
    if (persistableRecipe == recipeCopy)
    {
    }

    else
    {
      v20 = [recipeCopy isEqual:persistableRecipe];

      if ((v20 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    recipeAssetEdits = [(PXStoryPersistenceController *)self recipeAssetEdits];
    if (recipeAssetEdits == editsCopy)
    {
    }

    else
    {
      v22 = [editsCopy isEqual:recipeAssetEdits];

      if ((v22 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    model2 = [(PXStoryPersistenceController *)self model];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __119__PXStoryPersistenceController__handleWriteSuccess_createdAssetCollection_error_forPersistableRecipe_recipeAssetEdits___block_invoke;
    v34[3] = &unk_1E77485B0;
    v35 = collectionCopy;
    [model2 performChanges:v34];
  }

  if (editsCopy && successCopy)
  {
    model3 = [(PXStoryPersistenceController *)self model];
    recipeManager = [model3 recipeManager];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __119__PXStoryPersistenceController__handleWriteSuccess_createdAssetCollection_error_forPersistableRecipe_recipeAssetEdits___block_invoke_2;
    v32[3] = &unk_1E773CCA8;
    v33 = editsCopy;
    [recipeManager performChanges:v32];
  }

  persistableRecipe2 = [(PXStoryPersistenceController *)self persistableRecipe];
  if (persistableRecipe2 == recipeCopy || ([recipeCopy isEqual:persistableRecipe2] & 1) != 0)
  {
    recipeAssetEdits2 = [(PXStoryPersistenceController *)self recipeAssetEdits];
    v28 = recipeAssetEdits2;
    if (recipeAssetEdits2 == editsCopy)
    {

      goto LABEL_29;
    }

    v29 = [editsCopy isEqual:recipeAssetEdits2];

    if (v29)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v30 = PLStoryGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEBUG, "Recipe was updated while writing, writing again…", buf, 2u);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __119__PXStoryPersistenceController__handleWriteSuccess_createdAssetCollection_error_forPersistableRecipe_recipeAssetEdits___block_invoke_26;
  v31[3] = &unk_1E77319D8;
  v31[4] = self;
  [(PXStoryController *)self performChanges:v31];
LABEL_29:
}

- (void)_updateWrite
{
  writerProgress = [(PXStoryPersistenceController *)self writerProgress];

  if (!writerProgress)
  {
    persistableRecipe = [(PXStoryPersistenceController *)self persistableRecipe];
    recipeAssetEdits = [(PXStoryPersistenceController *)self recipeAssetEdits];
    model = [(PXStoryPersistenceController *)self model];
    undoManager = [model undoManager];

    [(PXStoryPersistenceController *)self setPersisted:0];
    if (persistableRecipe)
    {
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "Writing recipe…", buf, 2u);
      }

      [(PXStoryPersistenceController *)self _ensureWriter];
      objc_initWeak(buf, self);
      v9 = [(PXStoryPersistenceController *)self log];
      v10 = os_signpost_id_make_with_pointer(v9, self);
      v11 = v9;
      v12 = v11;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StoryRecipeWrite", "", v17, 2u);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(PXStoryController *)self storyQueue];
      objc_claimAutoreleasedReturnValue();
      PXSyncCallbackBegin();
    }

    [(PXStoryPersistenceController *)self setWriterProgress:0, v13, v14, v15, v16];
  }
}

void __44__PXStoryPersistenceController__updateWrite__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_END, v11, "StoryRecipeWrite", "", buf, 2u);
  }

  v12 = PLStoryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = v13 - *(a1 + 80);
    *buf = 134218498;
    v16 = v14;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "Recipe written in %0.3fs with success: %i error: %@", buf, 0x1Cu);
  }

  PXIsSyncCallback();
}

void __44__PXStoryPersistenceController__updateWrite__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _handleWriteSuccess:*(a1 + 72) createdAssetCollection:*(a1 + 32) error:*(a1 + 40) forPersistableRecipe:*(a1 + 48) recipeAssetEdits:*(a1 + 56)];
}

- (void)_invalidateWrite
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateWrite];
}

- (void)_updateRecipeAssetEdits
{
  persistableRecipeManager = [(PXStoryPersistenceController *)self persistableRecipeManager];
  recipeAssetEdits = [persistableRecipeManager recipeAssetEdits];
  [(PXStoryPersistenceController *)self setRecipeAssetEdits:recipeAssetEdits];
}

- (void)_invalidateRecipeAssetEdits
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecipeAssetEdits];
}

- (void)_updatePersistableRecipe
{
  persistableRecipeManager = [(PXStoryPersistenceController *)self persistableRecipeManager];
  persistableRecipe = [persistableRecipeManager persistableRecipe];
  [(PXStoryPersistenceController *)self setPersistableRecipe:persistableRecipe];
}

- (void)_invalidatePersistableRecipe
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistableRecipe];
}

- (void)_updatePersistableRecipeManager
{
  model = [(PXStoryPersistenceController *)self model];
  persistableRecipeManager = [(PXStoryPersistenceController *)self persistableRecipeManager];
  if (!persistableRecipeManager)
  {
    configuration = [model configuration];
    isAppleMusicPreview = [configuration isAppleMusicPreview];

    if (isAppleMusicPreview)
    {
      goto LABEL_5;
    }

    v6 = [PXStoryPersistableRecipeManager alloc];
    persistableRecipeManager = [model styleManager];
    v7 = [(PXStoryPersistableRecipeManager *)v6 initWithModel:model styleManager:persistableRecipeManager];
    [(PXStoryPersistenceController *)self setPersistableRecipeManager:v7];
  }

LABEL_5:
}

- (void)_invalidatePersistableRecipeManager
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updatePersistableRecipeManager];
}

- (void)setError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (self->_error != errorCopy)
  {
    v9 = errorCopy;
    v7 = [(NSError *)errorCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_error, error);
      errorReporter = [(PXStoryPersistenceController *)self errorReporter];
      [errorReporter setError:self->_error forComponent:@"Persistence"];

      v6 = v9;
    }
  }
}

- (void)setWriterProgress:(id)progress
{
  progressCopy = progress;
  writerProgress = self->_writerProgress;
  if (writerProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)writerProgress cancel];
    objc_storeStrong(&self->_writerProgress, progress);
    progressCopy = v7;
  }
}

- (void)_ensureWriter
{
  if (!self->_writer)
  {
    configuration = [(PXStoryPersistenceController *)self configuration];
    v3 = [PXStoryPersistableRecipeWriterFactory defaultPersistableRecipeWriterForConfiguration:configuration];
    writer = self->_writer;
    self->_writer = v3;
  }
}

- (void)setRecipeAssetEdits:(id)edits
{
  editsCopy = edits;
  v5 = self->_recipeAssetEdits;
  v6 = v5;
  if (v5 == editsCopy)
  {
  }

  else
  {
    v7 = [(PXStoryRecipeAssetEdits *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_recipeAssetEdits, edits);
      [(PXStoryPersistenceController *)self _invalidateWrite];
    }
  }
}

- (void)setPersistableRecipe:(id)recipe
{
  recipeCopy = recipe;
  v6 = recipeCopy;
  if (self->_persistableRecipe != recipeCopy)
  {
    v8 = recipeCopy;
    v7 = [(PFStoryRecipe *)recipeCopy isEqualToRecipe:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistableRecipe, recipe);
      [(PXStoryPersistenceController *)self _invalidateWrite];
      v6 = v8;
    }
  }
}

- (void)setPersistableRecipeManager:(id)manager
{
  managerCopy = manager;
  persistableRecipeManager = self->_persistableRecipeManager;
  if (persistableRecipeManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXStoryPersistableRecipeManager *)persistableRecipeManager unregisterChangeObserver:self context:PersistableRecipeManagerObservationContext];
    objc_storeStrong(&self->_persistableRecipeManager, manager);
    [(PXStoryPersistableRecipeManager *)self->_persistableRecipeManager registerChangeObserver:self context:PersistableRecipeManagerObservationContext];
    [(PXStoryPersistenceController *)self _invalidatePersistableRecipe];
    [(PXStoryPersistenceController *)self _invalidateRecipeAssetEdits];
    managerCopy = v7;
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_configuration;
  writer = v5;
  if (v5 != configurationCopy)
  {
    v7 = [(PXStoryConfiguration *)v5 isEqual:?];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_configuration, configuration);
    writer = self->_writer;
    self->_writer = 0;
  }

LABEL_5:
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryPersistenceController *)self _invalidatePersistableRecipeManager];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryPersistenceController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updatePersistableRecipeManager, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updatePersistableRecipe];
  [updaterCopy addUpdateSelector:sel__updateRecipeAssetEdits];
  [updaterCopy addUpdateSelector:sel__updateWrite];
}

- (PXStoryPersistenceController)initWithModel:(id)model
{
  modelCopy = model;
  v19.receiver = self;
  v19.super_class = PXStoryPersistenceController;
  v5 = [(PXStoryController *)&v19 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
    [modelCopy registerChangeObserver:v6 context:StoryModelObservationContext];
    WeakRetained = objc_loadWeakRetained(&v6->_model);
    configuration = [WeakRetained configuration];
    configuration = v6->_configuration;
    v6->_configuration = configuration;

    errorReporter = [(PXStoryConfiguration *)v6->_configuration errorReporter];
    errorReporter = v6->_errorReporter;
    v6->_errorReporter = errorReporter;

    v12 = objc_loadWeakRetained(&v6->_model);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__PXStoryPersistenceController_initWithModel___block_invoke;
    v17[3] = &unk_1E77485B0;
    v13 = v6;
    v18 = v13;
    [v12 performChanges:v17];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__PXStoryPersistenceController_initWithModel___block_invoke_2;
    v15[3] = &unk_1E774C5F8;
    v16 = v13;
    [(PXStoryController *)v16 performChanges:v15];
  }

  return v6;
}

- (PXStoryPersistenceController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPersistenceController.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXStoryPersistenceController initWithObservableModel:]"}];

  abort();
}

@end