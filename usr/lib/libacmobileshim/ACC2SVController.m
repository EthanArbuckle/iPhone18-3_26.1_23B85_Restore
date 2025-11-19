@interface ACC2SVController
- (ACCTicketManagerProtocol)ticketManager;
- (id)createCancelError;
- (id)createTrustedDeviceWithDictionary:(id)a3;
- (id)ssoTokenWithResponse:(id)a3 context:(id)a4;
- (id)trustedDevicesFromResponse:(id)a3 withContext:(id)a4;
- (id)uiControllerRealm:(id)a3;
- (id)uiControllerTitle:(id)a3;
- (unint64_t)passcodeLengthFromEncryptedContent:(id)a3 withHmac:(id)a4 context:(id)a5;
- (void)cancel2SVAuthentication;
- (void)cancelWithCompletion:(id)a3;
- (void)dealloc;
- (void)enterAndVerifySecureCodeOfLength:(unint64_t)a3;
- (void)enterCredentials;
- (void)generateAndSendSecCodeToDevice:(id)a3 withCompletion:(id)a4;
- (void)goBackToTrustedDevices;
- (void)handleErrorOnGetTrustedDevices:(id)a3;
- (void)handleErrorOnResendSecurityCode:(id)a3 alertCancelled:(BOOL)a4;
- (void)handleErrorOnSendSecurityCode:(id)a3 alertCancelled:(BOOL)a4;
- (void)hideUIAndReturnError:(id)a3;
- (void)hideUIWithCompletion:(id)a3;
- (void)perform2StepVerificationWithRequest:(id)a3 completion:(id)a4;
- (void)refreshTrustedDevicesList;
- (void)reportError:(id)a3 completionBlock:(id)a4;
- (void)sendVerificationCodeToDevice:(id)a3;
- (void)setSecondFactorAuthUIController:(id)a3;
- (void)start2StepVerificationWithRequest:(id)a3;
- (void)uiController:(id)a3 getImageWithURL:(id)a4 completion:(id)a5;
- (void)uiController:(id)a3 resendVerificationCodeWithCompletion:(id)a4;
- (void)uiControllerCancelGettingImages:(id)a3;
- (void)uiControllerHideViewAnimated:(id)a3;
- (void)uiControllerSetup:(id)a3;
- (void)uiControllerUserIsUnableToReceiveVerificationCode:(id)a3;
- (void)verifySecureCode:(id)a3 withCompletion:(id)a4;
- (void)verifySecurityCodeDidFailWithError:(id)a3;
- (void)verifySecurityCodeDidFinishWithToken:(id)a3;
@end

@implementation ACC2SVController

- (void)dealloc
{
  [(ACC2SVController *)self setSecondFactorAuthUIController:0];
  [(ACC2SVController *)self setDelegate:0];
  [(ACC2SVController *)self setAuthRequest:0];
  [(ACC2SVController *)self setCurrentDevice:0];
  [(ACC2SVController *)self setCompletionBlock:0];
  [(ACC2SVController *)self setTransportController:0];
  v3.receiver = self;
  v3.super_class = ACC2SVController;
  [(ACC2SVController *)&v3 dealloc];
}

- (void)setSecondFactorAuthUIController:(id)a3
{
  secondFactorAuthUIController = self->_secondFactorAuthUIController;
  if (secondFactorAuthUIController != a3)
  {
    [(ACC2SVAuthenticationUIControllerProtocol *)secondFactorAuthUIController setDelegate:0];

    v6 = a3;
    self->_secondFactorAuthUIController = v6;

    [(ACC2SVAuthenticationUIControllerProtocol *)v6 setDelegate:self];
  }
}

- (ACCTicketManagerProtocol)ticketManager
{
  v2 = +[ACCComponents components];

  return [v2 ticketManager];
}

- (void)perform2StepVerificationWithRequest:(id)a3 completion:(id)a4
{
  [(ACC2SVController *)self setCompletionBlock:a4];

  [(ACC2SVController *)self start2StepVerificationWithRequest:a3];
}

