@interface PXStoryBufferingController
- (NSDictionary)totalBufferingTimeIntervalsPerReason;
- (NSIndexSet)bufferingReasons;
- (PXStoryBufferingController)initWithModel:(id)model;
- (PXStoryBufferingController)initWithObservableModel:(id)model;
- (PXStoryModel)model;
- (double)lastCriticalBufferingDuration;
- (double)lastNoncriticalBufferingDuration;
- (double)noncriticalBufferingTimeout;
- (double)totalBufferingTimeInterval;
- (void)_accountForReason:(int64_t)reason status:(int64_t)status;
- (void)_invalidateModelProperties;
- (void)_invalidateOverallReadinessStatus;
- (void)_updateModelProperties;
- (void)_updateOverallReadinessStatus;
- (void)configureUpdater:(id)updater;
- (void)dealloc;
- (void)handleModelChange:(unint64_t)change;
- (void)setIsActive:(BOOL)active;
- (void)setIsBuffering:(BOOL)buffering;
- (void)setOverallReadinessStatus:(int64_t)status;
@end

@implementation PXStoryBufferingController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (double)noncriticalBufferingTimeout
{
  model = [(PXStoryBufferingController *)self model];
  configuration = [model configuration];
  [configuration noncriticalBufferingTimeout];
  v5 = v4;

  return v5;
}

- (void)setOverallReadinessStatus:(int64_t)status
{
  v16 = *MEMORY[0x1E69E9840];
  overallReadinessStatus = self->_overallReadinessStatus;
  if (overallReadinessStatus != status)
  {
    self->_overallReadinessStatus = status;
    [(PXStoryBufferingController *)self _invalidateModelProperties];
    status = self->_overallReadinessStatus;
  }

  if (status != 3)
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
    storyQueue = [(PXStoryController *)self storyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXStoryBufferingController_setOverallReadinessStatus___block_invoke_3;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v12, &buf);
    dispatch_after(v8, storyQueue, block);

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

- (void)setIsBuffering:(BOOL)buffering
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isBuffering != buffering)
  {
    self->_isBuffering = buffering;
    if (buffering)
    {
      v4 = [(PXStoryBufferingController *)self log];
      logContext = [(PXStoryBufferingController *)self logContext];
      v6 = os_signpost_id_make_with_pointer(v4, self);
      v7 = v4;
      v8 = v7;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v19 = logContext;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PXStoryBufferingController.PlaybackBuffering", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }

      startSignpost = [MEMORY[0x1E6991F28] startSignpost];
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
      v16 = logContext;
      v17 = startSignpost;
      v11 = v8;
      [(PXStoryBufferingController *)self setOnBufferingEnd:v13];
    }

    else
    {
      onBufferingEnd = [(PXStoryBufferingController *)self onBufferingEnd];
      onBufferingEnd[2]();

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

- (void)_accountForReason:(int64_t)reason status:(int64_t)status
{
  bufferingReasonsStore = [(PXStoryBufferingController *)self bufferingReasonsStore];
  v8 = bufferingReasonsStore;
  if (status == 3)
  {
    [bufferingReasonsStore removeIndex:reason];

    v9 = &self->_bufferingDurationsPerReason[reason];
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
    [bufferingReasonsStore addIndex:reason];

    if (status)
    {
      v10 = &self->_bufferingDurationsPerReason[reason];
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
  model = [(PXStoryBufferingController *)self model];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PXStoryBufferingController__updateModelProperties__block_invoke;
  v4[3] = &unk_1E77485B0;
  v4[4] = self;
  [model performChanges:v4];
}

void __52__PXStoryBufferingController__updateModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setReadinessStatus:{objc_msgSend(v2, "overallReadinessStatus")}];
}

- (void)_invalidateModelProperties
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateModelProperties];
}

- (void)_updateOverallReadinessStatus
{
  if ([(PXStoryBufferingController *)self isActive])
  {
    model = [(PXStoryBufferingController *)self model];
    isExporting = [model isExporting];
    contentReadinessStatus = [model contentReadinessStatus];
    if (isExporting)
    {
      activeSongResource = [model activeSongResource];
      v6 = 3;
      if (activeSongResource)
      {
        musicReadinessStatus = 3;
      }

      else
      {
        musicReadinessStatus = 1;
      }

      v8 = [model timelineAttributes] & 2 | 1;
    }

    else
    {
      v8 = 3;
      if ([model musicReadinessStatus])
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }

      musicReadinessStatus = [model musicReadinessStatus];
      if (([model timelineAttributes] & 1) == 0)
      {
        v8 = 1;
      }
    }

    [(PXStoryBufferingController *)self _accountForReason:0 status:v6];
    [(PXStoryBufferingController *)self _accountForReason:1 status:musicReadinessStatus];
    [(PXStoryBufferingController *)self _accountForReason:3 status:v8];
    [(PXStoryBufferingController *)self _accountForReason:2 status:contentReadinessStatus];
    v9 = PXStoryPlaybackReadinessStatusCombine(contentReadinessStatus, musicReadinessStatus);
    PXStoryPlaybackReadinessStatusCombine(v9, v8);
    mach_absolute_time();
    PXTimebaseConversionFactor();
  }
}

- (void)_invalidateOverallReadinessStatus
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateOverallReadinessStatus];
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStoryBufferingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXStoryBufferingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E773FEE8;
  v5[4] = self;
  v5[5] = change;
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
  bufferingReasonsStore = [(PXStoryBufferingController *)self bufferingReasonsStore];
  v3 = [bufferingReasonsStore copy];

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

- (void)setIsActive:(BOOL)active
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isActive != active)
  {
    self->_isActive = active;
    if (active)
    {
      v4 = [(PXStoryBufferingController *)self log];
      v5 = os_signpost_id_make_with_pointer(v4, self);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          v7 = 134217984;
          logContext = [(PXStoryBufferingController *)self logContext];
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_EVENT, v6, "PXStoryBufferingControllerIsActive", "Context=%{signpost.telemetry:string2}lu ", &v7, 0xCu);
        }
      }

      self->_activatedTime = mach_absolute_time();
    }

    [(PXStoryBufferingController *)self _invalidateOverallReadinessStatus];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryBufferingController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateOverallReadinessStatus, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateModelProperties];
}

- (void)dealloc
{
  free(self->_bufferingDurationsPerReason);
  v3.receiver = self;
  v3.super_class = PXStoryBufferingController;
  [(PXStoryBufferingController *)&v3 dealloc];
}

- (PXStoryBufferingController)initWithModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = PXStoryBufferingController;
  v5 = [(PXStoryController *)&v15 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
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

- (PXStoryBufferingController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryBufferingController.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXStoryBufferingController initWithObservableModel:]"}];

  abort();
}

@end