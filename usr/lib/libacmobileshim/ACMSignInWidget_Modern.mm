@interface ACMSignInWidget_Modern
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGPoint)position;
- (UITextField)accountField;
- (UITextField)passwordField;
- (UIView)view;
- (double)leftMargin;
- (id)clearButtonImage;
- (id)createClearButtonForEditField:(id)field;
- (void)applyPlaceholderAttributes;
- (void)clearTextField:(id)field;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)setPlaceholderAttributes:(id)attributes;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)touchIn:(id)in;
- (void)touchOut:(id)out;
@end

@implementation ACMSignInWidget_Modern

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] setDelegate:0];

  self->_accountField = 0;
  [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] setDelegate:0];

  self->_passwordField = 0;
  self->_view = 0;
  [(ACMSignInWidget_Modern *)self setAccountLabelText:0];
  [(ACMSignInWidget_Modern *)self setBackgroundColor:0];
  [(ACMSignInWidget_Modern *)self setPlaceholderAttributes:0];
  [(UIButton *)[(ACMSignInWidget_Modern *)self accountClearButton] removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(UIButton *)[(ACMSignInWidget_Modern *)self passwordClearButton] removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(ACMSignInWidget_Modern *)self setAccountClearButton:0];
  [(ACMSignInWidget_Modern *)self setPasswordClearButton:0];
  v3.receiver = self;
  v3.super_class = ACMSignInWidget_Modern;
  [(ACMSignInWidget_Modern *)&v3 dealloc];
}

- (double)leftMargin
{
  hideMargin = [(ACMSignInWidget_Modern *)self hideMargin];
  result = 15.0;
  if (hideMargin)
  {
    return 0.0;
  }

  return result;
}

- (UIView)view
{
  result = self->_view;
  if (!result)
  {
    v4 = [MEMORY[0x29EDC7A00] colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.46];
    v5 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [(ACMSignInWidget_Modern *)self position];
    v7 = v6;
    [(ACMSignInWidget_Modern *)self position];
    v9 = v8;
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    v11 = [v5 initWithFrame:{v7, v9, 320.0, dbl_29836E070[v10 > 1.0] * 2.0 + 0.0}];
    self->_view = v11;
    [(UIView *)v11 setAutoresizingMask:34];
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] setAutoresizingMask:34];
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] frame];
    v13 = v12;
    v15 = v14;
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    if (v16 <= 1.0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.5;
    }

    if (![(ACMSignInWidget_Modern *)self hideTopSeparator])
    {
      v18 = objc_alloc(MEMORY[0x29EDC7DA0]);
      [(UIView *)[(ACMSignInWidget_Modern *)self view] frame];
      v19 = [v18 initWithFrame:{0.0, v13}];
      [v19 setAutoresizingMask:34];
      [v19 setBackgroundColor:v4];
      [(UIView *)self->_view addSubview:v19];
    }

    [(UIView *)self->_view addSubview:[(ACMSignInWidget_Modern *)self accountField]];
    v20 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [(ACMSignInWidget_Modern *)self leftMargin];
    v22 = v21;
    v23 = v13 + v15;
    [(UIView *)[(ACMSignInWidget_Modern *)self view] frame];
    v25 = v24;
    [(ACMSignInWidget_Modern *)self leftMargin];
    v27 = [v20 initWithFrame:{v22, v23, v25 - v26, v17}];
    [v27 setAutoresizingMask:34];
    [v27 setBackgroundColor:v4];
    [(UIView *)self->_view addSubview:v27];
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] setAutoresizingMask:34];
    [(UIView *)self->_view addSubview:[(ACMSignInWidget_Modern *)self passwordField]];
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] frame];
    v29 = v28;
    v31 = v30;
    v32 = objc_alloc(MEMORY[0x29EDC7DA0]);
    [(UIView *)[(ACMSignInWidget_Modern *)self view] frame];
    v33 = [v32 initWithFrame:{0.0, v29 + v31}];
    [v33 setAutoresizingMask:34];
    [v33 setBackgroundColor:v4];
    [(UIView *)self->_view addSubview:v33];
    [(ACMSignInWidget_Modern *)self applyPlaceholderAttributes];
    if ([(ACMSignInWidget_Modern *)self backgroundColor])
    {
      backgroundColor = [(ACMSignInWidget_Modern *)self backgroundColor];
    }

    else
    {
      backgroundColor = [MEMORY[0x29EDC7A00] whiteColor];
    }

    [(UIView *)self->_view setBackgroundColor:backgroundColor];
    return self->_view;
  }

  return result;
}

