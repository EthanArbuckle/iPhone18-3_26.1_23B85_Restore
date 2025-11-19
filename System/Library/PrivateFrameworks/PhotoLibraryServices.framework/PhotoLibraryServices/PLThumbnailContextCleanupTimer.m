@interface PLThumbnailContextCleanupTimer
- (PLThumbnailContextCleanupTimer)initWithHandler:(id)a3;
- (void)startOrRestartTimer;
@end

@implementation PLThumbnailContextCleanupTimer

- (void)startOrRestartTimer
{
  PLRunWithUnfairLock();
  v3 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 10000000000);
  dispatch_source_set_timer(self->_timer, v3, 0xFFFFFFFFFFFFFFFFLL, 0x77359400uLL);
}

void __53__PLThumbnailContextCleanupTimer_startOrRestartTimer__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    v3 = os_transaction_create();
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __45__PLThumbnailContextCleanupTimer__timerFired__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __44__PLThumbnailContextCleanupTimer_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (PLThumbnailContextCleanupTimer)initWithHandler:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PLThumbnailContextCleanupTimer;
  v5 = [(PLThumbnailContextCleanupTimer *)&v20 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("com.apple.photos.backend.thumbnailContextCleanup", v9);
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v5 + 2));
    v13 = *(v5 + 3);
    *(v5 + 3) = v12;

    *(v5 + 8) = 0;
    objc_initWeak(&location, v5);
    v14 = *(v5 + 3);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PLThumbnailContextCleanupTimer_initWithHandler___block_invoke;
    v17[3] = &unk_1E75788C0;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v14, v17);
    v15 = v5;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __50__PLThumbnailContextCleanupTimer_initWithHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

@end