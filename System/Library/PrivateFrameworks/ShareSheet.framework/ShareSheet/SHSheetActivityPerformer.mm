@interface SHSheetActivityPerformer
- (BOOL)_enqueueBackgroundOperationsIfNeeded;
- (BOOL)_presentPopoverContentViewController;
- (BOOL)_shouldExecuteItemOperation:(id)operation;
- (BOOL)isRunning;
- (SHSheetActivityPerformer)initWithActivity:(id)activity session:(id)session;
- (SHSheetActivityPerformerDelegate)delegate;
- (SHSheetActivityPerformerPresentationInterface)presentationController;
- (SHSheetSession)session;
- (UIActivityViewController)activityViewController;
- (id)_resolvedActivityItems;
- (void)_completePerformingActivityWithState:(int64_t)state returnedItems:(id)items error:(id)error;
- (void)_configureActivityAfterPreparation;
- (void)_configureActivityBeforePreparation;
- (void)_didFinishAllBackgroundOperations;
- (void)_executeActivity;
- (void)_finishWithState:(int64_t)state;
- (void)_handlePresentationCompletion;
- (void)_performPresentationWithViewController:(id)controller;
- (void)_prepareActivityPresentation;
- (void)_prepareActivityWithCompletion:(id)completion;
- (void)_start;
- (void)cancel;
- (void)dealloc;
- (void)finishWithSuccess:(BOOL)success;
- (void)performWithCompletionHandler:(id)handler;
- (void)setActivityItemProviderOperationQueue:(id)queue;
@end

@implementation SHSheetActivityPerformer

- (SHSheetActivityPerformer)initWithActivity:(id)activity session:(id)session
{
  activityCopy = activity;
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = SHSheetActivityPerformer;
  v9 = [(SHSheetActivityPerformer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, activity);
    objc_storeWeak(&v10->_session, sessionCopy);
    activityViewController = [sessionCopy activityViewController];
    objc_storeWeak(&v10->_activityViewController, activityViewController);

    v10->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  }

  return v10;
}

- (void)dealloc
{
  activity = [(SHSheetActivityPerformer *)self activity];
  [activity _cleanup];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endBackgroundTask:self->_backgroundTaskIdentifier];

  presentationController = [(SHSheetActivityPerformer *)self presentationController];
  [presentationController activityPerformCleanUpPresentation:self];

  v6.receiver = self;
  v6.super_class = SHSheetActivityPerformer;
  [(SHSheetActivityPerformer *)&v6 dealloc];
}

- (void)setActivityItemProviderOperationQueue:(id)queue
{
  queueCopy = queue;
  activityItemProviderOperationQueue = self->_activityItemProviderOperationQueue;
  p_activityItemProviderOperationQueue = &self->_activityItemProviderOperationQueue;
  v6 = activityItemProviderOperationQueue;
  if (activityItemProviderOperationQueue != queueCopy)
  {
    v9 = queueCopy;
    [(NSOperationQueue *)v6 cancelAllOperations];
    objc_storeStrong(p_activityItemProviderOperationQueue, queue);
    queueCopy = v9;
  }
}

- (BOOL)isRunning
{
  state = [(SHSheetActivityPerformer *)self state];
  if (state != 1)
  {
    LOBYTE(state) = [(SHSheetActivityPerformer *)self state]== 2;
  }

  return state;
}

