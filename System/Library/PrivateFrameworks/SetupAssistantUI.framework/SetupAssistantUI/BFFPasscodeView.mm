@interface BFFPasscodeView
- (BFFPasscodeView)initWithFrame:(CGRect)frame;
- (BOOL)alwaysBounceVertical;
- (CGRect)currentKeyboardFrame;
- (UIViewController)passcodeViewController;
- (void)animateTransitionToPasscodeInput:(id)input animation:(unint64_t)animation;
- (void)dealloc;
- (void)keyboardWillShow:(id)show;
- (void)layoutSubviews;
- (void)setCurrentKeyboardFrame:(CGRect)frame;
- (void)transitionToPasscodeInput:(id)input delegate:(id)delegate;
@end

@implementation BFFPasscodeView

- (BFFPasscodeView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = BFFPasscodeView;
  v3 = [(BFFTitleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v5 = +[BFFStyle sharedStyle];
    backgroundColor = [v5 backgroundColor];
    [(BFFPasscodeView *)v3 setBackgroundColor:backgroundColor];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BFFPasscodeView;
  [(BFFPasscodeView *)&v4 dealloc];
}

- (void)transitionToPasscodeInput:(id)input delegate:(id)delegate
{
  inputCopy = input;
  delegateCopy = delegate;
  passcodeInputView = [(BFFPasscodeView *)self passcodeInputView];
  [passcodeInputView setEnabled:0];

  passcodeInputView2 = [(BFFPasscodeView *)self passcodeInputView];
  [passcodeInputView2 setDelegate:0];

  [(BFFPasscodeInputView *)self->_passcodeInputView removeFromSuperview];
  objc_storeStrong(&self->_passcodeInputView, input);
  if (self->_passcodeInputView)
  {
    [(BFFPasscodeView *)self addSubview:?];
    passcodeInputView3 = [(BFFPasscodeView *)self passcodeInputView];
    [passcodeInputView3 setDelegate:delegateCopy];
  }

  [(BFFPasscodeView *)self setNeedsLayout];
}

- (void)animateTransitionToPasscodeInput:(id)input animation:(unint64_t)animation
{
  inputCopy = input;
  _shouldReverseLayoutDirection = [(BFFPasscodeView *)self _shouldReverseLayoutDirection];
  if (((animation == 2) & _shouldReverseLayoutDirection) != 0)
  {
    animationCopy = 1;
  }

  else
  {
    animationCopy = animation;
  }

  if (((animation == 1) & _shouldReverseLayoutDirection) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = animationCopy;
  }

  passcodeInputView = [(BFFPasscodeView *)self passcodeInputView];
  delegate = [passcodeInputView delegate];
  [passcodeInputView setEnabled:0];
  [passcodeInputView setDelegate:0];
  objc_storeStrong(&self->_passcodeInputView, input);
  [inputCopy becomeFirstResponder];
  passcodeInputView2 = [(BFFPasscodeView *)self passcodeInputView];
  [passcodeInputView2 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(BFFPasscodeView *)self bounds];
  v23 = v22;
  [passcodeInputView center];
  v25 = v24;
  v27 = v26;
  v28 = v24 + v23;
  v29 = v24 - v23;
  [inputCopy setFrame:{v15, v17, v19, v21}];
  if ((v10 - 1) > 1)
  {
    if (v10 == 3)
    {
      [inputCopy setAlpha:0.0];
    }
  }

  else
  {
    if (v10 == 2)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    [inputCopy setCenter:{v30, v27}];
  }

  [(BFFPasscodeView *)self addSubview:inputCopy];
  if (v10 == 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  if (v10 == 3)
  {
    v32 = 6;
  }

  else
  {
    v32 = 0;
  }

  if ((v10 - 1) >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  v34 = MEMORY[0x277D75D18];
  [MEMORY[0x277D75CE0] defaultDurationForTransition:v33];
  v36 = v35;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__BFFPasscodeView_animateTransitionToPasscodeInput_animation___block_invoke;
  v44[3] = &unk_279BB4E50;
  v47 = v10;
  v45 = passcodeInputView;
  v48 = v29;
  v49 = v27;
  v50 = v28;
  v51 = v27;
  v46 = inputCopy;
  v52 = v25;
  v53 = v27;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__BFFPasscodeView_animateTransitionToPasscodeInput_animation___block_invoke_2;
  v40[3] = &unk_279BB4E78;
  v41 = v45;
  v42 = v46;
  v43 = delegate;
  v37 = delegate;
  v38 = v46;
  v39 = v45;
  [v34 animateWithDuration:v44 animations:v40 completion:v36];
}

uint64_t __62__BFFPasscodeView_animateTransitionToPasscodeInput_animation___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if ((v2 - 1) >= 2)
  {
    if (v2 == 3)
    {
      [*(result + 32) setAlpha:0.0];
      v10 = *(v1 + 5);

      return [v10 setAlpha:1.0];
    }
  }

  else
  {
    v3 = *(result + 32);
    v4 = v2 == 2;
    v5 = 10;
    if (v4)
    {
      v5 = 8;
    }

    v6 = 9;
    if (v4)
    {
      v6 = 7;
    }

    [v3 setCenter:{v1[v6], v1[v5]}];
    v7 = *(v1 + 5);
    v8 = v1[11];
    v9 = v1[12];

    return [v7 setCenter:{v8, v9}];
  }

  return result;
}

uint64_t __62__BFFPasscodeView_animateTransitionToPasscodeInput_animation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 setDelegate:v3];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(BFFPasscodeView *)self setCurrentKeyboardFrame:v7, v9, v11, v13];

  [(BFFPasscodeView *)self setNeedsLayout];
}

