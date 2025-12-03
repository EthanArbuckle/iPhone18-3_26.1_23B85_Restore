@interface PasscodeFieldCell
- (BOOL)becomeFirstResponder;
- (BOOL)hasText;
- (KeychainSyncPasscodeFieldDelegate)delegate;
- (PasscodeFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)passcodeField:(id)field shouldInsertText:(id)text;
- (void)layoutSubviews;
- (void)passcodeField:(id)field enteredPasscode:(id)passcode;
@end

@implementation PasscodeFieldCell

- (PasscodeFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = PasscodeFieldCell;
  v9 = [(PSTableCell *)&v18 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(PasscodeFieldCell *)v9 setSelectionStyle:0];
    v11 = [specifierCopy propertyForKey:@"numberOfPasscodeFields"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    v13 = [[PSPasscodeField alloc] initWithNumberOfEntryFields:unsignedIntegerValue];
    passcodeField = v10->_passcodeField;
    v10->_passcodeField = v13;

    [(PSPasscodeField *)v10->_passcodeField setDelegate:v10];
    contentView = [(PasscodeFieldCell *)v10 contentView];
    [contentView addSubview:v10->_passcodeField];

    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel_cellTapped_];
    [(PasscodeFieldCell *)v10 addGestureRecognizer:v16];
  }

  return v10;
}

- (void)passcodeField:(id)field enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  delegate = [(PasscodeFieldCell *)self delegate];
  [delegate passcodeField:self didUpdateEnteredPasscode:passcodeCopy];
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
  stringValue = [(PSPasscodeField *)self->_passcodeField stringValue];
  v3 = [stringValue length] != 0;

  return v3;
}

- (id)passcodeField:(id)field shouldInsertText:(id)text
{
  textCopy = text;
  if ([(PasscodeFieldCell *)self convertsNumeralsToASCII])
  {
    if (!passcodeField_shouldInsertText__asciiMaker)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v7 = passcodeField_shouldInsertText__asciiMaker;
      passcodeField_shouldInsertText__asciiMaker = v6;
    }

    v8 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(textCopy, "length")}];
    if ([textCopy length])
    {
      v9 = 0;
      do
      {
        v10 = [textCopy substringWithRange:{v9, 1}];
        v11 = [passcodeField_shouldInsertText__asciiMaker numberFromString:v10];
        v12 = v11;
        if (v11)
        {
          stringValue = [v11 stringValue];
          [v8 appendString:stringValue];
        }

        else
        {
          [v8 appendString:v10];
        }

        ++v9;
      }

      while (v9 < [textCopy length]);
    }
  }

  else
  {
    v8 = textCopy;
  }

  return v8;
}

- (void)layoutSubviews
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(PasscodeFieldCell *)self setBackgroundColor:clearColor];

  [(PasscodeFieldCell *)self setBackgroundView:0];
  v9.receiver = self;
  v9.super_class = PasscodeFieldCell;
  [(PSTableCell *)&v9 layoutSubviews];
  contentView = [(PasscodeFieldCell *)self contentView];
  [contentView bounds];
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