@interface BFFSimplePasscodeInputView
- (BFFSimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4;
- (id)passcode;
- (id)passcodeField:(id)a3 shouldInsertText:(id)a4;
- (void)layoutSubviews;
- (void)passcodeField:(id)a3 enteredPasscode:(id)a4;
- (void)setPasscode:(id)a3;
@end

@implementation BFFSimplePasscodeInputView

- (BFFSimplePasscodeInputView)initWithFrame:(CGRect)a3 numberOfEntryFields:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = BFFSimplePasscodeInputView;
  v5 = [(BFFPasscodeInputView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [MEMORY[0x277D3FA48] appearance];
    v7 = [MEMORY[0x277D75348] _labelColor];
    [v6 setTextColor:v7];

    v8 = [objc_alloc(MEMORY[0x277D3FA98]) initWithNumberOfEntryFields:a4];
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
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  v48.receiver = self;
  v48.super_class = BFFSimplePasscodeInputView;
  [(BFFPasscodeInputView *)&v48 layoutSubviews];
  v6 = [(BFFSimplePasscodeInputView *)self passcodeField];
  [v6 frame];
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

  v15 = [(BFFPasscodeInputView *)self instructionsLinkButton];

  if (v15)
  {
    v16 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v17 = [v16 titleLabel];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    [(BFFSimplePasscodeInputView *)self convertRect:v26 fromView:v19, v21, v23, v25];
    MaxY = CGRectGetMaxY(v49);
    v28 = [(BFFPasscodeInputView *)self instructionsLinkButton];
    v29 = [v28 titleLabel];
    [v29 _baselineOffsetFromBottom];
    v31 = MaxY - v30 + 36.0 + -7.0;

    if (v13 >= v31)
    {
      v31 = v13;
    }
  }

  else
  {
    v32 = [(BFFPasscodeInputView *)self instructions];
    [v32 frame];
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

    v44 = [(BFFPasscodeInputView *)self instructions];
    v45 = v42;
    v12 = v40;
    v10 = v39;
    v8 = v47;
    [v44 setFrame:{v34, v36, v38, v45}];
  }

  v46 = [(BFFSimplePasscodeInputView *)self passcodeField];
  [v46 setFrame:{floor((v12 - v8) * 0.5), v31, v8, v10}];
}

- (void)setPasscode:(id)a3
{
  v4 = a3;
  v5 = [(BFFSimplePasscodeInputView *)self passcodeField];
  [v5 setStringValue:v4];
}

- (id)passcode
{
  v2 = [(BFFSimplePasscodeInputView *)self passcodeField];
  v3 = [v2 stringValue];

  return v3;
}

- (id)passcodeField:(id)a3 shouldInsertText:(id)a4
{
  v5 = a4;
  if ([(BFFSimplePasscodeInputView *)self limitCharactersToNumbers])
  {
    v6 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v7 = [v6 invertedSet];
    v8 = [v5 componentsSeparatedByCharactersInSet:v7];
    v9 = [v8 componentsJoinedByString:&stru_287761F90];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)passcodeField:(id)a3 enteredPasscode:(id)a4
{
  v10 = a4;
  v5 = [(BFFPasscodeInputView *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(BFFPasscodeInputView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(BFFPasscodeInputView *)self delegate];
      [v9 passcodeInput:self enteredPasscode:v10];
    }
  }
}

@end