- (void)setCurrentKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_currentKeyboardFrame = &self->_currentKeyboardFrame;
  if (!CGRectEqualToRect(frame, self->_currentKeyboardFrame))
  {
    p_currentKeyboardFrame->origin.x = x;
    p_currentKeyboardFrame->origin.y = y;
    p_currentKeyboardFrame->size.width = width;
    p_currentKeyboardFrame->size.height = height;
    [(BFFPasscodeView *)self contentInset];

    [(BFFPasscodeView *)self setContentInset:?];
  }
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = BFFPasscodeView;
  [(BFFTitleView *)&v48 layoutSubviews];
  passcodeInputView = [(BFFPasscodeView *)self passcodeInputView];

  if (passcodeInputView)
  {
    if (BFFIsiPhone())
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v6 = v5;

      if (v6 <= 480.01)
      {
        titleLabel = [(BFFTitleView *)self titleLabel];
        [titleLabel _firstLineBaselineFrameOriginY];
        v9 = v8;

        titleLabel2 = [(BFFTitleView *)self titleLabel];
        [titleLabel2 _setFirstLineBaselineFrameOriginY:v9 + -25.0];

        titleLabel3 = [(BFFTitleView *)self titleLabel];
        [titleLabel3 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        passcodeViewController = [(BFFPasscodeView *)self passcodeViewController];
        navigationController = [passcodeViewController navigationController];
        navigationBar = [navigationController navigationBar];

        if (navigationBar)
        {
          [navigationBar frame];
          MaxY = CGRectGetMaxY(v49);
          v50.origin.x = v13;
          v50.origin.y = v15;
          v50.size.width = v17;
          v50.size.height = v19;
          if (CGRectGetMinY(v50) < MaxY)
          {
            titleLabel4 = [(BFFTitleView *)self titleLabel];
            [titleLabel4 setFrame:{v13, MaxY, v17, v19}];
          }
        }
      }
    }

    [(BFFTitleView *)self contentBounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    titleLabel5 = [(BFFTitleView *)self titleLabel];
    [titleLabel5 frame];
    v34 = CGRectGetMaxY(v51);

    v52.origin.x = v26;
    v52.origin.y = v28;
    v52.size.width = v30;
    v52.size.height = v32;
    v35 = CGRectGetMaxY(v52);
    [(BFFPasscodeView *)self currentKeyboardFrame];
    if (v36 <= 0.0)
    {
      v35 = v35 - v34;
    }

    else
    {
      [(BFFPasscodeView *)self convertPoint:0 toView:0.0, v35];
      v38 = v37;
      [(BFFPasscodeView *)self currentKeyboardFrame];
      MinY = CGRectGetMinY(v53);
      if (v38 > MinY)
      {
        v35 = v35 - (v38 - MinY);
      }
    }

    passcodeInputView2 = [(BFFPasscodeView *)self passcodeInputView];
    v54.origin.x = v26;
    v54.origin.y = v28;
    v54.size.width = v30;
    v54.size.height = v32;
    [passcodeInputView2 sizeThatFits:{CGRectGetWidth(v54), v35 - v34}];
    v42 = v41;
    v44 = v43;

    passcodeInputView3 = [(BFFPasscodeView *)self passcodeInputView];
    [passcodeInputView3 setFrame:{v26, v34, v42, v44}];

    passcodeInputView4 = [(BFFPasscodeView *)self passcodeInputView];
    [passcodeInputView4 layoutSubviews];

    [(BFFPasscodeView *)self bounds];
    [(BFFPasscodeView *)self setContentSize:v47, v34 + v44];
  }
}

- (BOOL)alwaysBounceVertical
{
  titleLabel = [(BFFTitleView *)self titleLabel];
  [titleLabel frame];
  MaxY = CGRectGetMaxY(v10);
  passcodeInputView = [(BFFPasscodeView *)self passcodeInputView];
  [passcodeInputView intrinsicContentSize];
  v7 = MaxY + v6;

  [(BFFPasscodeView *)self contentSize];
  return v7 > v8;
}

- (UIViewController)passcodeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_passcodeViewController);

  return WeakRetained;
}

- (CGRect)currentKeyboardFrame
{
  x = self->_currentKeyboardFrame.origin.x;
  y = self->_currentKeyboardFrame.origin.y;
  width = self->_currentKeyboardFrame.size.width;
  height = self->_currentKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end