- (void)performWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(SHSheetActivityPerformer *)self setState:1];
  activity = [(SHSheetActivityPerformer *)self activity];
  [(SHSheetActivityPerformer *)self setBeginPerformingActivityTimestamp:mach_continuous_time()];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activity activityType];
    *buf = 138543618;
    v15 = activity;
    v16 = 2114;
    v17 = activityType;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Performing activity %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(SHSheetActivityPerformer *)self setCompletionHandler:handlerCopy];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__SHSheetActivityPerformer_performWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E71FACE0;
  objc_copyWeak(&v13, buf);
  [activity setDidFinishPerformingActivityHandler:v12];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  activityViewController = [(SHSheetActivityPerformer *)self activityViewController];
  [defaultCenter addObserver:self selector:sel__start name:@"_UIActivityViewControllerExecuteActivityNotification" object:activityViewController];

  if (![activity _needsResolvedActivityItems])
  {
    goto LABEL_7;
  }

  activityType2 = [activity activityType];
  if ([activityType2 isEqualToString:@"com.apple.DocumentManagerUICore.AddTagsActionExtension"])
  {

LABEL_7:
    [(SHSheetActivityPerformer *)self _executeActivity];
    goto LABEL_8;
  }

  _enqueueBackgroundOperationsIfNeeded = [(SHSheetActivityPerformer *)self _enqueueBackgroundOperationsIfNeeded];

  if (!_enqueueBackgroundOperationsIfNeeded)
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
    activity = [(SHSheetActivityPerformer *)self activity];
    activity2 = [(SHSheetActivityPerformer *)self activity];
    activityType = [activity2 activityType];
    v7 = 138543618;
    v8 = activity;
    v9 = 2114;
    v10 = activityType;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling activity %{public}@ (%{public}@)", &v7, 0x16u);
  }

  [(SHSheetActivityPerformer *)self _finishWithState:3];
}

- (void)finishWithSuccess:(BOOL)success
{
  successCopy = success;
  v17 = *MEMORY[0x1E69E9840];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activity = [(SHSheetActivityPerformer *)self activity];
    activity2 = [(SHSheetActivityPerformer *)self activity];
    activityType = [activity2 activityType];
    v9 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = activity;
    v13 = 2114;
    v14 = activityType;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Finishing activity %{public}@ (%{public}@) with success:%@", &v11, 0x20u);
  }

  if (successCopy)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  [(SHSheetActivityPerformer *)self _finishWithState:v10];
}

- (void)_finishWithState:(int64_t)state
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endBackgroundTask:{-[SHSheetActivityPerformer backgroundTaskIdentifier](self, "backgroundTaskIdentifier")}];

  [(SHSheetActivityPerformer *)self setBackgroundTaskIdentifier:*MEMORY[0x1E69DDBE8]];
  v6 = MEMORY[0x1E69E58C0];
  activityViewController = [(SHSheetActivityPerformer *)self activityViewController];
  [v6 cancelPreviousPerformRequestsWithTarget:activityViewController];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIActivityViewControllerExecuteActivityNotification" object:0];

  [(SHSheetActivityPerformer *)self setActivityItemProviderOperationQueue:0];

  [(SHSheetActivityPerformer *)self _completePerformingActivityWithState:state returnedItems:0 error:0];
}

- (void)_completePerformingActivityWithState:(int64_t)state returnedItems:(id)items error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  errorCopy = error;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = SHSheetActivityPerformerStateDescription(state);
    activity = [(SHSheetActivityPerformer *)self activity];
    activity2 = [(SHSheetActivityPerformer *)self activity];
    activityType = [activity2 activityType];
    v21 = 138412802;
    selfCopy = v11;
    v23 = 2114;
    stateCopy = activity;
    v25 = 2114;
    v26 = activityType;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Completing with state:%@ %{public}@ (%{public}@)", &v21, 0x20u);
  }

  if ([(SHSheetActivityPerformer *)self state]< 3)
  {
    [(SHSheetActivityPerformer *)self setState:state];
    activity3 = [(SHSheetActivityPerformer *)self activity];
    [activity3 setDidFinishPerformingActivityHandler:0];

    presentationController = [(SHSheetActivityPerformer *)self presentationController];
    [presentationController activityPerformerStopListeningForDismissalTransition:self];

    v18 = [SHSheetActivityPerformerResult alloc];
    activity4 = [(SHSheetActivityPerformer *)self activity];
    v15 = [(SHSheetActivityPerformerResult *)v18 initWithActivity:activity4 completedState:state returnedItems:itemsCopy error:errorCopy];

    [(SHSheetActivityPerformer *)self setResult:v15];
    completionHandler = [(SHSheetActivityPerformer *)self completionHandler];
    (completionHandler)[2](completionHandler, v15);
    [(SHSheetActivityPerformer *)self setCompletionHandler:0];
    [(SHSheetActivityPerformer *)self setRetainedActivityViewController:0];
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      selfCopy = self;
      v23 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_DEFAULT, "Activity Performer:%@ is already completed with state:%ld", &v21, 0x16u);
    }
  }
}

