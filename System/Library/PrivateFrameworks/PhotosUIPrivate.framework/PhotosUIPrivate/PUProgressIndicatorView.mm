@interface PUProgressIndicatorView
- (CGSize)intrinsicContentSize;
- (PUProgressIndicatorView)initWithCoder:(id)coder;
- (PUProgressIndicatorView)initWithStyle:(int64_t)style;
- (id)_newVisualEffectBackgroundView;
- (void)_endShowingProgressIfReady;
- (void)_handleBeginShowingAnimated:(BOOL)animated wasImmediate:(BOOL)immediate;
- (void)_setCurrentState:(int64_t)state;
- (void)_updateProgressViewsWithAnimation:(int64_t)animation completion:(id)completion;
- (void)_updateSubviewsOrdering;
- (void)beginShowingProgressImmediately:(BOOL)immediately animated:(BOOL)animated;
- (void)beginShowingProgressWithDelay:(double)delay animated:(BOOL)animated;
- (void)endShowingProgressImmediately:(BOOL)immediately animated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)setCurrentProgress:(double)progress;
- (void)setDeterminate:(BOOL)determinate;
- (void)setLocalizedMessage:(id)message;
- (void)setShowsBackground:(BOOL)background;
- (void)updateConstraints;
@end

@implementation PUProgressIndicatorView

