@interface ACMiTunesSignInDialog_Legacy
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CGRect)passwordFrame;
- (CGRect)userNameFrame;
- (void)acmAlertViewWillBecomeInvisible;
- (void)acmAlertViewWillBecomeVisible;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
- (void)handleRotation;
- (void)handleTextFieldShouldReturnOnNonPasswordField;
- (void)loadView;
- (void)viewDidLoad;
- (void)willPresentAlertView:(id)view;
@end

@implementation ACMiTunesSignInDialog_Legacy

- (void)dealloc
{
  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setAcmAlertViewDelegate:0];
  [(ACMiTunesSignInDialog_Legacy *)self setEditingTextField:0];
  v3.receiver = self;
  v3.super_class = ACMiTunesSignInDialog_Legacy;
  [(ACMiTunesSignInDialog *)&v3 dealloc];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  [(ACMiTunesSignInDialog_Legacy *)self setEditingTextField:?];
  [objc_msgSend(editing "undoManager")];
  return 1;
}

- (void)loadView
{
  dialogTitle = [(ACMiTunesSignInDialog *)self dialogTitle];
  v4 = MEMORY[0x29EDC76B0];
  [MEMORY[0x29EDC76B0] systemFontSize];
  [dialogTitle sizeWithFont:{objc_msgSend(v4, "systemFontOfSize:")}];
  [(ACMiTunesSignInDialog *)self setTitleStringSize:?];
  -[ACMiTunesSignInDialog setPreviousInterfaceOrientation:](self, "setPreviousInterfaceOrientation:", [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")]);
  -[ACMiTunesSignInDialog setTitleField:](self, "setTitleField:", [dialogTitle stringByAppendingString:@"\n\n\n\n"]);
  [MEMORY[0x29EDC7A58] currentDevice];
  if (((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")]) && !-[ACMiTunesSignInDialog isPortraitMode](self, "isPortraitMode"))
  {
    [(ACMiTunesSignInDialog *)self titleStringSize];
    if (v5 > 190.0 && [dialogTitle length] >= 0x15)
    {
      dialogTitle = [objc_msgSend(dialogTitle substringToIndex:{19), "stringByAppendingString:", @"…"}];
      v6 = MEMORY[0x29EDC76B0];
      [MEMORY[0x29EDC76B0] systemFontSize];
      [dialogTitle sizeWithFont:{objc_msgSend(v6, "systemFontOfSize:")}];
      [(ACMiTunesSignInDialog *)self setTitleStringSize:?];
    }
  }

  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v7 = @"\n\n\n\n";
  }

  else if ([(ACMiTunesSignInDialog *)self isPortraitMode])
  {
    v7 = @"\n\n\n\n";
  }

  else
  {
    v7 = @"\n\n\n";
  }

  -[ACMiTunesSignInDialog_Legacy setView:](self, "setView:", -[ACMAlertView initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:]([ACMAlertView alloc], "initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:", [dialogTitle stringByAppendingString:v7], 0, self, +[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Cancel"), +[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Sign In"), 0));
  v8.receiver = self;
  v8.super_class = ACMiTunesSignInDialog_Legacy;
  [(ACMiTunesSignInDialog *)&v8 loadView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ACMiTunesSignInDialog_Legacy;
  [(ACMiTunesSignInDialog *)&v3 viewDidLoad];
  [-[UITextField undoManager](-[ACMSignInDialog accountNameField](self "accountNameField")];
  [-[UITextField undoManager](-[ACMSignInDialog passwordField](self "passwordField")];
}

- (void)handleRotation
{
  v31 = *MEMORY[0x29EDCA608];
  if (![(ACMiTunesSignInDialog *)self changeTitleStringIfNeeded])
  {
    [(ACMiTunesSignInDialog_Legacy *)self userNameFrame];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setFrame:v3, v4, v5, v6];
    [(ACMiTunesSignInDialog_Legacy *)self passwordFrame];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setFrame:v7, v8, v9, v10];
  }

  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(ACMiTunesSignInDialog *)self titleStringSize];
  v18 = v17;
  if ([(ACMiTunesSignInDialog *)self isPortraitMode])
  {
    v19 = dbl_29836E120[floor(v18 / 190.0) > 0.0];
  }

  else
  {
    v19 = 158.0;
  }

  subviews = [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] subviews];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      v24 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(subviews);
        }

        v25 = *(*(&v26 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 frame];
          [v25 setFrame:?];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v22);
  }

  [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setBounds:v12, v14, v16, v19];
}

- (void)handleTextFieldShouldReturnOnNonPasswordField
{
  passwordField = [(ACMSignInDialog *)self passwordField];

  [(UITextField *)passwordField becomeFirstResponder];
}

- (CGRect)passwordFrame
{
  [(ACMiTunesSignInDialog *)self titleStringSize];
  v4 = v3;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v5 = 78.0;
  }

  else
  {
    isPortraitMode = [(ACMiTunesSignInDialog *)self isPortraitMode];
    v5 = 64.0;
    if (isPortraitMode)
    {
      v5 = 78.0;
    }
  }

  v7 = floor(v4 / 190.0) * 20.0 + v5;
  v8 = 260.0;
  v9 = 12.0;
  v10 = 30.0;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v9;
  return result;
}

- (CGRect)userNameFrame
{
  [(ACMiTunesSignInDialog *)self titleStringSize];
  v4 = v3;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v5 = 48.0;
  }

  else
  {
    isPortraitMode = [(ACMiTunesSignInDialog *)self isPortraitMode];
    v5 = 34.0;
    if (isPortraitMode)
    {
      v5 = 48.0;
    }
  }

  v7 = floor(v4 / 190.0) * 20.0 + v5;
  v8 = 260.0;
  v9 = 12.0;
  v10 = 30.0;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v9;
  return result;
}