- (void)cancelWithCompletion:(id)a3
{
  if ([(ACC2SVController *)self completionBlock])
  {
    v5 = [a3 copy];
    v6 = [(ACC2SVController *)self secondFactorAuthUIController];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __41__ACC2SVController_cancelWithCompletion___block_invoke;
    v8[3] = &unk_29EE91860;
    v8[4] = self;
    v8[5] = v5;
    [(ACC2SVAuthenticationUIControllerProtocol *)v6 hideUIAnimated:0 withCompletion:v8];
  }

  else if (a3)
  {
    v7 = *(a3 + 2);

    v7(a3);
  }
}

uint64_t __41__ACC2SVController_cancelWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];
  (*(v2 + 16))(v2, 0, 0);
  [*(a1 + 32) setCompletionBlock:0];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)hideUIWithCompletion:(id)a3
{
  [(ACC2SVControllerDelegate *)[(ACC2SVController *)self delegate] twoSVControllerWillClose:self];
  v5 = [(ACC2SVController *)self secondFactorAuthUIController];

  [(ACC2SVAuthenticationUIControllerProtocol *)v5 hideUIAnimated:1 withCompletion:a3];
}

- (void)enterCredentials
{
  v3 = [(ACC2SVController *)self secondFactorAuthUIController];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __36__ACC2SVController_enterCredentials__block_invoke;
  v4[3] = &unk_29EE91778;
  v4[4] = self;
  [(ACC2SVAuthenticationUIControllerProtocol *)v3 handleFailoverWithCompletion:v4];
}

uint64_t __36__ACC2SVController_enterCredentials__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 twoSVControllerEnterCredentials:v3];
}

- (void)enterAndVerifySecureCodeOfLength:(unint64_t)a3
{
  v5 = [(ACC2SVController *)self secondFactorAuthUIController];
  v6 = [(ACC2SVController *)self currentDevice];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __53__ACC2SVController_enterAndVerifySecureCodeOfLength___block_invoke;
  v7[3] = &unk_29EE91C08;
  v7[4] = self;
  [(ACC2SVAuthenticationUIControllerProtocol *)v5 enterVerificationCodeWithLength:a3 forDevice:v6 completion:v7];
}

uint64_t __53__ACC2SVController_enterAndVerifySecureCodeOfLength___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 length];
  v5 = *(a1 + 32);
  if (v4)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __53__ACC2SVController_enterAndVerifySecureCodeOfLength___block_invoke_2;
    v7[3] = &unk_29EE91BE0;
    v7[4] = v5;
    return [v5 verifySecureCode:a2 withCompletion:v7];
  }

  else
  {

    return [v5 goBackToTrustedDevices];
  }
}

uint64_t __53__ACC2SVController_enterAndVerifySecureCodeOfLength___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController enterAndVerifySecureCodeOfLength:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 132, 0, "Error %@ occurred while verifying security code.", a3);
    }

    v5 = *(a1 + 32);

    return [v5 verifySecurityCodeDidFailWithError:a3];
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController enterAndVerifySecureCodeOfLength:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 124, 0, "Verify sec code finished successfully.");
    }

    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __53__ACC2SVController_enterAndVerifySecureCodeOfLength___block_invoke_3;
    v9[3] = &unk_29EE918B0;
    v9[4] = v8;
    v9[5] = a2;
    return [v8 hideUIWithCompletion:v9];
  }
}

