@interface SVPlaybackCoordinator
- (BOOL)supportImpressionTracking;
- (BOOL)supportsQuartileTracking;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (NSArray)loadedTimeRanges;
- (SVPlaybackCoordinator)initWithVideo:(id)a3 playerFactory:(id)a4;
- (SVVideoPlaybackHost)host;
- (double)duration;
- (double)framerate;
- (double)loadingProgress;
- (double)time;
- (double)timePlayed;
- (double)volume;
- (void)addMuteStateObserver;
- (void)addPlaybackBufferObserver;
- (void)addPlaybackLikelyToKeepUpObserver;
- (void)addPlaybackObserver:(id)a3;
- (void)addPlayerItemPresentationSizeObserver;
- (void)configureTimeline;
- (void)finishedLoadingVideoURL:(id)a3;
- (void)loadVideoIfNeeded;
- (void)loadedTimeRangesChanged;
- (void)muteStateChanged;
- (void)pause;
- (void)playbackBufferFullStateChanged;
- (void)playbackFailedWithError:(id)a3;
- (void)playbackFinished;
- (void)playbackLikelyToKeepUpStateChanged;
- (void)playbackPaused;
- (void)playbackReadyToStart;
- (void)playbackResumed;
- (void)playbackResumedAtTime:(double)a3;
- (void)playbackStarted;
- (void)removePlaybackObserver:(id)a3;
- (void)seekToTime:(double)a3 withCompletionBlock:(id)a4;
- (void)setHost:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)setupPlayerWithURL:(id)a3;
- (void)startedLoadingVideo;
- (void)stateChanged;
- (void)timeElapsed:(double)a3 duration:(double)a4;
@end

@implementation SVPlaybackCoordinator

- (SVPlaybackCoordinator)initWithVideo:(id)a3 playerFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SVPlaybackCoordinator;
  v9 = [(SVPlaybackCoordinator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_video, a3);
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v11;

    objc_storeStrong(&v10->_playerFactory, a4);
    v13 = objc_alloc_init(SVTimeline);
    timeline = v10->_timeline;
    v10->_timeline = v13;
  }

  return v10;
}

- (void)pause
{
  v2 = [(SVPlaybackCoordinator *)self player];
  [v2 pause];
}

- (void)addPlaybackObserver:(id)a3
{
  v4 = a3;
  v5 = [(SVPlaybackCoordinator *)self observers];
  [v5 addObject:v4];
}

- (void)removePlaybackObserver:(id)a3
{
  v4 = a3;
  v5 = [(SVPlaybackCoordinator *)self observers];
  [v5 removeObject:v4];
}

- (void)setHost:(id)a3
{
  v8 = a3;
  v4 = objc_storeWeak(&self->_host, v8);
  v5 = [(SVPlaybackCoordinator *)self player];
  [v8 setPlayer:v5];

  v6 = [(SVPlaybackCoordinator *)self player];
  v7 = [v6 currentItem];
  [v7 setPreferredForwardBufferDuration:0.0];
}

- (void)seekToTime:(double)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke;
  v16[3] = &unk_279BC5E00;
  v7 = v6;
  v17 = v7;
  v8 = MEMORY[0x2667795A0](v16);
  [(SVPlaybackCoordinator *)self pause];
  [(SVPlaybackCoordinator *)self duration];
  [(SVPlaybackCoordinator *)self timeElapsed:a3 duration:v9];
  if (a3 >= 0.0)
  {
    v10 = a3;
  }

  else
  {
    v10 = -a3;
  }

  v11 = [(SVPlaybackCoordinator *)self player];
  v12 = v11;
  if (v10 >= 0.00000011920929)
  {
    CMTimeMake(&v15, a3, 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke_2;
    v13[3] = &unk_279BC5E28;
    v14 = v8;
    [v12 seekToTime:&v15 completionHandler:v13];

    v12 = v14;
  }

  else
  {
    [v11 seekToStartWithCompletionBlock:v8];
  }
}

