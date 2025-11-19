@interface ACMiTunesSignInDialog
- (BOOL)changeTitleStringIfNeeded;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGRect)passwordFrame;
- (CGRect)userNameFrame;
- (CGSize)titleStringSize;
- (NSString)passwordString;
- (NSString)userNameString;
- (id)dialogTitle;
- (int64_t)statusBarStyle;
- (void)cancel;
- (void)dealloc;
- (void)didPresentAlertView:(id)a3;
- (void)didRotate:(id)a3;
- (void)disableControls:(BOOL)a3;
- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation ACMiTunesSignInDialog

- (void)dealloc
{
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setDelegate:0];
  [(ACMSignInDialog *)self setAccountNameField:0];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setDelegate:0];
  [(ACMSignInDialog *)self setPasswordField:0];
  [(ACMiTunesSignInDialog *)self setTitleField:0];
  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setDelegate:0];
  [(ACMiTunesSignInDialog *)self setView:0];
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = ACMiTunesSignInDialog;
  [(ACMSignInDialog *)&v3 dealloc];
}

- (id)dialogTitle
{
  if ([(ACMiTunesSignInDialog *)self alertViewPrompt]&& [(NSString *)[(ACMiTunesSignInDialog *)self alertViewPrompt] length])
  {
    v3 = [(ACMiTunesSignInDialog *)self alertViewPrompt];
    if ([(NSString *)v3 length]< 0x47)
    {
      return v3;
    }

    else
    {
      v4 = [(NSString *)v3 substringToIndex:70];

      return [(NSString *)v4 stringByAppendingString:@"…"];
    }
  }

  else
  {

    return [ACMBaseLocale localizedString:@"Apple ID password"];
  }
}

- (void)didPresentAlertView:(id)a3
{
  if ([(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length])
  {
    v4 = [(ACMSignInDialog *)self passwordField];
  }

  else
  {
    v4 = [(ACMSignInDialog *)self accountNameField];
  }

  [(UITextField *)v4 becomeFirstResponder];
}

- (void)viewDidLoad
{
  if (![(ACMSignInDialog *)self accountNameField])
  {
    v3 = objc_alloc(MEMORY[0x29EDC7D48]);
    [(ACMiTunesSignInDialog *)self userNameFrame];
    -[ACMSignInDialog setAccountNameField:](self, "setAccountNameField:", [v3 initWithFrame:?]);
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setAutoresizingMask:34];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setBorderStyle:2];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setContentVerticalAlignment:0];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setReturnKeyType:4];
    -[UITextField setTextColor:](-[ACMSignInDialog accountNameField](self, "accountNameField"), "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setAutocapitalizationType:0];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setAutocorrectionType:1];
    -[UITextField setBackgroundColor:](-[ACMSignInDialog accountNameField](self, "accountNameField"), "setBackgroundColor:", [MEMORY[0x29EDC7A00] whiteColor]);
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setKeyboardAppearance:1];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setKeyboardType:7];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setClearButtonMode:1];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setOpaque:0];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setDelegate:self];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setPlaceholder:[ACMBaseLocale localizedString:@"Apple ID"]];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setPlaceholder:[(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
    }

    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:[(ACMSignInDialog *)self requestedUserName]];
    if (![(ACMiTunesSignInDialog *)self isUserNameEditable]&& [(NSString *)[(ACMSignInDialog *)self requestedUserName] length])
    {
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setBorderStyle:0];
      -[UITextField setBackgroundColor:](-[ACMSignInDialog accountNameField](self, "accountNameField"), "setBackgroundColor:", [MEMORY[0x29EDC7A00] clearColor]);
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:[(ACMSignInDialog *)self requestedUserName]];
      -[UITextField setTextColor:](-[ACMSignInDialog accountNameField](self, "accountNameField"), "setTextColor:", [MEMORY[0x29EDC7A00] whiteColor]);
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setContentHorizontalAlignment:0];
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setUserInteractionEnabled:0];
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setTextAlignment:1];
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setClearButtonMode:0];
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setAccessibilityTraits:*MEMORY[0x29EDC7FA8]];
    }
  }

  if (![(ACMSignInDialog *)self passwordField])
  {
    v4 = objc_alloc(MEMORY[0x29EDC7D48]);
    [(ACMiTunesSignInDialog *)self passwordFrame];
    -[ACMSignInDialog setPasswordField:](self, "setPasswordField:", [v4 initWithFrame:?]);
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setAutoresizingMask:34];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setBorderStyle:2];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setContentVerticalAlignment:0];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setReturnKeyType:1];
    -[UITextField setTextColor:](-[ACMSignInDialog passwordField](self, "passwordField"), "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setAutocapitalizationType:0];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setAutocorrectionType:1];
    -[UITextField setBackgroundColor:](-[ACMSignInDialog passwordField](self, "passwordField"), "setBackgroundColor:", [MEMORY[0x29EDC7A00] whiteColor]);
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setSecureTextEntry:1];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setKeyboardAppearance:1];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setClearButtonMode:1];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setDelegate:self];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setPlaceholder:[ACMBaseLocale localizedString:@"Password"]];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [(UITextField *)[(ACMSignInDialog *)self passwordField] setPlaceholder:[(NSString *)[(UITextField *)[(ACMSignInDialog *)self passwordField] placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
    }
  }

  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    [v5 addObserver:self selector:sel_didRotate_ name:*MEMORY[0x29EDC80C0] object:0];
  }

  v6.receiver = self;
  v6.super_class = ACMiTunesSignInDialog;
  [(ACMiTunesSignInDialog *)&v6 viewDidLoad];
}

