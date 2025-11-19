@interface PXStoryResourcesPreloadingController
- (NSString)diagnosticDescription;
- (PXStoryModel)model;
- (PXStoryResourcesPreloadingController)initWithModel:(id)a3 mediaProvider:(id)a4;
- (PXStoryResourcesPreloadingController)initWithObservableModel:(id)a3;
- (void)_invalidateCanStartPreloading;
- (void)_invalidateCurrentPlaybackTimeOnPreloader;
- (void)_invalidateCurrentSegmentIdentifierOnPreloader;
- (void)_invalidatePreloadingRequest;
- (void)_invalidateReadinessStatus;
- (void)_updateCanStartPreloading;
- (void)_updateCurrentPlaybackTimeOnPreloader;
- (void)_updateCurrentSegmentIdentifierOnPreloader;
- (void)_updatePreloadingRequest;
- (void)_updateReadinessStatus;
- (void)configureUpdater:(id)a3;
- (void)dealloc;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCanStartPreloading:(BOOL)a3;
- (void)setError:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsCompleted:(BOOL)a3;
- (void)setIsPreloadingEnabled:(BOOL)a3;
- (void)setIsSongResourcesPreloadingEnabled:(BOOL)a3;
- (void)setShouldSkipInitialSegment:(BOOL)a3;
@end

@implementation PXStoryResourcesPreloadingController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PreloaderObservationContext == a5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PXStoryResourcesPreloadingController_observable_didChange_context___block_invoke;
    v6[3] = &unk_1E774C428;
    v6[4] = self;
    v6[5] = a4;
    [(PXStoryController *)self performChanges:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXStoryResourcesPreloadingController;
    [(PXStoryController *)&v5 observable:a3 didChange:a4 context:?];
  }
}

uint64_t __69__PXStoryResourcesPreloadingController_observable_didChange_context___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 7) != 0)
  {
    return [*(result + 32) _invalidateReadinessStatus];
  }

  return result;
}

- (void)handleModelChange:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryResourcesPreloadingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PXStoryResourcesPreloadingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E774C428;
  v5[4] = self;
  v5[5] = a3;
  [(PXStoryController *)self performChanges:v5];
}

void __58__PXStoryResourcesPreloadingController_handleModelChange___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 0x20000000) != 0)
  {
    [*(a1 + 32) _invalidateCanStartPreloading];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20000030) != 0)
  {
    [*(a1 + 32) _invalidatePreloadingRequest];
    [*(a1 + 32) _invalidateReadinessStatus];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0x400) != 0 && [*(a1 + 32) isSongResourcesPreloadingEnabled])
  {
    [*(a1 + 32) _invalidatePreloadingRequest];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [*(a1 + 32) _invalidateCurrentPlaybackTimeOnPreloader];
    v4 = *(a1 + 40);
  }

  if ((v4 & 0x20) != 0)
  {
    [*(a1 + 32) _invalidateCurrentSegmentIdentifierOnPreloader];
  }
}

