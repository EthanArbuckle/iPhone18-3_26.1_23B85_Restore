@interface ISLivePhotoUIView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (ISLivePhotoUIView)initWithCoder:(id)a3;
- (ISLivePhotoUIView)initWithFrame:(CGRect)a3;
- (ISLivePhotoUIViewDelegate)delegate;
- (void)_ISLivePhotoUIViewCommonInitialization;
- (void)_dismissOverlayLabel:(int64_t)a3;
- (void)_playerDidChangeHinting;
- (void)_playerDidChangePlaybackStyle;
- (void)_setPlaybackFilter:(id)a3;
- (void)_showOverlayLabel;
- (void)_updateGestureRecognizerParameters;
- (void)_updatePlaybackFilter;
- (void)_updatePlaybackFilterInput;
- (void)_updateVideoTransform;
- (void)audioSessionDidChange;
- (void)contentDidChange;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDelegate:(id)a3;
- (void)setPlaybackFilterTouchActive:(BOOL)a3;
- (void)setPlayer:(id)a3;
- (void)setVitalityTransform:(id)a3;
@end

@implementation ISLivePhotoUIView

- (ISLivePhotoUIViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5 = a4;
  if (ISLivePhotoPlayerObservableContext != a5)
  {
    v7.receiver = self;
    v7.super_class = ISLivePhotoUIView;
    [(ISBasePlayerUIView *)&v7 observable:a3 didChange:a4 context:?];
    return;
  }

  [(ISLivePhotoUIView *)self _showOverlayLabel];
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    [(ISLivePhotoUIView *)self _playerDidChangeHinting];
    if ((v5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  [(ISLivePhotoUIView *)self _playerDidChangePlaybackStyle];
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return;
  }

LABEL_9:

  [(ISLivePhotoUIView *)self _updateVideoTransform];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  if (v8 == v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && self->_delegateRespondsTo.extraMinimumTouchDuration)
  {
    v11 = [(ISLivePhotoUIView *)self delegate];
    [v11 livePhotoViewExtraMinimumTouchDuration:self touch:v7];
    [v10 setExtraMinimumTouchDuration:?];
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (!self->_delegateRespondsTo.canBeginInteractivePlayback)
  {
    return 1;
  }

  v3 = self;
  v4 = a3;
  v5 = [(ISLivePhotoUIView *)v3 delegate];
  [v4 locationInView:v3];
  v7 = v6;
  v9 = v8;

  LOBYTE(v3) = [v5 livePhotoView:v3 canBeginInteractivePlaybackAtPoint:{v7, v9}];
  return v3;
}

- (void)_updateGestureRecognizerParameters
{
  v6 = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(ISBasePlayerUIView *)self player];
    v4 = [v3 currentPlaybackStyle];

    v5 = 1.79769313e308;
    if (v4 != 1)
    {
      v5 = 10.0;
    }

    [v6 setMaximumTouchMovement:v5];
  }
}

- (void)_playerDidChangeHinting
{
  v3 = [(ISBasePlayerUIView *)self player];
  v4 = [v3 isHinting];

  if (v4)
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(UIImpactFeedbackGenerator *)feedbackGenerator prepare];
  }
}

- (void)_playerDidChangePlaybackStyle
{
  v3 = [(ISBasePlayerUIView *)self player];
  v4 = [v3 currentPlaybackStyle];

  if (v4 == 1)
  {
    [(UIImpactFeedbackGenerator *)self->_feedbackGenerator impactOccurred];
  }

  [(ISLivePhotoUIView *)self _updateGestureRecognizerParameters];
}