- (void)sendVerificationCodeToDevice:(id)a3
{
  if (a3)
  {
    if ([a3 isTOTPDevice])
    {
      [(ACC2SVController *)self setCurrentDevice:a3];

      [(ACC2SVController *)self enterAndVerifySecureCodeOfLength:6];
    }

    else
    {
      if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACC2SVController sendVerificationCodeToDevice:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 155, 0, "Send code to device %@.", [a3 deviceDisplayDescription]);
      }

      v5[0] = MEMORY[0x29EDCA5F8];
      v5[1] = 3221225472;
      v5[2] = __49__ACC2SVController_sendVerificationCodeToDevice___block_invoke;
      v5[3] = &unk_29EE91C58;
      v5[4] = self;
      [(ACC2SVController *)self generateAndSendSecCodeToDevice:a3 withCompletion:v5];
    }
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController sendVerificationCodeToDevice:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 176, 0, "2SV authentication is cancelled.");
    }

    [(ACC2SVController *)self cancel2SVAuthentication];
  }
}

uint64_t __49__ACC2SVController_sendVerificationCodeToDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB8FD0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController sendVerificationCodeToDevice:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 164, 0, "Error %@ occurred while sending security code.", a3);
      }
    }

    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __49__ACC2SVController_sendVerificationCodeToDevice___block_invoke_2;
    v8[3] = &unk_29EE91C30;
    v8[4] = v5;
    v8[5] = a3;
    return [v5 reportError:a3 completionBlock:v8];
  }

  else
  {
    v7 = *(a1 + 32);

    return [v7 enterAndVerifySecureCodeOfLength:a2];
  }
}

- (void)goBackToTrustedDevices
{
  if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACC2SVController goBackToTrustedDevices]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 183, 0, "Go back to trusted devices");
  }

  v3 = [(ACC2SVController *)self secondFactorAuthUIController];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __42__ACC2SVController_goBackToTrustedDevices__block_invoke;
  v4[3] = &unk_29EE91C80;
  v4[4] = self;
  [(ACC2SVAuthenticationUIControllerProtocol *)v3 chooseTrustedDeviceWithDeviceList:0 completion:v4];
}

- (id)createCancelError
{
  v2 = MEMORY[0x29EDB9FA0];
  v3 = MEMORY[0x29EDB8DC0];
  v4 = [ACMBaseLocale localizedString:@"Authentication was canceled by user"];
  v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x29EDB9ED8]];

  return [v2 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200050 userInfo:v5];
}

- (void)cancel2SVAuthentication
{
  v3 = [(ACC2SVController *)self createCancelError];

  [(ACC2SVController *)self hideUIAndReturnError:v3];
}

- (void)hideUIAndReturnError:(id)a3
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __41__ACC2SVController_hideUIAndReturnError___block_invoke;
  v3[3] = &unk_29EE918B0;
  v3[4] = self;
  v3[5] = a3;
  [(ACC2SVController *)self hideUIWithCompletion:v3];
}

uint64_t __41__ACC2SVController_hideUIAndReturnError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) completionBlock];
  if (result)
  {
    v3 = [*(a1 + 32) completionBlock];
    (*(v3 + 16))(v3, *(a1 + 40), 0);
    v4 = *(a1 + 32);

    return [v4 setCompletionBlock:0];
  }

  return result;
}

- (unint64_t)passcodeLengthFromEncryptedContent:(id)a3 withHmac:(id)a4 context:(id)a5
{
  if ([a3 length] && objc_msgSend(a4, "length"))
  {
    v9 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] decryptEncryptedContent:a3 withHmac:a4 context:a5];
    if (v9)
    {
      v11 = 100;
      return [objc_msgSend(objc_msgSend(MEMORY[0x29EDBA0C0] propertyListWithData:v9 options:0 format:&v11 error:{0), "objectForKey:", @"sl", "unsignedIntegerValue"}];
    }

    if (qword_2A1EB8FD0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController passcodeLengthFromEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 229, 0, "Decrypted data is empty");
      }
    }
  }

  else if (qword_2A1EB8FD0)
  {
    if ((ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController passcodeLengthFromEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 234, 0, "Invalid Parameters");
    }

    if (![a3 length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController passcodeLengthFromEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 238, 0, "Encrypted data is empty");
    }

    if (![a4 length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController passcodeLengthFromEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 242, 0, "Encrypted content hmac is empty");
    }
  }

  else
  {
    [a3 length];
    [a4 length];
  }

  return 0;
}

