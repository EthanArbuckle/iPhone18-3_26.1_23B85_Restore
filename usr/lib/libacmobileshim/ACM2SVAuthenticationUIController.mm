@interface ACM2SVAuthenticationUIController
- (ACM2SVAuthenticationUIController)initWithParentViewController:(id)controller;
- (ACM2SVCodeVerificationViewController)codeVerificationViewController;
- (ACM2SVTrustedDevicesViewController)trustedDevicesViewController;
- (UIColor)backgroundColor;
- (UIColor)labelTextColor;
- (UIColor)textColor;
- (int64_t)statusBarStyle;
- (void)cancelInProgressImageDownloads;
- (void)chooseTrustedDeviceWithDeviceList:(id)list completion:(id)completion;
- (void)codeVerificationViewControllerNeedsResendCode:(id)code;
- (void)dealloc;
- (void)downloadImageWithURL:(id)l completionBlock:(id)block;
- (void)enterVerificationCodeWithLength:(unint64_t)length forDevice:(id)device completion:(id)completion;
- (void)hideEnterVerificationCodeViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)hideTrustedDevicesViewControllerAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)hideUIAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)resetCodeVerificationViewController;
- (void)resetTrustedDevicesViewControllerWithDeviceList:(id)list;
- (void)showAlertWithError:(id)error completion:(id)completion;
- (void)trustedDevicesViewControllerDidSelectUnableReceiveMessages:(id)messages;
- (void)trustedDevicesViewControllerNeedsRefresh:(id)refresh;
@end

@implementation ACM2SVAuthenticationUIController

- (ACM2SVAuthenticationUIController)initWithParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ACM2SVAuthenticationUIController;
  v4 = [(ACM2SVAuthenticationUIController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACM2SVAuthenticationUIController *)v4 setParentViewController:controller];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_trustedDevicesViewController)
  {
    [(ACM2SVTrustedDevicesViewController *)[(ACM2SVAuthenticationUIController *)self trustedDevicesViewController] setDelegate:0];
    [(ACM2SVAuthenticationUIController *)self setTrustedDevicesViewController:0];
  }

  if (self->_codeVerificationViewController)
  {
    [(ACM2SVCodeVerificationViewController *)[(ACM2SVAuthenticationUIController *)self codeVerificationViewController] setDelegate:0];
    [(ACM2SVAuthenticationUIController *)self setCodeVerificationViewController:0];
  }

  [(ACM2SVAuthenticationUIController *)self setDelegate:0];
  [(ACM2SVAuthenticationUIController *)self setParentViewController:0];
  v3.receiver = self;
  v3.super_class = ACM2SVAuthenticationUIController;
  [(ACM2SVAuthenticationUIController *)&v3 dealloc];
}

- (void)hideUIAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  v6 = [completion copy];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66__ACM2SVAuthenticationUIController_hideUIAnimated_withCompletion___block_invoke;
  v7[3] = &unk_29EE91AA8;
  v8 = animatedCopy;
  v7[4] = self;
  v7[5] = v6;
  [(ACM2SVAuthenticationUIController *)self hideTrustedDevicesViewControllerAnimated:animatedCopy withCompletion:v7];
}

- (int64_t)statusBarStyle
{
  if (floor(*MEMORY[0x29EDB9EA0]) <= 993.0)
  {
    return 0;
  }

  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];

  return [mEMORY[0x29EDC7938] statusBarStyle];
}

- (UIColor)textColor
{
  statusBarStyle = [(ACM2SVAuthenticationUIController *)self statusBarStyle];
  v3 = MEMORY[0x29EDC7A00];
  if (statusBarStyle)
  {

    return [v3 whiteColor];
  }

  else
  {

    return [v3 blackColor];
  }
}

- (UIColor)labelTextColor
{
  statusBarStyle = [(ACM2SVAuthenticationUIController *)self statusBarStyle];
  v3 = MEMORY[0x29EDC7A00];
  if (statusBarStyle)
  {

    return [v3 lightGrayColor];
  }

  else
  {

    return [v3 blackColor];
  }
}

