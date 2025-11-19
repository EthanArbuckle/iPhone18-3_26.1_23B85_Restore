@interface VUIBuyButtonLockup
- (BOOL)_isLargeContentSize;
- (VUIBuyButtonLockup)initWithFrame:(CGRect)a3;
- (void)_updateForPreferredContentSize;
- (void)dealloc;
- (void)setHasIAP:(BOOL)a3;
@end

@implementation VUIBuyButtonLockup

- (VUIBuyButtonLockup)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = VUIBuyButtonLockup;
  v3 = [(VUIUIStackView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    v6 = v3->_button;
    v7 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(UIButton *)v6 setBackgroundColor:v7];

    v8 = v3->_button;
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)v8 setTitleColor:v9 forState:0];

    [(VUIBuyButtonLockup *)v3 addArrangedSubview:v3->_button];
    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_button setContentEdgeInsets:0.0, 16.0, 0.0, 16.0];
    v10 = [(UIButton *)v3->_button heightAnchor];
    v11 = [v10 constraintEqualToConstant:28.0];
    buttonHeightConstraint = v3->_buttonHeightConstraint;
    v3->_buttonHeightConstraint = v11;

    [(NSLayoutConstraint *)v3->_buttonHeightConstraint setActive:1];
    v13 = [(UIButton *)v3->_button widthAnchor];
    v14 = [v13 constraintGreaterThanOrEqualToConstant:68.0];
    [v14 setActive:1];

    v15 = objc_alloc(MEMORY[0x1E69DCC10]);
    v16 = [v15 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    iAPLabel = v3->_iAPLabel;
    v3->_iAPLabel = v16;

    [(VUIBuyButtonLockup *)v3 addArrangedSubview:v3->_iAPLabel];
    [(UILabel *)v3->_iAPLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_iAPLabel setNumberOfLines:0];
    v18 = v3->_iAPLabel;
    v19 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0];
    [(UILabel *)v18 setFont:v19];

    v20 = v3->_iAPLabel;
    v21 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(UILabel *)v20 setTextColor:v21];

    v22 = v3->_iAPLabel;
    v23 = +[VUILocalizationManager sharedInstance];
    v24 = [v23 localizedStringForKey:@"APP_INSTALL_OFFERS_IN_APP_PURCHASES"];
    [(UILabel *)v22 setText:v24];

    [(UILabel *)v3->_iAPLabel setHidden:1];
    [(VUIBuyButtonLockup *)v3 _updateForPreferredContentSize];
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v3 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIBuyButtonLockup;
  [(VUIBuyButtonLockup *)&v4 dealloc];
}

- (void)setHasIAP:(BOOL)a3
{
  if (self->_hasIAP != a3)
  {
    [(UILabel *)self->_iAPLabel setHidden:!a3];

    [(VUIBuyButtonLockup *)self invalidateIntrinsicContentSize];
  }
}

- (BOOL)_isLargeContentSize
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = ([v3 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC58]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC40]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC28]) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E69DDC20]);
  return v4;
}

- (void)_updateForPreferredContentSize
{
  v3 = [(VUIBuyButtonLockup *)self _isLargeContentSize];
  v4 = 34.0;
  if (v3)
  {
    v5 = 21.0;
  }

  else
  {
    v4 = 28.0;
    v5 = 16.0;
  }

  if (v3)
  {
    v6 = 17.0;
  }

  else
  {
    v6 = 14.0;
  }

  [(NSLayoutConstraint *)self->_buttonHeightConstraint setConstant:v4];
  button = self->_button;
  v8 = [MEMORY[0x1E69DB878] vui_fontFromTextStyle:13 fontWeight:4 fontSize:0 fontWidth:2 symbolicTraits:v5];
  [(UIButton *)button _setFont:v8];

  v9 = self->_button;

  [(UIButton *)v9 _setContinuousCornerRadius:v6];
}

@end