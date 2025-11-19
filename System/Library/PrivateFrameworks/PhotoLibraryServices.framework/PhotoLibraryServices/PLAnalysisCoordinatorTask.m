@interface PLAnalysisCoordinatorTask
+ (id)_orderedStepsForFeature:(unint64_t)a3 withLibraryServicesManager:(id)a4 taskID:(id)a5;
- (id)initForFeature:(unint64_t)a3 assets:(id)a4 lsm:(id)a5;
- (void)_cancel;
- (void)_executeStepsStartingAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)executeWithCompletionHandler:(id)a3;
@end

@implementation PLAnalysisCoordinatorTask

- (void)_cancel
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    taskID = self->_taskID;
    v10 = 138543362;
    v11 = taskID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cancelling Task", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock_currentStepIndex);
  currentStepIndex = self->_currentStepIndex;
  if (currentStepIndex >= [(NSArray *)self->_steps count])
  {
    v6 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_taskID;
      v8 = [(NSArray *)self->_steps count];
      v9 = self->_currentStepIndex;
      v10 = 138543874;
      v11 = v7;
      v12 = 2050;
      v13 = v8;
      v14 = 2050;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] All %{public}lu steps completed, nothing to cancel. %{public}lu step out of bounds", &v10, 0x20u);
    }
  }

  else
  {
    v6 = [(NSArray *)self->_steps objectAtIndexedSubscript:self->_currentStepIndex];
    [v6 cancel];
  }

  os_unfair_lock_unlock(&self->_lock_currentStepIndex);
}

- (void)executeWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_19BF1F000, "analysis-coordinator-task", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    taskID = self->_taskID;
    *buf = 138543362;
    v25 = taskID;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting Task", buf, 0xCu);
  }

  v8 = PLAnalysisCoordinatorGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = [(NSArray *)self->_assets count];
    v13 = self->_taskID;
    *buf = 134218242;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AnalysisCoordinatorTask", "asset count: %lu, uuid: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  progress = self->_progress;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__PLAnalysisCoordinatorTask_executeWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E75788C0;
  objc_copyWeak(&v22, buf);
  [(NSProgress *)progress setCancellationHandler:v21];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3254779904;
  v17[2] = __58__PLAnalysisCoordinatorTask_executeWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_1F0F05208;
  v17[4] = self;
  v15 = v11;
  v19 = v15;
  v20 = v9;
  v16 = v4;
  v18 = v16;
  [(PLAnalysisCoordinatorTask *)self _executeStepsStartingAtIndex:0 withCompletionHandler:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
}

void __58__PLAnalysisCoordinatorTask_executeWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void __58__PLAnalysisCoordinatorTask_executeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 56);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finishing Task with result: %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AnalysisCoordinatorTask", "", &v9, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_executeStepsStartingAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock_currentStepIndex);
  self->_currentStepIndex = a3;
  os_unfair_lock_unlock(&self->_lock_currentStepIndex);
  if ([(NSArray *)self->_steps count]<= a3)
  {
    v14 = MEMORY[0x1E69BF2D0];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = [v14 successWithResult:v15];

    v6[2](v6, v16);
  }

  else
  {
    v7 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      taskID = self->_taskID;
      *buf = 138543618;
      v24 = taskID;
      v25 = 2048;
      v26 = a3;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing step %lu", buf, 0x16u);
    }

    if ([(NSProgress *)self->_progress isCancelled])
    {
      v9 = PLAnalysisCoordinatorGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_taskID;
        *buf = 138543618;
        v24 = v10;
        v25 = 2048;
        v26 = a3;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Abandoning step %lu due to cancelled progress", buf, 0x16u);
      }

      v11 = MEMORY[0x1E69BF2D0];
      v12 = PLErrorCreate();
      v13 = [v11 failureWithError:v12];
      v6[2](v6, v13);
    }

    else
    {
      v17 = [(NSArray *)self->_steps objectAtIndexedSubscript:a3];
      assets = self->_assets;
      progress = self->_progress;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__PLAnalysisCoordinatorTask__executeStepsStartingAtIndex_withCompletionHandler___block_invoke;
      v20[3] = &unk_1E756D258;
      v20[4] = self;
      v22 = a3;
      v21 = v6;
      [v17 performStepForAssets:assets withProgress:progress withCompletionHandler:v20];
    }
  }
}