- (UIColor)backgroundColor
{
  statusBarStyle = [(ACM2SVAuthenticationUIController *)self statusBarStyle];
  v3 = MEMORY[0x29EDC7A00];
  if (statusBarStyle)
  {

    return [v3 blackColor];
  }

  else
  {

    return [v3 whiteColor];
  }
}

- (ACM2SVTrustedDevicesViewController)trustedDevicesViewController
{
  trustedDevicesViewController = self->_trustedDevicesViewController;
  if (!trustedDevicesViewController)
  {
    self->_trustedDevicesViewController = [[ACM2SVTrustedDevicesViewController alloc] initWithDelegate:self];
    [(ACM2SVTrustedDevicesViewController *)self->_trustedDevicesViewController setTextColor:[(ACM2SVAuthenticationUIController *)self textColor]];
    [(ACM2SVTrustedDevicesViewController *)self->_trustedDevicesViewController setBackgroundColor:[(ACM2SVAuthenticationUIController *)self backgroundColor]];
    [(ACM2SVTrustedDevicesViewController *)self->_trustedDevicesViewController setLabelTextColor:[(ACM2SVAuthenticationUIController *)self labelTextColor]];
    [(ACM2SVTrustedDevicesViewController *)self->_trustedDevicesViewController setSuggestedStatusBarStyle:[(ACM2SVAuthenticationUIController *)self statusBarStyle]];
    [(ACM2SVTrustedDevicesViewController *)self->_trustedDevicesViewController view];
    if (objc_opt_respondsToSelector())
    {
      [-[ACM2SVTrustedDevicesViewController view](self->_trustedDevicesViewController "view")];
    }

    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    [-[ACM2SVTrustedDevicesViewController view](self->_trustedDevicesViewController "view")];
    trustedDevicesViewController = self->_trustedDevicesViewController;
  }

  v8 = trustedDevicesViewController;

  return v8;
}

- (ACM2SVCodeVerificationViewController)codeVerificationViewController
{
  codeVerificationViewController = self->_codeVerificationViewController;
  if (!codeVerificationViewController)
  {
    self->_codeVerificationViewController = [[ACM2SVCodeVerificationViewController alloc] initWithDelegate:self];
    [(ACM2SVCodeVerificationViewController *)self->_codeVerificationViewController setSuggestedStatusBarStyle:[(ACM2SVAuthenticationUIController *)self statusBarStyle]];
    [(ACM2SVCodeVerificationViewController *)self->_codeVerificationViewController setBackgroundColor:[(ACM2SVAuthenticationUIController *)self backgroundColor]];
    [(ACM2SVCodeVerificationViewController *)self->_codeVerificationViewController setTextColor:[(ACM2SVAuthenticationUIController *)self textColor]];
    [(ACM2SVCodeVerificationViewController *)self->_codeVerificationViewController setKeyboardAppearance:[(ACM2SVAuthenticationUIController *)self keyboardAppearance]];
    [-[ACM2SVCodeVerificationViewController view](self->_codeVerificationViewController "view")];
    [(ACM2SVCodeVerificationViewController *)self->_codeVerificationViewController view];
    if (objc_opt_respondsToSelector())
    {
      [-[ACM2SVCodeVerificationViewController view](self->_codeVerificationViewController "view")];
    }

    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    [-[ACM2SVCodeVerificationViewController view](self->_codeVerificationViewController "view")];
    codeVerificationViewController = self->_codeVerificationViewController;
  }

  v8 = codeVerificationViewController;

  return v8;
}

- (void)resetTrustedDevicesViewControllerWithDeviceList:(id)list
{
  trustedDevicesViewController = [(ACM2SVAuthenticationUIController *)self trustedDevicesViewController];

  [(ACM2SVTrustedDevicesViewController *)trustedDevicesViewController resetWithDeviceList:list];
}

