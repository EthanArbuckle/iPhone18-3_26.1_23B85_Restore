@interface ACMExternalAuthenticationController
- (ACCTicketManagerProtocol)ticketManager;
- (ACFKeychainManagerProtocol)keychainManager;
- (ACFLocalAuthenticationContextProtocol)localAuthenticationContext;
- (BOOL)isCriticalError:(id)error;
- (BOOL)isValidToken:(id)token duration:(double)duration;
- (id)convertLAError:(id)error;
- (id)tgtStoragePolicy;
- (id)tokenWithRequest:(id)request;
- (void)authenticate2SVWithSSOTokenIfRequired:(id)required request:(id)request completion:(id)completion;
- (void)authenticateWithRequest:(id)request password:(id)password completion:(id)completion;
- (void)dealloc;
- (void)evaluateSSOWithRequest:(id)request completion:(id)completion;
- (void)evaluateTouchIDIfNeededWithSSOToken:(id)token request:(id)request completion:(id)completion;
- (void)evaluateTouchIDWithToken:(id)token request:(id)request completion:(id)completion;
- (void)saveSSOIfNeeded:(id)needed withRequest:(id)request;
- (void)updateAuthContext:(id)context;
- (void)verifyServiceTicketWithRequest:(id)request completion:(id)completion;
- (void)verifyToken:(id)token withRequest:(id)request completion:(id)completion;
@end

@implementation ACMExternalAuthenticationController

- (void)dealloc
{
  [(ACMExternalAuthenticationController *)self setLocalAuthenticationContext:0];
  v3.receiver = self;
  v3.super_class = ACMExternalAuthenticationController;
  [(ACMExternalAuthenticationController *)&v3 dealloc];
}

- (ACFKeychainManagerProtocol)keychainManager
{
  components = [(ACMExternalAuthenticationController *)self components];

  return [(ACFComponents *)components keychainManager];
}

- (ACCTicketManagerProtocol)ticketManager
{
  components = [(ACMExternalAuthenticationController *)self components];

  return [(ACCComponents *)components ticketManager];
}

- (ACFLocalAuthenticationContextProtocol)localAuthenticationContext
{
  result = self->_localAuthenticationContext;
  if (!result)
  {
    result = [(ACFComponents *)[(ACMExternalAuthenticationController *)self components] createLocalAuthenticationContext];
    self->_localAuthenticationContext = result;
  }

  return result;
}

- (id)tgtStoragePolicy
{
  components = [(ACMExternalAuthenticationController *)self components];

  return [(ACCComponents *)components tgtStoragePolicy];
}

- (void)evaluateTouchIDWithToken:(id)token request:(id)request completion:(id)completion
{
  localAuthenticationContext = [(ACMExternalAuthenticationController *)self localAuthenticationContext];
  -[ACFLocalAuthenticationContextProtocol setLocalizedReason:](localAuthenticationContext, "setLocalizedReason:", -[ACMExternalAuthenticationController localizedReasonForUsername:](self, "localizedReasonForUsername:", [objc_msgSend(token "principal")]));
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __83__ACMExternalAuthenticationController_evaluateTouchIDWithToken_request_completion___block_invoke;
  v10[3] = &unk_29EE91E30;
  v10[4] = self;
  v10[5] = localAuthenticationContext;
  v10[7] = token;
  v10[8] = completion;
  v10[6] = request;
  [(ACFLocalAuthenticationContextProtocol *)localAuthenticationContext evaluatePolicy:1 completion:v10];
}

uint64_t __83__ACMExternalAuthenticationController_evaluateTouchIDWithToken_request_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) convertLAError:?];
  }

  [*(a1 + 40) reset];
  if ([*(a1 + 32) isCriticalError:v3])
  {
    [*(a1 + 32) cleanSSOStorageWithRequest:*(a1 + 48)];
  }

  v4 = *(*(a1 + 64) + 16);

  return v4();
}

- (void)evaluateTouchIDIfNeededWithSSOToken:(id)token request:(id)request completion:(id)completion
{
  v8 = [completion copy];
  v9 = [request copy];
  [v9 setPrincipal:{objc_msgSend(token, "principal")}];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __94__ACMExternalAuthenticationController_evaluateTouchIDIfNeededWithSSOToken_request_completion___block_invoke;
  v10[3] = &unk_29EE91E80;
  v10[4] = self;
  v10[5] = token;
  v10[6] = v9;
  v10[7] = v8;
  [(ACMExternalAuthenticationController *)self verifyToken:token withRequest:v9 completion:v10];
}

