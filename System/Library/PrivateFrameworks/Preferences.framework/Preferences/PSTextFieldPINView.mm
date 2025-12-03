@interface PSTextFieldPINView
- (BOOL)keyboardInputChanged:(id)changed;
- (BOOL)resignFirstResponder;
- (PSTextFieldPINView)initWithFrame:(CGRect)frame;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)deleteLastCharacter;
- (void)hidePasscodeField:(BOOL)field;
- (void)layoutSubviews;
- (void)notifyDelegatePINChanged;
- (void)notifyDelegatePINEntered;
- (void)okButtonPressed:(id)pressed;
- (void)setBlocked:(BOOL)blocked;
- (void)setStringValue:(id)value;
- (void)setUsesNumericKeyboard:(BOOL)keyboard;
- (void)showError:(id)error animate:(BOOL)animate;
@end

@implementation PSTextFieldPINView

- (PSTextFieldPINView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27.receiver = self;
  v27.super_class = PSTextFieldPINView;
  v7 = [(PSTextFieldPINView *)&v27 initWithFrame:?];
  if (v7)
  {
    v8 = [[AlphanumericPINTableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
    cell = v7->_cell;
    v7->_cell = v8;

    [(AlphanumericPINTableViewCell *)v7->_cell setOpaque:0];
    [(AlphanumericPINTableViewCell *)v7->_cell setTextFieldOffset:9.0];
    pinTextField = [(AlphanumericPINTableViewCell *)v7->_cell pinTextField];
    passcodeField = v7->_passcodeField;
    v7->_passcodeField = pinTextField;

    [(UITextField *)v7->_passcodeField setDelegate:v7];
    textInputTraits = [(UITextField *)v7->_passcodeField textInputTraits];
    [textInputTraits setDevicePasscodeEntry:1];
    [(UITextField *)v7->_passcodeField setDevicePasscodeEntry:1];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_18B008000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "set devicePasscodeEntry (PSTextFieldPINView)", v26, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:1 style:{x, y, width, height}];
    table = v7->_table;
    v7->_table = v13;

    [(UITableView *)v7->_table setDataSource:v7];
    [(UITableView *)v7->_table setScrollEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITableView *)v7->_table setBackgroundColor:clearColor];

    [(UITableView *)v7->_table _setTopPadding:0.0];
    [(UITableView *)v7->_table _setBottomPadding:0.0];
    [(PSTextFieldPINView *)v7 addSubview:v7->_table];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_okButtonPressed_ name:*MEMORY[0x1E69DE038] object:0];

    v17 = objc_alloc(MEMORY[0x1E69DCC10]);
    v18 = [v17 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v7->super._titleLabel;
    v7->super._titleLabel = v18;

    v20 = v7->super._titleLabel;
    v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v7->super._titleLabel setOpaque:0];
    [(UILabel *)v7->super._titleLabel setBackgroundColor:0];
    [(UILabel *)v7->super._titleLabel setTextAlignment:1];
    v22 = v7->super._titleLabel;
    v23 = +[PSListController appearance];
    textColor = [v23 textColor];
    [(UILabel *)v22 setTextColor:textColor];

    [(UILabel *)v7->super._titleLabel setNumberOfLines:0];
    [(UILabel *)v7->super._titleLabel setAdjustsFontSizeToFitWidth:1];
    [(PSTextFieldPINView *)v7 addSubview:v7->super._titleLabel];
  }

  return v7;
}

- (void)setUsesNumericKeyboard:(BOOL)keyboard
{
  self->_usesNumericKeyboard = keyboard;
  passcodeField = self->_passcodeField;
  if (keyboard)
  {
    v4 = 127;
  }

  else
  {
    v4 = 0;
  }

  [(UITextField *)passcodeField setKeyboardType:v4];
}

- (void)layoutSubviews
{
  [(PSTextFieldPINView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UITableView *)self->_table setFrame:?];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  MidY = CGRectGetMidY(v20);
  [(AlphanumericPINTableViewCell *)self->_cell frame];
  [(UITableView *)self->_table setContentInset:MidY - v12 * 0.5, 0.0, 0.0, 0.0];
  [(AlphanumericPINTableViewCell *)self->_cell frame];
  v14 = v13;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v15 = floor(CGRectGetMidY(v21) - v14 * 0.5);
  [(PINView *)self layoutTopLabel:self->super._titleLabel withMaxY:v15 + -22.0];
  [(PINView *)self layoutTopLabel:self->super._errorTitleLabel withMaxY:v15 + -22.0];
  v19.receiver = self;
  v19.super_class = PSTextFieldPINView;
  [(PINView *)&v19 layoutSubviews];
  pinPolicyLabel = self->super._pinPolicyLabel;
  if (pinPolicyLabel)
  {
    [(PINView *)self layoutBottomSubview:pinPolicyLabel withLabel:self->super._pinPolicyLabel withMinY:v14 + v15 + 10.0];
  }

  failureView = self->super._failureView;
  if (failureView)
  {
    titleLabel = [(FailureBarView *)self->super._failureView titleLabel];
    [(PINView *)self layoutBottomSubview:failureView withLabel:titleLabel withMinY:v14 + v15 + 22.0];
  }
}