- (void)generateAndSendSecCodeToDevice:(id)a3 withCompletion:(id)a4
{
  [(ACC2SVController *)self setCurrentDevice:?];
  v7 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] authContextWithRequest:[(ACC2SVController *)self authRequest] sessionToken:[(ACFMessage *)[(ACC2SVController *)self authRequest] sessionToken]];
  [v7 setPersonID:{-[ACFMessage personId](-[ACC2SVController authRequest](self, "authRequest"), "personId")}];
  [v7 setSelectedDeviceId:{objc_msgSend(a3, "deviceID")}];
  [v7 setSelectedDeviceType:{objc_msgSend(a3, "deviceType")}];
  v8 = [a4 copy];
  v9 = [(ACC2SVController *)self transportController];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __66__ACC2SVController_generateAndSendSecCodeToDevice_withCompletion___block_invoke;
  v10[3] = &unk_29EE91CA8;
  v10[4] = self;
  v10[5] = v7;
  v10[6] = v8;
  [(ACC2SVTransportControllerProtocol *)v9 generateAndSendSecCodeWithContext:v7 completion:v10];
}

uint64_t __66__ACC2SVController_generateAndSendSecCodeToDevice_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController generateAndSendSecCodeToDevice:withCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 270, 0, "Sec code sent successfully. Close Trusted devices screen and show verify code.");
    }

    if ([a2 objectForKey:@"end"] && objc_msgSend(a2, "objectForKey:", @"enh") && objc_msgSend(*(a1 + 32), "passcodeLengthFromEncryptedContent:withHmac:context:", objc_msgSend(a2, "objectForKey:", @"end"), objc_msgSend(a2, "objectForKey:", @"enh"), *(a1 + 40)))
    {
      v4 = *(*(a1 + 48) + 16);
    }

    else
    {
      v6 = *(a1 + 48);
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MEMORY[0x29EDB8DC0];
      v9 = [ACMBaseLocale localizedString:@"Invalid passcode length"];
      [v7 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-101212 userInfo:{objc_msgSend(v8, "dictionaryWithObject:forKey:", v9, *MEMORY[0x29EDB9ED8])}];
      v4 = *(v6 + 16);
    }
  }

  return v4();
}

- (void)verifySecureCode:(id)a3 withCompletion:(id)a4
{
  if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACC2SVController verifySecureCode:withCompletion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 295, 0, "Verify security code.");
  }

  v7 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] authContextWithRequest:[(ACC2SVController *)self authRequest] sessionToken:[(ACFMessage *)[(ACC2SVController *)self authRequest] sessionToken]];
  [v7 setPersonID:{-[ACFMessage personId](-[ACC2SVController authRequest](self, "authRequest"), "personId")}];
  [v7 setSelectedDeviceId:{-[ACC2SVTrustedDeviceObject deviceID](-[ACC2SVController currentDevice](self, "currentDevice"), "deviceID")}];
  [v7 setSelectedDeviceType:{-[ACC2SVTrustedDeviceObject deviceType](-[ACC2SVController currentDevice](self, "currentDevice"), "deviceType")}];
  [v7 setTwoStepVerificationCode:a3];
  v8 = [(ACC2SVController *)self transportController];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __52__ACC2SVController_verifySecureCode_withCompletion___block_invoke;
  v9[3] = &unk_29EE91CA8;
  v9[4] = self;
  v9[5] = v7;
  v9[6] = a4;
  [(ACC2SVTransportControllerProtocol *)v8 verifySecureCodeWithContext:v7 completion:v9];
}

