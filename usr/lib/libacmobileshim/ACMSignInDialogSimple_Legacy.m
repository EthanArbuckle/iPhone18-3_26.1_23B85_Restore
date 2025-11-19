@interface ACMSignInDialogSimple_Legacy
- (ACMSignInDialogSimple_Legacy)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accountNameField;
- (id)cancelButton;
- (id)loginButton;
- (id)passwordField;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
@end

@implementation ACMSignInDialogSimple_Legacy

- (ACMSignInDialogSimple_Legacy)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple_Legacy;
  return [(ACMSignInDialogSimple_Legacy *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC8250];
  [v3 removeObserver:self name:*MEMORY[0x29EDC8250] object:{-[ACMSignInDialogSimple_Legacy passwordField](self, "passwordField")}];
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple_Legacy;
  [(ACMSignInDialogSimple *)&v5 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = ACMSignInDialogSimple_Legacy;
  [(ACMSignInDialogSimple_Legacy *)&v2 didReceiveMemoryWarning];
}

- (void)loadView
{
  if (![(ACMSignInDialog *)self delegate])
  {
    [ACMSignInDialogSimple_Legacy loadView];
  }

  v61.receiver = self;
  v61.super_class = ACMSignInDialogSimple_Legacy;
  [(ACMSignInDialogSimple *)&v61 loadView];
  if ([(ACMSignInDialogSimple *)self backgroundColor])
  {
    v3 = [(ACMSignInDialogSimple *)self backgroundColor];
  }

  else
  {
    v3 = [MEMORY[0x29EDC7A00] whiteColor];
  }

  [-[ACMSignInDialogSimple_Legacy view](self "view")];
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  v5 = v4;
  if ([(ACMSignInDialogSimple *)self logo])
  {
    v6 = [objc_alloc(MEMORY[0x29EDC7AD8]) initWithImage:{-[ACMSignInDialogSimple logo](self, "logo")}];
    [(UIImage *)[(ACMSignInDialogSimple *)self logo] size];
    v8 = (v5 - v7) * 0.5;
    [(UIImage *)[(ACMSignInDialogSimple *)self logo] size];
    v10 = v9;
    v12 = v11;
    v13 = 5.0;
    [v6 setFrame:{v8, 5.0, v9, v11}];
  }

  else
  {
    [MEMORY[0x29EDC7A58] currentDevice];
    v14 = @"apple.png";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v14 = @"apple_iPad.png";
    }

    v6 = [objc_alloc(MEMORY[0x29EDC7AD8]) initWithImage:ACMImageWithName(v14)];
    [v6 bounds];
    v8 = floor((v5 - v15) * 0.5);
    [-[ACMSignInDialogSimple_Legacy accountNameField](self "accountNameField")];
    v17 = v16;
    [v6 frame];
    v13 = floor((v17 - v18) * 0.5);
    [v6 bounds];
    v10 = v19;
    v12 = v20;
  }

  [v6 setAutoresizingMask:37];
  [v6 setFrame:{v8, v13, v10, v12}];
  [-[ACMSignInDialogSimple_Legacy view](self "view")];
  [-[ACMSignInDialogSimple_Legacy view](self "view")];
  [-[ACMSignInDialogSimple_Legacy view](self "view")];
  v21 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  v23 = v22;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    *&v24 = 101.0;
  }

  else
  {
    *&v24 = 78.0;
  }

  v25 = *&v24;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v26 = 20.0, ![objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")]))
  {
    v26 = 15.0;
  }

  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    *&v27 = 118.0;
  }

  else
  {
    *&v27 = 75.0;
  }

  v28 = *&v27;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    *&v29 = 43.0;
  }

  else
  {
    *&v29 = 33.0;
  }

  v30 = *&v29;
  v31 = v26 + (v25 * 2.0);
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v32 = 34.0;
  }

  else
  {
    v32 = 25.0;
  }

  v33 = v31;
  v34 = v28 + (v30 * 2.0);
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v35 = 34.0;
  }

  else
  {
    v35 = 8.0;
  }

  v36 = v23 - v33;
  v37 = v34 + v32;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    *&v38 = 101.0;
  }

  else
  {
    *&v38 = 78.0;
  }

  v39 = *&v38;
  v40 = v36 * 0.5;
  v41 = v37 + v35;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v42 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v43 = 20.0, !v42))
  {
    v43 = 15.0;
  }

  v44 = floor(v40);
  v45 = v41;
  v46 = (v43 + (v39 * 2.0));
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    v47 = 38.0;
  }

  else
  {
    v47 = 30.0;
  }

  v48 = [v21 initWithFrame:{v44, v45, v46, v47}];
  [-[ACMSignInDialogSimple_Legacy loginButton](self "loginButton")];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
  {
    *&v55 = 101.0;
  }

  else
  {
    *&v55 = 78.0;
  }

  v56 = *&v55;
  [MEMORY[0x29EDC7A58] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v57 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v58 = 20.0, !v57))
  {
    v58 = 15.0;
  }

  [-[ACMSignInDialogSimple_Legacy loginButton](self "loginButton")];
  [v48 setAutoresizingMask:37];
  [v48 addSubview:{-[ACMSignInDialogSimple_Legacy cancelButton](self, "cancelButton")}];
  [v48 addSubview:{-[ACMSignInDialogSimple_Legacy loginButton](self, "loginButton")}];
  [-[ACMSignInDialogSimple_Legacy view](self "view")];
  [-[ACMSignInDialogSimple_Legacy accountNameField](self "accountNameField")];
  v59 = [MEMORY[0x29EDBA068] defaultCenter];
  v60 = *MEMORY[0x29EDC8250];
  [v59 addObserver:self selector:sel_checkFields name:*MEMORY[0x29EDC8250] object:{-[ACMSignInDialogSimple_Legacy passwordField](self, "passwordField")}];
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
}