- (void)_updateReadinessStatus
{
  v46 = *MEMORY[0x1E69E9840];
  [(PXStoryResourcesPreloader *)self->_preloader loadingFractionComplete];
  v4 = v3;
  v5 = [(PXStoryResourcesPreloadingController *)self model];
  v6 = [v5 options] & 1;

  v7 = v4 >= 1.0;
  if (v4 < 1.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  if (v4 < 1.0 && v6 == 0)
  {
    if (-[PXStoryResourcesPreloader isLoadingLikelyToKeepUpWithPlayback](self->_preloader, "isLoadingLikelyToKeepUpWithPlayback") && (-[PXStoryResourcesPreloader currentRequest](self->_preloader, "currentRequest"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 timelineAttributes], v10, (v11 & 2) != 0))
    {
      v7 = 0;
      v8 = 3;
    }

    else
    {
      v7 = 0;
      v8 = [(PXStoryResourcesPreloadingController *)self canStartPreloading];
    }
  }

  v12 = [(PXStoryResourcesPreloadingController *)self model];
  v13 = [v12 desiredPlayState];

  if (v13 == 1)
  {
    v14 = [(PXStoryResourcesPreloadingController *)self model];
    v15 = [v14 contentReadinessStatus];

    if (v15 != v8)
    {
      if (v8 == 1)
      {
        [(PXStoryResourcesPreloadingController *)self setBufferingEvents:[(PXStoryResourcesPreloadingController *)self bufferingEvents]+ 1];
        v16 = [(PXStoryResourcesPreloadingController *)self log];
        v17 = os_signpost_id_make_with_pointer(v16, self);
        if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = v17;
          if (os_signpost_enabled(v16))
          {
            *buf = 134217984;
            v41 = [(PXStoryResourcesPreloadingController *)self logContext];
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PXStoryResourcesPreloadingController.Buffering", "Context=%{signpost.telemetry:string2}lu ", buf, 0xCu);
          }
        }

LABEL_27:

        goto LABEL_28;
      }

      if (v8 == 3 && v15 == 1)
      {
        v16 = [(PXStoryResourcesPreloadingController *)self log];
        v20 = os_signpost_id_make_with_pointer(v16, self);
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v21 = v20;
          if (os_signpost_enabled(v16))
          {
            v22 = [(PXStoryResourcesPreloadingController *)self logContext];
            v23 = +[PXNetworkStatusMonitor sharedInstance];
            *buf = 134218496;
            v41 = v22;
            v42 = 2050;
            v43 = [v23 bestAvailableNetworkType];
            v44 = 2050;
            v45 = [(PXStoryResourcesPreloadingController *)self bufferingEvents];
            _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, v21, "PXStoryResourcesPreloadingController.Buffering", "Context=%{signpost.telemetry:string2}lu  enableTelemetry=YES networkType=%{signpost.telemetry:number1,public}lu bufferingEvents=%{signpost.telemetry:number2,public}lu", buf, 0x20u);
          }
        }

        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v24 = [(PXStoryResourcesPreloadingController *)self model];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __62__PXStoryResourcesPreloadingController__updateReadinessStatus__block_invoke;
  v39[3] = &__block_descriptor_40_e31_v16__0___PXStoryMutableModel__8l;
  v39[4] = v8;
  [v24 performChanges:v39];

  v25 = [(PXStoryResourcesPreloader *)self->_preloader error];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __62__PXStoryResourcesPreloadingController__updateReadinessStatus__block_invoke_2;
  v34 = &unk_1E774C3F8;
  v35 = self;
  v38 = v7;
  v26 = v25;
  v36 = v26;
  v37 = v4;
  [(PXStoryController *)self performChanges:&v31];
  v27 = [v26 domain];
  if (![v27 isEqualToString:@"PXStoryErrorDomain"])
  {
LABEL_31:

    goto LABEL_32;
  }

  v28 = [v26 code];

  if (v28 == 22)
  {
    v27 = [(PXStoryResourcesPreloadingController *)self model];
    [v27 reportNetworkRelatedPlaybackFailure];
    goto LABEL_31;
  }

LABEL_32:
  v29 = [(PXStoryResourcesPreloadingController *)self model];
  v30 = [v29 errorReporter];
  [v30 setError:v26 forComponent:@"Assets preloading"];
}

uint64_t __62__PXStoryResourcesPreloadingController__updateReadinessStatus__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsCompleted:*(a1 + 52)];
  [*(a1 + 32) setError:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setLoadingFractionComplete:v2];
}

- (void)_invalidateReadinessStatus
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateReadinessStatus];
}

- (void)_updateCurrentSegmentIdentifierOnPreloader
{
  preloader = self->_preloader;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__PXStoryResourcesPreloadingController__updateCurrentSegmentIdentifierOnPreloader__block_invoke;
  v3[3] = &unk_1E774C3B0;
  v3[4] = self;
  [(PXStoryResourcesPreloader *)preloader performChanges:v3];
}

void __82__PXStoryResourcesPreloadingController__updateCurrentSegmentIdentifierOnPreloader__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 model];
  [v3 setCurrentSegmentIdentifier:{objc_msgSend(v4, "currentSegmentIdentifier")}];
}

