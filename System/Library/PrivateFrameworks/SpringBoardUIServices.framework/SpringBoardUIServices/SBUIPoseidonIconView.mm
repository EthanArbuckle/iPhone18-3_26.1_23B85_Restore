@interface SBUIPoseidonIconView
- (CGAffineTransform)localTransform;
- (CGRect)_physicalButtonNormalizedFrame;
- (CGRect)sidebarFrame;
- (SBUIPoseidonIconView)initWithFrame:(CGRect)frame;
- (SBUIPoseidonIconViewDelegate)delegate;
- (double)_fontSize;
- (void)_cancelRestToOpenIdleTimer;
- (void)_cancelRestToOpenProgress;
- (void)_contentSizeCategoryDidChange;
- (void)_startReduceMotionShimmer;
- (void)_startRestToOpenIdleTimer;
- (void)_startShimmer;
- (void)_stopShimmer;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)fillRestToOpenWithDuration:(double)duration;
- (void)layoutSubviews;
- (void)resetRestToOpen;
- (void)setLegibilitySettings:(id)settings;
- (void)setLocalTransform:(CGAffineTransform *)transform;
- (void)setState:(int64_t)state forIdleTimeout:(BOOL)timeout withCompletion:(id)completion;
@end

@implementation SBUIPoseidonIconView

- (SBUIPoseidonIconView)initWithFrame:(CGRect)frame
{
  v52[3] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = SBUIPoseidonIconView;
  v3 = [(SBUIPoseidonIconView *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E69DD5C8]);
    coachingButton = v3->_coachingButton;
    v3->_coachingButton = v5;

    [(_UILegibilityView *)v3->_coachingButton setStrength:0.25];
    v7 = v3->_coachingButton;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(_UILegibilityView *)v7 setBackgroundColor:whiteColor];

    [(SBUIPoseidonIconView *)v3 addSubview:v3->_coachingButton];
    [(SBUIPoseidonIconView *)v3 setClipsToBounds:1];
    layer = [(_UILegibilityView *)v3->_coachingButton layer];
    [layer setCornerRadius:5.0];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    coachingLabelRotationView = v3->_coachingLabelRotationView;
    v3->_coachingLabelRotationView = v9;

    [(SBUIPoseidonIconView *)v3 addSubview:v3->_coachingLabelRotationView];
    v11 = v3->_coachingLabelRotationView;
    v12 = *&v3->_localTransform.a;
    v13 = *&v3->_localTransform.tx;
    v48 = *&v3->_localTransform.c;
    v49 = v13;
    v47 = v12;
    [(UIView *)v11 setTransform:&v47];
    layer2 = [MEMORY[0x1E6979380] layer];
    shimmerGradient = v3->_shimmerGradient;
    v3->_shimmerGradient = layer2;

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
    v18 = v3->_shimmerGradient;
    v52[0] = [v17 CGColor];
    v52[1] = [whiteColor2 CGColor];
    v52[2] = [v17 CGColor];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
    [(CAGradientLayer *)v18 setColors:v19];

    [(CAGradientLayer *)v3->_shimmerGradient setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v3->_shimmerGradient setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)v3->_shimmerGradient setLocations:&unk_1F1DB5C98];
    v20 = [SBUILegibilityLabel alloc];
    legibilitySettings = [(SBUIPoseidonIconView *)v3 legibilitySettings];
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"TOUCH_ID" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices-j307"];
    v24 = MEMORY[0x1E69DB878];
    [(SBUIPoseidonIconView *)v3 _fontSize];
    v25 = [v24 systemFontOfSize:? weight:?];
    v26 = [(SBUILegibilityLabel *)v20 initWithSettings:legibilitySettings strength:v23 string:v25 font:0.25];
    coachingLabel = v3->_coachingLabel;
    v3->_coachingLabel = v26;

    [(SBUILegibilityLabel *)v3->_coachingLabel setNumberOfLines:0];
    [(UIView *)v3->_coachingLabelRotationView addSubview:v3->_coachingLabel];
    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    restToOpenLabelRotationView = v3->_restToOpenLabelRotationView;
    v3->_restToOpenLabelRotationView = v28;

    [(SBUIPoseidonIconView *)v3 addSubview:v3->_restToOpenLabelRotationView];
    v30 = v3->_restToOpenLabelRotationView;
    v31 = *&v3->_localTransform.a;
    v32 = *&v3->_localTransform.tx;
    v48 = *&v3->_localTransform.c;
    v49 = v32;
    v47 = v31;
    [(UIView *)v30 setTransform:&v47];
    layer3 = [MEMORY[0x1E6979380] layer];
    progressFillGradient = v3->_progressFillGradient;
    v3->_progressFillGradient = layer3;

    v35 = v3->_progressFillGradient;
    v51[0] = [whiteColor2 CGColor];
    v51[1] = [v17 CGColor];
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [(CAGradientLayer *)v35 setColors:v36];

    [(CAGradientLayer *)v3->_progressFillGradient setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v3->_progressFillGradient setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)v3->_progressFillGradient setLocations:&unk_1F1DB5CB0];
    v37 = [SBUILegibilityLabel alloc];
    legibilitySettings2 = [(SBUIPoseidonIconView *)v3 legibilitySettings];
    v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"REST_TO_OPEN" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices-j307"];
    v41 = MEMORY[0x1E69DB878];
    [(SBUIPoseidonIconView *)v3 _fontSize];
    v42 = [v41 systemFontOfSize:? weight:?];
    v43 = [(SBUILegibilityLabel *)v37 initWithSettings:legibilitySettings2 strength:v40 string:v42 font:0.25];
    restToOpenLabel = v3->_restToOpenLabel;
    v3->_restToOpenLabel = v43;

    [(SBUILegibilityLabel *)v3->_restToOpenLabel setNumberOfLines:0];
    [(UIView *)v3->_restToOpenLabelRotationView addSubview:v3->_restToOpenLabel];
    [(_UILegibilityView *)v3->_coachingButton setAlpha:0.0];
    [(UIView *)v3->_coachingLabelRotationView setAlpha:0.0];
    [(UIView *)v3->_restToOpenLabelRotationView setAlpha:0.0];
    [(SBUIPoseidonIconView *)v3 setNeedsLayout];
  }

  return v3;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(_UILegibilityView *)self->_coachingButton updateForChangedSettings:settingsCopy];
    [(SBUILegibilityLabel *)self->_coachingLabel setLegibilitySettings:settingsCopy];
    [(SBUILegibilityLabel *)self->_restToOpenLabel setLegibilitySettings:settingsCopy];
  }
}