uint64_t __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __56__SVPlaybackCoordinator_seekToTime_withCompletionBlock___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (double)framerate
{
  v2 = [(SVPlaybackCoordinator *)self player];
  [v2 frameRate];
  v4 = v3;

  return v4;
}

- (double)duration
{
  v2 = [(SVPlaybackCoordinator *)self player];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)time
{
  v2 = [(SVPlaybackCoordinator *)self player];
  [v2 elapsedTime];
  v4 = v3;

  return v4;
}

- (double)timePlayed
{
  v2 = [(SVPlaybackCoordinator *)self player];
  [v2 totalTimePlayed];
  v4 = v3;

  return v4;
}

- (NSArray)loadedTimeRanges
{
  v2 = [(SVPlaybackCoordinator *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 loadedTimeRanges];

  return v4;
}

- (double)volume
{
  v2 = [MEMORY[0x277CB83F8] sharedInstance];
  [v2 outputVolume];
  v4 = v3;

  return v4;
}

- (double)loadingProgress
{
  v3 = [(SVPlaybackCoordinator *)self loadedTimeRanges];
  v4 = v3;
  if (v3)
  {
    memset(&v13, 0, sizeof(v13));
    v5 = [v3 firstObject];
    v6 = v5;
    if (v5)
    {
      [v5 CMTimeRangeValue];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    v11 = v13;
    CMTimeRangeGetEnd(&time, &v11);
    Seconds = CMTimeGetSeconds(&time);
    [(SVPlaybackCoordinator *)self duration];
    v7 = Seconds / v9;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (CGSize)naturalSize
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(SVPlaybackCoordinator *)self player];
  v5 = [v4 currentItem];
  v6 = [v5 tracks];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) assetTrack];
        if ([v11 statusOfValueForKey:@"naturalSize" error:0] == 2)
        {
          [v11 naturalSize];
          if (v13 != v2 || v12 != v3)
          {
            [v11 naturalSize];
            v2 = v15;
            v3 = v16;

            goto LABEL_14;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  v18 = v2;
  v19 = v3;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)loadVideoIfNeeded
{
  v3 = [(SVPlaybackCoordinator *)self player];
  if (v3)
  {
  }

  else
  {
    v4 = [(SVPlaybackCoordinator *)self cancelHandler];

    if (!v4)
    {
      [(SVPlaybackCoordinator *)self startedLoadingVideo];
      objc_initWeak(&location, self);
      v5 = [(SVPlaybackCoordinator *)self video];
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __42__SVPlaybackCoordinator_loadVideoIfNeeded__block_invoke;
      v10 = &unk_279BC5E50;
      objc_copyWeak(&v11, &location);
      v6 = [v5 loadWithCompletionBlock:&v7];
      [(SVPlaybackCoordinator *)self setCancelHandler:v6, v7, v8, v9, v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

id __42__SVPlaybackCoordinator_loadVideoIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained setupPlayerWithURL:v3];
    [v5 setCancelHandler:0];
    [v5 finishedLoadingVideoURL:v3];
    [v5 setVideoURL:v3];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] videoErrorWithErrorCode:2];
    [v5 playbackFailedWithError:v6];
  }

  return v5;
}

- (void)setupPlayerWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SVPlaybackCoordinator *)self playerFactory];
  v6 = [v5 createPlayerWithURL:v4];
  [(SVPlaybackCoordinator *)self setPlayer:v6];

  v7 = [(SVPlaybackCoordinator *)self player];
  [v7 setMuted:{-[SVPlaybackCoordinator muted](self, "muted")}];

  [(SVPlaybackCoordinator *)self addPlayerItemPresentationSizeObserver];
  [(SVPlaybackCoordinator *)self addMuteStateObserver];
  [(SVPlaybackCoordinator *)self addPlaybackBufferObserver];
  [(SVPlaybackCoordinator *)self addPlaybackLikelyToKeepUpObserver];
  v8 = [(SVPlaybackCoordinator *)self video];
  LODWORD(v6) = [v8 conformsToProtocol:&unk_2877E0EB8];

  if (v6)
  {
    v9 = [(SVPlaybackCoordinator *)self video];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277CBEBB8];
    [v9 prerollReadyToPlayTimeout];
    v12 = v11;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke;
    v25[3] = &unk_279BC5E78;
    objc_copyWeak(&v26, &location);
    v13 = [v10 scheduledTimerWithTimeInterval:0 repeats:v25 block:v12];
    [(SVPlaybackCoordinator *)self setReadyToPlayTimer:v13];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  v14 = [(SVPlaybackCoordinator *)self player];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_2;
  v23[3] = &unk_279BC5EA0;
  objc_copyWeak(&v24, &location);
  [v14 setPlaybackStatusBlock:v23];

  v15 = [(SVPlaybackCoordinator *)self player];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_3;
  v21[3] = &unk_279BC5EC8;
  objc_copyWeak(&v22, &location);
  [v15 setPlaybackProgressBlock:v21];

  v16 = [(SVPlaybackCoordinator *)self player];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_4;
  v19[3] = &unk_279BC5EF0;
  objc_copyWeak(&v20, &location);
  [v16 setLoadingProgressBlock:v19];

  v17 = [(SVPlaybackCoordinator *)self host];
  v18 = [(SVPlaybackCoordinator *)self player];
  [v17 setPlayer:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] videoErrorWithErrorCode:5];
  [WeakRetained playbackFailedWithError:v1];
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v11 = [WeakRetained readyToPlayTimer];
      v12 = [v11 isValid];

      if (v12)
      {
        v13 = [v6 readyToPlayTimer];
        [v13 invalidate];
      }

      [v6 playbackReadyToStart];
    }

    else if (a3 == 2)
    {
      if ([v14 playbackPosition])
      {
        [v6 playbackResumed];
      }

      else
      {
        [v6 playbackStarted];
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        [WeakRetained playbackPaused];
        break;
      case 4:
        [WeakRetained playbackFinished];
        break;
      case 5:
        v7 = MEMORY[0x277CCA9B8];
        v8 = [v14 currentItem];
        v9 = [v8 error];
        v10 = [v7 videoErrorWithUnderlyingError:v9];

        [v6 playbackFailedWithError:v10];
        break;
    }
  }
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_3(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained timeElapsed:a2 duration:a3];
}