- (void)resetCodeVerificationViewController
{
  codeVerificationViewController = [(ACM2SVAuthenticationUIController *)self codeVerificationViewController];

  [(ACM2SVCodeVerificationViewController *)codeVerificationViewController reset];
}

- (void)chooseTrustedDeviceWithDeviceList:(id)list completion:(id)completion
{
  v6 = [completion copy];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __81__ACM2SVAuthenticationUIController_chooseTrustedDeviceWithDeviceList_completion___block_invoke;
  v7[3] = &unk_29EE91AF8;
  v7[4] = self;
  v7[5] = list;
  v7[6] = v6;
  [(ACM2SVAuthenticationUIController *)self hideEnterVerificationCodeViewControllerAnimated:1 withCompletion:v7];
}

uint64_t __81__ACM2SVAuthenticationUIController_chooseTrustedDeviceWithDeviceList_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trustedDevicesViewController];
  v3 = [*(a1 + 32) parentViewController];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __81__ACM2SVAuthenticationUIController_chooseTrustedDeviceWithDeviceList_completion___block_invoke_2;
  v6[3] = &unk_29EE91AD0;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 48);
  return [v2 presentWithParentViewController:v3 deviceList:v4 completion:v6];
}

uint64_t __81__ACM2SVAuthenticationUIController_chooseTrustedDeviceWithDeviceList_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (qword_2A1EB8FC8 && a2 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVAuthenticationUIController chooseTrustedDeviceWithDeviceList:completion:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVAuthenticationUIController.m", 177, 0, "Ask delegate to send code");
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)enterVerificationCodeWithLength:(unint64_t)length forDevice:(id)device completion:(id)completion
{
  v8 = [completion copy];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __89__ACM2SVAuthenticationUIController_enterVerificationCodeWithLength_forDevice_completion___block_invoke;
  v9[3] = &unk_29EE91B20;
  v9[4] = self;
  v9[5] = device;
  v9[6] = v8;
  v9[7] = length;
  [(ACM2SVAuthenticationUIController *)self hideTrustedDevicesViewControllerAnimated:1 withCompletion:v9];
}

uint64_t __89__ACM2SVAuthenticationUIController_enterVerificationCodeWithLength_forDevice_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    [objc_msgSend(*(a1 + 32) "codeVerificationViewController")];
  }

  [objc_msgSend(*(a1 + 32) "codeVerificationViewController")];
  v2 = [*(a1 + 32) codeVerificationViewController];
  v3 = [*(a1 + 32) parentViewController];
  v4 = *(a1 + 48);

  return [v2 presentWithParentViewController:v3 completion:v4];
}

- (void)hideTrustedDevicesViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  if ([(ACM2SVTrustedDevicesViewController *)[(ACM2SVAuthenticationUIController *)self trustedDevicesViewController] isBeingPresented])
  {
    v7 = [completion copy];
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __92__ACM2SVAuthenticationUIController_hideTrustedDevicesViewControllerAnimated_withCompletion___block_invoke;
    block[3] = &unk_29EE91AA8;
    v12 = animatedCopy;
    block[4] = self;
    block[5] = v7;
    dispatch_after(v8, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACM2SVTrustedDevicesViewController *)[(ACM2SVAuthenticationUIController *)self trustedDevicesViewController] presentingViewController]&& ([(ACM2SVTrustedDevicesViewController *)[(ACM2SVAuthenticationUIController *)self trustedDevicesViewController] isBeingDismissed]& 1) == 0)
  {
    trustedDevicesViewController = [(ACM2SVAuthenticationUIController *)self trustedDevicesViewController];

    [(ACM2SVTrustedDevicesViewController *)trustedDevicesViewController hideAnimated:animatedCopy withCompletion:completion];
  }

  else if (completion)
  {
    v9 = *(completion + 2);

    v9(completion);
  }
}

