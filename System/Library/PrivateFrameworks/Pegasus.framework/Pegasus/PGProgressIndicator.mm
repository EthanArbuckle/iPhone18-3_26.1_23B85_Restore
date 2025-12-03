@interface PGProgressIndicator
- (PGProgressIndicator)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background;
- (void)_applyPulseState;
- (void)_performLayout;
- (void)_transitionToPulseStateIfNeeded:(int64_t)needed;
- (void)_updateElapsedTrackTintColor;
- (void)_updatePulseAnimatorIfNeeded;
- (void)layoutSubviews;
- (void)setCustomElapsedTrackTintColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setProgress:(double)progress;
@end

@implementation PGProgressIndicator

- (PGProgressIndicator)initWithFrame:(CGRect)frame wantsGlassBackground:(BOOL)background
{
  backgroundCopy = background;
  v23.receiver = self;
  v23.super_class = PGProgressIndicator;
  v5 = [(PGMaterialView *)&v23 initWithFrame:frame.origin.x wantsGlassBackground:frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(PGProgressIndicator *)v5 setUserInteractionEnabled:0];
    v6->_wantsGlassBackground = backgroundCopy;
    if (backgroundCopy)
    {
      v7 = [PGCABackdropLayerView alloc];
      [(PGProgressIndicator *)v6 bounds];
      v8 = [(PGCABackdropLayerView *)v7 initWithFrame:v6->_wantsGlassBackground wantsGlassBackground:?];
      blurView = v6->_blurView;
      v6->_blurView = v8;

      [(PGCABackdropLayerView *)v6->_blurView setWantsBlur:1];
      [(PGProgressIndicator *)v6 insertSubview:v6->_blurView atIndex:0];
    }

    v10 = [PGVibrantFillView alloc];
    [(PGProgressIndicator *)v6 bounds];
    v11 = [(PGVibrantFillView *)v10 initWithFrame:?];
    completeTrack = v6->_completeTrack;
    v6->_completeTrack = v11;

    v13 = v6->_completeTrack;
    [(PGProgressIndicator *)v6 bounds];
    [(PGVibrantFillView *)v13 setFrame:?];
    v14 = v6->_completeTrack;
    v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    [(PGVibrantFillView *)v14 setTintColor:v15];

    contentView = [(PGMaterialView *)v6 contentView];
    [contentView addSubview:v6->_completeTrack];

    v17 = [PGVibrantFillView alloc];
    [(PGProgressIndicator *)v6 bounds];
    v18 = [(PGVibrantFillView *)v17 initWithFrame:?];
    elapsedTrack = v6->_elapsedTrack;
    v6->_elapsedTrack = v18;

    v20 = v6->_elapsedTrack;
    [(PGProgressIndicator *)v6 bounds];
    [(PGVibrantFillView *)v20 setFrame:?];
    contentView2 = [(PGMaterialView *)v6 contentView];
    [contentView2 addSubview:v6->_elapsedTrack];

    [(PGProgressIndicator *)v6 _updateElapsedTrackTintColor];
  }

  return v6;
}