void __44__SVPlaybackCoordinator_setupPlayerWithURL___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadedTimeRangesChanged];
}

- (void)startedLoadingVideo
{
  v19 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self setState:1];
  v3 = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SVPlaybackCoordinator *)self video];
    [v5 startedLoadingVideo];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SVPlaybackCoordinator *)self observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorStartedLoadingVideo:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finishedLoadingVideoURL:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SVPlaybackCoordinator *)self video];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SVPlaybackCoordinator *)self video];
    [v7 finishedLoadingVideoWithURL:v4];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SVPlaybackCoordinator *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 playbackCoordinatorFinishedLoadingVideoURL:self];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)playbackReadyToStart
{
  [(SVPlaybackCoordinator *)self setState:2];
  v3 = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SVPlaybackCoordinator *)self video];
    [v5 playbackReadyToStart];
  }
}

- (void)playbackStarted
{
  v19 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self configureTimeline];
  [(SVPlaybackCoordinator *)self setState:3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorStartedPlayback:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(SVPlaybackCoordinator *)self video];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SVPlaybackCoordinator *)self video];
    [v12 playbackStarted];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)playbackPaused
{
  v19 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self time];
  [(SVPlaybackCoordinator *)self playbackPausedAtTime:?];
  [(SVPlaybackCoordinator *)self setState:4];
  v3 = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SVPlaybackCoordinator *)self video];
    [v5 playbackPaused];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SVPlaybackCoordinator *)self observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorPausedPlayback:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)playbackResumed
{
  v19 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self time];
  [(SVPlaybackCoordinator *)self playbackResumedAtTime:?];
  [(SVPlaybackCoordinator *)self setState:3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorResumedPlayback:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(SVPlaybackCoordinator *)self video];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SVPlaybackCoordinator *)self video];
    [v12 playbackResumed];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)playbackFinished
{
  v19 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self setState:4];
  v3 = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SVPlaybackCoordinator *)self video];
    [v5 playbackFinished];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SVPlaybackCoordinator *)self observers];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 playbackCoordinatorFinishedPlayback:self];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)playbackFailedWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SVPlaybackCoordinator *)self setState:5];
  [(SVPlaybackCoordinator *)self setError:v4];
  v5 = [(SVPlaybackCoordinator *)self video];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SVPlaybackCoordinator *)self video];
    [v7 playbackFailedWithError:v4];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(SVPlaybackCoordinator *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 playbackCoordinator:self playbackFailedWithError:v4];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)timeElapsed:(double)a3 duration:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)v7 setTime:a3];

  v8 = [(SVPlaybackCoordinator *)self video];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SVPlaybackCoordinator *)self video];
    [v10 timeElapsed:a3 duration:a4];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(SVPlaybackCoordinator *)self observers];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 playbackCoordinator:self timeElapsed:a3 duration:a4];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)loadedTimeRangesChanged
{
  v18 = *MEMORY[0x277D85DE8];
  [(SVPlaybackCoordinator *)self loadingProgress];
  if (v3 != 0.0)
  {
    v4 = v3;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(SVPlaybackCoordinator *)self observers];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 playbackCoordinator:self loadingProgressed:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stateChanged
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPlaybackBufferObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  v4 = [(SVPlaybackCoordinator *)self player];
  v5 = [v4 currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__SVPlaybackCoordinator_addPlaybackBufferObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"playbackBufferFull" ofObject:v5 withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlaybackBufferFullObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__SVPlaybackCoordinator_addPlaybackBufferObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 currentItem];
  WeakRetained[9] = [v2 isPlaybackBufferFull];

  [WeakRetained playbackBufferFullStateChanged];
}

