@interface ACMiTunesSignInDialog_Modern
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)didPresentAlertView:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation ACMiTunesSignInDialog_Modern

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = ACMiTunesSignInDialog_Modern;
  [(ACMiTunesSignInDialog *)&v8 loadView];
  v3 = [(ACMiTunesSignInDialog *)self dialogTitle];
  v4 = objc_alloc(MEMORY[0x29EDC7930]);
  if ([(ACMiTunesSignInDialog *)self isUserNameEditable]|| ![(NSString *)[(ACMSignInDialog *)self requestedUserName] length])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ACMSignInDialog *)self requestedUserName];
  }

  v6 = [v4 initWithTitle:v3 message:v5 delegate:self cancelButtonTitle:+[ACMBaseLocale localizedString:](ACMBaseLocale otherButtonTitles:{"localizedString:", @"Cancel", +[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Sign In", 0}];
  if ([(ACMiTunesSignInDialog *)self isUserNameEditable])
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  [v6 setAlertViewStyle:v7];
  [(ACMiTunesSignInDialog_Modern *)self setView:v6];
}

- (void)viewDidLoad
{
  v3 = [(ACMiTunesSignInDialog_Modern *)self view];
  -[ACMSignInDialog setPasswordField:](self, "setPasswordField:", [v3 textFieldAtIndex:{objc_msgSend(v3, "alertViewStyle") != 1}]);
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setDelegate:self];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setPlaceholder:[ACMBaseLocale localizedString:@"Password"]];
  if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
  {
    [(UITextField *)[(ACMSignInDialog *)self passwordField] setPlaceholder:[(NSString *)[(UITextField *)[(ACMSignInDialog *)self passwordField] placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
  }

  [(UITextField *)[(ACMSignInDialog *)self passwordField] setClearButtonMode:1];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setReturnKeyType:1];
  [(UITextField *)[(ACMSignInDialog *)self passwordField] setKeyboardAppearance:0];
  if ([v3 alertViewStyle] == 3)
  {
    -[ACMSignInDialog setAccountNameField:](self, "setAccountNameField:", [v3 textFieldAtIndex:0]);
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setPlaceholder:[ACMBaseLocale localizedString:@"Apple ID"]];
    if ([objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")])
    {
      [(UITextField *)[(ACMSignInDialog *)self accountNameField] setPlaceholder:[(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] placeholder] stringByAppendingString:@" (PRE-RELEASE)"]];
    }

    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setDelegate:self];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setClearButtonMode:1];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setKeyboardAppearance:0];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setKeyboardType:7];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setReturnKeyType:4];
    [(UITextField *)[(ACMSignInDialog *)self accountNameField] setText:[(ACMSignInDialog *)self requestedUserName]];
  }

  v4.receiver = self;
  v4.super_class = ACMiTunesSignInDialog_Modern;
  [(ACMiTunesSignInDialog *)&v4 viewDidLoad];
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
    [(UIAlertView *)[(ACMiTunesSignInDialog *)self signInDialog] dismissWithClickedButtonIndex:1 animated:1];
    return 1;
  }

  return [(ACMiTunesSignInDialog_Modern *)self shouldPasswordTextFieldReturnOnSignInDisallowed];
}

- (void)alertView:(id)a3 clickedButtonAtIndex:(int64_t)a4
{
  v7 = [(ACMiTunesSignInDialog *)self signInDialog];
  if (!a4 && v7 == a3)
  {
    [(ACMSignInDialog *)self controlsWillChangeState:1];
    [(ACMSignInDialog *)self controlsDidChangeState:1];
    v8 = [(ACMSignInDialog *)self delegate];

    [(ACMSignInDialogDelegate *)v8 onSignInCancel:a3];
  }
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  v7 = [(ACMiTunesSignInDialog *)self signInDialog];
  if (a4 == 1 && v7 == a3)
  {
    if ([(ACMiTunesSignInDialog *)self isUserNameEditable])
    {
      [(ACMSignInDialog *)self setRequestedUserName:[(UITextField *)[(ACMSignInDialog *)self accountNameField] text]];
    }

    [(ACMSignInDialogDelegate *)[(ACMSignInDialog *)self delegate] onSignIn:a3];
  }

  [(ACMiTunesSignInDialog_Modern *)self setView:0];

  [(ACMiTunesSignInDialog_Modern *)self setIsPresented:0];
}

- (void)didPresentAlertView:(id)a3
{
  if ([(ACMiTunesSignInDialog *)self signInDialog]== a3 && ![(ACMiTunesSignInDialog_Modern *)self isPresented])
  {
    [(ACMiTunesSignInDialog_Modern *)self setIsPresented:1];
    v4 = [(ACMSignInDialog *)self passwordField];
    if ([(ACMSignInDialog *)self accountNameField]&& ![(NSString *)[(UITextField *)[(ACMSignInDialog *)self accountNameField] text] length])
    {
      v4 = [(ACMSignInDialog *)self accountNameField];
    }

    if (v4 == [(ACMSignInDialog *)self passwordField])
    {
      v5[0] = MEMORY[0x29EDCA5F8];
      v5[1] = 3221225472;
      v5[2] = __52__ACMiTunesSignInDialog_Modern_didPresentAlertView___block_invoke;
      v5[3] = &unk_29EE91778;
      v5[4] = v4;
      dispatch_async_on_main_thread(v5);
    }
  }
}

@end