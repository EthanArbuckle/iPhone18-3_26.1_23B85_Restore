@interface PGControlsContainerView
- (BOOL)_controlsShouldAutoHide;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (PGCommandHandler)commandHandler;
- (PGControlsContainerView)initWithFrame:(CGRect)a3 viewModel:(id)a4;
- (id)_acquirePreventAutoHideOfControlsAssertionWithReason:(id)a3;
- (id)_performVisibilityTransitionAnimated:(BOOL)a3 existingAnimator:(id)a4 animations:(id)a5 success:(id)a6;
- (id)_updateVisibilityOfView:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5 existingAnimator:(id)a6;
- (void)_handleDoubleDoubleTapGestureRecognizer:(id)a3;
- (void)_handleHoverGestureRecognizer:(id)a3;
- (void)_handleSingleTapGestureRecognizer:(id)a3;
- (void)_invalidateTimer;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setPrefersControlsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_setupSubviews;
- (void)_updateHideControlsAfterDelayTimer;
- (void)controlsViewModel:(id)a3 didIssueCommand:(id)a4;
- (void)controlsViewModel:(id)a3 valuesChangedFromOldValue:(id)a4;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setControlsContainerHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setInteractivelyResizing:(BOOL)a3;
@end

@implementation PGControlsContainerView

- (PGControlsContainerView)initWithFrame:(CGRect)a3 viewModel:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGControlsContainerView;
  v11 = [(PGControlsContainerView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a4);
    [v10 setDelegate:v12];
  }

  return v12;
}

- (void)_setupSubviews
{
  v3 = [(PGControlsViewModel *)self->_viewModel values];
  if ([v3 controlsViewWantsGlassBackground])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(PGControlsContainerView *)self setOverrideUserInterfaceStyle:v4];

  v5 = [(PGControlsContainerView *)self layer];
  [v5 setHitTestsAsOpaque:1];

  v6 = [PGControlsView alloc];
  [(PGControlsContainerView *)self bounds];
  v7 = [(PGControlsView *)v6 initWithFrame:self->_viewModel viewModel:?];
  controlsView = self->_controlsView;
  self->_controlsView = v7;

  [(PGControlsContainerView *)self addSubview:self->_controlsView];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleSingleTapGestureRecognizer_];
  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  self->_singleTapGestureRecognizer = v9;

  [(PGControlsContainerView *)self addGestureRecognizer:self->_singleTapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_singleTapGestureRecognizer setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)self->_singleTapGestureRecognizer setDelegate:self];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapGestureRecognizer_];
  doubleTapGestureRecognizer = self->_doubleTapGestureRecognizer;
  self->_doubleTapGestureRecognizer = v11;

  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(PGControlsContainerView *)self addGestureRecognizer:self->_doubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)self->_doubleTapGestureRecognizer setDelegate:self];
  v13 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleDoubleTapGestureRecognizer_];
  doubleDoubleTapGestureRecognizer = self->_doubleDoubleTapGestureRecognizer;
  self->_doubleDoubleTapGestureRecognizer = v13;

  [(UITapGestureRecognizer *)self->_doubleDoubleTapGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleDoubleTapGestureRecognizer setNumberOfTouchesRequired:2];
  [(PGControlsContainerView *)self addGestureRecognizer:self->_doubleDoubleTapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_doubleDoubleTapGestureRecognizer setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)self->_doubleDoubleTapGestureRecognizer setDelegate:self];
  v15 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHoverGestureRecognizer_];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = v15;

  [(PGControlsContainerView *)self addGestureRecognizer:self->_hoverGestureRecognizer];
  v17 = self->_hoverGestureRecognizer;

  [(UIGestureRecognizer *)v17 setDelegate:self];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = PGControlsContainerView;
  [(PGControlsContainerView *)&v6 didMoveToWindow];
  v3 = [(PGControlsContainerView *)self layer];
  [v3 setBorderWidth:1.0];

  v4 = [(PGControlsContainerView *)self layer];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.15];
  [v4 setBorderColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PGControlsContainerView;
  [(PGControlsContainerView *)&v5 layoutSubviews];
  controlsView = self->_controlsView;
  [(PGControlsContainerView *)self bounds];
  [(PGControlsView *)controlsView setFrame:?];
  interruptionDimmingView = self->_interruptionDimmingView;
  [(PGControlsContainerView *)self bounds];
  [(UIView *)interruptionDimmingView setFrame:?];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = PGControlsContainerView;
  [(PGControlsContainerView *)&v5 _setContinuousCornerRadius:?];
  [(PGControlsView *)self->_controlsView _setContinuousCornerRadius:a3];
  [(UIView *)self->_interruptionDimmingView _setContinuousCornerRadius:a3];
}

