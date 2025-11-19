@interface SHSheetActivityPerformer
- (BOOL)_enqueueBackgroundOperationsIfNeeded;
- (BOOL)_presentPopoverContentViewController;
- (BOOL)_shouldExecuteItemOperation:(id)a3;
- (BOOL)isRunning;
- (SHSheetActivityPerformer)initWithActivity:(id)a3 session:(id)a4;
- (SHSheetActivityPerformerDelegate)delegate;
- (SHSheetActivityPerformerPresentationInterface)presentationController;
- (SHSheetSession)session;
- (UIActivityViewController)activityViewController;
- (id)_resolvedActivityItems;
- (void)_completePerformingActivityWithState:(int64_t)a3 returnedItems:(id)a4 error:(id)a5;
- (void)_configureActivityAfterPreparation;
- (void)_configureActivityBeforePreparation;
- (void)_didFinishAllBackgroundOperations;
- (void)_executeActivity;
- (void)_finishWithState:(int64_t)a3;
- (void)_handlePresentationCompletion;
- (void)_performPresentationWithViewController:(id)a3;
- (void)_prepareActivityPresentation;
- (void)_prepareActivityWithCompletion:(id)a3;
- (void)_start;
- (void)cancel;
- (void)dealloc;
- (void)finishWithSuccess:(BOOL)a3;
- (void)performWithCompletionHandler:(id)a3;
- (void)setActivityItemProviderOperationQueue:(id)a3;
@end

@implementation SHSheetActivityPerformer

- (SHSheetActivityPerformer)initWithActivity:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SHSheetActivityPerformer;
  v9 = [(SHSheetActivityPerformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, a3);
    objc_storeWeak(&v10->_session, v8);
    v11 = [v8 activityViewController];
    objc_storeWeak(&v10->_activityViewController, v11);

    v10->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(SHSheetActivityPerformer *)self activity];
  [v3 _cleanup];

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 endBackgroundTask:self->_backgroundTaskIdentifier];

  v5 = [(SHSheetActivityPerformer *)self presentationController];
  [v5 activityPerformCleanUpPresentation:self];

  v6.receiver = self;
  v6.super_class = SHSheetActivityPerformer;
  [(SHSheetActivityPerformer *)&v6 dealloc];
}

- (void)setActivityItemProviderOperationQueue:(id)a3
{
  v5 = a3;
  activityItemProviderOperationQueue = self->_activityItemProviderOperationQueue;
  p_activityItemProviderOperationQueue = &self->_activityItemProviderOperationQueue;
  v6 = activityItemProviderOperationQueue;
  if (activityItemProviderOperationQueue != v5)
  {
    v9 = v5;
    [(NSOperationQueue *)v6 cancelAllOperations];
    objc_storeStrong(p_activityItemProviderOperationQueue, a3);
    v5 = v9;
  }
}

- (BOOL)isRunning
{
  v3 = [(SHSheetActivityPerformer *)self state];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(SHSheetActivityPerformer *)self state]== 2;
  }

  return v3;
}

- (void)performWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SHSheetActivityPerformer *)self setState:1];
  v5 = [(SHSheetActivityPerformer *)self activity];
  [(SHSheetActivityPerformer *)self setBeginPerformingActivityTimestamp:mach_continuous_time()];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 activityType];
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Performing activity %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(SHSheetActivityPerformer *)self setCompletionHandler:v4];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__SHSheetActivityPerformer_performWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E71FACE0;
  objc_copyWeak(&v13, buf);
  [v5 setDidFinishPerformingActivityHandler:v12];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = [(SHSheetActivityPerformer *)self activityViewController];
  [v8 addObserver:self selector:sel__start name:@"_UIActivityViewControllerExecuteActivityNotification" object:v9];

  if (![v5 _needsResolvedActivityItems])
  {
    goto LABEL_7;
  }

  v10 = [v5 activityType];
  if ([v10 isEqualToString:@"com.apple.DocumentManagerUICore.AddTagsActionExtension"])
  {

LABEL_7:
    [(SHSheetActivityPerformer *)self _executeActivity];
    goto LABEL_8;
  }

  v11 = [(SHSheetActivityPerformer *)self _enqueueBackgroundOperationsIfNeeded];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_8:
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __57__SHSheetActivityPerformer_performWithCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a2)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completePerformingActivityWithState:v6 returnedItems:v8 error:v7];
}

