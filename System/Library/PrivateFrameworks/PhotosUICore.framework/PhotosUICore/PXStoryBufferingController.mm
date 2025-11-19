@interface PXStoryBufferingController
- (NSDictionary)totalBufferingTimeIntervalsPerReason;
- (NSIndexSet)bufferingReasons;
- (PXStoryBufferingController)initWithModel:(id)a3;
- (PXStoryBufferingController)initWithObservableModel:(id)a3;
- (PXStoryModel)model;
- (double)lastCriticalBufferingDuration;
- (double)lastNoncriticalBufferingDuration;
- (double)noncriticalBufferingTimeout;
- (double)totalBufferingTimeInterval;
- (void)_accountForReason:(int64_t)a3 status:(int64_t)a4;
- (void)_invalidateModelProperties;
- (void)_invalidateOverallReadinessStatus;
- (void)_updateModelProperties;
- (void)_updateOverallReadinessStatus;
- (void)configureUpdater:(id)a3;
- (void)dealloc;
- (void)handleModelChange:(unint64_t)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsBuffering:(BOOL)a3;
- (void)setOverallReadinessStatus:(int64_t)a3;
@end

@implementation PXStoryBufferingController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (double)noncriticalBufferingTimeout
{
  v2 = [(PXStoryBufferingController *)self model];
  v3 = [v2 configuration];
  [v3 noncriticalBufferingTimeout];
  v5 = v4;

  return v5;
}

- (void)setOverallReadinessStatus:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  overallReadinessStatus = self->_overallReadinessStatus;
  if (overallReadinessStatus != a3)
  {
    self->_overallReadinessStatus = a3;
    [(PXStoryBufferingController *)self _invalidateModelProperties];
    a3 = self->_overallReadinessStatus;
  }

  if (a3 != 3)
  {
    if (!self->_overallBufferingDuration.currentStartTime)
    {
      self->_overallBufferingDuration.currentStartTime = mach_absolute_time();
    }

    mach_absolute_time();
    PXTimebaseConversionFactor();
  }

  mach_absolute_time();
  if (self->_overallBufferingDuration.currentStartTime)
  {
    PXTimebaseConversionFactor();
  }

  self->_overallBufferingDuration.previousDuration = self->_overallBufferingDuration.previousDuration + 0.0;
  self->_overallBufferingDuration.currentStartTime = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke;
  aBlock[3] = &unk_1E773FF10;
  aBlock[4] = self;
  aBlock[5] = overallReadinessStatus;
  v5 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_2;
  v13[3] = &unk_1E773FF10;
  v13[4] = self;
  v13[5] = overallReadinessStatus;
  v6 = _Block_copy(v13);
  if (v5[2](v5, 2))
  {
    self->_lastNoncriticalBufferingDurationStore.previousDuration = 0.0;
    self->_lastNoncriticalBufferingDurationStore.currentStartTime = 0;
    self->_lastNoncriticalBufferingDurationStore.currentStartTime = mach_absolute_time();
    objc_initWeak(&buf, self);
    [(PXStoryBufferingController *)self noncriticalBufferingTimeout];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    v9 = [(PXStoryController *)self storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_3;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v12, &buf);
    dispatch_after(v8, v9, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&buf);
  }

  else if (v6[2](v6, 2))
  {
    mach_absolute_time();
    if (self->_lastNoncriticalBufferingDurationStore.currentStartTime)
    {
      PXTimebaseConversionFactor();
    }

    self->_lastNoncriticalBufferingDurationStore.previousDuration = self->_lastNoncriticalBufferingDurationStore.previousDuration + 0.0;
    self->_lastNoncriticalBufferingDurationStore.currentStartTime = 0;
  }

  if (v5[2](v5, 1))
  {
    self->_lastCriticalBufferingDurationStore.previousDuration = 0.0;
    self->_lastCriticalBufferingDurationStore.currentStartTime = 0;
    self->_lastCriticalBufferingDurationStore.currentStartTime = mach_absolute_time();
  }

  else if (v6[2](v6, 1))
  {
    mach_absolute_time();
    p_lastCriticalBufferingDurationStore = &self->_lastCriticalBufferingDurationStore;
    if (p_lastCriticalBufferingDurationStore->currentStartTime)
    {
      PXTimebaseConversionFactor();
    }

    p_lastCriticalBufferingDurationStore->previousDuration = p_lastCriticalBufferingDurationStore->previousDuration + 0.0;
    p_lastCriticalBufferingDurationStore->currentStartTime = 0;
  }
}