uint64_t __52__ACC2SVController_verifySecureCode_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (![a3 code])
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController verifySecureCode:withCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 306, 0, "Verify sec code finished successfully.");
    }

    if (![*(a1 + 32) ssoTokenWithResponse:a2 context:*(a1 + 40)])
    {
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MEMORY[0x29EDB8DC0];
      v9 = [ACMBaseLocale localizedString:@"Failed to create valid service ticket"];
      [v7 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v8, "dictionaryWithObject:forKey:", v9, *MEMORY[0x29EDB9ED8])}];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)start2StepVerificationWithRequest:(id)a3
{
  [(ACC2SVController *)self setAuthRequest:a3];
  v4 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] authContextWithRequest:[(ACC2SVController *)self authRequest] sessionToken:[(ACFMessage *)[(ACC2SVController *)self authRequest] sessionToken]];
  [v4 setPersonID:{-[ACFMessage personID](-[ACC2SVController authRequest](self, "authRequest"), "personID")}];
  v5 = [(ACC2SVController *)self transportController];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __54__ACC2SVController_start2StepVerificationWithRequest___block_invoke;
  v6[3] = &unk_29EE91CF8;
  v6[4] = self;
  v6[5] = v4;
  [(ACC2SVTransportControllerProtocol *)v5 loadTrustedDevicesWithContext:v4 completion:v6];
}

uint64_t __54__ACC2SVController_start2StepVerificationWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController start2StepVerificationWithRequest:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 351, 0, "Error %@ occurred while getting trusted devices.", a3);
    }

    v5 = *(a1 + 32);

    return [v5 handleErrorOnGetTrustedDevices:a3];
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController start2StepVerificationWithRequest:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 331, 0, "Show trusted devices list screen.");
    }

    return [objc_msgSend(*(a1 + 32) "delegate")];
  }
}

uint64_t __54__ACC2SVController_start2StepVerificationWithRequest___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) trustedDevicesFromResponse:*(a1 + 40) withContext:*(a1 + 48)];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) secondFactorAuthUIController];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __54__ACC2SVController_start2StepVerificationWithRequest___block_invoke_3;
    v7[3] = &unk_29EE91C80;
    v7[4] = *(a1 + 32);
    return [v3 chooseTrustedDeviceWithDeviceList:v2 completion:v7];
  }

  else
  {
    if (qword_2A1EB8FD0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController start2StepVerificationWithRequest:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 344, 0, "Devices list is empty..");
      }
    }

    v5 = *(a1 + 32);
    v6 = MEMORY[0x29EDB9FA0];
    v8 = *MEMORY[0x29EDB9ED8];
    v9[0] = [ACMBaseLocale localizedString:@"Device list is empty."];
    return [v5 hideUIAndReturnError:{objc_msgSend(v6, "errorWithDomain:code:userInfo:", @"ACCAppleConnectErrorDomain", -101112, objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1))}];
  }
}

- (void)handleErrorOnGetTrustedDevices:(id)a3
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __51__ACC2SVController_handleErrorOnGetTrustedDevices___block_invoke;
  v3[3] = &unk_29EE91D20;
  v3[4] = self;
  [(ACC2SVController *)self reportError:a3 completionBlock:v3];
}

- (void)refreshTrustedDevicesList
{
  v3 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] authContextWithRequest:[(ACC2SVController *)self authRequest] sessionToken:[(ACFMessage *)[(ACC2SVController *)self authRequest] sessionToken]];
  [v3 setPersonID:{-[ACFMessage personID](-[ACC2SVController authRequest](self, "authRequest"), "personID")}];
  v4 = [(ACC2SVController *)self transportController];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __45__ACC2SVController_refreshTrustedDevicesList__block_invoke;
  v5[3] = &unk_29EE91CF8;
  v5[4] = self;
  v5[5] = v3;
  [(ACC2SVTransportControllerProtocol *)v4 loadTrustedDevicesWithContext:v3 completion:v5];
}