- (void)hideEnterVerificationCodeViewControllerAnimated:(BOOL)animated withCompletion:(id)completion
{
  if ([(ACM2SVCodeVerificationViewController *)[(ACM2SVAuthenticationUIController *)self codeVerificationViewController] isBeingPresented])
  {
    v7 = [completion copy];
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __99__ACM2SVAuthenticationUIController_hideEnterVerificationCodeViewControllerAnimated_withCompletion___block_invoke;
    block[3] = &unk_29EE91AA8;
    animatedCopy = animated;
    block[4] = self;
    block[5] = v7;
    dispatch_after(v8, MEMORY[0x29EDCA578], block);
  }

  else if ([(ACM2SVCodeVerificationViewController *)[(ACM2SVAuthenticationUIController *)self codeVerificationViewController] presentingViewController]&& ([(ACM2SVCodeVerificationViewController *)[(ACM2SVAuthenticationUIController *)self codeVerificationViewController] isBeingDismissed]& 1) == 0)
  {
    codeVerificationViewController = [(ACM2SVAuthenticationUIController *)self codeVerificationViewController];

    [(ACM2SVCodeVerificationViewController *)codeVerificationViewController hideAnimated:1 withCompletion:completion];
  }

  else if (completion)
  {
    v9 = *(completion + 2);

    v9(completion);
  }
}

- (void)showAlertWithError:(id)error completion:(id)completion
{
  v5 = [completion copy];
  v6 = -[ACMAlertView initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:]([ACMAlertView alloc], "initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:", &stru_2A1EB91A0, [error localizedDescription], 0, 0, +[ACMBaseLocale localizedString:](ACMBaseLocale, "localizedString:", @"OK"), 0);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __66__ACM2SVAuthenticationUIController_showAlertWithError_completion___block_invoke;
  v7[3] = &unk_29EE91B48;
  v7[4] = v6;
  v7[5] = v5;
  [(ACMAlertView *)v6 showWithCompletionBlock:v7];
}

uint64_t __66__ACM2SVAuthenticationUIController_showAlertWithError_completion___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    [*(result + 32) cancelButtonIndex];
    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

- (void)trustedDevicesViewControllerDidSelectUnableReceiveMessages:(id)messages
{
  delegate = [(ACM2SVAuthenticationUIController *)self delegate];

  [(ACC2SVAuthenticationUIControllerDelegate *)delegate uiControllerUserIsUnableToReceiveVerificationCode:self];
}

- (void)trustedDevicesViewControllerNeedsRefresh:(id)refresh
{
  delegate = [(ACM2SVAuthenticationUIController *)self delegate];

  [(ACC2SVAuthenticationUIControllerDelegate *)delegate uiControllerRefreshDeviceList:self];
}

- (void)downloadImageWithURL:(id)l completionBlock:(id)block
{
  delegate = [(ACM2SVAuthenticationUIController *)self delegate];

  [(ACC2SVAuthenticationUIControllerDelegate *)delegate uiController:self getImageWithURL:l completion:block];
}

- (void)cancelInProgressImageDownloads
{
  if (qword_2A1EB8FC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVAuthenticationUIController cancelInProgressImageDownloads]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVAuthenticationUIController.m", 277, 0, "Ask delegate to cancel image downloads");
  }

  delegate = [(ACM2SVAuthenticationUIController *)self delegate];

  [(ACC2SVAuthenticationUIControllerDelegate *)delegate uiControllerCancelGettingImages:self];
}

- (void)codeVerificationViewControllerNeedsResendCode:(id)code
{
  if (qword_2A1EB8FC8 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVAuthenticationUIController codeVerificationViewControllerNeedsResendCode:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVAuthenticationUIController.m", 285, 0, "Ask delegate to resend code");
  }

  delegate = [(ACM2SVAuthenticationUIController *)self delegate];

  [(ACC2SVAuthenticationUIControllerDelegate *)delegate uiController:self resendVerificationCodeWithCompletion:0];
}

@end