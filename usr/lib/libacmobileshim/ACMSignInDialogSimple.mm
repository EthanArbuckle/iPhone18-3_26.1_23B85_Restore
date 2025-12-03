@interface ACMSignInDialogSimple
- (NSString)passwordString;
- (NSString)userNameString;
- (unint64_t)verticalShift;
- (void)checkFields;
- (void)dealloc;
- (void)disableControls:(BOOL)controls;
- (void)focus;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ACMSignInDialogSimple

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(ACMSignInDialog *)self controlsWillChangeState:1];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v5 viewWillDisappear:disappearCopy];
  [(ACMSignInDialog *)self controlsDidChangeState:1];
}

- (void)dealloc
{
  [(UIButton *)self->_cancelButton removeTarget:0 action:0 forControlEvents:64];
  [(UIButton *)self->_loginButton removeTarget:0 action:0 forControlEvents:64];

  self->_cancelButton = 0;
  self->_loginButton = 0;

  self->_licenseTextField = 0;
  [(ACMSignInDialogSimple *)self setLogo:0];
  [(ACMSignInDialogSimple *)self setBackgroundColor:0];
  [(ACMSignInDialogSimple *)self setAccountNameFieldPlaceholder:0];
  v3.receiver = self;
  v3.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  v4 = [v3 initWithFrame:?];

  [(ACMSignInDialogSimple *)self setView:v4];
}

- (void)checkFields
{
  canSignIn = [(ACMSignInDialog *)self canSignIn];
  loginButton = [(ACMSignInDialogSimple *)self loginButton];

  [(UIButton *)loginButton setEnabled:canSignIn];
}

- (void)focus
{
  if ([(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length])
  {
    passwordField = [(ACMSignInDialog *)self passwordField];
  }

  else
  {
    passwordField = [(ACMSignInDialog *)self accountNameField];
  }

  [(UITextField *)passwordField becomeFirstResponder];

  [(ACMSignInDialogSimple *)self checkFields];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v4 viewWillAppear:appear];
  [(ACMSignInDialogSimple *)self focus];
}

- (void)disableControls:(BOOL)controls
{
  controlsCopy = controls;
  [(ACMSignInDialog *)self controlsWillChangeState:?];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v5 disableControls:controlsCopy];
  [(UIButton *)[(ACMSignInDialogSimple *)self loginButton] setEnabled:controlsCopy ^ 1];
  [(UIButton *)[(ACMSignInDialogSimple *)self cancelButton] setEnabled:controlsCopy ^ 1];
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setEnabled:controlsCopy ^ 1];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setEnabled:controlsCopy ^ 1];
  if (!controlsCopy)
  {
    [(ACMSignInDialogSimple *)self focus];
  }

  [(ACMSignInDialog *)self controlsDidChangeState:controlsCopy];
}

- (unint64_t)verticalShift
{
  if (![(ACMSignInDialogSimple *)self logo])
  {
    return 10;
  }

  [(UIImage *)[(ACMSignInDialogSimple *)self logo] size];
  return (v3 + 10.0);
}

- (NSString)passwordString
{
  passwordField = [(ACMSignInDialog *)self passwordField];

  return [(UITextField *)passwordField text];
}

- (NSString)userNameString
{
  accountNameField = [(ACMSignInDialog *)self accountNameField];

  return [(UITextField *)accountNameField text];
}

@end