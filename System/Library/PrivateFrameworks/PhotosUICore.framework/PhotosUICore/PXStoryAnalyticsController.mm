@interface PXStoryAnalyticsController
+ (id)analyticsViewNameForViewMode:(int64_t)mode;
+ (id)memoryPayloadFromStoryModel:(id)model;
+ (id)stringForAudioAssetCatalog:(int64_t)catalog;
+ (id)stringForLaunchType:(id)type assetCollection:(id)collection;
+ (void)sendMemoryEvent:(id)event model:(id)model payload:(id)payload;
- (NSDictionary)commonSpinnerRelatedPayload;
- (NSDictionary)defaultPayload;
- (PXStoryAnalyticsController)init;
- (PXStoryAnalyticsController)initWithViewModel:(id)model;
- (void)_collectAnalyticsAtPlaybackEnd;
- (void)_collectAnalyticsForBuffering;
- (void)_collectAnalyticsForPlayStateChange;
- (void)_incrementPlayCountForMemory:(id)memory;
- (void)_updateCurrentModel;
- (void)_updateCurrentViewMode;
- (void)_updateDidUserChangePlaybackTime;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCurrentModel:(id)model;
- (void)setCurrentViewMode:(int64_t)mode;
- (void)setIsSessionActive:(BOOL)active;
@end