void __45__ACC2SVController_refreshTrustedDevicesList__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB8FD0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController refreshTrustedDevicesList]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 381, 0, "Error %@ occurred while refreshing trusted devices. No need to do anything", a3);
      }
    }
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController refreshTrustedDevicesList]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 374, 0, "Refresh the trusted devices list.");
    }

    v6 = [*(a1 + 32) trustedDevicesFromResponse:a2 withContext:*(a1 + 40)];
    v7 = [*(a1 + 32) secondFactorAuthUIController];

    [v7 resetTrustedDevicesViewControllerWithDeviceList:v6];
  }
}

- (id)createTrustedDeviceWithDictionary:(id)a3
{
  v3 = [objc_alloc(-[ACC2SVController deviceObjectClass](self "deviceObjectClass"))];

  return v3;
}

- (id)trustedDevicesFromResponse:(id)a3 withContext:(id)a4
{
  v25 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = [a3 objectForKey:@"end"];
    v8 = [a3 objectForKey:@"enh"];
    if ([v7 length] && objc_msgSend(v8, "length"))
    {
      v9 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] decryptEncryptedContent:v7 withHmac:v8 context:a4];
      if ([v9 length])
      {
        v23 = 100;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [objc_msgSend(MEMORY[0x29EDBA0C0] propertyListWithData:v9 options:0 format:&v23 error:{0), "objectForKey:", @"td", 0}];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v20;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              if (!v13)
              {
                v13 = [MEMORY[0x29EDB8DE8] array];
              }

              [v13 addObject:{-[ACC2SVController createTrustedDeviceWithDictionary:](self, "createTrustedDeviceWithDictionary:", v16)}];
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
          }

          while (v12);
          goto LABEL_33;
        }
      }

      else if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController trustedDevicesFromResponse:withContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 422, 0, "Decrypted data is empty");
      }
    }

    else if (qword_2A1EB8FD0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController trustedDevicesFromResponse:withContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 427, 0, "Invalid Parameters");
      }

      if (![v7 length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController trustedDevicesFromResponse:withContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 431, 0, "Devices encrypted data is empty");
      }

      if (![v8 length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACC2SVController trustedDevicesFromResponse:withContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 435, 0, "Device data hmac is empty");
      }
    }

    else
    {
      [v7 length];
      [v8 length];
    }

    v13 = 0;
LABEL_33:
    v18 = [MEMORY[0x29EDBA0F0] sortDescriptorWithKey:@"lastUseDate" ascending:0];
    return [v13 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObject:", v18)}];
  }

  if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACC2SVController trustedDevicesFromResponse:withContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 445, 0, "Trusted Devices Response is empty");
  }

  return 0;
}

- (id)ssoTokenWithResponse:(id)a3 context:(id)a4
{
  v5 = -[ACCTicketManagerProtocol createSSOTokenWithContent:context:](-[ACC2SVController ticketManager](self, "ticketManager"), "createSSOTokenWithContent:context:", -[ACCTicketManagerProtocol decryptEncryptedContent:withHmac:context:](-[ACC2SVController ticketManager](self, "ticketManager"), "decryptEncryptedContent:withHmac:context:", [a3 objectForKey:@"pt"], objc_msgSend(a3, "objectForKey:", @"ph"), a4), a4);
  v6 = [(ACCTicketManagerProtocol *)[(ACC2SVController *)self ticketManager] serviceTicketStringWithRequest:[(ACC2SVController *)self authRequest] ssoToken:v5];
  if (v6)
  {
    [(ACC2SVController *)self updateSSOToken:v5 withServiceTicket:v6 request:[(ACC2SVController *)self authRequest]];
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController ssoTokenWithResponse:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 461, 0, "Failed to create valid serviceTicket");
    }

    return 0;
  }

  return v5;
}