uint64_t __94__ACMExternalAuthenticationController_evaluateTouchIDIfNeededWithSSOToken_request_completion___block_invoke(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "personDSID")])
  {
    return [*(a1 + 32) evaluateTouchIDWithToken:*(a1 + 40) request:MEMORY[0x29EDCA5F8] completion:{3221225472, __94__ACMExternalAuthenticationController_evaluateTouchIDIfNeededWithSSOToken_request_completion___block_invoke_2, &unk_29EE91E58, *(a1 + 32), *(a1 + 48), a2, *(a1 + 56)}];
  }

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

uint64_t __94__ACMExternalAuthenticationController_evaluateTouchIDIfNeededWithSSOToken_request_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 32) isValidToken:0.0 duration:?] && !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "components"), "ticketManager"), "serviceTicketStringWithRequest:ssoToken:", *(a1 + 40), a3), "length"))
  {
    v6 = MEMORY[0x29EDB9FA0];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
    a2 = [v6 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v7, "dictionaryWithObjectsAndKeys:", v8, *MEMORY[0x29EDB9ED8], 0)}];
  }

  if (a3 && !a2)
  {
    v9 = [objc_msgSend(*(a1 + 48) "userInfo")];
    if ([v9 length])
    {
      [a3 setSessionToken:v9];
      v10 = MEMORY[0x29EDB8DB0];
      [objc_msgSend(objc_msgSend(*(a1 + 48) "userInfo")];
      [a3 setExpirationDate:{objc_msgSend(v10, "dateWithTimeIntervalSince1970:", v11 / 1000.0)}];
      [objc_msgSend(objc_msgSend(*(a1 + 32) "components")];
    }

    else if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMExternalAuthenticationController evaluateTouchIDIfNeededWithSSOToken:request:completion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 137, 0, "Server did not return new session");
    }
  }

  v12 = *(*(a1 + 56) + 16);

  return v12();
}

- (void)authenticate2SVWithSSOTokenIfRequired:(id)required request:(id)request completion:(id)completion
{
  if ([objc_msgSend(required "isTwoStepVerificationRequired")])
  {
    [request setPersonID:{objc_msgSend(required, "personID")}];
    [request setSessionToken:{objc_msgSend(required, "sessionToken")}];
    longLiveSession = [required longLiveSession];
    delegate = [(ACMExternalAuthenticationController *)self delegate];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __96__ACMExternalAuthenticationController_authenticate2SVWithSSOTokenIfRequired_request_completion___block_invoke;
    v12[3] = &unk_29EE91EA8;
    v13 = longLiveSession;
    v12[4] = completion;
    [(ACMExternalAuthenticationControllerDelegate *)delegate authenticationController:self perform2StepVerificationWithRequest:request completion:v12];
  }

  else
  {
    if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMExternalAuthenticationController authenticate2SVWithSSOTokenIfRequired:request:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 166, 0, "Two-step verification is not required");
    }

    v11 = *(completion + 2);

    v11(completion, 0, required);
  }
}

uint64_t __96__ACMExternalAuthenticationController_authenticate2SVWithSSOTokenIfRequired_request_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 setLongLiveSession:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)verifyToken:(id)token withRequest:(id)request completion:(id)completion
{
  if (!completion)
  {
    [ACMExternalAuthenticationController verifyToken:withRequest:completion:];
  }

  v9 = +[(ACFMessage *)ACMMessage];
  [v9 setUserName:{objc_msgSend(objc_msgSend(token, "principal"), "userName")}];
  [v9 setRealm:{objc_msgSend(request, "realm")}];
  [v9 setAppID:{objc_msgSend(request, "appID")}];
  [v9 setAppIDKey:{objc_msgSend(request, "appIDKey")}];
  [v9 setToken:{-[ACCTicketManagerProtocol serviceTicketStringWithRequest:ssoToken:](-[ACCComponents ticketManager](-[ACMExternalAuthenticationController components](self, "components"), "ticketManager"), "serviceTicketStringWithRequest:ssoToken:", request, token)}];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __74__ACMExternalAuthenticationController_verifyToken_withRequest_completion___block_invoke;
  v10[3] = &unk_29EE91ED0;
  v10[4] = self;
  v10[5] = request;
  v10[6] = completion;
  [(ACMExternalAuthenticationController *)self verifyServiceTicketWithRequest:v9 completion:v10];
}

