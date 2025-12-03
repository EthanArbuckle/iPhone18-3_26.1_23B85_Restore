@interface PXTrimToolPlayerWrapperNUMediaView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange;
- (AVPlayer)_currentAVPlayer;
- (BOOL)isPlaying;
- (BOOL)isReadyToPlay;
- (PXTrimToolPlayerObserver)playerObserver;
- (PXTrimToolPlayerWrapperNUMediaView)initWithNUMediaView:(id)view;
- (PXTrimToolPlayerWrapperNUMediaViewPlayerItemSource)playerItemSource;
- (_PXTrimToolPlayerWrapperAVPlayerView)loupePlayerView;
- (void)_handleMediaPlayerObserverStatusChanged:(int64_t)changed;
- (void)_handleMediaPlayerObserverTimeChanged:(id *)changed;
- (void)_registerDefaultMediaViewObserver;
- (void)_registerTimeMediaViewObserver;
- (void)_removeMediaPlayerObserver;
- (void)_removeTimeObserver;
- (void)_updateLoupePlayerView;
- (void)applyTrimTimeRange:(id *)range;
- (void)dealloc;
- (void)invalidateComposition;
- (void)pause;
- (void)play;
- (void)requestAssetWithCompletion:(id)completion;
- (void)seekToTime:(id *)time untrimmed:(BOOL)untrimmed exact:(BOOL)exact forceSeek:(BOOL)seek;
- (void)setPlayerObserver:(id)observer;
- (void)setPosterFrame:(id *)frame;
- (void)setSeekTime:(id *)time;
- (void)setShowsUntrimmed:(BOOL)untrimmed completion:(id)completion;
- (void)stepByCount:(int64_t)count playheadTime:(id *)time;
@end

@implementation PXTrimToolPlayerWrapperNUMediaView

- (void)setSeekTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_seekTime.timescale = time->var3;
  *&self->_pipelineFiltersBeforeSeek = v3;
}

- (PXTrimToolPlayerWrapperNUMediaViewPlayerItemSource)playerItemSource
{
  WeakRetained = objc_loadWeakRetained(&self->_playerObserver);

  return WeakRetained;
}

- (PXTrimToolPlayerObserver)playerObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_showsUntrimmed);

  return WeakRetained;
}

- (void)setShowsUntrimmed:(BOOL)untrimmed completion:(id)completion
{
  untrimmedCopy = untrimmed;
  completionCopy = completion;
  v7 = completionCopy;
  if (BYTE4(self->_trimRange.duration.epoch) != untrimmedCopy)
  {
    fullVideoPipelineFilters = self->_fullVideoPipelineFilters;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __67__PXTrimToolPlayerWrapperNUMediaView_setShowsUntrimmed_completion___block_invoke;
    v19 = &unk_1E7748148;
    v20 = completionCopy;
    v21 = 1;
    [(NSArray *)fullVideoPipelineFilters installRenderingCompletionBlock:&v16];
    BYTE4(self->_trimRange.duration.epoch) = untrimmedCopy;
    v9 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView:v16];
    v10 = v9;
    if (untrimmedCopy)
    {
      pipelineFilters = [v9 pipelineFilters];
      [(PXTrimToolPlayerWrapperNUMediaView *)self setPipelineFiltersBeforeSeek:pipelineFilters];

      fullVideoPipelineFilters = [(PXTrimToolPlayerWrapperNUMediaView *)self fullVideoPipelineFilters];
    }

    else
    {
      fullVideoPipelineFilters = [(PXTrimToolPlayerWrapperNUMediaView *)self pipelineFiltersBeforeSeek];
      pipelineFilters2 = [v10 pipelineFilters];
      v14 = pipelineFilters2;
      if (pipelineFilters2 == fullVideoPipelineFilters)
      {

        goto LABEL_10;
      }

      v15 = [pipelineFilters2 isEqual:fullVideoPipelineFilters];

      if (v15)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    [v10 setPipelineFilters:fullVideoPipelineFilters];
    goto LABEL_10;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_11:
}

uint64_t __67__PXTrimToolPlayerWrapperNUMediaView_setShowsUntrimmed_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  if (mediaPlayer)
  {
    v6 = mediaPlayer;
    [mediaPlayer currentTime];
    mediaPlayer = v6;
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
  v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer:count];
  [v5 stepByCount:count];
}

- (void)pause
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  [mediaPlayer pause];
}

- (void)play
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  [mediaPlayer play];
}

- (BOOL)isPlaying
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  playbackState = [mediaPlayer playbackState];

  return playbackState == 3;
}

- (BOOL)isReadyToPlay
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  playbackState = [mediaPlayer playbackState];

  return (playbackState & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)invalidateComposition
{
  playerObserver = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
  [playerObserver compositionDidUpdateForPlayerWrapper:self];
}

- (void)requestAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  playerItemSource = [(PXTrimToolPlayerWrapperNUMediaView *)self playerItemSource];
  fullVideoPipelineFilters = [(PXTrimToolPlayerWrapperNUMediaView *)self fullVideoPipelineFilters];
  [playerItemSource trimToolPlayerWrapper:self requestAssetWithFilters:fullVideoPipelineFilters completion:completionCopy];
}