- (BOOL)changeTitleStringIfNeeded
{
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    return 0;
  }

  if ([(ACMiTunesSignInDialog *)self isPortraitMode])
  {
    if (![(NSString *)[(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] title] isEqualToString:[(ACMiTunesSignInDialog *)self titleField]])
    {
      [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setTitle:[(ACMiTunesSignInDialog *)self titleField]];
      v3 = [(NSString *)[(ACMiTunesSignInDialog *)self titleField] stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2A1EB91A0];
      v4 = MEMORY[0x29EDC76B0];
      [MEMORY[0x29EDC76B0] systemFontSize];
      -[NSString sizeWithFont:](v3, "sizeWithFont:", [v4 systemFontOfSize:?]);
      [(ACMiTunesSignInDialog *)self setTitleStringSize:?];
      [(ACMiTunesSignInDialog *)self userNameFrame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(ACMiTunesSignInDialog *)self passwordFrame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      [(ACMiTunesSignInDialog *)self titleStringSize];
      if (floor(v21 / 190.0) == 1.0)
      {
        v16 = v16 + 10.0;
        v8 = v8 + 10.0;
      }

      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setFrame:v6, v8, v10, v12];
      goto LABEL_14;
    }

    return 0;
  }

  v22 = [(NSString *)[(ACMiTunesSignInDialog *)self titleField] stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2A1EB91A0];
  v23 = [[(NSString *)[(ACMiTunesSignInDialog *)self titleField] stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2A1EB91A0] length];
  [(ACMiTunesSignInDialog *)self titleStringSize];
  if (v24 <= 190.0 || v23 < 21)
  {
    return 0;
  }

  v27 = [(NSString *)v22 substringToIndex:19];
  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setTitle:[[(NSString *)v27 stringByAppendingString:@"…"] stringByAppendingString:@"\n\n\n\n\n\n"]];
  v28 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  -[NSString sizeWithFont:](v27, "sizeWithFont:", [v28 systemFontOfSize:?]);
  [(ACMiTunesSignInDialog *)self setTitleStringSize:?];
  [(ACMiTunesSignInDialog *)self userNameFrame];
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setFrame:v29, v30, v31, v32];
  [(ACMiTunesSignInDialog *)self passwordFrame];
  v14 = v33;
  v16 = v34;
  v18 = v35;
  v20 = v36;
LABEL_14:
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setFrame:v14, v16, v18, v20];
  return 1;
}

- (void)didRotate:(id)a3
{
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v4 = [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
    if ([(ACMiTunesSignInDialog *)self previousInterfaceOrientation]!= v4)
    {
      [(ACMiTunesSignInDialog *)self setPreviousInterfaceOrientation:v4];

      [(ACMiTunesSignInDialog *)self handleRotation];
    }
  }
}

- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (![(ACMiTunesSignInDialog *)self isShown:a3])
  {
    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] show];
    [(ACMiTunesSignInDialog *)self setIsShown:1];
    if (a5)
    {
      v7 = *(a5 + 2);

      v7(a5);
    }
  }
}

- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  if ([(ACMiTunesSignInDialog *)self isShown:a3])
  {
    [(ACMiTunesSignInDialog *)self setIsShown:0];
  }

  if (a5)
  {
    v7 = *(a5 + 2);

    v7(a5);
  }
}

- (void)disableControls:(BOOL)a3
{
  if ([(ACMiTunesSignInDialog *)self isShown]&& !a3 && ![(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] isVisible])
  {
    v5 = [(ACMiTunesSignInDialog *)self signInDialog];

    [(UIAlertView *)v5 show];
  }
}

- (NSString)passwordString
{
  v2 = [(ACMSignInDialog *)self passwordField];

  return [(UITextField *)v2 text];
}

- (NSString)userNameString
{
  if ([(ACMiTunesSignInDialog *)self isUserNameEditable])
  {
    v3 = [(ACMSignInDialog *)self accountNameField];

    return [(UITextField *)v3 text];
  }

  else
  {

    return [(ACMSignInDialog *)self requestedUserName];
  }
}

- (int64_t)statusBarStyle
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];

  return [v2 statusBarStyle];
}

- (void)cancel
{
  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] dismissWithClickedButtonIndex:0 animated:0];
  v3.receiver = self;
  v3.super_class = ACMiTunesSignInDialog;
  [(ACMSignInDialog *)&v3 cancel];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  if ([(ACMSignInDialog *)self passwordField]!= a3)
  {
    [(ACMiTunesSignInDialog *)self handleTextFieldShouldReturnOnNonPasswordField];
    return 1;
  }

  if ([(ACMSignInDialog *)self canSignIn])
  {
    [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] onSignIn:a3];
    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] dismissWithClickedButtonIndex:0 animated:1];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] resignFirstResponder];
    return 1;
  }

  return [(ACMiTunesSignInDialog *)self shouldPasswordTextFieldReturnOnSignInDisallowed];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  if ([(ACMSignInDialog *)self passwordField:a3]== a3)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  if ([(ACMSignInDialog *)self accountNameField]== a3)
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

- (CGSize)titleStringSize
{
  width = self->_titleStringSize.width;
  height = self->_titleStringSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)userNameFrame
{
  objc_copyStruct(v6, &self->_userNameFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)passwordFrame
{
  objc_copyStruct(v6, &self->_passwordFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t __63__ACMiTunesSignInDialog_Legacy_alertView_clickedButtonAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);

  return [v2 onSignInCancel:v3];
}

@end