uint64_t __74__ACMExternalAuthenticationController_verifyToken_withRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x10) != 0)
    {
      ACFLog(4, "[ACMExternalAuthenticationController verifyToken:withRequest:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 186, 0, "Error: ", a2);
    }

    if ([*(a1 + 32) isCriticalError:a2])
    {
      [*(a1 + 32) cleanSSOStorageWithRequest:*(a1 + 40)];
    }
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)evaluateSSOWithRequest:(id)request completion:(id)completion
{
  if (!completion)
  {
    [ACMExternalAuthenticationController evaluateSSOWithRequest:completion:];
  }

  if ([request canUseTouchID])
  {
    v10 = 0;
    if ([(ACFLocalAuthenticationContextProtocol *)[(ACMExternalAuthenticationController *)self localAuthenticationContext] canEvaluatePolicy:1 error:&v10])
    {
      v7 = [(ACMExternalAuthenticationController *)self tokenWithRequest:request];
      if ([(ACMExternalAuthenticationController *)self isValidToken:v7 duration:60.0])
      {
        v9[0] = MEMORY[0x29EDCA5F8];
        v9[1] = 3221225472;
        v9[2] = __73__ACMExternalAuthenticationController_evaluateSSOWithRequest_completion___block_invoke;
        v9[3] = &unk_29EE918F8;
        v9[4] = request;
        v9[5] = completion;
        [(ACMExternalAuthenticationController *)self evaluateTouchIDIfNeededWithSSOToken:v7 request:request completion:v9];
        return;
      }

      if (v7)
      {
        [(ACMExternalAuthenticationController *)self cleanSSOStorageWithRequest:request];
      }
    }

    else if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x10) != 0)
    {
      ACFLog(4, "[ACMExternalAuthenticationController evaluateSSOWithRequest:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 229, 0, "Local Authentication error: %@", v10);
    }

    (*(completion + 2))(completion, 0, 0);
  }

  else
  {
    v8 = *(completion + 2);

    v8(completion, 0, 0);
  }
}

uint64_t __73__ACMExternalAuthenticationController_evaluateSSOWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    [*(a1 + 32) setPrincipal:{objc_msgSend(a3, "principal")}];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)authenticateWithRequest:(id)request password:(id)password completion:(id)completion
{
  if (!completion)
  {
    [ACMExternalAuthenticationController authenticateWithRequest:password:completion:];
  }

  v9 = [(ACCTicketManagerProtocol *)[(ACCComponents *)[(ACMExternalAuthenticationController *)self components] ticketManager] authContextWithRequest:request keyCode:password authenticationType:0];
  [(ACMExternalAuthenticationController *)self updateAuthContext:v9];
  [(ACCTicketManagerProtocol *)[(ACCComponents *)[(ACMExternalAuthenticationController *)self components] ticketManager] updateContextWithClientSecretIfAny:v9];
  v10 = [(ACCComponents *)[(ACMExternalAuthenticationController *)self components] createHandlerWithClass:objc_opt_class() context:v9];
  if ([request serverResponseTimeout])
  {
    [objc_msgSend(request "serverResponseTimeout")];
    [objc_msgSend(v10 "transport")];
  }

  ticketManager = [(ACCComponents *)[(ACMExternalAuthenticationController *)self components] ticketManager];
  v13 = [completion copy];
  delegate = [(ACMExternalAuthenticationController *)self delegate];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __83__ACMExternalAuthenticationController_authenticateWithRequest_password_completion___block_invoke;
  v15[3] = &unk_29EE91F20;
  v15[4] = ticketManager;
  v15[5] = v9;
  v15[6] = self;
  v15[7] = request;
  v15[8] = v13;
  [(ACMExternalAuthenticationControllerDelegate *)delegate authenticationController:self scheduleHandler:v10 withCompletion:v15];
}

