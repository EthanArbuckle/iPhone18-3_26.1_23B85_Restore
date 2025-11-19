@interface ACMEUIController
- (ACMEUIController)init;
- (ACMSignInDialogProtocol)signInDialog;
- (CGPoint)widgetPosition;
- (NSString)password;
- (UIView)managerApprovalDialogSummaryView;
- (id)createAlertDialog;
- (id)createCustomWidget;
- (id)createStandardWidget;
- (unint64_t)signInDialogContentStyle;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)cancelSignInWidget;
- (void)dealloc;
- (void)hideSignInWidgetWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)onIForgot:(id)a3;
- (void)onManageAppleID:(id)a3;
- (void)onSignIn:(id)a3;
- (void)onSignInCancel:(id)a3;
- (void)setPassword:(id)a3;
- (void)setWidgetEnabled:(BOOL)a3;
- (void)showAlertWithAlertMessage:(id)a3 buttonTitle:(id)a4 cancelButtonTitle:(id)a5 errorTag:(int64_t)a6;
- (void)showSignInWidgetWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)signInDialogDidBecomeDisabled;
- (void)signInDialogDidBecomeEnabled;
- (void)signInDialogWillBecomeDisabled;
- (void)signInDialogWillBecomeEnabled;
@end

@implementation ACMEUIController

- (ACMEUIController)init
{
  v4.receiver = self;
  v4.super_class = ACMEUIController;
  v2 = [(ACMEUIController *)&v4 init];
  if (v2)
  {
    [(ACMEUIController *)v2 setShownAlerts:objc_opt_new()];
  }

  return v2;
}

- (void)dealloc
{
  [(ACMSignInDialogProtocol *)[(ACMEUIController *)self signInDialog] setDelegate:0];
  [(ACMEUIController *)self setSignInDialog:0];
  [(ACMEUIController *)self setShownAlerts:0];
  [(ACMEUIController *)self setRequest:0];
  [(ACMEUIController *)self setLogoImage:0];
  [(ACMEUIController *)self setBackgroundColor:0];
  [(ACMEUIController *)self setAccountNameFieldPlaceholder:0];
  [(ACMEUIController *)self setWidgetAccountLabel:0];
  [(ACMEUIController *)self setSignInButton:0];
  [(ACMEUIController *)self setCancelButton:0];
  v3.receiver = self;
  v3.super_class = ACMEUIController;
  [(ACMEUIController *)&v3 dealloc];
}

- (void)setWidgetEnabled:(BOOL)a3
{
  v3 = a3;
  self->_widgetEnabled = a3;
  v4 = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)v4 disableControls:!v3];
}

- (NSString)password
{
  v2 = [(ACMEUIController *)self signInDialog];

  return [(ACMSignInDialogProtocol *)v2 passwordString];
}

- (void)setPassword:(id)a3
{
  v4 = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)v4 setPasswordString:a3];
}

- (id)createAlertDialog
{
  v3 = [(ACMEUIController *)self request];
  [(ACMEUIController *)self iTunesSignInClass];
  v4 = objc_opt_new();
  [v4 setDelegate:self];
  [v4 setIsUserNameEditable:{objc_msgSend(-[ACMBaseAuthenticationRequest userName](v3, "userName"), "length") == 0}];
  [v4 setAlertViewPrompt:{-[ACMBaseAuthenticationRequest alertViewPrompt](v3, "alertViewPrompt")}];
  return v4;
}

- (id)createStandardWidget
{
  [(ACMEUIController *)self standardSignInClass];
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [v3 setLogo:{-[ACMEUIController logoImage](self, "logoImage")}];
  [v3 setBackgroundColor:{-[ACMEUIController backgroundColor](self, "backgroundColor")}];
  [v3 setAccountNameFieldPlaceholder:{-[ACMEUIController accountNameFieldPlaceholder](self, "accountNameFieldPlaceholder")}];
  return v3;
}

- (id)createCustomWidget
{
  [(ACMEUIController *)self customSignInClass];
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  if (![v3 widgetClass])
  {
    [v3 setWidgetClass:{-[ACMEUIController signInWidgetClass](self, "signInWidgetClass")}];
  }

  [(ACMEUIController *)self widgetPosition];
  [v3 setWidgetPosition:?];
  [v3 setWidgetPasswordReturnKeyType:{-[ACMEUIController widgetPasswordReturnKeyType](self, "widgetPasswordReturnKeyType")}];
  if ([(NSString *)[(ACMEUIController *)self widgetAccountLabel] length])
  {
    [v3 setWidgetAccountLabel:{-[ACMEUIController widgetAccountLabel](self, "widgetAccountLabel")}];
  }

  v4 = [(ACMEUIController *)self signInButton];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setSignInBarButton:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setSignInButton:v5];
      }
    }

    [v3 setShouldAuthenticateOnUserInput:{-[ACMEUIController shouldAuthenticateOnUserInput](self, "shouldAuthenticateOnUserInput")}];
  }

  v6 = [(ACMEUIController *)self cancelButton];
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setCancelBarButton:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setCancelButton:v7];
      }
    }
  }

  [v3 setUserNameFieldEditable:{-[ACMBaseAuthenticationRequest userNameFieldEditable](-[ACMEUIController request](self, "request"), "userNameFieldEditable")}];
  [v3 setBackgroundColor:{-[ACMEUIController backgroundColor](self, "backgroundColor")}];
  return v3;
}

