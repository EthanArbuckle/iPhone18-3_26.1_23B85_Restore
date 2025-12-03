@interface ACMExternalAppleConnectImpl
+ (void)initialize;
- (ACC2SVControllerProtocol)twoSVController;
- (ACMExternalAppleConnectImpl)initWithMasterObject:(id)object;
- (ACMExternalAuthenticationController)authenticationController;
- (ACMExternalUIControllerProtocol)uiController;
- (BOOL)canHideSignInDialog;
- (BOOL)isWidgetShown;
- (BOOL)signInAnimated;
- (id)hideAppleConnectSignInDialog;
- (id)parentViewController;
- (unint64_t)signInDialogContentStyle;
- (void)applicationDidEnterBackground:(id)background;
- (void)authenticateRunningOnMainThreadWithRequest:(id)request;
- (void)authenticateWithRequest:(id)request password:(id)password;
- (void)authenticationController:(id)controller perform2StepVerificationWithRequest:(id)request completion:(id)completion;
- (void)cancelRequests;
- (void)dealloc;
- (void)hideSignIn;
- (void)onManageAppleIDForRealm:(id)realm;
- (void)reportError:(id)error;
- (void)returnError:(id)error withSelector:(SEL)selector withResponseClass:(Class)class;
- (void)returnResponse:(id)response withSelector:(SEL)selector;
- (void)setDelegate:(id)delegate;
- (void)setLogLevel:(int64_t)level;
- (void)showSignInDialog;
- (void)showSignInWithRequest:(id)request;
- (void)signInDialogDidHide;
- (void)signInDialogWillHide;
- (void)twoSVController:(id)controller prepareUIWithCompletion:(id)completion;
- (void)twoSVControllerEnterCredentials:(id)credentials;
- (void)twoSVControllerWillClose:(id)close;
- (void)twoSVTransportController:(id)controller fetchImageWithHandler:(id)handler completion:(id)completion;
- (void)twoSVTransportController:(id)controller scheduleHandler:(id)handler withCompletion:(id)completion;
- (void)twoSVTransportControllerCancelFetchingImages:(id)images;
- (void)uiControllerDidDisableSignInDialog:(id)dialog;
- (void)uiControllerDidEnableSignInDialog:(id)dialog;
- (void)uiControllerOnSignIForgot:(id)forgot;
- (void)uiControllerOnSignIn:(id)in withPassword:(id)password;
- (void)uiControllerOnSignInCancel:(id)cancel;
- (void)uiControllerWillDisableSignInDialog:(id)dialog;
- (void)uiControllerWillEnableSignInDialog:(id)dialog;
- (void)verifyServiceTicket:(id)ticket;
@end

@implementation ACMExternalAppleConnectImpl

+ (void)initialize
{
  +[ACMLocale initResources];

  +[ACMExternalTicketManager initialize];
}

- (ACMExternalAppleConnectImpl)initWithMasterObject:(id)object
{
  v9.receiver = self;
  v9.super_class = ACMExternalAppleConnectImpl;
  v4 = [(ACMAppleConnectImpl *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(ACMExternalAppleConnectImpl *)v4 setMasterObject:object];
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMExternalAppleConnectImpl initWithMasterObject:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 79, 0, "Creating instance...");
    }

    [objc_msgSend(objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
    if (v6 >= 4.0)
    {
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x29EDC8018] object:0];
    }

    [(ACMExternalAppleConnectImpl *)v5 setAppleConnectState:0];
  }

  return v5;
}

- (ACC2SVControllerProtocol)twoSVController
{
  result = self->_twoSVController;
  if (!result)
  {
    twoSVController = [(ACMAppleConnectImplComponents *)[(ACMExternalAppleConnectImpl *)self components] twoSVController];
    self->_twoSVController = twoSVController;
    [(ACC2SVControllerProtocol *)twoSVController setDelegate:self];
    [(ACC2SVControllerProtocol *)self->_twoSVController setSecondFactorAuthUIController:[[ACM2SVAuthenticationUIController alloc] initWithParentViewController:[(ACMExternalAppleConnectImpl *)self parentViewController]]];
    v5 = objc_opt_new();
    [v5 setDelegate:self];
    [(ACC2SVControllerProtocol *)self->_twoSVController setTransportController:v5];
    return self->_twoSVController;
  }

  return result;
}

- (void)dealloc
{
  [(ACMExternalAppleConnectImpl *)self setMasterObject:0];
  [objc_msgSend(objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
  if (v3 >= 4.0)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x29EDC8018] object:0];
  }

  [(ACMExternalAuthenticationController *)[(ACMExternalAppleConnectImpl *)self authenticationController] setDelegate:0];
  [(ACMExternalAppleConnectImpl *)self setAuthenticationController:0];
  v5.receiver = self;
  v5.super_class = ACMExternalAppleConnectImpl;
  [(ACMAppleConnectImpl *)&v5 dealloc];
}