- (void)applyPlaceholderAttributes
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDC7638];
  v9[0] = [(ACMSignInWidget_Modern *)self textFieldFont];
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if ([(ACMSignInWidget_Modern *)self placeholderAttributes])
  {
    v4 = [v3 mutableCopy];
    [v4 addEntriesFromDictionary:{-[ACMSignInWidget_Modern placeholderAttributes](self, "placeholderAttributes")}];
    v3 = [v4 copy];
  }

  if ([(ACMSignInWidget_Modern *)self accountLabelText])
  {
    accountLabelText = [(ACMSignInWidget_Modern *)self accountLabelText];
  }

  else
  {
    accountLabelText = [ACMBaseLocale localizedString:@"Apple ID"];
  }

  v6 = accountLabelText;
  if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
  {
    v6 = [(NSString *)v6 stringByAppendingString:@" (PRE-RELEASE)"];
  }

  -[UITextField setAttributedPlaceholder:](-[ACMSignInWidget_Modern accountField](self, "accountField"), "setAttributedPlaceholder:", [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v6 attributes:v3]);
  v7 = [ACMBaseLocale localizedString:@"Password"];
  if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
  {
    v7 = [v7 stringByAppendingString:@" (PRE-RELEASE)"];
  }

  -[UITextField setAttributedPlaceholder:](-[ACMSignInWidget_Modern passwordField](self, "passwordField"), "setAttributedPlaceholder:", [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v7 attributes:v3]);
}

- (void)setPlaceholderAttributes:(id)attributes
{
  placeholderAttributes = self->_placeholderAttributes;
  if (placeholderAttributes != attributes)
  {

    attributesCopy = attributes;
    self->_placeholderAttributes = attributesCopy;
    if (attributesCopy)
    {

      [(ACMSignInWidget_Modern *)self applyPlaceholderAttributes];
    }
  }
}

- (id)clearButtonImage
{
  v2 = ACMImageWithName(@"buttonClear_iphone.png");

  return [v2 imageWithRenderingMode:2];
}

- (id)createClearButtonForEditField:(id)field
{
  [field setRightViewMode:0];
  [field setClearButtonMode:0];
  v5 = [MEMORY[0x29EDC7958] buttonWithType:0];
  [v5 setImage:-[ACMSignInWidget_Modern clearButtonImage](self forState:{"clearButtonImage"), 0}];
  [v5 addTarget:self action:sel_clearTextField_ forControlEvents:64];
  [v5 addTarget:self action:sel_touchIn_ forControlEvents:17];
  [v5 addTarget:self action:sel_touchOut_ forControlEvents:160];
  [v5 frame];
  [v5 setFrame:?];
  [v5 setImageEdgeInsets:{0.0, 0.0, 0.0, 8.0}];
  v6 = dispatch_time(0, 100000000);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __56__ACMSignInWidget_Modern_createClearButtonForEditField___block_invoke;
  v8[3] = &unk_29EE918B0;
  v8[4] = v5;
  v8[5] = field;
  dispatch_after(v6, MEMORY[0x29EDCA578], v8);
  [field setRightView:v5];
  return v5;
}

