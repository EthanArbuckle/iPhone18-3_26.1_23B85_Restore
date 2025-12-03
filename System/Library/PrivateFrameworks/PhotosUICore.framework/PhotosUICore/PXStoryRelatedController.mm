@interface PXStoryRelatedController
- (PXStoryRelatedController)initWithObservableModel:(id)model;
- (PXStoryRelatedController)initWithViewModel:(id)model;
- (PXStoryViewModel)viewModel;
- (id)detailedDebugInformation;
- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_handleResult:(id)result;
- (void)_invalidateCanStartProducingRelated;
- (void)_invalidateMainConfiguration;
- (void)_invalidateMainModel;
- (void)_invalidateRelatedConfigurations;
- (void)_updateCanStartProducingRelated;
- (void)_updateMainConfiguration;
- (void)_updateMainModel;
- (void)_updateRelatedConfigurations;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)configureUpdater:(id)updater;
- (void)dealloc;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCanStartProducingRelated:(BOOL)related;
- (void)setIsActive:(BOOL)active;
- (void)setIsProductionEnabled:(BOOL)enabled;
- (void)setMainConfiguration:(id)configuration;
- (void)setMainModel:(id)model;
- (void)setProgress:(id)progress;
- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds;
- (void)setRecentlyUsedFlexSongIDs:(id)ds;
- (void)setResult:(id)result;
@end

@implementation PXStoryRelatedController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  result = [(PXStoryRelatedController *)self result];
  v6 = [result description];
  [containerCopy setObject:v6 forKeyedSubscript:@"result"];

  detailedDebugInformation = [(PXStoryRelatedController *)self detailedDebugInformation];
  [containerCopy setObject:detailedDebugInformation forKeyedSubscript:@"upNextDebugInfo"];
}

- (id)detailedDebugInformation
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__171529;
  v19 = __Block_byref_object_dispose__171530;
  v20 = @"{error: Debug info could not be fetched in time}";
  v3 = dispatch_group_create();
  mainConfiguration = [(PXStoryRelatedController *)self mainConfiguration];
  v5 = objc_alloc_init(PXStoryRelatedMusicCurationParameters);
  relatedProducer = [(PXStoryRelatedController *)self relatedProducer];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PXStoryRelatedController_detailedDebugInformation__block_invoke;
  v12[3] = &unk_1E773FA70;
  v14 = &v15;
  v7 = v3;
  v13 = v7;
  v8 = [relatedProducer requestConfigurationsRelatedToConfiguration:mainConfiguration withOptions:8 musicCurationParameters:v5 resultHandler:v12];

  dispatch_group_enter(v7);
  v9 = dispatch_time(0, 8000000000);
  dispatch_group_wait(v7, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __52__PXStoryRelatedController_detailedDebugInformation__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 object];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 debugInfo];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v7 = [v12 error];
    v9 = [v8 stringWithFormat:@"{error: %@}", v7];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)diagnosticErrorsByComponentForHUDType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  result = [(PXStoryRelatedController *)self result];
  error = [result error];
  [v4 setObject:error forKeyedSubscript:@"Related"];

  v7 = [v4 copy];

  return v7;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  relatedProducer = [(PXStoryRelatedController *)self relatedProducer];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 appendFormat:@"Producer: %@\n", v8];

  viewModel = [(PXStoryRelatedController *)self viewModel];
  if ([viewModel wantsRelatedOverlayVisible])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  [viewModel relatedOverlayVisibilityFraction];
  [v5 appendFormat:@"Wants Overlay: %@ (Opacity: %0.0f%%)\n", v10, v11 * 100.0];
  result = [(PXStoryRelatedController *)self result];
  v13 = result;
  if (result)
  {
    error = [result error];
    v15 = error;
    if (error)
    {
      localizedDescription = [error localizedDescription];
      [v5 appendFormat:@"Failed: ❌ %@\n", localizedDescription];
    }

    else
    {
      object = [v13 object];
      localizedDescription = object;
      if (object)
      {
        storyConfigurations = [object storyConfigurations];
        [v5 appendFormat:@"Result: ✅ %lu\n", objc_msgSend(storyConfigurations, "count")];
        v21 = objc_alloc_init(PXStoryDurationFormatter);
        [v13 productionDuration];
        v22 = [(PXStoryDurationFormatter *)v21 stringFromTimeInterval:?];
        [v5 appendFormat:@"\t%@\n", v22];

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __65__PXStoryRelatedController_diagnosticTextForHUDType_displaySize___block_invoke;
        v27[3] = &unk_1E773FA48;
        v23 = v5;
        v28 = v23;
        [storyConfigurations enumerateObjectsUsingBlock:v27];
        debugInfo = [localizedDescription debugInfo];
        [v23 appendFormat:@"Debug Info: %@\n", debugInfo];
      }

      else
      {
        [v5 appendString:@"Result: ❌ None \n"];
      }
    }
  }

  else
  {
    progress = [(PXStoryRelatedController *)self progress];

    if (progress)
    {
      v18 = @"Loading…\n";
    }

    else if ([(PXStoryRelatedController *)self isActive])
    {
      if ([(PXStoryRelatedController *)self canStartProducingRelated])
      {
        v18 = @"❌ Unexpected state\n";
      }

      else
      {
        v18 = @"Waiting…\n";
      }
    }

    else
    {
      v18 = @"Inactive\n";
    }

    [v5 appendString:v18];
  }

  v25 = [v5 copy];

  return v25;
}