- (id)_resolvedActivityItems
{
  v23 = *MEMORY[0x1E69E9840];
  activity = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  v5 = share_sheet_log();
  v6 = os_signpost_id_make_with_pointer(v5, activity);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ResolveActivityItemValues", " enableTelemetry=YES ", &v21, 2u);
  }

  v7 = share_sheet_log();
  v8 = share_sheet_log();
  v9 = os_signpost_id_make_with_pointer(v8, activity);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    activityType = [activity activityType];
    v21 = 138543362;
    v22 = activityType;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolveActivityItemValuesWithType", "activityType=%{public, signpost.telemetry:string1}@", &v21, 0xCu);
  }

  session = [(SHSheetActivityPerformer *)self session];
  activityItemsManager = [session activityItemsManager];
  v13 = [activityItemsManager activityItemValuesForActivity:activity];

  v14 = share_sheet_log();
  v15 = share_sheet_log();
  v16 = os_signpost_id_make_with_pointer(v15, activity);

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_END, v16, "ResolveActivityItemValues", " enableTelemetry=YES ", &v21, 2u);
  }

  v17 = share_sheet_log();
  v18 = share_sheet_log();
  v19 = os_signpost_id_make_with_pointer(v18, activity);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v17, OS_SIGNPOST_INTERVAL_END, v19, "ResolveActivityItemValuesWithType", " enableTelemetry=YES ", &v21, 2u);
  }

  return v13;
}

- (void)_executeActivity
{
  session = [(SHSheetActivityPerformer *)self session];
  activityViewController = [session activityViewController];
  [activityViewController _executeActivity];
}

- (void)_start
{
  v38 = *MEMORY[0x1E69E9840];
  [(SHSheetActivityPerformer *)self setState:2];
  activity = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activity activityType];
    *buf = 138543618;
    v30 = activity;
    v31 = 2114;
    v32 = activityType;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Executing activity %{public}@ (%{public}@)", buf, 0x16u);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endBackgroundTask:self->_backgroundTaskIdentifier];

  self->_backgroundTaskIdentifier = *MEMORY[0x1E69DDBE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  activityItemProviderOperations = [(SHSheetActivityPerformer *)self activityItemProviderOperations];
  v8 = [activityItemProviderOperations countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(activityItemProviderOperations);
        }

        if ([*(*(&v25 + 1) + 8 * i) isCancelled])
        {
          LOBYTE(v8) = 1;
          goto LABEL_13;
        }
      }

      v8 = [activityItemProviderOperations countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [(SHSheetActivityPerformer *)self setActivityItemProviderOperations:0];
  presentationController = [(SHSheetActivityPerformer *)self presentationController];
  v12 = [presentationController activityPerformerCanPresent:self];

  if ((v8 & 1) != 0 || !v12)
  {
    session = [(SHSheetActivityPerformer *)self session];
    testingReferenceSnapshot = [session testingReferenceSnapshot];

    if (testingReferenceSnapshot)
    {
      _resolvedActivityItems = [(SHSheetActivityPerformer *)self _resolvedActivityItems];
      session2 = [(SHSheetActivityPerformer *)self session];
      activityType2 = [activity activityType];
      [session2 _updateTestingSnapshotIfNeededForResolvedItems:_resolvedActivityItems activityType:activityType2];
    }

    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      activityType3 = [activity activityType];
      v20 = NSStringFromBOOL();
      v21 = NSStringFromBOOL();
      *buf = 138544130;
      v30 = activity;
      v31 = 2114;
      v32 = activityType3;
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
    v23 = activity;
    selfCopy = self;
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

- (void)_prepareActivityWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _resolvedActivityItems = [(SHSheetActivityPerformer *)self _resolvedActivityItems];
  activity = [(SHSheetActivityPerformer *)self activity];
  activityViewController = [(SHSheetActivityPerformer *)self activityViewController];
  session = [(SHSheetActivityPerformer *)self session];
  activityType = [activity activityType];
  [session _updateTestingSnapshotIfNeededForResolvedItems:_resolvedActivityItems activityType:activityType];

  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activityType2 = [activity activityType];
    v12 = SFGenerateTypeList();
    *buf = 138544131;
    v29 = activity;
    v30 = 2114;
    v31 = activityType2;
    v32 = 2117;
    v33 = _resolvedActivityItems;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Preparing activity %{public}@ (%{public}@) with activity items:%{sensitive}@ of types:%{public}@", buf, 0x2Au);
  }

  [(SHSheetActivityPerformer *)self _configureActivityBeforePreparation];
  v13 = share_sheet_log();
  v14 = share_sheet_log();
  v15 = os_signpost_id_make_with_pointer(v14, activity);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PrepareActivity", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = share_sheet_log();
  v17 = share_sheet_log();
  v18 = os_signpost_id_make_with_pointer(v17, activity);

  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    activityType3 = [activity activityType];
    *buf = 138543362;
    v29 = activityType3;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PrepareActivityWithType", "activityType=%{public, signpost.telemetry:string1}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__SHSheetActivityPerformer__prepareActivityWithCompletion___block_invoke;
  v23[3] = &unk_1E71FA700;
  objc_copyWeak(&v27, buf);
  v20 = activity;
  v24 = v20;
  v21 = activityViewController;
  v25 = v21;
  v22 = completionCopy;
  v26 = v22;
  [v20 _prepareWithActivityItems:_resolvedActivityItems completion:v23];

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
  activityViewController = [(SHSheetActivityPerformer *)self activityViewController];
  traitCollection = [activityViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    return 0;
  }

  if (!_ShareSheetPlatformPrefersPopover())
  {
    return 0;
  }

  activity = [(SHSheetActivityPerformer *)self activity];
  _embeddedActivityViewController = [activity _embeddedActivityViewController];

  if (!_embeddedActivityViewController)
  {
    return 0;
  }

  presentationController = [(SHSheetActivityPerformer *)self presentationController];
  v9 = [presentationController activityPerformer:self presentPopoverContentViewController:_embeddedActivityViewController];

  return v9;
}

