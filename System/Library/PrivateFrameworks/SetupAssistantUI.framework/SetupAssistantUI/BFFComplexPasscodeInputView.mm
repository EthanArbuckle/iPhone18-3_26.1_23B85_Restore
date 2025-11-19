@interface BFFComplexPasscodeInputView
- (BFFComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)passcode;
- (void)_layout;
- (void)layoutSubviews;
- (void)setPasscode:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BFFComplexPasscodeInputView

- (BFFComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4
{
  v4 = a4;
  v20.receiver = self;
  v20.super_class = BFFComplexPasscodeInputView;
  v5 = [(BFFPasscodeInputView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75BB8]);
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(UITextField *)v5->_passcodeField setDelegate:v5];
    [(UITextField *)v5->_passcodeField setSecureTextEntry:1];
    [(UITextField *)v5->_passcodeField setReturnKeyType:4];
    if (v4)
    {
      [(UITextField *)v5->_passcodeField setKeyboardType:4];
    }

    v8 = [(UITextField *)v5->_passcodeField textInputTraits];
    [v8 setDevicePasscodeEntry:1];
    [(UITextField *)v5->_passcodeField setTextAlignment:1];
    v9 = v5->_passcodeField;
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v9 setFont:v10];

    v11 = [(UITextField *)v5->_passcodeField layer];
    [v11 setBorderWidth:1.0];

    v12 = [(BFFComplexPasscodeInputView *)v5 traitCollection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__BFFComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke;
    v18[3] = &unk_279BB49A8;
    v13 = v5;
    v19 = v13;
    [v12 performAsCurrentTraitCollection:v18];

    v14 = [(UITextField *)v5->_passcodeField layer];
    [v14 setCornerRadius:10.0];

    [(UITextField *)v5->_passcodeField sizeToFit];
    v15 = v5->_passcodeField;
    v16 = [MEMORY[0x277D75348] _labelColor];
    [(UITextField *)v15 setTextColor:v16];

    [(BFFComplexPasscodeInputView *)v13 addSubview:v5->_passcodeField];
  }

  return v5;
}

void __57__BFFComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  v1 = [MEMORY[0x277D75348] _labelColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BFFComplexPasscodeInputView;
  [(BFFPasscodeInputView *)&v3 layoutSubviews];
  [(BFFComplexPasscodeInputView *)self _layout];
}

- (void)setPasscode:(id)a3
{
  v4 = a3;
  v5 = [(BFFComplexPasscodeInputView *)self passcodeField];
  [v5 setText:v4];
}

- (id)passcode
{
  v2 = [(BFFComplexPasscodeInputView *)self passcodeField];
  v3 = [v2 text];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = BFFComplexPasscodeInputView;
  [(BFFComplexPasscodeInputView *)&v7 traitCollectionDidChange:a3];
  v4 = [(BFFComplexPasscodeInputView *)self passcodeField];
  v5 = [v4 layer];
  v6 = [MEMORY[0x277D75348] _labelColor];
  [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(BFFPasscodeInputView *)self delegate];
  if (v11)
  {
    v12 = v11;
    v13 = [(BFFPasscodeInputView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v9 text];
      v16 = [v15 stringByReplacingCharactersInRange:location withString:{length, v10}];

      v17 = [(BFFPasscodeInputView *)self delegate];
      [v17 passcodeInput:self willChangeContents:v16];
    }
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(BFFPasscodeInputView *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(BFFPasscodeInputView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(BFFPasscodeInputView *)self delegate];
      v9 = [(BFFComplexPasscodeInputView *)self passcode];
      [v8 passcodeInput:self enteredPasscode:v9];
    }
  }

  return 1;
}

- (void)_layout
{
  [(BFFComplexPasscodeInputView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(BFFComplexPasscodeInputView *)self passcodeField];
  [v7 sizeThatFits:{v4, v6}];

  UIRectCenteredIntegralRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (v16)
  {
    v17 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v18 = [v17 titleLabel];
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [(BFFComplexPasscodeInputView *)self convertRect:v27 fromView:v20, v22, v24, v26];
    MaxY = CGRectGetMaxY(v46);
    v29 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v30 = [v29 titleLabel];
    [v30 _baselineOffsetFromBottom];
    v32 = MaxY - v31 + 36.0 + -11.0;

    if (v11 < v32)
    {
      v11 = v32;
    }
  }

  else
  {
    v33 = [(BFFPasscodeInputView *)self instructions];
    [v33 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v47.origin.x = v35;
    v47.origin.y = v37;
    v47.size.width = v39;
    v47.size.height = v41;
    v42 = CGRectGetMaxY(v47) + 10.0;
    if (v11 < v42)
    {
      v11 = v42;
    }

    v43 = [(BFFPasscodeInputView *)self instructions];
    [v43 setFrame:{v35, v37, v39, v41}];
  }

  v44 = [(BFFComplexPasscodeInputView *)self passcodeField];
  [v44 setFrame:{v9, v11, v13, v15}];
}

@end