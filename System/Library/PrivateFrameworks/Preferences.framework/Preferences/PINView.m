@interface PINView
- (PSPINEntryViewDelegate)delegate;
- (UIButton)optionsButton;
- (double)getCurrentTitleFontSize;
- (void)_layoutBottomSubview:(id)a3 withMinY:(double)a4 withSize:(CGSize)a5;
- (void)hideError;
- (void)hideFailedAttempts;
- (void)layoutBottomSubview:(id)a3 withLabel:(id)a4 withMinY:(double)a5;
- (void)layoutSubviews;
- (void)layoutTopLabel:(id)a3 withMaxY:(double)a4;
- (void)notifyDelegatePINChanged;
- (void)notifyDelegatePINEntered;
- (void)optionsButtonTapped;
- (void)setOptionsButtonTitle:(id)a3;
- (void)setPINPolicyString:(id)a3 visible:(BOOL)a4;
- (void)setPasscodeOptionsHandler:(id)a3;
- (void)setShowsOptionsButton:(BOOL)a3;
- (void)setTitle:(id)a3 font:(id)a4;
- (void)showError:(id)a3 animate:(BOOL)a4;
- (void)showFailedAttempts:(int64_t)a3;
@end

@implementation PINView

- (void)showError:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  errorTitleLabel = self->_errorTitleLabel;
  if (!errorTitleLabel)
  {
    [(UILabel *)self->_titleLabel frame];
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    v13 = self->_errorTitleLabel;
    self->_errorTitleLabel = v12;

    v14 = self->_errorTitleLabel;
    v15 = [(UILabel *)self->_titleLabel font];
    [(UILabel *)v14 setFont:v15];

    [(UILabel *)self->_errorTitleLabel setOpaque:0];
    [(UILabel *)self->_errorTitleLabel setBackgroundColor:0];
    [(UILabel *)self->_errorTitleLabel setTextAlignment:1];
    v16 = self->_errorTitleLabel;
    v17 = [(UILabel *)self->_titleLabel textColor];
    [(UILabel *)v16 setTextColor:v17];

    [(UILabel *)self->_errorTitleLabel accessibilitySetIdentification:@"errorTitleLabel"];
    [(UILabel *)self->_errorTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_errorTitleLabel setAdjustsFontSizeToFitWidth:1];
    [(PINView *)self addSubview:self->_errorTitleLabel];
    [(UILabel *)self->_errorTitleLabel setAlpha:0.0];
    errorTitleLabel = self->_errorTitleLabel;
  }

  [(UILabel *)errorTitleLabel setText:v6];
  [(PINView *)self setStringValue:&stru_1EFE45030];
  if (!self->_error)
  {
    self->_error = 1;
    objc_initWeak(&location, self);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __29__PINView_showError_animate___block_invoke;
    v23 = &unk_1E71DE8A0;
    objc_copyWeak(&v24, &location);
    v18 = _Block_copy(&v20);
    v19 = v18;
    if (v4)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:{0.3, v20, v21, v22, v23}];
    }

    else
    {
      (*(v18 + 2))(v18);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __29__PINView_showError_animate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[51] setAlpha:0.0];
  [WeakRetained[52] setAlpha:1.0];
}

- (void)hideError
{
  if (self->_error)
  {
    self->_error = 0;
    [(UILabel *)self->_titleLabel setAlpha:1.0];
    errorTitleLabel = self->_errorTitleLabel;

    [(UILabel *)errorTitleLabel setAlpha:0.0];
  }
}

- (void)setTitle:(id)a3 font:(id)a4
{
  titleLabel = self->_titleLabel;
  v7 = a4;
  [(UILabel *)titleLabel setText:a3];
  [(UILabel *)self->_titleLabel setFont:v7];
}

- (double)getCurrentTitleFontSize
{
  [(UILabel *)self->_titleLabel _actualScaleFactor];
  v4 = v3;
  v5 = [(UILabel *)self->_titleLabel font];
  [v5 pointSize];
  v7 = v4 * v6;

  return v7;
}

- (void)notifyDelegatePINChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v7 = [(PINView *)self stringValue];
      [v8 pinView:self pinValueChanged:v7];
    }
  }
}

- (void)notifyDelegatePINEntered
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v7 = [(PINView *)self stringValue];
      [v8 pinView:self pinEntered:v7];
    }
  }
}

