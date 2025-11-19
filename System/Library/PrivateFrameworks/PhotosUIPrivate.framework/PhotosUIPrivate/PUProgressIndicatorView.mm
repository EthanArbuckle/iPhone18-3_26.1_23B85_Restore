@interface PUProgressIndicatorView
- (CGSize)intrinsicContentSize;
- (PUProgressIndicatorView)initWithCoder:(id)a3;
- (PUProgressIndicatorView)initWithStyle:(int64_t)a3;
- (id)_newVisualEffectBackgroundView;
- (void)_endShowingProgressIfReady;
- (void)_handleBeginShowingAnimated:(BOOL)a3 wasImmediate:(BOOL)a4;
- (void)_setCurrentState:(int64_t)a3;
- (void)_updateProgressViewsWithAnimation:(int64_t)a3 completion:(id)a4;
- (void)_updateSubviewsOrdering;
- (void)beginShowingProgressImmediately:(BOOL)a3 animated:(BOOL)a4;
- (void)beginShowingProgressWithDelay:(double)a3 animated:(BOOL)a4;
- (void)endShowingProgressImmediately:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)setCurrentProgress:(double)a3;
- (void)setDeterminate:(BOOL)a3;
- (void)setLocalizedMessage:(id)a3;
- (void)setShowsBackground:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation PUProgressIndicatorView

- (void)_setCurrentState:(int64_t)a3
{
  currentState = self->__currentState;
  if (currentState > 1)
  {
    if (currentState == 2)
    {
      if (a3 == 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (currentState != 3 || a3 != 4)
    {
LABEL_13:
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorView.m" lineNumber:703 description:{@"Invalid transition %ld %ld", self->__currentState, a3}];
    }
  }

  else
  {
    if (!currentState)
    {
      if (a3 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (currentState != 1 || (a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  self->__currentState = a3;
}

- (void)_endShowingProgressIfReady
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__endShowingProgressIfReady object:0];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(PUProgressIndicatorView *)self _timestampBeganShowing];
  if (v5 - v4 + 1.0 <= 0.0 || self->_wantsImmediateHide)
  {
    [(PUProgressIndicatorView *)self _setCurrentState:4];
    wantsAnimatedHide = self->_wantsAnimatedHide;
    wantsImmediateHide = self->_wantsImmediateHide;
    if (wantsAnimatedHide & wantsImmediateHide)
    {
      v8 = 2;
    }

    else
    {
      v8 = wantsAnimatedHide & ~wantsImmediateHide & 1;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PUProgressIndicatorView__endShowingProgressIfReady__block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v9[4] = self;
    [(PUProgressIndicatorView *)self _updateProgressViewsWithAnimation:v8 completion:v9];
  }

  else
  {

    [(PUProgressIndicatorView *)self performSelector:sel__endShowingProgressIfReady withObject:0 afterDelay:?];
  }
}

void __53__PUProgressIndicatorView__endShowingProgressIfReady__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 496);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 496);
    *(v3 + 496) = 0;
  }
}

- (void)endShowingProgressImmediately:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  [(PUProgressIndicatorView *)self _setCurrentState:3];
  self->_wantsImmediateHide = a3;
  self->_wantsAnimatedHide = a4;
  v9 = [v8 copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  [(PUProgressIndicatorView *)self _endShowingProgressIfReady];
}

- (void)_handleBeginShowingAnimated:(BOOL)a3 wasImmediate:(BOOL)a4
{
  v5 = a3;
  if ([(PUProgressIndicatorView *)self _currentState]== 1)
  {
    if (a4 || ([(PUProgressIndicatorView *)self currentProgress], v7 < 0.833))
    {
      [(PUProgressIndicatorView *)self _setCurrentState:2];
      [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:v5 completion:0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

      [(PUProgressIndicatorView *)self _setTimestampBeganShowing:?];
    }

    else
    {

      [(PUProgressIndicatorView *)self endShowingProgressImmediately:1 animated:v5 withCompletionHandler:0];
    }
  }
}

- (void)beginShowingProgressWithDelay:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(PUProgressIndicatorView *)self _setCurrentState:1];
  if (a3 <= 0.0)
  {

    [(PUProgressIndicatorView *)self _handleBeginShowingAnimated:v4 wasImmediate:1];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PUProgressIndicatorView_beginShowingProgressWithDelay_animated___block_invoke;
    block[3] = &unk_1E7B7FA08;
    objc_copyWeak(&v9, &location);
    v10 = v4;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __66__PUProgressIndicatorView_beginShowingProgressWithDelay_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBeginShowingAnimated:*(a1 + 40) wasImmediate:0];
}

