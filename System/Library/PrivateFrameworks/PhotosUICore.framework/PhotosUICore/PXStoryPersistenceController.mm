@interface PXStoryPersistenceController
- (PXStoryModel)model;
- (PXStoryPersistenceController)initWithModel:(id)a3;
- (PXStoryPersistenceController)initWithObservableModel:(id)a3;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (void)_ensureWriter;
- (void)_handleWriteSuccess:(BOOL)a3 createdAssetCollection:(id)a4 error:(id)a5 forPersistableRecipe:(id)a6 recipeAssetEdits:(id)a7;
- (void)_invalidatePersistableRecipe;
- (void)_invalidatePersistableRecipeManager;
- (void)_invalidateRecipeAssetEdits;
- (void)_invalidateWrite;
- (void)_updatePersistableRecipe;
- (void)_updatePersistableRecipeManager;
- (void)_updateRecipeAssetEdits;
- (void)_updateWrite;
- (void)configureUpdater:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setConfiguration:(id)a3;
- (void)setError:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setPersistableRecipe:(id)a3;
- (void)setPersistableRecipeManager:(id)a3;
- (void)setRecipeAssetEdits:(id)a3;
- (void)setWriterProgress:(id)a3;
@end

@implementation PXStoryPersistenceController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v5 = [(PXStoryPersistenceController *)self error];
  [v4 setObject:v5 forKeyedSubscript:@"Persistence"];

  v6 = [v4 copy];

  return v6;
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(PXStoryPersistenceController *)self persisted])
  {
    v6 = @"✅ Changes saved successfully\n";
LABEL_5:
    [v5 appendString:v6];
    goto LABEL_6;
  }

  v7 = [(PXStoryPersistenceController *)self writerProgress];

  if (v7)
  {
    v6 = @"Writing…\n";
    goto LABEL_5;
  }

  v17 = [(PXStoryPersistenceController *)self error];

  if (v17)
  {
    v18 = [(PXStoryPersistenceController *)self error];
    [v5 appendFormat:@"❌ Changes failed to be saved: %@\n", v18];
  }

  else
  {
    if (![(PXStoryPersistenceController *)self isActive])
    {
      v6 = @"⚠️ Inactive";
      goto LABEL_5;
    }

    v19 = [(PXStoryPersistenceController *)self persistableRecipeManager];
    v20 = [v19 isReadyToProducePersistableRecipe];

    if (v20)
    {
      v21 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v22 = [v21 isProducingPersistableRecipe];

      if (v22)
      {
        v6 = @"🔳 Producing persistable recipe…\n";
        goto LABEL_5;
      }

      v24 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v25 = [v24 error];

      if (!v25)
      {
        v26 = [(PXStoryPersistenceController *)self persistableRecipe];

        if (v26)
        {
          v6 = @"❌ Unexpected state\n";
        }

        else
        {
          v6 = @"🔳 No changes to save\n";
        }

        goto LABEL_5;
      }

      v18 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v23 = [v18 error];
      [v5 appendFormat:@"❌ Persistabled recipe failed to be produced: %@\n", v23];
    }

    else
    {
      [v5 appendString:@"⚠️ Waiting…\n"];
      v18 = [(PXStoryPersistenceController *)self persistableRecipeManager];
      v23 = [v18 diagnosticDescription];
      [v5 appendFormat:@"%@\n", v23];
    }
  }