- (UITextField)accountField
{
  accountField = self->_accountField;
  if (!accountField)
  {
    textFieldFont = [(ACMSignInWidget_Modern *)self textFieldFont];
    v5 = objc_alloc(MEMORY[0x29EDC7D48]);
    [(ACMSignInWidget_Modern *)self leftMargin];
    v7 = v6;
    [(ACMSignInWidget_Modern *)self leftMargin];
    v9 = 320.0 - v8;
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    accountField = [v5 initWithFrame:{v7, 0.0, v9, dbl_29836E070[v10 > 1.0]}];
    [(UITextField *)accountField setTextAlignment:0];
    [(UITextField *)accountField setBorderStyle:0];
    [(UITextField *)accountField setReturnKeyType:4];
    [(UITextField *)accountField setContentVerticalAlignment:0];
    [(UITextField *)accountField setAutocapitalizationType:0];
    [(UITextField *)accountField setAutocorrectionType:1];
    [(UITextField *)accountField setClearButtonMode:1];
    [(UITextField *)accountField setTag:128];
    [(UITextField *)accountField setKeyboardType:7];
    [(UITextField *)accountField setDelegate:self];
    [(UITextField *)accountField setFont:textFieldFont];
    [(ACMSignInWidget_Modern *)self setAccountClearButton:[(ACMSignInWidget_Modern *)self createClearButtonForEditField:accountField]];
    self->_accountField = accountField;
  }

  return accountField;
}

- (UITextField)passwordField
{
  passwordField = self->_passwordField;
  if (!passwordField)
  {
    textFieldFont = [(ACMSignInWidget_Modern *)self textFieldFont];
    v5 = objc_alloc(MEMORY[0x29EDC7D48]);
    [(ACMSignInWidget_Modern *)self leftMargin];
    v7 = v6;
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] frame];
    v9 = v8;
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] frame];
    v11 = v9 + v10 + 0.0;
    [(ACMSignInWidget_Modern *)self leftMargin];
    v13 = 320.0 - v12;
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    passwordField = [v5 initWithFrame:{v7, v11, v13, dbl_29836E070[v14 > 1.0]}];
    [(UITextField *)passwordField setTextAlignment:0];
    [(UITextField *)passwordField setBorderStyle:0];
    [(UITextField *)passwordField setSecureTextEntry:1];
    [(UITextField *)passwordField setReturnKeyType:1];
    [(UITextField *)passwordField setContentVerticalAlignment:0];
    [(UITextField *)passwordField setEnablesReturnKeyAutomatically:0];
    [(UITextField *)passwordField setClearButtonMode:1];
    [(UITextField *)passwordField setTag:129];
    [(UITextField *)passwordField setDelegate:self];
    [(UITextField *)passwordField setFont:textFieldFont];
    [(ACMSignInWidget_Modern *)self setPasswordClearButton:[(ACMSignInWidget_Modern *)self createClearButtonForEditField:passwordField]];
    self->_passwordField = passwordField;
  }

  return passwordField;
}

- (void)touchIn:(id)in
{
  if ([(ACMSignInWidget_Modern *)self accountClearButton]== in)
  {
    accountClearButton = [(ACMSignInWidget_Modern *)self accountClearButton];
    accountField = [(ACMSignInWidget_Modern *)self accountField];
  }

  else if ([(ACMSignInWidget_Modern *)self passwordClearButton]== in)
  {
    accountClearButton = [(ACMSignInWidget_Modern *)self passwordClearButton];
    accountField = [(ACMSignInWidget_Modern *)self passwordField];
  }

  else
  {
    accountClearButton = 0;
    accountField = 0;
  }

  v7 = [(UIColor *)[(UITextField *)accountField textColor] colorWithAlphaComponent:0.5];

  [(UIButton *)accountClearButton setTintColor:v7];
}

- (void)touchOut:(id)out
{
  if ([(ACMSignInWidget_Modern *)self accountClearButton]== out)
  {
    accountClearButton = [(ACMSignInWidget_Modern *)self accountClearButton];
    accountField = [(ACMSignInWidget_Modern *)self accountField];
  }

  else if ([(ACMSignInWidget_Modern *)self passwordClearButton]== out)
  {
    accountClearButton = [(ACMSignInWidget_Modern *)self passwordClearButton];
    accountField = [(ACMSignInWidget_Modern *)self passwordField];
  }

  else
  {
    accountClearButton = 0;
    accountField = 0;
  }

  textColor = [(UITextField *)accountField textColor];

  [(UIButton *)accountClearButton setTintColor:textColor];
}

