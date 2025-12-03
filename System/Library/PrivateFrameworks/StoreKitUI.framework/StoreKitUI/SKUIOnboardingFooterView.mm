@interface SKUIOnboardingFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIButton)leftButton;
- (UIButton)rightButton;
- (id)_newButton;
- (void)_hideButton:(id)button withAnimation:(int64_t)animation;
- (void)_showButton:(id)button withTitle:(id)title animation:(int64_t)animation;
- (void)hideLeftButtonWithAnimation:(int64_t)animation;
- (void)hideRightButtonWithAnimation:(int64_t)animation;
- (void)layoutSubviews;
- (void)setProgressView:(id)view;
- (void)showLeftButtonWithTitle:(id)title animation:(int64_t)animation;
- (void)showRightButtonWithTitle:(id)title animation:(int64_t)animation;
@end

@implementation SKUIOnboardingFooterView

- (void)hideLeftButtonWithAnimation:(int64_t)animation
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIOnboardingFooterView *)v5 hideLeftButtonWithAnimation:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIOnboardingFooterView *)self _hideButton:self->_leftButton withAnimation:animation];
}

- (void)hideRightButtonWithAnimation:(int64_t)animation
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIOnboardingFooterView *)v5 hideRightButtonWithAnimation:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SKUIOnboardingFooterView *)self _hideButton:self->_rightButton withAnimation:animation];
}

- (UIButton)leftButton
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIOnboardingFooterView *)v3 leftButton:v4];
      }
    }
  }

  leftButton = self->_leftButton;
  if (!leftButton)
  {
    _newButton = [(SKUIOnboardingFooterView *)self _newButton];
    v13 = self->_leftButton;
    self->_leftButton = _newButton;

    [(SKUIOnboardingFooterView *)self addSubview:self->_leftButton];
    leftButton = self->_leftButton;
  }

  return leftButton;
}

- (UIButton)rightButton
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIOnboardingFooterView *)v3 rightButton:v4];
      }
    }
  }

  rightButton = self->_rightButton;
  if (!rightButton)
  {
    _newButton = [(SKUIOnboardingFooterView *)self _newButton];
    v13 = self->_rightButton;
    self->_rightButton = _newButton;

    [(SKUIOnboardingFooterView *)self addSubview:self->_rightButton];
    rightButton = self->_rightButton;
  }

  return rightButton;
}

- (void)setProgressView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIOnboardingFooterView *)v6 setProgressView:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  progressView = self->_progressView;
  if (progressView != viewCopy)
  {
    [(SKUIOnboardingProgressView *)progressView removeFromSuperview];
    objc_storeStrong(&self->_progressView, view);
    if (self->_progressView)
    {
      [(SKUIOnboardingFooterView *)self addSubview:?];
    }

    [(SKUIOnboardingFooterView *)self setNeedsLayout];
  }
}

- (void)showLeftButtonWithTitle:(id)title animation:(int64_t)animation
{
  titleCopy = title;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIOnboardingFooterView *)v7 showLeftButtonWithTitle:v8 animation:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  leftButton = [(SKUIOnboardingFooterView *)self leftButton];
  [(SKUIOnboardingFooterView *)self _showButton:leftButton withTitle:titleCopy animation:animation];
}

