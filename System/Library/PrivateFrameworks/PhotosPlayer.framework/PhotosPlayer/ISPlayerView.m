@interface ISPlayerView
- (CGSize)dimensionsOfReservedVideoMemory;
- (ISPlayerView)initWithFrame:(CGRect)a3;
- (ISPlayerView)initWithVideoPlayer:(id)a3;
- (ISPlayerViewDelegate)delegate;
- (UIGestureRecognizer)gestureRecognizer;
- (id)videoPlayerForPlayer:(id)a3;
- (void)_handleGesture:(id)a3;
- (void)_setGestureRecognizer:(id)a3;
- (void)_setInteracting:(BOOL)a3;
- (void)_setPlaybackState:(int64_t)a3;
- (void)_setPlayerItem:(id)a3;
- (void)_setPlayerView:(id)a3;
- (void)_updateIfNeeded;
- (void)_updatePlaybackStateIfNeeded;
- (void)_updatePlayerItemLoadingTargetIfNeeded;
- (void)_updatePlayerMutedIfNeeded;
- (void)_updatePlayerPlayerItemIfNeeded;
- (void)_updatePlayerViewIfNeeded;
- (void)_updateReadyForDisplayIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAudioMuted:(BOOL)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setPlaybackStyle:(unint64_t)a3;
@end

@implementation ISPlayerView

- (CGSize)dimensionsOfReservedVideoMemory
{
  width = self->_dimensionsOfReservedVideoMemory.width;
  height = self->_dimensionsOfReservedVideoMemory.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ISPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)videoPlayerForPlayer:(id)a3
{
  v4 = [(ISPlayerView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ISPlayerView *)self delegate];
    v7 = [v6 videoPlayerForPlayerView:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ISPlayerObservationContext == a5)
  {
    if ((v6 & 2) != 0)
    {
      [(ISPlayerView *)self _invalidateStatus];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((v6 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((v6 & 0x10) == 0 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    [(ISPlayerView *)self _invalidatePlaybackState];
    goto LABEL_13;
  }

  if ((v6 & 1) != 0 && ISPlayerItemObservationContext == a5)
  {
    [(ISPlayerView *)self _invalidateReadyForDisplay];
  }

LABEL_13:
  [(ISPlayerView *)self _updateIfNeeded];
}

- (void)_updateReadyForDisplayIfNeeded
{
  if (!self->_isValid.readyForDisplay)
  {
    self->_isValid.readyForDisplay = 1;
    v4 = [(ISPlayerView *)self _playerItem];
    -[ISPlayerView _setReadyForDisplay:](self, "_setReadyForDisplay:", [v4 status] > 1);
  }
}

- (void)_updatePlaybackStateIfNeeded
{
  if (self->_isValid.playbackState)
  {
    return;
  }

  self->_isValid.playbackState = 1;
  v7 = [(ISPlayerView *)self _playerView];
  v4 = [v7 player];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 currentPlaybackStyle] - 1;
    if (v5 < 4)
    {
      v6 = qword_25E6986E0[v5];
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ([v4 isPlaying])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

LABEL_10:
  [(ISPlayerView *)self _setPlaybackState:v6];
}

- (void)_updateStatusIfNeeded
{
  if (!self->_isValid.status)
  {
    self->_isValid.status = 1;
    v8 = [(ISPlayerView *)self _playerView];
    v4 = [v8 player];
    v5 = [v4 status];
    if (v5 == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }

    [(ISPlayerView *)self _setStatus:v7];
  }
}

- (void)_updatePlayerMutedIfNeeded
{
  if (!self->_isValid.playerMuted)
  {
    self->_isValid.playerMuted = 1;
    v5 = [(ISPlayerView *)self _playerView];
    v4 = [v5 player];
    [v4 setAudioEnabled:{-[ISPlayerView audioMuted](self, "audioMuted") ^ 1}];
  }
}

- (void)_updatePlayerPlayerItemIfNeeded
{
  if (!self->_isValid.playerPlayerItem)
  {
    self->_isValid.playerPlayerItem = 1;
    v6 = [(ISPlayerView *)self _playerItem];
    v4 = [(ISPlayerView *)self _playerView];
    v5 = [v4 player];
    [v5 setPlayerItem:v6];
  }
}

- (void)_updatePlayerItemLoadingTargetIfNeeded
{
  if (!self->_isValid.playerItemLoadingTarget)
  {
    self->_isValid.playerItemLoadingTarget = 1;
    v5 = [(ISPlayerView *)self _playerItem];
    if ([(ISPlayerView *)self playbackStyle]== 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [v5 setLoadingTarget:v4];
    [v5 discardContentBelowLoadingTarget];
  }
}

- (void)_updatePlayerViewIfNeeded
{
  if (!self->_isValid.playerView)
  {
    self->_isValid.playerView = 1;
    v4 = [(ISPlayerView *)self playbackStyle];
    v5 = off_279A294F8;
    if (v4 != 1)
    {
      v5 = off_279A294E8;
    }

    v6 = *v5;
    v7 = objc_alloc_init(objc_opt_class());
    [v7 setAutoresizingMask:18];
    [v7 setContentMode:{-[ISPlayerView contentMode](self, "contentMode")}];
    [(ISPlayerView *)self _setPlayerView:v7];
  }
}

- (void)_updateIfNeeded
{
  if ([(ISPlayerView *)self _needsUpdate])
  {
    [(ISPlayerView *)self _updatePlayerViewIfNeeded];
    [(ISPlayerView *)self _updatePlayerItemLoadingTargetIfNeeded];
    [(ISPlayerView *)self _updatePlayerPlayerItemIfNeeded];
    [(ISPlayerView *)self _updatePlayerMutedIfNeeded];
    [(ISPlayerView *)self _updateStatusIfNeeded];
    [(ISPlayerView *)self _updatePlaybackStateIfNeeded];

    [(ISPlayerView *)self _updateReadyForDisplayIfNeeded];
  }
}

- (void)_setGestureRecognizer:(id)a3
{
  v5 = a3;
  if (self->__gestureRecognizer != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->__gestureRecognizer, a3);
    v5 = v7;
    if (self->_delegateRespondsTo.gestureRecognizerDidChange)
    {
      v6 = [(ISPlayerView *)self delegate];
      [v6 playerViewGestureRecognizerDidChange:self];

      v5 = v7;
    }
  }
}

- (void)_setPlayerView:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  playerView = self->__playerView;
  if (playerView != v5)
  {
    v7 = [(ISBasePlayerUIView *)playerView player];
    [v7 unregisterChangeObserver:self context:ISPlayerObservationContext];

    v8 = [(ISBasePlayerUIView *)self->__playerView player];
    [v8 setDelegate:0];

    [(ISBasePlayerUIView *)self->__playerView removeFromSuperview];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(ISBasePlayerUIView *)self->__playerView gestureRecognizers];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v28 + 1) + 8 * i) removeTarget:self action:0];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&self->__playerView, a3);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [(ISBasePlayerUIView *)self->__playerView gestureRecognizers];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v24 + 1) + 8 * j) addTarget:self action:sel__handleGesture_];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    v19 = [(ISBasePlayerUIView *)self->__playerView player];
    [v19 setDelegate:self];

    v20 = [(ISBasePlayerUIView *)self->__playerView player];
    [v20 registerChangeObserver:self context:ISPlayerObservationContext];

    v21 = self->__playerView;
    [(ISPlayerView *)self bounds];
    [(ISBasePlayerUIView *)v21 setFrame:?];
    [(ISPlayerView *)self addSubview:self->__playerView];
    [(ISPlayerView *)self _invalidatePlayerPlayerItem];
    v22 = [(ISBasePlayerUIView *)self->__playerView playbackGestureRecognizer];
    [(ISPlayerView *)self _setGestureRecognizer:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setPlaybackState:(int64_t)a3
{
  if (self->_playbackState != a3)
  {
    self->_playbackState = a3;
    if (self->_delegateRespondsTo.playbackStateDidChange)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerViewPlaybackStateDidChange:self];
    }
  }
}