- (void)_invalidateCurrentSegmentIdentifierOnPreloader
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentSegmentIdentifierOnPreloader];
}

- (void)_updateCurrentPlaybackTimeOnPreloader
{
  preloader = self->_preloader;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__PXStoryResourcesPreloadingController__updateCurrentPlaybackTimeOnPreloader__block_invoke;
  v3[3] = &unk_1E774C3B0;
  v3[4] = self;
  [(PXStoryResourcesPreloader *)preloader performChanges:v3];
}

void __77__PXStoryResourcesPreloadingController__updateCurrentPlaybackTimeOnPreloader__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) model];
  v5 = v4;
  if (v4)
  {
    [v4 nominalPlaybackTime];
  }

  else
  {
    v8 = 0uLL;
    v9 = 0;
  }

  v6 = v8;
  v7 = v9;
  [v3 setCurrentPlaybackTime:&v6];
}

- (void)_invalidateCurrentPlaybackTimeOnPreloader
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentPlaybackTimeOnPreloader];
}

- (void)_updatePreloadingRequest
{
  if ([(PXStoryResourcesPreloadingController *)self canStartPreloading])
  {
    v3 = [(PXStoryResourcesPreloadingController *)self model];
    v4 = [v3 timeline];
    v5 = [(PXStoryResourcesPreloadingController *)self model];
    v6 = [v5 options];

    if (v6)
    {
      v10 = [PXStoryResourcesPreloadingRequest alloc];
      v11 = [v3 timelineAttributes];
      v12 = [v4 firstSegmentIdentifier];
      v13 = v10;
      v14 = v4;
      v15 = v11;
      v16 = 0;
      goto LABEL_12;
    }

    v7 = [(PXStoryResourcesPreloader *)self->_preloader currentRequest];
    v8 = [v7 timeline];
    v9 = v8;
    if (v8 == v4)
    {
      v17 = [v3 lastPlaybackTimeChangeSource];

      if (v17 != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v4 numberOfSegments] >= 1)
    {
      if ([v3 currentSegmentIdentifier])
      {
        v18 = [v3 currentSegmentIdentifier];
      }

      else
      {
        v18 = [v4 firstSegmentIdentifier];
      }

      v19 = v18;
      v20 = [PXStoryResourcesPreloadingRequest alloc];
      v21 = [v3 timelineAttributes];
      v16 = [(PXStoryResourcesPreloadingController *)self shouldSkipInitialSegment];
      v13 = v20;
      v14 = v4;
      v15 = v21;
      v12 = v19;
LABEL_12:
      v22 = [(PXStoryResourcesPreloadingRequest *)v13 initWithTimeline:v14 timelineAttributes:v15 startingSegmentIdentifier:v12 shouldIgnoreStartingSegmentIdentifier:v16];
      if (v22)
      {
        if ([(PXStoryResourcesPreloadingController *)self isSongResourcesPreloadingEnabled])
        {
          v23 = [v3 currentSongResource];
          [(PXStoryResourcesPreloadingRequest *)v22 setSongResource:v23];
        }

        preloader = self->_preloader;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __64__PXStoryResourcesPreloadingController__updatePreloadingRequest__block_invoke;
        v26[3] = &unk_1E774C3B0;
        v27 = v22;
        v25 = v22;
        [(PXStoryResourcesPreloader *)preloader performChanges:v26];
      }
    }

LABEL_16:
  }
}

- (void)_invalidatePreloadingRequest
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePreloadingRequest];
}

- (void)_updateCanStartPreloading
{
  if ([(PXStoryResourcesPreloadingController *)self isActive])
  {
    v3 = [(PXStoryResourcesPreloadingController *)self isPreloadingEnabled];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PXStoryResourcesPreloadingController *)self model];
  v5 = [v4 options];

  if (v3)
  {
    v6 = [(PXStoryResourcesPreloadingController *)self model];
    v7 = [v6 timelineAttributes];
    v8 = -3;
    if ((v5 & 1) == 0)
    {
      v8 = -2;
    }

    v3 = (v7 | v8) == -1;
  }

  [(PXStoryResourcesPreloadingController *)self setCanStartPreloading:v3];
}