- (void)setCustomElapsedTrackTintColor:(id)color
{
  colorCopy = color;
  customElapsedTrackTintColor = self->_customElapsedTrackTintColor;
  if (customElapsedTrackTintColor != colorCopy)
  {
    v8 = colorCopy;
    if (([(UIColor *)customElapsedTrackTintColor isEqual:colorCopy]& 1) == 0)
    {
      v6 = [(UIColor *)v8 copy];
      v7 = self->_customElapsedTrackTintColor;
      self->_customElapsedTrackTintColor = v6;

      [(PGProgressIndicator *)self _updateElapsedTrackTintColor];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setProgress:(double)progress
{
  IsValid = CGFloatIsValid();
  v6 = 0.0;
  v7 = fmin(fmax(progress, 0.0), 1.0);
  if (IsValid)
  {
    v6 = v7;
  }

  if (self->_progress != v6)
  {
    self->_progress = v6;

    [(PGProgressIndicator *)self _performLayout];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PGProgressIndicator;
  [(PGProgressIndicator *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PGProgressIndicator *)self _performLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PGProgressIndicator;
  [(PGMaterialView *)&v3 layoutSubviews];
  [(PGProgressIndicator *)self _performLayout];
}

- (void)_performLayout
{
  if (self->_wantsGlassBackground)
  {
    contentView = [(PGMaterialView *)self contentView];
    [contentView bounds];
    v5 = v4;
    v7 = v6;

    +[PGControlsViewLayoutMetrics defaultProgressIndicatorHeight];
    v9 = v7 / v8;
    +[PGControlsViewLayoutMetrics defaultProgressIndicatorCompleteTrackPadding];
    v11 = v5 + v9 * v10 * -2.0;
    v12 = v7 / 3.0;
    v13 = (v5 - v11) * 0.5;
    v14 = (v7 - v7 / 3.0) * 0.5;
    [(PGVibrantFillView *)self->_completeTrack setFrame:v13, v14, v11, v12];
    p_elapsedTrack = &self->_elapsedTrack;
    elapsedTrack = self->_elapsedTrack;
    [(PGProgressIndicator *)self progress];
    UIRoundToViewScale();
    [(PGVibrantFillView *)elapsedTrack setFrame:v13, v14, v17, v12];
    p_blurView = &self->_blurView;
    blurView = self->_blurView;
    [(PGVibrantFillView *)self->_completeTrack frame];
    [(PGCABackdropLayerView *)blurView setFrame:?];
    [(PGProgressIndicator *)self bounds];
    v20 = v12 * 0.5;
    [(PGMaterialView *)self _setCornerRadius:CGRectGetHeight(v34) * 0.5];
    completeTrack = self->_completeTrack;
  }

  else
  {
    p_elapsedTrack = &self->_completeTrack;
    v22 = self->_completeTrack;
    contentView2 = [(PGMaterialView *)self contentView];
    [contentView2 bounds];
    [(PGVibrantFillView *)v22 setFrame:?];

    contentView3 = [(PGMaterialView *)self contentView];
    [contentView3 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [(PGProgressIndicator *)self progress];
    UIRoundToViewScale();
    p_blurView = &self->_elapsedTrack;
    [(PGVibrantFillView *)self->_elapsedTrack setFrame:v26, v28, v31, v30];
    [(PGProgressIndicator *)self bounds];
    v20 = CGRectGetHeight(v35) * 0.5;
    completeTrack = self;
  }

  [completeTrack _setCornerRadius:v20];
  [(PGVibrantFillView *)*p_elapsedTrack _setCornerRadius:v20];
  v32 = *p_blurView;

  [v32 _setCornerRadius:v20];
}

- (void)_updateElapsedTrackTintColor
{
  wantsGlassBackground = self->_wantsGlassBackground;
  elapsedTrack = self->_elapsedTrack;
  customElapsedTrackTintColor = [(PGProgressIndicator *)self customElapsedTrackTintColor];
  v7 = customElapsedTrackTintColor;
  if (!wantsGlassBackground)
  {
    if (!customElapsedTrackTintColor)
    {
      whiteColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.35];
      goto LABEL_7;
    }

LABEL_5:
    [(PGVibrantFillView *)elapsedTrack setTintColor:customElapsedTrackTintColor];
    goto LABEL_8;
  }

  if (customElapsedTrackTintColor)
  {
    goto LABEL_5;
  }

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_7:
  v6 = whiteColor;
  [(PGVibrantFillView *)elapsedTrack setTintColor:whiteColor];

LABEL_8:
}

- (void)_updatePulseAnimatorIfNeeded
{
  includesWaitingToPlayIndicator = [(PGProgressIndicator *)self includesWaitingToPlayIndicator];
  pulseState = self->_pulseState;
  if (includesWaitingToPlayIndicator && !pulseState)
  {
    v5 = 1;
LABEL_9:

    [(PGProgressIndicator *)self _transitionToPulseStateIfNeeded:v5];
    return;
  }

  if (pulseState)
  {
    v6 = includesWaitingToPlayIndicator;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v5 = 0;
    goto LABEL_9;
  }
}

- (void)_transitionToPulseStateIfNeeded:(int64_t)needed
{
  if (self->_pulseState != needed)
  {
    self->_pulseState = needed;
    WeakRetained = objc_loadWeakRetained(&self->_pulseAnimator);
    if ([WeakRetained isRunning] && objc_msgSend(WeakRetained, "isInterruptible"))
    {
      [WeakRetained stopAnimation:0];
      [WeakRetained finishAnimationAtPosition:2];
    }

    if (needed)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.2;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v7 = objc_alloc(MEMORY[0x1E69DD278]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__PGProgressIndicator__transitionToPulseStateIfNeeded___block_invoke;
    v12[3] = &unk_1E7F32530;
    v12[4] = self;
    v18 = [v7 initWithDuration:3 curve:v12 animations:v6];
    objc_initWeak(&location, self);
    v8 = v14[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PGProgressIndicator__transitionToPulseStateIfNeeded___block_invoke_2;
    v9[3] = &unk_1E7F327B0;
    objc_copyWeak(v10, &location);
    v9[4] = &v13;
    v10[1] = needed;
    [v8 addCompletion:v9];
    objc_storeWeak(&self->_pulseAnimator, v14[5]);
    [v14[5] startAnimation];
    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v13, 8);
  }
}

void __55__PGProgressIndicator__transitionToPulseStateIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = objc_loadWeakRetained(WeakRetained + 59);
    v7 = v6;
    if (a2 || v5 != v6)
    {
    }

    else
    {
      v8 = [v14 includesWaitingToPlayIndicator];

      if (!v8)
      {
        goto LABEL_11;
      }

      objc_storeWeak(v14 + 59, 0);
      v9 = *(a1 + 48);
      if (v9 == 2)
      {
        v10 = v14;
        v11 = 1;
      }

      else
      {
        if (v9 != 1)
        {
          goto LABEL_11;
        }

        v10 = v14;
        v11 = 2;
      }

      [v10 _transitionToPulseStateIfNeeded:v11];
    }
  }

LABEL_11:
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

- (void)_applyPulseState
{
  [(PGProgressIndicator *)self frame];
  Width = CGRectGetWidth(v25);
  v4 = 1.0;
  v5 = 1.0;
  if (Width > 10.0)
  {
    v5 = (Width + -1.5) / Width;
    v4 = (Width + 1.5) / Width;
  }

  pulseState = self->_pulseState;
  if (pulseState == 2)
  {
    if (!self->_wantsGlassBackground)
    {
      elapsedTrack = self->_elapsedTrack;
      customElapsedTrackTintColor = [(PGProgressIndicator *)self customElapsedTrackTintColor];
      if (customElapsedTrackTintColor)
      {
        [(PGVibrantFillView *)elapsedTrack setTintColor:customElapsedTrackTintColor];
      }

      else
      {
        v16 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.45];
        [(PGVibrantFillView *)elapsedTrack setTintColor:v16];
      }
    }

    v14 = v4;
    v15 = v4;
    goto LABEL_21;
  }

  if (pulseState == 1)
  {
    if (!self->_wantsGlassBackground)
    {
      v9 = self->_elapsedTrack;
      customElapsedTrackTintColor2 = [(PGProgressIndicator *)self customElapsedTrackTintColor];
      if (customElapsedTrackTintColor2)
      {
        [(PGVibrantFillView *)v9 setTintColor:customElapsedTrackTintColor2];
      }

      else
      {
        v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.15];
        [(PGVibrantFillView *)v9 setTintColor:v13];
      }
    }

    v14 = v5;
    v15 = v5;
LABEL_21:
    CGAffineTransformMakeScale(&v24, v14, v15);
    goto LABEL_25;
  }

  if (pulseState)
  {
    goto LABEL_26;
  }

  if (!self->_wantsGlassBackground)
  {
    v7 = self->_elapsedTrack;
    customElapsedTrackTintColor3 = [(PGProgressIndicator *)self customElapsedTrackTintColor];
    if (customElapsedTrackTintColor3)
    {
      [(PGVibrantFillView *)v7 setTintColor:customElapsedTrackTintColor3];
    }

    else
    {
      v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.35];
      [(PGVibrantFillView *)v7 setTintColor:v17];
    }
  }

  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *&v24.a = *MEMORY[0x1E695EFD0];
  *&v24.c = v18;
  *&v24.tx = *(MEMORY[0x1E695EFD0] + 32);
LABEL_25:
  [(PGProgressIndicator *)self setTransform:&v24];
LABEL_26:
  if (self->_wantsGlassBackground)
  {
    v19 = self->_elapsedTrack;
    customElapsedTrackTintColor4 = [(PGProgressIndicator *)self customElapsedTrackTintColor];
    if (customElapsedTrackTintColor4)
    {
      [(PGVibrantFillView *)v19 setTintColor:customElapsedTrackTintColor4];
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(PGVibrantFillView *)v19 setTintColor:whiteColor];
    }
  }

  completeTrack = self->_completeTrack;
  v23 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{0.1, *&v24.a, *&v24.c, *&v24.tx}];
  [(PGVibrantFillView *)completeTrack setTintColor:v23];
}

@end