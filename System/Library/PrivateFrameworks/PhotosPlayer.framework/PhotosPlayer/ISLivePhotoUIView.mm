@interface ISLivePhotoUIView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (ISLivePhotoUIView)initWithCoder:(id)coder;
- (ISLivePhotoUIView)initWithFrame:(CGRect)frame;
- (ISLivePhotoUIViewDelegate)delegate;
- (void)_ISLivePhotoUIViewCommonInitialization;
- (void)_dismissOverlayLabel:(int64_t)label;
- (void)_playerDidChangeHinting;
- (void)_playerDidChangePlaybackStyle;
- (void)_setPlaybackFilter:(id)filter;
- (void)_showOverlayLabel;
- (void)_updateGestureRecognizerParameters;
- (void)_updatePlaybackFilter;
- (void)_updatePlaybackFilterInput;
- (void)_updateVideoTransform;
- (void)audioSessionDidChange;
- (void)contentDidChange;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setPlaybackFilterTouchActive:(BOOL)active;
- (void)setPlayer:(id)player;
- (void)setVitalityTransform:(id)transform;
@end

@implementation ISLivePhotoUIView

- (ISLivePhotoUIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  if (ISLivePhotoPlayerObservableContext != context)
  {
    v7.receiver = self;
    v7.super_class = ISLivePhotoUIView;
    [(ISBasePlayerUIView *)&v7 observable:observable didChange:change context:?];
    return;
  }

  [(ISLivePhotoUIView *)self _showOverlayLabel];
  if ((changeCopy & 8) == 0)
  {
    if ((changeCopy & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    [(ISLivePhotoUIView *)self _playerDidChangeHinting];
    if ((changeCopy & 0x10) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  [(ISLivePhotoUIView *)self _playerDidChangePlaybackStyle];
  if ((changeCopy & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((changeCopy & 0x10) == 0)
  {
    return;
  }

LABEL_9:

  [(ISLivePhotoUIView *)self _updateVideoTransform];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  playbackGestureRecognizer = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  if (playbackGestureRecognizer == recognizerCopy)
  {
    v9 = recognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && self->_delegateRespondsTo.extraMinimumTouchDuration)
  {
    delegate = [(ISLivePhotoUIView *)self delegate];
    [delegate livePhotoViewExtraMinimumTouchDuration:self touch:touchCopy];
    [v10 setExtraMinimumTouchDuration:?];
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (!self->_delegateRespondsTo.canBeginInteractivePlayback)
  {
    return 1;
  }

  selfCopy = self;
  beginCopy = begin;
  delegate = [(ISLivePhotoUIView *)selfCopy delegate];
  [beginCopy locationInView:selfCopy];
  v7 = v6;
  v9 = v8;

  LOBYTE(selfCopy) = [delegate livePhotoView:selfCopy canBeginInteractivePlaybackAtPoint:{v7, v9}];
  return selfCopy;
}

- (void)_updateGestureRecognizerParameters
{
  playbackGestureRecognizer = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    player = [(ISBasePlayerUIView *)self player];
    currentPlaybackStyle = [player currentPlaybackStyle];

    v5 = 1.79769313e308;
    if (currentPlaybackStyle != 1)
    {
      v5 = 10.0;
    }

    [playbackGestureRecognizer setMaximumTouchMovement:v5];
  }
}

- (void)_playerDidChangeHinting
{
  player = [(ISBasePlayerUIView *)self player];
  isHinting = [player isHinting];

  if (isHinting)
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(UIImpactFeedbackGenerator *)feedbackGenerator prepare];
  }
}

- (void)_playerDidChangePlaybackStyle
{
  player = [(ISBasePlayerUIView *)self player];
  currentPlaybackStyle = [player currentPlaybackStyle];

  if (currentPlaybackStyle == 1)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  }

  [(ISLivePhotoUIView *)self _updateGestureRecognizerParameters];
}

- (void)_dismissOverlayLabel:(int64_t)label
{
  if ([(ISLivePhotoUIView *)self _overlayDismissalID]== label)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__ISLivePhotoUIView__dismissOverlayLabel___block_invoke;
    v4[3] = &unk_279A2A180;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  }
}

void __42__ISLivePhotoUIView__dismissOverlayLabel___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _overlayLabel];
  [v1 setAlpha:0.0];
}

