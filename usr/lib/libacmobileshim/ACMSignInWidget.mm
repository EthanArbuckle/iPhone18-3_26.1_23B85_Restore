@interface ACMSignInWidget
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGPoint)position;
- (NSString)accountLabelText;
- (UILabel)accountLabel;
- (UILabel)passwordLabel;
- (UITableView)table;
- (UITableViewCell)accountEditCell;
- (UITableViewCell)passwordEditCell;
- (UITextField)accountField;
- (UITextField)passwordField;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)onSignIn:(id)in;
- (void)setAccountField:(id)field;
- (void)setAccountLabelText:(id)text;
- (void)setPasswordField:(id)field;
- (void)setPosition:(CGPoint)position;
@end

@implementation ACMSignInWidget

- (void)dealloc
{
  [(UITableView *)self->_table setDelegate:0];
  [(UITableView *)self->_table setDataSource:0];
  [(UITableView *)self->_table removeFromSuperview];

  self->_table = 0;
  self->_accountLabel = 0;
  [(UITextField *)[(ACMSignInWidget *)self accountField] setDelegate:0];
  [(UITextField *)[(ACMSignInWidget *)self passwordField] setDelegate:0];
  [(ACMSignInWidget *)self setAccountField:0];
  [(ACMSignInWidget *)self setPasswordField:0];
  [(ACMSignInWidget *)self setBackgroundColor:0];
  [(ACMSignInWidget *)self setPlaceholderAttributes:0];
  v3.receiver = self;
  v3.super_class = ACMSignInWidget;
  [(ACMSignInWidget *)&v3 dealloc];
}

- (CGPoint)position
{
  table = [(ACMSignInWidget *)self table];

  [(UITableView *)table frame];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(UITableView *)[(ACMSignInWidget *)self table] frame];
  v7 = v6;
  v9 = v8;
  table = [(ACMSignInWidget *)self table];

  [(UITableView *)table setFrame:x, y, v7, v9];
}

- (UITableView)table
{
  result = self->_table;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC7D08]) initWithFrame:1 style:{0.0, 0.0, 320.0, 112.0}];
    self->_table = v4;
    [(UITableView *)v4 setDelegate:self];
    [(UITableView *)self->_table setDataSource:self];
    [(UITableView *)self->_table setScrollEnabled:0];
    [(UITableView *)self->_table setShowsHorizontalScrollIndicator:0];
    [(UITableView *)self->_table setShowsVerticalScrollIndicator:0];
    -[UITableView setBackgroundColor:](self->_table, "setBackgroundColor:", [MEMORY[0x29EDC7A00] clearColor]);
    v5 = objc_opt_respondsToSelector();
    result = self->_table;
    if (v5)
    {
      [(UITableView *)result setBackgroundView:0];
      return self->_table;
    }
  }

  return result;
}

- (NSString)accountLabelText
{
  accountLabel = [(ACMSignInWidget *)self accountLabel];

  return [(UILabel *)accountLabel text];
}

- (void)setAccountLabelText:(id)text
{
  accountLabel = [(ACMSignInWidget *)self accountLabel];

  [(UILabel *)accountLabel setText:text];
}

- (UITextField)accountField
{
  result = self->_accountField;
  if (!result)
  {
    [(ACMSignInWidget *)self accountEditCell];
    return self->_accountField;
  }

  return result;
}

- (void)setAccountField:(id)field
{
  accountField = self->_accountField;
  if (accountField != field)
  {
    v6 = accountField;
    self->_accountField = field;
  }
}

- (UITextField)passwordField
{
  result = self->_passwordField;
  if (!result)
  {
    [(ACMSignInWidget *)self passwordEditCell];
    return self->_passwordField;
  }

  return result;
}

- (void)setPasswordField:(id)field
{
  passwordField = self->_passwordField;
  if (passwordField != field)
  {
    v6 = passwordField;
    self->_passwordField = field;
  }
}

