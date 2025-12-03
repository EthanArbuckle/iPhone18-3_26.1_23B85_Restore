@interface ACMSignInDialogSimple_Modern
- (BOOL)canSignIn;
- (NSArray)burButtonItems;
- (UIImage)iForgotImage;
- (UIToolbar)toolbar;
- (id)accountNameField;
- (id)createCancelItem;
- (id)createIForgotItem;
- (id)passwordField;
- (id)widget;
- (int64_t)preferredStatusBarStyle;
- (void)buildConstraints;
- (void)buildHorizontalConstraints;
- (void)buildVerticalConstraints;
- (void)buildWidgetContentGroupHorizontalConstraints;
- (void)buildWidgetContentGroupVerticalConstraints;
- (void)checkFields;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ACMSignInDialogSimple_Modern

- (void)dealloc
{
  [(ACMSignInDialog *)self setDelegate:0];
  [(ACMSignInDialogSimple_Modern *)self setToolbar:0];
  [(ACMSignInDialogSimple_Modern *)self setBurButtonItems:0];
  [(ACMSignInDialogSimple_Modern *)self setLogo:0];
  [(ACMSignInDialogSimple_Modern *)self setLogoView:0];
  [(ACMSignInDialogSimple_Modern *)self setAccountNameFieldPlaceholder:0];
  v3.receiver = self;
  v3.super_class = ACMSignInDialogSimple_Modern;
  [(ACMSignInDialogCustom *)&v3 dealloc];
}

- (id)createIForgotItem
{
  v2 = [objc_alloc(MEMORY[0x29EDC7940]) initWithImage:-[ACMSignInDialogSimple_Modern iForgotImage](self style:"iForgotImage") target:0 action:{self, sel_onIForgot_}];

  return v2;
}

- (id)createCancelItem
{
  v2 = [objc_alloc(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:14 target:0 action:0];

  return v2;
}

- (NSArray)burButtonItems
{
  v4[3] = *MEMORY[0x29EDCA608];
  result = self->_burButtonItems;
  if (!result)
  {
    if ([(ACMSignInDialog *)self delegate])
    {
      [(ACMSignInDialogCustom *)self setCancelBarButton:[(ACMSignInDialogSimple_Modern *)self createCancelItem]];
      v4[0] = [(ACMSignInDialogCustom *)self cancelBarButton];
      v4[1] = [objc_alloc(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:5 target:0 action:{0, v4[0]}];
      v4[2] = [(ACMSignInDialogSimple_Modern *)self createIForgotItem];
      result = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:3];
      self->_burButtonItems = result;
    }

    else
    {
      return self->_burButtonItems;
    }
  }

  return result;
}

- (UIToolbar)toolbar
{
  if (![(ACMSignInDialog *)self delegate])
  {
    [ACMSignInDialogSimple_Modern toolbar];
  }

  result = self->_toolbar;
  if (!result)
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
    v5 = v4;
    v7 = v6;
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    v9 = v8;
    *&v8 = v7;
    v10 = v5;
    v12 = [[ACMEToolbar alloc] initWithFrame:v9, fminf(*&v8, v10), v11, 60.0];
    self->_toolbar = &v12->super;
    [(ACMEToolbar *)v12 setItems:[(ACMSignInDialogSimple_Modern *)self burButtonItems] animated:0];
    [(UIToolbar *)self->_toolbar setBarStyle:0];
    -[UIToolbar setBarTintColor:](self->_toolbar, "setBarTintColor:", [MEMORY[0x29EDC7A00] clearColor]);
    [(UIToolbar *)self->_toolbar setTintColor:[(ACMSignInDialogSimple_Modern *)self tintColor]];
    [(UIToolbar *)self->_toolbar setTranslucent:1];
    [(UIToolbar *)self->_toolbar setOpaque:0];
    [-[ACMSignInDialogSimple_Modern toolbarItems](self "toolbarItems")];
    return self->_toolbar;
  }

  return result;
}

- (int64_t)preferredStatusBarStyle
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];

  return [mEMORY[0x29EDC7938] statusBarStyle];
}

