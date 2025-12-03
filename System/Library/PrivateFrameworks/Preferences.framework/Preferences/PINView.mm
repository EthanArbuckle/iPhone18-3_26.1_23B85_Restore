@interface PINView
- (PSPINEntryViewDelegate)delegate;
- (UIButton)optionsButton;
- (double)getCurrentTitleFontSize;
- (void)_layoutBottomSubview:(id)subview withMinY:(double)y withSize:(CGSize)size;
- (void)hideError;
- (void)hideFailedAttempts;
- (void)layoutBottomSubview:(id)subview withLabel:(id)label withMinY:(double)y;
- (void)layoutSubviews;
- (void)layoutTopLabel:(id)label withMaxY:(double)y;
- (void)notifyDelegatePINChanged;
- (void)notifyDelegatePINEntered;
- (void)optionsButtonTapped;
- (void)setOptionsButtonTitle:(id)title;
- (void)setPINPolicyString:(id)string visible:(BOOL)visible;
- (void)setPasscodeOptionsHandler:(id)handler;
- (void)setShowsOptionsButton:(BOOL)button;
- (void)setTitle:(id)title font:(id)font;
- (void)showError:(id)error animate:(BOOL)animate;
- (void)showFailedAttempts:(int64_t)attempts;
@end

@implementation PINView

- (void)showError:(id)error animate:(BOOL)animate
{
  animateCopy = animate;
  errorCopy = error;
  errorTitleLabel = self->_errorTitleLabel;
  if (!errorTitleLabel)
  {
    [(UILabel *)self->_titleLabel frame];
    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    v13 = self->_errorTitleLabel;
    self->_errorTitleLabel = v12;

    v14 = self->_errorTitleLabel;
    font = [(UILabel *)self->_titleLabel font];
    [(UILabel *)v14 setFont:font];

    [(UILabel *)self->_errorTitleLabel setOpaque:0];
    [(UILabel *)self->_errorTitleLabel setBackgroundColor:0];
    [(UILabel *)self->_errorTitleLabel setTextAlignment:1];
    v16 = self->_errorTitleLabel;
    textColor = [(UILabel *)self->_titleLabel textColor];
    [(UILabel *)v16 setTextColor:textColor];

    [(UILabel *)self->_errorTitleLabel accessibilitySetIdentification:@"errorTitleLabel"];
    [(UILabel *)self->_errorTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_errorTitleLabel setAdjustsFontSizeToFitWidth:1];
    [(PINView *)self addSubview:self->_errorTitleLabel];
    [(UILabel *)self->_errorTitleLabel setAlpha:0.0];
    errorTitleLabel = self->_errorTitleLabel;
  }

  [(UILabel *)errorTitleLabel setText:errorCopy];
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
    if (animateCopy)
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

- (void)setTitle:(id)title font:(id)font
{
  titleLabel = self->_titleLabel;
  fontCopy = font;
  [(UILabel *)titleLabel setText:title];
  [(UILabel *)self->_titleLabel setFont:fontCopy];
}

- (double)getCurrentTitleFontSize
{
  [(UILabel *)self->_titleLabel _actualScaleFactor];
  v4 = v3;
  font = [(UILabel *)self->_titleLabel font];
  [font pointSize];
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
      stringValue = [(PINView *)self stringValue];
      [v8 pinView:self pinValueChanged:stringValue];
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
      stringValue = [(PINView *)self stringValue];
      [v8 pinView:self pinEntered:stringValue];
    }
  }
}

- (void)setPINPolicyString:(id)string visible:(BOOL)visible
{
  visibleCopy = visible;
  stringCopy = string;
  pinPolicyLabel = self->_pinPolicyLabel;
  v16 = stringCopy;
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
    textColor = [(UILabel *)self->_titleLabel textColor];
    [(UILabel *)v13 setTextColor:textColor];

    [(UILabel *)self->_pinPolicyLabel setAdjustsFontSizeToFitWidth:1];
    [(PINView *)self addSubview:self->_pinPolicyLabel];
    stringCopy = v16;
    pinPolicyLabel = self->_pinPolicyLabel;
  }

  [(UILabel *)pinPolicyLabel setText:stringCopy];
  v15 = 0.0;
  if (visibleCopy)
  {
    v15 = 1.0;
  }

  [(UILabel *)self->_pinPolicyLabel setAlpha:v15];
  [(PINView *)self setNeedsLayout];
}