- (void)_showOverlayLabel
{
  v3 = +[ISPlayerSettings sharedInstance];
  showStateOverlay = [v3 showStateOverlay];

  if (showStateOverlay)
  {
    if (!self->__overlayLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      overlayLabel = self->__overlayLabel;
      self->__overlayLabel = v5;

      [(UILabel *)self->__overlayLabel setAlpha:0.0];
      v7 = self->__overlayLabel;
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)v7 setTextColor:whiteColor];

      v9 = self->__overlayLabel;
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.5];
      [(UILabel *)v9 setBackgroundColor:v10];

      layer = [(UILabel *)self->__overlayLabel layer];
      [layer setCornerRadius:8.0];

      layer2 = [(UILabel *)self->__overlayLabel layer];
      [layer2 setMasksToBounds:1];

      [(UILabel *)self->__overlayLabel setTextAlignment:1];
      [(ISLivePhotoUIView *)self addSubview:self->__overlayLabel];
    }

    player = [(ISBasePlayerUIView *)self player];
    if ([player isPlayingVitality])
    {
      v14 = @"Vitality";
    }

    else if ([player currentPlaybackStyle] == 2)
    {
      v14 = @"Hint";
    }

    else if ([player currentPlaybackStyle] == 1)
    {
      v14 = @"Full";
    }

    else
    {
      v14 = @"Idle";
    }

    [(UILabel *)self->__overlayLabel setText:v14];
    [(UILabel *)self->__overlayLabel sizeToFit];
    v15 = self->__overlayLabel;
    [(ISLivePhotoUIView *)self bounds];
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    MidX = CGRectGetMidX(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    [(UILabel *)v15 setCenter:MidX, CGRectGetMidY(v28)];
    v21 = self->__overlayLabel;
    [(UILabel *)v21 frame];
    v30 = CGRectInset(v29, -10.0, -10.0);
    [(UILabel *)v21 setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    [(UILabel *)self->__overlayLabel setAlpha:1.0];
    v22 = ([(ISLivePhotoUIView *)self _overlayDismissalID]+ 1);
    [(ISLivePhotoUIView *)self _setOverlayDismissalID:v22];
    objc_initWeak(&location, self);
    v23 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ISLivePhotoUIView__showOverlayLabel__block_invoke;
    block[3] = &unk_279A2A018;
    objc_copyWeak(v25, &location);
    v25[1] = v22;
    dispatch_after(v23, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
  }
}

void __38__ISLivePhotoUIView__showOverlayLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissOverlayLabel:*(a1 + 40)];
}