- (void)setPINPolicyString:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  pinPolicyLabel = self->_pinPolicyLabel;
  v16 = v6;
  if (!pinPolicyLabel)
  {
    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v10 = self->_pinPolicyLabel;
    self->_pinPolicyLabel = v9;

    v11 = self->_pinPolicyLabel;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)self->_pinPolicyLabel setOpaque:0];
    [(UILabel *)self->_pinPolicyLabel setNumberOfLines:0];
    [(UILabel *)self->_pinPolicyLabel setBackgroundColor:0];
    [(UILabel *)self->_pinPolicyLabel setTextAlignment:1];
    v13 = self->_pinPolicyLabel;
    v14 = [(UILabel *)self->_titleLabel textColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)self->_pinPolicyLabel setAdjustsFontSizeToFitWidth:1];
    [(PINView *)self addSubview:self->_pinPolicyLabel];
    v6 = v16;
    pinPolicyLabel = self->_pinPolicyLabel;
  }

  [(UILabel *)pinPolicyLabel setText:v6];
  v15 = 0.0;
  if (v4)
  {
    v15 = 1.0;
  }

  [(UILabel *)self->_pinPolicyLabel setAlpha:v15];
  [(PINView *)self setNeedsLayout];
}

- (void)showFailedAttempts:(int64_t)a3
{
  failureView = self->_failureView;
  if (!failureView)
  {
    v6 = [FailureBarView alloc];
    [(PINView *)self frame];
    v7 = [(FailureBarView *)v6 initWithFrame:?];
    v8 = self->_failureView;
    self->_failureView = v7;

    failureView = self->_failureView;
  }

  [(PINView *)self addSubview:failureView];
  [(FailureBarView *)self->_failureView setFailureCount:a3];
  pinPolicyLabel = self->_pinPolicyLabel;
  if (pinPolicyLabel)
  {
    [(UILabel *)pinPolicyLabel setHidden:1];
  }

  [(PINView *)self setNeedsLayout];
}

- (void)hideFailedAttempts
{
  [(FailureBarView *)self->_failureView removeFromSuperview];
  pinPolicyLabel = self->_pinPolicyLabel;
  if (pinPolicyLabel)
  {
    [(UILabel *)pinPolicyLabel setHidden:0];
  }

  [(PINView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PINView;
  [(PINView *)&v26 layoutSubviews];
  v3 = [(PINView *)self passcodeOptionsHandler];

  if (v3)
  {
    [(PINView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PINView *)self optionsButton];
    v13 = MEMORY[0x1E69DB878];
    v14 = [(UIButton *)self->_optionsButton titleLabel];
    v15 = [v14 font];
    v16 = [v15 fontDescriptor];
    [(PINView *)self getCurrentTitleFontSize];
    v17 = [v13 fontWithDescriptor:v16 size:?];
    v18 = [v12 titleLabel];
    [v18 setFont:v17];

    [v12 sizeToFit];
    [v12 frame];
    v20 = v19;
    v22 = v21;
    [(PINView *)self bounds];
    if (v20 >= v23 + -30.0)
    {
      v20 = v23 + -30.0;
    }

    v24 = (v9 - v20) * 0.5;
    v25 = floorf(v24);
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    [(UIButton *)self->_optionsButton setFrame:v25, CGRectGetMaxY(v27) - v22 + -10.0, v20, v22];
  }
}

- (UIButton)optionsButton
{
  optionsButton = self->_optionsButton;
  if (!optionsButton)
  {
    v4 = objc_alloc_init(PINOptionsButton);
    v5 = self->_optionsButton;
    self->_optionsButton = &v4->super;

    v6 = self->_optionsButton;
    v7 = [(PINView *)self optionsButtonTitle];
    if (v7)
    {
      [(UIButton *)v6 setTitle:v7 forState:0];
    }

    else
    {
      v8 = PS_LocalizedStringForPINEntry(@"PASSCODE_OPTIONS");
      [(UIButton *)v6 setTitle:v8 forState:0];
    }

    [(UIButton *)self->_optionsButton addTarget:self action:sel_optionsButtonTapped forControlEvents:64];
    [(PINView *)self addSubview:self->_optionsButton];
    [(PINView *)self setNeedsLayout];
    optionsButton = self->_optionsButton;
  }

  return optionsButton;
}

- (void)setOptionsButtonTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_optionsButtonTitle != v4)
  {
    v12 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v12;
    if (!v6)
    {
      v7 = [(NSString *)v12 copy];
      optionsButtonTitle = self->_optionsButtonTitle;
      self->_optionsButtonTitle = v7;

      optionsButton = self->_optionsButton;
      v10 = self->_optionsButtonTitle;
      if (v10)
      {
        [(UIButton *)self->_optionsButton setTitle:v10 forState:0];
      }

      else
      {
        v11 = PS_LocalizedStringForPINEntry(@"PASSCODE_OPTIONS");
        [(UIButton *)optionsButton setTitle:v11 forState:0];
      }

      [(PINView *)self setNeedsLayout];
      v5 = v12;
    }
  }
}