uint64_t __83__ACMExternalAuthenticationController_authenticateWithRequest_password_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMExternalAuthenticationController authenticateWithRequest:password:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 278, 0, "Did receive authentication error: %@", a3);
    }

LABEL_12:
    v13 = *(*(a1 + 64) + 16);

    return v13();
  }

  if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACMExternalAuthenticationController authenticateWithRequest:password:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 260, 0, "Did receive authentication response");
  }

  v6 = [*(a1 + 32) createSSOTokenWithContent:objc_msgSend(*(a1 + 32) context:{"decryptEncryptedContent:withHmac:context:", objc_msgSend(a2, "objectForKey:", @"pt", objc_msgSend(a2, "objectForKey:", @"ph", *(a1 + 40)), *(a1 + 40)}];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __83__ACMExternalAuthenticationController_authenticateWithRequest_password_completion___block_invoke_2;
    v14[3] = &unk_29EE91EF8;
    v14[4] = v8;
    v15 = *(a1 + 56);
    return [v8 authenticate2SVWithSSOTokenIfRequired:v7 request:v15 completion:v14];
  }

  v10 = MEMORY[0x29EDB9FA0];
  v11 = MEMORY[0x29EDB8DC0];
  v12 = [ACMBaseLocale localizedString:@"Failed to create valid SSO token"];
  result = [v10 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v11, "dictionaryWithObject:forKey:", v12, *MEMORY[0x29EDB9ED8])}];
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t __83__ACMExternalAuthenticationController_authenticateWithRequest_password_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) saveSSOIfNeeded:a3 withRequest:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)updateAuthContext:(id)context
{
  if ([(ACFLocalAuthenticationContextProtocol *)[(ACMExternalAuthenticationController *)self localAuthenticationContext] canEvaluatePolicy:1 error:0])
  {
    v4 = MEMORY[0x29EDB8EB0];

    [context setTouchIDSupport:v4];
  }
}

- (void)verifyServiceTicketWithRequest:(id)request completion:(id)completion
{
  if (!completion)
  {
    [ACMExternalAuthenticationController verifyServiceTicketWithRequest:completion:];
  }

  if ([request appID] && objc_msgSend(objc_msgSend(request, "appIDKey"), "length"))
  {
    if ([objc_msgSend(request "token")])
    {
      goto LABEL_15;
    }

    v7 = @"Invalid Data Token. Data Token for verify is not valid.";
  }

  else
  {
    v7 = @"Invalid Parameters. Some of input parameters are set incorrectly.";
  }

  v8 = MEMORY[0x29EDB9FA0];
  v9 = MEMORY[0x29EDB8DC0];
  v10 = [ACMBaseLocale localizedString:v7];
  v11 = [v8 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200190 userInfo:{objc_msgSend(v9, "dictionaryWithObject:forKey:", v10, *MEMORY[0x29EDB9ED8])}];
  if (v11)
  {
    v12 = v11;
    if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAuthenticationController verifyServiceTicketWithRequest:completion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 312, 0, "Reporting delegate about error %@", v12);
    }

    v13 = *(completion + 2);

    v13(completion, v12, 0);
    return;
  }

LABEL_15:
  v14 = [(ACCTicketManagerProtocol *)[(ACCComponents *)[(ACMExternalAuthenticationController *)self components] ticketManager] authContextWithRequest:request];
  [(ACMExternalAuthenticationController *)self updateAuthContext:v14];
  v15 = [(ACCComponents *)[(ACMExternalAuthenticationController *)self components] createHandlerWithClass:objc_opt_class() context:v14];
  if ([request serverResponseTimeout])
  {
    [objc_msgSend(request "serverResponseTimeout")];
    [objc_msgSend(v15 "transport")];
  }

  delegate = [(ACMExternalAuthenticationController *)self delegate];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __81__ACMExternalAuthenticationController_verifyServiceTicketWithRequest_completion___block_invoke;
  v18[3] = &unk_29EE91888;
  v18[4] = completion;
  [(ACMExternalAuthenticationControllerDelegate *)delegate authenticationController:self scheduleHandler:v15 withCompletion:v18];
}

