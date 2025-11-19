@interface PXFooterAnimatedIconView
- (AVPlayerItem)playerItem;
- (BOOL)isObscured;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXFooterAnimatedIconView)initWithFrame:(CGRect)a3;
- (id)_movieURL;
- (int64_t)desiredMode;
- (int64_t)presentedState;
- (void)_addReasonToPause:(unint64_t)a3;
- (void)_createPlayerIfNeeded;
- (void)_crossedGridCycleBoundary;
- (void)_didSeekToPlayFromTime:(id *)a3 toTime:(id *)a4;
- (void)_didSeekToTime:(id *)a3;
- (void)_hideVideo;
- (void)_layoutPlayer;
- (void)_playFromTime:(id *)a3 toTime:(id *)a4;
- (void)_removeReasonToPause:(unint64_t)a3;
- (void)_seekToTime:(id *)a3;
- (void)_setNeedsUpdate;
- (void)_transitionToState:(int64_t)a3;
- (void)_update;
- (void)_updateIsPlayerPaused;
- (void)_updateStyle;
- (void)_windowDidChange;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setDesiredMode:(int64_t)a3;
- (void)setHidden:(BOOL)a3;
- (void)setIsPlayerHidden:(BOOL)a3;
- (void)setIsPlayerPaused:(BOOL)a3;
- (void)setPlayerItem:(id)a3;
- (void)setPlayerLayer:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setWantsGridCycleTimeObservation:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXFooterAnimatedIconView

uint64_t __52__PXFooterAnimatedIconView__mediaServicesWereReset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 584);
  *(v4 + 584) = 0;

  v6 = *(a1 + 32);

  return [v6 _setNeedsUpdate];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXFooterAnimatedIconView;
  [(PXFooterAnimatedIconView *)&v4 traitCollectionDidChange:a3];
  [(PXFooterAnimatedIconView *)self _updateStyle];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXFooterAnimatedIconView;
  [(PXFooterAnimatedIconView *)&v3 didMoveToWindow];
  [(PXFooterAnimatedIconView *)self _windowDidChange];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXFooterAnimatedIconView;
  [(PXFooterAnimatedIconView *)&v3 layoutSubviews];
  [(PXFooterAnimatedIconView *)self _updateStyle];
  [(PXFooterAnimatedIconView *)self _layoutPlayer];
}

- (id)_movieURL
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(PXFooterAnimatedIconView *)self style];
  v4 = @"PXFooterAnimationLightWithAlpha";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3 == 2)
  {
    v5 = @"PXFooterAnimationDarkWithAlpha";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Photos/Resources/PXFooterAnimation.bundle"];
  v7 = [v6 URLForResource:v5 withExtension:@"mov"];

  return v7;
}

- (void)setStyle:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_style != a3)
  {
    self->_style = a3;
    v5 = [(PXFooterAnimatedIconView *)self _movieURL];
    if (v5)
    {
      v25 = 0uLL;
      v26 = 0;
      player = self->_player;
      if (player)
      {
        [(AVPlayer *)player currentTime];
        player = self->_player;
      }

      v23 = 0uLL;
      v24 = 0;
      v7 = [(AVPlayer *)player currentItem];
      v8 = v7;
      if (v7)
      {
        [v7 forwardPlaybackEndTime];
      }

      else
      {
        v23 = 0uLL;
        v24 = 0;
      }

      [(AVPlayer *)self->_player rate];
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:v5];
      [(AVPlayer *)self->_player replaceCurrentItemWithPlayerItem:v11];
      [(PXFooterAnimatedIconView *)self setPlayerItem:v11];
      v21 = v23;
      v22 = v24;
      [v11 setForwardPlaybackEndTime:&v21];
      if ((BYTE12(v25) & 0x1D) == 1)
      {
        objc_initWeak(&location, self->_player);
        v12 = self->_player;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __37__PXFooterAnimatedIconView_setStyle___block_invoke;
        v17[3] = &unk_1E7732650;
        objc_copyWeak(&v18, &location);
        v19 = v10;
        v21 = v25;
        v22 = v26;
        v15 = *MEMORY[0x1E6960CC0];
        v16 = *(MEMORY[0x1E6960CC0] + 16);
        v13 = v15;
        v14 = v16;
        [(AVPlayer *)v12 seekToTime:&v21 toleranceBefore:&v15 toleranceAfter:&v13 completionHandler:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __37__PXFooterAnimatedIconView_setStyle___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    LODWORD(v3) = v2;
    [WeakRetained setRate:v3];
  }
}

- (BOOL)isObscured
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  px_dispatch_on_main_queue_sync();
}

