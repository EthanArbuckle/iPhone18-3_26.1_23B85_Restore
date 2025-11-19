@interface PXStoryAnalyticsController
+ (id)analyticsViewNameForViewMode:(int64_t)a3;
+ (id)memoryPayloadFromStoryModel:(id)a3;
+ (id)stringForAudioAssetCatalog:(int64_t)a3;
+ (id)stringForLaunchType:(id)a3 assetCollection:(id)a4;
+ (void)sendMemoryEvent:(id)a3 model:(id)a4 payload:(id)a5;
- (NSDictionary)commonSpinnerRelatedPayload;
- (NSDictionary)defaultPayload;
- (PXStoryAnalyticsController)init;
- (PXStoryAnalyticsController)initWithViewModel:(id)a3;
- (void)_collectAnalyticsAtPlaybackEnd;
- (void)_collectAnalyticsForBuffering;
- (void)_collectAnalyticsForPlayStateChange;
- (void)_incrementPlayCountForMemory:(id)a3;
- (void)_updateCurrentModel;
- (void)_updateCurrentViewMode;
- (void)_updateDidUserChangePlaybackTime;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCurrentModel:(id)a3;
- (void)setCurrentViewMode:(int64_t)a3;
- (void)setIsSessionActive:(BOOL)a3;
@end