- (void)_setInteracting:(BOOL)a3
{
  if (self->_isInteracting != a3)
  {
    self->_isInteracting = a3;
    if (self->_delegateRespondsTo.interactingDidChange)
    {
      v4 = [(ISPlayerView *)self delegate];
      [v4 playerViewIsInteractingDidChange:self];
    }
  }
}

- (void)_handleGesture:(id)a3
{
  v8 = a3;
  v4 = [v8 state];
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = [(ISPlayerView *)self _activeGestures];
      [v5 addObject:v8];
    }

    else
    {
      v5 = [(ISPlayerView *)self _activeGestures];
      [v5 removeObject:v8];
    }
  }

  v6 = [(ISPlayerView *)self _activeGestures];
  v7 = [v6 count] != 0;

  [(ISPlayerView *)self _setInteracting:v7];
}

- (void)_setPlayerItem:(id)a3
{
  v5 = a3;
  playerItem = self->__playerItem;
  if (playerItem != v5)
  {
    v7 = v5;
    [(ISObservable *)playerItem unregisterChangeObserver:self context:ISPlayerItemObservationContext];
    objc_storeStrong(&self->__playerItem, a3);
    [(ISObservable *)self->__playerItem registerChangeObserver:self context:ISPlayerItemObservationContext];
    [(ISPlayerItem *)self->__playerItem setLoadingTarget:2];
    [(ISPlayerView *)self _invalidatePlayerPlayerItem];
    [(ISPlayerView *)self _invalidatePlayerItemLoadingTarget];
    [(ISPlayerView *)self _invalidateReadyForDisplay];
    playerItem = [(ISPlayerView *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](playerItem, v5);
}

- (UIGestureRecognizer)gestureRecognizer
{
  v2 = [(ISPlayerView *)self _playerView];
  v3 = [v2 playbackGestureRecognizer];

  return v3;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->playbackStateDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->interactingDidChange = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->gestureRecognizerDidChange = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAudioMuted:(BOOL)a3
{
  if (self->_audioMuted != a3)
  {
    self->_audioMuted = a3;
    [(ISPlayerView *)self _invalidatePlayerMuted];

    [(ISPlayerView *)self _updateIfNeeded];
  }
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = ISPlayerView;
  [(ISPlayerView *)&v6 setContentMode:?];
  v5 = [(ISPlayerView *)self _playerView];
  [v5 setContentMode:a3];
}

- (void)setPlaybackStyle:(unint64_t)a3
{
  if (self->_playbackStyle != a3)
  {
    self->_playbackStyle = a3;
    [(ISPlayerView *)self _invalidatePlayerItemLoadingTarget];
    [(ISPlayerView *)self _invalidatePlayerView];

    [(ISPlayerView *)self _updateIfNeeded];
  }
}

- (ISPlayerView)initWithVideoPlayer:(id)a3
{
  v4 = a3;
  v5 = [(ISPlayerView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [[ISWrappedAVPlayer alloc] _initWithAVPlayer:v4];
    videoPlayer = v5->__videoPlayer;
    v5->__videoPlayer = v6;
  }

  return v5;
}

- (ISPlayerView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ISPlayerView;
  v3 = [(ISPlayerView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeGestures = v3->__activeGestures;
    v3->__activeGestures = v4;
  }

  return v3;
}

@end