- (void)setState:(int64_t)state forIdleTimeout:(BOOL)timeout withCompletion:(id)completion
{
  timeoutCopy = timeout;
  completionCopy = completion;
  if (self->_state != state)
  {
    self->_state = state;
    switch(state)
    {
      case 2:
        [(SBUIPoseidonIconView *)self _stopShimmer];
        delegate = [(SBUIPoseidonIconView *)self delegate];
        [delegate poseidonIconViewCoachingStateDidChange:self];

        v18 = MEMORY[0x1E69DD250];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_7;
        v21[3] = &unk_1E789DA38;
        v21[4] = self;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_8;
        v19[3] = &unk_1E78A0400;
        v19[4] = self;
        v20 = completionCopy;
        [v18 animateWithDuration:v21 animations:v19 completion:0.15];

        break;
      case 1:
        v9 = MEMORY[0x1E69DD250];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_5;
        v23[3] = &unk_1E789DA38;
        v23[4] = self;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_6;
        v22[3] = &unk_1E789DC08;
        v22[4] = self;
        v14 = 0.0;
        v15 = v23;
        v16 = v22;
LABEL_10:
        [v9 animateWithDuration:v15 animations:v16 completion:v14];
        break;
      case 0:
        [(SBUIPoseidonIconView *)self _stopShimmer];
        [(SBUIPoseidonIconView *)self _cancelRestToOpenIdleTimer];
        if (timeoutCopy)
        {
          [(_UILegibilityView *)self->_coachingButton frame];
          v9 = MEMORY[0x1E69DD250];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke;
          v27[3] = &unk_1E78A03D8;
          v27[4] = self;
          v27[5] = v10;
          v27[6] = v11;
          v27[7] = v12;
          v27[8] = v13;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_2;
          v26[3] = &unk_1E789DC08;
          v26[4] = self;
          v14 = 0.5;
          v15 = v27;
          v16 = v26;
        }

        else
        {
          v9 = MEMORY[0x1E69DD250];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_3;
          v25[3] = &unk_1E789DA38;
          v25[4] = self;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_4;
          v24[3] = &unk_1E789DC08;
          v24[4] = self;
          v14 = 0.15;
          v15 = v25;
          v16 = v24;
        }

        goto LABEL_10;
    }

    [(SBUIPoseidonIconView *)self _cancelRestToOpenProgress];
    [(SBUIPoseidonIconView *)self setNeedsLayout];
  }
}