- (void)setInteractivelyResizing:(BOOL)a3
{
  if (self->_interactivelyResizing != a3)
  {
    self->_interactivelyResizing = a3;
    v4 = !a3;
    [PGControlsContainerView _setPrefersControlsHidden:"_setPrefersControlsHidden:animated:" animated:?];
    if (!v4)
    {

      [(PGControlsContainerView *)self _invalidateTimer];
    }
  }
}

- (void)setControlsContainerHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewVisibilityAnimator);
  v7 = [(PGControlsContainerView *)self _updateVisibilityOfView:self hidden:v5 animated:v4 existingAnimator:WeakRetained];
  objc_storeWeak(&self->_containerViewVisibilityAnimator, v7);
}

- (void)controlsViewModel:(id)a3 didIssueCommand:(id)a4
{
  v8 = a4;
  if ([v8 systemAction] == 4)
  {
    if ([(PGControlsView *)self->_controlsView prefersControlsHidden])
    {
      v5 = self;
      v6 = 0;
    }

    else
    {
      v5 = self;
      v6 = 1;
    }

    [(PGControlsContainerView *)v5 _setPrefersControlsHidden:v6 animated:1];
  }

  else
  {
    v7 = [(PGControlsContainerView *)self commandHandler];
    [v7 handleCommand:v8];
  }
}