- (ACMExternalUIControllerProtocol)uiController
{
  components = [(ACMExternalAppleConnectImpl *)self components];

  return [(ACMAppleConnectImplComponents *)components uiController];
}

- (ACMExternalAuthenticationController)authenticationController
{
  result = self->_authenticationController;
  if (!result)
  {
    v4 = objc_opt_new();
    self->_authenticationController = v4;
    [(ACMExternalAuthenticationController *)v4 setDelegate:self];
    return self->_authenticationController;
  }

  return result;
}

- (BOOL)isWidgetShown
{
  uiControllerLoaded = [(ACMAppleConnectImplComponents *)[(ACMExternalAppleConnectImpl *)self components] uiControllerLoaded];
  if (uiControllerLoaded)
  {
    uiController = [(ACMExternalAppleConnectImpl *)self uiController];

    LOBYTE(uiControllerLoaded) = [(ACMExternalUIControllerProtocol *)uiController isWidgetShown];
  }

  return uiControllerLoaded;
}

- (void)setDelegate:(id)delegate
{
  if (delegate && ![delegate conformsToProtocol:&unk_2A1EE4A80])
  {
    objc_exception_throw([MEMORY[0x29EDB8DD0] exceptionWithName:@"InvalidDelegateException" reason:@"Delegate does not conform to ACMExternalAppleConnectDelegate protocol" userInfo:0]);
  }

  self->_delegate = delegate;
}

- (BOOL)signInAnimated
{
  [(ACMExternalAppleConnectImpl *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = [(ACMExternalAppleConnectImpl *)self delegate];
  masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

  return [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInAnimated:masterObject];
}

- (id)parentViewController
{
  delegate = [(ACMExternalAppleConnectImpl *)self delegate];
  masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

  return [(ACMExternalAppleConnectDelegate *)delegate appleConnectParentViewController:masterObject];
}

- (id)hideAppleConnectSignInDialog
{
  if (qword_2A1EB8ED8)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl hideAppleConnectSignInDialog]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 173, 0, "Client application tries hide AppleConnect SignIn dialog manually");
    }

    appleConnectState = [(ACMExternalAppleConnectImpl *)self appleConnectState];
    LevelMask = ACFLogSettingsGetLevelMask();
    if (appleConnectState == 1)
    {
      if (LevelMask < 0)
      {
        ACFLog(7, "[ACMExternalAppleConnectImpl hideAppleConnectSignInDialog]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 177, 0, "AppleConnect in proper state and will hide  SignIn dialog manually");
      }

      goto LABEL_8;
    }

    if (LevelMask < 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl hideAppleConnectSignInDialog]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 183, 0, "AppleConnect is not in proper state. SignIn dialog won't be hidden manually. Returning error!");
    }
  }

  else if ([(ACMExternalAppleConnectImpl *)self appleConnectState]== 1)
  {
LABEL_8:
    [(ACMExternalAppleConnectImpl *)self hideSignIn];
    [(ACMExternalAppleConnectImpl *)self setAppleConnectState:0];
    return 0;
  }

  v6 = MEMORY[0x29EDB9FA0];
  v7 = MEMORY[0x29EDB8DC0];
  v8 = [ACMBaseLocale localizedString:@"Improper call of the method. AppleConnect SignIn dialog cannot be hidden."];
  v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x29EDB9EE0], 0}];

  return [v6 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-600181 userInfo:v9];
}

