@interface ISWrappedAVPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)itemForwardPlaybackEndTime;
- ($542DF6A934A12223D4D27E794AA667E2)loopTimeRange;
- (BOOL)currentItemHasEnabledAudio;
- (BOOL)currentItemIsLikelyToKeepUp;
- (BOOL)currentItemPlaybackBufferEmpty;
- (BOOL)currentItemPlaybackBufferFull;
- (BOOL)isAudioEnabled;
- (BOOL)isLoopingEnabled;
- (BOOL)preventsSleepDuringVideoPlayback;
- (BOOL)suppressesAudioRendering;
- (ISWrappedAVPlayer)init;
- (ISWrappedAVPlayerDelegate)delegate;
- (float)rate;
- (float)volume;
- (id)_initWithAVPlayer:(id)a3;
- (id)_nilOrValue:(id)a3;
- (id)addBoundaryTimeObserverForTimes:(id)a3 queue:(id)a4 usingBlock:(id)a5;
- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5;
- (id)currentItem;
- (id)currentItemError;
- (id)currentItemVideoComposition;
- (id)error;
- (int64_t)currentItemStatus;
- (int64_t)status;
- (void)_avPlayerQueue_registerChangeObserver:(id)a3 context:(void *)a4;
- (void)_avPlayerQueue_unregisterChangeObserver:(id)a3 context:(void *)a4;
- (void)_performIvarRead:(id)a3;
- (void)_performIvarWrite:(id)a3;
- (void)_performPlayerTransaction:(id)a3;
- (void)_playerItemDidPlayToEnd:(id)a3;
- (void)_playerQueue_startObservingPlayerItem:(id)a3;
- (void)_playerQueue_stopObservingPlayerItem:(id)a3;
- (void)_playerQueue_updatePlayerItemAudioTracksEnabled;
- (void)attachToPlayerLayerIfNeeded:(id)a3;
- (void)becomeReusable;
- (void)dealloc;
- (void)observeChangeforKVOProxyIdentifier:(id)a3 keyPath:(id)a4 change:(id)a5;
- (void)photosOnly_waitForPlayerTransactionsToFinish;
- (void)playToTime:(id *)a3 withInitialRate:(float)a4 overDuration:(double)a5 progressHandler:(id)a6;
- (void)prerollAtRate:(float)a3 completionHandler:(id)a4;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)removeTimeObserver:(id)a3;
- (void)replaceCurrentItemWithPlayerItem:(id)a3 thenCall:(id)a4;
- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6;
- (void)setActionAtItemEnd:(int64_t)a3;
- (void)setAllowsExternalPlayback:(BOOL)a3;
- (void)setIsAudioEnabled:(BOOL)a3;
- (void)setItemBlendsVideoFrames:(BOOL)a3;
- (void)setItemForwardEndPlaybackTime:(id *)a3;
- (void)setLoopTimeRange:(id *)a3;
- (void)setLoopingEnabled:(BOOL)a3;
- (void)setPreventsSleepDuringVideoPlayback:(BOOL)a3;
- (void)setRate:(float)a3;
- (void)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5;
- (void)setSuppressesAudioRendering:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)setWrappedAudioSession:(id)a3;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
@end

@implementation ISWrappedAVPlayer

- (ISWrappedAVPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)becomeReusable
{
  [(ISWrappedAVPlayer *)self replaceCurrentItemWithPlayerItem:0];
  [(ISWrappedAVPlayer *)self setIsAudioEnabled:1];
  v3 = *(MEMORY[0x277CC08C8] + 16);
  v4[0] = *MEMORY[0x277CC08C8];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CC08C8] + 32);
  [(ISWrappedAVPlayer *)self setLoopTimeRange:v4];
}

- (void)setWrappedAudioSession:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ISWrappedAVPlayer_setWrappedAudioSession___block_invoke;
  v6[3] = &unk_279A2A240;
  v7 = v4;
  v5 = v4;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v6];
}

void __44__ISWrappedAVPlayer_setWrappedAudioSession___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 15, *(a1 + 32));
  v4 = a2;
  v6 = [v4 _playerQueue_avPlayer];

  v5 = [*(a1 + 32) audioSession];
  [v6 setAudioSession:v5];
}

void __42__ISWrappedAVPlayer_cancelPendingPrerolls__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 _playerQueue_avPlayer];
    [v2 cancelPendingPrerolls];
  }
}

- (void)prerollAtRate:(float)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ISWrappedAVPlayer_prerollAtRate_completionHandler___block_invoke;
  v8[3] = &unk_279A2A690;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v8];
}

void __53__ISWrappedAVPlayer_prerollAtRate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _playerQueue_avPlayer];
  LODWORD(v3) = *(a1 + 40);
  [v4 prerollAtRate:*(a1 + 32) completionHandler:v3];
}

- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__ISWrappedAVPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke;
  v12[3] = &unk_279A2A668;
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v13 = v10;
  v11 = v10;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v12];
}

void __81__ISWrappedAVPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__ISWrappedAVPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke_2;
  v10[3] = &unk_279A2A640;
  v11 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  [v3 seekToTime:&v8 toleranceBefore:&v6 toleranceAfter:&v4 completionHandler:v10];
}

void __81__ISWrappedAVPlayer_seekToTime_toleranceBefore_toleranceAfter_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = ISGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_25E667000, v5, OS_LOG_TYPE_ERROR, "No completion handler was provided while seeking in AVPlayer.", v6, 2u);
    }
  }
}

- (void)replaceCurrentItemWithPlayerItem:(id)a3 thenCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ISWrappedAVPlayer_replaceCurrentItemWithPlayerItem_thenCall___block_invoke;
  v10[3] = &unk_279A2A618;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v10];
}