void __38__PXFooterAnimatedIconView_isObscured__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [*(a1 + 32) bounds];
  [v2 convertRect:*(a1 + 32) fromView:?];
  PXRectGetCenter();
}

- (int64_t)presentedState
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(AVPlayer *)self->_player status]!= AVPlayerStatusReadyToPlay || [(PXFooterAnimatedIconView *)self isPlayerHidden])
  {
    return 1;
  }

  result = self->_player;
  if (result)
  {
    [result currentTime];
    if (0 >> 96 == 1)
    {
      [(AVPlayer *)self->_player rate];
      if (v4 == 0.0)
      {
        lhs = self->_introStartTime;
        rhs = self->_loopStartTime;
        CMTimeAdd(&time, &lhs, &rhs);
        CMTimeMultiplyByFloat64(&lhs, &time, 0.5);
        memset(&time, 0, sizeof(time));
        if (CMTimeCompare(&time, &lhs) < 0)
        {
          return 2;
        }

        else
        {
          lhs = self->_loopEndTime;
          rhs = self->_outroEndTime;
          CMTimeAdd(&time, &lhs, &rhs);
          CMTimeMultiplyByFloat64(&lhs, &time, 0.5);
          memset(&time, 0, sizeof(time));
          if (CMTimeCompare(&time, &lhs) >= 1)
          {
            return 2;
          }

          else
          {
            return 4;
          }
        }
      }

      else
      {
        memset(&time, 0, sizeof(time));
        lhs = self->_loopStartTime;
        if (CMTimeCompare(&time, &lhs) < 1)
        {
          return 3;
        }

        else
        {
          memset(&time, 0, sizeof(time));
          lhs = self->_loopEndTime;
          if (CMTimeCompare(&time, &lhs) < 1)
          {
            return 5;
          }

          else
          {
            memset(&time, 0, sizeof(time));
            lhs = self->_outroEndTime;
            if (CMTimeCompare(&time, &lhs) >= 1)
            {
              return 0;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setIsPlayerPaused:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isPlayerPaused != v3)
  {
    self->_isPlayerPaused = v3;
    if (v3)
    {
      [(AVPlayer *)self->_player rate];
      self->_playerRateBeforePause = v6;
      player = self->_player;

      [(AVPlayer *)player pause];
    }

    else
    {
      *&v5 = self->_playerRateBeforePause;
      [(AVPlayer *)self->_player setRate:v5];

      [(PXFooterAnimatedIconView *)self _update];
    }
  }
}

- (void)setIsPlayerHidden:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_isPlayerHidden != v3)
  {
    self->_isPlayerHidden = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__PXFooterAnimatedIconView_setIsPlayerHidden___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __46__PXFooterAnimatedIconView_setIsPlayerHidden___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) playerLayer];
  [v3 setHidden:v2];

  v4 = MEMORY[0x1E6979518];

  return [v4 commit];
}

- (void)setPlayerItem:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  playerItem = self->_playerItem;
  if (playerItem != v9)
  {
    v6 = MEMORY[0x1E6987A10];
    if (playerItem)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:*v6 object:self->_playerItem];
    }

    objc_storeStrong(&self->_playerItem, a3);
    if (self->_playerItem)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__didPlayerToEndTime_ name:*v6 object:self->_playerItem];
    }
  }
}

- (AVPlayerItem)playerItem
{
  dispatch_assert_queue_V2(self->_queue);
  playerItem = self->_playerItem;

  return playerItem;
}