- (void)controlsViewModel:(id)a3 valuesChangedFromOldValue:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [v29 values];
  v8 = [v6 contentType];
  if (v8 != [v7 contentType] && !objc_msgSend(v6, "contentType"))
  {
    [(PGControlsContainerView *)self _setupSubviews];
    [(PGControlsContainerView *)self setNeedsLayout];
    [(PGControlsContainerView *)self layoutIfNeeded];
  }

  -[UITapGestureRecognizer setEnabled:](self->_singleTapGestureRecognizer, "setEnabled:", [v7 includesSingleTapGestureRecognizer]);
  -[UITapGestureRecognizer setEnabled:](self->_doubleTapGestureRecognizer, "setEnabled:", [v7 includesDoubleTapGestureRecognizer]);
  -[UITapGestureRecognizer setEnabled:](self->_doubleDoubleTapGestureRecognizer, "setEnabled:", [v7 includesDoubleDoubleTapGestureRecognizer]);
  [(PGControlsView *)self->_controlsView viewModelDidUpdateValuesFromOldValues:v6];
  [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
  v9 = [v29 playbackState];
  v10 = [v9 contentType];

  if ((v10 - 1) > 1)
  {
    goto LABEL_28;
  }

  v11 = [v29 playbackState];
  [v11 normalizedProgress];
  v13 = v12;

  v14 = [v29 values];
  v15 = [v14 controlsShouldAutoHide];

  v16 = [v29 values];
  if ([v16 includesContentLoadingIndicator] && !objc_msgSend(v6, "includesContentLoadingIndicator"))
  {
    v18 = 1;
  }

  else
  {
    v17 = [v29 values];
    if ([v17 includesWaitingToPlayIndicator])
    {
      v18 = [v6 includesWaitingToPlayIndicator] ^ 1;
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = [v29 values];
  if (([v19 includesContentLoadingIndicator] & 1) != 0 || (objc_msgSend(v6, "includesContentLoadingIndicator") & 1) == 0)
  {
    v21 = [v29 values];
    if ([v21 includesWaitingToPlayIndicator])
    {
      v20 = 0;
    }

    else
    {
      v20 = [v6 includesWaitingToPlayIndicator];
    }
  }

  else
  {
    v20 = 1;
  }

  if (!((v13 < 1.0) | v15 & 1) && [v6 controlsShouldAutoHide] || v18)
  {
    [(PGControlsContainerView *)self _setPrefersControlsHidden:0 animated:1];
LABEL_28:
    [(UIView *)self->_interruptionDimmingView removeFromSuperview];
    interruptionDimmingView = self->_interruptionDimmingView;
    self->_interruptionDimmingView = 0;

    goto LABEL_29;
  }

  if (v20)
  {
    [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
    goto LABEL_28;
  }

  if (![v29 isInterrupted])
  {
    goto LABEL_28;
  }

  [(PGControlsContainerView *)self _invalidateTimer];
  [(PGControlsContainerView *)self _setPrefersControlsHidden:0 animated:1];
  if (!self->_interruptionDimmingView)
  {
    v22 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PGControlsContainerView *)self bounds];
    v23 = [v22 initWithFrame:?];
    v24 = self->_interruptionDimmingView;
    self->_interruptionDimmingView = v23;

    [(UIView *)self->_interruptionDimmingView setUserInteractionEnabled:0];
    v25 = self->_interruptionDimmingView;
    v26 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.65];
    [(UIView *)v25 setBackgroundColor:v26];

    v27 = self->_interruptionDimmingView;
    [(PGControlsContainerView *)self _continuousCornerRadius];
    [(UIView *)v27 _setContinuousCornerRadius:?];
    [(PGControlsContainerView *)self insertSubview:self->_interruptionDimmingView belowSubview:self->_controlsView];
  }

LABEL_29:
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)v4 delegate];

  if (v5 == self)
  {
    if (self->_hoverGestureRecognizer == v4 && (-[PGControlsViewModel values](self->_viewModel, "values"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 includesRestoreButton], v6, !v7))
    {
      LOBYTE(self) = 0;
    }

    else
    {
      v8 = [(UIGestureRecognizer *)v4 view];
      v9 = [(UIGestureRecognizer *)v4 view];
      [(UIGestureRecognizer *)v4 locationInView:v9];
      v10 = [v8 hitTest:0 withEvent:?];

      LODWORD(self) = [v10 isDescendantOfView:self->_controlsView] ^ 1;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PGControlsContainerView;
    LOBYTE(self) = [(PGControlsContainerView *)&v12 gestureRecognizerShouldBegin:v4];
  }

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (self->_singleTapGestureRecognizer == v6)
  {
    if (self->_doubleTapGestureRecognizer == v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)_handleSingleTapGestureRecognizer:(id)a3
{
  if ([(UIGestureRecognizer *)self->_hoverGestureRecognizer state]== UIGestureRecognizerStatePossible)
  {
    viewModel = self->_viewModel;

    [(PGControlsViewModel *)viewModel handleSingleTap];
  }
}

- (void)_handleDoubleDoubleTapGestureRecognizer:(id)a3
{
  if (!self->_interactivelyResizing)
  {
    [(PGControlsViewModel *)self->_viewModel handleDoubleDoubleTap];
  }
}

- (void)_handleHoverGestureRecognizer:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    if ([(PGControlsContainerView *)self isShowingControlsForHoverActive])
    {
      goto LABEL_8;
    }

    [(PGControlsContainerView *)self setShowingControlsForHoverActive:1];
LABEL_6:
    [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
    v5 = 0;
LABEL_7:
    [(PGControlsContainerView *)self _setPrefersControlsHidden:v5 animated:1];
    goto LABEL_8;
  }

  v4 = [v6 state];
  if ([(PGControlsContainerView *)self isShowingControlsForHoverActive]== (v4 == 2))
  {
    goto LABEL_8;
  }

  [(PGControlsContainerView *)self setShowingControlsForHoverActive:v4 == 2];
  if (v4 == 2)
  {
    goto LABEL_6;
  }

  if ([(PGControlsContainerView *)self _controlsShouldAutoHide])
  {
    v5 = 1;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_acquirePreventAutoHideOfControlsAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  preventAutoHideOfControlsAssertionIdentifiers = self->_preventAutoHideOfControlsAssertionIdentifiers;
  if (!preventAutoHideOfControlsAssertionIdentifiers)
  {
    v8 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    v9 = self->_preventAutoHideOfControlsAssertionIdentifiers;
    self->_preventAutoHideOfControlsAssertionIdentifiers = v8;

    preventAutoHideOfControlsAssertionIdentifiers = self->_preventAutoHideOfControlsAssertionIdentifiers;
  }

  [(NSMutableSet *)preventAutoHideOfControlsAssertionIdentifiers addObject:v6];
  [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x1E698E778]);
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = @"Unknown Reason";
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PGControlsContainerView__acquirePreventAutoHideOfControlsAssertionWithReason___block_invoke;
  v15[3] = &unk_1E7F328C8;
  objc_copyWeak(&v17, &location);
  v12 = v6;
  v16 = v12;
  v13 = [v10 initWithIdentifier:v12 forReason:v11 invalidationBlock:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __80__PGControlsContainerView__acquirePreventAutoHideOfControlsAssertionWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[62] removeObject:*(a1 + 32)];
    [v3 _updateHideControlsAfterDelayTimer];
    WeakRetained = v3;
  }
}