void __63__ISWrappedAVPlayer_replaceCurrentItemWithPlayerItem_thenCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(dispatch_queue_t *)v3 _playerQueue_avPlayer];
  v5 = [v4 currentItem];

  v6 = *(a1 + 32);
  if (v5 != v6)
  {
    [v6 setAllowedAudioSpatializationFormats:4];
    v7 = [[ISWrappedMemoriesAppleMusicPlayer alloc] initWithPlayerItem:*(a1 + 32) queue:*(*(a1 + 40) + 88)];
    v8 = *(a1 + 40);
    v9 = *(v8 + 344);
    *(v8 + 344) = v7;

    if ([(dispatch_queue_t *)v3 isLoopingEnabled])
    {
      if (v3)
      {
        [(dispatch_queue_t *)v3 loopTimeRange];
        if (BYTE12(v22))
        {
          [(dispatch_queue_t *)v3 loopTimeRange];
          if (v21)
          {
            [(dispatch_queue_t *)v3 loopTimeRange];
            if (!v20)
            {
              [(dispatch_queue_t *)v3 loopTimeRange];
              if ((v19 & 0x8000000000000000) == 0)
              {
                [(dispatch_queue_t *)v3 loopTimeRange];
                v10 = *(a1 + 32);
                duration[0] = duration[1];
                [v10 setLoopTimeRange:duration];
                goto LABEL_14;
              }
            }
          }
        }
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
      }

      v11 = [*(a1 + 32) asset];
      v12 = v11;
      if (v11)
      {
        [v11 duration];
      }

      else
      {
        memset(duration, 0, 24);
      }

      v16 = **&MEMORY[0x277CC08F0];
      CMTimeRangeMake(&v17, &v16, &duration[0].start);
      v13 = *(a1 + 32);
      duration[0] = v17;
      [v13 setLoopTimeRange:duration];
    }

LABEL_14:
    [(dispatch_queue_t *)v3 _playerQueue_stopObservingPlayerItem:v5];
    v14 = [(dispatch_queue_t *)v3 _playerQueue_avPlayer];
    [v14 replaceCurrentItemWithPlayerItem:*(a1 + 32)];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    dispatch_async(v3[13], v15);
  }
}

void __26__ISWrappedAVPlayer_pause__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _playerQueue_avPlayer];
  [v2 pause];
}

- (void)setRate:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__ISWrappedAVPlayer_setRate___block_invoke;
  v3[3] = &__block_descriptor_36_e27_v16__0__ISWrappedAVPlayer_8l;
  v4 = a3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __29__ISWrappedAVPlayer_setRate___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _playerQueue_avPlayer];
  LODWORD(v3) = *(a1 + 32);
  [v4 setRate:v3];
}

- (void)setVolume:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__ISWrappedAVPlayer_setVolume___block_invoke;
  v3[3] = &__block_descriptor_36_e27_v16__0__ISWrappedAVPlayer_8l;
  v4 = a3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __31__ISWrappedAVPlayer_setVolume___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _playerQueue_avPlayer];
  LODWORD(v3) = *(a1 + 32);
  [v4 setVolume:v3];
}

- (void)setAllowsExternalPlayback:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ISWrappedAVPlayer_setAllowsExternalPlayback___block_invoke;
  v3[3] = &__block_descriptor_33_e27_v16__0__ISWrappedAVPlayer_8l;
  v4 = a3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __47__ISWrappedAVPlayer_setAllowsExternalPlayback___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  [v3 setAllowsExternalPlayback:*(a1 + 32)];
}

- (void)setActionAtItemEnd:(int64_t)a3
{
  if (a3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __40__ISWrappedAVPlayer_setActionAtItemEnd___block_invoke;
    v4[3] = &__block_descriptor_40_e27_v16__0__ISWrappedAVPlayer_8l;
    v4[4] = a3;
    [(ISWrappedAVPlayer *)self _performPlayerTransaction:v4];
  }

  else
  {
    v3 = ISGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_25E667000, v3, OS_LOG_TYPE_ERROR, "[ISWrappedAVPlayer setActionAtItemEnd:] ignoring AVPlayerActionAtItemEndAdvance argument because the underlying player is not an AVQueuePlayer. This should not be necessary if you are setting loopingEnabled or loopTimeRange.", buf, 2u);
    }
  }
}

void __40__ISWrappedAVPlayer_setActionAtItemEnd___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  [v3 setActionAtItemEnd:*(a1 + 32)];
}

- (void)playToTime:(id *)a3 withInitialRate:(float)a4 overDuration:(double)a5 progressHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ISWrappedAVPlayer_playToTime_withInitialRate_overDuration_progressHandler___block_invoke;
  v12[3] = &unk_279A2A590;
  v15 = *a3;
  v16 = a4;
  v14 = a5;
  v13 = v10;
  v11 = v10;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v12];
}

void __77__ISWrappedAVPlayer_playToTime_withInitialRate_overDuration_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  LODWORD(v4) = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  [v3 playToTime:&v7 withInitialRate:v6 overDuration:v4 progressHandler:v5];
}

- (void)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ISWrappedAVPlayer_setRate_time_atHostTime___block_invoke;
  v5[3] = &__block_descriptor_84_e27_v16__0__ISWrappedAVPlayer_8l;
  v6 = a3;
  v7 = *a4;
  v8 = *a5;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v5];
}

void __45__ISWrappedAVPlayer_setRate_time_atHostTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  LODWORD(v4) = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 52);
  v5 = *(a1 + 60);
  v6 = *(a1 + 76);
  [v3 setRate:&v7 time:&v5 atHostTime:v4];
}