- (void)_didSeekToPlayFromTime:(id *)a3 toTime:(id *)a4
{
  dispatch_assert_queue_V2(self->_queue);
  time1 = *a4;
  v7 = [(AVPlayer *)self->_player currentItem];
  [v7 setForwardPlaybackEndTime:&time1];

  [(AVPlayer *)self->_player play];
  [(PXFooterAnimatedIconView *)self setIsPlayerHidden:0];
  time1 = *a3;
  loopStartTime = self->_loopStartTime;
  if (!CMTimeCompare(&time1, &loopStartTime))
  {
    time1 = *a4;
    loopStartTime = self->_loopEndTime;
    if (!CMTimeCompare(&time1, &loopStartTime))
    {
      [(PXFooterAnimatedIconView *)self setWantsGridCycleTimeObservation:1];
    }
  }
}

- (void)_playFromTime:(id *)a3 toTime:(id *)a4
{
  dispatch_assert_queue_V2(self->_queue);
  [(PXFooterAnimatedIconView *)self _createPlayerIfNeeded];
  [(AVPlayer *)self->_player pause];
  objc_initWeak(&location, self);
  v7 = self->_queue;
  player = self->_player;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__PXFooterAnimatedIconView__playFromTime_toTime___block_invoke;
  v17[3] = &unk_1E7732628;
  v9 = v7;
  v18 = v9;
  objc_copyWeak(&v19, &location);
  v20 = *&a3->var0;
  var3 = a3->var3;
  v22 = *&a4->var0;
  v11 = a4->var3;
  v21 = var3;
  v23 = v11;
  v16 = *a3;
  v14 = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  v12 = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVPlayer *)player seekToTime:&v16 toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:v17];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

void __49__PXFooterAnimatedIconView__playFromTime_toTime___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PXFooterAnimatedIconView__playFromTime_toTime___block_invoke_2;
    block[3] = &unk_1E7732600;
    objc_copyWeak(&v5, (a1 + 40));
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 88);
    dispatch_async(v3, block);
    objc_destroyWeak(&v5);
  }
}

void __49__PXFooterAnimatedIconView__playFromTime_toTime___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  [WeakRetained _didSeekToPlayFromTime:&v5 toTime:&v3];
}

- (void)_didSeekToTime:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);

  [(PXFooterAnimatedIconView *)self setIsPlayerHidden:0];
}

- (void)_seekToTime:(id *)a3
{
  dispatch_assert_queue_V2(self->_queue);
  [(PXFooterAnimatedIconView *)self _createPlayerIfNeeded];
  [(AVPlayer *)self->_player pause];
  objc_initWeak(&location, self);
  v5 = self->_queue;
  player = self->_player;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__PXFooterAnimatedIconView__seekToTime___block_invoke;
  v13[3] = &unk_1E77325D8;
  v7 = v5;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  v16 = *a3;
  v12 = *a3;
  v10 = *MEMORY[0x1E6960CC0];
  v11 = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  [(AVPlayer *)player seekToTime:&v12 toleranceBefore:&v10 toleranceAfter:&v8 completionHandler:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __40__PXFooterAnimatedIconView__seekToTime___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__PXFooterAnimatedIconView__seekToTime___block_invoke_2;
    v4[3] = &unk_1E7747EF8;
    objc_copyWeak(&v5, (a1 + 40));
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    dispatch_async(v3, v4);
    objc_destroyWeak(&v5);
  }
}

void __40__PXFooterAnimatedIconView__seekToTime___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _didSeekToTime:&v3];
}

- (void)_createPlayerIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_player)
  {
    v3 = [(PXFooterAnimatedIconView *)self _movieURL];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E6988098]) initWithURL:v3];
      player = self->_player;
      self->_player = v4;

      [(AVPlayer *)self->_player _setDisallowsVideoLayerDisplayCompositing:1];
      [(AVPlayer *)self->_player setPreventsDisplaySleepDuringVideoPlayback:0];
      [(AVPlayer *)self->_player setAllowsExternalPlayback:0];
      [(AVPlayer *)self->_player setMuted:1];
      [(AVPlayer *)self->_player setActionAtItemEnd:1];
      v6 = [(AVPlayer *)self->_player currentItem];
      [(PXFooterAnimatedIconView *)self setPlayerItem:v6];

      v7 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:self->_player];
      [v7 setHidden:self->_isPlayerHidden];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__PXFooterAnimatedIconView__createPlayerIfNeeded__block_invoke;
      v9[3] = &unk_1E774C620;
      v9[4] = self;
      v10 = v7;
      v8 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], v9);
    }
  }
}

