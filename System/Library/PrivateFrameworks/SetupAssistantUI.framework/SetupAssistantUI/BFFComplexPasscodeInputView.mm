@interface BFFComplexPasscodeInputView
- (BFFComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)passcode;
- (void)_layout;
- (void)layoutSubviews;
- (void)setPasscode:(id)passcode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BFFComplexPasscodeInputView

- (BFFComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only
{
  onlyCopy = only;
  v20.receiver = self;
  v20.super_class = BFFComplexPasscodeInputView;
  v5 = [(BFFPasscodeInputView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D75BB8]);
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v6;

    [(UITextField *)v5->_passcodeField setDelegate:v5];
    [(UITextField *)v5->_passcodeField setSecureTextEntry:1];
    [(UITextField *)v5->_passcodeField setReturnKeyType:4];
    if (onlyCopy)
    {
      [(UITextField *)v5->_passcodeField setKeyboardType:4];
    }

    textInputTraits = [(UITextField *)v5->_passcodeField textInputTraits];
    [textInputTraits setDevicePasscodeEntry:1];
    [(UITextField *)v5->_passcodeField setTextAlignment:1];
    v9 = v5->_passcodeField;
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)v9 setFont:v10];

    layer = [(UITextField *)v5->_passcodeField layer];
    [layer setBorderWidth:1.0];

    traitCollection = [(BFFComplexPasscodeInputView *)v5 traitCollection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__BFFComplexPasscodeInputView_initWithFrame_numericOnly___block_invoke;
    v18[3] = &unk_279BB49A8;
    v13 = v5;
    v19 = v13;
    [traitCollection performAsCurrentTraitCollection:v18];

    layer2 = [(UITextField *)v5->_passcodeField layer];
    [layer2 setCornerRadius:10.0];

    [(UITextField *)v5->_passcodeField sizeToFit];
    v15 = v5->_passcodeField;
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [(UITextField *)v15 setTextColor:_labelColor];

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

- (void)setPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [(BFFComplexPasscodeInputView *)self passcodeField];
  [passcodeField setText:passcodeCopy];
}

- (id)passcode
{
  passcodeField = [(BFFComplexPasscodeInputView *)self passcodeField];
  text = [passcodeField text];

  return text;
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = BFFComplexPasscodeInputView;
  [(BFFComplexPasscodeInputView *)&v7 traitCollectionDidChange:change];
  passcodeField = [(BFFComplexPasscodeInputView *)self passcodeField];
  layer = [passcodeField layer];
  _labelColor = [MEMORY[0x277D75348] _labelColor];
  [layer setBorderColor:{objc_msgSend(_labelColor, "CGColor")}];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  delegate = [(BFFPasscodeInputView *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    delegate2 = [(BFFPasscodeInputView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      text = [fieldCopy text];
      v16 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

      delegate3 = [(BFFPasscodeInputView *)self delegate];
      [delegate3 passcodeInput:self willChangeContents:v16];
    }
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  delegate = [(BFFPasscodeInputView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(BFFPasscodeInputView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(BFFPasscodeInputView *)self delegate];
      passcode = [(BFFComplexPasscodeInputView *)self passcode];
      [delegate3 passcodeInput:self enteredPasscode:passcode];
    }
  }

  return 1;
}

- (void)_layout
{
  [(BFFComplexPasscodeInputView *)self bounds];
  v4 = v3;
  v6 = v5;
  passcodeField = [(BFFComplexPasscodeInputView *)self passcodeField];
  [passcodeField sizeThatFits:{v4, v6}];

  UIRectCenteredIntegralRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  instructionsLinkButton = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (instructionsLinkButton)
  {
    instructionsLinkButton2 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel = [instructionsLinkButton2 titleLabel];
    [titleLabel frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    instructionsLinkButton3 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [(BFFComplexPasscodeInputView *)self convertRect:instructionsLinkButton3 fromView:v20, v22, v24, v26];
    MaxY = CGRectGetMaxY(v46);
    instructionsLinkButton4 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel2 = [instructionsLinkButton4 titleLabel];
    [titleLabel2 _baselineOffsetFromBottom];
    v32 = MaxY - v31 + 36.0 + -11.0;

    if (v11 < v32)
    {
      v11 = v32;
    }
  }

  else
  {
    instructions = [(BFFPasscodeInputView *)self instructions];
    [instructions frame];
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

    instructions2 = [(BFFPasscodeInputView *)self instructions];
    [instructions2 setFrame:{v35, v37, v39, v41}];
  }

  passcodeField2 = [(BFFComplexPasscodeInputView *)self passcodeField];
  [passcodeField2 setFrame:{v9, v11, v13, v15}];
}

@end