- (void)_setPrefersControlsHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
  [(PGControlsView *)self->_controlsView setPrefersControlsHidden:v5];
  if (v5)
  {
    [(PGControlsContainerView *)self setShowingControlsForHoverActive:0];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PGControlsContainerView__setPrefersControlsHidden_animated___block_invoke;
  v11[3] = &unk_1E7F32530;
  v11[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
  WeakRetained = objc_loadWeakRetained(&self->_hidableControlsVisibilityAnimator);
  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PGControlsContainerView__setPrefersControlsHidden_animated___block_invoke_2;
  v10[3] = &unk_1E7F32530;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PGControlsContainerView__setPrefersControlsHidden_animated___block_invoke_3;
  v9[3] = &unk_1E7F32530;
  v8 = [(PGControlsContainerView *)self _performVisibilityTransitionAnimated:v4 existingAnimator:WeakRetained animations:v10 success:v9];
  objc_storeWeak(&self->_hidableControlsVisibilityAnimator, v8);

  [(PGControlsContainerView *)self _updateHideControlsAfterDelayTimer];
}

void __62__PGControlsContainerView__setPrefersControlsHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 416) updateControlsAlpha];
  v2 = [*(a1 + 32) coordinatedAnimationsForControlsVisibiity];

  if (v2)
  {
    v3 = [*(a1 + 32) coordinatedAnimationsForControlsVisibiity];
    v3[2](v3, [*(*(a1 + 32) + 416) prefersControlsHidden] ^ 1);
  }
}

uint64_t __62__PGControlsContainerView__setPrefersControlsHidden_animated___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 416) updateProgress];
  v2 = *(a1 + 32);

  return [v2 _updateHideControlsAfterDelayTimer];
}

- (id)_updateVisibilityOfView:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5 existingAnimator:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if (!a4)
  {
    [v10 setHidden:0];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__PGControlsContainerView__updateVisibilityOfView_hidden_animated_existingAnimator___block_invoke;
  v19[3] = &unk_1E7F328F0;
  v20 = v10;
  v21 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PGControlsContainerView__updateVisibilityOfView_hidden_animated_existingAnimator___block_invoke_2;
  v15[3] = &unk_1E7F32918;
  v18 = a4;
  v16 = v20;
  v17 = self;
  v12 = v20;
  v13 = [(PGControlsContainerView *)self _performVisibilityTransitionAnimated:v7 existingAnimator:v11 animations:v19 success:v15];

  return v13;
}