- (void)_setCurrentState:(int64_t)state
{
  currentState = self->__currentState;
  if (currentState > 1)
  {
    if (currentState == 2)
    {
      if (state == 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (currentState != 3 || state != 4)
    {
LABEL_13:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorView.m" lineNumber:703 description:{@"Invalid transition %ld %ld", self->__currentState, state}];
    }
  }

  else
  {
    if (!currentState)
    {
      if (state == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (currentState != 1 || (state & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  self->__currentState = state;
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

- (void)endShowingProgressImmediately:(BOOL)immediately animated:(BOOL)animated withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(PUProgressIndicatorView *)self _setCurrentState:3];
  self->_wantsImmediateHide = immediately;
  self->_wantsAnimatedHide = animated;
  v9 = [handlerCopy copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  [(PUProgressIndicatorView *)self _endShowingProgressIfReady];
}

- (void)_handleBeginShowingAnimated:(BOOL)animated wasImmediate:(BOOL)immediate
{
  animatedCopy = animated;
  if ([(PUProgressIndicatorView *)self _currentState]== 1)
  {
    if (immediate || ([(PUProgressIndicatorView *)self currentProgress], v7 < 0.833))
    {
      [(PUProgressIndicatorView *)self _setCurrentState:2];
      [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:animatedCopy completion:0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

      [(PUProgressIndicatorView *)self _setTimestampBeganShowing:?];
    }

    else
    {

      [(PUProgressIndicatorView *)self endShowingProgressImmediately:1 animated:animatedCopy withCompletionHandler:0];
    }
  }
}

- (void)beginShowingProgressWithDelay:(double)delay animated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUProgressIndicatorView *)self _setCurrentState:1];
  if (delay <= 0.0)
  {

    [(PUProgressIndicatorView *)self _handleBeginShowingAnimated:animatedCopy wasImmediate:1];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PUProgressIndicatorView_beginShowingProgressWithDelay_animated___block_invoke;
    block[3] = &unk_1E7B7FA08;
    objc_copyWeak(&v9, &location);
    v10 = animatedCopy;
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

- (void)beginShowingProgressImmediately:(BOOL)immediately animated:(BOOL)animated
{
  v4 = 1.25;
  if (immediately)
  {
    v4 = 0.0;
  }

  [(PUProgressIndicatorView *)self beginShowingProgressWithDelay:animated animated:v4];
}

- (void)setShowsBackground:(BOOL)background
{
  if (self->_showsBackground != background)
  {
    self->_showsBackground = background;
    [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:0 completion:0];
  }
}

- (void)setDeterminate:(BOOL)determinate
{
  if (self->_isDeterminate != determinate)
  {
    self->_isDeterminate = determinate;
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

- (void)setLocalizedMessage:(id)message
{
  localizedMessage = self->_localizedMessage;
  if (localizedMessage != message)
  {
    messageCopy = message;
    v6 = [(NSString *)localizedMessage length]!= 0;
    v7 = [messageCopy copy];

    v8 = self->_localizedMessage;
    self->_localizedMessage = v7;

    [(PUProgressIndicatorView *)self _updateProgressViewsAnimated:v6 completion:0];
  }
}

- (void)setCurrentProgress:(double)progress
{
  if (self->_currentProgress != progress)
  {
    self->_currentProgress = progress;
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

- (void)_updateProgressViewsWithAnimation:(int64_t)animation completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && !self->_isDeterminate)
  {
    if (self->_spinnerView)
    {
      goto LABEL_7;
    }

    style = [(PUProgressIndicatorView *)self style];
    labelAndSpinnerConstraints = 0;
    if (style > 2)
    {
      if (style != 3)
      {
        if (style == 4)
        {
          secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          goto LABEL_86;
        }

        v32 = 0;
        if (style != 5)
        {
LABEL_88:
          v59 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:v32];
          spinnerView = self->_spinnerView;
          self->_spinnerView = v59;

          [(UIActivityIndicatorView *)self->_spinnerView setColor:labelAndSpinnerConstraints];
          [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
          [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
          [(PUProgressIndicatorView *)self addSubview:self->_spinnerView];
          array = [MEMORY[0x1E695DF70] array];
          [array addObject:self->_spinnerView];
          array2 = 0;
          goto LABEL_5;
        }
      }
    }

    else
    {
      if (!style)
      {
        labelAndSpinnerConstraints = 0;
LABEL_87:
        v32 = 100;
        goto LABEL_88;
      }

      if (style != 1)
      {
        v32 = 0;
        if (style == 2)
        {
          labelAndSpinnerConstraints = [MEMORY[0x1E69DC888] whiteColor];
          v32 = 101;
        }

        goto LABEL_88;
      }
    }

    secondaryLabelColor = [MEMORY[0x1E69DC888] whiteColor];
LABEL_86:
    labelAndSpinnerConstraints = secondaryLabelColor;
    goto LABEL_87;
  }

  if (!self->_spinnerView)
  {
LABEL_7:
    array2 = 0;
    array = 0;
    goto LABEL_8;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObject:self->_spinnerView];
  v8 = self->_spinnerView;
  self->_spinnerView = 0;

  spinnerViewConstraints = self->_spinnerViewConstraints;
  self->_spinnerViewConstraints = 0;

  array = 0;
  labelAndSpinnerConstraints = self->_labelAndSpinnerConstraints;
  self->_labelAndSpinnerConstraints = 0;
LABEL_5:

LABEL_8:
  if ([(PUProgressIndicatorView *)self _currentState]== 2 && self->_isDeterminate)
  {
    if (!self->_pieProgressView)
    {
      style2 = [(PUProgressIndicatorView *)self style];
      if ((style2 - 1) > 3)
      {
        v13 = 1;
      }

      else
      {
        v13 = qword_1B3D0D5E8[style2 - 1];
      }

      v55 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:v13 style:{0.0, 0.0, 20.0, 20.0}];
      pieProgressView = self->_pieProgressView;
      self->_pieProgressView = v55;

      [(PLRoundProgressView *)self->_pieProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([(PUProgressIndicatorView *)self isStyleCompactBackground])
      {
        secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PLRoundProgressView *)self->_pieProgressView setManualColor:secondaryLabelColor2];
      }

      [(PUProgressIndicatorView *)self addSubview:self->_pieProgressView];
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      [array addObject:self->_pieProgressView];
    }
  }

  else
  {
    v14 = self->_pieProgressView;
    if (v14)
    {
      if (!array2)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v14 = self->_pieProgressView;
      }

      [array2 addObject:v14];
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
      isStyleCompactBackground = [(PUProgressIndicatorView *)self isStyleCompactBackground];
      v23 = +[PUInterfaceManager currentTheme];
      v24 = v23;
      v25 = self->_messageLabel;
      if (isStyleCompactBackground)
      {
        [v23 configureCompactProgressIndicatorMessageLabel:v25];
      }

      else
      {
        [v23 configureProgressIndicatorMessageLabel:v25];
      }

      [(PUProgressIndicatorView *)self addSubview:self->_messageLabel];
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      [array addObject:self->_messageLabel];
      messageLabel = self->_messageLabel;
    }

    localizedMessage = self->_localizedMessage;
    text = [(UILabel *)messageLabel text];
    LOBYTE(localizedMessage) = [(NSString *)localizedMessage isEqualToString:text];

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
      if (!array2)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v26 = self->_messageLabel;
      }

      [array2 addObject:v26];
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
      _newVisualEffectBackgroundView = [(PUProgressIndicatorView *)self _newVisualEffectBackgroundView];
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = _newVisualEffectBackgroundView;

      [(PUProgressIndicatorView *)self addSubview:self->_visualEffectView];
      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      [array addObject:self->_visualEffectView];
    }
  }

  else
  {
    v38 = self->_visualEffectView;
    if (v38)
    {
      if (!array2)
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v38 = self->_visualEffectView;
      }

      [array2 addObject:v38];
      v39 = self->_visualEffectView;
      self->_visualEffectView = 0;

      backgroundViewConstraints = self->_backgroundViewConstraints;
      self->_backgroundViewConstraints = 0;
    }
  }

  if ([array count])
  {
    [(PUProgressIndicatorView *)self _updateSubviewsOrdering];
    v41 = animation != 0;
    v42 = 0.4;
    if (animation != 1)
    {
      v42 = 0.0;
    }

    if (animation == 2)
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

  v41 = animation != 0;
  v44 = 0.4;
  if (animation != 1)
  {
    v44 = 0.0;
  }

  if (animation == 2)
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
  v45 = array2;
  v71 = v45;
  selfCopy = self;
  v46 = completionCopy;
  v73 = v46;
  v47 = _Block_copy(aBlock);
  v48 = v47;
  if (v41)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = array;
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
  isStyleCompactBackground = [(PUProgressIndicatorView *)self isStyleCompactBackground];
  if (isStyleCompactBackground)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  if (isStyleCompactBackground)
  {
    v4 = 14.0;
  }

  else
  {
    v4 = 7.0;
  }

  v5 = [MEMORY[0x1E69DC730] effectWithStyle:v3];
  v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v5];
  layer = [v6 layer];
  [layer setAllowsGroupOpacity:0];
  [layer setCornerRadius:v4];
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
    isStyleCompactBackground = [(PUProgressIndicatorView *)self isStyleCompactBackground];
    v12 = 12.0;
    if (isStyleCompactBackground)
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
  isStyleCompactBackground = [(PUProgressIndicatorView *)self isStyleCompactBackground];
  if (isStyleCompactBackground)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 12.0;
  }

  if (self->_spinnerView && !self->_spinnerViewConstraints)
  {
    array = [MEMORY[0x1E695DF70] array];
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
    [(NSArray *)array addObject:v7];
    v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinnerView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v6];

    LODWORD(v10) = 1144750080;
    [v9 setPriority:v10];
    [(NSArray *)array addObject:v9];
    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_spinnerView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v12) = 1144750080;
    [v11 setPriority:v12];
    [(NSArray *)array addObject:v11];
    [(PUProgressIndicatorView *)self addConstraints:array];
    spinnerViewConstraints = self->_spinnerViewConstraints;
    self->_spinnerViewConstraints = array;
  }

  if (self->_pieProgressView && !self->_pieProgressViewConstraints)
  {
    array2 = [MEMORY[0x1E695DF70] array];
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
    [(NSArray *)array2 addObject:v16];
    v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-v15];

    LODWORD(v19) = 1144750080;
    [v18 setPriority:v19];
    [(NSArray *)array2 addObject:v18];
    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v21) = 1144750080;
    [v20 setPriority:v21];
    [(NSArray *)array2 addObject:v20];
    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:20.0];
    [(NSArray *)array2 addObject:v22];

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_pieProgressView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:20.0];
    [(NSArray *)array2 addObject:v23];

    [(PUProgressIndicatorView *)self addConstraints:array2];
    pieProgressViewConstraints = self->_pieProgressViewConstraints;
    self->_pieProgressViewConstraints = array2;
  }

  if (self->_messageLabel)
  {
    if (self->_messageLabelConstraints)
    {
      goto LABEL_39;
    }

    array3 = [MEMORY[0x1E695DF70] array];
    if (!self->_showsBackground)
    {
      v4 = 0.0;
    }

    v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:v4];
    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];
    [(NSArray *)array3 addObject:v26];
    v28 = -6.0;
    if (!isStyleCompactBackground)
    {
      v28 = -v4;
    }

    v29 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:v28];

    LODWORD(v30) = 1148846080;
    [v29 setPriority:v30];
    [(NSArray *)array3 addObject:v29];
    v31 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v32) = 1144750080;
    [v31 setPriority:v32];
    [(NSArray *)array3 addObject:v31];
    [(PUProgressIndicatorView *)self addConstraints:array3];
    messageLabelConstraints = self->_messageLabelConstraints;
    self->_messageLabelConstraints = array3;

    if (self->_messageLabel)
    {
LABEL_39:
      if (!self->_spinnerView || self->_labelAndSpinnerConstraints)
      {
        goto LABEL_40;
      }

      array4 = [MEMORY[0x1E695DF70] array];
      v35 = 5.0;
      if (!isStyleCompactBackground)
      {
        v35 = 8.0;
      }

      v36 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self->_spinnerView attribute:6 multiplier:1.0 constant:v35];
      LODWORD(v37) = 1148846080;
      [v36 setPriority:v37];
      [(NSArray *)array4 addObject:v36];
      [(PUProgressIndicatorView *)self addConstraints:array4];
      labelAndSpinnerConstraints = self->_labelAndSpinnerConstraints;
      self->_labelAndSpinnerConstraints = array4;

      if (self->_messageLabel)
      {
LABEL_40:
        if (self->_pieProgressView && !self->_labelAndPieProgressConstraints)
        {
          array5 = [MEMORY[0x1E695DF70] array];
          v40 = 5.0;
          if (!isStyleCompactBackground)
          {
            v40 = 8.0;
          }

          v41 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_messageLabel attribute:5 relatedBy:0 toItem:self->_pieProgressView attribute:6 multiplier:1.0 constant:v40];
          LODWORD(v42) = 1148846080;
          [v41 setPriority:v42];
          [(NSArray *)array5 addObject:v41];
          [(PUProgressIndicatorView *)self addConstraints:array5];
          labelAndPieProgressConstraints = self->_labelAndPieProgressConstraints;
          self->_labelAndPieProgressConstraints = array5;
        }
      }
    }
  }

  visualEffectView = self->_visualEffectView;
  if (visualEffectView && !self->_backgroundViewConstraints)
  {
    v45 = _NSDictionaryOfVariableBindings(&cfstr_Visualeffectvi.isa, visualEffectView, 0);
    array6 = [MEMORY[0x1E695DF70] array];
    v47 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_visualEffectView]|" options:0 metrics:0 views:v45];
    [(NSArray *)array6 addObjectsFromArray:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_visualEffectView]|" options:0 metrics:0 views:v45];
    [(NSArray *)array6 addObjectsFromArray:v48];

    [(PUProgressIndicatorView *)self addConstraints:array6];
    backgroundViewConstraints = self->_backgroundViewConstraints;
    self->_backgroundViewConstraints = array6;
  }

  v50.receiver = self;
  v50.super_class = PUProgressIndicatorView;
  [(PUProgressIndicatorView *)&v50 updateConstraints];
}

- (PUProgressIndicatorView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorView.m" lineNumber:117 description:@"unsupported initializer"];

  return [(PUProgressIndicatorView *)self initWithStyle:0];
}

- (PUProgressIndicatorView)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = PUProgressIndicatorView;
  v4 = [(PUProgressIndicatorView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isDeterminate = 1;
    v4->_style = style;
    [(PUProgressIndicatorView *)v4 setOpaque:0];
  }

  return v5;
}

@end