void __65__PXStoryRelatedController_diagnosticTextForHUDType_displaySize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = [a2 assetCollection];
  v5 = *(a1 + 32);
  v6 = PXStoryDisplayAssetCollectionShortTitle(v8);
  v7 = [v8 uuid];
  [v5 appendFormat:@"\t%li: “%@”\n\t\t%@\n", a3, v6, v7];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (MainModelObservationContext_171589 == context)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PXStoryRelatedController_observable_didChange_context___block_invoke;
    v6[3] = &unk_1E773FA20;
    v6[4] = self;
    v6[5] = change;
    [(PXStoryController *)self performChanges:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXStoryRelatedController;
    [(PXStoryController *)&v5 observable:observable didChange:change context:?];
  }
}

void __57__PXStoryRelatedController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 0x200000) != 0)
  {
    [*(a1 + 32) _invalidateCanStartProducingRelated];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20000000000) != 0)
  {
    v4 = [*(a1 + 32) viewModel];
    v5 = [v4 shouldAutoReplayPreference];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) viewModel];
      [v6 performChanges:&__block_literal_global_171593];
    }
  }
}

void __57__PXStoryRelatedController_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setWantsRelatedOverlayVisible:1];
  [v2 setShouldCountDownToUpNext:0];
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStoryRelatedController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXStoryRelatedController_handleModelChange___block_invoke;
  v5[3] = &unk_1E773FA20;
  v5[4] = self;
  v5[5] = change;
  [(PXStoryController *)self performChanges:v5];
}

void __46__PXStoryRelatedController_handleModelChange___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 0x80) != 0)
  {
    [*(a1 + 32) _invalidateMainConfiguration];
    v3 = *(a1 + 40);
    if ((v3 & 0x40) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [*(a1 + 32) _invalidateMainModel];
  if ((*(a1 + 40) & 4) != 0)
  {
LABEL_4:
    [*(a1 + 32) _invalidateCanStartProducingRelated];
  }

LABEL_5:
}

- (void)_handleResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PXStoryRelatedController__handleResult___block_invoke;
  v6[3] = &unk_1E773F9F8;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  [(PXStoryController *)self performChanges:v6];
}

uint64_t __42__PXStoryRelatedController__handleResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setResult:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setProgress:0];
}

