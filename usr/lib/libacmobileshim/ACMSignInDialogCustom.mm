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
- (void)disableControls:(BOOL)a3;
- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)loadView;
- (void)onIForgot:(id)a3;
- (void)onSignIn:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCancelBarButton:(id)a3;
- (void)setCancelButton:(id)a3;
- (void)setRequestedUserName:(id)a3;
- (void)setShouldAuthenticateOnUserInput:(BOOL)a3;
- (void)setSignInBarButton:(id)a3;
- (void)setSignInButton:(id)a3;
- (void)setWidgetAccountLabel:(id)a3;
- (void)setWidgetPasswordReturnKeyType:(int64_t)a3;
- (void)setWidgetPosition:(CGPoint)a3;
- (void)setupCustomView;
- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
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
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC8250] object:0];

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
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  v4 = *MEMORY[0x29EDC8250];
  [v3 addObserver:self selector:sel_checkFields name:*MEMORY[0x29EDC8250] object:{-[ACMSignInDialog passwordField](self, "passwordField")}];
  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  v6 = [(ACMSignInDialog *)self accountNameField];

  [v5 addObserver:self selector:sel_checkFields name:v4 object:v6];
}

- (void)loadView
{
  [(ACMSignInDialogCustom *)self setView:[(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] view]];

  [(ACMSignInDialogCustom *)self setupCustomView];
}

- (void)setRequestedUserName:(id)a3
{
  v5.receiver = self;
  v5.super_class = ACMSignInDialogCustom;
  [(ACMSignInDialog *)&v5 setRequestedUserName:?];
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:a3];
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
  v3 = [(ACMSignInDialogCustom *)self canSignIn];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setEnabled:v3];
  v4 = [(ACMSignInDialogCustom *)self signInBarButton];

  [(UIBarButtonItem *)v4 setEnabled:v3];
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

- (void)disableControls:(BOOL)a3
{
  v3 = a3;
  [(ACMSignInDialog *)self controlsWillChangeState:?];
  [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] disableControls:v3];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogCustom;
  [(ACMSignInDialog *)&v5 disableControls:v3];
  [(UIBarButtonItem *)[(ACMSignInDialogCustom *)self signInBarButton] setEnabled:v3 ^ 1];
  [(UIBarButtonItem *)[(ACMSignInDialogCustom *)self cancelBarButton] setEnabled:v3 ^ 1];
  [(UIButton *)[(ACMSignInDialogCustom *)self signInButton] setEnabled:v3 ^ 1];
  [(UIButton *)[(ACMSignInDialogCustom *)self cancelButton] setEnabled:v3 ^ 1];
  if (!v3)
  {
    [(ACMSignInDialogCustom *)self checkFields];
  }

  [(ACMSignInDialog *)self controlsDidChangeState:v3];
}

- (void)setSignInButton:(id)a3
{
  signInButton = self->_signInButton;
  if (signInButton != a3)
  {
    [(UIButton *)signInButton removeTarget:0 action:0 forControlEvents:64];

    v6 = a3;
    self->_signInButton = v6;
    [(UIButton *)v6 addTarget:self action:sel_onSignIn_ forControlEvents:64];
    [(UIButton *)self->_signInButton setExclusiveTouch:1];

    [(ACMSignInDialogCustom *)self checkFields];
  }
}

- (void)setCancelButton:(id)a3
{
  cancelButton = self->_cancelButton;
  if (cancelButton != a3)
  {
    [(UIButton *)cancelButton removeTarget:0 action:0 forControlEvents:64];

    v6 = a3;
    self->_cancelButton = v6;
    [(UIButton *)v6 addTarget:self action:sel_onSignInCancel_ forControlEvents:64];
    v7 = self->_cancelButton;

    [(UIButton *)v7 setExclusiveTouch:1];
  }
}