@implementation PXStoryAnalyticsController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_237051 != context)
  {
    if (CurrentModelObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAnalyticsController.m" lineNumber:358 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((change & 2) != 0)
    {
      [(PXStoryAnalyticsController *)self _collectAnalyticsForPlayStateChange];
      if ((change & 0x200000) == 0)
      {
LABEL_5:
        if ((change & 0x10000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        [(PXStoryAnalyticsController *)self _invalidateDidUserChangePlaybackTime];
        goto LABEL_14;
      }
    }

    else if ((change & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    [(PXStoryAnalyticsController *)self _collectAnalyticsForBuffering];
    if ((change & 0x10000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((change & 0x40) != 0)
  {
    [(PXStoryAnalyticsController *)self _invalidateCurrentModel];
  }

  if ((change & 0x2000) != 0)
  {
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
  }

LABEL_14:
}

- (void)_updateDidUserChangePlaybackTime
{
  if (![(PXStoryAnalyticsController *)self didUserChangePlaybackTime])
  {
    currentModel = [(PXStoryAnalyticsController *)self currentModel];
    -[PXStoryAnalyticsController setDidUserChangePlaybackTime:](self, "setDidUserChangePlaybackTime:", [currentModel lastPlaybackTimeChangeSource] == 2);
  }
}

- (void)_updateCurrentViewMode
{
  if ([(PXStoryAnalyticsController *)self isSessionActive])
  {
    viewModel = [(PXStoryAnalyticsController *)self viewModel];
    -[PXStoryAnalyticsController setCurrentViewMode:](self, "setCurrentViewMode:", [viewModel viewMode]);
  }

  else
  {

    [(PXStoryAnalyticsController *)self setCurrentViewMode:0];
  }
}

- (void)_updateCurrentModel
{
  currentModel = [(PXStoryAnalyticsController *)self currentModel];

  if (currentModel)
  {
    [(PXStoryAnalyticsController *)self _collectAnalyticsAtPlaybackEnd];
  }

  viewModel = [(PXStoryAnalyticsController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryAnalyticsController *)self setCurrentModel:mainModel];
}

- (void)_collectAnalyticsAtPlaybackEnd
{
  viewModel = [(PXStoryAnalyticsController *)self viewModel];
  currentModel = [(PXStoryAnalyticsController *)self currentModel];
  commonSpinnerRelatedPayload = [(PXStoryAnalyticsController *)self commonSpinnerRelatedPayload];
  v6 = [commonSpinnerRelatedPayload mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  bufferingEventsCount = [(PXStoryAnalyticsController *)self bufferingEventsCount];
  if (bufferingEventsCount <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = bufferingEventsCount;
  }

  v10 = [v7 numberWithInteger:v9 - 1];
  [v6 setObject:v10 forKeyedSubscript:@"midMemorySpinnerCount"];

  v11 = MEMORY[0x1E696AD98];
  bufferingController = [viewModel bufferingController];
  [bufferingController totalBufferingTimeInterval];
  v14 = v13;
  initialBufferingDuration = [(PXStoryAnalyticsController *)self initialBufferingDuration];
  [initialBufferingDuration doubleValue];
  v17 = [v11 numberWithDouble:(v14 - v16) * 1000.0];
  [v6 setObject:v17 forKeyedSubscript:@"midMemorySpinnerTotalTime"];

  [objc_opt_class() sendMemoryEvent:@"com.apple.photos.memory.playbackReliability" model:currentModel payload:v6];
  [currentModel playbackMaxFractionCompleted];
  v19 = v18;
  [currentModel playbackFractionCompleted];
  v21 = v20;
  timeline = [currentModel timeline];
  v23 = timeline;
  if (timeline)
  {
    [timeline timeRange];
  }

  else
  {
    memset(v44, 0, sizeof(v44));
    v43 = 0u;
  }

  time = *(v44 + 8);
  Seconds = CMTimeGetSeconds(&time);

  defaultPayload = [(PXStoryAnalyticsController *)self defaultPayload];
  v26 = [defaultPayload mutableCopy];

  if (v19 < 1.0)
  {
    v27 = MEMORY[0x1E695E110];
  }

  else
  {
    v27 = MEMORY[0x1E695E118];
  }

  [v26 setObject:v27 forKeyedSubscript:@"didPlayToEnd"];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * 100.0];
  [v26 setObject:v28 forKeyedSubscript:@"maxPlaybackPercentage"];

  seconds = [MEMORY[0x1E696AD98] numberWithDouble:v19 * Seconds];
  [v26 setObject:seconds forKeyedSubscript:@"maxPlayTime"];

  seconds2 = [MEMORY[0x1E696AD98] numberWithDouble:v21 * Seconds];
  [v26 setObject:seconds2 forKeyedSubscript:@"playTime"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{(objc_msgSend(viewModel, "chromeItems") >> 15) & 1}];
  [v26 setObject:v31 forKeyedSubscript:@"spinnerVisible"];

  [objc_opt_class() sendMemoryEvent:@"com.apple.photos.CPAnalytics.memoryPlayed" model:currentModel payload:v26];
  timeline2 = [currentModel timeline];
  numberOfSegments = [timeline2 numberOfSegments];
  if (numberOfSegments >= 5)
  {
    v34 = numberOfSegments;
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v42 = 0;
    if (timeline2)
    {
      [timeline2 timeRange];
    }

    else
    {
      memset(v44, 0, sizeof(v44));
      v43 = 0u;
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __60__PXStoryAnalyticsController__collectAnalyticsAtPlaybackEnd__block_invoke;
    v40[3] = &unk_1E77494C8;
    v40[4] = &time;
    [timeline2 enumerateSegmentsInTimeRange:&v43 usingBlock:v40];
    v35 = *(*&time.timescale + 24) / v34;
    if (v35 >= 0.5)
    {
      if (v35 >= 0.75)
      {
        v37 = v35;
        if (v37 >= 0.85)
        {
          if (v37 >= 0.95)
          {
            v36 = @"com.apple.photos.memory.interactiveMemoryTimelinePlayedWith95-100PercentTransitionsOnBar";
          }

          else
          {
            v36 = @"com.apple.photos.memory.interactiveMemoryTimelinePlayedWith85-94PercentTransitionsOnBar";
          }
        }

        else
        {
          v36 = @"com.apple.photos.memory.interactiveMemoryTimelinePlayedWith75-84PercentTransitionsOnBar";
        }
      }

      else
      {
        v36 = @"com.apple.photos.memory.interactiveMemoryTimelinePlayedWith50-74PercentTransitionsOnBar";
      }
    }

    else
    {
      v36 = @"com.apple.photos.memory.interactiveMemoryTimelinePlayedWith0-49PercentTransitionsOnBar";
    }

    v38 = objc_opt_class();
    defaultPayload2 = [(PXStoryAnalyticsController *)self defaultPayload];
    [v38 sendMemoryEvent:v36 model:currentModel payload:defaultPayload2];

    _Block_object_dispose(&time, 8);
  }
}

uint64_t __60__PXStoryAnalyticsController__collectAnalyticsAtPlaybackEnd__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v4 = (a4 + 184);
    do
    {
      v5 = *v4;
      v4 += 25;
      if (v5 >= 2)
      {
        ++*(*(*(result + 32) + 8) + 24);
      }

      --a2;
    }

    while (a2);
  }

  return result;
}

- (void)_collectAnalyticsForBuffering
{
  currentModel = [(PXStoryAnalyticsController *)self currentModel];
  readinessStatus = [currentModel readinessStatus];
  if (readinessStatus == 3)
  {
    initialBufferingDuration = [(PXStoryAnalyticsController *)self initialBufferingDuration];

    if (!initialBufferingDuration)
    {
      [(PXStoryAnalyticsController *)self setBufferingEventsCount:1];
      viewModel = [(PXStoryAnalyticsController *)self viewModel];
      bufferingController = [viewModel bufferingController];

      v8 = MEMORY[0x1E696AD98];
      [bufferingController lastNoncriticalBufferingDuration];
      v10 = v9;
      [bufferingController lastCriticalBufferingDuration];
      v12 = [v8 numberWithDouble:v10 + v11];
      [(PXStoryAnalyticsController *)self setInitialBufferingDuration:v12];

      commonSpinnerRelatedPayload = [(PXStoryAnalyticsController *)self commonSpinnerRelatedPayload];
      v14 = [commonSpinnerRelatedPayload mutableCopy];

      v15 = MEMORY[0x1E696AD98];
      [bufferingController lastNoncriticalBufferingDuration];
      v17 = [v15 numberWithDouble:v16 * 1000.0];
      [v14 setObject:v17 forKeyedSubscript:@"loadingDelay"];

      v18 = MEMORY[0x1E696AD98];
      [bufferingController lastCriticalBufferingDuration];
      v20 = [v18 numberWithDouble:v19 * 1000.0];
      [v14 setObject:v20 forKeyedSubscript:@"userVisibleSpinnerLoadingDelay"];

      totalBufferingTimeIntervalsPerReason = [bufferingController totalBufferingTimeIntervalsPerReason];
      v22 = MEMORY[0x1E696AD98];
      v23 = [totalBufferingTimeIntervalsPerReason objectForKeyedSubscript:&unk_1F190DD68];
      [v23 doubleValue];
      v25 = [v22 numberWithDouble:v24 * 1000.0];
      [v14 setObject:v25 forKeyedSubscript:@"spinnerReasonMusicFetching"];

      v26 = MEMORY[0x1E696AD98];
      v27 = [totalBufferingTimeIntervalsPerReason objectForKeyedSubscript:&unk_1F190DD80];
      [v27 doubleValue];
      v29 = [v26 numberWithDouble:v28 * 1000.0];
      [v14 setObject:v29 forKeyedSubscript:@"spinnerReasonMusicBuffering"];

      v30 = MEMORY[0x1E696AD98];
      v31 = [totalBufferingTimeIntervalsPerReason objectForKeyedSubscript:&unk_1F190DD98];
      [v31 doubleValue];
      v33 = [v30 numberWithDouble:v32 * 1000.0];
      [v14 setObject:v33 forKeyedSubscript:@"spinnerReasonAssetsPreloading"];

      v34 = MEMORY[0x1E696AD98];
      v35 = [totalBufferingTimeIntervalsPerReason objectForKeyedSubscript:&unk_1F190DDB0];
      [v35 doubleValue];
      v37 = [v34 numberWithDouble:v36 * 1000.0];
      [v14 setObject:v37 forKeyedSubscript:@"spinnerReasonTimelineCreation"];

      v38 = objc_opt_class();
      currentModel2 = [(PXStoryAnalyticsController *)self currentModel];
      [v38 sendMemoryEvent:@"com.apple.photos.memory.playbackLaunchPerformance" model:currentModel2 payload:v14];
    }
  }

  else if (readinessStatus == 1)
  {
    initialBufferingDuration2 = [(PXStoryAnalyticsController *)self initialBufferingDuration];

    if (initialBufferingDuration2)
    {
      [(PXStoryAnalyticsController *)self setBufferingEventsCount:[(PXStoryAnalyticsController *)self bufferingEventsCount]+ 1];
    }
  }
}

- (void)_incrementPlayCountForMemory:(id)memory
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6991F28];
  v7 = *MEMORY[0x1E6991E08];
  v8[0] = memory;
  v4 = MEMORY[0x1E695DF20];
  memoryCopy = memory;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 sendEvent:@"com.apple.photos.CPAnalytics.incrementMemoryViewCount" withPayload:v6];
}

- (void)_collectAnalyticsForPlayStateChange
{
  currentModel = [(PXStoryAnalyticsController *)self currentModel];
  desiredPlayState = [currentModel desiredPlayState];
  if (desiredPlayState)
  {
    if (desiredPlayState != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = PXStoryAnalyticsEventSessionPlayed;
  }

  else
  {
    v4 = PXStoryAnalyticsEventSessionPaused;
  }

  v5 = *v4;
LABEL_7:
  v6 = MEMORY[0x1E6991F28];
  defaultPayload = [(PXStoryAnalyticsController *)self defaultPayload];
  [v6 sendEvent:v5 withPayload:defaultPayload];

  if (!-[PXStoryAnalyticsController didPlayStory](self, "didPlayStory") && [currentModel desiredPlayState] == 1)
  {
    currentAssetCollection = [currentModel currentAssetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXStoryAnalyticsController *)self _incrementPlayCountForMemory:currentAssetCollection];
    }

    [(PXStoryAnalyticsController *)self setDidPlayStory:1];
  }
}

- (NSDictionary)commonSpinnerRelatedPayload
{
  defaultPayload = [(PXStoryAnalyticsController *)self defaultPayload];
  v4 = [defaultPayload mutableCopy];

  currentModel = [(PXStoryAnalyticsController *)self currentModel];
  currentSongResource = [currentModel currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];
  [px_storyResourceSongAsset pace];
  v8 = PFStoryRecipeSongPaceDescription();
  [v4 setObject:v8 forKeyedSubscript:@"songPace"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXStoryAnalyticsController didUserChangePlaybackTime](self, "didUserChangePlaybackTime")}];
  [v4 setObject:v9 forKeyedSubscript:@"userDidInteractiveNavigation"];

  v10 = [v4 copy];

  return v10;
}