- (void)beginShowingProgressImmediately:(BOOL)a3 animated:(BOOL)a4
{
  v4 = 1.25;
  if (a3)
  {
    v4 = 0.0;
  }

  [(PUProgressIndicatorView *)self beginShowingProgressWithDelay:a4 animated:v4];
}

- (void)setShowsBackground:(BOOL)a3
{
  if (self->_showsBackground != a3)
  {
    self->_showsBackground = a3;
    [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:0 completion:0];
  }
}

- (void)setDeterminate:(BOOL)a3
{
  if (self->_isDeterminate != a3)
  {
    self->_isDeterminate = a3;
    if (self->_spinnerView)
    {
      v3 = 1;
    }

    else
    {
      v3 = self->_pieProgressView != 0;
    }

    [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:v3 completion:0];
  }
}

- (void)setLocalizedMessage:(id)a3
{
  localizedMessage = self->_localizedMessage;
  if (localizedMessage != a3)
  {
    v5 = a3;
    v6 = [(NSString *)localizedMessage length]!= 0;
    v7 = [v5 copy];

    v8 = self->_localizedMessage;
    self->_localizedMessage = v7;

    [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:v6 completion:0];
  }
}

- (void)setCurrentProgress:(double)a3
{
  if (self->_currentProgress != a3)
  {
    self->_currentProgress = a3;
    [(PUProgressIndicatorView *)self _updatePieProgress];
  }
}

- (void)_updateSubviewsOrdering
{
  [(PUProgressIndicatorView *)self sendSubviewToBack:self->_visualEffectView];
  [(PUProgressIndicatorView *)self bringSubviewToFront:self->_spinnerView];
  messageLabel = self->_messageLabel;

  [(PUProgressIndicatorView *)self bringSubviewToFront:messageLabel];
}