- (void)setSignInBarButton:(id)a3
{
  signInBarButton = self->_signInBarButton;
  if (signInBarButton != a3)
  {
    [(UIBarButtonItem *)signInBarButton setTarget:0];
    [(UIBarButtonItem *)self->_signInBarButton setAction:0];

    v6 = a3;
    self->_signInBarButton = v6;
    [(UIBarButtonItem *)v6 setTarget:self];
    [(UIBarButtonItem *)self->_signInBarButton setAction:sel_onSignIn_];

    [(ACMSignInDialogCustom *)self checkFields];
  }
}

- (void)setCancelBarButton:(id)a3
{
  cancelBarButton = self->_cancelBarButton;
  if (cancelBarButton != a3)
  {
    [(UIBarButtonItem *)cancelBarButton setTarget:0];
    [(UIBarButtonItem *)self->_cancelBarButton setAction:0];

    v6 = a3;
    self->_cancelBarButton = v6;
    [(UIBarButtonItem *)v6 setTarget:self];
    v7 = self->_cancelBarButton;

    [(UIBarButtonItem *)v7 setAction:sel_onSignInCancel_];
  }
}

- (UIColor)backgroundColor
{
  v2 = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)v2 backgroundColor];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)v4 setBackgroundColor:a3];
}

- (void)setShouldAuthenticateOnUserInput:(BOOL)a3
{
  v3 = a3;
  v4 = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)v4 setShouldAuthenticateOnUserInput:v3];
}

- (BOOL)shouldAuthenticateOnUserInput
{
  v2 = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)v2 shouldAuthenticateOnUserInput];
}

- (CGPoint)widgetPosition
{
  v2 = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)v2 position];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setWidgetPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)v5 setPosition:x, y];
}

- (NSString)widgetAccountLabel
{
  v2 = [(ACMSignInDialogCustom *)self widget];

  return [(ACMSignInWidgetProtocol *)v2 accountLabelText];
}

- (void)setWidgetAccountLabel:(id)a3
{
  v4 = [(ACMSignInDialogCustom *)self widget];

  [(ACMSignInWidgetProtocol *)v4 setAccountLabelText:a3];
}

- (int64_t)widgetPasswordReturnKeyType
{
  v2 = [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] passwordField];

  return [v2 returnKeyType];
}

- (void)setWidgetPasswordReturnKeyType:(int64_t)a3
{
  v4 = [(ACMSignInWidgetProtocol *)[(ACMSignInDialogCustom *)self widget] passwordField];

  [v4 setReturnKeyType:a3];
}

- (void)showWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  if ([(ACMSignInDialogCustom *)self standardViewController])
  {
    v10.receiver = self;
    v10.super_class = ACMSignInDialogCustom;
    [(ACMDialog *)&v10 showWithParentViewController:a3 animated:v6 completion:a5];
  }

  else
  {
    [objc_msgSend(a3 "view")];
    [-[ACMSignInDialogCustom view](self "view")];
    if (a5)
    {
      v9 = *(a5 + 2);

      v9(a5);
    }
  }
}

- (void)hideWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  if ([(ACMSignInDialogCustom *)self standardViewController])
  {
    v10.receiver = self;
    v10.super_class = ACMSignInDialogCustom;
    [(ACMDialog *)&v10 hideWithParentViewController:a3 animated:v6 completion:a5];
  }

  else if ([-[ACMSignInDialogCustom view](self "view")])
  {
    [-[ACMSignInDialogCustom view](self "view")];
    if (a5)
    {
      v9 = *(a5 + 2);

      v9(a5);
    }
  }
}

- (void)onSignIn:(id)a3
{
  if ([(ACMSignInDialogCustom *)self canSignIn])
  {
    v5 = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)v5 onSignIn:a3];
  }
}

- (void)onIForgot:(id)a3
{
  v4 = [(ACMSignInDialog *)self delegate];

  [(ACMSignInDialogDelegate *)v4 onIForgot:a3];
}

@end