- (void)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SHSheetActivityPerformer *)self activity];
    v5 = [(SHSheetActivityPerformer *)self activity];
    v6 = [v5 activityType];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling activity %{public}@ (%{public}@)", &v7, 0x16u);
  }

  [(SHSheetActivityPerformer *)self _finishWithState:3];
}

- (void)finishWithSuccess:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SHSheetActivityPerformer *)self activity];
    v7 = [(SHSheetActivityPerformer *)self activity];
    v8 = [v7 activityType];
    v9 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Finishing activity %{public}@ (%{public}@) with success:%@", &v11, 0x20u);
  }

  if (v3)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  [(SHSheetActivityPerformer *)self _finishWithState:v10];
}

- (void)_finishWithState:(int64_t)a3
{
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 endBackgroundTask:{-[SHSheetActivityPerformer backgroundTaskIdentifier](self, "backgroundTaskIdentifier")}];

  [(SHSheetActivityPerformer *)self setBackgroundTaskIdentifier:*MEMORY[0x1E69DDBE8]];
  v6 = MEMORY[0x1E69E58C0];
  v7 = [(SHSheetActivityPerformer *)self activityViewController];
  [v6 cancelPreviousPerformRequestsWithTarget:v7];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self name:@"_UIActivityViewControllerExecuteActivityNotification" object:0];

  [(SHSheetActivityPerformer *)self setActivityItemProviderOperationQueue:0];

  [(SHSheetActivityPerformer *)self _completePerformingActivityWithState:a3 returnedItems:0 error:0];
}

- (void)_completePerformingActivityWithState:(int64_t)a3 returnedItems:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SHSheetActivityPerformerStateDescription(a3);
    v12 = [(SHSheetActivityPerformer *)self activity];
    v13 = [(SHSheetActivityPerformer *)self activity];
    v14 = [v13 activityType];
    v21 = 138412802;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Completing with state:%@ %{public}@ (%{public}@)", &v21, 0x20u);
  }

  if ([(SHSheetActivityPerformer *)self state]< 3)
  {
    [(SHSheetActivityPerformer *)self setState:a3];
    v16 = [(SHSheetActivityPerformer *)self activity];
    [v16 setDidFinishPerformingActivityHandler:0];

    v17 = [(SHSheetActivityPerformer *)self presentationController];
    [v17 activityPerformerStopListeningForDismissalTransition:self];

    v18 = [SHSheetActivityPerformerResult alloc];
    v19 = [(SHSheetActivityPerformer *)self activity];
    v15 = [(SHSheetActivityPerformerResult *)v18 initWithActivity:v19 completedState:a3 returnedItems:v8 error:v9];

    [(SHSheetActivityPerformer *)self setResult:v15];
    v20 = [(SHSheetActivityPerformer *)self completionHandler];
    (v20)[2](v20, v15);
    [(SHSheetActivityPerformer *)self setCompletionHandler:0];
    [(SHSheetActivityPerformer *)self setRetainedActivityViewController:0];
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = self;
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_DEFAULT, "Activity Performer:%@ is already completed with state:%ld", &v21, 0x16u);
    }
  }
}

- (id)_resolvedActivityItems
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  v5 = share_sheet_log();
  v6 = os_signpost_id_make_with_pointer(v5, v3);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ResolveActivityItemValues", " enableTelemetry=YES ", &v21, 2u);
  }

  v7 = share_sheet_log();
  v8 = share_sheet_log();
  v9 = os_signpost_id_make_with_pointer(v8, v3);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [v3 activityType];
    v21 = 138543362;
    v22 = v10;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolveActivityItemValuesWithType", "activityType=%{public, signpost.telemetry:string1}@", &v21, 0xCu);
  }

  v11 = [(SHSheetActivityPerformer *)self session];
  v12 = [v11 activityItemsManager];
  v13 = [v12 activityItemValuesForActivity:v3];

  v14 = share_sheet_log();
  v15 = share_sheet_log();
  v16 = os_signpost_id_make_with_pointer(v15, v3);

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_END, v16, "ResolveActivityItemValues", " enableTelemetry=YES ", &v21, 2u);
  }

  v17 = share_sheet_log();
  v18 = share_sheet_log();
  v19 = os_signpost_id_make_with_pointer(v18, v3);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v17, OS_SIGNPOST_INTERVAL_END, v19, "ResolveActivityItemValuesWithType", " enableTelemetry=YES ", &v21, 2u);
  }

  return v13;
}