void __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_4;
  v3[3] = &unk_1E773FF38;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained performChanges:v3];

  objc_destroyWeak(&v4);
}

void __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateOverallReadinessStatus];
}

- (void)setIsBuffering:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isBuffering != a3)
  {
    self->_isBuffering = a3;
    if (a3)
    {
      v4 = [(PXStoryBufferingController *)self log];
      v5 = [(PXStoryBufferingController *)self logContext];
      v6 = os_signpost_id_make_with_pointer(v4, self);
      v7 = v4;
      v8 = v7;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v19 = v5;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PXStoryBufferingController.PlaybackBuffering", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }

      v9 = [MEMORY[0x1E6991F28] startSignpost];
      v10 = PLStoryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Buffering started", buf, 2u);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__PXStoryBufferingController_setIsBuffering___block_invoke;
      v13[3] = &unk_1E7749770;
      v14 = v8;
      v15 = v6;
      v16 = v5;
      v17 = v9;
      v11 = v8;
      [(PXStoryBufferingController *)self setOnBufferingEnd:v13];
    }

    else
    {
      v12 = [(PXStoryBufferingController *)self onBufferingEnd];
      v12[2]();

      [(PXStoryBufferingController *)self setOnBufferingEnd:0];
    }
  }
}

void __45__PXStoryBufferingController_setIsBuffering___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 48);
    *buf = 134217984;
    v14 = v5;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PXStoryBufferingController.PlaybackBuffering", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
  }

  v6 = MEMORY[0x1E6991F28];
  v7 = *(a1 + 56);
  v8 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E40];
  v12 = @"com.apple.photos.memory.interactiveMemoryPlaybackBuffering";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 endSignpost:v7 forEventName:v8 withPayload:v9];

  v10 = PLStoryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "Buffering ended", buf, 2u);
  }
}

- (void)_accountForReason:(int64_t)a3 status:(int64_t)a4
{
  v7 = [(PXStoryBufferingController *)self bufferingReasonsStore];
  v8 = v7;
  if (a4 == 3)
  {
    [v7 removeIndex:a3];

    v9 = &self->_bufferingDurationsPerReason[a3];
    mach_absolute_time();
    if (v9->var1)
    {
      PXTimebaseConversionFactor();
    }

    v9->var0 = v9->var0 + 0.0;
    v9->var1 = 0;
  }

  else
  {
    [v7 addIndex:a3];

    if (a4)
    {
      v10 = &self->_bufferingDurationsPerReason[a3];
      var1 = v10->var1;
      p_var1 = &v10->var1;
      if (!var1)
      {
        *p_var1 = mach_absolute_time();
      }
    }
  }
}

- (void)_updateModelProperties
{
  v3 = [(PXStoryBufferingController *)self model];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PXStoryBufferingController__updateModelProperties__block_invoke;
  v4[3] = &unk_1E77485B0;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __52__PXStoryBufferingController__updateModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setReadinessStatus:{objc_msgSend(v2, "overallReadinessStatus")}];
}

- (void)_invalidateModelProperties
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateModelProperties];
}

- (void)_updateOverallReadinessStatus
{
  if ([(PXStoryBufferingController *)self isActive])
  {
    v10 = [(PXStoryBufferingController *)self model];
    v3 = [v10 isExporting];
    v4 = [v10 contentReadinessStatus];
    if (v3)
    {
      v5 = [v10 activeSongResource];
      v6 = 3;
      if (v5)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      v8 = [v10 timelineAttributes] & 2 | 1;
    }

    else
    {
      v8 = 3;
      if ([v10 musicReadinessStatus])
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      v7 = [v10 musicReadinessStatus];
      if (([v10 timelineAttributes] & 1) == 0)
      {
        v8 = 1;
      }
    }

    [(PXStoryBufferingController *)self _accountForReason:0 status:v6];
    [(PXStoryBufferingController *)self _accountForReason:1 status:v7];
    [(PXStoryBufferingController *)self _accountForReason:3 status:v8];
    [(PXStoryBufferingController *)self _accountForReason:2 status:v4];
    v9 = PXStoryPlaybackReadinessStatusCombine(v4, v7);
    PXStoryPlaybackReadinessStatusCombine(v9, v8);
    mach_absolute_time();
    PXTimebaseConversionFactor();
  }
}