- (void)_updatePlaybackFilter
{
  wrappedAudioSession = [(ISBasePlayerUIView *)self wrappedAudioSession];

  if (wrappedAudioSession)
  {
    v4 = objc_alloc_init(ISTouchLivePhotoPlaybackFilter);
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  [(ISLivePhotoPlaybackFilter *)v4 setPlaybackDisabled:wrappedAudioSession == 0 forReason:@"ConfiguringAudioSession"];
  v5 = +[ISPlayerSettings sharedInstance];
  -[ISLivePhotoPlaybackFilter setPlayIsSticky:](v6, "setPlayIsSticky:", [v5 playIsSticky]);

  [(ISLivePhotoUIView *)self _setPlaybackFilter:v6];
}

- (void)contentDidChange
{
  v2.receiver = self;
  v2.super_class = ISLivePhotoUIView;
  [(ISBasePlayerUIView *)&v2 contentDidChange];
}

- (void)audioSessionDidChange
{
  v3.receiver = self;
  v3.super_class = ISLivePhotoUIView;
  [(ISBasePlayerUIView *)&v3 audioSessionDidChange];
  [(ISLivePhotoUIView *)self _updatePlaybackFilter];
}

- (void)_setPlaybackFilter:(id)filter
{
  filterCopy = filter;
  if (self->__playbackFilter != filterCopy)
  {
    v7 = filterCopy;
    player = [(ISBasePlayerUIView *)self player];
    [player removePlaybackFilter:self->__playbackFilter];
    objc_storeStrong(&self->__playbackFilter, filter);
    [player addPlaybackFilter:v7];

    filterCopy = v7;
  }
}

- (void)_updateVideoTransform
{
  player = [(ISBasePlayerUIView *)self player];
  isPlayingVitality = [player isPlayingVitality];

  if (isPlayingVitality)
  {
    vitalityTransform = [(ISLivePhotoUIView *)self vitalityTransform];
    [(ISBasePlayerUIView *)self setVideoTransform:vitalityTransform];
  }

  else
  {

    [(ISBasePlayerUIView *)self setVideoTransform:0];
  }
}

- (void)_updatePlaybackFilterInput
{
  playbackGestureRecognizer = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  [playbackGestureRecognizer distanceFromInitialPoint];
  v4 = v3;
  v5 = ([playbackGestureRecognizer state] - 1) < 2;
  _playbackFilter = [(ISLivePhotoUIView *)self _playbackFilter];
  state = [_playbackFilter state];

  if (state != 2 && v4 > 20.0)
  {
    [playbackGestureRecognizer setEnabled:0];
    [playbackGestureRecognizer setEnabled:1];
    v5 = 0;
  }

  [(ISLivePhotoUIView *)self setPlaybackFilterTouchActive:v5];
}

- (void)setPlaybackFilterTouchActive:(BOOL)active
{
  _playbackFilter = [(ISLivePhotoUIView *)self _playbackFilter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ISLivePhotoUIView_setPlaybackFilterTouchActive___block_invoke;
  v5[3] = &__block_descriptor_33_e8_v16__0_8l;
  activeCopy = active;
  [_playbackFilter performChanges:v5];
}

- (void)_ISLivePhotoUIViewCommonInitialization
{
  [(ISBasePlayerUIView *)self setContentMode:2];
  v8 = objc_alloc_init(ISLivePhotoPlayer);
  [(ISLivePhotoUIView *)self setPlayer:v8];
  [(ISLivePhotoUIView *)self _updatePlaybackFilter];
  v3 = [[ISTouchingGestureRecognizer alloc] initWithTarget:self action:sel__handlePlaybackRecognizer_];
  [(ISTouchingGestureRecognizer *)v3 setMinimumTouchDuration:0.15];
  [(ISTouchingGestureRecognizer *)v3 setCancelsTouchesInView:0];
  [(ISTouchingGestureRecognizer *)v3 setDelegate:self];
  [(ISTouchingGestureRecognizer *)v3 setRequireSingleTouch:1];
  [(ISLivePhotoUIView *)self addGestureRecognizer:v3];
  playbackGestureRecognizer = self->_playbackGestureRecognizer;
  self->_playbackGestureRecognizer = &v3->super;
  v5 = v3;

  [(ISLivePhotoUIView *)self _updateGestureRecognizerParameters];
  v6 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:0];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v6;
}

- (void)setVitalityTransform:(id)transform
{
  transformCopy = transform;
  v6 = transformCopy;
  if (self->_vitalityTransform != transformCopy)
  {
    v7 = transformCopy;
    transformCopy = [transformCopy isEqual:?];
    v6 = v7;
    if ((transformCopy & 1) == 0)
    {
      objc_storeStrong(&self->_vitalityTransform, transform);
      transformCopy = [(ISLivePhotoUIView *)self _updateVideoTransform];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](transformCopy, v6);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    self->_delegateRespondsTo.canBeginInteractivePlayback = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_delegate);
    p_delegateRespondsTo->extraMinimumTouchDuration = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = [(ISBasePlayerUIView *)self player];
  v6 = player;
  if (player != playerCopy)
  {
    [player unregisterChangeObserver:self context:ISLivePhotoPlayerObservableContext];
    _playbackFilter = [(ISLivePhotoUIView *)self _playbackFilter];
    [v6 removePlaybackFilter:_playbackFilter];

    v9.receiver = self;
    v9.super_class = ISLivePhotoUIView;
    [(ISBasePlayerUIView *)&v9 setPlayer:playerCopy];
    [playerCopy registerChangeObserver:self context:ISLivePhotoPlayerObservableContext];
    _playbackFilter2 = [(ISLivePhotoUIView *)self _playbackFilter];
    [playerCopy addPlaybackFilter:_playbackFilter2];
  }
}

- (void)dealloc
{
  [(ISLivePhotoUIView *)self setPlayer:0];
  view = [(UIGestureRecognizer *)self->_playbackGestureRecognizer view];
  [view removeGestureRecognizer:self->_playbackGestureRecognizer];

  v4.receiver = self;
  v4.super_class = ISLivePhotoUIView;
  [(ISLivePhotoUIView *)&v4 dealloc];
}

- (ISLivePhotoUIView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ISLivePhotoUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ISLivePhotoUIView *)v3 _ISLivePhotoUIViewCommonInitialization];
  }

  return v4;
}

- (ISLivePhotoUIView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ISLivePhotoUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISLivePhotoUIView *)v3 _ISLivePhotoUIViewCommonInitialization];
  }

  return v4;
}

@end