LABEL_6:
  v8 = [(PXStoryPersistenceController *)self writer];

  if (v8)
  {
    v9 = [(PXStoryPersistenceController *)self writer];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v5 appendFormat:@"Writer: %@\n", v11];
  }

  v12 = [(PXStoryPersistenceController *)self persistableRecipeManager];

  if (v12)
  {
    v13 = [(PXStoryPersistenceController *)self persistableRecipeManager];
    v14 = [v13 diagnosticDescription];
    [v5 appendFormat:@"Manager: %@\n", v14];
  }

  v15 = [v5 copy];

  return v15;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PersistableRecipeManagerObservationContext == a5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__PXStoryPersistenceController_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E7731A00;
    v12[4] = self;
    v12[5] = a4;
    v9 = v12;
    goto LABEL_7;
  }

  if (StoryModelObservationContext == a5)
  {
    if ((a4 & 0x2000000000) == 0)
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
  [(PXStoryController *)&v10 observable:v8 didChange:a4 context:a5];
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

- (void)_handleWriteSuccess:(BOOL)a3 createdAssetCollection:(id)a4 error:(id)a5 forPersistableRecipe:(id)a6 recipeAssetEdits:(id)a7
{
  v10 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v17 = PLStoryGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Recipe failed to be written: %@", buf, 0xCu);
    }

    v18 = [(PXStoryPersistenceController *)self model];
    [v18 reportPersistenceFailureWithError:v13];

    v16 = v13;
  }

  [(PXStoryPersistenceController *)self setPersisted:v10];
  [(PXStoryPersistenceController *)self setError:v16];
  [(PXStoryPersistenceController *)self setWriterProgress:0];
  if (v12)
  {
    v19 = [(PXStoryPersistenceController *)self persistableRecipe];
    if (v19 == v14)
    {
    }

    else
    {
      v20 = [v14 isEqual:v19];

      if ((v20 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    v21 = [(PXStoryPersistenceController *)self recipeAssetEdits];
    if (v21 == v15)
    {
    }

    else
    {
      v22 = [v15 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    v23 = [(PXStoryPersistenceController *)self model];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __119__PXStoryPersistenceController__handleWriteSuccess_createdAssetCollection_error_forPersistableRecipe_recipeAssetEdits___block_invoke;
    v34[3] = &unk_1E77485B0;
    v35 = v12;
    [v23 performChanges:v34];
  }

  if (v15 && v10)
  {
    v24 = [(PXStoryPersistenceController *)self model];
    v25 = [v24 recipeManager];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __119__PXStoryPersistenceController__handleWriteSuccess_createdAssetCollection_error_forPersistableRecipe_recipeAssetEdits___block_invoke_2;
    v32[3] = &unk_1E773CCA8;
    v33 = v15;
    [v25 performChanges:v32];
  }

  v26 = [(PXStoryPersistenceController *)self persistableRecipe];
  if (v26 == v14 || ([v14 isEqual:v26] & 1) != 0)
  {
    v27 = [(PXStoryPersistenceController *)self recipeAssetEdits];
    v28 = v27;
    if (v27 == v15)
    {

      goto LABEL_29;
    }

    v29 = [v15 isEqual:v27];

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
  v3 = [(PXStoryPersistenceController *)self writerProgress];

  if (!v3)
  {
    v4 = [(PXStoryPersistenceController *)self persistableRecipe];
    v5 = [(PXStoryPersistenceController *)self recipeAssetEdits];
    v6 = [(PXStoryPersistenceController *)self model];
    v7 = [v6 undoManager];

    [(PXStoryPersistenceController *)self setPersisted:0];
    if (v4)
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWrite];
}

- (void)_updateRecipeAssetEdits
{
  v4 = [(PXStoryPersistenceController *)self persistableRecipeManager];
  v3 = [v4 recipeAssetEdits];
  [(PXStoryPersistenceController *)self setRecipeAssetEdits:v3];
}

- (void)_invalidateRecipeAssetEdits
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecipeAssetEdits];
}

- (void)_updatePersistableRecipe
{
  v4 = [(PXStoryPersistenceController *)self persistableRecipeManager];
  v3 = [v4 persistableRecipe];
  [(PXStoryPersistenceController *)self setPersistableRecipe:v3];
}

- (void)_invalidatePersistableRecipe
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistableRecipe];
}

- (void)_updatePersistableRecipeManager
{
  v8 = [(PXStoryPersistenceController *)self model];
  v3 = [(PXStoryPersistenceController *)self persistableRecipeManager];
  if (!v3)
  {
    v4 = [v8 configuration];
    v5 = [v4 isAppleMusicPreview];

    if (v5)
    {
      goto LABEL_5;
    }

    v6 = [PXStoryPersistableRecipeManager alloc];
    v3 = [v8 styleManager];
    v7 = [(PXStoryPersistableRecipeManager *)v6 initWithModel:v8 styleManager:v3];
    [(PXStoryPersistenceController *)self setPersistableRecipeManager:v7];
  }

LABEL_5:
}

- (void)_invalidatePersistableRecipeManager
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePersistableRecipeManager];
}