- (void)loadView
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (![(ACMSignInDialog *)self delegate])
  {
    [ACMSignInDialogSimple_Modern loadView];
  }

  v3 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  -[ACMSignInDialogSimple_Modern setView:](self, "setView:", [v3 initWithFrame:?]);
  if ([objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")])
  {
    blackColor = [MEMORY[0x29EDC7A00] blackColor];
  }

  else
  {
    blackColor = [MEMORY[0x29EDC7A00] whiteColor];
  }

  [(ACMSignInDialogCustom *)self setBackgroundColor:blackColor];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  v5 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  -[ACMSignInDialogSimple_Modern setContainer:](self, "setContainer:", [v5 initWithFrame:?]);
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  if (![(ACMSignInDialogSimple_Modern *)self logo])
  {
    [(ACMSignInDialogSimple_Modern *)self setLogo:ACMImageWithName(@"AppleLogo.png")];
  }

  v6 = objc_alloc(MEMORY[0x29EDC7AD8]);
  [(UIImage *)[(ACMSignInDialogSimple_Modern *)self logo] size];
  v8 = v7;
  [(UIImage *)[(ACMSignInDialogSimple_Modern *)self logo] size];
  -[ACMSignInDialogSimple_Modern setLogoView:](self, "setLogoView:", [v6 initWithFrame:{0.0, 80.0, v8, v9}]);
  [(UIImageView *)[(ACMSignInDialogSimple_Modern *)self logoView] setImage:[(ACMSignInDialogSimple_Modern *)self logo]];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  v10 = [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")] != 0;
  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  [-[ACMSignInDialogSimple_Modern passwordField](self "passwordField")];
  if (![(ACMSignInDialogSimple_Modern *)self userNameFieldEditable])
  {
    [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  }

  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  if ([objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")])
  {
    v13 = *MEMORY[0x29EDC7640];
    v14[0] = [(ACMSignInDialogSimple_Modern *)self darkTextColor];
    [-[ACMSignInDialogSimple_Modern widget](self "widget")];
  }

  if ([objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")])
  {
    whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
  }

  else
  {
    whiteColor = [MEMORY[0x29EDC7A00] blackColor];
  }

  v12 = whiteColor;
  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  [-[ACMSignInDialogSimple_Modern passwordField](self "passwordField")];
  [-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")];
  [-[ACMSignInDialogSimple_Modern passwordField](self "passwordField")];
  -[ACMSignInDialogCustom setSignInButton:](self, "setSignInButton:", [MEMORY[0x29EDC7958] buttonWithType:1]);
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setFrame:0.0, 250.0, 240.0, 40.0];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setTitle:[ACMBaseLocale forState:"localizedString:" localizedString:?], 0];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setTitleColor:[(ACMSignInDialogSimple_Modern *)self darkTextColor] forState:2];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setTitleColor:[(ACMSignInDialogSimple_Modern *)self tintColor] forState:0];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setTintColor:[(ACMSignInDialogSimple_Modern *)self tintColor]];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setContentMode:0];
  [(UILabel *)[(UIButton *)[(ACMSignInDialogCustom *)self signInButton] titleLabel] setTextAlignment:1];
  -[UILabel setFont:](-[UIButton titleLabel](-[ACMSignInDialogCustom signInButton](self, "signInButton"), "titleLabel"), "setFont:", [MEMORY[0x29EDC76B0] fontWithName:@"Helvetica Neue" size:20.0]);
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [(ACMSignInDialogSimple_Modern *)self buildConstraints];
  [(ACMSignInDialogCustom *)self setupCustomView];
}

- (void)buildWidgetContentGroupHorizontalConstraints
{
  v3 = [MEMORY[0x29EDBA008] constraintWithItem:objc_msgSend(-[ACMSignInDialogSimple_Modern widget](self attribute:"widget") relatedBy:"view") toItem:7 attribute:0 multiplier:-[ACMSignInDialogSimple_Modern view](self constant:{"view"), 7, 1.0, 0.0}];
  view = [(ACMSignInDialogSimple_Modern *)self view];

  [view addConstraint:v3];
}

- (void)buildWidgetContentGroupVerticalConstraints
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = _NSDictionaryOfVariableBindings(&cfstr_LogoWidgetButt.isa, -[ACMSignInDialogSimple_Modern logoView](self, "logoView"), [-[ACMSignInDialogSimple_Modern widget](self "widget")], -[ACMSignInDialogCustom signInButton](self, "signInButton"), 0);
  v4 = MEMORY[0x29EDBA008];
  v5 = MEMORY[0x29EDBA0F8];
  [(UIImageView *)[(ACMSignInDialogSimple_Modern *)self logoView] frame];
  v7 = v6;
  [objc_msgSend(-[ACMSignInDialogSimple_Modern widget](self "widget")];
  v9 = v8;
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] frame];
  v11 = [v4 constraintsWithVisualFormat:objc_msgSend(v5 options:"stringWithFormat:" metrics:@"V:[logo(==%d)]-22-[widget(==%d)]-22-[button(==%d)]" views:v7, v9, v10), 0, 0, v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        LODWORD(v13) = 1148846080;
        [*(*(&v21 + 1) + 8 * v16++) setPriority:v13];
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  v17 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACMSignInDialogSimple_Modern container](self attribute:"container") relatedBy:3 toItem:0 attribute:-[ACMSignInDialogSimple_Modern logoView](self multiplier:"logoView") constant:{3, 1.0, 0.0}];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  LODWORD(v18) = 1148846080;
  [v17 setPriority:v18];
  v19 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACMSignInDialogSimple_Modern container](self attribute:"container") relatedBy:4 toItem:0 attribute:-[ACMSignInDialogCustom signInButton](self multiplier:"signInButton") constant:{4, 1.0, 0.0}];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  LODWORD(v20) = 1148846080;
  [v19 setPriority:v20];
}