@implementation PXStoryAnalyticsController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ViewModelObservationContext_237051 != a5)
  {
    if (CurrentModelObservationContext != a5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXStoryAnalyticsController.m" lineNumber:358 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((a4 & 2) != 0)
    {
      [(PXStoryAnalyticsController *)self _collectAnalyticsForPlayStateChange];
      if ((a4 & 0x200000) == 0)
      {
LABEL_5:
        if ((a4 & 0x10000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        [(PXStoryAnalyticsController *)self _invalidateDidUserChangePlaybackTime];
        goto LABEL_14;
      }
    }

    else if ((a4 & 0x200000) == 0)
    {
      goto LABEL_5;
    }

    [(PXStoryAnalyticsController *)self _collectAnalyticsForBuffering];
    if ((a4 & 0x10000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((a4 & 0x40) != 0)
  {
    [(PXStoryAnalyticsController *)self _invalidateCurrentModel];
  }

  if ((a4 & 0x2000) != 0)
  {
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
  }

LABEL_14:
}

- (void)_updateDidUserChangePlaybackTime
{
  if (![(PXStoryAnalyticsController *)self didUserChangePlaybackTime])
  {
    v3 = [(PXStoryAnalyticsController *)self currentModel];
    -[PXStoryAnalyticsController setDidUserChangePlaybackTime:](self, "setDidUserChangePlaybackTime:", [v3 lastPlaybackTimeChangeSource] == 2);
  }
}

- (void)_updateCurrentViewMode
{
  if ([(PXStoryAnalyticsController *)self isSessionActive])
  {
    v3 = [(PXStoryAnalyticsController *)self viewModel];
    -[PXStoryAnalyticsController setCurrentViewMode:](self, "setCurrentViewMode:", [v3 viewMode]);
  }

  else
  {

    [(PXStoryAnalyticsController *)self setCurrentViewMode:0];
  }
}

- (void)_updateCurrentModel
{
  v3 = [(PXStoryAnalyticsController *)self currentModel];

  if (v3)
  {
    [(PXStoryAnalyticsController *)self _collectAnalyticsAtPlaybackEnd];
  }

  v5 = [(PXStoryAnalyticsController *)self viewModel];
  v4 = [v5 mainModel];
  [(PXStoryAnalyticsController *)self setCurrentModel:v4];
}

- (void)_collectAnalyticsAtPlaybackEnd
{
  v3 = [(PXStoryAnalyticsController *)self viewModel];
  v4 = [(PXStoryAnalyticsController *)self currentModel];
  v5 = [(PXStoryAnalyticsController *)self commonSpinnerRelatedPayload];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(PXStoryAnalyticsController *)self bufferingEventsCount];
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 numberWithInteger:v9 - 1];
  [v6 setObject:v10 forKeyedSubscript:@"midMemorySpinnerCount"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [v3 bufferingController];
  [v12 totalBufferingTimeInterval];
  v14 = v13;
  v15 = [(PXStoryAnalyticsController *)self initialBufferingDuration];
  [v15 doubleValue];
  v17 = [v11 numberWithDouble:(v14 - v16) * 1000.0];
  [v6 setObject:v17 forKeyedSubscript:@"midMemorySpinnerTotalTime"];

  [objc_opt_class() sendMemoryEvent:@"com.apple.photos.memory.playbackReliability" model:v4 payload:v6];
  [v4 playbackMaxFractionCompleted];
  v19 = v18;
  [v4 playbackFractionCompleted];
  v21 = v20;
  v22 = [v4 timeline];
  v23 = v22;
  if (v22)
  {
    [v22 timeRange];
  }

  else
  {
    memset(v44, 0, sizeof(v44));
    v43 = 0u;
  }

  time = *(v44 + 8);
  Seconds = CMTimeGetSeconds(&time);

  v25 = [(PXStoryAnalyticsController *)self defaultPayload];
  v26 = [v25 mutableCopy];

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

  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v19 * Seconds];
  [v26 setObject:v29 forKeyedSubscript:@"maxPlayTime"];

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:v21 * Seconds];
  [v26 setObject:v30 forKeyedSubscript:@"playTime"];

  v31 = [MEMORY[0x1E696AD98] numberWithBool:{(objc_msgSend(v3, "chromeItems") >> 15) & 1}];
  [v26 setObject:v31 forKeyedSubscript:@"spinnerVisible"];

  [objc_opt_class() sendMemoryEvent:@"com.apple.photos.CPAnalytics.memoryPlayed" model:v4 payload:v26];
  v32 = [v4 timeline];
  v33 = [v32 numberOfSegments];
  if (v33 >= 5)
  {
    v34 = v33;
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v42 = 0;
    if (v32)
    {
      [v32 timeRange];
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
    [v32 enumerateSegmentsInTimeRange:&v43 usingBlock:v40];
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
    v39 = [(PXStoryAnalyticsController *)self defaultPayload];
    [v38 sendMemoryEvent:v36 model:v4 payload:v39];

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
  v40 = [(PXStoryAnalyticsController *)self currentModel];
  v3 = [v40 readinessStatus];
  if (v3 == 3)
  {
    v5 = [(PXStoryAnalyticsController *)self initialBufferingDuration];

    if (!v5)
    {
      [(PXStoryAnalyticsController *)self setBufferingEventsCount:1];
      v6 = [(PXStoryAnalyticsController *)self viewModel];
      v7 = [v6 bufferingController];

      v8 = MEMORY[0x1E696AD98];
      [v7 lastNoncriticalBufferingDuration];
      v10 = v9;
      [v7 lastCriticalBufferingDuration];
      v12 = [v8 numberWithDouble:v10 + v11];
      [(PXStoryAnalyticsController *)self setInitialBufferingDuration:v12];

      v13 = [(PXStoryAnalyticsController *)self commonSpinnerRelatedPayload];
      v14 = [v13 mutableCopy];

      v15 = MEMORY[0x1E696AD98];
      [v7 lastNoncriticalBufferingDuration];
      v17 = [v15 numberWithDouble:v16 * 1000.0];
      [v14 setObject:v17 forKeyedSubscript:@"loadingDelay"];

      v18 = MEMORY[0x1E696AD98];
      [v7 lastCriticalBufferingDuration];
      v20 = [v18 numberWithDouble:v19 * 1000.0];
      [v14 setObject:v20 forKeyedSubscript:@"userVisibleSpinnerLoadingDelay"];

      v21 = [v7 totalBufferingTimeIntervalsPerReason];
      v22 = MEMORY[0x1E696AD98];
      v23 = [v21 objectForKeyedSubscript:&unk_1F190DD68];
      [v23 doubleValue];
      v25 = [v22 numberWithDouble:v24 * 1000.0];
      [v14 setObject:v25 forKeyedSubscript:@"spinnerReasonMusicFetching"];

      v26 = MEMORY[0x1E696AD98];
      v27 = [v21 objectForKeyedSubscript:&unk_1F190DD80];
      [v27 doubleValue];
      v29 = [v26 numberWithDouble:v28 * 1000.0];
      [v14 setObject:v29 forKeyedSubscript:@"spinnerReasonMusicBuffering"];

      v30 = MEMORY[0x1E696AD98];
      v31 = [v21 objectForKeyedSubscript:&unk_1F190DD98];
      [v31 doubleValue];
      v33 = [v30 numberWithDouble:v32 * 1000.0];
      [v14 setObject:v33 forKeyedSubscript:@"spinnerReasonAssetsPreloading"];

      v34 = MEMORY[0x1E696AD98];
      v35 = [v21 objectForKeyedSubscript:&unk_1F190DDB0];
      [v35 doubleValue];
      v37 = [v34 numberWithDouble:v36 * 1000.0];
      [v14 setObject:v37 forKeyedSubscript:@"spinnerReasonTimelineCreation"];

      v38 = objc_opt_class();
      v39 = [(PXStoryAnalyticsController *)self currentModel];
      [v38 sendMemoryEvent:@"com.apple.photos.memory.playbackLaunchPerformance" model:v39 payload:v14];
    }
  }

  else if (v3 == 1)
  {
    v4 = [(PXStoryAnalyticsController *)self initialBufferingDuration];

    if (v4)
    {
      [(PXStoryAnalyticsController *)self setBufferingEventsCount:[(PXStoryAnalyticsController *)self bufferingEventsCount]+ 1];
    }
  }
}

- (void)_incrementPlayCountForMemory:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6991F28];
  v7 = *MEMORY[0x1E6991E08];
  v8[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 sendEvent:@"com.apple.photos.CPAnalytics.incrementMemoryViewCount" withPayload:v6];
}

- (void)_collectAnalyticsForPlayStateChange
{
  v9 = [(PXStoryAnalyticsController *)self currentModel];
  v3 = [v9 desiredPlayState];
  if (v3)
  {
    if (v3 != 1)
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
  v7 = [(PXStoryAnalyticsController *)self defaultPayload];
  [v6 sendEvent:v5 withPayload:v7];

  if (!-[PXStoryAnalyticsController didPlayStory](self, "didPlayStory") && [v9 desiredPlayState] == 1)
  {
    v8 = [v9 currentAssetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXStoryAnalyticsController *)self _incrementPlayCountForMemory:v8];
    }

    [(PXStoryAnalyticsController *)self setDidPlayStory:1];
  }
}

- (NSDictionary)commonSpinnerRelatedPayload
{
  v3 = [(PXStoryAnalyticsController *)self defaultPayload];
  v4 = [v3 mutableCopy];

  v5 = [(PXStoryAnalyticsController *)self currentModel];
  v6 = [v5 currentSongResource];
  v7 = [v6 px_storyResourceSongAsset];
  [v7 pace];
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
  v4 = [(PXStoryAnalyticsController *)self sessionIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"interactiveMemorySessionIdentifier"];

  v5 = [(PXStoryAnalyticsController *)self currentModel];
  v6 = [v5 currentAssetCollection];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
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

- (void)setCurrentViewMode:(int64_t)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  currentViewMode = self->_currentViewMode;
  if (currentViewMode != a3)
  {
    currentViewModeSignpostID = self->_currentViewModeSignpostID;
    self->_currentViewMode = a3;
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
      v21 = [MEMORY[0x1E6991F28] startSignpost];
      v22 = MEMORY[0x1E6991F28];
      v23 = v8;
      v24 = *MEMORY[0x1E6991CD8];
      v25 = *v23;
      v26 = *v9;
      v31[0] = v25;
      v31[1] = v26;
      v32[0] = v20;
      v27 = [*(v10 + 3480) numberWithLongLong:v21];
      v32[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [v22 sendEvent:v24 withPayload:v28];
    }

    else
    {
      v21 = 0;
    }

    self->_currentViewModeSignpostID = v21;
    if ([(PXStoryAnalyticsController *)self currentViewMode]== 2)
    {
      v29 = objc_opt_class();
      v30 = [(PXStoryAnalyticsController *)self currentModel];
      [v29 sendMemoryEvent:@"com.apple.photos.CPAnalytics.memoryOpened" model:v30 payload:MEMORY[0x1E695E0F8]];
    }
  }
}

- (void)setCurrentModel:(id)a3
{
  v5 = a3;
  currentModel = self->_currentModel;
  if (currentModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)currentModel unregisterChangeObserver:self context:CurrentModelObservationContext];
    objc_storeStrong(&self->_currentModel, a3);
    [(PXStoryModel *)self->_currentModel registerChangeObserver:self context:CurrentModelObservationContext];
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
    [(PXStoryAnalyticsController *)self setDidPlayStory:0];
    [(PXStoryAnalyticsController *)self setBufferingEventsCount:0];
    [(PXStoryAnalyticsController *)self setInitialBufferingDuration:0];
    [(PXStoryAnalyticsController *)self setDidUserChangePlaybackTime:0];
    [(PXStoryAnalyticsController *)self _invalidateDidUserChangePlaybackTime];
    v5 = v7;
  }
}