- (void)playbackBufferFullStateChanged
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorPlaybackBufferFullStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPlaybackLikelyToKeepUpObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  v4 = [(SVPlaybackCoordinator *)self player];
  v5 = [v4 currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__SVPlaybackCoordinator_addPlaybackLikelyToKeepUpObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"playbackLikelyToKeepUp" ofObject:v5 withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlaybackLikelyToKeepUpObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __58__SVPlaybackCoordinator_addPlaybackLikelyToKeepUpObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  v2 = [v1 currentItem];
  WeakRetained[8] = [v2 isPlaybackLikelyToKeepUp];

  [WeakRetained playbackLikelyToKeepUpStateChanged];
}

- (void)playbackLikelyToKeepUpStateChanged
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorPlaybackLikelyToKeepUpStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addMuteStateObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  v4 = [(SVPlaybackCoordinator *)self player];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __45__SVPlaybackCoordinator_addMuteStateObserver__block_invoke;
  v9 = &unk_279BC5D60;
  objc_copyWeak(&v10, &location);
  v5 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"muted" ofObject:v4 withOptions:1 change:&v6];
  [(SVPlaybackCoordinator *)self setMuteStateObserver:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__SVPlaybackCoordinator_addMuteStateObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained player];
  WeakRetained[10] = [v1 isMuted];

  [WeakRetained muteStateChanged];
}