- (UILabel)accountLabel
{
  result = self->_accountLabel;
  if (!result)
  {
    self->_accountLabel = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{8.0, 7.0, 120.0, 30.0}];
    [(UILabel *)self->_accountLabel setText:[ACMBaseLocale localizedString:@"Apple ID"]];
    [(UILabel *)self->_accountLabel setTextAlignment:0];
    -[UILabel setTextColor:](self->_accountLabel, "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UILabel *)self->_accountLabel setUserInteractionEnabled:0];
    -[UILabel setBackgroundColor:](self->_accountLabel, "setBackgroundColor:", [MEMORY[0x29EDC7A00] clearColor]);
    return self->_accountLabel;
  }

  return result;
}

- (UILabel)passwordLabel
{
  v2 = [objc_alloc(MEMORY[0x29EDC7B38]) initWithFrame:{8.0, 7.0, 120.0, 30.0}];
  [(UILabel *)v2 setText:[ACMBaseLocale localizedString:@"Password"]];
  [(UILabel *)v2 setTextAlignment:0];
  -[UILabel setTextColor:](v2, "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
  -[UILabel setFont:](v2, "setFont:", [MEMORY[0x29EDC76B0] boldSystemFontOfSize:16.0]);
  [(UILabel *)v2 setUserInteractionEnabled:0];
  -[UILabel setBackgroundColor:](v2, "setBackgroundColor:", [MEMORY[0x29EDC7A00] clearColor]);
  [(UILabel *)v2 setTag:130];
  return v2;
}

- (UITableViewCell)accountEditCell
{
  result = self->_accountEditCell;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC7D10]) initWithStyle:0 reuseIdentifier:@"ACMAccountCell"];
    self->_accountEditCell = v4;
    [(UITableViewCell *)v4 setFrame:0.0, 0.0, 320.0, 40.0];
    accountLabel = [(ACMSignInWidget *)self accountLabel];
    v6 = objc_alloc(MEMORY[0x29EDC7D48]);
    v7 = 128.0;
    if (!accountLabel)
    {
      v7 = 8.0;
    }

    v8 = 304.0;
    if (accountLabel)
    {
      v8 = 168.0;
    }

    v9 = [v6 initWithFrame:{v7, 6.0, v8, 31.0}];
    [v9 setPlaceholder:{+[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"john.appleseed"}];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [v9 setPlaceholder:{objc_msgSend(objc_msgSend(v9, "placeholder"), "stringByAppendingString:", @" (PRE-RELEASE)"}];
    }

    [v9 setTextAlignment:0];
    [v9 setBorderStyle:0];
    [v9 setTextColor:{objc_msgSend(MEMORY[0x29EDC7A00], "blackColor")}];
    [v9 setReturnKeyType:4];
    [v9 setContentVerticalAlignment:0];
    [v9 setAutocapitalizationType:0];
    [v9 setAutocorrectionType:1];
    [v9 setClearButtonMode:1];
    [v9 setTag:128];
    [v9 setDelegate:self];
    [(ACMSignInWidget *)self setAccountField:v9];
    [(UITextField *)[(ACMSignInWidget *)self accountField] setKeyboardType:7];
    if (accountLabel)
    {
      [(UIView *)[(UITableViewCell *)self->_accountEditCell contentView] addSubview:accountLabel];
    }

    [(UIView *)[(UITableViewCell *)self->_accountEditCell contentView] addSubview:v9];
    [(UITableViewCell *)self->_accountEditCell setSelectionStyle:0];
    return self->_accountEditCell;
  }

  return result;
}