- (void)_updateProgressViewsWithAnimation:(int64_t)a3 completion:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && !self->_isDeterminate)
  {
    if (self->_spinnerView)
    {
      goto LABEL_7;
    }

    v31 = [(PUProgressIndicatorView *)self style];
    labelAndSpinnerConstraints = 0;
    if (v31 > 2)
    {
      if (v31 != 3)
      {
        if (v31 == 4)
        {
          v58 = [MEMORY[0x1E69DC888] secondaryLabelColor];
          goto LABEL_86;
        }

        v32 = 0;
        if (v31 != 5)
        {
LABEL_88:
          v59 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:v32];
          spinnerView = self->_spinnerView;
          self->_spinnerView = v59;

          [(UIActivityIndicatorView *)self->_spinnerView setColor:labelAndSpinnerConstraints];
          [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
          [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
          [(PUProgressIndicatorView *)self addSubview:self->_spinnerView];
          v10 = [MEMORY[0x1E695DF70] array];
          [v10 addObject:self->_spinnerView];
          v7 = 0;
          goto LABEL_5;
        }
      }
    }

    else
    {
      if (!v31)
      {
        labelAndSpinnerConstraints = 0;
LABEL_87:
        v32 = 100;
        goto LABEL_88;
      }

      if (v31 != 1)
      {
        v32 = 0;
        if (v31 == 2)
        {
          labelAndSpinnerConstraints = [MEMORY[0x1E69DC888] whiteColor];
          v32 = 101;
        }

        goto LABEL_88;
      }
    }

    v58 = [MEMORY[0x1E69DC888] whiteColor];
LABEL_86:
    labelAndSpinnerConstraints = v58;
    goto LABEL_87;
  }

  if (!self->_spinnerView)
  {
LABEL_7:
    v7 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  [v7 addObject:self->_spinnerView];
  v8 = self->_spinnerView;
  self->_spinnerView = 0;

  spinnerViewConstraints = self->_spinnerViewConstraints;
  self->_spinnerViewConstraints = 0;

  v10 = 0;
  labelAndSpinnerConstraints = self->_labelAndSpinnerConstraints;
  self->_labelAndSpinnerConstraints = 0;
LABEL_5:

LABEL_8:
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && self->_isDeterminate)
  {
    if (!self->_pieProgressView)
    {
      v12 = [(PUProgressIndicatorView *)self style];
      if ((v12 - 1) > 3)
      {
        v13 = 1;
      }

      else
      {
        v13 = qword_1B3D0D5E8[v12 - 1];
      }

      v55 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:v13 style:{0.0, 0.0, 20.0, 20.0}];
      pieProgressView = self->_pieProgressView;
      self->_pieProgressView = v55;

      [(PLRoundProgressView *)self->_pieProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([(PUProgressIndicatorView *)self isStyleCompactBackground])
      {
        v57 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PLRoundProgressView *)self->_pieProgressView setManualColor:v57];
      }

      [(PUProgressIndicatorView *)self addSubview:self->_pieProgressView];
      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF70] array];
      }

      [v10 addObject:self->_pieProgressView];
    }
  }

  else
  {
    v14 = self->_pieProgressView;
    if (v14)
    {
      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v14 = self->_pieProgressView;
      }

      [v7 addObject:v14];
      v15 = self->_pieProgressView;
      self->_pieProgressView = 0;

      pieProgressViewConstraints = self->_pieProgressViewConstraints;
      self->_pieProgressViewConstraints = 0;

      labelAndPieProgressConstraints = self->_labelAndPieProgressConstraints;
      self->_labelAndPieProgressConstraints = 0;
    }
  }

  [(PUProgressIndicatorView *)self _updatePieProgress];
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && [(NSString *)self->_localizedMessage length])
  {
    messageLabel = self->_messageLabel;
    v19 = messageLabel != 0;
    if (!messageLabel)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v21 = self->_messageLabel;
      self->_messageLabel = v20;

      [(UILabel *)self->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v22 = [(PUProgressIndicatorView *)self isStyleCompactBackground];
      v23 = +[PUInterfaceManager currentTheme];
      v24 = v23;
      v25 = self->_messageLabel;
      if (v22)
      {
        [v23 configureCompactProgressIndicatorMessageLabel:v25];
      }

      else
      {
        [v23 configureProgressIndicatorMessageLabel:v25];
      }

      [(PUProgressIndicatorView *)self addSubview:self->_messageLabel];
      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF70] array];
      }

      [v10 addObject:self->_messageLabel];
      messageLabel = self->_messageLabel;
    }

    localizedMessage = self->_localizedMessage;
    v34 = [(UILabel *)messageLabel text];
    LOBYTE(localizedMessage) = [(NSString *)localizedMessage isEqualToString:v34];

    if ((localizedMessage & 1) == 0)
    {
      [(UILabel *)self->_messageLabel setText:self->_localizedMessage];
      v35 = 1;
      goto LABEL_37;
    }
  }

  else
  {
    v26 = self->_messageLabel;
    if (v26)
    {
      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v26 = self->_messageLabel;
      }

      [v7 addObject:v26];
      v27 = self->_messageLabel;
      self->_messageLabel = 0;

      messageLabelConstraints = self->_messageLabelConstraints;
      self->_messageLabelConstraints = 0;

      v29 = self->_labelAndSpinnerConstraints;
      self->_labelAndSpinnerConstraints = 0;

      v30 = self->_labelAndPieProgressConstraints;
      self->_labelAndPieProgressConstraints = 0;
    }
  }

  v19 = 0;
  v35 = 0;
LABEL_37:
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && self->_showsBackground)
  {
    if (!self->_visualEffectView)
    {
      v36 = [(PUProgressIndicatorView *)self _newVisualEffectBackgroundView];
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = v36;

      [(PUProgressIndicatorView *)self addSubview:self->_visualEffectView];
      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF70] array];
      }

      [v10 addObject:self->_visualEffectView];
    }
  }

  else
  {
    v38 = self->_visualEffectView;
    if (v38)
    {
      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v38 = self->_visualEffectView;
      }

      [v7 addObject:v38];
      v39 = self->_visualEffectView;
      self->_visualEffectView = 0;

      backgroundViewConstraints = self->_backgroundViewConstraints;
      self->_backgroundViewConstraints = 0;
    }
  }

  if ([v10 count])
  {
    [(PUProgressIndicatorView *)self _updateSubviewsOrdering];
    v41 = a3 != 0;
    v42 = 0.4;
    if (a3 != 1)
    {
      v42 = 0.0;
    }

    if (a3 == 2)
    {
      v43 = 0.2;
    }

    else
    {
      v43 = v42;
    }

LABEL_59:
    if (v19 && v41)
    {
      [(PUProgressIndicatorView *)self layoutIfNeeded];
      [(PUProgressIndicatorView *)self setNeedsUpdateConstraints];
      [(PUProgressIndicatorView *)self invalidateIntrinsicContentSize];
      [(PUProgressIndicatorView *)self setNeedsLayout];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke;
      v74[3] = &unk_1E7B80DD0;
      v74[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v74 animations:v43];
      v41 = 1;
    }

    else
    {
      [(PUProgressIndicatorView *)self setNeedsUpdateConstraints];
      [(PUProgressIndicatorView *)self invalidateIntrinsicContentSize];
    }

    goto LABEL_62;
  }

  v41 = a3 != 0;
  v44 = 0.4;
  if (a3 != 1)
  {
    v44 = 0.0;
  }

  if (a3 == 2)
  {
    v43 = 0.2;
  }

  else
  {
    v43 = v44;
  }

  if (v35)
  {
    goto LABEL_59;
  }

