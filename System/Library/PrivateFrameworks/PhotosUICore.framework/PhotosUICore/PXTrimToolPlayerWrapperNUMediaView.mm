@interface PXTrimToolPlayerWrapperNUMediaView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)trimRange;
- (AVPlayer)_currentAVPlayer;
- (BOOL)isPlaying;
- (BOOL)isReadyToPlay;
- (PXTrimToolPlayerObserver)playerObserver;
- (PXTrimToolPlayerWrapperNUMediaView)initWithNUMediaView:(id)a3;
- (PXTrimToolPlayerWrapperNUMediaViewPlayerItemSource)playerItemSource;
- (_PXTrimToolPlayerWrapperAVPlayerView)loupePlayerView;
- (void)_handleMediaPlayerObserverStatusChanged:(int64_t)a3;
- (void)_handleMediaPlayerObserverTimeChanged:(id *)a3;
- (void)_registerDefaultMediaViewObserver;
- (void)_registerTimeMediaViewObserver;
- (void)_removeMediaPlayerObserver;
- (void)_removeTimeObserver;
- (void)_updateLoupePlayerView;
- (void)applyTrimTimeRange:(id *)a3;
- (void)dealloc;
- (void)invalidateComposition;
- (void)pause;
- (void)play;
- (void)requestAssetWithCompletion:(id)a3;
- (void)seekToTime:(id *)a3 untrimmed:(BOOL)a4 exact:(BOOL)a5 forceSeek:(BOOL)a6;
- (void)setPlayerObserver:(id)a3;
- (void)setPosterFrame:(id *)a3;
- (void)setSeekTime:(id *)a3;
- (void)setShowsUntrimmed:(BOOL)a3 completion:(id)a4;
- (void)stepByCount:(int64_t)a3 playheadTime:(id *)a4;
@end

@implementation PXTrimToolPlayerWrapperNUMediaView

- (void)setSeekTime:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_seekTime.timescale = a3->var3;
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

- (void)setShowsUntrimmed:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (BYTE4(self->_trimRange.duration.epoch) != v4)
  {
    fullVideoPipelineFilters = self->_fullVideoPipelineFilters;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __67__PXTrimToolPlayerWrapperNUMediaView_setShowsUntrimmed_completion___block_invoke;
    v19 = &unk_1E7748148;
    v20 = v6;
    v21 = 1;
    [(NSArray *)fullVideoPipelineFilters installRenderingCompletionBlock:&v16];
    BYTE4(self->_trimRange.duration.epoch) = v4;
    v9 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView:v16];
    v10 = v9;
    if (v4)
    {
      v11 = [v9 pipelineFilters];
      [(PXTrimToolPlayerWrapperNUMediaView *)self setPipelineFiltersBeforeSeek:v11];

      v12 = [(PXTrimToolPlayerWrapperNUMediaView *)self fullVideoPipelineFilters];
    }

    else
    {
      v12 = [(PXTrimToolPlayerWrapperNUMediaView *)self pipelineFiltersBeforeSeek];
      v13 = [v10 pipelineFilters];
      v14 = v13;
      if (v13 == v12)
      {

        goto LABEL_10;
      }

      v15 = [v13 isEqual:v12];

      if (v15)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    [v10 setPipelineFilters:v12];
    goto LABEL_10;
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
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
  v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
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
  v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer:a3];
  [v5 stepByCount:a3];
}

- (void)pause
{
  v2 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  [v2 pause];
}

- (void)play
{
  v2 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  [v2 play];
}

- (BOOL)isPlaying
{
  v2 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v3 = [v2 playbackState];

  return v3 == 3;
}

- (BOOL)isReadyToPlay
{
  v2 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v3 = [v2 playbackState];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (void)invalidateComposition
{
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
  [v3 compositionDidUpdateForPlayerWrapper:self];
}

- (void)requestAssetWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(PXTrimToolPlayerWrapperNUMediaView *)self playerItemSource];
  v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self fullVideoPipelineFilters];
  [v6 trimToolPlayerWrapper:self requestAssetWithFilters:v5 completion:v4];
}

- (void)applyTrimTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *(&self->_trimRange.duration.value + 4) = *&a3->var1.var1;
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

- (void)setPosterFrame:(id *)a3
{
  v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v5 = *a3;
  [v4 seekToTime:&v5 exact:1];
}