- (void)setPasscodeOptionsHandler:(id)a3
{
  if (self->_passcodeOptionsHandler != a3)
  {
    v4 = [a3 copy];
    passcodeOptionsHandler = self->_passcodeOptionsHandler;
    self->_passcodeOptionsHandler = v4;

    [(PINView *)self setNeedsLayout];
  }
}

- (void)optionsButtonTapped
{
  passcodeOptionsHandler = self->_passcodeOptionsHandler;
  if (passcodeOptionsHandler)
  {
    passcodeOptionsHandler[2](passcodeOptionsHandler, self->_optionsButton);
  }
}

- (void)setShowsOptionsButton:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = [(PINView *)self optionsButton];
  }

  else
  {
    v4 = self->_optionsButton;
  }

  v5 = v4;
  [(UIButton *)v4 setHidden:!v3];
}

- (void)layoutTopLabel:(id)a3 withMaxY:(double)a4
{
  v18 = a3;
  [(PINView *)self bounds];
  v6 = a4 + -22.0;
  [v18 sizeThatFits:{v7 + -30.0, a4 + -22.0}];
  if (v8 <= a4 + -22.0)
  {
    v6 = v8;
  }

  PSRoundToPixel(a4 - v6);
  UIRectCenteredXInRect();
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 scale];
  UIRectIntegralWithScale();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v18 setFrame:{v11, v13, v15, v17}];
}

- (void)layoutBottomSubview:(id)a3 withLabel:(id)a4 withMinY:(double)a5
{
  v37 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E69DB878];
  v10 = [v8 font];
  v11 = [v10 fontDescriptor];
  v12 = [v8 font];
  [v12 pointSize];
  v14 = v13;

  [(PINView *)self getCurrentTitleFontSize];
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = [v9 fontWithDescriptor:v11 size:v15];
  [v8 setFont:v16];

  [(PINView *)self bounds];
  v17 = v39.size.width + -30.0;
  v18 = CGRectGetMaxY(v39) + -10.0 - a5;
  [v37 sizeThatFits:{v17, v18}];
  if (v20 <= v18)
  {
    v21 = v20;
  }

  else
  {
    v21 = v18;
  }

  if (v20 <= v18)
  {
    v17 = v19;
  }

  [(PINView *)self _layoutBottomSubview:v37 withMinY:a5 withSize:v17, v21];
  optionsButton = self->_optionsButton;
  if (optionsButton)
  {
    if (([(UIButton *)optionsButton isHidden]& 1) == 0)
    {
      [v37 frame];
      MaxY = CGRectGetMaxY(v40);
      [(UIButton *)self->_optionsButton frame];
      if (MaxY > CGRectGetMinY(v41) + -10.0)
      {
        v24 = [(UIButton *)self->_optionsButton titleLabel];
        v25 = [v24 text];
        v26 = [v25 length];
        v27 = [v8 text];
        v28 = v26 / [v27 length];

        if (v28 > 0.0 && v28 < 1.0)
        {
          [(UIButton *)self->_optionsButton frame];
          v31 = v30;
          v33 = v32;
          v34 = PSRoundToPixel((v18 + -10.0) * v28 / (v28 + 1.0));
          [(PINView *)self frame];
          v35 = CGRectGetMaxY(v42);
          v36 = PSRoundToPixel(v35 - v34 + -10.0);
          [(UIButton *)self->_optionsButton setFrame:v31, v36, v33, v34];
          v43.origin.x = v31;
          v43.origin.y = v36;
          v43.size.width = v33;
          v43.size.height = v34;
          [(PINView *)self _layoutBottomSubview:v37 withMinY:a5 withSize:v17, CGRectGetMinY(v43) + -10.0 - a5];
        }
      }
    }
  }
}

- (void)_layoutBottomSubview:(id)a3 withMinY:(double)a4 withSize:(CGSize)a5
{
  v16 = a3;
  [(PINView *)self bounds];
  PSRoundToPixel(a4);
  UIRectCenteredXInRect();
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  UIRectIntegralWithScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v16 setFrame:{v9, v11, v13, v15}];
}

- (PSPINEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end