- (void)showRightButtonWithTitle:(id)title animation:(int64_t)animation
{
  titleCopy = title;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIOnboardingFooterView *)v7 showRightButtonWithTitle:v8 animation:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  rightButton = [(SKUIOnboardingFooterView *)self rightButton];
  [(SKUIOnboardingFooterView *)self _showButton:rightButton withTitle:titleCopy animation:animation];
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIOnboardingFooterView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIOnboardingFooterView *)self bounds];
  v12 = v11;
  v14 = v13;
  progressView = self->_progressView;
  if (progressView)
  {
    [(SKUIOnboardingProgressView *)progressView frame];
    [(SKUIOnboardingProgressView *)self->_progressView sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    v17 = v16;
    v19 = v18;
    *&v16 = (v12 - v16) * 0.5;
    v20 = floorf(*&v16);
    *&v16 = (v14 - v18) * 0.5;
    v21 = floorf(*&v16);
    [(SKUIOnboardingProgressView *)self->_progressView setFrame:v20, v21, v17, v18];
    v34.origin.x = v20;
    v34.origin.y = v21;
    v34.size.width = v17;
    v34.size.height = v19;
    MaxX = CGRectGetMaxX(v34);
    v23 = v12 - MaxX;
  }

  else
  {
    v20 = v11 * 0.5;
    MaxX = v11 * 0.5;
    v23 = v11 * 0.5;
  }

  leftButton = self->_leftButton;
  if (leftButton && ([(UIButton *)leftButton isHidden]& 1) == 0)
  {
    [(UIButton *)self->_leftButton frame];
    v26 = (v20 - v25) * 0.5;
    v28 = (v14 - v27) * 0.5;
    [(UIButton *)self->_leftButton setFrame:floorf(v26), floorf(v28)];
  }

  rightButton = self->_rightButton;
  if (rightButton)
  {
    if (([(UIButton *)rightButton isHidden]& 1) == 0)
    {
      [(UIButton *)self->_rightButton frame];
      v31 = MaxX + (v23 - v30) * 0.5;
      v33 = (v14 - v32) * 0.5;
      [(UIButton *)self->_rightButton setFrame:floorf(v31), floorf(v33)];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIOnboardingFooterView *)v4 sizeThatFits:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  v23 = self->_leftButton;
  v24 = self->_rightButton;
  v14 = self->_progressView;
  v15 = 0;
  v25 = v14;
  v16 = *(MEMORY[0x277CBF390] + 16);
  v17 = *(MEMORY[0x277CBF390] + 24);
  do
  {
    [(UIButton *)*(&v23 + v15) sizeThatFits:v16, v17, v23, v24, v25, v26];
    if (v13 < v19)
    {
      v13 = v19;
    }

    v12 = v12 + v18;
    v15 += 8;
  }

  while (v15 != 24);
  for (i = 16; i != -8; i -= 8)
  {
  }

  v21 = v12;
  v22 = v13;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_hideButton:(id)button withAnimation:(int64_t)animation
{
  buttonCopy = button;
  v7 = buttonCopy;
  if (buttonCopy && ([buttonCopy isHidden] & 1) == 0)
  {
    v8 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SKUIOnboardingFooterView__hideButton_withAnimation___block_invoke;
    v17[3] = &unk_2781F80F0;
    v9 = v7;
    v18 = v9;
    [v8 _performWithoutAnimation:v17];
    if (animation != 2)
    {
      if (animation == 1)
      {
        [v9 setHidden:1];
      }

      else if (!animation)
      {
        v10 = MEMORY[0x277D75D18];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __54__SKUIOnboardingFooterView__hideButton_withAnimation___block_invoke_2;
        v15[3] = &unk_2781F80F0;
        v16 = v9;
        [v10 animateWithDuration:v15 animations:0.25];
        v11 = v16;
LABEL_9:
      }

      goto LABEL_11;
    }

    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__SKUIOnboardingFooterView__hideButton_withAnimation___block_invoke_3;
    v13[3] = &unk_2781F80C8;
    v13[4] = self;
    v14 = v9;
    [v12 animateWithDuration:v13 animations:0.5];
    v11 = v14;
    goto LABEL_9;
  }

LABEL_11:
}

uint64_t __54__SKUIOnboardingFooterView__hideButton_withAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = v2;
  [*(a1 + 32) setHighlighted:0];
  v4 = *(a1 + 32);

  return [v4 setAlpha:v3];
}

uint64_t __54__SKUIOnboardingFooterView__hideButton_withAnimation___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 416))
  {
    [*(a1 + 40) frame];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    [*(*(a1 + 32) + 416) frame];
    v12 = *(a1 + 40);
    if (v12 == *(*(a1 + 32) + 408))
    {
      v8 = CGRectGetMaxX(*&v8) - v5;
      v12 = *(a1 + 40);
    }

    [v12 setFrame:{v8, v3, v5, v7}];
  }

  v13 = *(a1 + 40);

  return [v13 setAlpha:0.0];
}

- (id)_newButton
{
  v2 = [MEMORY[0x277D75220] buttonWithType:1];
  [v2 setHidden:1];
  return v2;
}

- (void)_showButton:(id)button withTitle:(id)title animation:(int64_t)animation
{
  buttonCopy = button;
  titleCopy = title;
  [(UIButton *)buttonCopy setEnabled:1];
  [(UIButton *)buttonCopy setTitle:titleCopy forState:0];

  [(UIButton *)buttonCopy sizeToFit];
  if (([(UIButton *)buttonCopy isHidden]& 1) == 0)
  {
    [(UIButton *)buttonCopy alpha];
    if (v10 > 0.00000011920929)
    {
      goto LABEL_13;
    }
  }

  [(UIButton *)buttonCopy setHidden:0];
  switch(animation)
  {
    case 0:
      goto LABEL_10;
    case 1:
      [(UIButton *)buttonCopy setAlpha:1.0];
LABEL_13:
      [(SKUIOnboardingFooterView *)self setNeedsLayout];
      break;
    case 2:
      if (self->_progressView)
      {
        [(SKUIOnboardingFooterView *)self bounds];
        v12 = v11;
        [(UIButton *)buttonCopy frame];
        v14 = v13;
        v16 = v15;
        [(SKUIOnboardingProgressView *)self->_progressView frame];
        v21 = v17;
        if (self->_leftButton == buttonCopy)
        {
          v21 = CGRectGetMaxX(*&v17) - v14;
        }

        v22 = (v12 - v16) * 0.5;
        v23 = floorf(v22);
        [(UIButton *)buttonCopy setAlpha:0.0];
        [(UIButton *)buttonCopy setFrame:v21, v23, v14, v16];
        [(SKUIOnboardingFooterView *)self sendSubviewToBack:buttonCopy];
        v24 = MEMORY[0x277D75D18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __60__SKUIOnboardingFooterView__showButton_withTitle_animation___block_invoke_2;
        v27[3] = &unk_2781F80C8;
        v28 = buttonCopy;
        selfCopy = self;
        [v24 animateWithDuration:v27 animations:0.5];
        v25 = v28;
        goto LABEL_11;
      }

LABEL_10:
      [(UIButton *)buttonCopy setAlpha:0.0];
      [(SKUIOnboardingFooterView *)self layoutSubviews];
      v26 = MEMORY[0x277D75D18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__SKUIOnboardingFooterView__showButton_withTitle_animation___block_invoke;
      v30[3] = &unk_2781F80F0;
      v31 = buttonCopy;
      [v26 animateWithDuration:v30 animations:0.25];
      v25 = v31;
LABEL_11:

      break;
  }
}

uint64_t __60__SKUIOnboardingFooterView__showButton_withTitle_animation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 layoutSubviews];
}

@end