- (void)_dismissOverlayLabel:(int64_t)a3
{
  if ([(ISLivePhotoUIView *)self _overlayDismissalID]== a3)
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
  v4 = [v3 showStateOverlay];

  if (v4)
  {
    if (!self->__overlayLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      overlayLabel = self->__overlayLabel;
      self->__overlayLabel = v5;

      [(UILabel *)self->__overlayLabel setAlpha:0.0];
      v7 = self->__overlayLabel;
      v8 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)v7 setTextColor:v8];

      v9 = self->__overlayLabel;
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.5];
      [(UILabel *)v9 setBackgroundColor:v10];

      v11 = [(UILabel *)self->__overlayLabel layer];
      [v11 setCornerRadius:8.0];

      v12 = [(UILabel *)self->__overlayLabel layer];
      [v12 setMasksToBounds:1];

      [(UILabel *)self->__overlayLabel setTextAlignment:1];
      [(ISLivePhotoUIView *)self addSubview:self->__overlayLabel];
    }

    v13 = [(ISBasePlayerUIView *)self player];
    if ([v13 isPlayingVitality])
    {
      v14 = @"Vitality";
    }

    else if ([v13 currentPlaybackStyle] == 2)
    {
      v14 = @"Hint";
    }

    else if ([v13 currentPlaybackStyle] == 1)
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
  v3 = [(ISBasePlayerUIView *)self wrappedAudioSession];

  if (v3)
  {
    v4 = objc_alloc_init(ISTouchLivePhotoPlaybackFilter);
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  [(ISLivePhotoPlaybackFilter *)v4 setPlaybackDisabled:v3 == 0 forReason:@"ConfiguringAudioSession"];
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

- (void)_setPlaybackFilter:(id)a3
{
  v5 = a3;
  if (self->__playbackFilter != v5)
  {
    v7 = v5;
    v6 = [(ISBasePlayerUIView *)self player];
    [v6 removePlaybackFilter:self->__playbackFilter];
    objc_storeStrong(&self->__playbackFilter, a3);
    [v6 addPlaybackFilter:v7];

    v5 = v7;
  }
}

- (void)_updateVideoTransform
{
  v3 = [(ISBasePlayerUIView *)self player];
  v4 = [v3 isPlayingVitality];

  if (v4)
  {
    v5 = [(ISLivePhotoUIView *)self vitalityTransform];
    [(ISBasePlayerUIView *)self setVideoTransform:v5];
  }

  else
  {

    [(ISBasePlayerUIView *)self setVideoTransform:0];
  }
}

- (void)_updatePlaybackFilterInput
{
  v8 = [(ISLivePhotoUIView *)self playbackGestureRecognizer];
  [v8 distanceFromInitialPoint];
  v4 = v3;
  v5 = ([v8 state] - 1) < 2;
  v6 = [(ISLivePhotoUIView *)self _playbackFilter];
  v7 = [v6 state];

  if (v7 != 2 && v4 > 20.0)
  {
    [v8 setEnabled:0];
    [v8 setEnabled:1];
    v5 = 0;
  }

  [(ISLivePhotoUIView *)self setPlaybackFilterTouchActive:v5];
}

- (void)setPlaybackFilterTouchActive:(BOOL)a3
{
  v4 = [(ISLivePhotoUIView *)self _playbackFilter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ISLivePhotoUIView_setPlaybackFilterTouchActive___block_invoke;
  v5[3] = &__block_descriptor_33_e8_v16__0_8l;
  v6 = a3;
  [v4 performChanges:v5];
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

- (void)setVitalityTransform:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_vitalityTransform != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_vitalityTransform, a3);
      v5 = [(ISLivePhotoUIView *)self _updateVideoTransform];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(ISBasePlayerUIView *)self player];
  v6 = v5;
  if (v5 != v4)
  {
    [v5 unregisterChangeObserver:self context:ISLivePhotoPlayerObservableContext];
    v7 = [(ISLivePhotoUIView *)self _playbackFilter];
    [v6 removePlaybackFilter:v7];

    v9.receiver = self;
    v9.super_class = ISLivePhotoUIView;
    [(ISBasePlayerUIView *)&v9 setPlayer:v4];
    [v4 registerChangeObserver:self context:ISLivePhotoPlayerObservableContext];
    v8 = [(ISLivePhotoUIView *)self _playbackFilter];
    [v4 addPlaybackFilter:v8];
  }
}

- (void)dealloc
{
  [(ISLivePhotoUIView *)self setPlayer:0];
  v3 = [(UIGestureRecognizer *)self->_playbackGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_playbackGestureRecognizer];

  v4.receiver = self;
  v4.super_class = ISLivePhotoUIView;
  [(ISLivePhotoUIView *)&v4 dealloc];
}

- (ISLivePhotoUIView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ISLivePhotoUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ISLivePhotoUIView *)v3 _ISLivePhotoUIViewCommonInitialization];
  }

  return v4;
}

- (ISLivePhotoUIView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ISLivePhotoUIView;
  v3 = [(ISBasePlayerUIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ISLivePhotoUIView *)v3 _ISLivePhotoUIViewCommonInitialization];
  }

  return v4;
}

@end