- (void)setError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_error != v5)
  {
    v9 = v5;
    v7 = [(NSError *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_error, a3);
      v8 = [(PXStoryPersistenceController *)self errorReporter];
      [v8 setError:self->_error forComponent:@"Persistence"];

      v6 = v9;
    }
  }
}

- (void)setWriterProgress:(id)a3
{
  v5 = a3;
  writerProgress = self->_writerProgress;
  if (writerProgress != v5)
  {
    v7 = v5;
    [(NSProgress *)writerProgress cancel];
    objc_storeStrong(&self->_writerProgress, a3);
    v5 = v7;
  }
}

- (void)_ensureWriter
{
  if (!self->_writer)
  {
    v5 = [(PXStoryPersistenceController *)self configuration];
    v3 = [PXStoryPersistableRecipeWriterFactory defaultPersistableRecipeWriterForConfiguration:v5];
    writer = self->_writer;
    self->_writer = v3;
  }
}

- (void)setRecipeAssetEdits:(id)a3
{
  v8 = a3;
  v5 = self->_recipeAssetEdits;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXStoryRecipeAssetEdits *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_recipeAssetEdits, a3);
      [(PXStoryPersistenceController *)self _invalidateWrite];
    }
  }
}

- (void)setPersistableRecipe:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_persistableRecipe != v5)
  {
    v8 = v5;
    v7 = [(PFStoryRecipe *)v5 isEqualToRecipe:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_persistableRecipe, a3);
      [(PXStoryPersistenceController *)self _invalidateWrite];
      v6 = v8;
    }
  }
}

- (void)setPersistableRecipeManager:(id)a3
{
  v5 = a3;
  persistableRecipeManager = self->_persistableRecipeManager;
  if (persistableRecipeManager != v5)
  {
    v7 = v5;
    [(PXStoryPersistableRecipeManager *)persistableRecipeManager unregisterChangeObserver:self context:PersistableRecipeManagerObservationContext];
    objc_storeStrong(&self->_persistableRecipeManager, a3);
    [(PXStoryPersistableRecipeManager *)self->_persistableRecipeManager registerChangeObserver:self context:PersistableRecipeManagerObservationContext];
    [(PXStoryPersistenceController *)self _invalidatePersistableRecipe];
    [(PXStoryPersistenceController *)self _invalidateRecipeAssetEdits];
    v5 = v7;
  }
}

- (void)setConfiguration:(id)a3
{
  v8 = a3;
  v5 = self->_configuration;
  writer = v5;
  if (v5 != v8)
  {
    v7 = [(PXStoryConfiguration *)v5 isEqual:?];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_configuration, a3);
    writer = self->_writer;
    self->_writer = 0;
  }

LABEL_5:
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryPersistenceController *)self _invalidatePersistableRecipeManager];
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryPersistenceController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updatePersistableRecipeManager, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updatePersistableRecipe];
  [v3 addUpdateSelector:sel__updateRecipeAssetEdits];
  [v3 addUpdateSelector:sel__updateWrite];
}

- (PXStoryPersistenceController)initWithModel:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PXStoryPersistenceController;
  v5 = [(PXStoryController *)&v19 initWithObservableModel:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, v4);
    [v4 registerChangeObserver:v6 context:StoryModelObservationContext];
    WeakRetained = objc_loadWeakRetained(&v6->_model);
    v8 = [WeakRetained configuration];
    configuration = v6->_configuration;
    v6->_configuration = v8;

    v10 = [(PXStoryConfiguration *)v6->_configuration errorReporter];
    errorReporter = v6->_errorReporter;
    v6->_errorReporter = v10;

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

- (PXStoryPersistenceController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryPersistenceController.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXStoryPersistenceController initWithObservableModel:]"}];

  abort();
}

@end