- (void)muteStateChanged
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SVPlaybackCoordinator *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 playbackCoordinatorMuteStateChanged:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPlayerItemPresentationSizeObserver
{
  objc_initWeak(&location, self);
  v3 = [SVKeyValueObserver alloc];
  v4 = [(SVPlaybackCoordinator *)self player];
  v5 = [v4 currentItem];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __62__SVPlaybackCoordinator_addPlayerItemPresentationSizeObserver__block_invoke;
  v10 = &unk_279BC5D60;
  objc_copyWeak(&v11, &location);
  v6 = [(SVKeyValueObserver *)v3 initWithKeyPath:@"presentationSize" ofObject:v5 withOptions:1 change:&v7];
  [(SVPlaybackCoordinator *)self setPlayerItemPresentationSizeObserver:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__SVPlaybackCoordinator_addPlayerItemPresentationSizeObserver__block_invoke(uint64_t a1)
{
  v3 = objc_loadWeakRetained((a1 + 32));
  v1 = [v3 player];
  v2 = [v1 currentItem];
  [v2 presentationSize];
  [v3 setDimensions:?];
}

- (void)configureTimeline
{
  v3 = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)v3 cancelScheduledBlocks];

  v4 = [(SVPlaybackCoordinator *)self timeline];
  [(SVTimeline *)v4 resetTime];

  v5 = [(SVPlaybackCoordinator *)self timeline];
  [(SVPlaybackCoordinator *)self duration];
  [(SVTimeline *)v5 setDuration:v6];

  if ([(SVPlaybackCoordinator *)self supportImpressionTracking])
  {
    objc_initWeak(&location, self);
    v7 = [(SVPlaybackCoordinator *)self timeline];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke;
    v35[3] = &unk_279BC5F18;
    objc_copyWeak(&v36, &location);
    v8 = [(SVPlaybackCoordinator *)self video];
    [v8 impressionThreshold];
    v10 = [(SVTimeline *)v7 performBlock:v35 at:v9];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  if ([(SVPlaybackCoordinator *)self supportsQuartileTracking])
  {
    [(SVPlaybackCoordinator *)self duration];
    v12 = v11;
    [(SVPlaybackCoordinator *)self duration];
    v14 = v13;
    [(SVPlaybackCoordinator *)self duration];
    v16 = v15;
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_2;
    v33[3] = &unk_279BC5F40;
    objc_copyWeak(&v34, &location);
    v17 = MEMORY[0x2667795A0](v33);
    v18 = [(SVPlaybackCoordinator *)self timeline];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_3;
    v31[3] = &unk_279BC5E00;
    v19 = v17;
    v32 = v19;
    v20 = [(SVTimeline *)v18 performBlock:v31 at:v12 * 0.25];

    v21 = [(SVPlaybackCoordinator *)self timeline];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_4;
    v29[3] = &unk_279BC5E00;
    v22 = v19;
    v30 = v22;
    v23 = [(SVTimeline *)v21 performBlock:v29 at:v14 * 0.5];

    v24 = [(SVPlaybackCoordinator *)self timeline];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __42__SVPlaybackCoordinator_configureTimeline__block_invoke_5;
    v27[3] = &unk_279BC5E00;
    v25 = v22;
    v28 = v25;
    v26 = [(SVTimeline *)v24 performBlock:v27 at:v16 * 0.75];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

void __42__SVPlaybackCoordinator_configureTimeline__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained video];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained video];
    [v3 playbackPassedImpressionThreshold];
  }
}

void __42__SVPlaybackCoordinator_configureTimeline__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained video];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [WeakRetained video];
    [v5 playbackPassedQuartile:a2];
  }
}

- (void)playbackResumedAtTime:(double)a3
{
  [(SVPlaybackCoordinator *)self pausedAtTime];
  v5 = v4;
  [(SVPlaybackCoordinator *)self time];
  v7 = v5 - v6;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  if (v7 > 0.5)
  {
    v8 = [(SVPlaybackCoordinator *)self timeline];
    [(SVTimeline *)v8 cancelScheduledBlocks];
  }

  [(SVPlaybackCoordinator *)self setPausedAtTime:0.0];
}

- (BOOL)supportImpressionTracking
{
  v3 = [(SVPlaybackCoordinator *)self video];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SVPlaybackCoordinator *)self video];
  [v5 impressionThreshold];
  v7 = v6 > 0.0;

  return v7;
}

- (BOOL)supportsQuartileTracking
{
  [(SVPlaybackCoordinator *)self duration];
  [(SVPlaybackCoordinator *)self duration];
  return v3 > 0.0;
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(SVPlaybackCoordinator *)self stateChanged];
  }
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SVVideoPlaybackHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end