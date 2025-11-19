@interface PXStoryPausableLoadingCoordinator
- (PXStoryPausableLoadingCoordinator)init;
- (void)dealloc;
- (void)dispatchTimelineWorkAsyncOnQueue:(id)a3 block:(id)a4;
- (void)pauseTimelineWork;
- (void)resumeTimelineWork;
@end

@implementation PXStoryPausableLoadingCoordinator

- (void)dispatchTimelineWorkAsyncOnQueue:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_initWeak(&location, self);
  timelineWorkGroup = self->_timelineWorkGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXStoryPausableLoadingCoordinator_dispatchTimelineWorkAsyncOnQueue_block___block_invoke;
  block[3] = &unk_1E774AA30;
  objc_copyWeak(&v12, &location);
  v11 = v6;
  v9 = v6;
  dispatch_group_notify(timelineWorkGroup, v7, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __76__PXStoryPausableLoadingCoordinator_dispatchTimelineWorkAsyncOnQueue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)resumeTimelineWork
{
  p_timelineWorkGroup = &self->_timelineWorkGroup;
  timelineWorkGroup = self->_timelineWorkGroup;
  self->_pauseCount = p_timelineWorkGroup[1] - 1;
  dispatch_group_leave(timelineWorkGroup);
  if (!self->_pauseCount)
  {
    v5 = [(PXStoryPausableLoadingCoordinator *)self log];
    v6 = v5;
    pausedSignpostID = self->_pausedSignpostID;
    if (pausedSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, pausedSignpostID, "StoryLoadingCoordinatorPaused", "", v8, 2u);
    }
  }
}

- (void)pauseTimelineWork
{
  pauseCount = self->_pauseCount;
  if (!pauseCount)
  {
    v4 = [(PXStoryPausableLoadingCoordinator *)self log];
    self->_pausedSignpostID = os_signpost_id_make_with_pointer(v4, self);

    v5 = [(PXStoryPausableLoadingCoordinator *)self log];
    v6 = v5;
    pausedSignpostID = self->_pausedSignpostID;
    if (pausedSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, pausedSignpostID, "StoryLoadingCoordinatorPaused", "", v8, 2u);
    }

    pauseCount = self->_pauseCount;
  }

  self->_pauseCount = pauseCount + 1;
  dispatch_group_enter(self->_timelineWorkGroup);
}

- (void)dealloc
{
  pauseCount = self->_pauseCount;
  if (pauseCount >= 1)
  {
    timelineWorkGroup = self->_timelineWorkGroup;
    do
    {
      dispatch_group_leave(timelineWorkGroup);
      --pauseCount;
    }

    while (pauseCount);
  }

  v5.receiver = self;
  v5.super_class = PXStoryPausableLoadingCoordinator;
  [(PXStoryPausableLoadingCoordinator *)&v5 dealloc];
}

- (PXStoryPausableLoadingCoordinator)init
{
  v11.receiver = self;
  v11.super_class = PXStoryPausableLoadingCoordinator;
  v2 = [(PXStoryPausableLoadingCoordinator *)&v11 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    timelineWorkGroup = v2->_timelineWorkGroup;
    v2->_timelineWorkGroup = v3;

    v5 = *MEMORY[0x1E69BFF60];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = os_log_create(v5, [v7 UTF8String]);
    log = v2->_log;
    v2->_log = v8;
  }

  return v2;
}

@end