uint64_t __84__PGControlsContainerView__updateVisibilityOfView_hidden_animated_existingAnimator___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void *__84__PGControlsContainerView__updateVisibilityOfView_hidden_animated_existingAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:*(a1 + 48)];
  result = *(a1 + 40);
  if (*(a1 + 32) != result[52])
  {

    return [result _updateHideControlsAfterDelayTimer];
  }

  return result;
}

- (id)_performVisibilityTransitionAnimated:(BOOL)a3 existingAnimator:(id)a4 animations:(id)a5 success:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v9 isRunning] && objc_msgSend(v9, "isInterruptible"))
  {
    [v9 stopAnimation:0];
    [v9 finishAnimationAtPosition:2];
  }

  if (v8)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__0;
    v21[4] = __Block_byref_object_dispose__0;
    v12 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:0 curve:v10 animations:0.2];
    v22 = v12;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __100__PGControlsContainerView__performVisibilityTransitionAnimated_existingAnimator_animations_success___block_invoke;
    v18[3] = &unk_1E7F32940;
    v19 = v11;
    v20 = v21;
    [v12 addCompletion:v18];
    [v12 startAnimation];

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v13 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __100__PGControlsContainerView__performVisibilityTransitionAnimated_existingAnimator_animations_success___block_invoke_2;
    v15[3] = &unk_1E7F32968;
    v16 = v10;
    v17 = v11;
    [v13 performWithoutAnimation:v15];

    v12 = 0;
  }

  return v12;
}

void __100__PGControlsContainerView__performVisibilityTransitionAnimated_existingAnimator_animations_success___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __100__PGControlsContainerView__performVisibilityTransitionAnimated_existingAnimator_animations_success___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_controlsShouldAutoHide
{
  v3 = [(PGControlsViewModel *)self->_viewModel values];
  if (![v3 controlsShouldAutoHide] || -[NSMutableSet count](self->_preventAutoHideOfControlsAssertionIdentifiers, "count") || -[PGControlsView prefersControlsHidden](self->_controlsView, "prefersControlsHidden"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(PGControlsContainerView *)self isShowingControlsForHoverActive];
  }

  return v4;
}

- (void)_updateHideControlsAfterDelayTimer
{
  if ([(PGControlsContainerView *)self _controlsShouldAutoHide])
  {
    if (![(PGControlsView *)self->_controlsView prefersControlsHidden]&& !self->_hideControlsAfterDelayTimer)
    {
      objc_initWeak(&location, self);
      v3 = MEMORY[0x1E695DFF0];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __61__PGControlsContainerView__updateHideControlsAfterDelayTimer__block_invoke;
      v6[3] = &unk_1E7F32990;
      objc_copyWeak(&v7, &location);
      v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:3.0];
      hideControlsAfterDelayTimer = self->_hideControlsAfterDelayTimer;
      self->_hideControlsAfterDelayTimer = v4;

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [(PGControlsContainerView *)self _invalidateTimer];
  }
}

uint64_t __61__PGControlsContainerView__updateHideControlsAfterDelayTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([*(WeakRetained + 51) isInterrupted] & 1) == 0)
    {
      [v4 _setPrefersControlsHidden:1 animated:1];
      v2 = v4[61];
      v4[61] = 0;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_invalidateTimer
{
  [(NSTimer *)self->_hideControlsAfterDelayTimer invalidate];
  hideControlsAfterDelayTimer = self->_hideControlsAfterDelayTimer;
  self->_hideControlsAfterDelayTimer = 0;
}

- (PGCommandHandler)commandHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_commandHandler);

  return WeakRetained;
}

@end