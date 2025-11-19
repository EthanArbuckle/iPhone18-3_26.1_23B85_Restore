@interface PXTrimToolPlayerWrapperLivePhotoView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange;
- (BOOL)isPlaying;
- (BOOL)isReadyToPlay;
- (PXTrimToolPlayerObserver)playerObserver;
- (PXTrimToolPlayerWrapperLivePhotoView)initWithLivePhotoView:(id)a3;
- (UIView)loupePlayerView;
- (id)videoPlayerView;
- (void)_addPeriodicTimeObserver;
- (void)_createLoupePlayerView;
- (void)_loadWrappedAVPlayerIfNecessary;
- (void)_timeObserverTimeChanged:(id *)a3;
- (void)applyTrimTimeRange:(id *)a3;
- (void)finishSeeking;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pause;
- (void)play;
- (void)requestAssetWithCompletion:(id)a3;
- (void)seekToTime:(id *)a3 untrimmed:(BOOL)a4 exact:(BOOL)a5 forceSeek:(BOOL)a6;
- (void)setPeriodicTimeObservationInterval:(id *)a3;
- (void)setPlayerObserver:(id)a3;
- (void)setWrappedAVPlayer:(id)a3;
- (void)startPeriodicTimeObserver;
- (void)stepByCount:(int64_t)a3 playheadTime:(id *)a4;
- (void)stopPeriodicTimeObserver;
@end

@implementation PXTrimToolPlayerWrapperLivePhotoView

- (void)setPeriodicTimeObservationInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_periodicTimeObservationInterval.epoch = a3->var3;
  *&self->_periodicTimeObservationInterval.value = v3;
}

- (PXTrimToolPlayerObserver)playerObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_playerObserver);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (livePhotoPlayerObservationContext == a5)
  {
    if ((v6 & 4) != 0)
    {
      v8;
      px_dispatch_on_main_queue();
    }
  }

  else if (avPlayerObservationContext_228331 == a5)
  {
    if ((v6 & 0x1000) != 0)
    {
      v10 = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
      [v10 compositionDidUpdateForPlayerWrapper:self];
    }

    if ((v6 & 1) != 0 && self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper)
    {
      v11 = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
      [v11 playerStatusChangedForPlayerWrapper:self];
    }
  }
}

void __69__PXTrimToolPlayerWrapperLivePhotoView_observable_didChange_context___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) videoPlayer];
  [*(a1 + 40) setWrappedAVPlayer:v3];
  v2 = [*(a1 + 40) playerObserver];
  [v2 compositionDidUpdateForPlayerWrapper:*(a1 + 40)];
}

- (void)stopPeriodicTimeObserver
{
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];
  if (v3)
  {
    v4 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
    v5 = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];
    [v4 removeTimeObserver:v5];

    [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObserver:0];
  }

  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObservationInterval:&v6];
}

- (void)startPeriodicTimeObserver
{
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];

  if (v3)
  {
    [(PXTrimToolPlayerWrapperLivePhotoView *)self stopPeriodicTimeObserver];
  }

  CMTimeMake(&v5, 1, 30);
  v4 = v5;
  [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObservationInterval:&v4];
  [(PXTrimToolPlayerWrapperLivePhotoView *)self _addPeriodicTimeObserver];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v4 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  if (v4)
  {
    v6 = v4;
    [v4 currentTime];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)stepByCount:(int64_t)a3 playheadTime:(id *)a4
{
  memset(&v9, 0, sizeof(v9));
  CMTimeMakeWithSeconds(&rhs, a3 * 0.016, 600);
  v7 = *a4;
  CMTimeAdd(&v9, &v7, &rhs);
  v6 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  rhs = v9;
  [v6 setSeekTime:&rhs];
}

- (void)pause
{
  v2 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [v2 pause];
}