- (void)_hideVideo
{
  dispatch_assert_queue_V2(self->_queue);

  [(PXFooterAnimatedIconView *)self setIsPlayerHidden:1];
}

- (void)_crossedGridCycleBoundary
{
  dispatch_assert_queue_V2(self->_queue);
  [(AVPlayer *)self->_player rate];
  if (v3 > 0.0)
  {
    player = self->_player;
    if (player)
    {
      [(AVPlayer *)player currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    time2 = self->_loopEndTime;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__PXFooterAnimatedIconView__crossedGridCycleBoundary__block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __53__PXFooterAnimatedIconView__crossedGridCycleBoundary__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXFooterAnimatedIconViewCrossedGridCycleBoundaryNotificationName" object:*(a1 + 32)];
}

- (void)setWantsGridCycleTimeObservation:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_wantsGridCycleTimeObservation != v3)
  {
    self->_wantsGridCycleTimeObservation = v3;
    if (self->_gridCycleTimeObservationToken)
    {
      [(AVPlayer *)self->_player removeTimeObserver:?];
      gridCycleTimeObservationToken = self->_gridCycleTimeObservationToken;
      self->_gridCycleTimeObservationToken = 0;

      if (!self->_wantsGridCycleTimeObservation)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    objc_initWeak(&location, self);
    player = self->_player;
    CMTimeMakeWithSeconds(&v12, 2.0, 60);
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PXFooterAnimatedIconView_setWantsGridCycleTimeObservation___block_invoke;
    v10[3] = &unk_1E7748F40;
    objc_copyWeak(&v11, &location);
    v8 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:&v12 queue:queue usingBlock:v10];
    v9 = self->_gridCycleTimeObservationToken;
    self->_gridCycleTimeObservationToken = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__PXFooterAnimatedIconView_setWantsGridCycleTimeObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _crossedGridCycleBoundary];
}

- (void)_transitionToState:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  [(PXFooterAnimatedIconView *)self setWantsGridCycleTimeObservation:0];
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        p_loopStartTime = &self->_loopStartTime;
        v6 = 496;
      }

      else
      {
        if (a3 != 6)
        {
          return;
        }

        p_loopStartTime = &self->_loopEndTime;
        v6 = 520;
      }

      goto LABEL_17;
    }

    v7 = 496;
LABEL_15:
    v8 = self + v7;
    v12 = *v8;
    epoch = *(v8 + 2);
    [(PXFooterAnimatedIconView *)self _seekToTime:&v12];
    return;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        return;
      }

      p_loopStartTime = &self->_introStartTime;
      v6 = 472;
LABEL_17:
      v9 = self + v6;
      v12 = *&p_loopStartTime->value;
      epoch = p_loopStartTime->epoch;
      v10 = *v9;
      v11 = *(v9 + 2);
      [(PXFooterAnimatedIconView *)self _playFromTime:&v12 toTime:&v10];
      return;
    }

    v7 = 448;
    goto LABEL_15;
  }

  [(PXFooterAnimatedIconView *)self _hideVideo];
}