- (void)applyTrimTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *(&self->_trimRange.duration.value + 4) = *&range->var1.var1;
  *&self->_trimRange.start.flags = v4;
  *(&self->_delegateFlags + 2) = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange
{
  v3 = *(&self->var1.var0 + 4);
  *&retstr->var0.var0 = *&self->var0.var2;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *(&self->var1.var3 + 4);
  return self;
}

- (void)setPosterFrame:(id *)frame
{
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v5 = *frame;
  [mediaPlayer seekToTime:&v5 exact:1];
}

- (void)seekToTime:(id *)time untrimmed:(BOOL)untrimmed exact:(BOOL)exact forceSeek:(BOOL)seek
{
  untrimmedCopy = untrimmed;
  v11 = time->var2 & 0x11;
  memset(&v27, 0, sizeof(v27));
  [(PXTrimToolPlayerWrapperNUMediaView *)self seekTime];
  flags = v27.flags;
  time1 = *time;
  [(PXTrimToolPlayerWrapperNUMediaView *)self setSeekTime:&time1];
  mediaView = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView];
  v14 = mediaView;
  if (v11 == 1 && (flags & 1) == 0)
  {
    -[PXTrimToolPlayerWrapperNUMediaView setDidLoopVideoBeforeSeek:](self, "setDidLoopVideoBeforeSeek:", [mediaView loopsVideoPlayback]);
    if (untrimmedCopy)
    {
      [v14 setLoopsVideoPlayback:0];
    }

    [(PXTrimToolPlayerWrapperNUMediaView *)self setDidPlayBeforeSeek:[(PXTrimToolPlayerWrapperNUMediaView *)self isPlaying]];
    [(PXTrimToolPlayerWrapperNUMediaView *)self pause];
  }

  else if (v11 != 1)
  {
    time1 = v27;
    time2 = *time;
    if (CMTimeCompare(&time1, &time2))
    {
      [(PXTrimToolPlayerWrapperNUMediaView *)self setShowsUntrimmed:0];
      [(PXTrimToolPlayerWrapperNUMediaView *)self setPipelineFiltersBeforeSeek:0];
      loopsVideoPlayback = [v14 loopsVideoPlayback];
      if (loopsVideoPlayback != [(PXTrimToolPlayerWrapperNUMediaView *)self didLoopVideoBeforeSeek])
      {
        [v14 setLoopsVideoPlayback:{-[PXTrimToolPlayerWrapperNUMediaView didLoopVideoBeforeSeek](self, "didLoopVideoBeforeSeek")}];
      }

      if ([(PXTrimToolPlayerWrapperNUMediaView *)self didPlayBeforeSeek])
      {
        [(PXTrimToolPlayerWrapperNUMediaView *)self play];
      }

      else
      {
        [(PXTrimToolPlayerWrapperNUMediaView *)self pause];
      }
    }

    goto LABEL_18;
  }

  [(PXTrimToolPlayerWrapperNUMediaView *)self trimRange];
  if (!untrimmedCopy && (v25.flags & 0x1D) == 1)
  {
    time2 = *time;
    rhs = v25;
    CMTimeSubtract(&time1, &time2, &rhs);
    *time = time1;
  }

  objc_initWeak(&time1, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PXTrimToolPlayerWrapperNUMediaView_seekToTime_untrimmed_exact_forceSeek___block_invoke;
  v17[3] = &unk_1E7748120;
  seekCopy = seek;
  objc_copyWeak(&v18, &time1);
  v19 = *&time->var0;
  var3 = time->var3;
  exactCopy = exact;
  [(PXTrimToolPlayerWrapperNUMediaView *)self setShowsUntrimmed:untrimmedCopy completion:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&time1);
LABEL_18:
}

void __75__PXTrimToolPlayerWrapperNUMediaView_seekToTime_untrimmed_exact_forceSeek___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 64) | a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained mediaPlayer];
  v6 = *(a1 + 65);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  [v5 seekToTime:&v7 exact:v6 forceSeek:v3 & 1];
}

- (_PXTrimToolPlayerWrapperAVPlayerView)loupePlayerView
{
  mediaViewTimeObserver = self->_mediaViewTimeObserver;
  if (!mediaViewTimeObserver)
  {
    v4 = [_PXTrimToolPlayerWrapperAVPlayerView alloc];
    _currentAVPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self _currentAVPlayer];
    v6 = [(_PXTrimToolPlayerWrapperAVPlayerView *)v4 initWithPlayer:_currentAVPlayer];
    v7 = self->_mediaViewTimeObserver;
    self->_mediaViewTimeObserver = v6;

    mediaViewTimeObserver = self->_mediaViewTimeObserver;
  }

  return mediaViewTimeObserver;
}

- (void)setPlayerObserver:(id)observer
{
  observerCopy = observer;
  objc_storeWeak(&self->_showsUntrimmed, observerCopy);
  self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTimeChanged = v5 & 1;
}