- (void)_executeActivity
{
  v3 = [(SHSheetActivityPerformer *)self session];
  v2 = [v3 activityViewController];
  [v2 _executeActivity];
}

- (void)_start
{
  v38 = *MEMORY[0x1E69E9840];
  [(SHSheetActivityPerformer *)self setState:2];
  v3 = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 activityType];
    *buf = 138543618;
    v30 = v3;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Executing activity %{public}@ (%{public}@)", buf, 0x16u);
  }

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v6 endBackgroundTask:self->_backgroundTaskIdentifier];

  self->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(SHSheetActivityPerformer *)self activityItemProviderOperations];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v25 + 1) + 8 * i) isCancelled])
        {
          LOBYTE(v8) = 1;
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [(SHSheetActivityPerformer *)self setActivityItemProviderOperations:0];
  v11 = [(SHSheetActivityPerformer *)self presentationController];
  v12 = [v11 activityPerformerCanPresent:self];

  if ((v8 & 1) != 0 || !v12)
  {
    v13 = [(SHSheetActivityPerformer *)self session];
    v14 = [v13 testingReferenceSnapshot];

    if (v14)
    {
      v15 = [(SHSheetActivityPerformer *)self _resolvedActivityItems];
      v16 = [(SHSheetActivityPerformer *)self session];
      v17 = [v3 activityType];
      [v16 _updateTestingSnapshotIfNeededForResolvedItems:v15 activityType:v17];
    }

    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v3 activityType];
      v20 = NSStringFromBOOL();
      v21 = NSStringFromBOOL();
      *buf = 138544130;
      v30 = v3;
      v31 = 2114;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_18B359000, v18, OS_LOG_TYPE_DEFAULT, "Cancel activity %{public}@ (%{public}@) anyOperationWasCanceled:%@ canPresent:%@", buf, 0x2Au);
    }

    [(SHSheetActivityPerformer *)self cancel];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__SHSheetActivityPerformer__start__block_invoke;
    v22[3] = &unk_1E71F91A0;
    v23 = v3;
    v24 = self;
    [(SHSheetActivityPerformer *)self _prepareActivityWithCompletion:v22];
  }
}

uint64_t __34__SHSheetActivityPerformer__start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 activityType];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "Did prepare activity %{public}@ (%{public}@)", &v6, 0x16u);
  }

  return [*(a1 + 40) _prepareActivityPresentation];
}

- (void)_prepareActivityWithCompletion:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SHSheetActivityPerformer *)self _resolvedActivityItems];
  v6 = [(SHSheetActivityPerformer *)self activity];
  v7 = [(SHSheetActivityPerformer *)self activityViewController];
  v8 = [(SHSheetActivityPerformer *)self session];
  v9 = [v6 activityType];
  [v8 _updateTestingSnapshotIfNeededForResolvedItems:v5 activityType:v9];

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 activityType];
    v12 = SFGenerateTypeList();
    *buf = 138544131;
    v29 = v6;
    v30 = 2114;
    v31 = v11;
    v32 = 2117;
    v33 = v5;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Preparing activity %{public}@ (%{public}@) with activity items:%{sensitive}@ of types:%{public}@", buf, 0x2Au);
  }

  [(SHSheetActivityPerformer *)self _configureActivityBeforePreparation];
  v13 = share_sheet_log();
  v14 = share_sheet_log();
  v15 = os_signpost_id_make_with_pointer(v14, v6);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PrepareActivity", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = share_sheet_log();
  v17 = share_sheet_log();
  v18 = os_signpost_id_make_with_pointer(v17, v6);

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v19 = [v6 activityType];
    *buf = 138543362;
    v29 = v19;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PrepareActivityWithType", "activityType=%{public, signpost.telemetry:string1}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__SHSheetActivityPerformer__prepareActivityWithCompletion___block_invoke;
  v23[3] = &unk_1E71FA700;
  objc_copyWeak(&v27, buf);
  v20 = v6;
  v24 = v20;
  v21 = v7;
  v25 = v21;
  v22 = v4;
  v26 = v22;
  [v20 _prepareWithActivityItems:v5 completion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __59__SHSheetActivityPerformer__prepareActivityWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v3 = share_sheet_log();
    v4 = share_sheet_log();
    v5 = os_signpost_id_make_with_pointer(v4, *(a1 + 32));

    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v3, OS_SIGNPOST_INTERVAL_END, v5, "PrepareActivity", " enableTelemetry=YES ", &v13, 2u);
    }

    v6 = share_sheet_log();
    v7 = share_sheet_log();
    v8 = os_signpost_id_make_with_pointer(v7, *(a1 + 32));

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PrepareActivityWithType", " enableTelemetry=YES ", &v13, 2u);
    }

    [WeakRetained _configureActivityAfterPreparation];
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = [v10 activityType];
      v13 = 138412802;
      v14 = v11;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "Preparing activity view controller:%@ %{public}@ (%{public}@)", &v13, 0x20u);
    }

    [*(a1 + 40) _prepareActivity:*(a1 + 32) completion:*(a1 + 48)];
  }
}