uint64_t __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setFrame:{*(a1 + 40), -*(a1 + 64), *(a1 + 56)}];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:0.0];
}

void __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 poseidonIconViewCoachingStateDidChange:*(a1 + 32)];
}

uint64_t __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:0.0];
}

void __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 poseidonIconViewCoachingStateDidChange:*(a1 + 32)];
}

uint64_t __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(*(a1 + 32) + 432) setAlpha:0.7];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:0.0];
}

void __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 poseidonIconViewCoachingStateDidChange:*(a1 + 32)];
}

uint64_t __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_7(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:0.7];
}

uint64_t __63__SBUIPoseidonIconView_setState_forIdleTimeout_withCompletion___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _startRestToOpenIdleTimer];
}

- (void)fillRestToOpenWithDuration:(double)duration
{
  [(SBUIPoseidonIconView *)self _cancelRestToOpenIdleTimer];
  if (duration > 0.0)
  {
    [(UIView *)self->_restToOpenLabelRotationView alpha];
    if (BSFloatGreaterThanFloat())
    {
      [(UIView *)self->_restToOpenLabelRotationView setAlpha:1.0];
    }

    progressFillGradient = self->_progressFillGradient;
    [(UIView *)self->_restToOpenLabelRotationView bounds];
    v7 = v6 * 1.2;
    [(UIView *)self->_restToOpenLabelRotationView bounds];
    [(CAGradientLayer *)progressFillGradient setFrame:0.0, 0.0, v7];
    layer = [(UIView *)self->_restToOpenLabelRotationView layer];
    [layer setMask:self->_progressFillGradient];

    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"locations"];
    locations = [(CAGradientLayer *)self->_progressFillGradient locations];
    [v11 setFromValue:locations];

    [v11 setToValue:&unk_1F1DB5CC8];
    LODWORD(v10) = 1.0;
    [v11 setRepeatCount:v10];
    [v11 setDuration:duration];
    [v11 setDelegate:self];
    [(CAGradientLayer *)self->_progressFillGradient removeAllAnimations];
    [(CAGradientLayer *)self->_progressFillGradient addAnimation:v11 forKey:@"fillGradient"];
    self->_fullProgressFillDuration = duration;
    self->_startProgressFillTime = CACurrentMediaTime();
    self->_isFilling = 1;
  }
}