- (void)buildHorizontalConstraints
{
  [(ACMSignInDialogSimple_Modern *)self buildWidgetContentGroupHorizontalConstraints];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  v3 = [MEMORY[0x29EDBA008] constraintWithItem:-[ACMSignInDialogCustom signInButton](self attribute:"signInButton") relatedBy:9 toItem:0 attribute:-[ACMSignInDialogSimple_Modern view](self multiplier:"view") constant:{9, 1.0, 0.0}];
  view = [(ACMSignInDialogSimple_Modern *)self view];

  [view addConstraint:v3];
}

- (void)buildVerticalConstraints
{
  [(ACMSignInDialogSimple_Modern *)self buildWidgetContentGroupVerticalConstraints];
  v3 = MEMORY[0x29EDBA008];
  container = [(ACMSignInDialogSimple_Modern *)self container];
  view = [(ACMSignInDialogSimple_Modern *)self view];
  [(ACMSignInDialogSimple_Modern *)self widgetConstraintMultiplier];
  v7 = v6;
  [(ACMSignInDialogSimple_Modern *)self widgetConstraintConstant];
  [-[ACMSignInDialogSimple_Modern view](self "view")];
  v9 = MEMORY[0x29EDBA008];
  toolbar = [(ACMSignInDialogSimple_Modern *)self toolbar];
  view2 = [(ACMSignInDialogSimple_Modern *)self view];
  [(UIToolbar *)[(ACMSignInDialogSimple_Modern *)self toolbar] frame];
  v12 = [v9 constraintWithItem:toolbar attribute:3 relatedBy:0 toItem:view2 attribute:3 multiplier:1.0 constant:?];
  view3 = [(ACMSignInDialogSimple_Modern *)self view];

  [view3 addConstraint:v12];
}

- (void)buildConstraints
{
  [(UIToolbar *)[(ACMSignInDialogSimple_Modern *)self toolbar] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)[(ACMSignInDialogSimple_Modern *)self logoView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [objc_msgSend(-[ACMSignInDialogSimple_Modern widget](self "widget")];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)[(ACMSignInDialogSimple_Modern *)self container] setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ACMSignInDialogSimple_Modern *)self buildHorizontalConstraints];

  [(ACMSignInDialogSimple_Modern *)self buildVerticalConstraints];
}

- (id)accountNameField
{
  widget = [(ACMSignInDialogSimple_Modern *)self widget];

  return [widget accountField];
}

- (id)passwordField
{
  widget = [(ACMSignInDialogSimple_Modern *)self widget];

  return [widget passwordField];
}

- (BOOL)canSignIn
{
  v3 = [objc_msgSend(objc_msgSend(-[ACMSignInDialogSimple_Modern widget](self "widget")];
  if (v3)
  {
    LOBYTE(v3) = [objc_msgSend(objc_msgSend(-[ACMSignInDialogSimple_Modern widget](self "widget")] != 0;
  }

  return v3;
}

- (void)checkFields
{
  canSignIn = [(ACMSignInDialogSimple_Modern *)self canSignIn];
  signInButton = [(ACMSignInDialogCustom *)self signInButton];

  [(UIButton *)signInButton setEnabled:canSignIn];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple_Modern;
  [(ACMSignInDialog *)&v5 viewDidAppear:appear];
  if ([objc_msgSend(-[ACMSignInDialogSimple_Modern accountNameField](self "accountNameField")])
  {
    passwordField = [(ACMSignInDialogSimple_Modern *)self passwordField];
  }

  else
  {
    passwordField = [(ACMSignInDialogSimple_Modern *)self accountNameField];
  }

  [passwordField becomeFirstResponder];
  [(ACMSignInDialogSimple_Modern *)self checkFields];
}

- (UIImage)iForgotImage
{
  v2 = ACMImageWithName(@"forgotButton.png");

  return [v2 imageWithRenderingMode:2];
}

- (id)widget
{
  widget = self->super._widget;
  if (!widget)
  {
    v4.receiver = self;
    v4.super_class = ACMSignInDialogSimple_Modern;
    widget = [(ACMSignInDialogCustom *)&v4 widget];
    [(ACMSignInWidgetProtocol *)widget setPosition:0.0, 152.0];
    [(ACMSignInWidgetProtocol *)widget setShouldAuthenticateOnUserInput:1];
    [(ACMSignInWidgetProtocol *)widget setHideTopSeparator:1];
  }

  return widget;
}

- (void)disableControls:(BOOL)controls
{
  controlsCopy = controls;
  v16 = *MEMORY[0x29EDCA608];
  [(ACMSignInDialog *)self controlsWillChangeState:?];
  v14.receiver = self;
  v14.super_class = ACMSignInDialogSimple_Modern;
  [(ACMSignInDialogCustom *)&v14 disableControls:controlsCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  burButtonItems = [(ACMSignInDialogSimple_Modern *)self burButtonItems];
  v6 = [(NSArray *)burButtonItems countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(burButtonItems);
        }

        [*(*(&v10 + 1) + 8 * v9++) setEnabled:controlsCopy ^ 1];
      }

      while (v7 != v9);
      v7 = [(NSArray *)burButtonItems countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(ACMSignInDialog *)self controlsDidChangeState:controlsCopy];
}

@end