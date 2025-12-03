@interface ISPlayerView
- (CGSize)dimensionsOfReservedVideoMemory;
- (ISPlayerView)initWithFrame:(CGRect)frame;
- (ISPlayerView)initWithVideoPlayer:(id)player;
- (ISPlayerViewDelegate)delegate;
- (UIGestureRecognizer)gestureRecognizer;
- (id)videoPlayerForPlayer:(id)player;
- (void)_handleGesture:(id)gesture;
- (void)_setGestureRecognizer:(id)recognizer;
- (void)_setInteracting:(BOOL)interacting;
- (void)_setPlaybackState:(int64_t)state;
- (void)_setPlayerItem:(id)item;
- (void)_setPlayerView:(id)view;
- (void)_updateIfNeeded;
- (void)_updatePlaybackStateIfNeeded;
- (void)_updatePlayerItemLoadingTargetIfNeeded;
- (void)_updatePlayerMutedIfNeeded;
- (void)_updatePlayerPlayerItemIfNeeded;
- (void)_updatePlayerViewIfNeeded;
- (void)_updateReadyForDisplayIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAudioMuted:(BOOL)muted;
- (void)setContentMode:(int64_t)mode;
- (void)setDelegate:(id)delegate;
- (void)setPlaybackStyle:(unint64_t)style;
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

- (id)videoPlayerForPlayer:(id)player
{
  delegate = [(ISPlayerView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ISPlayerView *)self delegate];
    v7 = [delegate2 videoPlayerForPlayerView:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ISPlayerObservationContext == context)
  {
    if ((changeCopy & 2) != 0)
    {
      [(ISPlayerView *)self _invalidateStatus];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((changeCopy & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((changeCopy & 0x10) == 0 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    [(ISPlayerView *)self _invalidatePlaybackState];
    goto LABEL_13;
  }

  if ((changeCopy & 1) != 0 && ISPlayerItemObservationContext == context)
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
    _playerItem = [(ISPlayerView *)self _playerItem];
    -[ISPlayerView _setReadyForDisplay:](self, "_setReadyForDisplay:", [_playerItem status] > 1);
  }
}

- (void)_updatePlaybackStateIfNeeded
{
  if (self->_isValid.playbackState)
  {
    return;
  }

  self->_isValid.playbackState = 1;
  _playerView = [(ISPlayerView *)self _playerView];
  player = [_playerView player];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [player currentPlaybackStyle] - 1;
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

  if ([player isPlaying])
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
    _playerView = [(ISPlayerView *)self _playerView];
    player = [_playerView player];
    status = [player status];
    if (status == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    if (status == 2)
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
    _playerView = [(ISPlayerView *)self _playerView];
    player = [_playerView player];
    [player setAudioEnabled:{-[ISPlayerView audioMuted](self, "audioMuted") ^ 1}];
  }
}

- (void)_updatePlayerPlayerItemIfNeeded
{
  if (!self->_isValid.playerPlayerItem)
  {
    self->_isValid.playerPlayerItem = 1;
    _playerItem = [(ISPlayerView *)self _playerItem];
    _playerView = [(ISPlayerView *)self _playerView];
    player = [_playerView player];
    [player setPlayerItem:_playerItem];
  }
}

- (void)_updatePlayerItemLoadingTargetIfNeeded
{
  if (!self->_isValid.playerItemLoadingTarget)
  {
    self->_isValid.playerItemLoadingTarget = 1;
    _playerItem = [(ISPlayerView *)self _playerItem];
    if ([(ISPlayerView *)self playbackStyle]== 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [_playerItem setLoadingTarget:v4];
    [_playerItem discardContentBelowLoadingTarget];
  }
}

- (void)_updatePlayerViewIfNeeded
{
  if (!self->_isValid.playerView)
  {
    self->_isValid.playerView = 1;
    playbackStyle = [(ISPlayerView *)self playbackStyle];
    v5 = off_279A294F8;
    if (playbackStyle != 1)
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

- (void)_setGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->__gestureRecognizer != recognizerCopy)
  {
    v7 = recognizerCopy;
    objc_storeStrong(&self->__gestureRecognizer, recognizer);
    recognizerCopy = v7;
    if (self->_delegateRespondsTo.gestureRecognizerDidChange)
    {
      delegate = [(ISPlayerView *)self delegate];
      [delegate playerViewGestureRecognizerDidChange:self];

      recognizerCopy = v7;
    }
  }
}

- (void)_setPlayerView:(id)view
{
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  playerView = self->__playerView;
  if (playerView != viewCopy)
  {
    player = [(ISBasePlayerUIView *)playerView player];
    [player unregisterChangeObserver:self context:ISPlayerObservationContext];

    player2 = [(ISBasePlayerUIView *)self->__playerView player];
    [player2 setDelegate:0];

    [(ISBasePlayerUIView *)self->__playerView removeFromSuperview];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    gestureRecognizers = [(ISBasePlayerUIView *)self->__playerView gestureRecognizers];
    v10 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(gestureRecognizers);
          }

          [*(*(&v28 + 1) + 8 * i) removeTarget:self action:0];
        }

        v11 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&self->__playerView, view);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    gestureRecognizers2 = [(ISBasePlayerUIView *)self->__playerView gestureRecognizers];
    v15 = [gestureRecognizers2 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(gestureRecognizers2);
          }

          [*(*(&v24 + 1) + 8 * j) addTarget:self action:sel__handleGesture_];
        }

        v16 = [gestureRecognizers2 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    player3 = [(ISBasePlayerUIView *)self->__playerView player];
    [player3 setDelegate:self];

    player4 = [(ISBasePlayerUIView *)self->__playerView player];
    [player4 registerChangeObserver:self context:ISPlayerObservationContext];

    v21 = self->__playerView;
    [(ISPlayerView *)self bounds];
    [(ISBasePlayerUIView *)v21 setFrame:?];
    [(ISPlayerView *)self addSubview:self->__playerView];
    [(ISPlayerView *)self _invalidatePlayerPlayerItem];
    playbackGestureRecognizer = [(ISBasePlayerUIView *)self->__playerView playbackGestureRecognizer];
    [(ISPlayerView *)self _setGestureRecognizer:playbackGestureRecognizer];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_setPlaybackState:(int64_t)state
{
  if (self->_playbackState != state)
  {
    self->_playbackState = state;
    if (self->_delegateRespondsTo.playbackStateDidChange)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained playerViewPlaybackStateDidChange:self];
    }
  }
}

- (void)_setInteracting:(BOOL)interacting
{
  if (self->_isInteracting != interacting)
  {
    self->_isInteracting = interacting;
    if (self->_delegateRespondsTo.interactingDidChange)
    {
      delegate = [(ISPlayerView *)self delegate];
      [delegate playerViewIsInteractingDidChange:self];
    }
  }
}

- (void)_handleGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state != 2)
  {
    if (state == 1)
    {
      _activeGestures = [(ISPlayerView *)self _activeGestures];
      [_activeGestures addObject:gestureCopy];
    }

    else
    {
      _activeGestures = [(ISPlayerView *)self _activeGestures];
      [_activeGestures removeObject:gestureCopy];
    }
  }

  _activeGestures2 = [(ISPlayerView *)self _activeGestures];
  v7 = [_activeGestures2 count] != 0;

  [(ISPlayerView *)self _setInteracting:v7];
}