- (void)resetRestToOpen
{
  [(SBUIPoseidonIconView *)self _cancelRestToOpenProgress];
  [(SBUIPoseidonIconView *)self _startRestToOpenIdleTimer];

  [(SBUIPoseidonIconView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = SBUIPoseidonIconView;
  [(SBUIPoseidonIconView *)&v71 layoutSubviews];
  if ((self->_state - 1) <= 1)
  {
    [(SBUIPoseidonIconView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(SBUIPoseidonIconView *)self frame];
    v8 = v7;
    v10 = v9;
    v11 = MEMORY[0x1E69DDA98];
    if (([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 1) >= 2)
    {
      v8 = v10;
    }

    [(SBUIPoseidonIconView *)self _physicalButtonNormalizedFrame];
    [(_UILegibilityView *)self->_coachingButton setFrame:v4 * v12, v6 * v13 + -18.0, v8 * v14, 24.0];
    [(_UILegibilityView *)self->_coachingButton center];
    v16 = v15;
    [(_UILegibilityView *)self->_coachingButton frame];
    v17 = v4 - CGRectGetMaxX(v72);
    state = self->_state;
    if (state == 1)
    {
      [(SBUILegibilityLabel *)self->_coachingLabel sizeThatFits:250.0, v6];
      v20 = v19;
      v22 = v21;
      v23 = [*v11 activeInterfaceOrientation] - 3;
      [(_UILegibilityView *)self->_coachingButton frame];
      v24 = CGRectGetMaxY(v73) + 10.0;
      v25 = 0;
      v26 = 0;
      v27 = v20;
      v28 = v22;
      if (v23 > 1)
      {
        v30 = v24 + CGRectGetHeight(*&v25) * 0.5;
        [(SBUILegibilityLabel *)self->_coachingLabel baselineOffset];
        v29 = v30 - v31;
        if (v20 >= 82.0)
        {
          v16 = v4 - v17 + v20 * -0.5;
        }
      }

      else
      {
        v29 = v24 + CGRectGetWidth(*&v25) * 0.5;
      }

      if ([*v11 activeInterfaceOrientation] == 1)
      {
        v32 = 2;
      }

      else
      {
        v32 = 2 * ([*v11 activeInterfaceOrientation] == 4);
      }

      [(SBUILegibilityLabel *)self->_coachingLabel setTextAlignment:v32];
      [(UIView *)self->_coachingLabelRotationView setBounds:0.0, 0.0, v20, v22];
      [(UIView *)self->_coachingLabelRotationView setCenter:v16, v29];
      coachingLabel = self->_coachingLabel;
      [(UIView *)self->_coachingLabelRotationView bounds];
      [(SBUILegibilityLabel *)coachingLabel setFrame:?];
      if ([*v11 activeInterfaceOrientation] == 3 && self->_containsFirstRowIcons)
      {
        [(UIView *)self->_coachingLabelRotationView setHidden:1];
      }

      else
      {
        [(UIView *)self->_coachingLabelRotationView setHidden:0];
        [(SBUIPoseidonIconView *)self _startShimmer];
      }

      state = self->_state;
    }

    if (state == 2)
    {
      [(SBUILegibilityLabel *)self->_restToOpenLabel sizeThatFits:250.0, v6];
      v35 = v34;
      v37 = v36;
      v38 = [*v11 activeInterfaceOrientation] - 3;
      [(_UILegibilityView *)self->_coachingButton frame];
      v39 = CGRectGetMaxY(v74) + 10.0;
      v40 = 0;
      v41 = 0;
      v42 = v35;
      v43 = v37;
      if (v38 > 1)
      {
        v45 = v39 + CGRectGetHeight(*&v40) * 0.5;
        [(SBUILegibilityLabel *)self->_restToOpenLabel baselineOffset];
        v44 = v45 - v46;
        if (v35 >= 82.0)
        {
          v16 = v4 - v17 + v35 * -0.5;
        }
      }

      else
      {
        v44 = v39 + CGRectGetWidth(*&v40) * 0.5;
      }

      if ([*v11 activeInterfaceOrientation] == 1)
      {
        v47 = 2;
      }

      else
      {
        v47 = 2 * ([*v11 activeInterfaceOrientation] == 4);
      }

      [(SBUILegibilityLabel *)self->_restToOpenLabel setTextAlignment:v47];
      if ([*v11 activeInterfaceOrientation] == 3)
      {
        containsFirstRowIcons = self->_containsFirstRowIcons;
        if (self->_containsFirstRowIcons)
        {
          v16 = v16 + 10.0;
        }
      }

      else
      {
        containsFirstRowIcons = 0;
      }

      [(UIView *)self->_restToOpenLabelRotationView setBounds:0.0, 0.0, v35, v37];
      [(UIView *)self->_restToOpenLabelRotationView setCenter:v16, v44];
      if (containsFirstRowIcons)
      {
        [(UIView *)self->_restToOpenLabelRotationView frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        superview = [(SBUIPoseidonIconView *)self superview];
        [(SBUIPoseidonIconView *)self convertRect:superview toView:v50, v52, v54, v56];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v75.origin.x = v59;
        v75.origin.y = v61;
        v75.size.width = v63;
        v75.size.height = v65;
        if (CGRectIntersectsRect(self->_sidebarFrame, v75))
        {
          v66 = v61 + v65 - self->_sidebarFrame.origin.y;
          [(UIView *)self->_restToOpenLabelRotationView center];
          v68 = v66 + v67 + 3.0;
          restToOpenLabelRotationView = self->_restToOpenLabelRotationView;
          [(UIView *)restToOpenLabelRotationView center];
          [(UIView *)restToOpenLabelRotationView setCenter:v68];
        }
      }

      restToOpenLabel = self->_restToOpenLabel;
      [(UIView *)self->_restToOpenLabelRotationView bounds];
      [(SBUILegibilityLabel *)restToOpenLabel setFrame:?];
    }
  }
}

- (void)setLocalTransform:(CGAffineTransform *)transform
{
  p_localTransform = &self->_localTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_localTransform.c;
  *&v14.a = *&self->_localTransform.a;
  *&v14.c = v7;
  *&v14.tx = *&self->_localTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v14))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_localTransform->c = *&transform->c;
    *&p_localTransform->tx = v9;
    *&p_localTransform->a = v8;
    coachingLabelRotationView = self->_coachingLabelRotationView;
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [(UIView *)coachingLabelRotationView setTransform:&t1];
    restToOpenLabelRotationView = self->_restToOpenLabelRotationView;
    v13 = *&p_localTransform->c;
    *&t1.a = *&p_localTransform->a;
    *&t1.c = v13;
    *&t1.tx = *&p_localTransform->tx;
    [(UIView *)restToOpenLabelRotationView setTransform:&t1];
  }
}

- (double)_fontSize
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC20]) || UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC28]) || UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC30]) || UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]))
  {
    v4 = 32.0;
  }

  else
  {
    v4 = 28.0;
    if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC40]))
    {
      v4 = 24.0;
      if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]))
      {
        v4 = 22.0;
        if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]))
        {
          v4 = 20.0;
          if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]))
          {
            v4 = 19.0;
            if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]))
            {
              v4 = 18.0;
              if (!UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC78]) && !UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC88]))
              {
                if (UIContentSizeCategoryIsEqualToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC68]))
                {
                  v4 = 16.0;
                }

                else
                {
                  v4 = 18.0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (CGRect)_physicalButtonNormalizedFrame
{
  if (_physicalButtonNormalizedFrame_onceToken != -1)
  {
    [SBUIPoseidonIconView _physicalButtonNormalizedFrame];
  }

  v3 = *(&_physicalButtonNormalizedFrame_frame + 1);
  v2 = *&_physicalButtonNormalizedFrame_frame;
  v4 = *&qword_1EB3EF968;
  v5 = unk_1EB3EF970;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void __54__SBUIPoseidonIconView__physicalButtonNormalizedFrame__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = BytePtr[1];
      _physicalButtonNormalizedFrame_frame = *BytePtr;
      *&qword_1EB3EF968 = v4;
    }

    CFRelease(v1);
  }
}