- (void)_prepareActivityPresentation
{
  v38 = *MEMORY[0x1E69E9840];
  activity = [(SHSheetActivityPerformer *)self activity];
  if ([(SHSheetActivityPerformer *)self _presentPopoverContentViewController])
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      activityType = [activity activityType];
      *buf = 138543618;
      v33 = activity;
      v34 = 2114;
      v35 = activityType;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Did present popover content for activity %{public}@ (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    activityViewController = [(SHSheetActivityPerformer *)self activityViewController];
    traitCollection = [activityViewController traitCollection];
    v8 = [traitCollection userInterfaceIdiom] == 6;

    activityViewController2 = [activity activityViewController];
    v4 = activityViewController2;
    if (v8)
    {
      if (activityViewController2)
      {
        _embeddedActivityViewController = activityViewController2;
      }

      else
      {
        _embeddedActivityViewController = [activity _embeddedActivityViewController];
      }

      v11 = _embeddedActivityViewController;

      v4 = v11;
    }

    activityViewController3 = [(SHSheetActivityPerformer *)self activityViewController];
    activityType2 = [activity activityType];
    v14 = [activityType2 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      activityType3 = [activity activityType];
      *buf = 138412802;
      v33 = v4;
      v34 = 2114;
      v35 = activity;
      v36 = 2114;
      v37 = activityType3;
      _os_log_impl(&dword_18B359000, v15, OS_LOG_TYPE_DEFAULT, "Prepare activity presentation for view controller:%@ %{public}@ (%{public}@)", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    presentationController = [(SHSheetActivityPerformer *)self presentationController];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__SHSheetActivityPerformer__prepareActivityPresentation__block_invoke;
    v29[3] = &unk_1E71F96C8;
    v18 = activity;
    v30 = v18;
    objc_copyWeak(&v31, buf);
    [presentationController activityPerformer:self startListeningForDismissalTransitionWithCompletion:v29];

    if (_ShareSheetIsSupportedPrintActivity(v18))
    {
      _window = [activityViewController3 _window];
      [v18 setWindowHoldingActivityViewController:_window];
    }

    session = [(SHSheetActivityPerformer *)self session];
    allowsEmbedding = [session allowsEmbedding];
    if (v4)
    {
      v22 = 1;
    }

    else
    {
      v22 = allowsEmbedding;
    }

    if (v22)
    {
      _managesOwnPresentation = 1;
    }

    else
    {
      _managesOwnPresentation = [v18 _managesOwnPresentation];
    }

    [v18 _willBePerformedOrPresented];
    v24 = objc_alloc_init(SHSheetActivityPresentationContext);
    [(SHSheetActivityPresentationContext *)v24 setShouldDismissBeforePresentation:v14 ^ 1u];
    [(SHSheetActivityPresentationContext *)v24 setShouldPresentOverCurrentContext:_managesOwnPresentation];
    session2 = [(SHSheetActivityPerformer *)self session];
    -[SHSheetActivityPresentationContext setIsCloudSharing:](v24, "setIsCloudSharing:", [session2 configureForCloudSharing]);

    if ([(SHSheetActivityPresentationContext *)v24 shouldDismissBeforePresentation]&& ![(SHSheetActivityPresentationContext *)v24 shouldPresentOverCurrentContext])
    {
      activityViewController4 = [(SHSheetActivityPerformer *)self activityViewController];
      [(SHSheetActivityPerformer *)self setRetainedActivityViewController:activityViewController4];
    }

    presentationController2 = [(SHSheetActivityPerformer *)self presentationController];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__SHSheetActivityPerformer__prepareActivityPresentation__block_invoke_2;
    v28[3] = &unk_1E71FAD08;
    v28[4] = self;
    [presentationController2 activityPerformer:self preparePresentationWithContext:v24 completion:v28];

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

- (void)_performPresentationWithViewController:(id)controller
{
  v43 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  activity = [(SHSheetActivityPerformer *)self activity];
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activity activityType];
    *buf = 138412802;
    v38 = controllerCopy;
    v39 = 2114;
    v40 = activity;
    v41 = 2114;
    v42 = activityType;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Perform presentation with view controller:%@ %{public}@ (%{public}@)", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  activity2 = [(SHSheetActivityPerformer *)self activity];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke;
  v34[3] = &unk_1E71F95A8;
  objc_copyWeak(&v35, &location);
  v9 = [activity2 _presentActivityOnViewController:controllerCopy animated:1 completion:v34];

  if ((v9 & 1) == 0)
  {
    activityViewController = [activity activityViewController];
    IsSupportedPrintActivity = _ShareSheetIsSupportedPrintActivity(activity);
    activityType2 = [activity activityType];
    v13 = [activityType2 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if ((activityViewController == 0) | IsSupportedPrintActivity & 1 | v13 & 1)
    {
      [activity performActivity];
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        activityType3 = [activity activityType];
        *buf = 138543618;
        v38 = activity;
        v39 = 2114;
        v40 = activityType3;
        _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Performed non-UI activity %{public}@ (%{public}@)", buf, 0x16u);
      }

      v16 = share_sheet_log();
      v17 = share_sheet_log();
      v18 = os_signpost_id_make_with_pointer(v17, activity);

      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        beginPerformingActivityTimestamp = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
        *buf = 134349056;
        v38 = beginPerformingActivityTimestamp;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PerformNonUIActivity", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v20 = share_sheet_log();
      v21 = share_sheet_log();
      v22 = os_signpost_id_make_with_pointer(v21, activity);

      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v20, OS_SIGNPOST_INTERVAL_END, v22, "PerformNonUIActivity", " enableTelemetry=YES ", buf, 2u);
      }

      v23 = share_sheet_log();
      v24 = share_sheet_log();
      v25 = os_signpost_id_make_with_pointer(v24, activity);

      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        beginPerformingActivityTimestamp2 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
        activityType4 = [activity activityType];
        *buf = 134349314;
        v38 = beginPerformingActivityTimestamp2;
        v39 = 2114;
        v40 = activityType4;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PerformNonUIActivityWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", buf, 0x16u);
      }

      v28 = share_sheet_log();
      v29 = share_sheet_log();
      v30 = os_signpost_id_make_with_pointer(v29, activity);

      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B359000, v28, OS_SIGNPOST_INTERVAL_END, v30, "PerformNonUIActivityWithType", " enableTelemetry=YES ", buf, 2u);
      }
    }

    else
    {
      presentationController = [(SHSheetActivityPerformer *)self presentationController];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __67__SHSheetActivityPerformer__performPresentationWithViewController___block_invoke_75;
      v32[3] = &unk_1E71F95A8;
      objc_copyWeak(&v33, &location);
      [presentationController activityPerformer:self presentViewController:activityViewController completion:v32];

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
  activity = [(SHSheetActivityPerformer *)self activity];
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    activityViewController = [activity activityViewController];
    activityType = [activity activityType];
    v24 = 138412802;
    v25 = activityViewController;
    v26 = 2114;
    v27 = activity;
    v28 = 2114;
    v29 = activityType;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Presented view controller:%@ for UI activity %{public}@ (%{public}@)", &v24, 0x20u);
  }

  v7 = share_sheet_log();
  v8 = share_sheet_log();
  v9 = os_signpost_id_make_with_pointer(v8, activity);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    beginPerformingActivityTimestamp = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
    v24 = 134349056;
    v25 = beginPerformingActivityTimestamp;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformUIActivity", "%{public, signpost.description:begin_time}llu", &v24, 0xCu);
  }

  v11 = share_sheet_log();
  v12 = share_sheet_log();
  v13 = os_signpost_id_make_with_pointer(v12, activity);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v11, OS_SIGNPOST_INTERVAL_END, v13, "PerformUIActivity", " enableTelemetry=YES ", &v24, 2u);
  }

  v14 = share_sheet_log();
  v15 = share_sheet_log();
  v16 = os_signpost_id_make_with_pointer(v15, activity);

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    beginPerformingActivityTimestamp2 = [(SHSheetActivityPerformer *)self beginPerformingActivityTimestamp];
    activityType2 = [activity activityType];
    v24 = 134349314;
    v25 = beginPerformingActivityTimestamp2;
    v26 = 2114;
    v27 = activityType2;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PerformUIActivityWithType", "%{public, signpost.description:begin_time}llu activityType=%{public, signpost.telemetry:string1}@", &v24, 0x16u);
  }

  v19 = share_sheet_log();
  v20 = share_sheet_log();
  v21 = os_signpost_id_make_with_pointer(v20, activity);

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v19, OS_SIGNPOST_INTERVAL_END, v21, "PerformUIActivityWithType", " enableTelemetry=YES ", &v24, 2u);
  }

  activityViewController2 = [(SHSheetActivityPerformer *)self activityViewController];
  _activityPresentationCompletionHandler = [activityViewController2 _activityPresentationCompletionHandler];
  if (_activityPresentationCompletionHandler)
  {
    [activityViewController2 _setActivityPresentationCompletionHandler:0];
    _activityPresentationCompletionHandler[2](_activityPresentationCompletionHandler);
  }
}