- (void)showFailedAttempts:(int64_t)attempts
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
  [(FailureBarView *)self->_failureView setFailureCount:attempts];
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
  passcodeOptionsHandler = [(PINView *)self passcodeOptionsHandler];

  if (passcodeOptionsHandler)
  {
    [(PINView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    optionsButton = [(PINView *)self optionsButton];
    v13 = MEMORY[0x1E69DB878];
    titleLabel = [(UIButton *)self->_optionsButton titleLabel];
    font = [titleLabel font];
    fontDescriptor = [font fontDescriptor];
    [(PINView *)self getCurrentTitleFontSize];
    v17 = [v13 fontWithDescriptor:fontDescriptor size:?];
    titleLabel2 = [optionsButton titleLabel];
    [titleLabel2 setFont:v17];

    [optionsButton sizeToFit];
    [optionsButton frame];
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
    optionsButtonTitle = [(PINView *)self optionsButtonTitle];
    if (optionsButtonTitle)
    {
      [(UIButton *)v6 setTitle:optionsButtonTitle forState:0];
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

- (void)setOptionsButtonTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_optionsButtonTitle != titleCopy)
  {
    v12 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
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

- (void)setPasscodeOptionsHandler:(id)handler
{
  if (self->_passcodeOptionsHandler != handler)
  {
    v4 = [handler copy];
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

- (void)setShowsOptionsButton:(BOOL)button
{
  buttonCopy = button;
  if (button)
  {
    optionsButton = [(PINView *)self optionsButton];
  }

  else
  {
    optionsButton = self->_optionsButton;
  }

  v5 = optionsButton;
  [(UIButton *)optionsButton setHidden:!buttonCopy];
}

- (void)layoutTopLabel:(id)label withMaxY:(double)y
{
  labelCopy = label;
  [(PINView *)self bounds];
  v6 = y + -22.0;
  [labelCopy sizeThatFits:{v7 + -30.0, y + -22.0}];
  if (v8 <= y + -22.0)
  {
    v6 = v8;
  }

  PSRoundToPixel(y - v6);
  UIRectCenteredXInRect();
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [labelCopy setFrame:{v11, v13, v15, v17}];
}

- (void)layoutBottomSubview:(id)subview withLabel:(id)label withMinY:(double)y
{
  subviewCopy = subview;
  labelCopy = label;
  v9 = MEMORY[0x1E69DB878];
  font = [labelCopy font];
  fontDescriptor = [font fontDescriptor];
  font2 = [labelCopy font];
  [font2 pointSize];
  v14 = v13;

  [(PINView *)self getCurrentTitleFontSize];
  if (v14 < v15)
  {
    v15 = v14;
  }

  v16 = [v9 fontWithDescriptor:fontDescriptor size:v15];
  [labelCopy setFont:v16];

  [(PINView *)self bounds];
  v17 = v39.size.width + -30.0;
  v18 = CGRectGetMaxY(v39) + -10.0 - y;
  [subviewCopy sizeThatFits:{v17, v18}];
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

  [(PINView *)self _layoutBottomSubview:subviewCopy withMinY:y withSize:v17, v21];
  optionsButton = self->_optionsButton;
  if (optionsButton)
  {
    if (([(UIButton *)optionsButton isHidden]& 1) == 0)
    {
      [subviewCopy frame];
      MaxY = CGRectGetMaxY(v40);
      [(UIButton *)self->_optionsButton frame];
      if (MaxY > CGRectGetMinY(v41) + -10.0)
      {
        titleLabel = [(UIButton *)self->_optionsButton titleLabel];
        text = [titleLabel text];
        v26 = [text length];
        text2 = [labelCopy text];
        v28 = v26 / [text2 length];

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
          [(PINView *)self _layoutBottomSubview:subviewCopy withMinY:y withSize:v17, CGRectGetMinY(v43) + -10.0 - y];
        }
      }
    }
  }
}

- (void)_layoutBottomSubview:(id)subview withMinY:(double)y withSize:(CGSize)size
{
  subviewCopy = subview;
  [(PINView *)self bounds];
  PSRoundToPixel(y);
  UIRectCenteredXInRect();
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [subviewCopy setFrame:{v9, v11, v13, v15}];
}

- (PSPINEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end