- (void)_contentSizeCategoryDidChange
{
  coachingLabel = self->_coachingLabel;
  v4 = MEMORY[0x1E69DB878];
  [(SBUIPoseidonIconView *)self _fontSize];
  v5 = [v4 systemFontOfSize:? weight:?];
  [(SBUILegibilityLabel *)coachingLabel setFont:v5];

  restToOpenLabel = self->_restToOpenLabel;
  v7 = MEMORY[0x1E69DB878];
  [(SBUIPoseidonIconView *)self _fontSize];
  v8 = [v7 systemFontOfSize:? weight:?];
  [(SBUILegibilityLabel *)restToOpenLabel setFont:v8];

  [(SBUIPoseidonIconView *)self setNeedsLayout];
}

- (void)_cancelRestToOpenProgress
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(CAGradientLayer *)self->_progressFillGradient animationForKey:@"fillGradient"];

  if (v3)
  {
    self->_isFilling = 0;
    v4 = CACurrentMediaTime() - self->_startProgressFillTime;
    v5 = v4 / self->_fullProgressFillDuration;
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"locations"];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5 + -0.05];
    v12[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5 + 0.05];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v6 setFromValue:v9];

    locations = [(CAGradientLayer *)self->_progressFillGradient locations];
    [v6 setToValue:locations];

    LODWORD(v11) = 1.0;
    [v6 setRepeatCount:v11];
    [v6 setDuration:v4 * 0.5];
    [v6 setDelegate:self];
    [(CAGradientLayer *)self->_progressFillGradient removeAllAnimations];
    [(CAGradientLayer *)self->_progressFillGradient addAnimation:v6 forKey:@"unfillGradient"];
  }
}

- (void)_startShimmer
{
  if (!self->_idleUntilShimmerTimer)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__SBUIPoseidonIconView__startShimmer__block_invoke;
    v5[3] = &unk_1E78A0428;
    v5[4] = self;
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
    idleUntilShimmerTimer = self->_idleUntilShimmerTimer;
    self->_idleUntilShimmerTimer = v3;
  }
}