- (void)showSignInWithRequest:(id)request
{
  if ([(ACMExternalAppleConnectImpl *)self appleConnectState]== 1 && [(ACMExternalAppleConnectImpl *)self isWidgetShown])
  {
    [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setWidgetEnabled:1];

    [(ACMExternalAppleConnectImpl *)self setAppleConnectState:0];
  }

  else
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl showSignInWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 198, 0, "AppleConnect will show SignIn dialog and inform delegate");
    }

    [(ACMExternalAppleConnectImpl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectWillShowSignInDialog:[(ACMExternalAppleConnectImpl *)self masterObject]];
    }

    [(ACMExternalAppleConnectImpl *)self setCurrentRequest:request];
    [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setRequest:[(ACMExternalAppleConnectImpl *)self currentRequest]];
    if ([request useAlertView])
    {
      v5 = 0;
    }

    else
    {
      [(ACMExternalAppleConnectImpl *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectUseCustomAppearance:[(ACMExternalAppleConnectImpl *)self masterObject]])
      {
        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectWidgetPosition:[(ACMExternalAppleConnectImpl *)self masterObject]];
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setWidgetPosition:v6, v7];
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setWidgetAccountLabel:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectAccountLabel:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setWidgetPasswordReturnKeyType:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectPasswordFieldsReturnKeyType:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setSignInButton:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectSignInButton:[(ACMExternalAppleConnectImpl *)self masterObject]]];
          [(ACMExternalAppleConnectImpl *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setShouldAuthenticateOnUserInput:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectShouldAuthenticateOnUserInput:[(ACMExternalAppleConnectImpl *)self masterObject]]];
          }
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setCancelButton:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectCancelButton:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        v5 = 2;
      }

      else
      {
        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setLogoImage:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectStandardLogoImage:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setBackgroundColor:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectStandardBackgroundColor:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        [(ACMExternalAppleConnectImpl *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setAccountNameFieldPlaceholder:[(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectStandardAccountNameFieldPlaceholder:[(ACMExternalAppleConnectImpl *)self masterObject]]];
        }

        v5 = 1;
      }
    }

    [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setSignInStyle:v5];
    uiController = [(ACMExternalAppleConnectImpl *)self uiController];
    parentViewController = [(ACMExternalAppleConnectImpl *)self parentViewController];
    signInAnimated = [(ACMExternalAppleConnectImpl *)self signInAnimated];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __53__ACMExternalAppleConnectImpl_showSignInWithRequest___block_invoke;
    v11[3] = &unk_29EE91778;
    v11[4] = self;
    [(ACMExternalUIControllerProtocol *)uiController showSignInWidgetWithParentViewController:parentViewController animated:signInAnimated completion:v11];
  }
}

uint64_t __53__ACMExternalAppleConnectImpl_showSignInWithRequest___block_invoke(uint64_t a1)
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl showSignInWithRequest:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 261, 0, "AppleConnect has shown SignIn dialog and would inform delegate");
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = [*(a1 + 32) masterObject];

    return [v3 appleConnectDidShowSignInDialog:v4];
  }

  return result;
}

- (void)hideSignIn
{
  if ([(ACMExternalAppleConnectImpl *)self isWidgetShown])
  {
    [(ACMExternalAppleConnectImpl *)self signInDialogWillHide];
    uiController = [(ACMExternalAppleConnectImpl *)self uiController];
    parentViewController = [(ACMExternalAppleConnectImpl *)self parentViewController];
    signInAnimated = [(ACMExternalAppleConnectImpl *)self signInAnimated];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __41__ACMExternalAppleConnectImpl_hideSignIn__block_invoke;
    v6[3] = &unk_29EE91778;
    v6[4] = self;
    [(ACMExternalUIControllerProtocol *)uiController hideSignInWidgetWithParentViewController:parentViewController animated:signInAnimated completion:v6];
  }
}

uint64_t __41__ACMExternalAppleConnectImpl_hideSignIn__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "components")];
  v2 = *(a1 + 32);

  return [v2 signInDialogDidHide];
}

- (void)authenticateRunningOnMainThreadWithRequest:(id)request
{
  v5 = [request copy];
  if ([objc_msgSend(v5 "realm")] && objc_msgSend(objc_msgSend(v5, "appID"), "unsignedLongLongValue") && objc_msgSend(objc_msgSend(v5, "appIDKey"), "length") || (v6 = +[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"Invalid Parameters. Some of input parameters are set incorrectly.")) == 0)
  {
    [(ACMExternalAppleConnectImpl *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectUseCustomAppearance:[(ACMExternalAppleConnectImpl *)self masterObject]])
    {
      [(ACMExternalAppleConnectImpl *)self showSignInWithRequest:request];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    authenticationController = [(ACMExternalAppleConnectImpl *)self authenticationController];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __74__ACMExternalAppleConnectImpl_authenticateRunningOnMainThreadWithRequest___block_invoke;
    v11[3] = &unk_29EE917C8;
    v11[4] = self;
    v11[5] = request;
    v11[6] = v5;
    v12 = v9;
    [(ACMExternalAuthenticationController *)authenticationController evaluateSSOWithRequest:v5 completion:v11];
  }

  else
  {
    v7 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200190 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObject:forKey:", v6, *MEMORY[0x29EDB9ED8])}];
    v8 = objc_opt_class();

    [(ACMExternalAppleConnectImpl *)self returnError:v7 withSelector:sel_appleConnect_authenticationDidEndWithResponse_ withResponseClass:v8];
  }
}

uint64_t __74__ACMExternalAppleConnectImpl_authenticateRunningOnMainThreadWithRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2 || !a3)
  {
    if ([a2 code] == -200050)
    {
      v10 = *(a1 + 32);

      return [v10 reportError:a2];
    }

    else
    {
      result = [objc_msgSend(*(a1 + 40) "userName")];
      if (a3)
      {
        if (!result)
        {
          result = [*(a1 + 48) useAlertView];
          if ((result & 1) == 0)
          {
            result = [*(a1 + 40) setUserName:{objc_msgSend(objc_msgSend(a3, "principal"), "userName")}];
          }
        }
      }

      if ((*(a1 + 56) & 1) == 0)
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);

        return [v11 showSignInWithRequest:v12];
      }
    }
  }

  else
  {
    v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "components")];
    v7 = +[ACMAuthenticationResponseImpl authenticationResponse];
    [v7 setToken:v6];
    [v7 setUserName:{objc_msgSend(objc_msgSend(a3, "principal"), "userName")}];
    [v7 setGeneratedWithTouchID:1];
    v8 = *(a1 + 32);

    return [v8 returnResponse:v7 withSelector:sel_appleConnect_authenticationDidEndWithResponse_];
  }

  return result;
}

