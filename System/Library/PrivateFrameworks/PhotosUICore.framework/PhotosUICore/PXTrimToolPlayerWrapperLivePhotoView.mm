@interface PXTrimToolPlayerWrapperLivePhotoView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange;
- (BOOL)isPlaying;
- (BOOL)isReadyToPlay;
- (PXTrimToolPlayerObserver)playerObserver;
- (PXTrimToolPlayerWrapperLivePhotoView)initWithLivePhotoView:(id)view;
- (UIView)loupePlayerView;
- (id)videoPlayerView;
- (void)_addPeriodicTimeObserver;
- (void)_createLoupePlayerView;
- (void)_loadWrappedAVPlayerIfNecessary;
- (void)_timeObserverTimeChanged:(id *)changed;
- (void)applyTrimTimeRange:(id *)range;
- (void)finishSeeking;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)requestAssetWithCompletion:(id)completion;
- (void)seekToTime:(id *)time untrimmed:(BOOL)untrimmed exact:(BOOL)exact forceSeek:(BOOL)seek;
- (void)setPeriodicTimeObservationInterval:(id *)interval;
- (void)setPlayerObserver:(id)observer;
- (void)setWrappedAVPlayer:(id)player;
- (void)startPeriodicTimeObserver;
- (void)stepByCount:(int64_t)count playheadTime:(id *)time;
- (void)stopPeriodicTimeObserver;
@end

@implementation PXTrimToolPlayerWrapperLivePhotoView

- (void)setPeriodicTimeObservationInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_periodicTimeObservationInterval.epoch = interval->var3;
  *&self->_periodicTimeObservationInterval.value = v3;
}

- (PXTrimToolPlayerObserver)playerObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_playerObserver);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  v9 = observableCopy;
  if (livePhotoPlayerObservationContext == context)
  {
    if ((changeCopy & 4) != 0)
    {
      observableCopy;
      px_dispatch_on_main_queue();
    }
  }

  else if (avPlayerObservationContext_228331 == context)
  {
    if ((changeCopy & 0x1000) != 0)
    {
      playerObserver = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
      [playerObserver compositionDidUpdateForPlayerWrapper:self];
    }

    if ((changeCopy & 1) != 0 && self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper)
    {
      playerObserver2 = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
      [playerObserver2 playerStatusChangedForPlayerWrapper:self];
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
  periodicTimeObserver = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];
  if (periodicTimeObserver)
  {
    wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
    periodicTimeObserver2 = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];
    [wrappedAVPlayer removeTimeObserver:periodicTimeObserver2];

    [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObserver:0];
  }

  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  [(PXTrimToolPlayerWrapperLivePhotoView *)self setPeriodicTimeObservationInterval:&v6];
}