void __37__SBUIPoseidonIconView__startShimmer__block_invoke(uint64_t a1)
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v3 = *(a1 + 32);
  if (IsReduceMotionEnabled && !*(v3 + 504))
  {
    [v3 _startReduceMotionShimmer];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__SBUIPoseidonIconView__startShimmer__block_invoke_2;
    v17[3] = &unk_1E78A0428;
    v17[4] = *(a1 + 32);
    v13 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v17 block:3.5];
    v14 = *(a1 + 32);
    v15 = *(v14 + 504);
    *(v14 + 504) = v13;
  }

  else
  {
    [*(v3 + 432) alpha];
    if (BSFloatGreaterThanFloat())
    {
      [*(*(a1 + 32) + 432) setAlpha:1.0];
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 488);
    [*(v4 + 432) bounds];
    v7 = -v6;
    [*(*(a1 + 32) + 432) bounds];
    v9 = v8 * 3.0;
    [*(*(a1 + 32) + 432) bounds];
    [v5 setFrame:{v7, 0.0, v9}];
    v10 = [*(*(a1 + 32) + 432) layer];
    [v10 setMask:*(*(a1 + 32) + 488)];

    v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"locations"];
    v11 = [*(*(a1 + 32) + 488) locations];
    [v16 setFromValue:v11];

    [v16 setToValue:&unk_1F1DB5CE0];
    LODWORD(v12) = 2139095040;
    [v16 setRepeatCount:v12];
    [v16 setDuration:2.5];
    [*(*(a1 + 32) + 488) addAnimation:v16 forKey:@"animateGradient"];
  }
}

- (void)_startReduceMotionShimmer
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke;
  v3[3] = &unk_1E789DA38;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_2;
  v2[3] = &unk_1E789DC08;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:1.5];
}

uint64_t __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 536) == 1)
  {
    return [*(v1 + 432) setAlpha:1.0];
  }

  return result;
}

uint64_t __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_3;
  v3[3] = &unk_1E789DA38;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_4;
  v2[3] = &unk_1E789DC08;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:1.5];
}

uint64_t __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 536) == 1)
  {
    return [*(v1 + 432) setAlpha:0.7];
  }

  return result;
}

void __49__SBUIPoseidonIconView__startReduceMotionShimmer__block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 432) layer];
  [v1 removeAllAnimations];
}

- (void)_stopShimmer
{
  [(UIView *)self->_coachingLabelRotationView alpha];
  if (BSFloatGreaterThanFloat())
  {
    [(UIView *)self->_coachingLabelRotationView setAlpha:0.7];
  }

  layer = [(UIView *)self->_coachingLabelRotationView layer];
  [layer setMask:0];

  idleUntilShimmerTimer = self->_idleUntilShimmerTimer;
  if (idleUntilShimmerTimer)
  {
    [(NSTimer *)idleUntilShimmerTimer invalidate];
    v5 = self->_idleUntilShimmerTimer;
    self->_idleUntilShimmerTimer = 0;
  }

  layer2 = [(UIView *)self->_coachingLabelRotationView layer];
  [layer2 removeAllAnimations];

  reduceMotionShimmerTimer = self->_reduceMotionShimmerTimer;
  if (reduceMotionShimmerTimer)
  {
    [(NSTimer *)reduceMotionShimmerTimer invalidate];
    v8 = self->_reduceMotionShimmerTimer;
    self->_reduceMotionShimmerTimer = 0;
  }
}

- (void)_startRestToOpenIdleTimer
{
  [(SBUIPoseidonIconView *)self _cancelRestToOpenIdleTimer];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SBUIPoseidonIconView__startRestToOpenIdleTimer__block_invoke;
  v5[3] = &unk_1E78A0428;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:3.0];
  restToOpenIdleTimer = self->_restToOpenIdleTimer;
  self->_restToOpenIdleTimer = v3;
}

- (void)_cancelRestToOpenIdleTimer
{
  restToOpenIdleTimer = self->_restToOpenIdleTimer;
  if (restToOpenIdleTimer)
  {
    [(NSTimer *)restToOpenIdleTimer invalidate];
    v4 = self->_restToOpenIdleTimer;
    self->_restToOpenIdleTimer = 0;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    layer = [(UIView *)self->_restToOpenLabelRotationView layer];
    [layer setMask:0];

    if (!self->_isFilling)
    {
      [(UIView *)self->_restToOpenLabelRotationView alpha];
      if (BSFloatGreaterThanFloat())
      {
        [(UIView *)self->_restToOpenLabelRotationView setAlpha:0.7];
      }
    }

    [(SBUIPoseidonIconView *)self setNeedsLayout];
  }
}

- (SBUIPoseidonIconViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGAffineTransform)localTransform
{
  v3 = *&self[12].c;
  *&retstr->a = *&self[12].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].tx;
  return self;
}

- (CGRect)sidebarFrame
{
  x = self->_sidebarFrame.origin.x;
  y = self->_sidebarFrame.origin.y;
  width = self->_sidebarFrame.size.width;
  height = self->_sidebarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end