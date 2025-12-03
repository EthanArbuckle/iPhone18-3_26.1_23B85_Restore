@interface ACMSignInDialog
- (BOOL)canSignIn;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (NSString)passwordString;
- (NSString)userNameString;
- (void)controlsDidChangeState:(BOOL)state;
- (void)controlsWillChangeState:(BOOL)state;
- (void)dealloc;
- (void)onIForgot:(id)forgot;
- (void)onSignIn:(id)in;
- (void)onSignInCancel:(id)cancel;
- (void)setPasswordString:(id)string;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ACMSignInDialog

- (void)dealloc
{
  [(UITextField *)self->_accountNameField setDelegate:0];
  [(UITextField *)self->_passwordField setDelegate:0];

  self->_accountNameField = 0;
  self->_passwordField = 0;
  v3.receiver = self;
  v3.super_class = ACMSignInDialog;
  [(ACMDialog *)&v3 dealloc];
}

- (NSString)passwordString
{
  passwordField = [(ACMSignInDialog *)self passwordField];

  return [(UITextField *)passwordField text];
}

- (void)setPasswordString:(id)string
{
  passwordField = [(ACMSignInDialog *)self passwordField];

  [(UITextField *)passwordField setText:string];
}

- (NSString)userNameString
{
  accountNameField = [(ACMSignInDialog *)self accountNameField];

  return [(UITextField *)accountNameField text];
}

- (BOOL)canSignIn
{
  v3 = [(NSString *)[(UITextField *)[(ACMSignInDialog *)self passwordField] text] length];
  if (v3)
  {
    if ([(ACMSignInDialog *)self accountNameField])
    {
      LOBYTE(v3) = [(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length]!= 0;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)controlsWillChangeState:(BOOL)state
{
  stateCopy = state;
  if (![(ACMSignInDialog *)self stateChangeCounter])
  {
    v5 = stateCopy ? 4 : 3;
    if ([(ACMSignInDialog *)self signInDialogState]!= v5 && ([(ACMSignInDialog *)self signInDialogState]!= 2 || !stateCopy) && ([(ACMSignInDialog *)self signInDialogState]!= 1 || stateCopy))
    {
      v6 = &selRef_signInDialogWillBecomeDisabled;
      if (!stateCopy)
      {
        v6 = &selRef_signInDialogWillBecomeEnabled;
      }

      [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] performSelector:*v6];
      [(ACMSignInDialog *)self setSignInDialogState:v5];
    }
  }

  v7 = [(ACMSignInDialog *)self stateChangeCounter]+ 1;

  [(ACMSignInDialog *)self setStateChangeCounter:v7];
}

- (void)controlsDidChangeState:(BOOL)state
{
  stateCopy = state;
  [(ACMSignInDialog *)self setStateChangeCounter:[(ACMSignInDialog *)self stateChangeCounter]- 1];
  if (![(ACMSignInDialog *)self stateChangeCounter])
  {
    v5 = stateCopy ? 2 : 1;
    if ([(ACMSignInDialog *)self signInDialogState]!= v5)
    {
      v6 = &selRef_signInDialogDidBecomeDisabled;
      if (!stateCopy)
      {
        v6 = &selRef_signInDialogDidBecomeEnabled;
      }

      [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] performSelector:*v6];

      [(ACMSignInDialog *)self setSignInDialogState:v5];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(ACMSignInDialog *)self controlsWillChangeState:0];
  v5.receiver = self;
  v5.super_class = ACMSignInDialog;
  [(ACMDialog *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ACMSignInDialog;
  [(ACMDialog *)&v4 viewDidAppear:appear];
  [(ACMSignInDialog *)self controlsDidChangeState:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(ACMSignInDialog *)self controlsWillChangeState:1];
  v5.receiver = self;
  v5.super_class = ACMSignInDialog;
  [(ACMDialog *)&v5 viewWillDisappear:disappearCopy];
  [(ACMSignInDialog *)self controlsDidChangeState:1];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if ([(ACMSignInDialog *)self accountNameField]== return)
  {
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] resignFirstResponder];
    [(UITextField *)[(ACMSignInDialog *)self passwordField] becomeFirstResponder];
  }

  shouldAuthenticateOnUserInput = [(ACMSignInDialog *)self shouldAuthenticateOnUserInput];
  passwordField = [(ACMSignInDialog *)self passwordField];
  passwordField2 = [(ACMSignInDialog *)self passwordField];
  if (passwordField != return || shouldAuthenticateOnUserInput)
  {
    if (passwordField2 == return && [(ACMSignInDialog *)self canSignIn])
    {
      [(UITextField *)[(ACMSignInDialog *)self passwordField] resignFirstResponder];
      [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] onSignIn:[(ACMSignInDialog *)self passwordField]];
    }
  }

  else
  {
    [(UITextField *)passwordField2 resignFirstResponder];
  }

  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  if ([(ACMSignInDialog *)self passwordField:field]== field)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  if ([(ACMSignInDialog *)self accountNameField]== field)
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

- (void)onIForgot:(id)forgot
{
  if ([(ACMSignInDialog *)self delegate])
  {
    delegate = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)delegate onSignIn:forgot];
  }
}

- (void)onSignIn:(id)in
{
  if ([(ACMSignInDialog *)self delegate])
  {
    delegate = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)delegate onSignIn:in];
  }
}

- (void)onSignInCancel:(id)cancel
{
  if ([(ACMSignInDialog *)self delegate])
  {
    delegate = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)delegate onSignInCancel:cancel];
  }
}

@end