- (void)willPresentAlertView:(id)view
{
  if (![(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] acmAlertViewDelegate])
  {
    changeTitleStringIfNeeded = [(ACMiTunesSignInDialog *)self changeTitleStringIfNeeded];
    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setAcmAlertViewDelegate:self];
    if (![(UITextField *)[(ACMSignInDialog *)self passwordField] superview])
    {
      if (changeTitleStringIfNeeded)
      {
        [(UITextField *)[(ACMSignInDialog *)self passwordField] frame];
      }

      else
      {
        [(ACMiTunesSignInDialog_Legacy *)self passwordFrame];
      }

      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      [MEMORY[0x29EDC7A58] currentDevice];
      if (((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")]) && !-[ACMiTunesSignInDialog isPortraitMode](self, "isPortraitMode"))
      {
        v10 = v10 + 4.0;
      }

      [(UITextField *)[(ACMSignInDialog *)self passwordField] setFrame:v9, v10, v11, v12];
      [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] addSubview:[(ACMSignInDialog *)self passwordField]];
    }

    if ([(ACMSignInDialog *)self accountNameField]&& ![(UITextField *)[(ACMSignInDialog *)self accountNameField] superview])
    {
      if (changeTitleStringIfNeeded)
      {
        [(UITextField *)[(ACMSignInDialog *)self accountNameField] frame];
      }

      else
      {
        [(ACMiTunesSignInDialog_Legacy *)self userNameFrame];
      }

      v17 = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;
      [MEMORY[0x29EDC7A58] currentDevice];
      if (((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")]) && !-[ACMiTunesSignInDialog isPortraitMode](self, "isPortraitMode"))
      {
        v18 = v18 + 4.0;
      }

      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setFrame:v17, v18, v19, v20];
      [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] addSubview:[(ACMSignInDialog *)self accountNameField]];
    }

    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] center];
    v22 = v21;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v23 = ![(ACMiTunesSignInDialog *)self isPortraitMode];
      v24 = 208.0;
      v25 = 380.0;
    }

    else
    {
      v23 = ![(ACMiTunesSignInDialog *)self isPortraitMode];
      v24 = 82.0;
      v25 = 140.0;
    }

    if (v23)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] bounds];
    v28 = v27;
    if ((llroundf(v28) & 0x8000000000000001) == 1)
    {
      v26 = v26 + 0.5;
    }

    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setCenter:v22, v26];
    if ([(ACMiTunesSignInDialog_Legacy *)self editingTextField])
    {
      editingTextField = [(ACMiTunesSignInDialog_Legacy *)self editingTextField];
    }

    else if ([(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length])
    {
      editingTextField = [(ACMSignInDialog *)self passwordField];
    }

    else
    {
      editingTextField = [(ACMSignInDialog *)self accountNameField];
    }

    [(UITextField *)editingTextField becomeFirstResponder];
  }
}

- (void)acmAlertViewWillBecomeInvisible
{
  editingTextField = [(ACMiTunesSignInDialog_Legacy *)self editingTextField];

  [(UITextField *)editingTextField resignFirstResponder];
}

- (void)acmAlertViewWillBecomeVisible
{
  editingTextField = [(ACMiTunesSignInDialog_Legacy *)self editingTextField];

  [(UITextField *)editingTextField becomeFirstResponder];
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  if ([(ACMiTunesSignInDialog *)self signInDialog]== view)
  {
    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] setAcmAlertViewDelegate:0];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] resignFirstResponder];
    if (index == 1)
    {
      if ([(ACMSignInDialog *)self canSignIn])
      {
        [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] onSignIn:view];
        signInDialog = [(ACMiTunesSignInDialog *)self signInDialog];

        [(UIAlertView *)signInDialog dismissWithClickedButtonIndex:0 animated:0];
      }

      else
      {
        text = [(UITextField *)[(ACMSignInDialog *)self accountNameField] text];
        text2 = [(UITextField *)[(ACMSignInDialog *)self passwordField] text];
        accountNameField = [(ACMSignInDialog *)self accountNameField];
        editingTextField = [(ACMiTunesSignInDialog_Legacy *)self editingTextField];
        [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] dismissWithClickedButtonIndex:1 animated:0];
        [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] show];
        if ([(NSString *)text length])
        {
          [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:text];
        }

        [(UITextField *)[(ACMSignInDialog *)self passwordField] setText:text2];
        if (accountNameField == editingTextField)
        {
          accountNameField2 = [(ACMSignInDialog *)self accountNameField];
        }

        else
        {
          accountNameField2 = [(ACMSignInDialog *)self passwordField];
        }

        [(UITextField *)accountNameField2 becomeFirstResponder];
      }
    }

    else if (!index)
    {
      [(ACMSignInDialog *)self controlsWillChangeState:1];
      [(ACMSignInDialog *)self controlsDidChangeState:1];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = __63__ACMiTunesSignInDialog_Legacy_alertView_clickedButtonAtIndex___block_invoke;
      v13[3] = &unk_29EE918B0;
      v13[4] = self;
      v13[5] = view;
      dispatch_async_on_main_thread(v13);
    }
  }
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  signInDialog = [(ACMiTunesSignInDialog *)self signInDialog];
  if (index == 1 && signInDialog == view)
  {
    [(ACMiTunesSignInDialog_Legacy *)self setView:0];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setDelegate:0];
    [(ACMSignInDialog *)self setAccountNameField:0];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setDelegate:0];
    [(ACMSignInDialog *)self setPasswordField:0];

    [(ACMiTunesSignInDialog_Legacy *)self setEditingTextField:0];
  }
}

@end