void __80__PLAnalysisCoordinatorTask__executeStepsStartingAtIndex_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailure])
  {
    v4 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 56);
      v6 = *(a1 + 48);
      v7 = [v3 error];
      v8 = 138543874;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Step %lu failed due to %@", &v8, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _executeStepsStartingAtIndex:*(a1 + 48) + 1 withCompletionHandler:*(a1 + 40)];
  }
}

- (id)initForFeature:(unint64_t)a3 assets:(id)a4 lsm:(id)a5
{
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = PLAnalysisCoordinatorTask;
  v12 = [(PLAnalysisCoordinatorTask *)&v26 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    taskID = v12->_taskID;
    v12->_taskID = v14;

    objc_storeStrong(&v12->_assets, a4);
    objc_storeStrong(&v12->_lsm, a5);
    v16 = [PLAnalysisCoordinatorTask _orderedStepsForFeature:a3 withLibraryServicesManager:v11 taskID:v12->_taskID];
    steps = v12->_steps;
    v12->_steps = v16;

    if (a3 == 7 && [(NSArray *)v12->_assets count]>= 2)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:v12 file:@"PLAnalysisCoordinatorTask.m" lineNumber:48 description:@"Video sensitivity analysis task may only be analyzed with one asset"];
    }

    if (![(NSArray *)v12->_steps count])
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:v12 file:@"PLAnalysisCoordinatorTask.m" lineNumber:49 description:@"Task must have at least one step"];
    }

    v18 = [(NSArray *)v12->_steps count];
    v19 = [v10 count];
    v20 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v19 * v18];
    progress = v12->_progress;
    v12->_progress = v20;

    v12->_currentStepIndex = 0;
    v12->_lock_currentStepIndex._os_unfair_lock_opaque = 0;
    v22 = v12;
  }

  return v12;
}

+ (id)_orderedStepsForFeature:(unint64_t)a3 withLibraryServicesManager:(id)a4 taskID:(id)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:1];
        v26[0] = v9;
        v10 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:8];
        v26[1] = v10;
        v15 = [[PLAnalysisCoordinatorStepSearchIndexing alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
        v26[2] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];

LABEL_19:
        goto LABEL_25;
      }

      if (a3 == 2)
      {
        v9 = [[PLAnalysisCoordinatorStepSearchIndexing alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
        v25[0] = v9;
        v10 = [[PLAnalysisCoordinatorStepSearchSuggestions alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
        v25[1] = v10;
        v11 = MEMORY[0x1E695DEC8];
        v12 = v25;
LABEL_18:
        v16 = [v11 arrayWithObjects:v12 count:2];
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    if (a3 == 3)
    {
      v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:1];
      v24[0] = v9;
      v10 = [[PLAnalysisCoordinatorStepSearchIndexing alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
      v24[1] = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = v24;
      goto LABEL_18;
    }

    v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:4];
    v23 = v9;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v23;
LABEL_21:
    v16 = [v13 arrayWithObjects:v14 count:1];
    goto LABEL_25;
  }

  if (a3 > 7)
  {
    if (a3 != 8)
    {
      if (a3 == 100)
      {
        v9 = [[PLAnalysisCoordinatorStepEmpty alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
        v19[0] = v9;
        v10 = [[PLAnalysisCoordinatorStepEmpty alloc] initWithLibraryServicesManager:v7 parentTaskID:v8];
        v19[1] = v10;
        v11 = MEMORY[0x1E695DEC8];
        v12 = v19;
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:1];
    v20 = v9;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v20;
    goto LABEL_21;
  }

  if (a3 == 5)
  {
    v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:1];
    v22[0] = v9;
    v10 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:4];
    v22[1] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v22;
    goto LABEL_18;
  }

  if (a3 == 7)
  {
    v9 = [[PLAnalysisCoordinatorStepMediaAnalysis alloc] initWithLibraryServicesManager:v7 parentTaskID:v8 processingType:32];
    v21 = v9;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v21;
    goto LABEL_21;
  }

LABEL_22:
  v9 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_FAULT))
  {
    v18 = 0;
    _os_log_impl(&dword_19BF1F000, &v9->super.super, OS_LOG_TYPE_FAULT, "Unaccounted for AnalysisCoordinatorFeature", &v18, 2u);
  }

  v16 = MEMORY[0x1E695E0F0];
LABEL_25:

  return v16;
}

@end