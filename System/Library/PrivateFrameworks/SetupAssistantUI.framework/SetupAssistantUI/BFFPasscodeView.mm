@interface BFFPasscodeView
- (BFFPasscodeView)initWithFrame:(CGRect)a3;
- (BOOL)alwaysBounceVertical;
- (CGRect)currentKeyboardFrame;
- (UIViewController)passcodeViewController;
- (void)animateTransitionToPasscodeInput:(id)a3 animation:(unint64_t)a4;
- (void)dealloc;
- (void)keyboardWillShow:(id)a3;
- (void)layoutSubviews;
- (void)setCurrentKeyboardFrame:(CGRect)a3;
- (void)transitionToPasscodeInput:(id)a3 delegate:(id)a4;
@end

@implementation BFFPasscodeView

- (BFFPasscodeView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BFFPasscodeView;
  v3 = [(BFFTitleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v5 = +[BFFStyle sharedStyle];
    v6 = [v5 backgroundColor];
    [(BFFPasscodeView *)v3 setBackgroundColor:v6];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BFFPasscodeView;
  [(BFFPasscodeView *)&v4 dealloc];
}

- (void)transitionToPasscodeInput:(id)a3 delegate:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(BFFPasscodeView *)self passcodeInputView];
  [v8 setEnabled:0];

  v9 = [(BFFPasscodeView *)self passcodeInputView];
  [v9 setDelegate:0];

  [(BFFPasscodeInputView *)self->_passcodeInputView removeFromSuperview];
  objc_storeStrong(&self->_passcodeInputView, a3);
  if (self->_passcodeInputView)
  {
    [(BFFPasscodeView *)self addSubview:?];
    v10 = [(BFFPasscodeView *)self passcodeInputView];
    [v10 setDelegate:v7];
  }

  [(BFFPasscodeView *)self setNeedsLayout];
}

- (void)animateTransitionToPasscodeInput:(id)a3 animation:(unint64_t)a4
{
  v7 = a3;
  v8 = [(BFFPasscodeView *)self _shouldReverseLayoutDirection];
  if (((a4 == 2) & v8) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  if (((a4 == 1) & v8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(BFFPasscodeView *)self passcodeInputView];
  v12 = [v11 delegate];
  [v11 setEnabled:0];
  [v11 setDelegate:0];
  objc_storeStrong(&self->_passcodeInputView, a3);
  [v7 becomeFirstResponder];
  v13 = [(BFFPasscodeView *)self passcodeInputView];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(BFFPasscodeView *)self bounds];
  v23 = v22;
  [v11 center];
  v25 = v24;
  v27 = v26;
  v28 = v24 + v23;
  v29 = v24 - v23;
  [v7 setFrame:{v15, v17, v19, v21}];
  if ((v10 - 1) > 1)
  {
    if (v10 == 3)
    {
      [v7 setAlpha:0.0];
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

    [v7 setCenter:{v30, v27}];
  }

  [(BFFPasscodeView *)self addSubview:v7];
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
  v45 = v11;
  v48 = v29;
  v49 = v27;
  v50 = v28;
  v51 = v27;
  v46 = v7;
  v52 = v25;
  v53 = v27;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__BFFPasscodeView_animateTransitionToPasscodeInput_animation___block_invoke_2;
  v40[3] = &unk_279BB4E78;
  v41 = v45;
  v42 = v46;
  v43 = v12;
  v37 = v12;
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

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(BFFPasscodeView *)self setCurrentKeyboardFrame:v7, v9, v11, v13];

  [(BFFPasscodeView *)self setNeedsLayout];
}

- (void)setCurrentKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_currentKeyboardFrame = &self->_currentKeyboardFrame;
  if (!CGRectEqualToRect(a3, self->_currentKeyboardFrame))
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
  v3 = [(BFFPasscodeView *)self passcodeInputView];

  if (v3)
  {
    if (BFFIsiPhone())
    {
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 bounds];
      v6 = v5;

      if (v6 <= 480.01)
      {
        v7 = [(BFFTitleView *)self titleLabel];
        [v7 _firstLineBaselineFrameOriginY];
        v9 = v8;

        v10 = [(BFFTitleView *)self titleLabel];
        [v10 _setFirstLineBaselineFrameOriginY:v9 + -25.0];

        v11 = [(BFFTitleView *)self titleLabel];
        [v11 frame];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v20 = [(BFFPasscodeView *)self passcodeViewController];
        v21 = [v20 navigationController];
        v22 = [v21 navigationBar];

        if (v22)
        {
          [v22 frame];
          MaxY = CGRectGetMaxY(v49);
          v50.origin.x = v13;
          v50.origin.y = v15;
          v50.size.width = v17;
          v50.size.height = v19;
          if (CGRectGetMinY(v50) < MaxY)
          {
            v24 = [(BFFTitleView *)self titleLabel];
            [v24 setFrame:{v13, MaxY, v17, v19}];
          }
        }
      }
    }

    [(BFFTitleView *)self contentBounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(BFFTitleView *)self titleLabel];
    [v33 frame];
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

    v40 = [(BFFPasscodeView *)self passcodeInputView];
    v54.origin.x = v26;
    v54.origin.y = v28;
    v54.size.width = v30;
    v54.size.height = v32;
    [v40 sizeThatFits:{CGRectGetWidth(v54), v35 - v34}];
    v42 = v41;
    v44 = v43;

    v45 = [(BFFPasscodeView *)self passcodeInputView];
    [v45 setFrame:{v26, v34, v42, v44}];

    v46 = [(BFFPasscodeView *)self passcodeInputView];
    [v46 layoutSubviews];

    [(BFFPasscodeView *)self bounds];
    [(BFFPasscodeView *)self setContentSize:v47, v34 + v44];
  }
}

- (BOOL)alwaysBounceVertical
{
  v3 = [(BFFTitleView *)self titleLabel];
  [v3 frame];
  MaxY = CGRectGetMaxY(v10);
  v5 = [(BFFPasscodeView *)self passcodeInputView];
  [v5 intrinsicContentSize];
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