- (void)setPreventsSleepDuringVideoPlayback:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__ISWrappedAVPlayer_setPreventsSleepDuringVideoPlayback___block_invoke;
  v3[3] = &unk_279A2A500;
  v4 = a3;
  v3[4] = self;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __57__ISWrappedAVPlayer_setPreventsSleepDuringVideoPlayback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _playerQueue_avPlayer];
  [v4 setPreventsDisplaySleepDuringVideoPlayback:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ISWrappedAVPlayer_setPreventsSleepDuringVideoPlayback___block_invoke_2;
  v5[3] = &unk_279A2A4D8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 _performIvarWrite:v5];
}

- (void)setLoopTimeRange:(id *)a3
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v5 = *&a3->var0.var3;
  v12 = *&a3->var0.var0;
  v11[2] = __38__ISWrappedAVPlayer_setLoopTimeRange___block_invoke;
  v11[3] = &unk_279A2A528;
  v11[4] = self;
  v13 = v5;
  v14 = *&a3->var1.var1;
  [(ISWrappedAVPlayer *)self _performIvarWrite:v11];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ISWrappedAVPlayer_setLoopTimeRange___block_invoke_2;
  v7[3] = &__block_descriptor_80_e27_v16__0__ISWrappedAVPlayer_8l;
  v6 = *&a3->var0.var3;
  v8 = *&a3->var0.var0;
  v9 = v6;
  v10 = *&a3->var1.var1;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v7];
}

__n128 __38__ISWrappedAVPlayer_setLoopTimeRange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) + 184;
  result = *(a1 + 72);
  v3 = *(a1 + 56);
  *v1 = *(a1 + 40);
  *(v1 + 16) = v3;
  *(v1 + 32) = result;
  return result;
}

void __38__ISWrappedAVPlayer_setLoopTimeRange___block_invoke_2(_OWORD *a1, void *a2)
{
  v3 = [a2 currentItem];
  v4 = a1[3];
  v5[0] = a1[2];
  v5[1] = v4;
  v5[2] = a1[4];
  [v3 setLoopTimeRange:v5];
}

- (void)setLoopingEnabled:(BOOL)a3
{
  if ([(ISWrappedAVPlayer *)self isLoopingEnabled]!= a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__ISWrappedAVPlayer_setLoopingEnabled___block_invoke;
    v7[3] = &unk_279A2A4D8;
    v7[4] = self;
    v8 = a3;
    [(ISWrappedAVPlayer *)self _performIvarWrite:v7];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__ISWrappedAVPlayer_setLoopingEnabled___block_invoke_2;
    v5[3] = &__block_descriptor_33_e27_v16__0__ISWrappedAVPlayer_8l;
    v6 = a3;
    [(ISWrappedAVPlayer *)self _performPlayerTransaction:v5];
  }
}

void __39__ISWrappedAVPlayer_setLoopingEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  v4 = [v3 currentItem];

  if (*(a1 + 32) == 1)
  {
    v5 = [v4 asset];
    v6 = v5;
    if (v5)
    {
      [v5 duration];
    }

    else
    {
      memset(&v8, 0, 24);
    }

    start = **&MEMORY[0x277CC08F0];
    CMTimeRangeMake(&v10, &start, &v8.start);
    v8 = v10;
    [v4 setLoopTimeRange:&v8];
  }

  else
  {
    v7 = *(MEMORY[0x277CC08C8] + 16);
    *&v10.start.value = *MEMORY[0x277CC08C8];
    *&v10.start.epoch = v7;
    *&v10.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
    *&v8.start.value = *&v10.start.value;
    *&v8.start.epoch = v7;
    *&v8.duration.timescale = *&v10.duration.timescale;
    [v4 setLoopTimeRange:&v8];
  }
}

- (void)_playerQueue_updatePlayerItemAudioTracksEnabled
{
  v3 = [(ISWrappedAVPlayer *)self isAudioEnabled];
  v10 = [(ISWrappedAVPlayer *)self currentItem];
  v4 = [(ISWrappedMemoriesAppleMusicPlayer *)self->_memoriesAppleMusicPlayer cachedAVMediaSelectionGroup];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [v10 asset];
    v5 = [v6 mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

    if (!v5)
    {
LABEL_5:
      [v10 is_setAudioTracksEnabled:v3];
      goto LABEL_6;
    }
  }

  v7 = [(ISWrappedMemoriesAppleMusicPlayer *)self->_memoriesAppleMusicPlayer appleMusicPlayerError];

  if (v7)
  {
    goto LABEL_5;
  }

  if (v3)
  {
    v8 = [(ISWrappedMemoriesAppleMusicPlayer *)self->_memoriesAppleMusicPlayer withoutMusicMediaOption];

    if (v8)
    {
      v9 = [(ISWrappedMemoriesAppleMusicPlayer *)self->_memoriesAppleMusicPlayer withoutMusicMediaOption];
      [v10 selectMediaOption:v9 inMediaSelectionGroup:v5];
    }

    else
    {
      [v10 selectMediaOptionAutomaticallyInMediaSelectionGroup:v5];
    }
  }

  else
  {
    [v10 selectMediaOption:0 inMediaSelectionGroup:v5];
  }

LABEL_6:
}

- (void)photosOnly_waitForPlayerTransactionsToFinish
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ISWrappedAVPlayer_photosOnly_waitForPlayerTransactionsToFinish__block_invoke;
  v5[3] = &unk_279A2A240;
  v6 = v3;
  v4 = v3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)setIsAudioEnabled:(BOOL)a3
{
  if ([(ISWrappedAVPlayer *)self isAudioEnabled]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__ISWrappedAVPlayer_setIsAudioEnabled___block_invoke;
    v5[3] = &__block_descriptor_33_e27_v16__0__ISWrappedAVPlayer_8l;
    v6 = a3;
    [(ISWrappedAVPlayer *)self _performPlayerTransaction:v5];
  }
}