LABEL_62:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke_2;
  aBlock[3] = &unk_1E7B80CB0;
  v45 = v7;
  v71 = v45;
  v72 = self;
  v46 = v6;
  v73 = v46;
  v47 = _Block_copy(aBlock);
  v48 = v47;
  if (v41)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = v10;
    v50 = [v49 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v67;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v67 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [*(*(&v66 + 1) + 8 * i) setAlpha:0.0];
        }

        v51 = [v49 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v51);
    }

    v54 = MEMORY[0x1E69DD250];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke_3;
    v63[3] = &unk_1E7B80C38;
    v64 = v49;
    v65 = v45;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke_4;
    v61[3] = &unk_1E7B7FA80;
    v62 = v48;
    [v54 animateWithDuration:v63 animations:v61 completion:v43];
  }

  else
  {
    (*(v47 + 2))(v47);
  }
}

uint64_t __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) invalidateIntrinsicContentSize];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__PUProgressIndicatorView__updateProgressViewsWithAnimation_completion___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) setAlpha:1.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setAlpha:{0.0, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (id)_newVisualEffectBackgroundView
{
  v2 = [(PUProgressIndicatorView *)self isStyleCompactBackground];
  if (v2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  if (v2)
  {
    v4 = 14.0;
  }

  else
  {
    v4 = 7.0;
  }

  v5 = [MEMORY[0x1E69DC730] effectWithStyle:v3];
  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  v7 = [v6 layer];
  [v7 setAllowsGroupOpacity:0];
  [v7 setCornerRadius:v4];
  [v6 setClipsToBounds:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

- (CGSize)intrinsicContentSize
{
  spinnerView = self->_spinnerView;
  if (spinnerView)
  {
    [(UIActivityIndicatorView *)spinnerView intrinsicContentSize];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    pieProgressView = self->_pieProgressView;
    if (pieProgressView)
    {
      v7 = 20.0;
    }

    else
    {
      v7 = *(MEMORY[0x1E695F060] + 8);
    }

    if (pieProgressView)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = *MEMORY[0x1E695F060];
    }
  }

  [(UILabel *)self->_messageLabel intrinsicContentSize];
  v10 = v5 + v9;
  if ((self->_spinnerView || self->_pieProgressView) && self->_messageLabel)
  {
    v10 = v10 + 8.0;
  }

  if (self->_visualEffectView)
  {
    v10 = v10 + 24.0;
    v11 = [(PUProgressIndicatorView *)self isStyleCompactBackground];
    v12 = 12.0;
    if (v11)
    {
      v12 = 5.0;
    }

    v7 = v7 + v12 * 2.0;
  }

  v13 = v10;
  v14 = v7;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)updateConstraints
{
  v3 = [(PUProgressIndicatorView *)self isStyleCompactBackground];
  if (v3)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 12.0;
  }

  if (self->_spinnerView && !self->_spinnerViewConstraints)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if (self->_showsBackground)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinnerView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v6];
    LODWORD(v8) = 1148846080;
    [v7 setPriority:v8];
    [(NSArray *)v5 addObject:v7];
    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinnerView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v6];

    LODWORD(v10) = 1144750080;
    [v9 setPriority:v10];
    [(NSArray *)v5 addObject:v9];
    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinnerView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v12) = 1144750080;
    [v11 setPriority:v12];
    [(NSArray *)v5 addObject:v11];
    [(PUProgressIndicatorView *)self addConstraints:v5];
    spinnerViewConstraints = self->_spinnerViewConstraints;
    self->_spinnerViewConstraints = v5;
  }

  if (self->_pieProgressView && !self->_pieProgressViewConstraints)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    if (self->_showsBackground)
    {
      v15 = v4;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v15];
    LODWORD(v17) = 1148846080;
    [v16 setPriority:v17];
    [(NSArray *)v14 addObject:v16];
    v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v15];

    LODWORD(v19) = 1144750080;
    [v18 setPriority:v19];
    [(NSArray *)v14 addObject:v18];
    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v21) = 1144750080;
    [v20 setPriority:v21];
    [(NSArray *)v14 addObject:v20];
    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:20.0];
    [(NSArray *)v14 addObject:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:20.0];
    [(NSArray *)v14 addObject:v23];

    [(PUProgressIndicatorView *)self addConstraints:v14];
    pieProgressViewConstraints = self->_pieProgressViewConstraints;
    self->_pieProgressViewConstraints = v14;
  }

  if (self->_messageLabel)
  {
    if (self->_messageLabelConstraints)
    {
      goto LABEL_39;
    }

    v25 = [MEMORY[0x1E695DF70] array];
    if (!self->_showsBackground)
    {
      v4 = 0.0;
    }

    v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v4];
    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];
    [(NSArray *)v25 addObject:v26];
    v28 = -6.0;
    if (!v3)
    {
      v28 = -v4;
    }

    v29 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:v28];

    LODWORD(v30) = 1148846080;
    [v29 setPriority:v30];
    [(NSArray *)v25 addObject:v29];
    v31 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v32) = 1144750080;
    [v31 setPriority:v32];
    [(NSArray *)v25 addObject:v31];
    [(PUProgressIndicatorView *)self addConstraints:v25];
    messageLabelConstraints = self->_messageLabelConstraints;
    self->_messageLabelConstraints = v25;

    if (self->_messageLabel)
    {
LABEL_39:
      if (!self->_spinnerView || self->_labelAndSpinnerConstraints)
      {
        goto LABEL_40;
      }

      v34 = [MEMORY[0x1E695DF70] array];
      v35 = 5.0;
      if (!v3)
      {
        v35 = 8.0;
      }

      v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self->_spinnerView attribute:6 multiplier:1.0 constant:v35];
      LODWORD(v37) = 1148846080;
      [v36 setPriority:v37];
      [(NSArray *)v34 addObject:v36];
      [(PUProgressIndicatorView *)self addConstraints:v34];
      labelAndSpinnerConstraints = self->_labelAndSpinnerConstraints;
      self->_labelAndSpinnerConstraints = v34;

      if (self->_messageLabel)
      {
LABEL_40:
        if (self->_pieProgressView && !self->_labelAndPieProgressConstraints)
        {
          v39 = [MEMORY[0x1E695DF70] array];
          v40 = 5.0;
          if (!v3)
          {
            v40 = 8.0;
          }

          v41 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self->_pieProgressView attribute:6 multiplier:1.0 constant:v40];
          LODWORD(v42) = 1148846080;
          [v41 setPriority:v42];
          [(NSArray *)v39 addObject:v41];
          [(PUProgressIndicatorView *)self addConstraints:v39];
          labelAndPieProgressConstraints = self->_labelAndPieProgressConstraints;
          self->_labelAndPieProgressConstraints = v39;
        }
      }
    }
  }

  visualEffectView = self->_visualEffectView;
  if (visualEffectView && !self->_backgroundViewConstraints)
  {
    v45 = _NSDictionaryOfVariableBindings(&cfstr_Visualeffectvi.isa, visualEffectView, 0);
    v46 = [MEMORY[0x1E695DF70] array];
    v47 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_visualEffectView]|" options:0 metrics:0 views:v45];
    [(NSArray *)v46 addObjectsFromArray:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_visualEffectView]|" options:0 metrics:0 views:v45];
    [(NSArray *)v46 addObjectsFromArray:v48];

    [(PUProgressIndicatorView *)self addConstraints:v46];
    backgroundViewConstraints = self->_backgroundViewConstraints;
    self->_backgroundViewConstraints = v46;
  }

  v50.receiver = self;
  v50.super_class = PUProgressIndicatorView;
  [(PUProgressIndicatorView *)&v50 updateConstraints];
}

- (PUProgressIndicatorView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorView.m" lineNumber:117 description:@"unsupported initializer"];

  return [(PUProgressIndicatorView *)self initWithStyle:0];
}

- (PUProgressIndicatorView)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PUProgressIndicatorView;
  v4 = [(PUProgressIndicatorView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isDeterminate = 1;
    v4->_style = a3;
    [(PUProgressIndicatorView *)v4 setOpaque:0];
  }

  return v5;
}

@end