- (NSDictionary)defaultPayload
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  sessionIdentifier = [(PXStoryAnalyticsController *)self sessionIdentifier];
  [v3 setObject:sessionIdentifier forKeyedSubscript:@"interactiveMemorySessionIdentifier"];

  currentModel = [(PXStoryAnalyticsController *)self currentModel];
  currentAssetCollection = [currentModel currentAssetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = currentAssetCollection;
  }

  else
  {
    v7 = 0;
  }

  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991E08]];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v10 = [v3 copy];

  return v10;
}

- (void)setCurrentViewMode:(int64_t)mode
{
  v36[1] = *MEMORY[0x1E69E9840];
  currentViewMode = self->_currentViewMode;
  if (currentViewMode != mode)
  {
    currentViewModeSignpostID = self->_currentViewModeSignpostID;
    self->_currentViewMode = mode;
    v6 = [objc_opt_class() analyticsViewNameForViewMode:currentViewMode];
    v7 = v6;
    v8 = MEMORY[0x1E6991E20];
    v9 = MEMORY[0x1E6991E58];
    v10 = 0x1E696A000;
    if (v6)
    {
      v11 = MEMORY[0x1E6991F28];
      v12 = *MEMORY[0x1E6991E90];
      v35 = *MEMORY[0x1E6991E20];
      v13 = v35;
      v36[0] = v6;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      [v11 endSignpost:currentViewModeSignpostID forEventName:v12 withPayload:v14];

      v15 = MEMORY[0x1E6991F28];
      v16 = *MEMORY[0x1E6991CE0];
      v17 = *v9;
      v33[0] = v13;
      v10 = 0x1E696A000uLL;
      v33[1] = v17;
      v34[0] = v7;
      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:currentViewModeSignpostID];
      v34[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
      [v15 sendEvent:v16 withPayload:v19];

      v8 = MEMORY[0x1E6991E20];
    }

    v20 = [objc_opt_class() analyticsViewNameForViewMode:self->_currentViewMode];
    if (v20)
    {
      startSignpost = [MEMORY[0x1E6991F28] startSignpost];
      v22 = MEMORY[0x1E6991F28];
      v23 = v8;
      v24 = *MEMORY[0x1E6991CD8];
      v25 = *v23;
      v26 = *v9;
      v31[0] = v25;
      v31[1] = v26;
      v32[0] = v20;
      v27 = [*(v10 + 3480) numberWithLongLong:startSignpost];
      v32[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [v22 sendEvent:v24 withPayload:v28];
    }

    else
    {
      startSignpost = 0;
    }

    self->_currentViewModeSignpostID = startSignpost;
    if ([(PXStoryAnalyticsController *)self currentViewMode]== 2)
    {
      v29 = objc_opt_class();
      currentModel = [(PXStoryAnalyticsController *)self currentModel];
      [v29 sendMemoryEvent:@"com.apple.photos.CPAnalytics.memoryOpened" model:currentModel payload:MEMORY[0x1E695E0F8]];
    }
  }
}

- (void)setCurrentModel:(id)model
{
  modelCopy = model;
  currentModel = self->_currentModel;
  if (currentModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)currentModel unregisterChangeObserver:self context:CurrentModelObservationContext];
    objc_storeStrong(&self->_currentModel, model);
    [(PXStoryModel *)self->_currentModel registerChangeObserver:self context:CurrentModelObservationContext];
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
    [(PXStoryAnalyticsController *)self setDidPlayStory:0];
    [(PXStoryAnalyticsController *)self setBufferingEventsCount:0];
    [(PXStoryAnalyticsController *)self setInitialBufferingDuration:0];
    [(PXStoryAnalyticsController *)self setDidUserChangePlaybackTime:0];
    [(PXStoryAnalyticsController *)self _invalidateDidUserChangePlaybackTime];
    modelCopy = v7;
  }
}