- (void)authenticateWithRequest:(id)request password:(id)password
{
  [request setUserName:{objc_msgSend(objc_msgSend(request, "userName"), "lowercaseString")}];
  authenticationController = [(ACMExternalAppleConnectImpl *)self authenticationController];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __64__ACMExternalAppleConnectImpl_authenticateWithRequest_password___block_invoke;
  v8[3] = &unk_29EE917F0;
  v8[4] = self;
  v8[5] = request;
  [(ACMExternalAuthenticationController *)authenticationController authenticateWithRequest:request password:password completion:v8];
}

uint64_t __64__ACMExternalAppleConnectImpl_authenticateWithRequest_password___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  if (a2)
  {
    v4 = *(result + 32);

    return [v4 reportError:a2];
  }

  else if (a3)
  {
    v6 = [objc_msgSend(objc_msgSend(*(result + 32) "components")];
    v7 = +[ACMAuthenticationResponseImpl authenticationResponse];
    [v7 setToken:v6];
    [v7 setUserName:{objc_msgSend(objc_msgSend(a3, "principal"), "userName")}];
    v8 = *(v3 + 32);

    return [v8 returnResponse:v7 withSelector:sel_appleConnect_authenticationDidEndWithResponse_];
  }

  return result;
}

- (void)verifyServiceTicket:(id)ticket
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl verifyServiceTicket:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 366, 0, "Verifying service ticket...");
  }

  v5 = objc_opt_new();
  authenticationController = [(ACMExternalAppleConnectImpl *)self authenticationController];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __51__ACMExternalAppleConnectImpl_verifyServiceTicket___block_invoke;
  v7[3] = &unk_29EE91818;
  v7[4] = self;
  [(ACMExternalAuthenticationController *)authenticationController verifyServiceTicketWithRequest:ticket completion:v7];
  [v5 drain];
}

uint64_t __51__ACMExternalAppleConnectImpl_verifyServiceTicket___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = objc_opt_class();

    return [v3 returnError:a2 withSelector:sel_appleConnect_ticketVerificationDidEndWithResponse_ withResponseClass:v5];
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 returnResponse:a3 withSelector:sel_appleConnect_ticketVerificationDidEndWithResponse_];
  }
}

- (void)setLogLevel:(int64_t)level
{
  preferences = [(ACMAppleConnectImplComponents *)[(ACMExternalAppleConnectImpl *)self components] preferences];

  [(ACMAppleConnectPreferences *)preferences setLogLevel:level];
}

- (void)cancelRequests
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl cancelRequests]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 414, 0, "Sign in cancelled");
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter postNotification:{objc_msgSend(MEMORY[0x29EDBA060], "notificationWithName:object:", @"CancelRequests", self)}];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v5 = __45__ACMExternalAppleConnectImpl_cancelRequests__block_invoke;
  v6 = &unk_29EE91778;
  selfCopy = self;
  if ([(ACMExternalAppleConnectImpl *)self isWidgetShown])
  {
    [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] cancelSignInWidget];
    [(ACMExternalAppleConnectImpl *)self setAppleConnectState:0];
    [(ACC2SVControllerProtocol *)[(ACMExternalAppleConnectImpl *)self twoSVController] cancelWithCompletion:v4];
  }

  else
  {
    v5(v4);
  }
}

uint64_t __45__ACMExternalAppleConnectImpl_cancelRequests__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x29EDB9FA0];
  v3 = MEMORY[0x29EDB8DC0];
  v4 = [ACMBaseLocale localizedString:@"Authentication was canceled by application"];
  v5 = [v2 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200060 userInfo:{objc_msgSend(v3, "dictionaryWithObject:forKey:", v4, *MEMORY[0x29EDB9ED8])}];
  v6 = objc_opt_class();

  return [v1 returnError:v5 withSelector:sel_appleConnect_authenticationDidEndWithResponse_ withResponseClass:v6];
}

