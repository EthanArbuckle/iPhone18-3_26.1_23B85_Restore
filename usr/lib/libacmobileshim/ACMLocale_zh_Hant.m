@interface ACMLocale_zh_Hant
- (ACMLocale_zh_Hant)init;
- (void)dealloc;
@end

@implementation ACMLocale_zh_Hant

- (ACMLocale_zh_Hant)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_zh_Hant;
  v2 = [(ACMLocale_zh_Hant *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"密碼欄位空白", @"取消", @"登入", @"傳送", @"好", @"不當的呼叫方式。AppleConnect 的登入對話框無法隱藏。", @"無效的參數。部分輸入參數的設定不正確。", @"Apple ID 密碼", @"您似乎已經離線。請連線至 Internet，然後再試一次。", @"您輸入的 Apple ID 或密碼不正確。", @"須啟用雙步驟驗證，但不允許使用者互動。", @"受信任的裝置", @"若要管理受信任的裝置，請使用 Mac 或 PC 造訪 %@。", @"無法建立有效的服務工作單", @"雙步驟驗證的回應為空白。", @"傳送簡訊至電話號碼", @"臨時驗證碼會傳送到您在下方選取的裝置，以驗證您的身分。", @"記憶體不足", @"john.appleseed", @"傳送代碼至「%@」", @"無法預期的方法啟動", @"驗證碼驗證失敗次數過多。請傳送新驗證碼至其他裝置，或稍後再試一次。", @"無效的資料代號。用於驗證的資料代號無效。", @"應用程式已取消認證", @"密碼長度無效", @"驗證碼", @"基於安全考量，此帳號已停用。您可在 %@ 重置密碼。", @"任何裝置皆無法接收訊息？", @"傳送新驗證碼", @"抱歉，發生錯誤。感謝您耐心等候，請稍後再試。", @"必填", @"找不到此人。", @"請輸入驗證碼", @"找不到裝置。", @"Apple ID", @"此 Apple ID 已啟用雙步驟驗證。", @"無法驗證代號。", @"密碼", @"為了保護您的安全，建議您立即重置密碼。只要前往 %@，即可輕鬆重置密碼。", @"裝置上顯示的目前時間似乎不正確。您可前往「設定」>「一般」>「日期與時間」修正時間，然後再試一次。", @"無法建立有效的 SSO 代號", @"您輸入的驗證碼無效。", @"繼續", @"驗證身分", @"系統已取消認證", @"以「%@」產生代碼", @"裝置列表是空的。", @"無效的階段作業。", @"伺服器的回應形式錯誤", @"您已傳送過多驗證碼來驗證您的電話號碼。請稍後再試。", @"電話號碼尾數為 %@", @"您輸入的帳號名稱或密碼不正確。", @"Apple ID 的欄位空白", @"iForgot…", @"抱歉，您嘗試驗證身分的失敗次數過多。基於安全考量，在未來八小時內，如果您沒有復原密鑰，將無法對帳號做任何更改。", @"無法提供裝置資訊。", @"忘記 ID 或密碼？", @"基於安全考量，此 Apple ID 已停用。您可在 %@ 重置密碼。", @"以 Touch ID 認證為 %@", @"使用者已取消認證", @"號碼尾數為 %@"}];
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_zh_Hant;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end