- (void)setIsSessionActive:(BOOL)active
{
  isSessionActive = self->_isSessionActive;
  if (isSessionActive != active)
  {
    self->_isSessionActive = active;
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
    v5 = MEMORY[0x1E6991F28];
    v6 = self->_isSessionActive ? @"com.apple.photos.memory.interactiveMemorySessionBegan" : @"com.apple.photos.memory.interactiveMemorySessionEnded";
    defaultPayload = [(PXStoryAnalyticsController *)self defaultPayload];
    [v5 sendEvent:v6 withPayload:defaultPayload];

    if (isSessionActive && !self->_isSessionActive)
    {

      [(PXStoryAnalyticsController *)self _collectAnalyticsAtPlaybackEnd];
    }
  }
}

- (PXStoryAnalyticsController)initWithViewModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXStoryAnalyticsController;
  v6 = [(PXStoryAnalyticsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_237051];
    identifier = [(PXStoryViewModel *)v7->_viewModel identifier];
    sessionIdentifier = v7->_sessionIdentifier;
    v7->_sessionIdentifier = identifier;

    [(PXStoryAnalyticsController *)v7 _invalidateCurrentModel];
  }

  return v7;
}

- (PXStoryAnalyticsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAnalyticsController.m" lineNumber:84 description:{@"%s is not available as initializer", "-[PXStoryAnalyticsController init]"}];

  abort();
}

