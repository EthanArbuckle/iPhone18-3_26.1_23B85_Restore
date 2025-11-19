@interface ACMSignInWidget
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGPoint)position;
- (NSString)accountLabelText;
- (UILabel)accountLabel;
- (UILabel)passwordLabel;
- (UITableView)table;
- (UITableViewCell)accountEditCell;
- (UITableViewCell)passwordEditCell;
- (UITextField)accountField;
- (UITextField)passwordField;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)disableControls:(BOOL)a3;
- (void)onSignIn:(id)a3;
- (void)setAccountField:(id)a3;
- (void)setAccountLabelText:(id)a3;
- (void)setPasswordField:(id)a3;
- (void)setPosition:(CGPoint)a3;
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
  v2 = [(ACMSignInWidget *)self table];

  [(UITableView *)v2 frame];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UITableView *)[(ACMSignInWidget *)self table] frame];
  v7 = v6;
  v9 = v8;
  v10 = [(ACMSignInWidget *)self table];

  [(UITableView *)v10 setFrame:x, y, v7, v9];
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
  v2 = [(ACMSignInWidget *)self accountLabel];

  return [(UILabel *)v2 text];
}

- (void)setAccountLabelText:(id)a3
{
  v4 = [(ACMSignInWidget *)self accountLabel];

  [(UILabel *)v4 setText:a3];
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

- (void)setAccountField:(id)a3
{
  accountField = self->_accountField;
  if (accountField != a3)
  {
    v6 = accountField;
    self->_accountField = a3;
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

- (void)setPasswordField:(id)a3
{
  passwordField = self->_passwordField;
  if (passwordField != a3)
  {
    v6 = passwordField;
    self->_passwordField = a3;
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
    v5 = [(ACMSignInWidget *)self accountLabel];
    v6 = objc_alloc(MEMORY[0x29EDC7D48]);
    v7 = 128.0;
    if (!v5)
    {
      v7 = 8.0;
    }

    v8 = 304.0;
    if (v5)
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
    if (v5)
    {
      [(UIView *)[(UITableViewCell *)self->_accountEditCell contentView] addSubview:v5];
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
    v5 = [(ACMSignInWidget *)self passwordLabel];
    v6 = objc_alloc(MEMORY[0x29EDC7D48]);
    v7 = 128.0;
    if (!v5)
    {
      v7 = 8.0;
    }

    v8 = 304.0;
    if (v5)
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
    if (v5)
    {
      [(UIView *)[(UITableViewCell *)self->_passwordEditCell contentView] addSubview:v5];
    }

    [(UIView *)[(UITableViewCell *)self->_passwordEditCell contentView] addSubview:v9];
    [(UITableViewCell *)self->_passwordEditCell setSelectionStyle:0];
    return self->_passwordEditCell;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([a4 row])
  {

    return [(ACMSignInWidget *)self passwordEditCell];
  }

  else
  {

    return [(ACMSignInWidget *)self accountEditCell];
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if ([(ACMSignInWidget *)self accountField]== a3)
  {
    [(UITextField *)[(ACMSignInWidget *)self accountField] resignFirstResponder];
    [(UITextField *)[(ACMSignInWidget *)self passwordField] becomeFirstResponder];
  }

  if ([(ACMSignInWidget *)self passwordField]== a3 && ![(ACMSignInWidget *)self shouldAuthenticateOnUserInput])
  {
    [(UITextField *)[(ACMSignInWidget *)self passwordField] resignFirstResponder];
  }

  else if ([(ACMSignInWidget *)self passwordField]== a3 && [(NSString *)[(UITextField *)[(ACMSignInWidget *)self passwordField] text] length]&& [(NSString *)[(UITextField *)[(ACMSignInWidget *)self accountField] text] length])
  {
    [(UITextField *)[(ACMSignInWidget *)self passwordField] resignFirstResponder];
    [(ACMSignInWidget *)self onSignIn:[(ACMSignInWidget *)self passwordField]];
  }

  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  v9 = 32 * ([(ACMSignInWidget *)self passwordField:a3]== a3);
  if ([(ACMSignInWidget *)self accountField]== a3)
  {
    v10 = 128;
  }

  else
  {
    v10 = v9;
  }

  v11 = [objc_msgSend(a3 "text")] - length;
  return v11 + [a5 length] <= v10;
}

- (void)disableControls:(BOOL)a3
{
  if (a3)
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
    v4 = [(ACMSignInWidget *)self passwordField];

    [(UITextField *)v4 setEnabled:0];
  }

  else
  {
    [(UITextField *)[(ACMSignInWidget *)self accountField] setEnabled:1];
    [(UITextField *)[(ACMSignInWidget *)self passwordField] setEnabled:1];
    v5 = [(ACMSignInWidget *)self accountField];
    v6 = [(ACMSignInWidget *)self passwordField];
    if ([(NSString *)[(UITextField *)[(ACMSignInWidget *)self accountField] text] length])
    {
      v5 = [(ACMSignInWidget *)self passwordField];
      v6 = [(ACMSignInWidget *)self accountField];
    }

    if (([(UITextField *)v5 isFirstResponder]& 1) == 0)
    {
      [(UITextField *)v6 resignFirstResponder];

      [(UITextField *)v5 becomeFirstResponder];
    }
  }
}

- (void)onSignIn:(id)a3
{
  v4 = [(ACMSignInWidget *)self delegate];

  [(ACMSignInWidgetDelegate *)v4 onSignIn:self];
}

uint64_t __56__ACMSignInWidget_Modern_createClearButtonForEditField___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) textColor];
  v3 = *(a1 + 32);

  return [v3 setTintColor:v2];
}

@end