@interface PLBackgroundJobWorkerSignalTimer
- (BOOL)shouldCancelAndRescheduleWithDate:(id)a3;
- (PLBackgroundJobWorkerSignalTimer)initWithQueue:(id)a3 bundle:(id)a4 workerType:(unint64_t)a5 date:(id)a6 eventHandler:(id)a7;
- (PLPhotoLibraryBundle)bundle;
- (void)_inq_lock_timerEventHandler;
@end

@implementation PLBackgroundJobWorkerSignalTimer

- (PLPhotoLibraryBundle)bundle
{
  WeakRetained = objc_loadWeakRetained(&self->_bundle);

  return WeakRetained;
}

- (BOOL)shouldCancelAndRescheduleWithDate:(id)a3
{
  [a3 timeIntervalSinceDate:self->_date];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  return v3 > 10.0;
}

- (void)_inq_lock_timerEventHandler
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(PLBackgroundJobWorkerSignalTimer *)self bundle];
  if (v3)
  {
    v4 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobWorkerType:self->_workerType];
    v5 = [v3 libraryServicesManager];
    v6 = [v5 backgroundJobService];
    [v6 signalBackgroundProcessingNeededOnBundle:v3 workerTypes:v4];

    v7 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      workerType = self->_workerType;
      v9 = 134217984;
      v10 = workerType;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Timer signaled background job processing needed for worker type: %lu", &v9, 0xCu);
    }
  }

  [(PLBackgroundJobWorkerSignalTimer *)self cancel];
  (*(self->_eventHandler + 2))();
}

void __41__PLBackgroundJobWorkerSignalTimer_start__block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 32));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 24) timeIntervalSinceNow];
  if (v5 < 10.0)
  {
    v5 = 10.0;
  }

  v6 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_source_set_timer(*(*(a1 + 32) + 8), v6, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v7, &location);
  pl_dispatch_source_set_event_handler();
  dispatch_activate(*(*(a1 + 32) + 8));
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __41__PLBackgroundJobWorkerSignalTimer_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _inq_lock_timerEventHandler];
}

void __42__PLBackgroundJobWorkerSignalTimer_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }
}

- (PLBackgroundJobWorkerSignalTimer)initWithQueue:(id)a3 bundle:(id)a4 workerType:(unint64_t)a5 date:(id)a6 eventHandler:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkerSignalTimer.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkerSignalTimer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = PLBackgroundJobWorkerSignalTimer;
  v18 = [(PLBackgroundJobWorkerSignalTimer *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    lock_timer = v19->_lock_timer;
    v19->_lock_timer = 0;

    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v19->_bundle, v15);
    v19->_workerType = a5;
    v21 = [v17 copy];
    eventHandler = v19->_eventHandler;
    v19->_eventHandler = v21;

    objc_storeStrong(&v19->_date, a6);
  }

  return v19;
}

@end