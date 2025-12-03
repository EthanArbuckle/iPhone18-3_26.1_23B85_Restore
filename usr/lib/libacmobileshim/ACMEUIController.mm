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
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)cancelSignInWidget;
- (void)dealloc;
- (void)hideSignInWidgetWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)onIForgot:(id)forgot;
- (void)onManageAppleID:(id)d;
- (void)onSignIn:(id)in;
- (void)onSignInCancel:(id)cancel;
- (void)setPassword:(id)password;
- (void)setWidgetEnabled:(BOOL)enabled;
- (void)showAlertWithAlertMessage:(id)message buttonTitle:(id)title cancelButtonTitle:(id)buttonTitle errorTag:(int64_t)tag;
- (void)showSignInWidgetWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
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

- (void)setWidgetEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_widgetEnabled = enabled;
  signInDialog = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)signInDialog disableControls:!enabledCopy];
}

- (NSString)password
{
  signInDialog = [(ACMEUIController *)self signInDialog];

  return [(ACMSignInDialogProtocol *)signInDialog passwordString];
}

- (void)setPassword:(id)password
{
  signInDialog = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)signInDialog setPasswordString:password];
}

- (id)createAlertDialog
{
  request = [(ACMEUIController *)self request];
  [(ACMEUIController *)self iTunesSignInClass];
  v4 = objc_opt_new();
  [v4 setDelegate:self];
  [v4 setIsUserNameEditable:{objc_msgSend(-[ACMBaseAuthenticationRequest userName](request, "userName"), "length") == 0}];
  [v4 setAlertViewPrompt:{-[ACMBaseAuthenticationRequest alertViewPrompt](request, "alertViewPrompt")}];
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

  signInButton = [(ACMEUIController *)self signInButton];
  if (signInButton)
  {
    v5 = signInButton;
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

  cancelButton = [(ACMEUIController *)self cancelButton];
  if (cancelButton)
  {
    v7 = cancelButton;
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
      createAlertDialog = [(ACMEUIController *)self createAlertDialog];
    }

    else if ([(ACMEUIController *)self useCustomWidget])
    {
      createAlertDialog = [(ACMEUIController *)self createCustomWidget];
    }

    else
    {
      createAlertDialog = [(ACMEUIController *)self createStandardWidget];
    }

    self->_signInDialog = createAlertDialog;
    [(ACMSignInDialogProtocol *)self->_signInDialog setRequestedUserName:[(ACMBaseAuthenticationRequest *)[(ACMEUIController *)self request] userName]];
    return self->_signInDialog;
  }

  return result;
}

- (void)showSignInWidgetWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  signInDialog = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)signInDialog showWithParentViewController:controller animated:animatedCopy completion:completion];
}

- (void)hideSignInWidgetWithParentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  signInDialog = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)signInDialog hideWithParentViewController:controller animated:animatedCopy completion:completion];
}

- (void)cancelSignInWidget
{
  while ([(NSMutableSet *)[(ACMEUIController *)self shownAlerts] count])
  {
    anyObject = [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] anyObject];
    [anyObject dismissWithClickedButtonIndex:objc_msgSend(anyObject animated:{"tag") == -100102, 0}];
    [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] removeObject:anyObject];
  }

  signInDialog = [(ACMEUIController *)self signInDialog];

  [(ACMSignInDialogProtocol *)signInDialog cancel];
}

- (void)showAlertWithAlertMessage:(id)message buttonTitle:(id)title cancelButtonTitle:(id)buttonTitle errorTag:(int64_t)tag
{
  v8 = [objc_alloc(MEMORY[0x29EDC7930]) initWithTitle:&stru_2A1EB91A0 message:message delegate:self cancelButtonTitle:buttonTitle otherButtonTitles:{title, 0}];
  [v8 setTag:tag];
  [(ACMEUIController *)self setWidgetEnabled:0];
  [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] addObject:v8];
  [v8 show];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  if ([view cancelButtonIndex] == index && objc_msgSend(view, "tag") == -100102)
  {
    [(ACMEUIController *)self onIForgot:self];
  }

  [(NSMutableSet *)[(ACMEUIController *)self shownAlerts] removeObject:view];

  [(ACMEUIController *)self setWidgetEnabled:1];
}

- (unint64_t)signInDialogContentStyle
{
  [(ACMEUIController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(ACMEUIController *)self delegate];

  return [(ACMUIControllerDelegate *)delegate uiControllerSignInDialogContentStyle:self];
}

- (UIView)managerApprovalDialogSummaryView
{
  [(ACMEUIController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(ACMEUIController *)self delegate];

  return [(ACMUIControllerDelegate *)delegate uiControllerManagerApprovalDialogSummaryView:self];
}

- (void)onSignIn:(id)in
{
  userNameString = [(ACMSignInDialogProtocol *)[(ACMEUIController *)self signInDialog] userNameString];
  -[ACMBaseAuthenticationRequest setUserName:](-[ACMEUIController request](self, "request"), "setUserName:", [objc_msgSend(userNameString stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x29EDB9F50], "whitespaceCharacterSet")), "lowercaseString"}]);
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];
    passwordString = [(ACMSignInDialogProtocol *)[(ACMEUIController *)self signInDialog] passwordString];

    [(ACMUIControllerDelegate *)delegate uiControllerOnSignIn:self withPassword:passwordString];
  }
}

- (void)onSignInCancel:(id)cancel
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerOnSignInCancel:self];
  }
}

- (void)onIForgot:(id)forgot
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerOnSignIForgot:self];
  }
}

- (void)onManageAppleID:(id)d
{
  delegate = [(ACMEUIController *)self delegate];
  realm = [(ACMBaseAuthenticationRequest *)[(ACMEUIController *)self request] realm];

  [(ACMUIControllerDelegate *)delegate onManageAppleIDForRealm:realm];
}

- (void)signInDialogWillBecomeEnabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerWillEnableSignInDialog:self];
  }
}

- (void)signInDialogDidBecomeEnabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerDidEnableSignInDialog:self];
  }
}

- (void)signInDialogWillBecomeDisabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerWillDisableSignInDialog:self];
  }
}

- (void)signInDialogDidBecomeDisabled
{
  [(ACMEUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMEUIController *)self delegate];

    [(ACMUIControllerDelegate *)delegate uiControllerDidDisableSignInDialog:self];
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