+ (id)stringForAudioAssetCatalog:(int64_t)catalog
{
  if (catalog > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E77494F8[catalog];
  }
}

+ (id)stringForLaunchType:(id)type assetCollection:(id)collection
{
  typeCopy = type;
  collectionCopy = collection;
  v7 = typeCopy;
  if ([(__CFString *)typeCopy isEqualToString:@"Unknown"])
  {
    if (([collectionCopy assetCollectionType] - 1) >= 2)
    {
      v7 = @"Unknown";
    }

    else
    {
      v7 = @"Albums";
    }
  }

  v8 = v7;

  return v7;
}

+ (id)memoryPayloadFromStoryModel:(id)model
{
  modelCopy = model;
  currentAssetCollection = [modelCopy currentAssetCollection];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E69788F8] analyticsPayloadForMemory:currentAssetCollection];
    [v6 addEntriesFromDictionary:v7];
  }

  v8 = *MEMORY[0x1E6991E00];
  v9 = [MEMORY[0x1E6991F28] systemPropertyForKey:*MEMORY[0x1E6991E00]];
  [v6 setObject:v9 forKeyedSubscript:v8];

  currentSongResource = [modelCopy currentSongResource];
  px_storyResourceSongAsset = [currentSongResource px_storyResourceSongAsset];
  v12 = [self stringForAudioAssetCatalog:{objc_msgSend(px_storyResourceSongAsset, "catalog")}];
  [v6 setObject:v12 forKeyedSubscript:@"cpa_memory_songType"];

  configuration = [modelCopy configuration];
  launchType = [configuration launchType];
  v15 = [self stringForLaunchType:launchType assetCollection:currentAssetCollection];
  [v6 setObject:v15 forKeyedSubscript:@"cpa_memory_launchType"];

  if (([modelCopy timelineAttributes] & 2) != 0)
  {
    v16 = MEMORY[0x1E696AD98];
    timeline = [modelCopy timeline];
    v18 = timeline;
    if (timeline)
    {
      [timeline timeRange];
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      v27 = 0u;
    }

    time = *&v28[1];
    v19 = [v16 numberWithDouble:CMTimeGetSeconds(&time)];
    [v6 setObject:v19 forKeyedSubscript:@"cpa_memory_duration"];
  }

  resourcesDataSourceManager = [modelCopy resourcesDataSourceManager];
  isDataSourceFinal = [resourcesDataSourceManager isDataSourceFinal];

  if (isDataSourceFinal)
  {
    v22 = MEMORY[0x1E696AD98];
    resourcesDataSourceManager2 = [modelCopy resourcesDataSourceManager];
    dataSource = [resourcesDataSourceManager2 dataSource];
    v25 = [v22 numberWithInteger:{objc_msgSend(dataSource, "numberOfDisplayAssetResources")}];
    [v6 setObject:v25 forKeyedSubscript:@"cpa_memory_assetCount"];
  }

  return v6;
}