- (void)reportError:(id)error
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl reportError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 438, 0, "Reporting about error %@", error);
  }

  code = [error code];
  if (error)
  {
    v6 = code;
    if ([(ACMExternalAppleConnectImpl *)self isWidgetShown])
    {
      v7 = [ACMBaseLocale localizedString:@"OK"];
      if (v6 > -100401)
      {
        if (v6 > -100119)
        {
          if (v6 == -100118 || v6 == -100102 || v6 == -100104)
          {
            v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@", objc_msgSend(error, "localizedDescription")];
            v7 = [ACMBaseLocale localizedString:@"iForgot…"];
            v9 = [ACMBaseLocale localizedString:@"OK"];
            v6 = -100102;
            if (!v8)
            {
              return;
            }

LABEL_32:
            uiController = [(ACMExternalAppleConnectImpl *)self uiController];

            [(ACMExternalUIControllerProtocol *)uiController showAlertWithAlertMessage:v8 buttonTitle:v9 cancelButtonTitle:v7 errorTag:v6];
            return;
          }

          goto LABEL_30;
        }

        if (v6 == -100400 || v6 == -100125)
        {
LABEL_29:
          v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@", objc_msgSend(error, "localizedDescription")];
          goto LABEL_31;
        }

LABEL_30:
        v17 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
LABEL_31:
        v8 = v17;
        v9 = 0;
        if (!v17)
        {
          return;
        }

        goto LABEL_32;
      }

      if (v6 > -200061)
      {
        if (v6 == -200060)
        {
LABEL_24:
          v16 = objc_opt_class();

          [(ACMExternalAppleConnectImpl *)self returnError:error withSelector:sel_appleConnect_authenticationDidEndWithResponse_ withResponseClass:v16];
          return;
        }

        v15 = -3442;
      }

      else
      {
        if (v6 == -200210)
        {
          goto LABEL_29;
        }

        v15 = -3582;
      }

      if (v6 != (v15 & 0xFFFFFFFF0000FFFFLL | 0xFFFC0000))
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (v6 == -200200)
    {
      v10 = MEMORY[0x29EDB9FA0];
      v11 = MEMORY[0x29EDB8DC0];
      v12 = *MEMORY[0x29EDB9F18];
      v13 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
      error = [v10 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v11, "dictionaryWithObjectsAndKeys:", error, v12, v13, *MEMORY[0x29EDB9ED8], 0)}];
    }
  }

  v14 = +[ACMAuthenticationResponseImpl authenticationResponse];
  [v14 setError:error];

  [(ACMExternalAppleConnectImpl *)self returnResponse:v14 withSelector:sel_appleConnect_authenticationDidEndWithResponse_];
}

- (void)returnError:(id)error withSelector:(SEL)selector withResponseClass:(Class)class
{
  objc_opt_class();
  v8 = objc_opt_new();
  [v8 setError:error];

  [(ACMExternalAppleConnectImpl *)self returnResponse:v8 withSelector:selector];
}

- (BOOL)canHideSignInDialog
{
  if ([(ACMExternalAppleConnectImpl *)self isWidgetShown]&& ![(ACMMessage *)[(ACMExternalAppleConnectImpl *)self currentRequest] useAlertView]&& ([(ACMExternalAppleConnectImpl *)self delegate], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v3 = [(ACMExternalAppleConnectDelegate *)[(ACMExternalAppleConnectImpl *)self delegate] appleConnectCanHideSignInDialog:[(ACMExternalAppleConnectImpl *)self masterObject]];
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      v4 = @"can not";
      if (v3)
      {
        v4 = @"can";
      }

      ACFLog(7, "[ACMExternalAppleConnectImpl canHideSignInDialog]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 509, 0, "Delegate told that SignIn dialog %@ be hidden immediately", v4);
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)returnResponse:(id)response withSelector:(SEL)selector
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl returnResponse:withSelector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 519, 0, "Try ask delegate for permission to hide SignIn dialog");
  }

  if ([response error])
  {
    [(ACMExternalAppleConnectImpl *)self setAppleConnectState:0];
    goto LABEL_8;
  }

  canHideSignInDialog = [(ACMExternalAppleConnectImpl *)self canHideSignInDialog];
  v8 = canHideSignInDialog;
  [(ACMExternalAppleConnectImpl *)self setAppleConnectState:!canHideSignInDialog];
  if (v8)
  {
LABEL_8:
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl returnResponse:withSelector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 524, 0, "AppleConnect will hide SignIn dialog immediately");
    }

    [(ACMExternalAppleConnectImpl *)self hideSignIn];
    goto LABEL_12;
  }

  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl returnResponse:withSelector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 529, 0, "AppleConnect will not hide SignIn dialog immediately. It would be hidden by clien application manually");
  }