- (void)_updateRelatedConfigurations
{
  v39 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__171529;
  v35 = __Block_byref_object_dispose__171530;
  v36 = 0;
  mainConfiguration = [(PXStoryRelatedController *)self mainConfiguration];
  isProductionEnabled = [(PXStoryRelatedController *)self isProductionEnabled];
  if (mainConfiguration)
  {
    v5 = isProductionEnabled;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = [(PXStoryRelatedController *)self result];
    v7 = result == 0;

    if (v7)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v9 = v8;
      storyQueue = [(PXStoryController *)self storyQueue];
      objc_initWeak(&location, self);
      v11 = [(PXStoryRelatedController *)self log];
      logContext = [(PXStoryRelatedController *)self logContext];
      v13 = os_signpost_id_make_with_pointer(v11, self);
      v14 = v11;
      v15 = v14;
      if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 134217984;
        v38 = logContext;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PXStoryRelatedControllerProduction", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
      }

      v16 = objc_alloc_init(PXStoryRelatedMusicCurationParameters);
      recentlyUsedFlexSongIDs = [(PXStoryRelatedController *)self recentlyUsedFlexSongIDs];
      [(PXStoryRelatedMusicCurationParameters *)v16 setRecentlyUsedFlexSongIDs:recentlyUsedFlexSongIDs];

      recentlyUsedAppleMusicSongIDs = [(PXStoryRelatedController *)self recentlyUsedAppleMusicSongIDs];
      [(PXStoryRelatedMusicCurationParameters *)v16 setRecentlyUsedAppleMusicSongIDs:recentlyUsedAppleMusicSongIDs];

      relatedProducer = [(PXStoryRelatedController *)self relatedProducer];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke;
      v24[3] = &unk_1E773F9D0;
      v29[1] = v9;
      v25 = mainConfiguration;
      v20 = v15;
      v26 = v20;
      v29[2] = v13;
      v29[3] = logContext;
      v21 = storyQueue;
      v27 = v21;
      v28 = &v31;
      objc_copyWeak(v29, &location);
      v22 = [relatedProducer requestConfigurationsRelatedToConfiguration:v25 withOptions:2 musicCurationParameters:v16 resultHandler:v24];
      v23 = v32[5];
      v32[5] = v22;

      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
    }
  }

  [(PXStoryRelatedController *)self setProgress:v32[5]];

  _Block_object_dispose(&v31, 8);
}

void __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 deliveredNowWithRequestTime:*(a1 + 72)];
  v5 = [v3 object];
  if (v5)
  {
    [v5 storyConfigurations];
    objc_claimAutoreleasedReturnValue();
    v15[1] = MEMORY[0x1E69E9820];
    v15[2] = 3221225472;
    v15[3] = __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke_2;
    v15[4] = &unk_1E773F980;
    v15[5] = *(a1 + 32);
    PXMap();
  }

  v6 = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 88);
    *buf = 134218242;
    v17 = v9;
    v18 = 2114;
    v19 = v3;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PXStoryRelatedControllerProduction", "Context=%{signpost.telemetry:string2}lu Result=%{signpost.description:attribute,public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke_24;
  v12[3] = &unk_1E773F9A8;
  v10 = *(a1 + 48);
  v14 = *(a1 + 56);
  objc_copyWeak(v15, (a1 + 64));
  v13 = v3;
  v11 = v3;
  dispatch_async(v10, v12);

  objc_destroyWeak(v15);
}

id __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithParentConfiguration:*(a1 + 32)];

  return v2;
}

void __56__PXStoryRelatedController__updateRelatedConfigurations__block_invoke_24(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _handleResult:*(a1 + 32)];
  }
}

- (void)_invalidateRelatedConfigurations
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateRelatedConfigurations];
}

- (void)_updateCanStartProducingRelated
{
  v11 = +[PXStorySettings sharedInstance];
  if (-[PXStoryRelatedController isActive](self, "isActive") && (-[PXStoryRelatedController viewModel](self, "viewModel"), v3 = objc_claimAutoreleasedReturnValue(), [v3 playbackFractionCompleted], v5 = v4, objc_msgSend(v11, "relatedProductionPlaybackFractionCompletedThreshold"), v7 = v6, v3, v5 > v7))
  {
    if ([v11 allowRelatedProductionBeforeReadyToPlay])
    {
      v8 = 1;
    }

    else
    {
      mainModel = [(PXStoryRelatedController *)self mainModel];
      readinessStatus = [mainModel readinessStatus];

      v8 = readinessStatus == 3;
    }
  }

  else
  {
    v8 = 0;
  }

  [(PXStoryRelatedController *)self setCanStartProducingRelated:v8];
}

- (void)_invalidateCanStartProducingRelated
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateCanStartProducingRelated];
}

- (void)_updateMainModel
{
  viewModel = [(PXStoryRelatedController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryRelatedController *)self setMainModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_updateMainConfiguration
{
  viewModel = [(PXStoryRelatedController *)self viewModel];
  mainConfiguration = [viewModel mainConfiguration];
  [(PXStoryRelatedController *)self setMainConfiguration:mainConfiguration];
}

- (void)_invalidateMainConfiguration
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainConfiguration];
}

- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds
{
  v4 = [ds copy];
  recentlyUsedAppleMusicSongIDs = self->_recentlyUsedAppleMusicSongIDs;
  self->_recentlyUsedAppleMusicSongIDs = v4;
}

- (void)setRecentlyUsedFlexSongIDs:(id)ds
{
  v4 = [ds copy];
  recentlyUsedFlexSongIDs = self->_recentlyUsedFlexSongIDs;
  self->_recentlyUsedFlexSongIDs = v4;
}