- (void)clearTextField:(id)field
{
  if ([(ACMSignInWidget_Modern *)self accountClearButton]== field)
  {
    accountClearButton = [(ACMSignInWidget_Modern *)self accountClearButton];
    accountField = [(ACMSignInWidget_Modern *)self accountField];
  }

  else
  {
    if ([(ACMSignInWidget_Modern *)self passwordClearButton]!= field)
    {
      accountClearButton = 0;
      v6 = 0;
      goto LABEL_7;
    }

    accountClearButton = [(ACMSignInWidget_Modern *)self passwordClearButton];
    accountField = [(ACMSignInWidget_Modern *)self passwordField];
  }

  v6 = accountField;
LABEL_7:
  if ([(ACMSignInWidget_Modern *)self textFieldShouldClear:v6])
  {
    [(UITextField *)v6 replaceRange:[(UITextField *)v6 textRangeFromPosition:[(UITextField *)v6 beginningOfDocument] toPosition:[(UITextField *)v6 endOfDocument]] withText:&stru_2A1EB91A0];
    [(UITextField *)v6 setRightViewMode:0];
    textColor = [(UITextField *)v6 textColor];

    [(UIButton *)accountClearButton setTintColor:textColor];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if ([(ACMSignInWidget_Modern *)self accountField]== return)
  {
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] resignFirstResponder];
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] becomeFirstResponder];
  }

  if ([(ACMSignInWidget_Modern *)self passwordField]== return && ![(ACMSignInWidget_Modern *)self shouldAuthenticateOnUserInput])
  {
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] resignFirstResponder];
  }

  else if ([(ACMSignInWidget_Modern *)self passwordField]== return && [(NSString *)[(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] text] length]&& [(NSString *)[(UITextField *)[(ACMSignInWidget_Modern *)self accountField] text] length])
  {
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] resignFirstResponder];
    [(ACMSignInWidgetDelegate *)[(ACMSignInWidget_Modern *)self delegate] onSignIn:self];
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if ([objc_msgSend(editing "text")])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  [editing setRightViewMode:v4];
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v5 = [objc_msgSend(clear "text")];

  return [(ACMSignInWidget_Modern *)self textField:clear shouldChangeCharactersInRange:0 replacementString:v5, &stru_2A1EB91A0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  if ([(ACMSignInWidget_Modern *)self passwordField]== field)
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  if ([(ACMSignInWidget_Modern *)self accountField]== field)
  {
    v11 = 128;
  }

  else
  {
    v11 = v10;
  }

  v12 = [objc_msgSend(field "text")] - length;
  v13 = v12 + [string length];
  if (v13 <= v11)
  {
    if ([objc_msgSend(objc_msgSend(field "text")])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    [field setRightViewMode:v14];
  }

  return v13 <= v11;
}

- (void)disableControls:(BOOL)controls
{
  if (controls)
  {
    if ([(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] isFirstResponder])
    {
      [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] resignFirstResponder];
    }

    if ([(UITextField *)[(ACMSignInWidget_Modern *)self accountField] isFirstResponder])
    {
      [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] resignFirstResponder];
    }

    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] setEnabled:0];
    passwordField = [(ACMSignInWidget_Modern *)self passwordField];

    [(UITextField *)passwordField setEnabled:0];
  }

  else
  {
    [(UITextField *)[(ACMSignInWidget_Modern *)self accountField] setEnabled:1];
    [(UITextField *)[(ACMSignInWidget_Modern *)self passwordField] setEnabled:1];
    accountField = [(ACMSignInWidget_Modern *)self accountField];
    passwordField2 = [(ACMSignInWidget_Modern *)self passwordField];
    if ([(NSString *)[(UITextField *)[(ACMSignInWidget_Modern *)self accountField] text] length])
    {
      accountField = [(ACMSignInWidget_Modern *)self passwordField];
      passwordField2 = [(ACMSignInWidget_Modern *)self accountField];
    }

    if (([(UITextField *)accountField isFirstResponder]& 1) == 0)
    {
      [(UITextField *)passwordField2 resignFirstResponder];

      [(UITextField *)accountField becomeFirstResponder];
    }
  }
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end