- (void)_configureActivityBeforePreparation
{
  activity = [(SHSheetActivityPerformer *)self activity];
  if (objc_opt_respondsToSelector())
  {
    session = [(SHSheetActivityPerformer *)self session];
    identifier = [session identifier];
    [activity setSessionIdentifier:identifier];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = activity;
    session2 = [(SHSheetActivityPerformer *)self session];
    [v5 setKeyboardVisible:{objc_msgSend(session2, "showKeyboardAutomatically")}];
  }

  activityType = [activity activityType];
  v8 = [activityType isEqualToString:@"com.apple.UIKit.activity.Message"];

  if (v8)
  {
    v9 = activity;
    delegate = [(SHSheetActivityPerformer *)self delegate];
    v11 = [delegate linkMetadataForActivityPerformer:self];
    [v9 setLinkMetadata:v11];

    session3 = [(SHSheetActivityPerformer *)self session];
    currentPeopleSuggestion = [session3 currentPeopleSuggestion];
    [v9 setPeopleSuggestion:currentPeopleSuggestion];
  }

  session4 = [(SHSheetActivityPerformer *)self session];
  supportsCollaboration = [session4 supportsCollaboration];

  if (supportsCollaboration)
  {
    session5 = [(SHSheetActivityPerformer *)self session];
    collaborationItem = [session5 collaborationItem];

    if (objc_opt_respondsToSelector())
    {
      [activity setCollaborationItem:collaborationItem];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = activity;
      session6 = [(SHSheetActivityPerformer *)self session];
      [v18 setIsCollaborative:{objc_msgSend(session6, "isCollaborative")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = activity;
      delegate2 = [(SHSheetActivityPerformer *)self delegate];
      v22 = [delegate2 collaborationServiceForActivityPerformer:self];

      [v20 setCollaborationService:v22];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activityType2 = [activity activityType];
      v24 = [activityType2 isEqualToString:*MEMORY[0x1E69CDF30]];

      if (v24)
      {
        if (![collaborationItem type])
        {
          v25 = activity;
          fileURL = [collaborationItem fileURL];
          [v25 setOriginalFileURL:fileURL];
        }
      }
    }
  }
}

- (void)_configureActivityAfterPreparation
{
  activity = [(SHSheetActivityPerformer *)self activity];
  if (objc_opt_respondsToSelector())
  {
    v3 = activity;
    session = [(SHSheetActivityPerformer *)self session];
    activityItemsManager = [session activityItemsManager];
    v6 = [activityItemsManager recipientsHandlesForActivity:v3];
    [v3 setRecipients:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    session2 = [(SHSheetActivityPerformer *)self session];
    activityItemsManager2 = [session2 activityItemsManager];
    v9 = [activityItemsManager2 subjectForActivity:activity];

    if (v9 || (-[SHSheetActivityPerformer activityViewController](self, "activityViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 subject], v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
    {
      [activity _setMailSubject:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    session3 = [(SHSheetActivityPerformer *)self session];
    activityItemsManager3 = [session3 activityItemsManager];
    v13 = [activityItemsManager3 initialSocialTextForActivity:activity];

    [activity setInitialText:v13];
  }
}

- (BOOL)_enqueueBackgroundOperationsIfNeeded
{
  v35 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  activity = [(SHSheetActivityPerformer *)self activity];
  session = [(SHSheetActivityPerformer *)self session];
  activityItemsManager = [session activityItemsManager];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke;
  v29[3] = &unk_1E71FAD30;
  v7 = activity;
  v30 = v7;
  selfCopy = self;
  v8 = array;
  v32 = v8;
  [activityItemsManager enumerateBackgroundOperationsForActivity:v7 enumerator:v29];

  activityItemProviderOperationQueue = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue];

  if (activityItemProviderOperationQueue)
  {
    v10 = [v8 copy];
    [(SHSheetActivityPerformer *)self setActivityItemProviderOperations:v10];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    -[SHSheetActivityPerformer setBackgroundTaskIdentifier:](self, "setBackgroundTaskIdentifier:", [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:&__block_literal_global_33]);

    v12 = share_sheet_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      operationCount = [(NSOperationQueue *)self->_activityItemProviderOperationQueue operationCount];
      *buf = 134349056;
      v34 = operationCount;
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
      activityType = [v7 activityType];
      *buf = 138543362;
      v34 = activityType;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "LoadActivityItemProvidersWithType", "activityType=%{public, signpost.telemetry:string1}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    activityItemProviderOperationQueue2 = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __64__SHSheetActivityPerformer__enqueueBackgroundOperationsIfNeeded__block_invoke_97;
    v27 = &unk_1E71F95A8;
    objc_copyWeak(&v28, buf);
    [activityItemProviderOperationQueue2 addOperationWithBlock:&v24];

    v22 = [(SHSheetActivityPerformer *)self activityItemProviderOperationQueue:v24];
    [v22 setSuspended:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  return activityItemProviderOperationQueue != 0;
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

- (BOOL)_shouldExecuteItemOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = operationCopy;
    activity = [(SHSheetActivityPerformer *)self activity];
    v7 = [v5 _shouldExecuteItemOperationForActivity:activity];
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