void __39__ISWrappedAVPlayer_setIsAudioEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__ISWrappedAVPlayer_setIsAudioEnabled___block_invoke_2;
  v8 = &unk_279A2A4D8;
  v9 = v3;
  v10 = *(a1 + 32);
  v4 = v3;
  [v4 _performIvarWrite:&v5];
  [v4 _playerQueue_updatePlayerItemAudioTracksEnabled];
}

- (void)setSuppressesAudioRendering:(BOOL)a3
{
  if ([(ISWrappedAVPlayer *)self suppressesAudioRendering]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__ISWrappedAVPlayer_setSuppressesAudioRendering___block_invoke;
    v5[3] = &unk_279A2A500;
    v5[4] = self;
    v6 = a3;
    [(ISWrappedAVPlayer *)self _performPlayerTransaction:v5];
  }
}

uint64_t __49__ISWrappedAVPlayer_setSuppressesAudioRendering___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__ISWrappedAVPlayer_setSuppressesAudioRendering___block_invoke_2;
  v11 = &unk_279A2A4D8;
  v12 = v3;
  LOBYTE(v13) = *(a1 + 40);
  v4 = a2;
  [v3 _performIvarWrite:&v8];
  v5 = *(a1 + 40);
  v6 = v4[14];

  return [v6 _setSuppressesAudioRendering:{v5, v8, v9, v10, v11, v12, v13}];
}

- (BOOL)suppressesAudioRendering
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ISWrappedAVPlayer_suppressesAudioRendering__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)preventsSleepDuringVideoPlayback
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__ISWrappedAVPlayer_preventsSleepDuringVideoPlayback__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)itemForwardPlaybackEndTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3810000000;
  v9 = &unk_25E69BFA7;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ISWrappedAVPlayer_itemForwardPlaybackEndTime__block_invoke;
  v5[3] = &unk_279A2A4B0;
  v5[4] = self;
  v5[5] = &v6;
  [(ISWrappedAVPlayer *)self _performIvarRead:v5];
  *retstr = *(v7 + 4);
  _Block_object_dispose(&v6, 8);
  return result;
}

__n128 __47__ISWrappedAVPlayer_itemForwardPlaybackEndTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 256);
  v3 = *(*(a1 + 32) + 272);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  result = self->_playerQueue_avPlayer;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result currentTime];
  }

  return result;
}

- (BOOL)isAudioEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ISWrappedAVPlayer_isAudioEnabled__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (float)volume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__ISWrappedAVPlayer_volume__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

float __27__ISWrappedAVPlayer_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 180);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (float)rate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__ISWrappedAVPlayer_rate__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

float __25__ISWrappedAVPlayer_rate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 176);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)currentItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4069;
  v11 = __Block_byref_object_dispose__4070;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__ISWrappedAVPlayer_currentItem__block_invoke;
  v6[3] = &unk_279A2A4B0;
  v6[4] = self;
  v6[5] = &v7;
  [(ISWrappedAVPlayer *)self _performIvarRead:v6];
  v2 = v8[5];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if (v2 == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v8[5];
    }

    v2 = v4;
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

uint64_t __32__ISWrappedAVPlayer_currentItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (id)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4069;
  v11 = __Block_byref_object_dispose__4070;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__ISWrappedAVPlayer_error__block_invoke;
  v6[3] = &unk_279A2A4B0;
  v6[4] = self;
  v6[5] = &v7;
  [(ISWrappedAVPlayer *)self _performIvarRead:v6];
  v2 = v8[5];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    if (v2 == v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v8[5];
    }

    v2 = v4;
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

uint64_t __26__ISWrappedAVPlayer_error__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (id)currentItemError
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4069;
  v9 = __Block_byref_object_dispose__4070;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ISWrappedAVPlayer_currentItemError__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)currentItemHasEnabledAudio
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ISWrappedAVPlayer_currentItemHasEnabledAudio__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)currentItemVideoComposition
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4069;
  v9 = __Block_byref_object_dispose__4070;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ISWrappedAVPlayer_currentItemVideoComposition__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)currentItemIsLikelyToKeepUp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__ISWrappedAVPlayer_currentItemIsLikelyToKeepUp__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)currentItemPlaybackBufferEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ISWrappedAVPlayer_currentItemPlaybackBufferEmpty__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)currentItemPlaybackBufferFull
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ISWrappedAVPlayer_currentItemPlaybackBufferFull__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentItemDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3810000000;
  v9 = &unk_25E69BFA7;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ISWrappedAVPlayer_currentItemDuration__block_invoke;
  v5[3] = &unk_279A2A4B0;
  v5[4] = self;
  v5[5] = &v6;
  [(ISWrappedAVPlayer *)self _performIvarRead:v5];
  *retstr = *(v7 + 4);
  _Block_object_dispose(&v6, 8);
  return result;
}

__n128 __40__ISWrappedAVPlayer_currentItemDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 280);
  v3 = *(*(a1 + 32) + 296);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (int64_t)currentItemStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ISWrappedAVPlayer_currentItemStatus__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)status
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__ISWrappedAVPlayer_status__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- ($542DF6A934A12223D4D27E794AA667E2)loopTimeRange
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5010000000;
  v11 = &unk_25E69BFA7;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ISWrappedAVPlayer_loopTimeRange__block_invoke;
  v7[3] = &unk_279A2A4B0;
  v7[4] = self;
  v7[5] = &v8;
  [(ISWrappedAVPlayer *)self _performIvarRead:v7];
  v4 = v9;
  v5 = *(v9 + 3);
  *&retstr->var0.var0 = *(v9 + 2);
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *(v4 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __34__ISWrappedAVPlayer_loopTimeRange__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v3 = *(*(a1 + 32) + 200);
  result = *(*(a1 + 32) + 216);
  *(v1 + 32) = *(*(a1 + 32) + 184);
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  return result;
}

