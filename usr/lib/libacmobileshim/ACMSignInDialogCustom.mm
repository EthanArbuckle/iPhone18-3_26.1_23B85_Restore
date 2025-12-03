@interface ACMSignInDialogCustom
- (ACMSignInWidgetProtocol)widget;
- (BOOL)canSignIn;
- (BOOL)shouldAuthenticateOnUserInput;
- (CGPoint)widgetPosition;
- (NSString)widgetAccountLabel;
- (UIColor)backgroundColor;
- (int64_t)widgetPasswordReturnKeyType;
- (void)checkFields;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)hideWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)onIForgot:(id)forgot;
- (void)onSignIn:(id)in;
- (void)setBackgroundColor:(id)color;
- (void)setCancelBarButton:(id)button;
- (void)setCancelButton:(id)button;
- (void)setRequestedUserName:(id)name;
- (void)setShouldAuthenticateOnUserInput:(BOOL)input;
- (void)setSignInBarButton:(id)button;
- (void)setSignInButton:(id)button;
- (void)setWidgetAccountLabel:(id)label;
- (void)setWidgetPasswordReturnKeyType:(int64_t)type;
- (void)setWidgetPosition:(CGPoint)position;
- (void)setupCustomView;
- (void)showWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation ACMSignInDialogCustom

- (void)dealloc
{
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setEnabled:1];
  [(UIButton *)[(ACMSignInDialogCustom *)self cancelButton] setEnabled:1];
  [(ACMSignInDialogCustom *)self setSignInButton:0];
  [(ACMSignInDialogCustom *)self setSignInBarButton:0];
  [(ACMSignInDialogCustom *)self setCancelButton:0];
  [(ACMSignInDialogCustom *)self setCancelBarButton:0];
  [(ACMSignInDialogCustom *)self setView:0];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC8250] object:0];

  self->_widget = 0;
  v4.receiver = self;
  v4.super_class = ACMSignInDialogCustom;
  [(ACMSignInDialog *)&v4 dealloc];
}

- (void)setupCustomView
{
  [(ACMSignInDialog *)self setAccountNameField:[(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] accountField]];
  if ([(NSString *)[(ACMSignInDialog *)self requestedUserName] length])
  {
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:[(ACMSignInDialog *)self requestedUserName]];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setUserInteractionEnabled:[(ACMSignInDialogCustom *)self userNameFieldEditable]];
  }

  [(ACMSignInDialog *)self setPasswordField:[(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] passwordField]];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC8250];
  [defaultCenter addObserver:self selector:sel_checkFields name:*MEMORY[0x29EDC8250] object:{-[ACMSignInDialog passwordField](self, "passwordField")}];
  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  accountNameField = [(ACMSignInDialog *)self accountNameField];

  [defaultCenter2 addObserver:self selector:sel_checkFields name:v4 object:accountNameField];
}

- (void)loadView
{
  [(ACMSignInDialogCustom *)self setView:[(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] view]];

  [(ACMSignInDialogCustom *)self setupCustomView];
}

- (void)setRequestedUserName:(id)name
{
  v5.receiver = self;
  v5.super_class = ACMSignInDialogCustom;
  [(ACMSignInDialog *)&v5 setRequestedUserName:?];
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:name];
}

- (ACMSignInWidgetProtocol)widget
{
  widget = self->_widget;
  if (!widget)
  {
    [(ACMSignInDialogCustom *)self widgetClass];
    widget = objc_opt_new();
    self->_widget = widget;
    [(ACMSignInWidgetProtocol *)widget setShouldAuthenticateOnUserInput:1];
    [(ACMSignInWidgetProtocol *)widget setDelegate:self];
  }

  return widget;
}

- (void)checkFields
{
  canSignIn = [(ACMSignInDialogCustom *)self canSignIn];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setEnabled:canSignIn];
  signInBarButton = [(ACMSignInDialogCustom *)self signInBarButton];

  [(UIBarButtonItem *)signInBarButton setEnabled:canSignIn];
}