- (void)setResult:(id)result
{
  v17 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (self->_result != resultCopy)
  {
    objc_storeStrong(&self->_result, result);
    v6 = PLStoryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      result = self->_result;
      *buf = 138412290;
      resultCopy2 = result;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_INFO, "related results: %@", buf, 0xCu);
    }

    [(PXStoryRelatedController *)self signalChange:8];
    object = [(PXStoryProducerResult *)self->_result object];
    v9 = object;
    if (object)
    {
      storyConfigurations = [object storyConfigurations];
      viewModel = [(PXStoryRelatedController *)self viewModel];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __38__PXStoryRelatedController_setResult___block_invoke;
      v13[3] = &unk_1E774B048;
      v14 = storyConfigurations;
      v12 = storyConfigurations;
      [viewModel performChanges:v13];
    }
  }
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)progress cancel];
    objc_storeStrong(&self->_progress, progress);
    [(PXStoryRelatedController *)self signalChange:4];
    progressCopy = v7;
  }
}

- (void)setIsProductionEnabled:(BOOL)enabled
{
  if (self->_isProductionEnabled != enabled)
  {
    self->_isProductionEnabled = enabled;
    [(PXStoryRelatedController *)self signalChange:2];

    [(PXStoryRelatedController *)self _invalidateRelatedConfigurations];
  }
}

- (void)setCanStartProducingRelated:(BOOL)related
{
  if (self->_canStartProducingRelated != related)
  {
    self->_canStartProducingRelated = related;
    [(PXStoryRelatedController *)self signalChange:1];
    if (self->_canStartProducingRelated)
    {

      [(PXStoryRelatedController *)self setIsProductionEnabled:1];
    }
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext_171589];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_171589];
    [(PXStoryRelatedController *)self _invalidateCanStartProducingRelated];
    modelCopy = v7;
  }
}

- (void)setMainConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (self->_mainConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    v7 = [(PXStoryConfiguration *)configurationCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mainConfiguration, configuration);
      [(PXStoryRelatedController *)self setIsProductionEnabled:0];
      [(PXStoryRelatedController *)self setCanStartProducingRelated:0];
      [(PXStoryRelatedController *)self setResult:0];
      v6 = v8;
    }
  }
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    if (!active)
    {
      [(PXStoryRelatedController *)self setIsProductionEnabled:0];
    }

    [(PXStoryRelatedController *)self _invalidateCanStartProducingRelated];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryRelatedController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateMainConfiguration, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateMainModel];
  [updaterCopy addUpdateSelector:sel__updateCanStartProducingRelated];
  [updaterCopy addUpdateSelector:sel__updateRelatedConfigurations];
}

- (void)dealloc
{
  [(NSProgress *)self->_progress cancel];
  v3.receiver = self;
  v3.super_class = PXStoryRelatedController;
  [(PXStoryRelatedController *)&v3 dealloc];
}

- (PXStoryRelatedController)initWithViewModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = PXStoryRelatedController;
  v6 = [(PXStoryController *)&v18 initWithObservableModel:modelCopy];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->_viewModel, modelCopy);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__PXStoryRelatedController_initWithViewModel___block_invoke;
    v16[3] = &unk_1E774B048;
    v9 = v7;
    v17 = v9;
    [modelCopy performChanges:v16];

    mainConfiguration = [modelCopy mainConfiguration];
    relatedProducer = [mainConfiguration relatedProducer];
    v12 = relatedProducer;
    if (!relatedProducer)
    {
      viewLayoutSpec = [modelCopy viewLayoutSpec];
      v12 = PXStoryRelatedProducerCreateDefaultWithTargetUpNextCount([viewLayoutSpec upNextTargetMemoryCount]);
    }

    objc_storeStrong(v9 + 19, v12);
    if (!relatedProducer)
    {
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__PXStoryRelatedController_initWithViewModel___block_invoke_2;
    v14[3] = &unk_1E773F958;
    v15 = v9;
    [v15 performChanges:v14];
  }

  return v7;
}

uint64_t __46__PXStoryRelatedController_initWithViewModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateMainConfiguration];
  [*(a1 + 32) _invalidateMainModel];
  v2 = *(a1 + 32);

  return [v2 _invalidateCanStartProducingRelated];
}

- (PXStoryRelatedController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryRelatedController initWithObservableModel:]"}];

  abort();
}

@end