- (void)_update
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(PXFooterAnimatedIconView *)self isPlayerPaused])
  {
    waitingState = self->_waitingState;
    self->_waitingState = 0;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__PXFooterAnimatedIconView__update__block_invoke;
    aBlock[3] = &unk_1E7732588;
    aBlock[4] = self;
    aBlock[5] = waitingState;
    aBlock[6] = v4;
    v6 = _Block_copy(aBlock);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __35__PXFooterAnimatedIconView__update__block_invoke_3;
    v26[3] = &unk_1E7747A98;
    v26[5] = v5;
    v26[4] = self;
    v7 = _Block_copy(v26);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __35__PXFooterAnimatedIconView__update__block_invoke_4;
    v24[3] = &unk_1E774C250;
    v8 = v6;
    v25 = v8;
    v9 = _Block_copy(v24);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __35__PXFooterAnimatedIconView__update__block_invoke_5;
    v19 = &unk_1E77325B0;
    v20 = self;
    v21 = v8;
    v22 = v7;
    v23 = waitingState;
    v10 = v7;
    v11 = v8;
    v12 = _Block_copy(&v16);
    v13 = [(PXFooterAnimatedIconView *)self presentedState:v16];
    v14 = [(PXFooterAnimatedIconView *)self desiredMode];
    if (v14 <= 1)
    {
      if (!v14)
      {
        v15 = 1;
        goto LABEL_23;
      }

      if (v14 != 1)
      {
        goto LABEL_25;
      }

      if (v13 >= 2)
      {
        if (v13 == 4)
        {
          v15 = 6;
          goto LABEL_23;
        }

LABEL_25:

        return;
      }

      goto LABEL_22;
    }

    if (v14 == 2)
    {
      if (v13 < 2)
      {
        v9[2](v9);
LABEL_22:
        v15 = 2;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        if (v12[2](v12))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        goto LABEL_23;
      }

      if (v13 != 4)
      {
        goto LABEL_25;
      }

      v15 = 5;
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_25;
      }

      if (v13 >= 2)
      {
        if (v13 == 4)
        {
          if (v12[2](v12))
          {
            v15 = 6;
          }

          else
          {
            v15 = 4;
          }

          goto LABEL_23;
        }

        goto LABEL_25;
      }

      v9[2](v9);
      v15 = 4;
    }

LABEL_23:
    if (v15 != v13)
    {
      [(PXFooterAnimatedIconView *)self _transitionToState:?];
    }

    goto LABEL_25;
  }
}

void __35__PXFooterAnimatedIconView__update__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 560) = a2;
  if (*(a1 + 40) != a2)
  {
    *(*(a1 + 32) + 568) = *(a1 + 48);
  }

  objc_initWeak(&location, *(a1 + 32));
  v3 = dispatch_time(0, 200000000);
  v4 = *(*(a1 + 32) + 432);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PXFooterAnimatedIconView__update__block_invoke_2;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

BOOL __35__PXFooterAnimatedIconView__update__block_invoke_3(uint64_t a1, double a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 568);
  return v2 < v3 + a2 && v2 >= v3;
}

BOOL __35__PXFooterAnimatedIconView__update__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return v2 == 0;
    }

    [*(a1 + 32) isObscured];
    (*(*(a1 + 40) + 16))();
    return 0;
  }

  if ([*(a1 + 32) isObscured])
  {
    v4 = *(*(a1 + 40) + 16);
LABEL_9:
    v4();
    return 0;
  }

  v5 = *(a1 + 48);
  v6 = +[PXFooterSettings sharedInstance];
  [v6 animationDelay];
  LODWORD(v5) = (*(v5 + 16))(v5);

  if (v5)
  {
    v4 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  return 1;
}

void __35__PXFooterAnimatedIconView__update__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

- (void)_setNeedsUpdate
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXFooterAnimatedIconView__setNeedsUpdate__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__PXFooterAnimatedIconView__setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

- (void)_layoutPlayer
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:235 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView _layoutPlayer]"}];
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [(PXFooterAnimatedIconView *)self layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PXFooterAnimatedIconView *)self playerLayer];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = MEMORY[0x1E6979518];

  [v14 commit];
}

- (void)_updateIsPlayerPaused
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:226 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView _updateIsPlayerPaused]"}];
  }

  v4 = self->_reasonsToPause != 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PXFooterAnimatedIconView__updateIsPlayerPaused__block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v8, &location);
  v9 = v4;
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__PXFooterAnimatedIconView__updateIsPlayerPaused__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsPlayerPaused:v1];
}