- (BOOL)canSignIn
{
  v3 = [objc_msgSend(-[ACMSignInWidgetProtocol passwordField](-[ACMSignInDialogCustom widget](self "widget")];
  if (v3)
  {
    LOBYTE(v3) = [objc_msgSend(-[ACMSignInWidgetProtocol accountField](-[ACMSignInDialogCustom widget](self "widget")] != 0;
  }

  return v3;
}

- (void)disableControls:(BOOL)controls
{
  controlsCopy = controls;
  [(ACMSignInDialog *)self controlsWillChangeState:?];
  [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] disableControls:controlsCopy];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogCustom;
  [(ACMSignInDialog *)&v5 disableControls:controlsCopy];
  [(UIBarButtonItem *)[(ACMSignInDialogCustom *)self signInBarButton] setEnabled:controlsCopy ^ 1];
  [(UIBarButtonItem *)[(ACMSignInDialogCustom *)self cancelBarButton] setEnabled:controlsCopy ^ 1];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setEnabled:controlsCopy ^ 1];
  [(UIButton *)[(ACMSignInDialogCustom *)self cancelButton] setEnabled:controlsCopy ^ 1];
  if (!controlsCopy)
  {
    [(ACMSignInDialogCustom *)self checkFields];
  }

  [(ACMSignInDialog *)self controlsDidChangeState:controlsCopy];
}

- (void)setSignInButton:(id)button
{
  signInButton = self->_signInButton;
  if (signInButton != button)
  {
    [(UIButton *)signInButton removeTarget:0 action:0 forControlEvents:64];

    buttonCopy = button;
    self->_signInButton = buttonCopy;
    [(UIButton *)buttonCopy addTarget:self action:sel_onSignIn_ forControlEvents:64];
    [(UIButton *)self->_signInButton setExclusiveTouch:1];

    [(ACMSignInDialogCustom *)self checkFields];
  }
}

- (void)setCancelButton:(id)button
{
  cancelButton = self->_cancelButton;
  if (cancelButton != button)
  {
    [(UIButton *)cancelButton removeTarget:0 action:0 forControlEvents:64];

    buttonCopy = button;
    self->_cancelButton = buttonCopy;
    [(UIButton *)buttonCopy addTarget:self action:sel_onSignInCancel_ forControlEvents:64];
    v7 = self->_cancelButton;

    [(UIButton *)v7 setExclusiveTouch:1];
  }
}

- (void)setSignInBarButton:(id)button
{
  signInBarButton = self->_signInBarButton;
  if (signInBarButton != button)
  {
    [(UIBarButtonItem *)signInBarButton setTarget:0];
    [(UIBarButtonItem *)self->_signInBarButton setAction:0];

    buttonCopy = button;
    self->_signInBarButton = buttonCopy;
    [(UIBarButtonItem *)buttonCopy setTarget:self];
    [(UIBarButtonItem *)self->_signInBarButton setAction:sel_onSignIn_];

    [(ACMSignInDialogCustom *)self checkFields];
  }
}

- (void)setCancelBarButton:(id)button
{
  cancelBarButton = self->_cancelBarButton;
  if (cancelBarButton != button)
  {
    [(UIBarButtonItem *)cancelBarButton setTarget:0];
    [(UIBarButtonItem *)self->_cancelBarButton setAction:0];

    buttonCopy = button;
    self->_cancelBarButton = buttonCopy;
    [(UIBarButtonItem *)buttonCopy setTarget:self];
    v7 = self->_cancelBarButton;

    [(UIBarButtonItem *)v7 setAction:sel_onSignInCancel_];
  }
}

- (UIColor)backgroundColor
{
  widget = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)widget backgroundColor];
}

- (void)setBackgroundColor:(id)color
{
  widget = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)widget setBackgroundColor:color];
}

- (void)setShouldAuthenticateOnUserInput:(BOOL)input
{
  inputCopy = input;
  widget = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)widget setShouldAuthenticateOnUserInput:inputCopy];
}

- (BOOL)shouldAuthenticateOnUserInput
{
  widget = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)widget shouldAuthenticateOnUserInput];
}

- (CGPoint)widgetPosition
{
  widget = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)widget position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setWidgetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  widget = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)widget setPosition:x, y];
}

- (NSString)widgetAccountLabel
{
  widget = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)widget accountLabelText];
}

- (void)setWidgetAccountLabel:(id)label
{
  widget = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)widget setAccountLabelText:label];
}

- (int64_t)widgetPasswordReturnKeyType
{
  passwordField = [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] passwordField];

  return [passwordField returnKeyType];
}

- (void)setWidgetPasswordReturnKeyType:(int64_t)type
{
  passwordField = [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] passwordField];

  [passwordField setReturnKeyType:type];
}

- (void)showWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if ([(ACMSignInDialogCustom *)self standardViewController])
  {
    v10.receiver = self;
    v10.super_class = ACMSignInDialogCustom;
    [(ACMDialog *)&v10 showWithParentViewController:controller animated:animatedCopy completion:completion];
  }

  else
  {
    [objc_msgSend(controller "view")];
    [-[ACMSignInDialogCustom view](self "view")];
    if (completion)
    {
      v9 = *(completion + 2);

      v9(completion);
    }
  }
}

- (void)hideWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if ([(ACMSignInDialogCustom *)self standardViewController])
  {
    v10.receiver = self;
    v10.super_class = ACMSignInDialogCustom;
    [(ACMDialog *)&v10 hideWithParentViewController:controller animated:animatedCopy completion:completion];
  }

  else if ([-[ACMSignInDialogCustom view](self "view")])
  {
    [-[ACMSignInDialogCustom view](self "view")];
    if (completion)
    {
      v9 = *(completion + 2);

      v9(completion);
    }
  }
}

- (void)onSignIn:(id)in
{
  if ([(ACMSignInDialogCustom *)self canSignIn])
  {
    delegate = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)delegate onSignIn:in];
  }
}

- (void)onIForgot:(id)forgot
{
  delegate = [(ACMSignInDialog *)self delegate];

  [(ACMSignInDialogDelegate *)delegate onIForgot:forgot];
}

@end