- (void)play
{
  [(PXTrimToolPlayerWrapperLivePhotoView *)self _loadWrappedAVPlayerIfNecessary];
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  v5 = v3;
  if (v3)
  {
    [v3 itemForwardPlaybackEndTime];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  LODWORD(v4) = 1.0;
  [v5 playToTime:v6 withInitialRate:0 overDuration:v4 progressHandler:0.0];
}

- (BOOL)isPlaying
{
  v2 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [v2 rate];
  v4 = v3;

  return v4 > 0.0;
}

- (BOOL)isReadyToPlay
{
  v2 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  v3 = [v2 status] == 1;

  return v3;
}

- (void)applyTrimTimeRange:(id *)a3
{
  v4 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  v5 = *&a3->var0.var3;
  v6[0] = *&a3->var0.var0;
  v6[1] = v5;
  v6[2] = *&a3->var1.var1;
  [v4 setTrimmedTimeRange:v6];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange
{
  v7 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  v4 = [v7 player];
  v5 = v4;
  if (v4)
  {
    [v4 trimTimeRange];
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (void)finishSeeking
{
  v2 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  [(PXTrimToolPlayerWrapperLivePhotoView *)self seekToTime:&v2];
}

- (void)seekToTime:(id *)a3 untrimmed:(BOOL)a4 exact:(BOOL)a5 forceSeek:(BOOL)a6
{
  v7 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView:a3];
  v8 = *a3;
  [v7 setSeekTime:&v8];
}

- (void)requestAssetWithCompletion:(id)a3
{
  v4 = a3;
  [(PXTrimToolPlayerWrapperLivePhotoView *)self _loadWrappedAVPlayerIfNecessary];
  v5 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  v8 = [v5 currentItem];

  v6 = [v8 asset];
  v7 = [v8 videoComposition];
  v4[2](v4, v6, v7);
}

- (UIView)loupePlayerView
{
  loupePlayerView = self->_loupePlayerView;
  if (!loupePlayerView)
  {
    [(PXTrimToolPlayerWrapperLivePhotoView *)self _createLoupePlayerView];
    loupePlayerView = self->_loupePlayerView;
  }

  return loupePlayerView;
}

- (void)setPlayerObserver:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_playerObserver, v4);
  self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTimeChanged = v5 & 1;

  [(PXTrimToolPlayerWrapperLivePhotoView *)self stopPeriodicTimeObserver];
}

- (void)_timeObserverTimeChanged:(id *)a3
{
  if (self->_delegateFlags.respondsToTimeChanged)
  {
    v9 = v3;
    v10 = v4;
    v7 = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
    v8 = *a3;
    [v7 playerWrapper:self timeChanged:&v8];
  }
}

- (void)_addPeriodicTimeObserver
{
  objc_initWeak(&location, self);
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObservationInterval];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PXTrimToolPlayerWrapperLivePhotoView__addPeriodicTimeObserver__block_invoke;
  v5[3] = &unk_1E7748F40;
  objc_copyWeak(&v6, &location);
  v4 = [v3 addPeriodicTimeObserverForInterval:v7 queue:0 usingBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__PXTrimToolPlayerWrapperLivePhotoView__addPeriodicTimeObserver__block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _timeObserverTimeChanged:&v4];
}

- (void)_createLoupePlayerView
{
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self videoPlayerView];
  loupePlayerView = self->_loupePlayerView;
  self->_loupePlayerView = v3;
}

- (id)videoPlayerView
{
  videoPlayerView = self->_videoPlayerView;
  if (!videoPlayerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C1B08]);
    v5 = self->_videoPlayerView;
    self->_videoPlayerView = v4;

    [(PXTrimToolPlayerWrapperLivePhotoView *)self _loadWrappedAVPlayerIfNecessary];
    v6 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
    [(ISVideoPlayerUIView *)self->_videoPlayerView setVideoPlayer:v6];

    videoPlayerView = self->_videoPlayerView;
  }

  return videoPlayerView;
}

- (void)setWrappedAVPlayer:(id)a3
{
  v5 = a3;
  if (self->_wrappedAVPlayer != v5)
  {
    v9 = 0uLL;
    v10 = 0;
    [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObservationInterval];
    [(PXTrimToolPlayerWrapperLivePhotoView *)self stopPeriodicTimeObserver];
    [(ISWrappedAVPlayer *)self->_wrappedAVPlayer unregisterChangeObserver:self context:avPlayerObservationContext_228331];
    objc_storeStrong(&self->_wrappedAVPlayer, a3);
    v6 = [(PXTrimToolPlayerWrapperLivePhotoView *)self _videoPlayerViewIfLoaded];
    [v6 setVideoPlayer:v5];

    [(ISWrappedAVPlayer *)v5 registerChangeObserver:self context:avPlayerObservationContext_228331];
    if (0 >> 96)
    {
      v7 = v9;
      v8 = v10;
      [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObservationInterval:&v7];
      [(PXTrimToolPlayerWrapperLivePhotoView *)self _addPeriodicTimeObserver];
    }
  }
}

- (void)_loadWrappedAVPlayerIfNecessary
{
  v3 = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];

  if (!v3)
  {
    v4 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
    v6 = [v4 player];

    [v6 registerChangeObserver:self context:livePhotoPlayerObservationContext];
    v5 = [v6 videoPlayer];
    [(PXTrimToolPlayerWrapperLivePhotoView *)self setWrappedAVPlayer:v5];
  }
}

- (PXTrimToolPlayerWrapperLivePhotoView)initWithLivePhotoView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXTrimToolPlayerWrapperLivePhotoView;
  v6 = [(PXTrimToolPlayerWrapperLivePhotoView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_livePhotoView, a3);
  }

  return v7;
}

@end