- (id)accountNameField
{
  result = self->super.super._accountNameField;
  if (!result)
  {
    v4 = [ACMSimpleTextField alloc];
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    v6 = v5;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v7 = 348.0;
    }

    else
    {
      v7 = 280.0;
    }

    v8 = v6 - v7;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v9 = 118.0;
    }

    else
    {
      v9 = 75.0;
    }

    v10 = v8 * 0.5;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v11 = 348.0;
    }

    else
    {
      v11 = 280.0;
    }

    v12 = floor(v10);
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v13 = 43.0;
    }

    else
    {
      v13 = 33.0;
    }

    self->super.super._accountNameField = [(ACMSimpleTextField *)v4 initWithFrame:v12, v9, v11, v13];
    if ([(ACMSignInDialogSimple *)self accountNameFieldPlaceholder])
    {
      v14 = [(ACMSignInDialogSimple *)self accountNameFieldPlaceholder];
    }

    else
    {
      v14 = [ACMBaseLocale localizedString:@"Apple ID"];
    }

    [(UITextField *)self->super.super._accountNameField setPlaceholder:v14];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [(UITextField *)self->super.super._accountNameField setPlaceholder:[(NSString *)[(UITextField *)self->super.super._accountNameField placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
    }

    [(UITextField *)self->super.super._accountNameField setTextAlignment:0];
    -[UITextField setTextColor:](self->super.super._accountNameField, "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UITextField *)self->super.super._accountNameField setReturnKeyType:4];
    [(UITextField *)self->super.super._accountNameField setContentVerticalAlignment:0];
    [(UITextField *)self->super.super._accountNameField setAutocapitalizationType:0];
    [(UITextField *)self->super.super._accountNameField setAutocorrectionType:1];
    [(UITextField *)self->super.super._accountNameField setClearButtonMode:1];
    v15 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v16 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v17 = 22.0, !v16))
    {
      v17 = 18.0;
    }

    -[UITextField setFont:](self->super.super._accountNameField, "setFont:", [v15 systemFontOfSize:v17]);
    [(UITextField *)self->super.super._accountNameField setAutoresizingMask:37];
    [(UITextField *)self->super.super._accountNameField setDelegate:self];
    [(UITextField *)self->super.super._accountNameField setKeyboardType:7];
    [(UITextField *)self->super.super._accountNameField setExclusiveTouch:1];
    return self->super.super._accountNameField;
  }

  return result;
}

- (id)passwordField
{
  result = self->super.super._passwordField;
  if (!result)
  {
    v4 = [ACMSimpleTextField alloc];
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    v6 = v5;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v7 = 348.0;
    }

    else
    {
      v7 = 280.0;
    }

    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      *&v8 = 118.0;
    }

    else
    {
      *&v8 = 75.0;
    }

    v9 = *&v8;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v10 = 43.0;
    }

    else
    {
      v10 = 33.0;
    }

    v11 = v6 - v7;
    v12 = v9 + v10;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v13 = 34.0;
    }

    else
    {
      v13 = 25.0;
    }

    v14 = v11 * 0.5;
    v15 = v12 + v13;
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v16 = 348.0;
    }

    else
    {
      v16 = 280.0;
    }

    v17 = floor(v14);
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v18 = 43.0;
    }

    else
    {
      v18 = 33.0;
    }

    self->super.super._passwordField = [(ACMSimpleTextField *)v4 initWithFrame:v17, v15, v16, v18];
    [(UITextField *)self->super.super._passwordField setPlaceholder:[ACMBaseLocale localizedString:@"Password"]];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [(UITextField *)self->super.super._passwordField setPlaceholder:[(NSString *)[(UITextField *)self->super.super._passwordField placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
    }

    [(UITextField *)self->super.super._passwordField setTextAlignment:0];
    -[UITextField setTextColor:](self->super.super._passwordField, "setTextColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UITextField *)self->super.super._passwordField setSecureTextEntry:1];
    [(UITextField *)self->super.super._passwordField setReturnKeyType:1];
    [(UITextField *)self->super.super._passwordField setContentVerticalAlignment:0];
    [(UITextField *)self->super.super._passwordField setEnablesReturnKeyAutomatically:0];
    [(UITextField *)self->super.super._passwordField setClearButtonMode:1];
    v19 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v20 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v21 = 22.0, !v20))
    {
      v21 = 18.0;
    }

    -[UITextField setFont:](self->super.super._passwordField, "setFont:", [v19 systemFontOfSize:v21]);
    [(UITextField *)self->super.super._passwordField setAutoresizingMask:37];
    [(UITextField *)self->super.super._passwordField setDelegate:self];
    return self->super.super._passwordField;
  }

  return result;
}

