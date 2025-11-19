@interface ACMLocale_zh_Hans
- (ACMLocale_zh_Hans)init;
- (void)dealloc;
@end

@implementation ACMLocale_zh_Hans

- (ACMLocale_zh_Hans)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_zh_Hans;
  v2 = [(ACMLocale_zh_Hans *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"密码字段为空白。", @"取消", @"登录", @"发送", @"好", @"呼叫方式错误。无法隐藏 AppleConnect 登录对话框。", @"参数无效。部分输入参数未正确设置。", @"Apple ID 密码", @"您似乎已离线。请连接到互联网并再试一次。", @"您输入的 Apple ID 或密码不正确。", @"需要进行两步验证，但不允许用户进行交互操作。", @"受信任设备", @"若要管理您的受信任设备，请通过 Mac 或 PC 访问 %@。", @"无法创建有效的服务票证。", @"两步验证响应为空。", @"发送短信至电话号码", @"您在下方所选的设备将收到一个临时验证码，以验证您的身份。", @"内存不足", @"john.appleseed", @"发送代码至%@", @"意外的方法调用", @"验证码验证失败次数过多。请发送一个新验证码到其他设备，或稍后重试。", @"数据令牌无效。用于验证的数据令牌无效。", @"应用程序已取消认证。", @"密码长度不正确", @"验证码", @"出于安全原因，此帐户已停用。您可以在 %@ 重设您的密码。", @"无法在任何设备接收信息？", @"发送新验证码", @"很抱歉，发生了错误。感谢您的耐心，请稍后再试。", @"必填", @"无法找到此人。", @"输入验证码", @"没有找到设备。", @"Apple ID", @"此 Apple ID 已启用两步验证。", @"无法验证令牌。", @"密码", @"为保障您的安全，请重设您的密码。只需前往 %@ 即可轻松重设。", @"此设备上的当前时间似乎错误。您可以前往“设置”>“通用”>“日期与时间”进行修复，然后重试。", @"无法创建有效的 SSO 令牌。", @"您输入的验证码无效。", @"继续", @"验证身份", @"系统已取消认证。", @"以%@生成的代码", @"设备列表为空。", @"会话无效。", @"服务器的响应格式错误。", @"您已发送过多验证码来验证您的电话号码。请稍后再试。", @"手机尾号 %@", @"您输入的帐户名称或密码不正确。", @"Apple ID 字段为空白。", @"iForgot…", @"很抱歉，您尝试验证身份的失败次数过多。为了帐户安全，在未来八小时内，如果不使用恢复密钥，您将无法更改帐户。", @"无法提供设备信息。", @"忘记了 ID 或密码？", @"出于安全原因，此 Apple ID 已停用。您可以在 %@ 重设您的密码。", @"使用 Touch ID 认证 %@", @"用户已取消认证。", @"电话号码尾号 %@"}];
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_zh_Hans;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end