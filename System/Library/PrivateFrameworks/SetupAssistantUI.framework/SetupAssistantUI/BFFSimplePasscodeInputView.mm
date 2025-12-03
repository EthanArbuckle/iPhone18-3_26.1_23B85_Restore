@interface BFFSimplePasscodeInputView
- (BFFSimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields;
- (id)passcode;
- (id)passcodeField:(id)field shouldInsertText:(id)text;
- (void)layoutSubviews;
- (void)passcodeField:(id)field enteredPasscode:(id)passcode;
- (void)setPasscode:(id)passcode;
@end

@implementation BFFSimplePasscodeInputView

- (BFFSimplePasscodeInputView)initWithFrame:(CGRect)frame numberOfEntryFields:(unint64_t)fields
{
  v11.receiver = self;
  v11.super_class = BFFSimplePasscodeInputView;
  v5 = [(BFFPasscodeInputView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    appearance = [MEMORY[0x277D3FA48] appearance];
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    [appearance setTextColor:_labelColor];

    v8 = [objc_alloc(MEMORY[0x277D3FA98]) initWithNumberOfEntryFields:fields];
    passcodeField = v5->_passcodeField;
    v5->_passcodeField = v8;

    [(PSPasscodeField *)v5->_passcodeField setDelegate:v5];
    [(BFFSimplePasscodeInputView *)v5 addSubview:v5->_passcodeField];
    [(BFFSimplePasscodeInputView *)v5 setLimitCharactersToNumbers:1];
  }

  return v5;
}

- (void)layoutSubviews
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v48.receiver = self;
  v48.super_class = BFFSimplePasscodeInputView;
  [(BFFPasscodeInputView *)&v48 layoutSubviews];
  passcodeField = [(BFFSimplePasscodeInputView *)self passcodeField];
  [passcodeField frame];
  v8 = v7;
  v10 = v9;

  [(BFFSimplePasscodeInputView *)self bounds];
  v12 = v11;
  v13 = 0.0;
  if (!IsAccessibilityCategory)
  {
    [(BFFSimplePasscodeInputView *)self bounds];
    v13 = floor((v14 - v10) * 0.5);
  }

  instructionsLinkButton = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (instructionsLinkButton)
  {
    instructionsLinkButton2 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel = [instructionsLinkButton2 titleLabel];
    [titleLabel frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    instructionsLinkButton3 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [(BFFSimplePasscodeInputView *)self convertRect:instructionsLinkButton3 fromView:v19, v21, v23, v25];
    MaxY = CGRectGetMaxY(v49);
    instructionsLinkButton4 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    titleLabel2 = [instructionsLinkButton4 titleLabel];
    [titleLabel2 _baselineOffsetFromBottom];
    v31 = MaxY - v30 + 36.0 + -7.0;

    if (v13 >= v31)
    {
      v31 = v13;
    }
  }

  else
  {
    instructions = [(BFFPasscodeInputView *)self instructions];
    [instructions frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v47 = v8;
    v39 = v10;
    v40 = v12;
    v42 = v41;

    v50.origin.x = v34;
    v50.origin.y = v36;
    v50.size.width = v38;
    v50.size.height = v42;
    v43 = CGRectGetMaxY(v50) + 10.0;
    if (v13 >= v43)
    {
      v31 = v13;
    }

    else
    {
      v31 = v43;
    }

    instructions2 = [(BFFPasscodeInputView *)self instructions];
    v45 = v42;
    v12 = v40;
    v10 = v39;
    v8 = v47;
    [instructions2 setFrame:{v34, v36, v38, v45}];
  }

  passcodeField2 = [(BFFSimplePasscodeInputView *)self passcodeField];
  [passcodeField2 setFrame:{floor((v12 - v8) * 0.5), v31, v8, v10}];
}

- (void)setPasscode:(id)passcode
{
  passcodeCopy = passcode;
  passcodeField = [(BFFSimplePasscodeInputView *)self passcodeField];
  [passcodeField setStringValue:passcodeCopy];
}

- (id)passcode
{
  passcodeField = [(BFFSimplePasscodeInputView *)self passcodeField];
  stringValue = [passcodeField stringValue];

  return stringValue;
}

- (id)passcodeField:(id)field shouldInsertText:(id)text
{
  textCopy = text;
  if ([(BFFSimplePasscodeInputView *)self limitCharactersToNumbers])
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];
    v8 = [textCopy componentsSeparatedByCharactersInSet:invertedSet];
    v9 = [v8 componentsJoinedByString:&stru_287761F90];
  }

  else
  {
    v9 = textCopy;
  }

  return v9;
}

- (void)passcodeField:(id)field enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(BFFPasscodeInputView *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(BFFPasscodeInputView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(BFFPasscodeInputView *)self delegate];
      [delegate3 passcodeInput:self enteredPasscode:passcodeCopy];
    }
  }
}

@end