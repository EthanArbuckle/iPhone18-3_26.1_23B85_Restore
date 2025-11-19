@interface ACMSignInDialogSimple
- (NSString)passwordString;
- (NSString)userNameString;
- (unint64_t)verticalShift;
- (void)checkFields;
- (void)dealloc;
- (void)disableControls:(BOOL)a3;
- (void)focus;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ACMSignInDialogSimple

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(ACMSignInDialog *)self controlsWillChangeState:1];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v5 viewWillDisappear:v3];
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
  v3 = [(ACMSignInDialog *)self canSignIn];
  v4 = [(ACMSignInDialogSimple *)self loginButton];

  [(UIButton *)v4 setEnabled:v3];
}

- (void)focus
{
  if ([(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length])
  {
    v3 = [(ACMSignInDialog *)self passwordField];
  }

  else
  {
    v3 = [(ACMSignInDialog *)self accountNameField];
  }

  [(UITextField *)v3 becomeFirstResponder];

  [(ACMSignInDialogSimple *)self checkFields];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v4 viewWillAppear:a3];
  [(ACMSignInDialogSimple *)self focus];
}

- (void)disableControls:(BOOL)a3
{
  v3 = a3;
  [(ACMSignInDialog *)self controlsWillChangeState:?];
  v5.receiver = self;
  v5.super_class = ACMSignInDialogSimple;
  [(ACMSignInDialog *)&v5 disableControls:v3];
  [(UIButton *)[(ACMSignInDialogSimple *)self loginButton] setEnabled:v3 ^ 1];
  [(UIButton *)[(ACMSignInDialogSimple *)self cancelButton] setEnabled:v3 ^ 1];
  [(UITextField *)[(ACMSignInDialog *)self accountNameField] setEnabled:v3 ^ 1];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setEnabled:v3 ^ 1];
  if (!v3)
  {
    [(ACMSignInDialogSimple *)self focus];
  }

  [(ACMSignInDialog *)self controlsDidChangeState:v3];
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
  v2 = [(ACMSignInDialog *)self passwordField];

  return [(UITextField *)v2 text];
}

- (NSString)userNameString
{
  v2 = [(ACMSignInDialog *)self accountNameField];

  return [(UITextField *)v2 text];
}

@end