- (void)startPeriodicTimeObserver
{
  periodicTimeObserver = [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObserver];

  if (periodicTimeObserver)
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
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  if (wrappedAVPlayer)
  {
    v6 = wrappedAVPlayer;
    [wrappedAVPlayer currentTime];
    wrappedAVPlayer = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)stepByCount:(int64_t)count playheadTime:(id *)time
{
  memset(&v9, 0, sizeof(v9));
  CMTimeMakeWithSeconds(&rhs, count * 0.016, 600);
  v7 = *time;
  CMTimeAdd(&v9, &v7, &rhs);
  livePhotoView = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  rhs = v9;
  [livePhotoView setSeekTime:&rhs];
}

- (void)pause
{
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [wrappedAVPlayer pause];
}

- (void)play
{
  [(PXTrimToolPlayerWrapperLivePhotoView *)self _loadWrappedAVPlayerIfNecessary];
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  v5 = wrappedAVPlayer;
  if (wrappedAVPlayer)
  {
    [wrappedAVPlayer itemForwardPlaybackEndTime];
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
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [wrappedAVPlayer rate];
  v4 = v3;

  return v4 > 0.0;
}

- (BOOL)isReadyToPlay
{
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  v3 = [wrappedAVPlayer status] == 1;

  return v3;
}

- (void)applyTrimTimeRange:(id *)range
{
  livePhotoView = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  v5 = *&range->var0.var3;
  v6[0] = *&range->var0.var0;
  v6[1] = v5;
  v6[2] = *&range->var1.var1;
  [livePhotoView setTrimmedTimeRange:v6];
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange
{
  livePhotoView = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
  player = [livePhotoView player];
  v5 = player;
  if (player)
  {
    [player trimTimeRange];
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

- (void)seekToTime:(id *)time untrimmed:(BOOL)untrimmed exact:(BOOL)exact forceSeek:(BOOL)seek
{
  v7 = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView:time];
  v8 = *time;
  [v7 setSeekTime:&v8];
}

- (void)requestAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  [(PXTrimToolPlayerWrapperLivePhotoView *)self _loadWrappedAVPlayerIfNecessary];
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  currentItem = [wrappedAVPlayer currentItem];

  asset = [currentItem asset];
  videoComposition = [currentItem videoComposition];
  completionCopy[2](completionCopy, asset, videoComposition);
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

- (void)setPlayerObserver:(id)observer
{
  observerCopy = observer;
  objc_storeWeak(&self->_playerObserver, observerCopy);
  self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTimeChanged = v5 & 1;

  [(PXTrimToolPlayerWrapperLivePhotoView *)self stopPeriodicTimeObserver];
}

- (void)_timeObserverTimeChanged:(id *)changed
{
  if (self->_delegateFlags.respondsToTimeChanged)
  {
    v9 = v3;
    v10 = v4;
    playerObserver = [(PXTrimToolPlayerWrapperLivePhotoView *)self playerObserver];
    v8 = *changed;
    [playerObserver playerWrapper:self timeChanged:&v8];
  }
}

- (void)_addPeriodicTimeObserver
{
  objc_initWeak(&location, self);
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
  [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObservationInterval];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PXTrimToolPlayerWrapperLivePhotoView__addPeriodicTimeObserver__block_invoke;
  v5[3] = &unk_1E7748F40;
  objc_copyWeak(&v6, &location);
  v4 = [wrappedAVPlayer addPeriodicTimeObserverForInterval:v7 queue:0 usingBlock:v5];

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
  videoPlayerView = [(PXTrimToolPlayerWrapperLivePhotoView *)self videoPlayerView];
  loupePlayerView = self->_loupePlayerView;
  self->_loupePlayerView = videoPlayerView;
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
    wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];
    [(ISVideoPlayerUIView *)self->_videoPlayerView setVideoPlayer:wrappedAVPlayer];

    videoPlayerView = self->_videoPlayerView;
  }

  return videoPlayerView;
}

- (void)setWrappedAVPlayer:(id)player
{
  playerCopy = player;
  if (self->_wrappedAVPlayer != playerCopy)
  {
    v9 = 0uLL;
    v10 = 0;
    [(PXTrimToolPlayerWrapperLivePhotoView *)self periodicTimeObservationInterval];
    [(PXTrimToolPlayerWrapperLivePhotoView *)self stopPeriodicTimeObserver];
    [(ISWrappedAVPlayer *)self->_wrappedAVPlayer unregisterChangeObserver:self context:avPlayerObservationContext_228331];
    objc_storeStrong(&self->_wrappedAVPlayer, player);
    _videoPlayerViewIfLoaded = [(PXTrimToolPlayerWrapperLivePhotoView *)self _videoPlayerViewIfLoaded];
    [_videoPlayerViewIfLoaded setVideoPlayer:playerCopy];

    [(ISWrappedAVPlayer *)playerCopy registerChangeObserver:self context:avPlayerObservationContext_228331];
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
  wrappedAVPlayer = [(PXTrimToolPlayerWrapperLivePhotoView *)self wrappedAVPlayer];

  if (!wrappedAVPlayer)
  {
    livePhotoView = [(PXTrimToolPlayerWrapperLivePhotoView *)self livePhotoView];
    player = [livePhotoView player];

    [player registerChangeObserver:self context:livePhotoPlayerObservationContext];
    videoPlayer = [player videoPlayer];
    [(PXTrimToolPlayerWrapperLivePhotoView *)self setWrappedAVPlayer:videoPlayer];
  }
}

- (PXTrimToolPlayerWrapperLivePhotoView)initWithLivePhotoView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = PXTrimToolPlayerWrapperLivePhotoView;
  v6 = [(PXTrimToolPlayerWrapperLivePhotoView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_livePhotoView, view);
  }

  return v7;
}

@end