LABEL_12:
  if (self->_twoSVController)
  {
    [-[ACC2SVControllerProtocol transportController](-[ACMExternalAppleConnectImpl twoSVController](self "twoSVController")];
    [(ACC2SVControllerProtocol *)[(ACMExternalAppleConnectImpl *)self twoSVController] setTransportController:0];
    [(ACC2SVControllerProtocol *)[(ACMExternalAppleConnectImpl *)self twoSVController] setSecondFactorAuthUIController:0];
    [(ACC2SVControllerProtocol *)[(ACMExternalAppleConnectImpl *)self twoSVController] setDelegate:0];
    [(ACMExternalAppleConnectImpl *)self setTwoSVController:0];
  }

  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl returnResponse:withSelector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 542, 0, "Try inform delegate about result");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl returnResponse:withSelector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 545, 0, "Inform delegate about result");
    }

    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate performSelector:selector withObject:masterObject withObject:response];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  if ([(ACMExternalAppleConnectImpl *)self isWidgetShown]&& [(ACMMessage *)[(ACMExternalAppleConnectImpl *)self currentRequest] automaticallyCancelWhenSwitchingToBackground])
  {
    [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] cancelSignInWidget];
    [(ACC2SVControllerProtocol *)[(ACMExternalAppleConnectImpl *)self twoSVController] cancelWithCompletion:0];
    [(ACMExternalAppleConnectImpl *)self hideSignIn];
    [(ACMExternalAppleConnectImpl *)self setAppleConnectState:0];
    v4 = MEMORY[0x29EDB9FA0];
    v5 = MEMORY[0x29EDB8DC0];
    v6 = [ACMBaseLocale localizedString:@"Authentication was canceled by user"];
    v7 = [v4 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200050 userInfo:{objc_msgSend(v5, "dictionaryWithObject:forKey:", v6, *MEMORY[0x29EDB9ED8])}];
    v8 = objc_opt_class();

    [(ACMExternalAppleConnectImpl *)self returnError:v7 withSelector:sel_appleConnect_authenticationDidEndWithResponse_ withResponseClass:v8];
  }
}

- (void)showSignInDialog
{
  [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setPassword:0];
  [(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] setWidgetEnabled:1];
  uiController = [(ACMExternalAppleConnectImpl *)self uiController];
  parentViewController = [(ACMExternalAppleConnectImpl *)self parentViewController];
  signInAnimated = [(ACMExternalAppleConnectImpl *)self signInAnimated];

  [(ACMExternalUIControllerProtocol *)uiController showSignInWidgetWithParentViewController:parentViewController animated:signInAnimated completion:&__block_literal_global];
}

- (void)onManageAppleIDForRealm:(id)realm
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  v6 = [MEMORY[0x29EDB8E70] URLWithString:{objc_msgSend(-[ACMAppleConnectPreferences environmentPreferencesWithRealm:](-[ACMAppleConnectImplComponents preferences](-[ACMExternalAppleConnectImpl components](self, "components"), "preferences"), "environmentPreferencesWithRealm:", realm), "myAppleIDURL")}];

  [mEMORY[0x29EDC7938] openURL:v6];
}

- (void)uiControllerOnSignIn:(id)in withPassword:(id)password
{
  if ([-[ACMMessage userName](-[ACMExternalAppleConnectImpl currentRequest](self currentRequest])
  {
    if ([password length])
    {
      goto LABEL_9;
    }

    v6 = @"Password field is empty";
  }

  else
  {
    v6 = @"Apple ID field is empty";
  }

  v7 = MEMORY[0x29EDB9FA0];
  v8 = MEMORY[0x29EDB8DC0];
  v9 = [ACMBaseLocale localizedString:v6];
  v10 = [v7 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v8, "dictionaryWithObject:forKey:", v9, *MEMORY[0x29EDB9ED8])}];
  if (v10)
  {

    [(ACMExternalAppleConnectImpl *)self reportError:v10];
    return;
  }

LABEL_9:
  [(ACMExternalAppleConnectImpl *)self authenticateWithRequest:[(ACMExternalAppleConnectImpl *)self currentRequest] password:password];
  uiController = [(ACMExternalAppleConnectImpl *)self uiController];

  [(ACMExternalUIControllerProtocol *)uiController setWidgetEnabled:0];
}

- (void)uiControllerOnSignInCancel:(id)cancel
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerOnSignInCancel:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 612, 0, "Sign in cancelled");
  }

  v4 = MEMORY[0x29EDB9FA0];
  v5 = MEMORY[0x29EDB8DC0];
  v6 = [ACMBaseLocale localizedString:@"Authentication was canceled by user"];
  v7 = [v4 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200050 userInfo:{objc_msgSend(v5, "dictionaryWithObject:forKey:", v6, *MEMORY[0x29EDB9ED8])}];
  v8 = objc_opt_class();

  [(ACMExternalAppleConnectImpl *)self returnError:v7 withSelector:sel_appleConnect_authenticationDidEndWithResponse_ withResponseClass:v8];
}