- (void)setIsSessionActive:(BOOL)a3
{
  isSessionActive = self->_isSessionActive;
  if (isSessionActive != a3)
  {
    self->_isSessionActive = a3;
    [(PXStoryAnalyticsController *)self _invalidateCurrentViewMode];
    v5 = MEMORY[0x1E6991F28];
    v6 = self->_isSessionActive ? @"com.apple.photos.memory.interactiveMemorySessionBegan" : @"com.apple.photos.memory.interactiveMemorySessionEnded";
    v7 = [(PXStoryAnalyticsController *)self defaultPayload];
    [v5 sendEvent:v6 withPayload:v7];

    if (isSessionActive && !self->_isSessionActive)
    {

      [(PXStoryAnalyticsController *)self _collectAnalyticsAtPlaybackEnd];
    }
  }
}

- (PXStoryAnalyticsController)initWithViewModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryAnalyticsController;
  v6 = [(PXStoryAnalyticsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_237051];
    v8 = [(PXStoryViewModel *)v7->_viewModel identifier];
    sessionIdentifier = v7->_sessionIdentifier;
    v7->_sessionIdentifier = v8;

    [(PXStoryAnalyticsController *)v7 _invalidateCurrentModel];
  }

  return v7;
}

- (PXStoryAnalyticsController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryAnalyticsController.m" lineNumber:84 description:{@"%s is not available as initializer", "-[PXStoryAnalyticsController init]"}];

  abort();
}

