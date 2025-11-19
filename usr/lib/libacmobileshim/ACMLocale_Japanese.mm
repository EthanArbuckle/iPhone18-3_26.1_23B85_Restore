@interface ACMLocale_Japanese
- (ACMLocale_Japanese)init;
- (void)dealloc;
@end

@implementation ACMLocale_Japanese

- (ACMLocale_Japanese)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_Japanese;
  v2 = [(ACMLocale_Japanese *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"パスワードフィールドが空です",  @"キャンセル",  @"サインイン",  @"送信",  @"OK",  @"無効な呼び出しメソッドです。AppleConnect サインインダイアログは非表示にできません。",  @"無効なパラメータです。入力パラメータの設定が正しくない箇所があります。",  @"Apple ID パスワード",  @"接続がオフラインのようです。インターネットに接続してからもう一度試してください。",  @"入力された Apple ID またはパスワードが正しくありません。",  @"2ステップ確認が必要ですが、ユーザ入力が許可されていません。",  @"信頼できるデバイス",  @"信頼できるデバイスを管理するには、Mac または Windows PC から %@ にアクセスしてください。",  @"有効なサービスチケットを作成できませんでした",  @"2ステップ確認の応答が無効です。",  @"電話番号へSMSを送信",  @"以下で選択したデバイスに一時コードが送信されます。一時コードを使って本人確認を行ってください。",  @"メモリが不足しています。",  @"john.appleseed",  @"%@へコードを送信",  @"期待しないメソッド呼び出し",  @"コード確認の失敗回数が多すぎます。他のデバイスに新しいコードを送信するか、しばらくしてからもう一度お試しください。",  @"無効なデータトークンです。確認用のデータトークンが無効です。",  @"アプリケーションによって認証がキャンセルされました",  @"パスコードの長さが正しくありません",  @"確認コード",  @"このアカウントは、セキュリティ上の理由により無効にされています。 %@ でパスワードをリセットできます。",  @"どのデバイスでもメッセージを受信できませんか？",  @"新しいコードを送信",  @"問題が発生しました。しばらくしてからもう一度お試しください。",  @"必須",  @"この方は見つかりません。",  @"確認コードを入力",  @"デバイスが見つかりません。",  @"Apple ID",  @"この Apple ID では2ステップ確認が有効になっています。",  @"トークンを確認できません。",  @"パスワード",  @"セキュリティ保護のためにパスワードの変更をおすすめします。%@ から簡単に変更できます。",  @"このデバイスの現在時刻が正しく設定されていないようです。「設定」＞「一般」＞「日付と時刻」で時刻を修正してから、もう一度試してください。",  @"有効な SSO トークンを作成できませんでした",  @"入力された確認コードは有効ではありません。",  @"続ける",  @"本人確認",  @"システムによって認証がキャンセルされました",  @"%@でコードを生成",  @"デバイスリストが空です。",
           @"無効なセッションです。",
           @"不正なサーバ応答です",
           @"電話番号確認のために送信したコードの数が多すぎます。しばらくしてからもう一度お試しください。",
           @"末尾が %@ の電話番号",
           @"入力されたアカウント名またはパスワードが正しくありません。",
           @"Apple ID フィールドが未入力です",
           @"iForgot…",
           @"本人確認に対する誤った入力が多すぎます。 セキュリティ上の理由により、以後8時間は復旧キーを使用しない限りアカウントを変更できなくなります。",
           @"デバイス情報がありません。",
           @" ID またはパスワードをお忘れですか？",
           @"この Apple ID は、セキュリティ上の理由により無効にされています。%@ でパスワードをリセットできます。",
           @"Touch ID によって %@ として認証されました",
           @"ユーザによって認証がキャンセルされました",
           @"末尾が%@の番号");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_Japanese;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end