- (id)loginButton
{
  if (![(ACMSignInDialog *)self delegate])
  {
    [ACMSignInDialogSimple_Legacy loginButton];
  }

  result = self->super._loginButton;
  if (!result)
  {
    [MEMORY[0x29EDC7A58] currentDevice];
    v4 = @"blueButton.png";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v4 = @"blueButton_iPad.png";
    }

    v5 = ACMImageWithName(v4);
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v6 = 8;
    }

    else
    {
      v6 = 6;
    }

    v7 = [v5 stretchableImageWithLeftCapWidth:v6 topCapHeight:0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v8 = 101.0;
    }

    else
    {
      v8 = 78.0;
    }

    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v9 = 38.0;
    }

    else
    {
      v9 = 30.0;
    }

    v10 = [MEMORY[0x29EDC7958] buttonWithType:0];
    self->super._loginButton = v10;
    [(UIButton *)v10 setFrame:0.0, 0.0, v8, v9];
    [(UIButton *)self->super._loginButton setTitle:[ACMBaseLocale forState:"localizedString:" localizedString:?], 0];
    [(UIButton *)self->super._loginButton setBackgroundImage:v7 forState:0];
    -[UIButton setTitleColor:forState:](self->super._loginButton, "setTitleColor:forState:", [MEMORY[0x29EDC7A00] whiteColor], 0);
    v11 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v12 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v13 = 15.0, !v12))
    {
      v13 = 13.0;
    }

    -[UILabel setFont:](-[UIButton titleLabel](self->super._loginButton, "titleLabel"), "setFont:", [v11 systemFontOfSize:v13]);
    -[UILabel setShadowColor:](-[UIButton titleLabel](self->super._loginButton, "titleLabel"), "setShadowColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UILabel *)[(UIButton *)self->super._loginButton titleLabel] setShadowOffset:0.0, -1.0];
    [(UIButton *)self->super._loginButton setContentMode:0];
    [(UIButton *)self->super._loginButton setAutoresizingMask:37];
    [(UIButton *)self->super._loginButton addTarget:self action:sel_onSignIn_ forControlEvents:64];
    [(UIButton *)self->super._loginButton setExclusiveTouch:1];
    return self->super._loginButton;
  }

  return result;
}

- (id)cancelButton
{
  if (![(ACMSignInDialog *)self delegate])
  {
    [ACMSignInDialogSimple_Legacy cancelButton];
  }

  result = self->super._cancelButton;
  if (!result)
  {
    [MEMORY[0x29EDC7A58] currentDevice];
    v4 = @"greyButton.png";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v4 = @"greyButton_iPad.png";
    }

    v5 = ACMImageWithName(v4);
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v6 = 8;
    }

    else
    {
      v6 = 6;
    }

    v7 = [v5 stretchableImageWithLeftCapWidth:v6 topCapHeight:0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v8 = 101.0;
    }

    else
    {
      v8 = 78.0;
    }

    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v9 = 38.0;
    }

    else
    {
      v9 = 30.0;
    }

    v10 = [MEMORY[0x29EDC7958] buttonWithType:0];
    self->super._cancelButton = v10;
    [(UIButton *)v10 setFrame:0.0, 0.0, v8, v9];
    [(UIButton *)self->super._cancelButton setTitle:[ACMBaseLocale forState:"localizedString:" localizedString:?], 0];
    [(UIButton *)self->super._cancelButton addTarget:self action:sel_onSignInCancel_ forControlEvents:64];
    [(UIButton *)self->super._cancelButton setBackgroundImage:v7 forState:0];
    -[UIButton setTitleColor:forState:](self->super._cancelButton, "setTitleColor:forState:", [MEMORY[0x29EDC7A00] whiteColor], 0);
    v11 = MEMORY[0x29EDC76B0];
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v12 = [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")], v13 = 15.0, !v12))
    {
      v13 = 13.0;
    }

    -[UILabel setFont:](-[UIButton titleLabel](self->super._cancelButton, "titleLabel"), "setFont:", [v11 systemFontOfSize:v13]);
    -[UILabel setShadowColor:](-[UIButton titleLabel](self->super._cancelButton, "titleLabel"), "setShadowColor:", [MEMORY[0x29EDC7A00] blackColor]);
    [(UILabel *)[(UIButton *)self->super._cancelButton titleLabel] setShadowOffset:0.0, -1.0];
    [(UIButton *)self->super._cancelButton setContentMode:0];
    [(UIButton *)self->super._cancelButton setAutoresizingMask:37];
    [(UIButton *)self->super._cancelButton setExclusiveTouch:1];
    return self->super._cancelButton;
  }

  return result;
}

@end