+ (void)sendMemoryEvent:(id)event model:(id)model payload:(id)payload
{
  eventCopy = event;
  modelCopy = model;
  payloadCopy = payload;
  storyQueue = [modelCopy storyQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PXStoryAnalyticsController_sendMemoryEvent_model_payload___block_invoke;
  v15[3] = &unk_1E774A768;
  v16 = payloadCopy;
  v17 = modelCopy;
  v18 = eventCopy;
  selfCopy = self;
  v12 = eventCopy;
  v13 = modelCopy;
  v14 = payloadCopy;
  dispatch_async(storyQueue, v15);
}

void __60__PXStoryAnalyticsController_sendMemoryEvent_model_payload___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  v2 = [*(a1 + 56) memoryPayloadFromStoryModel:*(a1 + 40)];
  [v3 addEntriesFromDictionary:v2];

  [MEMORY[0x1E6991F28] sendEvent:*(a1 + 48) withPayload:v3];
}

+ (id)analyticsViewNameForViewMode:(int64_t)mode
{
  v3 = @"InteractiveMemoryBrowserGrid";
  if (mode != 2)
  {
    v3 = 0;
  }

  if (mode == 4)
  {
    return @"InteractiveMemoryStyleSwitcher";
  }

  else
  {
    return v3;
  }
}

@end