- (void)seekToTime:(id *)a3 untrimmed:(BOOL)a4 exact:(BOOL)a5 forceSeek:(BOOL)a6
{
  v8 = a4;
  v11 = a3->var2 & 0x11;
  memset(&v27, 0, sizeof(v27));
  [(PXTrimToolPlayerWrapperNUMediaView *)self seekTime];
  flags = v27.flags;
  time1 = *a3;
  [(PXTrimToolPlayerWrapperNUMediaView *)self setSeekTime:&time1];
  v13 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView];
  v14 = v13;
  if (v11 == 1 && (flags & 1) == 0)
  {
    -[PXTrimToolPlayerWrapperNUMediaView setDidLoopVideoBeforeSeek:](self, "setDidLoopVideoBeforeSeek:", [v13 loopsVideoPlayback]);
    if (v8)
    {
      [v14 setLoopsVideoPlayback:0];
    }

    [(PXTrimToolPlayerWrapperNUMediaView *)self setDidPlayBeforeSeek:[(PXTrimToolPlayerWrapperNUMediaView *)self isPlaying]];
    [(PXTrimToolPlayerWrapperNUMediaView *)self pause];
  }

  else if (v11 != 1)
  {
    time1 = v27;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2))
    {
      [(PXTrimToolPlayerWrapperNUMediaView *)self setShowsUntrimmed:0];
      [(PXTrimToolPlayerWrapperNUMediaView *)self setPipelineFiltersBeforeSeek:0];
      v16 = [v14 loopsVideoPlayback];
      if (v16 != [(PXTrimToolPlayerWrapperNUMediaView *)self didLoopVideoBeforeSeek])
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
  if (!v8 && (v25.flags & 0x1D) == 1)
  {
    time2 = *a3;
    rhs = v25;
    CMTimeSubtract(&time1, &time2, &rhs);
    *a3 = time1;
  }

  objc_initWeak(&time1, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PXTrimToolPlayerWrapperNUMediaView_seekToTime_untrimmed_exact_forceSeek___block_invoke;
  v17[3] = &unk_1E7748120;
  v21 = a6;
  objc_copyWeak(&v18, &time1);
  v19 = *&a3->var0;
  var3 = a3->var3;
  v22 = a5;
  [(PXTrimToolPlayerWrapperNUMediaView *)self setShowsUntrimmed:v8 completion:v17];
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
    v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self _currentAVPlayer];
    v6 = [(_PXTrimToolPlayerWrapperAVPlayerView *)v4 initWithPlayer:v5];
    v7 = self->_mediaViewTimeObserver;
    self->_mediaViewTimeObserver = v6;

    mediaViewTimeObserver = self->_mediaViewTimeObserver;
  }

  return mediaViewTimeObserver;
}

- (void)setPlayerObserver:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_showsUntrimmed, v4);
  self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateFlags.respondsToTimeChanged = v5 & 1;
}

- (void)_handleMediaPlayerObserverStatusChanged:(int64_t)a3
{
  if (self->_delegateFlags.respondsToPlayerStatusChangedForPlayerWrapper)
  {
    v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
    [v4 playerStatusChangedForPlayerWrapper:self];
  }

  [(PXTrimToolPlayerWrapperNUMediaView *)self _updateLoupePlayerView];
}

- (void)_handleMediaPlayerObserverTimeChanged:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_delegateFlags.respondsToTimeChanged)
  {
    [(PXTrimToolPlayerWrapperNUMediaView *)self trimRange];
    v13 = v9;
    v14 = v10;
    if (![(PXTrimToolPlayerWrapperNUMediaView *)self showsUntrimmed]&& (v11 & 0x1D) == 1)
    {
      lhs = *a3;
      rhs.value = v13;
      rhs.timescale = v14;
      rhs.flags = v11;
      rhs.epoch = v12;
      CMTimeAdd(&v8, &lhs, &rhs);
      *a3 = v8;
    }

    v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self playerObserver];
    v8 = *a3;
    [v5 playerWrapper:self timeChanged:&v8];
  }
}

- (void)_removeTimeObserver
{
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewTimeObserver];
  if (v3)
  {
    v6 = v3;
    v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
    [v4 removeObserver:v6];

    v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
    [v5 removeObject:v6];

    [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewTimeObserver:0];
    v3 = v6;
  }
}

- (void)_removeMediaPlayerObserver
{
  v15 = *MEMORY[0x1E69E9840];
  [(PXTrimToolPlayerWrapperNUMediaView *)self _removeTimeObserver];
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
  [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewObservers:0];
  v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
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

        [v4 removeObserver:{*(*(&v10 + 1) + 8 * v9++), v10}];
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
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __68__PXTrimToolPlayerWrapperNUMediaView__registerTimeMediaViewObserver__block_invoke;
  v9 = &unk_1E77480F8;
  objc_copyWeak(&v10, &location);
  v4 = [v3 addPlaybackTimeObserver:&v6];

  [(PXTrimToolPlayerWrapperNUMediaView *)self setMediaViewTimeObserver:v4, v6, v7, v8, v9];
  v5 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaViewObservers];
  [v5 addObject:v4];

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
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaPlayer];
  v4 = MEMORY[0x1E695DF70];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __71__PXTrimToolPlayerWrapperNUMediaView__registerDefaultMediaViewObserver__block_invoke;
  v11 = &unk_1E77480D0;
  objc_copyWeak(&v12, &location);
  v5 = [v3 addPlaybackStateObserver:&v8];
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
  v3 = [(PXTrimToolPlayerWrapperNUMediaView *)self loupePlayerView];
  v6 = [v3 playerLayer];

  v4 = [(PXTrimToolPlayerWrapperNUMediaView *)self _currentAVPlayer];
  v5 = [v6 player];

  if (v5 != v4)
  {
    [v6 setPlayer:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setToneMapToStandardDynamicRange:1];
  }
}

- (AVPlayer)_currentAVPlayer
{
  v2 = [(PXTrimToolPlayerWrapperNUMediaView *)self mediaView];
  v3 = [v2 _videoPlayerController];
  v4 = [v3 player];

  return v4;
}

- (void)dealloc
{
  [(PXTrimToolPlayerWrapperNUMediaView *)self _removeMediaPlayerObserver];
  v3.receiver = self;
  v3.super_class = PXTrimToolPlayerWrapperNUMediaView;
  [(PXTrimToolPlayerWrapperNUMediaView *)&v3 dealloc];
}

- (PXTrimToolPlayerWrapperNUMediaView)initWithNUMediaView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXTrimToolPlayerWrapperNUMediaView;
  v6 = [(PXTrimToolPlayerWrapperNUMediaView *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fullVideoPipelineFilters, a3);
    v8 = [v5 player];
    mediaView = v7->_mediaView;
    v7->_mediaView = v8;

    [(PXTrimToolPlayerWrapperNUMediaView *)v7 _registerDefaultMediaViewObserver];
  }

  return v7;
}

@end