- (void)setBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  UIKeyboardDisableAutomaticAppearance();
  [(AlphanumericPINTableViewCell *)self->_cell setUserInteractionEnabled:!blockedCopy];

  UIKeyboardEnableAutomaticAppearance();
}

- (void)notifyDelegatePINChanged
{
  delegate = [(PINView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    stringValue = [(PSTextFieldPINView *)self stringValue];
    [delegate pinView:self pinValueChanged:stringValue];
  }
}

- (void)notifyDelegatePINEntered
{
  delegate = [(PINView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    stringValue = [(PSTextFieldPINView *)self stringValue];
    [delegate pinView:self pinEntered:stringValue];
  }
}

- (BOOL)keyboardInputChanged:(id)changed
{
  text = [(UITextField *)self->_passcodeField text];
  v5 = [text length];

  if (v5)
  {
    [(PINView *)self hideError];
  }

  [(PSTextFieldPINView *)self notifyDelegatePINChanged];
  return 1;
}

- (void)showError:(id)error animate:(BOOL)animate
{
  v4.receiver = self;
  v4.super_class = PSTextFieldPINView;
  [(PINView *)&v4 showError:error animate:animate];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UITableView *)self->_table setDataSource:0];
  v4.receiver = self;
  v4.super_class = PSTextFieldPINView;
  [(PSTextFieldPINView *)&v4 dealloc];
}

- (void)okButtonPressed:(id)pressed
{
  text = [(UITextField *)self->_passcodeField text];
  v5 = [text length];

  if (v5)
  {

    [(PSTextFieldPINView *)self notifyDelegatePINEntered];
  }
}

- (void)hidePasscodeField:(BOOL)field
{
  fieldCopy = field;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4010000000;
  v15[3] = "";
  v16 = 0u;
  v17 = 0u;
  [(AlphanumericPINTableViewCell *)self->_cell frame];
  *&v16 = v5;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PSTextFieldPINView_hidePasscodeField___block_invoke;
  aBlock[3] = &unk_1E71DCD18;
  objc_copyWeak(&v13, &location);
  aBlock[4] = v15;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (fieldCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    [MEMORY[0x1E69DD228] defaultDurationForTransition:7];
    [v11 animateWithDuration:v10 animations:?];
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  _Block_object_dispose(v15, 8);
}

void __40__PSTextFieldPINView_hidePasscodeField___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 32) = -*(*(*(a1 + 32) + 8) + 48);
  [WeakRetained[61] setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
}

- (BOOL)resignFirstResponder
{
  v5.receiver = self;
  v5.super_class = PSTextFieldPINView;
  if (![(PSTextFieldPINView *)&v5 isFirstResponder])
  {
    return [(UITextField *)self->_passcodeField resignFirstResponder];
  }

  v4.receiver = self;
  v4.super_class = PSTextFieldPINView;
  return [(PSTextFieldPINView *)&v4 resignFirstResponder];
}

- (void)setStringValue:(id)value
{
  [(UITextField *)self->_passcodeField setText:value];

  [(PSTextFieldPINView *)self notifyDelegatePINChanged];
}

- (void)appendString:(id)string
{
  stringCopy = string;
  text = [(UITextField *)self->_passcodeField text];
  if ([text length])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:text];
    [v5 appendString:stringCopy];
    [(UITextField *)self->_passcodeField setText:v5];
  }

  else
  {
    [(UITextField *)self->_passcodeField setText:stringCopy];
  }

  [(PSTextFieldPINView *)self notifyDelegatePINChanged];
}

- (void)deleteLastCharacter
{
  text = [(UITextField *)self->_passcodeField text];
  v3 = [text length];
  if (v3)
  {
    passcodeField = self->_passcodeField;
    v5 = [text substringToIndex:v3 - 1];
    [(UITextField *)passcodeField setText:v5];
  }

  [(PSTextFieldPINView *)self notifyDelegatePINChanged];
}

@end