- (void)handleErrorOnSendSecurityCode:(id)a3 alertCancelled:(BOOL)a4
{
  v5 = [a3 code] + 200270;
  if (v5 > 0x3C)
  {
    goto LABEL_16;
  }

  if (((1 << v5) & 0x1004000000000001) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController handleErrorOnSendSecurityCode:alertCancelled:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 478, 0, "Session expired. Ask user to sign in again.");
    }

    [(ACC2SVController *)self enterCredentials];
    return;
  }

  if (((1 << v5) & 0x10040000000) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController handleErrorOnSendSecurityCode:alertCancelled:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 485, 0, "Device not available. Refresh list of trusted devices");
    }

    [(ACC2SVController *)self refreshTrustedDevicesList];
  }

  else
  {
LABEL_16:
    v6 = [(ACC2SVController *)self secondFactorAuthUIController];

    [(ACC2SVAuthenticationUIControllerProtocol *)v6 resetTrustedDevicesViewControllerWithDeviceList:0];
  }
}

- (void)handleErrorOnResendSecurityCode:(id)a3 alertCancelled:(BOOL)a4
{
  v5 = [a3 code] + 200270;
  if (v5 > 0x3C)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x1004000000000001) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController handleErrorOnResendSecurityCode:alertCancelled:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 502, 0, "Session expired on resend code. Ask user to sign in again.");
    }

    [(ACC2SVController *)self enterCredentials];
    return;
  }

  if (((1 << v5) & 0x10040000000) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController handleErrorOnResendSecurityCode:alertCancelled:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 509, 0, "Device not available on resend code. Show trusted devices");
    }

    v6 = [(ACC2SVController *)self secondFactorAuthUIController];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __67__ACC2SVController_handleErrorOnResendSecurityCode_alertCancelled___block_invoke;
    v8[3] = &unk_29EE91778;
    v8[4] = self;
    [(ACC2SVAuthenticationUIControllerProtocol *)v6 handleFailoverWithCompletion:v8];
  }

  else
  {
LABEL_14:
    v7 = [(ACC2SVController *)self secondFactorAuthUIController];

    [(ACC2SVAuthenticationUIControllerProtocol *)v7 resetCodeVerificationViewController];
  }
}

- (void)verifySecurityCodeDidFinishWithToken:(id)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x29EDB9FA0];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = [ACMBaseLocale localizedString:@"Two-step verification response is empty."];
    v5 = [v6 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v7, "dictionaryWithObject:forKey:", v8, *MEMORY[0x29EDB9ED8])}];
  }

  if ([(ACC2SVController *)self completionBlock])
  {
    v9 = [(ACC2SVController *)self completionBlock];
    v9[2](v9, v5, a3);

    [(ACC2SVController *)self setCompletionBlock:0];
  }
}

- (void)verifySecurityCodeDidFailWithError:(id)a3
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __55__ACC2SVController_verifySecurityCodeDidFailWithError___block_invoke;
  v3[3] = &unk_29EE91C30;
  v3[4] = a3;
  v3[5] = self;
  [(ACC2SVController *)self reportError:a3 completionBlock:v3];
}

uint64_t __55__ACC2SVController_verifySecurityCodeDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) code] + 200270;
  if (v2 > 0x3C)
  {
    goto LABEL_16;
  }

  if (((1 << v2) & 0x1004000000000001) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController verifySecurityCodeDidFailWithError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 547, 0, "Session expired on verify code. Ask user to sign in again.");
    }

    v3 = *(a1 + 40);

    return [v3 enterCredentials];
  }

  if (((1 << v2) & 0x10000000400) != 0)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController verifySecurityCodeDidFailWithError:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 554, 0, "Device not available on verify code. Show list of trusted devices");
    }

    v5 = *(a1 + 40);

    return [v5 goBackToTrustedDevices];
  }

  else
  {
LABEL_16:
    v6 = [*(a1 + 40) secondFactorAuthUIController];

    return [v6 resetCodeVerificationViewController];
  }
}