- (void)_handleMediaPlayerObserverStatusChanged:(int64_t)changed
{
  if (self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper)
  {
    playerObserver = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
    [playerObserver playerStatusChangedForPlayerWrapper:self];
  }

  [(PXTrimToolPlayerWrapperNUMediaView *)self _updateLoupePlayerView];
}

- (void)_handleMediaPlayerObserverTimeChanged:(id *)changed
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_delegateFlags.respondsToTimeChanged)
  {
    [(PXTrimToolPlayerWrapperNUMediaView *)self trimRange];
    v13 = v9;
    v14 = v10;
    if (![(PXTrimToolPlayerWrapperNUMediaView *)self showsUntrimmed]&& (v11 & 0x1D) == 1)
    {
      lhs = *changed;
      rhs.value = v13;
      rhs.timescale = v14;
      rhs.flags = v11;
      rhs.epoch = v12;
      CMTimeAdd(&v8, &lhs, &rhs);
      *changed = v8;
    }

    playerObserver = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
    v8 = *changed;
    [playerObserver playerWrapper:self timeChanged:&v8];
  }
}

- (void)_removeTimeObserver
{
  mediaViewTimeObserver = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewTimeObserver];
  if (mediaViewTimeObserver)
  {
    v6 = mediaViewTimeObserver;
    mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
    [mediaPlayer removeObserver:v6];

    mediaViewObservers = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
    [mediaViewObservers removeObject:v6];

    [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewTimeObserver:0];
    mediaViewTimeObserver = v6;
  }
}

- (void)_removeMediaPlayerObserver
{
  v15 = *MEMORY[0x1E69E9840];
  [(PXTrimToolPlayerWrapperNUMediaView *)self _removeTimeObserver];
  mediaViewObservers = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
  [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewObservers:0];
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = mediaViewObservers;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [mediaPlayer removeObserver:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_registerTimeMediaViewObserver
{
  objc_initWeak(&location, self);
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __68__PXTrimToolPlayerWrapperNUMediaView__registerTimeMediaViewObserver__block_invoke;
  v9 = &unk_1E77480F8;
  objc_copyWeak(&v10, &location);
  v4 = [mediaPlayer addPlaybackTimeObserver:&v6];

  [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewTimeObserver:v4, v6, v7, v8, v9];
  mediaViewObservers = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
  [mediaViewObservers addObject:v4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __68__PXTrimToolPlayerWrapperNUMediaView__registerTimeMediaViewObserver__block_invoke(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = a2;
  v6 = v5;
  v10 = 0uLL;
  v11 = 0;
  if (v5)
  {
    [v5 currentSeekTime];
    if (BYTE12(v10))
    {
      *a3 = v10;
      *(a3 + 2) = v11;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = *a3;
  v9 = *(a3 + 2);
  [WeakRetained _handleMediaPlayerObserverTimeChanged:&v8];
}

- (void)_registerDefaultMediaViewObserver
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  mediaPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v4 = MEMORY[0x1E695DF70];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __71__PXTrimToolPlayerWrapperNUMediaView__registerDefaultMediaViewObserver__block_invoke;
  v11 = &unk_1E77480D0;
  objc_copyWeak(&v12, &location);
  v5 = [mediaPlayer addPlaybackStateObserver:&v8];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v7 = [v4 arrayWithArray:v6];
  [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewObservers:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __71__PXTrimToolPlayerWrapperNUMediaView__registerDefaultMediaViewObserver__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMediaPlayerObserverStatusChanged:a3];
}

- (void)_updateLoupePlayerView
{
  loupePlayerView = [(PXTrimToolPlayerWrapperNUMediaView *)self loupePlayerView];
  playerLayer = [loupePlayerView playerLayer];

  _currentAVPlayer = [(PXTrimToolPlayerWrapperNUMediaView *)self _currentAVPlayer];
  player = [playerLayer player];

  if (player != _currentAVPlayer)
  {
    [playerLayer setPlayer:_currentAVPlayer];
  }

  if (objc_opt_respondsToSelector())
  {
    [playerLayer setToneMapToStandardDynamicRange:1];
  }
}

- (AVPlayer)_currentAVPlayer
{
  mediaView = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView];
  _videoPlayerController = [mediaView _videoPlayerController];
  player = [_videoPlayerController player];

  return player;
}

- (void)dealloc
{
  [(PXTrimToolPlayerWrapperNUMediaView *)self _removeMediaPlayerObserver];
  v3.receiver = self;
  v3.super_class = PXTrimToolPlayerWrapperNUMediaView;
  [(PXTrimToolPlayerWrapperNUMediaView *)&v3 dealloc];
}

- (PXTrimToolPlayerWrapperNUMediaView)initWithNUMediaView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = PXTrimToolPlayerWrapperNUMediaView;
  v6 = [(PXTrimToolPlayerWrapperNUMediaView *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fullVideoPipelineFilters, view);
    player = [viewCopy player];
    mediaView = v7->_mediaView;
    v7->_mediaView = player;

    [(PXTrimToolPlayerWrapperNUMediaView *)v7 _registerDefaultMediaViewObserver];
  }

  return v7;
}

@end