- (BOOL)isLoopingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ISWrappedAVPlayer_isLoopingEnabled__block_invoke;
  v4[3] = &unk_279A2A4B0;
  v4[4] = self;
  v4[5] = &v5;
  [(ISWrappedAVPlayer *)self _performIvarRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)observeChangeforKVOProxyIdentifier:(id)a3 keyPath:(id)a4 change:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 valueForKey:*MEMORY[0x277CCA2F0]];
  if (![v8 isEqualToString:self->_playerQueue_playerKVOIdentifier])
  {
    if (![v8 isEqualToString:self->_playerQueue_playerItemKVOIdentifier])
    {
      goto LABEL_20;
    }

    if ([v9 isEqualToString:@"status"])
    {
      v13 = [v10 integerValue];
      if ([(ISWrappedAVPlayer *)self currentItemStatus]== v13)
      {
        goto LABEL_20;
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_14;
      v39[3] = &unk_279A2A438;
      v39[4] = self;
      v39[5] = v13;
      v14 = v39;
LABEL_12:
      [(ISObservable *)self performChanges:v14];
      goto LABEL_20;
    }

    if ([v9 isEqualToString:@"error"])
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_16;
      v37[3] = &unk_279A2A398;
      v37[4] = self;
      v38 = v10;
      [(ISObservable *)self performChanges:v37];
      v16 = v38;
LABEL_19:

      goto LABEL_20;
    }

    if ([v9 isEqualToString:@"forwardPlaybackEndTime"])
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_18;
      v35[3] = &unk_279A2A398;
      v35[4] = self;
      v36 = v10;
      [(ISObservable *)self performChanges:v35];
      v16 = v36;
      goto LABEL_19;
    }

    if (![v9 isEqualToString:@"tracks"])
    {
      if ([v9 isEqualToString:@"playbackLikelyToKeepUp"])
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_22;
        v31[3] = &unk_279A2A398;
        v31[4] = self;
        v32 = v10;
        [(ISObservable *)self performChanges:v31];
        v16 = v32;
      }

      else if ([v9 isEqualToString:@"videoComposition"])
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_24;
        v29[3] = &unk_279A2A398;
        v29[4] = self;
        v30 = v10;
        [(ISObservable *)self performChanges:v29];
        v16 = v30;
      }

      else if ([v9 isEqualToString:@"playbackBufferFull"])
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_26;
        v27[3] = &unk_279A2A398;
        v27[4] = self;
        v28 = v10;
        [(ISObservable *)self performChanges:v27];
        v16 = v28;
      }

      else if ([v9 isEqualToString:@"duration"])
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_28;
        v25[3] = &unk_279A2A398;
        v25[4] = self;
        v26 = v10;
        [(ISObservable *)self performChanges:v25];
        v16 = v26;
      }

      else if ([v9 isEqualToString:@"playbackBufferEmpty"])
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_30;
        v23[3] = &unk_279A2A398;
        v23[4] = self;
        v24 = v10;
        [(ISObservable *)self performChanges:v23];
        v16 = v24;
      }

      else
      {
        if (![v9 isEqualToString:@"hasEnabledAudio"])
        {
          goto LABEL_20;
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_32;
        v21[3] = &unk_279A2A398;
        v21[4] = self;
        v22 = v10;
        [(ISObservable *)self performChanges:v21];
        v16 = v22;
      }

      goto LABEL_19;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_20;
    v34[3] = &unk_279A2A488;
    v34[4] = self;
    [(ISObservable *)self performChanges:v34];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_21;
    v33[3] = &unk_279A2A180;
    v33[4] = self;
    v12 = MEMORY[0x25F8BB670](v33);
LABEL_4:
    if (v12)
    {
      v12[2](v12);
    }

    goto LABEL_20;
  }

  if ([v9 isEqualToString:@"rate"])
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke;
    v53[3] = &unk_279A2A398;
    v53[4] = self;
    v11 = v10;
    v54 = v11;
    [(ISObservable *)self performChanges:v53];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_3;
    v50[3] = &unk_279A2A348;
    v51 = v11;
    v52 = self;
    v12 = MEMORY[0x25F8BB670](v50);

    goto LABEL_4;
  }

  if ([v9 isEqualToString:@"status"])
  {
    v15 = [v10 integerValue];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_6;
    v49[3] = &unk_279A2A438;
    v49[4] = self;
    v49[5] = v15;
    v14 = v49;
    goto LABEL_12;
  }

  if ([v9 isEqualToString:@"error"])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_8;
    v47[3] = &unk_279A2A398;
    v47[4] = self;
    v48 = v10;
    [(ISObservable *)self performChanges:v47];
    v16 = v48;
    goto LABEL_19;
  }

  if ([v9 isEqualToString:@"currentItem"])
  {
    v17 = [(ISWrappedAVPlayer *)self _nilOrValue:v10];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_10;
    v44[3] = &unk_279A2A348;
    v18 = v17;
    v45 = v18;
    v46 = self;
    v12 = MEMORY[0x25F8BB670](v44);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_11;
    v42[3] = &unk_279A2A398;
    v42[4] = self;
    v43 = v18;
    v19 = v18;
    [(ISObservable *)self performChanges:v42];

    goto LABEL_4;
  }

  if ([v9 isEqualToString:@"volume"])
  {
    [v10 floatValue];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_13;
    v40[3] = &unk_279A2A460;
    v40[4] = self;
    v41 = v20;
    [(ISWrappedAVPlayer *)self _performIvarWrite:v40];
  }