- (void)_invalidateOverallReadinessStatus
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateOverallReadinessStatus];
}

- (void)handleModelChange:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryBufferingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXStoryBufferingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E773FEE8;
  v5[4] = self;
  v5[5] = a3;
  [(PXStoryController *)self performChanges:v5];
}

uint64_t __48__PXStoryBufferingController_handleModelChange___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 0x201004A2) != 0)
  {
    return [*(result + 32) _invalidateOverallReadinessStatus];
  }

  return result;
}

- (NSDictionary)totalBufferingTimeIntervalsPerReason
{
  mach_absolute_time();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = 0;
  for (i = 0; i != 4; ++i)
  {
    v6 = &self->_bufferingDurationsPerReason[v4];
    if (v6->var1)
    {
      PXTimebaseConversionFactor();
    }

    if (v6->var0 + 0.0 > 0.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:i];
      [v3 setObject:v7 forKeyedSubscript:v8];
    }

    ++v4;
  }

  v9 = [v3 copy];

  return v9;
}

- (NSIndexSet)bufferingReasons
{
  v2 = [(PXStoryBufferingController *)self bufferingReasonsStore];
  v3 = [v2 copy];

  return v3;
}

- (double)lastCriticalBufferingDuration
{
  p_lastCriticalBufferingDurationStore = &self->_lastCriticalBufferingDurationStore;
  mach_absolute_time();
  if (p_lastCriticalBufferingDurationStore->currentStartTime)
  {
    PXTimebaseConversionFactor();
  }

  return p_lastCriticalBufferingDurationStore->previousDuration + 0.0;
}

- (double)lastNoncriticalBufferingDuration
{
  p_lastNoncriticalBufferingDurationStore = &self->_lastNoncriticalBufferingDurationStore;
  mach_absolute_time();
  if (p_lastNoncriticalBufferingDurationStore->currentStartTime)
  {
    PXTimebaseConversionFactor();
  }

  return p_lastNoncriticalBufferingDurationStore->previousDuration + 0.0;
}

- (double)totalBufferingTimeInterval
{
  p_overallBufferingDuration = &self->_overallBufferingDuration;
  mach_absolute_time();
  if (p_overallBufferingDuration->currentStartTime)
  {
    PXTimebaseConversionFactor();
  }

  return p_overallBufferingDuration->previousDuration + 0.0;
}

- (void)setIsActive:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    if (a3)
    {
      v4 = [(PXStoryBufferingController *)self log];
      v5 = os_signpost_id_make_with_pointer(v4, self);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          v7 = 134217984;
          v8 = [(PXStoryBufferingController *)self logContext];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_EVENT, v6, "PXStoryBufferingControllerIsActive", "Context=%{signpost.telemetry:string2}lu ", &v7, 0xCu);
        }
      }

      self->_activatedTime = mach_absolute_time();
    }

    [(PXStoryBufferingController *)self _invalidateOverallReadinessStatus];
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryBufferingController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateOverallReadinessStatus, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateModelProperties];
}

- (void)dealloc
{
  free(self->_bufferingDurationsPerReason);
  v3.receiver = self;
  v3.super_class = PXStoryBufferingController;
  [(PXStoryBufferingController *)&v3 dealloc];
}

- (PXStoryBufferingController)initWithModel:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXStoryBufferingController;
  v5 = [(PXStoryController *)&v15 initWithObservableModel:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, v4);
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    bufferingReasonsStore = v6->_bufferingReasonsStore;
    v6->_bufferingReasonsStore = v7;

    v9 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
    v10 = 0;
    v6->_bufferingDurationsPerReason = v9;
    do
    {
      p_var0 = &v6->_bufferingDurationsPerReason[v10].var0;
      *p_var0 = 0;
      p_var0[1] = 0;
      ++v10;
    }

    while (v10 != 4);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__PXStoryBufferingController_initWithModel___block_invoke;
    v13[3] = &unk_1E773FEC0;
    v14 = v6;
    [(PXStoryController *)v14 performChanges:v13];
  }

  return v6;
}

- (PXStoryBufferingController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryBufferingController.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXStoryBufferingController initWithObservableModel:]"}];

  abort();
}

@end