- (BOOL)_presentPopoverContentViewController
{
  v3 = [(SHSheetActivityPerformer *)self activityViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    return 0;
  }

  if (!_ShareSheetPlatformPrefersPopover())
  {
    return 0;
  }

  v6 = [(SHSheetActivityPerformer *)self activity];
  v7 = [v6 _embeddedActivityViewController];

  if (!v7)
  {
    return 0;
  }

  v8 = [(SHSheetActivityPerformer *)self presentationController];
  v9 = [v8 activityPerformer:self presentPopoverContentViewController:v7];

  return v9;
}

- (void)_prepareActivityPresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetActivityPerformer *)self activity];
  if ([(SHSheetActivityPerformer *)self _presentPopoverContentViewController])
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 activityType];
      *buf = 138543618;
      v33 = v3;
      v34 = 2114;
      v35 = v5;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Did present popover content for activity %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v6 = [(SHSheetActivityPerformer *)self activityViewController];
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceIdiom] == 6;

    v9 = [v3 activityViewController];
    v4 = v9;
    if (v8)
    {
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = [v3 _embeddedActivityViewController];
      }

      v11 = v10;

      v4 = v11;
    }

    v12 = [(SHSheetActivityPerformer *)self activityViewController];
    v13 = [v3 activityType];
    v14 = [v13 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v3 activityType];
      *buf = 138412802;
      v33 = v4;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_DEFAULT, "Prepare activity presentation for view controller:%@ %{public}@ (%{public}@)", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v17 = [(SHSheetActivityPerformer *)self presentationController];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__SHSheetActivityPerformer__prepareActivityPresentation__block_invoke;
    v29[3] = &unk_1E71F96C8;
    v18 = v3;
    v30 = v18;
    objc_copyWeak(&v31, buf);
    [v17 activityPerformer:self startListeningForDismissalTransitionWithCompletion:v29];

    if (_ShareSheetIsSupportedPrintActivity(v18))
    {
      v19 = [v12 _window];
      [v18 setWindowHoldingActivityViewController:v19];
    }

    v20 = [(SHSheetActivityPerformer *)self session];
    v21 = [v20 allowsEmbedding];
    if (v4)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = [v18 _managesOwnPresentation];
    }

    [v18 _willBePerformedOrPresented];
    v24 = objc_alloc_init(SHSheetActivityPresentationContext);
    [(SHSheetActivityPresentationContext *)v24 setShouldDismissBeforePresentation:v14 ^ 1u];
    [(SHSheetActivityPresentationContext *)v24 setShouldPresentOverCurrentContext:v23];
    v25 = [(SHSheetActivityPerformer *)self session];
    -[SHSheetActivityPresentationContext setIsCloudSharing:](v24, "setIsCloudSharing:", [v25 configureForCloudSharing]);

    if ([(SHSheetActivityPresentationContext *)v24 shouldDismissBeforePresentation]&& ![(SHSheetActivityPresentationContext *)v24 shouldPresentOverCurrentContext])
    {
      v26 = [(SHSheetActivityPerformer *)self activityViewController];
      [(SHSheetActivityPerformer *)self setRetainedActivityViewController:v26];
    }

    v27 = [(SHSheetActivityPerformer *)self presentationController];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__SHSheetActivityPerformer__prepareActivityPresentation__block_invoke_2;
    v28[3] = &unk_1E71FAD08;
    v28[4] = self;
    [v27 activityPerformer:self preparePresentationWithContext:v24 completion:v28];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