LABEL_20:
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_2;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{2, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) floatValue];
  if (v2 <= 0.0)
  {
    v5 = *(*(a1 + 40) + 344);

    [v5 stop];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v3 = *(a1 + 40);
    v4 = *(v3 + 344);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_4;
    v6[3] = &unk_279A2A3E8;
    v6[4] = v3;
    objc_copyWeak(&v7, &location);
    [v4 playWithCompletionHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_7;
  v5[3] = &unk_279A2A410;
  v3 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _performIvarWrite:v5];
  return [*(a1 + 32) signalChange:1];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_9;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{8, v3, v4, v5, v6, v7}];
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    [*(*(a1 + 40) + 344) stop];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 40);

  return [v3 _playerQueue_startObservingPlayerItem:v2];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_12;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{4, v3, v4, v5, v6, v7}];
}

float __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_13(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 180) = result;
  return result;
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_15;
  v5[3] = &unk_279A2A410;
  v3 = *(a1 + 40);
  v5[4] = v2;
  v5[5] = v3;
  [v2 _performIvarWrite:v5];
  return [*(a1 + 32) signalChange:16];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_17;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{8, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_19;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{2048, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_22(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_23;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{64, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_25;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{4096, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_27;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{128, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_29;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{512, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_31;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{256, v3, v4, v5, v6, v7}];
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_33;
  v6 = &unk_279A2A348;
  v7 = v2;
  v8 = *(a1 + 40);
  [v2 _performIvarWrite:&v3];
  [*(a1 + 32) signalChange:{0x4000, v3, v4, v5, v6, v7}];
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_33(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(a1 + 32) + 322) = result;
  return result;
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_31(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(a1 + 32) + 321) = result;
  return result;
}

__n128 __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 CMTimeValue];
  }

  else
  {
    v4 = 0uLL;
    v5 = 0;
  }

  result = v4;
  *(v2 + 296) = v5;
  *(v2 + 280) = v4;
  return result;
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_27(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(a1 + 32) + 304) = result;
  return result;
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_23(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(a1 + 32) + 320) = result;
  return result;
}

__n128 __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    [v1 CMTimeValue];
  }

  else
  {
    v4 = 0uLL;
    v5 = 0;
  }

  result = v4;
  v2[17].n128_u64[0] = v5;
  v2[16] = v4;
  return result;
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) _nilOrValue:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) _nilOrValue:*(a1 + 40)];
  objc_storeWeak((*(a1 + 32) + 168), v2);
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_5;
  block[3] = &unk_279A2A3C0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playerQueue_updatePlayerItemAudioTracksEnabled];
}

uint64_t __71__ISWrappedAVPlayer_observeChangeforKVOProxyIdentifier_keyPath_change___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 40) floatValue];
  *(*(a1 + 32) + 176) = v3;
  return result;
}

- (id)_nilOrValue:(id)a3
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a3;
  v5 = [v3 null];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (void)_playerItemDidPlayToEnd:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(ISWrappedAVPlayer *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(AVPlayer *)self->_playerQueue_avPlayer currentItem];

    if (v8 == v5)
    {
      delegateQueue = self->_delegateQueue;
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __45__ISWrappedAVPlayer__playerItemDidPlayToEnd___block_invoke;
      v13 = &unk_279A2A348;
      v14 = self;
      v15 = v4;
      dispatch_async(delegateQueue, &v10);
    }
  }

  [(ISWrappedMemoriesAppleMusicPlayer *)self->_memoriesAppleMusicPlayer stop:v10];
}

void __45__ISWrappedAVPlayer__playerItemDidPlayToEnd___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  [v4 avPlayer:v2 itemDidPlayToEnd:v3];
}

- (void)_playerQueue_stopObservingPlayerItem:(id)a3
{
  v4 = +[ISKVOProxyManager sharedManager];
  [v4 removeProxyWithIdentifier:self->_playerQueue_playerItemKVOIdentifier];
}

- (void)_playerQueue_startObservingPlayerItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[ISKVOProxyManager sharedManager];
    [v5 removeProxyWithIdentifier:self->_playerQueue_playerItemKVOIdentifier];

    v6 = +[ISKVOProxyManager sharedManager];
    avPlayerQueue = self->_avPlayerQueue;
    v8 = [objc_opt_class() observedAVPlayerItemKeys];
    v9 = [v6 addProxyWithTarget:v4 queue:avPlayerQueue keyPaths:v8 delegate:self];
    playerQueue_playerItemKVOIdentifier = self->_playerQueue_playerItemKVOIdentifier;
    self->_playerQueue_playerItemKVOIdentifier = v9;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__ISWrappedAVPlayer__playerQueue_startObservingPlayerItem___block_invoke;
    v11[3] = &unk_279A2A180;
    v11[4] = self;
    [(ISWrappedAVPlayer *)self _performIvarWrite:v11];
  }
}

__n128 __59__ISWrappedAVPlayer__playerQueue_startObservingPlayerItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 248);
  *(v4 + 248) = 0;

  *(*(a1 + 32) + 240) = 0;
  v6 = *(a1 + 32) + 280;
  v7 = MEMORY[0x277CC0898];
  *(v6 + 16) = *(MEMORY[0x277CC0898] + 16);
  result = *v7;
  *v6 = *v7;
  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 304) = 0;
  *(*(a1 + 32) + 321) = 0;
  return result;
}

- (void)removeTimeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__ISWrappedAVPlayer_removeTimeObserver___block_invoke;
    v6[3] = &unk_279A2A370;
    v7 = v4;
    v8 = self;
    [(ISWrappedAVPlayer *)self _performPlayerTransaction:v6];
  }
}