uint64_t __81__ACMExternalAuthenticationController_verifyServiceTicketWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_2A1EB9010 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACMExternalAuthenticationController verifyServiceTicketWithRequest:completion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 327, 0, "Response is received");
  }

  if (a3)
  {
    if ([a3 code] == -200200)
    {
      v6 = MEMORY[0x29EDB9FA0];
      v7 = MEMORY[0x29EDB8DC0];
      v8 = *MEMORY[0x29EDB9F18];
      v9 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
      [v6 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v7, "dictionaryWithObjectsAndKeys:", a3, v8, v9, *MEMORY[0x29EDB9ED8], 0)}];
    }
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setRawResponseData:a2];
    [v10 setUserInfo:a2];
  }

  v11 = *(*(a1 + 32) + 16);

  return v11();
}

- (BOOL)isValidToken:(id)token duration:(double)duration
{
  if (!token)
  {
    return 0;
  }

  [objc_msgSend(token "expirationDate")];
  return v5 > duration;
}

- (id)convertLAError:(id)error
{
  code = [error code];
  v5 = MEMORY[0x29EDB9FA0];
  switch(code)
  {
    case -4:
      v6 = MEMORY[0x29EDB8DC0];
      v7 = @"Authentication was canceled by system";
      goto LABEL_7;
    case -3:
      v8 = MEMORY[0x29EDB9FA0];
      v9 = -600182;
      v10 = 0;
      goto LABEL_9;
    case -2:
      v6 = MEMORY[0x29EDB8DC0];
      v7 = @"Authentication was canceled by user";
LABEL_7:
      v11 = [ACMBaseLocale localizedString:v7];
      v10 = [v6 dictionaryWithObject:v11 forKey:*MEMORY[0x29EDB9ED8]];
      v8 = v5;
      v9 = -200050;
      goto LABEL_9;
  }

  v12 = MEMORY[0x29EDB8DC0];
  v13 = *MEMORY[0x29EDB9F18];
  v14 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
  v10 = [v12 dictionaryWithObjectsAndKeys:{error, v13, v14, *MEMORY[0x29EDB9ED8], 0}];
  v9 = -200200;
  v8 = v5;
LABEL_9:

  return [v8 errorWithDomain:@"ACCAppleConnectErrorDomain" code:v9 userInfo:v10];
}

- (BOOL)isCriticalError:(id)error
{
  if (!error)
  {
    return 0;
  }

  code = [error code];
  result = 1;
  if (code > -100402)
  {
    if ((code + 100401) >= 2 && code)
    {
      return result;
    }

    return 0;
  }

  if (code == -600182 || code == -200050)
  {
    return 0;
  }

  return result;
}

- (id)tokenWithRequest:(id)request
{
  v3 = -[ACCTicketManagerProtocol fetchSSOTokenForPrincipal:](-[ACMExternalAuthenticationController ticketManager](self, "ticketManager"), "fetchSSOTokenForPrincipal:", [request principal]);
  [v3 setLongLiveSession:1];
  return v3;
}

- (void)saveSSOIfNeeded:(id)needed withRequest:(id)request
{
  if (needed && [needed longLiveSession])
  {
    if (![(ACMExternalAuthenticationController *)self localAuthenticationContext])
    {
      [ACMExternalAuthenticationController saveSSOIfNeeded:withRequest:];
    }

    v7 = 0;
    if ([(ACFLocalAuthenticationContextProtocol *)[(ACMExternalAuthenticationController *)self localAuthenticationContext] canEvaluatePolicy:1 error:&v7])
    {
      if ([objc_msgSend(objc_msgSend(needed "principal")])
      {
        [(ACCTicketManagerProtocol *)[(ACMExternalAuthenticationController *)self ticketManager] storeSSOToken:needed];
      }
    }

    else
    {
      if (qword_2A1EB9010 && v7 && (ACFLogSettingsGetLevelMask() & 0x10) != 0)
      {
        ACFLog(4, "[ACMExternalAuthenticationController saveSSOIfNeeded:withRequest:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAuthenticationController.m", 439, 0, "Local Authentication error: %@", v7);
      }

      [(ACMExternalAuthenticationController *)self cleanSSOStorageWithRequest:request];
    }
  }
}

- (uint64_t)verifyToken:withRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)evaluateSSOWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)authenticateWithRequest:password:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)verifyServiceTicketWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)saveSSOIfNeeded:withRequest:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end