void __56__SHSheetActivityPerformer__prepareActivityPresentation__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _allowsAutoCancelOnDismiss])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained cancel];
  }
}

- (void)_performPresentationWithViewController:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SHSheetActivityPerformer *)self activity];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 activityType];
    *buf = 138412802;
    v38 = v4;
    v39 = 2114;
    v40 = v5;
    v41 = 2114;
    v42 = v7;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Perform presentation with view controller:%@ %{public}@ (%{public}@)", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v8 = [(SHSheetActivityPerformer *)self activity];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke;
  v34[3] = &unk_1E71F95A8;
  objc_copyWeak(&v35, &location);
  v9 = [v8 _presentActivityOnViewController:v4 animated:1 completion:v34];

  if ((v9 & 1) == 0)
  {
    v10 = [v5 activityViewController];
    IsSupportedPrintActivity = _ShareSheetIsSupportedPrintActivity(v5);
    v12 = [v5 activityType];
    v13 = [v12 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if ((v10 == 0) | IsSupportedPrintActivity & 1 | v13 & 1)
    {
      [v5 performActivity];
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 activityType];
        *buf = 138543618;
        v38 = v5;
        v39 = 2114;
        v40 = v15;
        _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Performed non-UI activity %{public}@ (%{public}@)", buf, 0x16u);
      }

      v16 = share_sheet_log();
      v17 = share_sheet_log();
      v18 = os_signpost_id_make_with_pointer(v17, v5);

      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        v19 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
        *buf = 134349056;
        v38 = v19;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PerformNonUIActivity", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v20 = share_sheet_log();
      v21 = share_sheet_log();
      v22 = os_signpost_id_make_with_pointer(v21, v5);

      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v20, OS_SIGNPOST_INTERVAL_END, v22, "PerformNonUIActivity", " enableTelemetry=YES ", buf, 2u);
      }

      v23 = share_sheet_log();
      v24 = share_sheet_log();
      v25 = os_signpost_id_make_with_pointer(v24, v5);

      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        v26 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
        v27 = [v5 activityType];
        *buf = 134349314;
        v38 = v26;
        v39 = 2114;
        v40 = v27;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PerformNonUIActivityWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", buf, 0x16u);
      }

      v28 = share_sheet_log();
      v29 = share_sheet_log();
      v30 = os_signpost_id_make_with_pointer(v29, v5);

      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v28, OS_SIGNPOST_INTERVAL_END, v30, "PerformNonUIActivityWithType", " enableTelemetry=YES ", buf, 2u);
      }
    }

    else
    {
      v31 = [(SHSheetActivityPerformer *)self presentationController];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke_75;
      v32[3] = &unk_1E71F95A8;
      objc_copyWeak(&v33, &location);
      [v31 activityPerformer:self presentViewController:v10 completion:v32];

      objc_destroyWeak(&v33);
    }
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePresentationCompletion];
}

void __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePresentationCompletion];
}

- (void)_handlePresentationCompletion
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 activityViewController];
    v6 = [v3 activityType];
    v24 = 138412802;
    v25 = v5;
    v26 = 2114;
    v27 = v3;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Presented view controller:%@ for UI activity %{public}@ (%{public}@)", &v24, 0x20u);
  }

  v7 = share_sheet_log();
  v8 = share_sheet_log();
  v9 = os_signpost_id_make_with_pointer(v8, v3);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
    v24 = 134349056;
    v25 = v10;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformUIActivity", "%{public, signpost.description:begin_time}llu", &v24, 0xCu);
  }

  v11 = share_sheet_log();
  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, v3);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PerformUIActivity", " enableTelemetry=YES ", &v24, 2u);
  }

  v14 = share_sheet_log();
  v15 = share_sheet_log();
  v16 = os_signpost_id_make_with_pointer(v15, v3);

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v17 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
    v18 = [v3 activityType];
    v24 = 134349314;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PerformUIActivityWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", &v24, 0x16u);
  }

  v19 = share_sheet_log();
  v20 = share_sheet_log();
  v21 = os_signpost_id_make_with_pointer(v20, v3);

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v19, OS_SIGNPOST_INTERVAL_END, v21, "PerformUIActivityWithType", " enableTelemetry=YES ", &v24, 2u);
  }

  v22 = [(SHSheetActivityPerformer *)self activityViewController];
  v23 = [v22 _activityPresentationCompletionHandler];
  if (v23)
  {
    [v22 _setActivityPresentationCompletionHandler:0];
    v23[2](v23);
  }
}