void __40__ISWrappedAVPlayer_removeTimeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4069;
  v18 = __Block_byref_object_dispose__4070;
  v19 = 0;
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ISWrappedAVPlayer_removeTimeObserver___block_invoke_62;
  v11[3] = &unk_279A2A320;
  v13 = &v14;
  v11[4] = v5;
  v6 = v4;
  v12 = v6;
  [v5 _performIvarRead:v11];
  if (v15[5])
  {
    v7 = [v3 _playerQueue_avPlayer];
    [v7 removeTimeObserver:v15[5]];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ISWrappedAVPlayer_removeTimeObserver___block_invoke_2;
    v8[3] = &unk_279A2A348;
    v9 = v3;
    v10 = v6;
    [v9 _performIvarWrite:v8];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__ISWrappedAVPlayer_removeTimeObserver___block_invoke_62(void *a1)
{
  v2 = [*(a1[4] + 328) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)addBoundaryTimeObserverForTimes:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ISWrappedAVPlayer *)self _nextObserverUID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__ISWrappedAVPlayer_addBoundaryTimeObserverForTimes_queue_usingBlock___block_invoke;
  v19[3] = &unk_279A2A2F8;
  v20 = v8;
  v21 = v9;
  v23 = v10;
  v12 = v11;
  v22 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v19];
  v16 = v22;
  v17 = v12;

  return v12;
}

void __70__ISWrappedAVPlayer_addBoundaryTimeObserverForTimes_queue_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _playerQueue_avPlayer];
  v5 = [v4 addBoundaryTimeObserverForTimes:*(a1 + 32) queue:*(a1 + 40) usingBlock:*(a1 + 56)];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ISWrappedAVPlayer_addBoundaryTimeObserverForTimes_queue_usingBlock___block_invoke_2;
  v8[3] = &unk_279A2A2A8;
  v9 = v3;
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v5;
  v7 = v3;
  [v7 _performIvarWrite:v8];
}

- (id)addPeriodicTimeObserverForInterval:(id *)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ISWrappedAVPlayer *)self _nextObserverUID];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__ISWrappedAVPlayer_addPeriodicTimeObserverForInterval_queue_usingBlock___block_invoke;
  v17[3] = &unk_279A2A2D0;
  v21 = *a3;
  v18 = v8;
  v20 = v9;
  v11 = v10;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v17];
  v14 = v19;
  v15 = v11;

  return v11;
}

void __73__ISWrappedAVPlayer_addPeriodicTimeObserverForInterval_queue_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _playerQueue_avPlayer];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v7 = [v4 addPeriodicTimeObserverForInterval:&v14 queue:v5 usingBlock:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__ISWrappedAVPlayer_addPeriodicTimeObserverForInterval_queue_usingBlock___block_invoke_2;
  v10[3] = &unk_279A2A2A8;
  v11 = v3;
  v12 = *(a1 + 40);
  v13 = v7;
  v8 = v7;
  v9 = v3;
  [v9 _performIvarWrite:v10];
}

- (void)setItemBlendsVideoFrames:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__ISWrappedAVPlayer_setItemBlendsVideoFrames___block_invoke;
  v3[3] = &__block_descriptor_33_e27_v16__0__ISWrappedAVPlayer_8l;
  v4 = a3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __46__ISWrappedAVPlayer_setItemBlendsVideoFrames___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _playerQueue_avPlayer];
  v3 = [v4 currentItem];
  [v3 setBlendsVideoFrames:*(a1 + 32)];
}

- (void)setItemForwardEndPlaybackTime:(id *)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__ISWrappedAVPlayer_setItemForwardEndPlaybackTime___block_invoke;
  v3[3] = &__block_descriptor_56_e27_v16__0__ISWrappedAVPlayer_8l;
  v4 = *a3;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v3];
}

void __51__ISWrappedAVPlayer_setItemForwardEndPlaybackTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _playerQueue_avPlayer];
  v4 = [v3 currentItem];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v4 setForwardPlaybackEndTime:&v5];
}

- (void)attachToPlayerLayerIfNeeded:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ISWrappedAVPlayer_attachToPlayerLayerIfNeeded___block_invoke;
  v6[3] = &unk_279A2A240;
  v7 = v4;
  v5 = v4;
  [(ISWrappedAVPlayer *)self _performPlayerTransaction:v6];
}

void __49__ISWrappedAVPlayer_attachToPlayerLayerIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) player];
  v4 = [v7 _playerQueue_avPlayer];

  if (v3 != v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 _playerQueue_avPlayer];
    [v5 setWrappedPlayer:v6];
  }
}

- (void)dealloc
{
  observersByID = self->_observersByID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__ISWrappedAVPlayer_dealloc__block_invoke;
  v9[3] = &unk_279A2A218;
  v9[4] = self;
  [(NSMutableDictionary *)observersByID enumerateKeysAndObjectsUsingBlock:v9];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self->_playerQueue_playerItemDidPlayToEndObserver];

  v5 = +[ISKVOProxyManager sharedManager];
  [v5 removeProxyWithIdentifier:self->_playerQueue_playerKVOIdentifier];

  v6 = +[ISKVOProxyManager sharedManager];
  [v6 removeProxyWithIdentifier:self->_playerQueue_playerItemKVOIdentifier];

  v7 = +[ISDeferredDealloc sharedInstance];
  [v7 _performDeferredDealloc:self->_playerQueue_avPlayer];

  v8.receiver = self;
  v8.super_class = ISWrappedAVPlayer;
  [(ISWrappedAVPlayer *)&v8 dealloc];
}