- (void)_invalidateCanStartPreloading
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCanStartPreloading];
}

- (void)setIsPreloadingEnabled:(BOOL)a3
{
  if (self->_isPreloadingEnabled != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PXStoryResourcesPreloadingController_setIsPreloadingEnabled___block_invoke;
    v5[3] = &unk_1E774C388;
    v5[4] = self;
    v6 = a3;
    [(PXStoryController *)self performChanges:v5];
  }
}

- (void)setIsCompleted:(BOOL)a3
{
  if (self->_isCompleted != a3)
  {
    self->_isCompleted = a3;
    [(PXStoryResourcesPreloadingController *)self signalChange:1];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_error != v5)
  {
    v8 = v5;
    v7 = [(NSError *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_error, a3);
      [(PXStoryResourcesPreloadingController *)self signalChange:4];
      v6 = v8;
    }
  }
}

- (void)setCanStartPreloading:(BOOL)a3
{
  if (self->_canStartPreloading != a3)
  {
    self->_canStartPreloading = a3;
    [(PXStoryResourcesPreloadingController *)self _invalidatePreloadingRequest];
  }
}

- (void)setShouldSkipInitialSegment:(BOOL)a3
{
  if (self->_shouldSkipInitialSegment != a3)
  {
    self->_shouldSkipInitialSegment = a3;
    [(PXStoryResourcesPreloadingController *)self _invalidatePreloadingRequest];
  }
}

- (void)setIsSongResourcesPreloadingEnabled:(BOOL)a3
{
  if (self->_isSongResourcesPreloadingEnabled != a3)
  {
    self->_isSongResourcesPreloadingEnabled = a3;
    [(PXStoryResourcesPreloadingController *)self _invalidateCanStartPreloading];
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryResourcesPreloadingController *)self _invalidateCanStartPreloading];

    [(PXStoryResourcesPreloadingController *)self _invalidateReadinessStatus];
  }
}

- (NSString)diagnosticDescription
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryResourcesPreloadingController *)self model];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentAssetCollection];
    memset(v39, 0, sizeof(v39));
    v38 = 0u;
    v6 = [v4 timeline];
    v7 = v6;
    if (v6)
    {
      [v6 timeRange];
    }

    else
    {
      memset(v39, 0, sizeof(v39));
      v38 = 0u;
    }

    *&time.start.value = v38;
    time.start.epoch = *&v39[0];
    Seconds = CMTimeGetSeconds(&time.start);
    *&time.start.value = *(v39 + 8);
    time.start.epoch = *(&v39[1] + 1);
    v10 = CMTimeGetSeconds(&time.start);
    v31 = v4;
    v30 = objc_alloc_init(PXStoryDurationFormatter);
    if ([(PXStoryResourcesPreloadingController *)self isActive])
    {
      if ([(PXStoryResourcesPreloadingController *)self isCompleted])
      {
        v11 = @"Completed";
      }

      else if ([(PXStoryResourcesPreloadingController *)self isPreloadingEnabled])
      {
        if ([(PXStoryResourcesPreloadingController *)self canStartPreloading])
        {
          v11 = @"Preloading";
        }

        else
        {
          v11 = @"Waiting";
        }
      }

      else
      {
        v11 = @"Paused";
      }
    }

    else
    {
      v11 = @"Inactive";
    }

    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v13 = +[PXStorySettings sharedInstance];
    v14 = [v13 simulateSlowResourcesBuffering];

    if (v14)
    {
      [v12 appendString:@"Simulating slow assets buffering!!!\n"];
    }

    [v12 appendFormat:@"State: %@\n", v11];
    v15 = PXStoryDisplayAssetCollectionShortTitle(v5);
    v16 = [v5 uuid];
    [v12 appendFormat:@"Asset Collection: “%@”, UUID: %@\n", v15, v16];

    [v12 appendString:@"["];
    for (i = 0; i != 30; ++i)
    {
      memset(&v37, 0, sizeof(v37));
      CMTimeMakeWithSeconds(&v37, Seconds + v10 * i / 30.0, 600);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [(PXStoryResourcesPreloader *)self->_preloader loadedTimeRanges];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * j);
            if (v23)
            {
              [v23 storyTimeRange];
            }

            else
            {
              memset(&v32, 0, sizeof(v32));
            }

            v40 = v37;
            time = v32;
            if (CMTimeRangeContainsTime(&time, &v40))
            {
              v24 = @"*";
              goto LABEL_26;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = @".";
LABEL_26:

      [v12 appendString:v24];
    }

    v25 = [(PXStoryDurationFormatter *)v30 stringFromTimeInterval:v10];
    [v12 appendFormat:@"] %@\n", v25];

    v4 = v31;
    [v31 playbackFractionCompleted];
    v27 = [&stru_1F1741150 stringByPaddingToLength:(v26 * 30.0) withString:@" " startingAtIndex:0];
    [v12 appendFormat:@" %@^\n", v27];

    v28 = [(PXStoryResourcesPreloader *)self->_preloader diagnosticDescription];
    [v12 appendFormat:@"%@\n", v28];

    v8 = [v12 copy];
  }

  else
  {
    v8 = @"n/a";
  }

  return v8;
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryResourcesPreloadingController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateCurrentPlaybackTimeOnPreloader, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateCurrentSegmentIdentifierOnPreloader];
  [v3 addUpdateSelector:sel__updateCanStartPreloading];
  [v3 addUpdateSelector:sel__updatePreloadingRequest];
  [v3 addUpdateSelector:sel__updateReadinessStatus];
}