- (void)_removeReasonToPause:(unint64_t)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:220 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView _removeReasonToPause:]"}];
  }

  self->_reasonsToPause &= ~a3;

  [(PXFooterAnimatedIconView *)self _updateIsPlayerPaused];
}

- (void)_addReasonToPause:(unint64_t)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:214 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView _addReasonToPause:]"}];
  }

  self->_reasonsToPause |= a3;

  [(PXFooterAnimatedIconView *)self _updateIsPlayerPaused];
}

- (void)_updateStyle
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:183 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView _updateStyle]"}];
  }

  [(PXFooterAnimatedIconView *)self traitCollection];
  objc_claimAutoreleasedReturnValue();
  PXUserInterfaceStyleFromUITraitCollection();
}

void __40__PXFooterAnimatedIconView__updateStyle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStyle:v1];
}

- (void)setPlayerLayer:(id)a3
{
  v10 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:172 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView setPlayerLayer:]"}];
  }

  playerLayer = self->_playerLayer;
  v7 = v10;
  if (playerLayer != v10)
  {
    [(AVPlayerLayer *)playerLayer removeFromSuperlayer];
    objc_storeStrong(&self->_playerLayer, a3);
    v8 = [(PXFooterAnimatedIconView *)self layer];
    [v8 addSublayer:self->_playerLayer];

    [(PXFooterAnimatedIconView *)self setNeedsLayout];
    v7 = v10;
  }
}

- (void)setDesiredMode:(int64_t)a3
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXFooterAnimatedIconView.m" lineNumber:158 description:{@"%s must be called on the main thread", "-[PXFooterAnimatedIconView setDesiredMode:]"}];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_desiredMode == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_desiredMode = a3;
    os_unfair_lock_unlock(&self->_lock);

    [(PXFooterAnimatedIconView *)self _setNeedsUpdate];
  }
}

- (int64_t)desiredMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_desiredMode = self->_lock_desiredMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_desiredMode;
}

- (void)_windowDidChange
{
  v3 = [(PXFooterAnimatedIconView *)self window];

  if (v3)
  {

    [(PXFooterAnimatedIconView *)self _removeReasonToPause:2];
  }

  else
  {

    [(PXFooterAnimatedIconView *)self _addReasonToPause:2];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PXFooterAnimatedIconView;
  [(PXFooterAnimatedIconView *)&v5 setHidden:?];
  if (v3)
  {
    [(PXFooterAnimatedIconView *)self _addReasonToPause:1];
  }

  else
  {
    [(PXFooterAnimatedIconView *)self _removeReasonToPause:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 75.0;
  v4 = 75.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)dealloc
{
  [(AVPlayer *)self->_player removeTimeObserver:self->_gridCycleTimeObservationToken];
  v3.receiver = self;
  v3.super_class = PXFooterAnimatedIconView;
  [(PXFooterAnimatedIconView *)&v3 dealloc];
}

- (PXFooterAnimatedIconView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = PXFooterAnimatedIconView;
  v3 = [(PXFooterAnimatedIconView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.mobileslideshow.PXFooterAnimatedIconView", v5);
    v7 = *(v3 + 54);
    *(v3 + 54) = v6;

    v3[577] = 1;
    CMTimeMakeWithSeconds(&v14, 0.0, 60);
    v8 = *&v14.value;
    *(v3 + 58) = v14.epoch;
    *(v3 + 28) = v8;
    CMTimeMakeWithSeconds(&v14, 2.0, 60);
    v9 = *&v14.value;
    *(v3 + 61) = v14.epoch;
    *(v3 + 472) = v9;
    CMTimeMakeWithSeconds(&v14, 14.0, 60);
    v10 = *&v14.value;
    *(v3 + 64) = v14.epoch;
    *(v3 + 31) = v10;
    CMTimeMakeWithSeconds(&v14, 16.0, 60);
    v11 = *&v14.value;
    *(v3 + 67) = v14.epoch;
    *(v3 + 520) = v11;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v3 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v12 addObserver:v3 selector:sel__applicationDidEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v12 addObserver:v3 selector:sel__mediaServicesWereReset_ name:*MEMORY[0x1E6987370] object:0];
  }

  return v3;
}

@end