- (ISWrappedAVPlayer)init
{
  if (init_onceToken != -1)
  {
    dispatch_once(&init_onceToken, &__block_literal_global_4112);
  }

  v3 = [ISAVPlayer alloc];
  v4 = [(ISAVPlayer *)v3 initWithDispatchQueue:init_avpq];
  v5 = [(ISWrappedAVPlayer *)self _initWithAVPlayer:v4];

  return v5;
}

void __25__ISWrappedAVPlayer_init__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.photosplayer.wrappedAVPlayer.stateDispatch", v2);
  v1 = init_avpq;
  init_avpq = v0;
}

- (id)_initWithAVPlayer:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = ISWrappedAVPlayer;
  v6 = [(ISObservable *)&v33 init];
  v7 = v6;
  if (v6)
  {
    v6[233] = 1;
    v8 = MEMORY[0x277CC08C8];
    *(v6 + 216) = *(MEMORY[0x277CC08C8] + 32);
    v9 = v8[1];
    *(v6 + 184) = *v8;
    *(v6 + 200) = v9;
    v6[234] = [v5 preventsDisplaySleepDuringVideoPlayback];
    v10 = MEMORY[0x277CCABB0];
    atomic_fetch_add(_initWithAVPlayer__ivarQueueCounter, 1u);
    *(v7 + 42) = [v10 numberWithInt:?];
    objc_storeStrong(v7 + 13, MEMORY[0x277D85CD0]);
    v11 = dispatch_queue_create("com.apple.photosplayer.avplayerwrapper.ivars", MEMORY[0x277D85CD8]);
    v12 = *(v7 + 12);
    *(v7 + 12) = v11;

    dispatch_queue_set_specific(*(v7 + 12), QueueIdentifierContext_4117, *(v7 + 42), 0);
    v13 = [v5 currentItem];

    if (v13)
    {
      v14 = ISGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location) = 0;
        _os_log_error_impl(&dword_25E667000, v14, OS_LOG_TYPE_ERROR, "[ISWrappedAVPlayer _initWithAVPlayer:] expected existing player to not have currentItem set", &location, 2u);
      }
    }

    objc_storeStrong(v7 + 14, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [*(v7 + 14) actualDispatchQueue];
    }

    else
    {
      v15 = MEMORY[0x277D85CD0];
    }

    v16 = *(v7 + 11);
    *(v7 + 11) = v15;

    v17 = *(v7 + 11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke;
    block[3] = &unk_279A2A180;
    v18 = v7;
    v32 = v18;
    dispatch_async(v17, block);
    objc_initWeak(&location, v18);
    objc_initWeak(&from, *(v7 + 11));
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = *MEMORY[0x277CE60C0];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke_2;
    v26[3] = &unk_279A2A1D0;
    objc_copyWeak(&v27, &from);
    objc_copyWeak(&v28, &location);
    v21 = [v19 addObserverForName:v20 object:0 queue:0 usingBlock:v26];
    v22 = v18[16];
    v18[16] = v21;

    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v24 = v18[41];
    v18[41] = v23;

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v7;
}

uint64_t __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke(uint64_t a1)
{
  v2 = +[ISKVOProxyManager sharedManager];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  v5 = *(v3 + 88);
  v6 = [objc_opt_class() observedAVPlayerKeys];
  v7 = [v2 addProxyWithTarget:v4 queue:v5 keyPaths:v6 delegate:*(a1 + 32)];
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = v7;

  v10 = *(*(a1 + 32) + 112);

  return [v10 setAllowsExternalPlayback:0];
}

void __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke_3;
    v5[3] = &unk_279A2A1A8;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = v3;
    dispatch_async(WeakRetained, v5);

    objc_destroyWeak(&v7);
  }
}

void __39__ISWrappedAVPlayer__initWithAVPlayer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _playerItemDidPlayToEnd:*(a1 + 32)];
}

- (void)_performIvarWrite:(id)a3
{
  ivarQueue = self->_ivarQueue;
  if (ivarQueue)
  {
    dispatch_barrier_sync(ivarQueue, a3);
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (void)_performIvarRead:(id)a3
{
  v4 = a3;
  block = v4;
  if (self->_ivarQueue && (v5 = [(ISWrappedAVPlayer *)self _isOnIvarQueue], v4 = block, !v5))
  {
    dispatch_sync(self->_ivarQueue, block);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

- (void)_performPlayerTransaction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  avPlayerQueue = self->_avPlayerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISWrappedAVPlayer__performPlayerTransaction___block_invoke;
  block[3] = &unk_279A2A158;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(avPlayerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __47__ISWrappedAVPlayer__performPlayerTransaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_avPlayerQueue_unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = ISWrappedAVPlayer;
  [(ISObservable *)&v4 unregisterChangeObserver:a3 context:a4];
}

- (void)_avPlayerQueue_registerChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = ISWrappedAVPlayer;
  [(ISObservable *)&v4 registerChangeObserver:a3 context:a4];
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  avPlayerQueue = self->_avPlayerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ISWrappedAVPlayer_unregisterChangeObserver_context___block_invoke;
  v9[3] = &unk_279A2A130;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(avPlayerQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __54__ISWrappedAVPlayer_unregisterChangeObserver_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _avPlayerQueue_unregisterChangeObserver:*(a1 + 32) context:*(a1 + 48)];
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  avPlayerQueue = self->_avPlayerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ISWrappedAVPlayer_registerChangeObserver_context___block_invoke;
  v9[3] = &unk_279A2A130;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(avPlayerQueue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __52__ISWrappedAVPlayer_registerChangeObserver_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _avPlayerQueue_registerChangeObserver:*(a1 + 32) context:*(a1 + 48)];
}

@end