+ (id)stringForAudioAssetCatalog:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E77494F8[a3];
  }
}

+ (id)stringForLaunchType:(id)a3 assetCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if ([(__CFString *)v5 isEqualToString:@"Unknown"])
  {
    if (([v6 assetCollectionType] - 1) >= 2)
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

+ (id)memoryPayloadFromStoryModel:(id)a3
{
  v4 = a3;
  v5 = [v4 currentAssetCollection];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E69788F8] analyticsPayloadForMemory:v5];
    [v6 addEntriesFromDictionary:v7];
  }

  v8 = *MEMORY[0x1E6991E00];
  v9 = [MEMORY[0x1E6991F28] systemPropertyForKey:*MEMORY[0x1E6991E00]];
  [v6 setObject:v9 forKeyedSubscript:v8];

  v10 = [v4 currentSongResource];
  v11 = [v10 px_storyResourceSongAsset];
  v12 = [a1 stringForAudioAssetCatalog:{objc_msgSend(v11, "catalog")}];
  [v6 setObject:v12 forKeyedSubscript:@"cpa_memory_songType"];

  v13 = [v4 configuration];
  v14 = [v13 launchType];
  v15 = [a1 stringForLaunchType:v14 assetCollection:v5];
  [v6 setObject:v15 forKeyedSubscript:@"cpa_memory_launchType"];

  if (([v4 timelineAttributes] & 2) != 0)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [v4 timeline];
    v18 = v17;
    if (v17)
    {
      [v17 timeRange];
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

  v20 = [v4 resourcesDataSourceManager];
  v21 = [v20 isDataSourceFinal];

  if (v21)
  {
    v22 = MEMORY[0x1E696AD98];
    v23 = [v4 resourcesDataSourceManager];
    v24 = [v23 dataSource];
    v25 = [v22 numberWithInteger:{objc_msgSend(v24, "numberOfDisplayAssetResources")}];
    [v6 setObject:v25 forKeyedSubscript:@"cpa_memory_assetCount"];
  }

  return v6;
}

+ (void)sendMemoryEvent:(id)a3 model:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 storyQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__PXStoryAnalyticsController_sendMemoryEvent_model_payload___block_invoke;
  v15[3] = &unk_1E774A768;
  v16 = v10;
  v17 = v9;
  v18 = v8;
  v19 = a1;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __60__PXStoryAnalyticsController_sendMemoryEvent_model_payload___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mutableCopy];
  v2 = [*(a1 + 56) memoryPayloadFromStoryModel:*(a1 + 40)];
  [v3 addEntriesFromDictionary:v2];

  [MEMORY[0x1E6991F28] sendEvent:*(a1 + 48) withPayload:v3];
}

+ (id)analyticsViewNameForViewMode:(int64_t)a3
{
  v3 = @"InteractiveMemoryBrowserGrid";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 4)
  {
    return @"InteractiveMemoryStyleSwitcher";
  }

  else
  {
    return v3;
  }
}

@end