- (void)reportError:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  if ([a3 code] == -200240 && !-[ACC2SVTrustedDeviceObject isTOTPDevice](-[ACC2SVController currentDevice](self, "currentDevice"), "isTOTPDevice") && !-[ACC2SVTrustedDeviceObject isSMSDevice](-[ACC2SVController currentDevice](self, "currentDevice"), "isSMSDevice"))
  {
    v7 = [objc_msgSend(v5 "userInfo")];
    v8 = [ACMBaseLocale localizedString:@"You have sent too many codes to verify your device. Please try again later."];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x29EDB9ED8]];
    v5 = [MEMORY[0x29EDB9FA0] errorWithDomain:objc_msgSend(v5 code:"domain") userInfo:{objc_msgSend(v5, "code"), v7}];
  }

  v9 = [(ACC2SVController *)self secondFactorAuthUIController];

  [(ACC2SVAuthenticationUIControllerProtocol *)v9 showAlertWithError:v5 completion:a4];
}

- (void)uiController:(id)a3 resendVerificationCodeWithCompletion:(id)a4
{
  if ([(ACC2SVController *)self currentDevice])
  {
    v6 = [a4 copy];
    v7 = [(ACC2SVController *)self currentDevice];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __70__ACC2SVController_uiController_resendVerificationCodeWithCompletion___block_invoke;
    v9[3] = &unk_29EE91D48;
    v9[4] = self;
    v9[5] = v6;
    [(ACC2SVController *)self generateAndSendSecCodeToDevice:v7 withCompletion:v9];
  }

  else if (a4)
  {
    v8 = *(a4 + 2);

    v8(a4, 0);
  }
}

uint64_t __70__ACC2SVController_uiController_resendVerificationCodeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACC2SVController uiController:resendVerificationCodeWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 601, 0, "Error %@ occurred while resend security code.", a3);
    }

    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __70__ACC2SVController_uiController_resendVerificationCodeWithCompletion___block_invoke_2;
    v7[3] = &unk_29EE91C30;
    v7[4] = v5;
    v7[5] = a3;
    [v5 reportError:a3 completionBlock:v7];
  }

  else
  {
    if (qword_2A1EB8FD0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACC2SVController uiController:resendVerificationCodeWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACC2SVController.m", 596, 0, "Sec code resent successfully. Reset code verify screen.");
    }

    [objc_msgSend(*(a1 + 32) "secondFactorAuthUIController")];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

- (void)uiControllerUserIsUnableToReceiveVerificationCode:(id)a3
{
  v4 = [(ACC2SVController *)self delegate];
  v5 = [(ACFMessage *)[(ACC2SVController *)self authRequest] realm];

  [(ACC2SVControllerDelegate *)v4 twoSVController:self openMyAppleConnectForRealm:v5];
}

- (void)uiController:(id)a3 getImageWithURL:(id)a4 completion:(id)a5
{
  v7 = [(ACC2SVController *)self transportController];

  [(ACC2SVTransportControllerProtocol *)v7 getImageWithURL:a4 completion:a5];
}

- (void)uiControllerCancelGettingImages:(id)a3
{
  v3 = [(ACC2SVController *)self transportController];

  [(ACC2SVTransportControllerProtocol *)v3 cancelImageFetching];
}

- (void)uiControllerHideViewAnimated:(id)a3
{
  v4 = [(ACC2SVController *)self delegate];

  [(ACC2SVControllerDelegate *)v4 twoSVControllerWillClose:self];
}

- (void)uiControllerSetup:(id)a3
{
  v4 = [(ACC2SVController *)self delegate];
  v5 = [(ACFMessage *)[(ACC2SVController *)self authRequest] realm];

  [(ACC2SVControllerDelegate *)v4 twoSVController:self openMyAppleConnectForRealm:v5];
}

- (id)uiControllerTitle:(id)a3
{
  if (![(ACFMessage *)[(ACC2SVController *)self authRequest] applicationName])
  {
    return &stru_2A1EB91A0;
  }

  v4 = [(ACC2SVController *)self authRequest];

  return [(ACFMessage *)v4 applicationName];
}

- (id)uiControllerRealm:(id)a3
{
  v3 = [(ACC2SVController *)self authRequest];

  return [(ACFMessage *)v3 realm];
}

@end