- (void)uiControllerOnSignIForgot:(id)forgot
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  v5 = [MEMORY[0x29EDB8E70] URLWithString:{objc_msgSend(-[ACMAppleConnectPreferences environmentPreferencesWithRealm:](-[ACMAppleConnectImplComponents preferences](-[ACMExternalAppleConnectImpl components](self, "components"), "preferences"), "environmentPreferencesWithRealm:", -[ACMMessage realm](-[ACMExternalAppleConnectImpl currentRequest](self, "currentRequest"), "realm")), "iForgotURL")}];

  [mEMORY[0x29EDC7938] openURL:v5];
}

- (void)uiControllerWillEnableSignInDialog:(id)dialog
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerWillEnableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 624, 0, "AppleConnect will try inform delegate that SignIn will become enabled");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerWillEnableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 627, 0, "Inform delegate that SignIn will become enabled");
    }

    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInDialogWillBecomeEnabled:masterObject];
  }
}

- (void)uiControllerDidEnableSignInDialog:(id)dialog
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerDidEnableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 634, 0, "AppleConnect will try inform delegate that SignIn did become enabled");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerDidEnableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 637, 0, "Inform delegate that SignIn did become enabled");
    }

    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInDialogDidBecomeEnabled:masterObject];
  }
}

- (void)uiControllerWillDisableSignInDialog:(id)dialog
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerWillDisableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 644, 0, "AppleConnect will try inform delegate that SignIn will become disabled");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerWillDisableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 647, 0, "Inform delegate that SignIn will become disabled");
    }

    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInDialogWillBecomeDisabled:masterObject];
  }
}

- (void)uiControllerDidDisableSignInDialog:(id)dialog
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerDidDisableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 654, 0, "AppleConnect will try inform delegate that SignIn did become disabled");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImpl uiControllerDidDisableSignInDialog:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 657, 0, "Inform delegate that SignIn did become disabled");
    }

    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInDialogDidBecomeDisabled:masterObject];
  }
}

- (unint64_t)signInDialogContentStyle
{
  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];
    if (masterObject)
    {
      selfCopy = masterObject;
    }

    else
    {
      selfCopy = self;
    }

    return [(ACMExternalAppleConnectDelegate *)delegate appleConnectSignInDialogContentStyle:selfCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ACMExternalAppleConnectImpl;
    return [(ACMAppleConnectImpl *)&v7 signInDialogContentStyle];
  }
}

- (void)signInDialogWillHide
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl signInDialogWillHide]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 673, 0, "AppleConnect will hide SignIn dialog and inform delegate");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectWillHideSignInDialog:masterObject];
  }
}

- (void)signInDialogDidHide
{
  if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAppleConnectImpl signInDialogDidHide]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 682, 0, "AppleConnect has hidden SignIn dialog and would inform delegate");
  }

  [(ACMExternalAppleConnectImpl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(ACMExternalAppleConnectImpl *)self delegate];
    masterObject = [(ACMExternalAppleConnectImpl *)self masterObject];

    [(ACMExternalAppleConnectDelegate *)delegate appleConnectDidHideSignInDialog:masterObject];
  }
}

- (void)twoSVControllerEnterCredentials:(id)credentials
{
  twoSVController = [(ACMExternalAppleConnectImpl *)self twoSVController];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __63__ACMExternalAppleConnectImpl_twoSVControllerEnterCredentials___block_invoke;
  v5[3] = &unk_29EE91778;
  v5[4] = self;
  [(ACC2SVControllerProtocol *)twoSVController cancelWithCompletion:v5];
}

- (void)twoSVController:(id)controller prepareUIWithCompletion:(id)completion
{
  v5 = [completion copy];
  if ([(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] signInStyle]== 2)
  {
    if (v5)
    {
      v6 = v5[2];

      v6(v5);
    }
  }

  else
  {
    uiController = [(ACMExternalAppleConnectImpl *)self uiController];
    parentViewController = [(ACMExternalAppleConnectImpl *)self parentViewController];
    signInAnimated = [(ACMExternalAppleConnectImpl *)self signInAnimated];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __71__ACMExternalAppleConnectImpl_twoSVController_prepareUIWithCompletion___block_invoke;
    v10[3] = &unk_29EE91860;
    v10[4] = self;
    v10[5] = v5;
    [(ACMExternalUIControllerProtocol *)uiController hideSignInWidgetWithParentViewController:parentViewController animated:signInAnimated completion:v10];
  }
}

uint64_t __71__ACMExternalAppleConnectImpl_twoSVController_prepareUIWithCompletion___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "uiController")])
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    [objc_msgSend(*(a1 + 32) "components")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "twoSVController")];
    [objc_msgSend(*(a1 + 32) "twoSVController")];
    [objc_msgSend(*(a1 + 32) "twoSVController")];
    [objc_msgSend(*(a1 + 32) "twoSVController")];
    v4 = *(a1 + 32);

    return [v4 setTwoSVController:0];
  }

  return result;
}