- (void)dealloc
{
  v3 = self->_preloader;
  v4 = [(PXStoryController *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXStoryResourcesPreloadingController_dealloc__block_invoke;
  block[3] = &unk_1E774C648;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6.receiver = self;
  v6.super_class = PXStoryResourcesPreloadingController;
  [(PXStoryResourcesPreloadingController *)&v6 dealloc];
}

- (PXStoryResourcesPreloadingController)initWithModel:(id)a3 mediaProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PXStoryResourcesPreloadingController;
  v8 = [(PXStoryController *)&v26 initWithObservableModel:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_model, v6);
    v10 = [v6 extendedTraitCollection];
    [v10 displayScale];
    v12 = v11;

    v13 = [v6 isExporting];
    v14 = [v6 isInline];
    v15 = [PXStoryResourcesPreloader alloc];
    v16 = [v6 videoSessionManager];
    v17 = [v6 loadingStatusReporter];
    v18 = [(PXStoryController *)v9 storyQueue];
    LOBYTE(v23) = [v6 shouldLimitVideoDownloadQuality];
    v19 = [(PXStoryResourcesPreloader *)v15 initWithMediaProvider:v7 displayScale:v16 videoSessionManager:v17 loadingStatusReporter:v18 storyQueue:v13 isExporting:v14 isInline:v12 limitVideoDownloadQuality:v23];
    preloader = v9->_preloader;
    v9->_preloader = v19;

    v21 = [(PXStoryResourcesPreloadingController *)v9 log];
    [(PXStoryResourcesPreloader *)v9->_preloader setLog:v21];

    [(PXStoryResourcesPreloader *)v9->_preloader setLogContext:[(PXStoryResourcesPreloadingController *)v9 logContext]];
    [(PXStoryResourcesPreloader *)v9->_preloader registerChangeObserver:v9 context:PreloaderObservationContext];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __68__PXStoryResourcesPreloadingController_initWithModel_mediaProvider___block_invoke;
    v24[3] = &unk_1E774C340;
    v25 = v9;
    [(PXStoryController *)v25 performChanges:v24];
  }

  return v9;
}

uint64_t __68__PXStoryResourcesPreloadingController_initWithModel_mediaProvider___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateCurrentPlaybackTimeOnPreloader];
  v2 = *(a1 + 32);

  return [v2 _invalidateCurrentSegmentIdentifierOnPreloader];
}

- (PXStoryResourcesPreloadingController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesPreloadingController.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXStoryResourcesPreloadingController initWithObservableModel:]"}];

  abort();
}

@end