- (ACMSignInDialogProtocol)signInDialog
{
  result = self->_signInDialog;
  if (!result)
  {
    if ([(ACMEUIController *)self useAlertView])
    {
      v4 = [(ACMEUIController *)self createAlertDialog];
    }

    else if ([(ACMEUIController *)self useCustomWidget])
    {
      v4 = [(ACMEUIController *)self createCustomWidget];
    }

    else
    {
      v4 = [(ACMEUIController *)self createStandardWidget];
    }

    self->_signInDialog = v4;
    [(ACMSignInDialogProtocol *)self->_signInDialog setRequestedUserName:[(ACMBaseAuthenticationRequest *)[(ACMEUIController *)self request] userName]];
    return self->_signInDialog;
  }

  return result;
}

- (void)showSignInWidgetWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)v8 showWithParentViewController:a3 animated:v6 completion:a5];
}

- (void)hideSignInWidgetWithParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)v8 hideWithParentViewController:a3 animated:v6 completion:a5];
}

- (void)cancelSignInWidget
{
  while ([(NSMutableSet *)[(ACMEUIController *)self shownAlerts] count])
  {
    v3 = [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] anyObject];
    [v3 dismissWithClickedButtonIndex:objc_msgSend(v3 animated:{"tag") == -100102, 0}];
    [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] removeObject:v3];
  }

  v4 = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)v4 cancel];
}

- (void)showAlertWithAlertMessage:(id)a3 buttonTitle:(id)a4 cancelButtonTitle:(id)a5 errorTag:(int64_t)a6
{
  v8 = [objc_alloc(MEMORY[0x29EDC7930]) initWithTitle:&stru_2A1EB91A0 message:a3 delegate:self cancelButtonTitle:a5 otherButtonTitles:{a4, 0}];
  [v8 setTag:a6];
  [(ACMEUIController *)self setWidgetEnabled:0];
  [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] addObject:v8];
  [v8 show];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  if ([a3 cancelButtonIndex] == a4 && objc_msgSend(a3, "tag") == -100102)
  {
    [(ACMEUIController *)self onIForgot:self];
  }

  [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] removeObject:a3];

  [(ACMEUIController *)self setWidgetEnabled:1];
}

- (unint64_t)signInDialogContentStyle
{
  [(ACMEUIController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(ACMEUIController *)self delegate];

  return [(ACMUIControllerDelegate *)v3 uiControllerSignInDialogContentStyle:self];
}

- (UIView)managerApprovalDialogSummaryView
{
  [(ACMEUIController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(ACMEUIController *)self delegate];

  return [(ACMUIControllerDelegate *)v3 uiControllerManagerApprovalDialogSummaryView:self];
}

- (void)onSignIn:(id)a3
{
  v4 = [(ACMSignInDialogProtocol *)[(ACMEUIController *)self signInDialog] userNameString];
  -[ACMBaseAuthenticationRequest setUserName:](-[ACMEUIController request](self, "request"), "setUserName:", [objc_msgSend(v4 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x29EDB9F50], "whitespaceCharacterSet")), "lowercaseString"}]);
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ACMEUIController *)self delegate];
    v6 = [(ACMSignInDialogProtocol *)[(ACMEUIController *)self signInDialog] passwordString];

    [(ACMUIControllerDelegate *)v5 uiControllerOnSignIn:self withPassword:v6];
  }
}

- (void)onSignInCancel:(id)a3
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v4 uiControllerOnSignInCancel:self];
  }
}

- (void)onIForgot:(id)a3
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v4 uiControllerOnSignIForgot:self];
  }
}

- (void)onManageAppleID:(id)a3
{
  v4 = [(ACMEUIController *)self delegate];
  v5 = [(ACMBaseAuthenticationRequest *)[(ACMEUIController *)self request] realm];

  [(ACMUIControllerDelegate *)v4 onManageAppleIDForRealm:v5];
}

- (void)signInDialogWillBecomeEnabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v3 uiControllerWillEnableSignInDialog:self];
  }
}

- (void)signInDialogDidBecomeEnabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v3 uiControllerDidEnableSignInDialog:self];
  }
}

- (void)signInDialogWillBecomeDisabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v3 uiControllerWillDisableSignInDialog:self];
  }
}

- (void)signInDialogDidBecomeDisabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)v3 uiControllerDidDisableSignInDialog:self];
  }
}

- (CGPoint)widgetPosition
{
  x = self->_widgetPosition.x;
  y = self->_widgetPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end