- (void)twoSVControllerWillClose:(id)close
{
  if ([(ACMExternalUIControllerProtocol *)[(ACMExternalAppleConnectImpl *)self uiController] signInStyle]!= 2)
  {

    [(ACMExternalAppleConnectImpl *)self signInDialogWillHide];
  }
}

- (void)twoSVTransportController:(id)controller scheduleHandler:(id)handler withCompletion:(id)completion
{
  v7 = [completion copy];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __87__ACMExternalAppleConnectImpl_twoSVTransportController_scheduleHandler_withCompletion___block_invoke;
  v8[3] = &unk_29EE91888;
  v8[4] = v7;
  [(ACMAppleConnectImpl *)self scheduleHandler:handler withCompletionBlock:v8];
}

uint64_t __87__ACMExternalAppleConnectImpl_twoSVTransportController_scheduleHandler_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)twoSVTransportController:(id)controller fetchImageWithHandler:(id)handler completion:(id)completion
{
  if (qword_2A1EB8ED8)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "-[ACMExternalAppleConnectImpl twoSVTransportController:fetchImageWithHandler:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 765, 0, "Scheduling image download HTTP handler %p for address %@", handler, [objc_msgSend(handler "transport")]);
    }

    objc_sync_enter(self);
    if (!handler)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMExternalAppleConnectImpl twoSVTransportController:fetchImageWithHandler:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 783, 0, "Trying to schedule nil handler");
      }

      goto LABEL_11;
    }
  }

  else
  {
    objc_sync_enter(self);
    if (!handler)
    {
      goto LABEL_11;
    }
  }

  if (![(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] count])
  {
    [objc_msgSend(MEMORY[0x29EDC7938] "sharedApplication")];
  }

  [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] addObject:handler];
  [handler downloadImageWithCompletionBlock:completion];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __89__ACMExternalAppleConnectImpl_twoSVTransportController_fetchImageWithHandler_completion___block_invoke;
  v8[3] = &unk_29EE918B0;
  v8[4] = self;
  v8[5] = handler;
  [handler setFinalizeBlock:v8];
LABEL_11:
  objc_sync_exit(self);
}

- (void)twoSVTransportControllerCancelFetchingImages:(id)images
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = [(NSMutableSet *)[(ACMAppleConnectImpl *)self handlers] objectsPassingTest:&__block_literal_global_207];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 cancelRequest];
        [(ACMAppleConnectImpl *)self unscheduleHandler:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)authenticationController:(id)controller perform2StepVerificationWithRequest:(id)request completion:(id)completion
{
  if (!completion)
  {
    [ACMExternalAppleConnectImpl authenticationController:a2 perform2StepVerificationWithRequest:self completion:?];
  }

  if ([(ACMExternalAppleConnectImpl *)self isWidgetShown])
  {
    if (qword_2A1EB8ED8)
    {
      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "[ACMExternalAppleConnectImpl authenticationController:perform2StepVerificationWithRequest:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 822, 0, "Two-step verification required");
      }
    }

    v8 = [completion copy];
    twoSVController = [(ACMExternalAppleConnectImpl *)self twoSVController];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __103__ACMExternalAppleConnectImpl_authenticationController_perform2StepVerificationWithRequest_completion___block_invoke;
    v15[3] = &unk_29EE918F8;
    v15[4] = self;
    v15[5] = v8;
    [(ACC2SVControllerProtocol *)twoSVController perform2StepVerificationWithRequest:request completion:v15];
  }

  else
  {
    if (qword_2A1EB8ED8 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMExternalAppleConnectImpl authenticationController:perform2StepVerificationWithRequest:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImpl.m", 839, 0, "Two-step verification required but UI can't be shown.");
    }

    v10 = MEMORY[0x29EDB9FA0];
    v11 = MEMORY[0x29EDB8DC0];
    v12 = [ACMBaseLocale localizedString:@"Two-step verification required, but user interaction is not allowed."];
    v13 = [v10 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200320 userInfo:{objc_msgSend(v11, "dictionaryWithObject:forKey:", v12, *MEMORY[0x29EDB9ED8])}];
    v14 = *(completion + 2);

    v14(completion, v13, 0);
  }
}

uint64_t __103__ACMExternalAppleConnectImpl_authenticationController_perform2StepVerificationWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 && a3 && [objc_msgSend(*(a1 + 32) "uiController")] != 2)
  {
    [objc_msgSend(*(a1 + 32) "components")];
    [*(a1 + 32) signInDialogDidHide];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (uint64_t)authenticationController:(uint64_t)a1 perform2StepVerificationWithRequest:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ACMExternalAppleConnectImpl.m" lineNumber:819 description:@"Invalid parameter"];
}

@end