- (void)_configureActivityBeforePreparation
{
  v27 = [(SHSheetActivityPerformer *)self activity];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SHSheetActivityPerformer *)self session];
    v4 = [v3 identifier];
    [v27 setSessionIdentifier:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v27;
    v6 = [(SHSheetActivityPerformer *)self session];
    [v5 setKeyboardVisible:{objc_msgSend(v6, "showKeyboardAutomatically")}];
  }

  v7 = [v27 activityType];
  v8 = [v7 isEqualToString:@"com.apple.UIKit.activity.Message"];

  if (v8)
  {
    v9 = v27;
    v10 = [(SHSheetActivityPerformer *)self delegate];
    v11 = [v10 linkMetadataForActivityPerformer:self];
    [v9 setLinkMetadata:v11];

    v12 = [(SHSheetActivityPerformer *)self session];
    v13 = [v12 currentPeopleSuggestion];
    [v9 setPeopleSuggestion:v13];
  }

  v14 = [(SHSheetActivityPerformer *)self session];
  v15 = [v14 supportsCollaboration];

  if (v15)
  {
    v16 = [(SHSheetActivityPerformer *)self session];
    v17 = [v16 collaborationItem];

    if (objc_opt_respondsToSelector())
    {
      [v27 setCollaborationItem:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = v27;
      v19 = [(SHSheetActivityPerformer *)self session];
      [v18 setIsCollaborative:{objc_msgSend(v19, "isCollaborative")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = v27;
      v21 = [(SHSheetActivityPerformer *)self delegate];
      v22 = [v21 collaborationServiceForActivityPerformer:self];

      [v20 setCollaborationService:v22];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v27 activityType];
      v24 = [v23 isEqualToString:*MEMORY[0x1E69CDF30]];

      if (v24)
      {
        if (![v17 type])
        {
          v25 = v27;
          v26 = [v17 fileURL];
          [v25 setOriginalFileURL:v26];
        }
      }
    }
  }
}

- (void)_configureActivityAfterPreparation
{
  v14 = [(SHSheetActivityPerformer *)self activity];
  if (objc_opt_respondsToSelector())
  {
    v3 = v14;
    v4 = [(SHSheetActivityPerformer *)self session];
    v5 = [v4 activityItemsManager];
    v6 = [v5 recipientsHandlesForActivity:v3];
    [v3 setRecipients:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(SHSheetActivityPerformer *)self session];
    v8 = [v7 activityItemsManager];
    v9 = [v8 subjectForActivity:v14];

    if (v9 || (-[SHSheetActivityPerformer activityViewController](self, "activityViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 subject], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
    {
      [v14 _setMailSubject:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SHSheetActivityPerformer *)self session];
    v12 = [v11 activityItemsManager];
    v13 = [v12 initialSocialTextForActivity:v14];

    [v14 setInitialText:v13];
  }
}

- (BOOL)_enqueueBackgroundOperationsIfNeeded
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SHSheetActivityPerformer *)self activity];
  v5 = [(SHSheetActivityPerformer *)self session];
  v6 = [v5 activityItemsManager];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke;
  v29[3] = &unk_1E71FAD30;
  v7 = v4;
  v30 = v7;
  v31 = self;
  v8 = v3;
  v32 = v8;
  [v6 enumerateBackgroundOperationsForActivity:v7 enumerator:v29];

  v9 = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue];

  if (v9)
  {
    v10 = [v8 copy];
    [(SHSheetActivityPerformer *)self setActivityItemProviderOperations:v10];

    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    -[SHSheetActivityPerformer setBackgroundTaskIdentifier:](self, "setBackgroundTaskIdentifier:", [v11 beginBackgroundTaskWithExpirationHandler:&__block_literal_global_33]);

    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NSOperationQueue *)self->_activityItemProviderOperationQueue operationCount];
      *buf = 134349056;
      v34 = v13;
      _os_log_impl(&dword_18B359000, v12, OS_LOG_TYPE_DEFAULT, "Starting load of %{public}ld activity item providers", buf, 0xCu);
    }

    v14 = share_sheet_log();
    v15 = share_sheet_log();
    v16 = os_signpost_id_make_with_pointer(v15, self->_activityItemProviderOperationQueue);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "LoadActivityItemProviders", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = share_sheet_log();
    v18 = share_sheet_log();
    v19 = os_signpost_id_make_with_pointer(v18, self->_activityItemProviderOperationQueue);

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = [v7 activityType];
      *buf = 138543362;
      v34 = v20;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "LoadActivityItemProvidersWithType", "activityType=%{public, signpost.telemetry:string1}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v21 = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke_97;
    v27 = &unk_1E71F95A8;
    objc_copyWeak(&v28, buf);
    [v21 addOperationWithBlock:&v24];

    v22 = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue:v24];
    [v22 setSuspended:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  return v9 != 0;
}

