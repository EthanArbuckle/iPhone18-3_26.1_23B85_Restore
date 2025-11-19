@interface PasscodeFieldCell
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (KeychainSyncPasscodeFieldDelegate)delegate;
- (PasscodeFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)passcodeField:(id)a3 shouldInsertText:(id)a4;
- (void)layoutSubviews;
- (void)passcodeField:(id)a3 enteredPasscode:(id)a4;
@end

@implementation PasscodeFieldCell

- (PasscodeFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = PasscodeFieldCell;
  v9 = [(PSTableCell *)&v18 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(PasscodeFieldCell *)v9 setSelectionStyle:0];
    v11 = [v8 propertyForKey:@"numberOfPasscodeFields"];
    v12 = [v11 unsignedIntegerValue];

    v13 = [[PSPasscodeField alloc] initWithNumberOfEntryFields:v12];
    passcodeField = v10->_passcodeField;
    v10->_passcodeField = v13;

    [(PSPasscodeField *)v10->_passcodeField setDelegate:v10];
    v15 = [(PasscodeFieldCell *)v10 contentView];
    [v15 addSubview:v10->_passcodeField];

    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_cellTapped_];
    [(PasscodeFieldCell *)v10 addGestureRecognizer:v16];
  }

  return v10;
}

- (void)passcodeField:(id)a3 enteredPasscode:(id)a4
{
  v5 = a4;
  v6 = [(PasscodeFieldCell *)self delegate];
  [v6 passcodeField:self didUpdateEnteredPasscode:v5];
}

- (BOOL)becomeFirstResponder
{
  if ([(PasscodeFieldCell *)self denyFirstResponder])
  {
    return 0;
  }

  passcodeField = self->_passcodeField;

  return [(PSPasscodeField *)passcodeField becomeFirstResponder];
}

- (BOOL)hasText
{
  v2 = [(PSPasscodeField *)self->_passcodeField stringValue];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)passcodeField:(id)a3 shouldInsertText:(id)a4
{
  v5 = a4;
  if ([(PasscodeFieldCell *)self convertsNumeralsToASCII])
  {
    if (!passcodeField_shouldInsertText__asciiMaker)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v7 = passcodeField_shouldInsertText__asciiMaker;
      passcodeField_shouldInsertText__asciiMaker = v6;
    }

    v8 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v5, "length")}];
    if ([v5 length])
    {
      v9 = 0;
      do
      {
        v10 = [v5 substringWithRange:{v9, 1}];
        v11 = [passcodeField_shouldInsertText__asciiMaker numberFromString:v10];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 stringValue];
          [v8 appendString:v13];
        }

        else
        {
          [v8 appendString:v10];
        }

        ++v9;
      }

      while (v9 < [v5 length]);
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)layoutSubviews
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(PasscodeFieldCell *)self setBackgroundColor:v3];

  [(PasscodeFieldCell *)self setBackgroundView:0];
  v9.receiver = self;
  v9.super_class = PasscodeFieldCell;
  [(PSTableCell *)&v9 layoutSubviews];
  v4 = [(PasscodeFieldCell *)self contentView];
  [v4 bounds];
  v6 = v5;

  [(PSPasscodeField *)self->_passcodeField frame];
  v8 = (v6 - v7) * 0.5;
  [(PSPasscodeField *)self->_passcodeField setFrame:floorf(v8)];
}

- (KeychainSyncPasscodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end