- (UITableViewCell)passwordEditCell
{
  result = self->_passwordEditCell;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC7D10]) initWithStyle:0 reuseIdentifier:@"ACMPasswordCell"];
    self->_passwordEditCell = v4;
    [(UITableViewCell *)v4 setFrame:0.0, 0.0, 320.0, 40.0];
    passwordLabel = [(ACMSignInWidget *)self passwordLabel];
    v6 = objc_alloc(MEMORY[0x29EDC7D48]);
    v7 = 128.0;
    if (!passwordLabel)
    {
      v7 = 8.0;
    }

    v8 = 304.0;
    if (passwordLabel)
    {
      v8 = 168.0;
    }

    v9 = [v6 initWithFrame:{v7, 6.0, v8, 31.0}];
    [v9 setPlaceholder:{+[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Required"}];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [v9 setPlaceholder:{objc_msgSend(objc_msgSend(v9, "placeholder"), "stringByAppendingString:", @" (PRE-RELEASE)"}];
    }

    [v9 setTextAlignment:0];
    [v9 setBorderStyle:0];
    [v9 setTextColor:{objc_msgSend(MEMORY[0x29EDC7A00], "blackColor")}];
    [v9 setSecureTextEntry:1];
    [v9 setReturnKeyType:1];
    [v9 setContentVerticalAlignment:0];
    [v9 setEnablesReturnKeyAutomatically:0];
    [v9 setClearButtonMode:1];
    [v9 setTag:129];
    [v9 setDelegate:self];
    [(ACMSignInWidget *)self setPasswordField:v9];
    if (passwordLabel)
    {
      [(UIView *)[(UITableViewCell *)self->_passwordEditCell contentView] addSubview:passwordLabel];
    }

    [(UIView *)[(UITableViewCell *)self->_passwordEditCell contentView] addSubview:v9];
    [(UITableViewCell *)self->_passwordEditCell setSelectionStyle:0];
    return self->_passwordEditCell;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if ([path row])
  {

    return [(ACMSignInWidget *)self passwordEditCell];
  }

  else
  {

    return [(ACMSignInWidget *)self accountEditCell];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if ([(ACMSignInWidget *)self accountField]== return)
  {
    [(UITextField *)[(ACMSignInWidget *)self accountField] resignFirstResponder];
    [(UITextField *)[(ACMSignInWidget *)self passwordField] becomeFirstResponder];
  }

  if ([(ACMSignInWidget *)self passwordField]== return && ![(ACMSignInWidget *)self shouldAuthenticateOnUserInput])
  {
    [(UITextField *)[(ACMSignInWidget *)self passwordField] resignFirstResponder];
  }

  else if ([(ACMSignInWidget *)self passwordField]== return && [(NSString *)[(UITextField *)[(ACMSignInWidget *)self passwordField] text] length]&& [(NSString *)[(UITextField *)[(ACMSignInWidget *)self accountField] text] length])
  {
    [(UITextField *)[(ACMSignInWidget *)self passwordField] resignFirstResponder];
    [(ACMSignInWidget *)self onSignIn:[(ACMSignInWidget *)self passwordField]];
  }

  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  v9 = 32 * ([(ACMSignInWidget *)self passwordField:field]== field);
  if ([(ACMSignInWidget *)self accountField]== field)
  {
    v10 = 128;
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_msgSend(field "text")] - length;
  return v11 + [string length] <= v10;
}

- (void)disableControls:(BOOL)controls
{
  if (controls)
  {
    if ([(UITextField *)[(ACMSignInWidget *)self passwordField] isFirstResponder])
    {
      [(UITextField *)[(ACMSignInWidget *)self passwordField] resignFirstResponder];
    }

    if ([(UITextField *)[(ACMSignInWidget *)self accountField] isFirstResponder])
    {
      [(UITextField *)[(ACMSignInWidget *)self accountField] resignFirstResponder];
    }

    [(UITextField *)[(ACMSignInWidget *)self accountField] setEnabled:0];
    passwordField = [(ACMSignInWidget *)self passwordField];

    [(UITextField *)passwordField setEnabled:0];
  }

  else
  {
    [(UITextField *)[(ACMSignInWidget *)self accountField] setEnabled:1];
    [(UITextField *)[(ACMSignInWidget *)self passwordField] setEnabled:1];
    accountField = [(ACMSignInWidget *)self accountField];
    passwordField2 = [(ACMSignInWidget *)self passwordField];
    if ([(NSString *)[(UITextField *)[(ACMSignInWidget *)self accountField] text] length])
    {
      accountField = [(ACMSignInWidget *)self passwordField];
      passwordField2 = [(ACMSignInWidget *)self accountField];
    }

    if (([(UITextField *)accountField isFirstResponder]& 1) == 0)
    {
      [(UITextField *)passwordField2 resignFirstResponder];

      [(UITextField *)accountField becomeFirstResponder];
    }
  }
}

- (void)onSignIn:(id)in
{
  delegate = [(ACMSignInWidget *)self delegate];

  [(ACMSignInWidgetDelegate *)delegate onSignIn:self];
}

uint64_t __56__ACMSignInWidget_Modern_createClearButtonForEditField___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) textColor];
  v3 = *(a1 + 32);

  return [v3 setTintColor:v2];
}

@end