- (void)_setPlayerItem:(id)item
{
  itemCopy = item;
  playerItem = self->__playerItem;
  if (playerItem != itemCopy)
  {
    v7 = itemCopy;
    [(ISObservable *)playerItem unregisterChangeObserver:self context:ISPlayerItemObservationContext];
    objc_storeStrong(&self->__playerItem, item);
    [(ISObservable *)self->__playerItem registerChangeObserver:self context:ISPlayerItemObservationContext];
    [(ISPlayerItem *)self->__playerItem setLoadingTarget:2];
    [(ISPlayerView *)self _invalidatePlayerPlayerItem];
    [(ISPlayerView *)self _invalidatePlayerItemLoadingTarget];
    [(ISPlayerView *)self _invalidateReadyForDisplay];
    playerItem = [(ISPlayerView *)self _updateIfNeeded];
    itemCopy = v7;
  }

  MEMORY[0x2821F96F8](playerItem, itemCopy);
}

- (UIGestureRecognizer)gestureRecognizer
{
  _playerView = [(ISPlayerView *)self _playerView];
  playbackGestureRecognizer = [_playerView playbackGestureRecognizer];

  return playbackGestureRecognizer;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setAudioMuted:(BOOL)muted
{
  if (self->_audioMuted != muted)
  {
    self->_audioMuted = muted;
    [(ISPlayerView *)self _invalidatePlayerMuted];

    [(ISPlayerView *)self _updateIfNeeded];
  }
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = ISPlayerView;
  [(ISPlayerView *)&v6 setContentMode:?];
  _playerView = [(ISPlayerView *)self _playerView];
  [_playerView setContentMode:mode];
}

- (void)setPlaybackStyle:(unint64_t)style
{
  if (self->_playbackStyle != style)
  {
    self->_playbackStyle = style;
    [(ISPlayerView *)self _invalidatePlayerItemLoadingTarget];
    [(ISPlayerView *)self _invalidatePlayerView];

    [(ISPlayerView *)self _updateIfNeeded];
  }
}

- (ISPlayerView)initWithVideoPlayer:(id)player
{
  playerCopy = player;
  v5 = [(ISPlayerView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [[ISWrappedAVPlayer alloc] _initWithAVPlayer:playerCopy];
    videoPlayer = v5->__videoPlayer;
    v5->__videoPlayer = v6;
  }

  return v5;
}

- (ISPlayerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ISPlayerView;
  v3 = [(ISPlayerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeGestures = v3->__activeGestures;
    v3->__activeGestures = v4;
  }

  return v3;
}

@end