void __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = [a1[4] activityType];
    v16 = 138412803;
    v17 = v6;
    v18 = 2113;
    v19 = v5;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEBUG, "enumerate background operation:%@ for activityItem:%{private}@ activityType:%@", &v16, 0x20u);
  }

  if ([a1[5] _shouldExecuteItemOperation:v6])
  {
    if ([v6 isFinished] & 1) != 0 || (objc_msgSend(v6, "isExecuting") & 1) != 0 || (objc_msgSend(*(a1[5] + 10), "operations"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsObject:", v6), v8, (v9))
    {
      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138477827;
        v17 = v5;
        _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Warning - UIActivityItemProvider %{private}@ ignored (duplicate, executing or finished)", &v16, 0xCu);
      }
    }

    else
    {
      if (!*(a1[5] + 10))
      {
        v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
        v12 = a1[5];
        v13 = v12[10];
        v12[10] = v11;

        [*(a1[5] + 10) setName:@"com.apple.UIActivityOperationQueue"];
        [*(a1[5] + 10) setMaxConcurrentOperationCount:1];
        [*(a1[5] + 10) setSuspended:1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [a1[4] activityType];
        [v6 _setActivityType:v14];
      }

      [a1[6] addObject:v6];
      [*(a1[5] + 10) addOperation:v6];
    }
  }
}

void __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke_97(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishAllBackgroundOperations];
}

- (BOOL)_shouldExecuteItemOperation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SHSheetActivityPerformer *)self activity];
    v7 = [v5 _shouldExecuteItemOperationForActivity:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_didFinishAllBackgroundOperations
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SHSheetActivityPerformer__didFinishAllBackgroundOperations__block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__SHSheetActivityPerformer__didFinishAllBackgroundOperations__block_invoke(uint64_t a1)
{
  v2 = share_sheet_log();
  v3 = share_sheet_log();
  v4 = [*(a1 + 32) activityItemProviderOperationQueue];
  v5 = os_signpost_id_make_with_pointer(v3, v4);

  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v2, OS_SIGNPOST_INTERVAL_END, v5, "LoadActivityItemProviders", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = share_sheet_log();
  v7 = share_sheet_log();
  v8 = [*(a1 + 32) activityItemProviderOperationQueue];
  v9 = os_signpost_id_make_with_pointer(v7, v8);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v6, OS_SIGNPOST_INTERVAL_END, v9, "LoadActivityItemProvidersWithType", " enableTelemetry=YES ", v13, 2u);
  }

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Finished load of activity item providers", v12, 2u);
  }

  [*(a1 + 32) setActivityItemProviderOperationQueue:0];
  return [*(a1 + 32) _executeActivity];
}

- (SHSheetSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (SHSheetActivityPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SHSheetActivityPerformerPresentationInterface)presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);

  return WeakRetained;
}

- (UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

@end