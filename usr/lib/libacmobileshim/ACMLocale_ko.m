@interface ACMLocale_ko
- (ACMLocale_ko)init;
- (void)dealloc;
@end

@implementation ACMLocale_ko

- (ACMLocale_ko)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_ko;
  v2 = [(ACMLocale_ko *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"암호 필드가 비어있음",  @"취소",  @"로그인",  @"보내기",  @"승인",  @"부적절한 방법이 요청되었습니다. AppleConnect 로그인 대화상자는 숨길 수 없습니다.",  @"매개변수가 유효하지 않습니다. 입력 매개변수 중 일부가 잘못 설정되었습니다.",  @"Apple ID 암호",  @"오프라인인 것으로 보입니다. 인터넷에 연결하고 다시 시도하십시오.",  @"입력한 Apple ID 또는 암호가 올바르지 않습니다.",  @"2단계 확인이 필요하지만 사용자 상호작용은 허용되지 않습니다.",  @"신뢰하는 기기",  @"신뢰하는 기기를 관리하려면 Mac 또는 PC에서 %@ 페이지를 방문하십시오.",  @"유효한 서비스 티켓 생성 실패",  @"2단계 확인 응답이 비어 있습니다.",  @"전화 번호로 SMS 보내기",  @"신원 확인에 사용할 수 있는 임시 코드를 아래의 선택한 기기로 보냅니다.",  @"메모리 부족",  @"john.appleseed",  @"%@(으)로 코드 보내기",  @"예기치 않은 메소드 호출",  @"코드 확인에 너무 많이 실패했습니다. 다른 기기로 새 코드를 보내거나 나중에 다시 시도하십시오.",  @"확인용 데이터 토큰이 유효하지 않습니다.",  @"응용 프로그램에 의해 인증이 취소됨",  @"유효하지 않은 암호 길이",  @"확인 코드",  @"이 계정은 보안상의 이유로 비활성화되었습니다. %@ 에서 암호를 재설정할 수 있습니다.",  @"메시지를 받을 수 있는 기기가 없습니까?",  @"새 코드 보내기",  @"오류가 발생했습니다. 나중에 다시 시도하십시오.",  @"필수사항",  @"해당 사용자를 찾을 수 없습니다.",  @"확인 코드 입력",  @"기기를 찾을 수 없습니다.",  @"Apple ID",  @"이 Apple ID에 대한 2단계 확인이 활성화되었습니다.",  @"토큰을 확인할 수 없습니다.",  @"암호",  @"보안 유지를 위해 암호를 재설정할 시기가 되었습니다. %@ 에서 쉽게 재설정할 수 있습니다.",  @"이 기기의 현재 시간이 잘못된 것 같습니다. 설정 > 일반 > 날짜와 시간에서 시간을 수정한 다음 다시 시도하십시오.",  @"유효한 SSO 토큰 생성 실패",  @"입력한 확인 코드가 유효하지 않습니다.",  @"계속",  @"신원 확인",  @"시스템에 의해 인증이 취소됨",  @"%@(으)로 코드 생성",  @"기기 목록이 비어 있습니다.",
           @"세션이 유효하지 않습니다.",
           @"서버 응답이 정상적이지 않습니다.",
           @"전화번호를 확인하기 위해 너무 많은 코드를 보냈습니다. 나중에 다시 시도하십시오.",
           @"끝자리가 %@인 전화 번호",
           @"계정 이름 또는 암호를 잘못 입력했습니다.",
           @"Apple ID를 입력하지 않음",
           @"iForgot…",
           @"죄송합니다. 신원 확인에 너무 많이 실패했습니다. 보안상의 이유로 복구 키가 없으면 앞으로 8시간 동안 계정 정보를 변경할 수 없습니다.",
           @"기기 정보가 없습니다.",
           @"ID 또는 암호를 잊으셨습니까?",
           @"이 Apple ID는 보안상의 이유로 비활성화되었습니다. %@ 에서 암호를 재설정할 수 있습니다.",
           @"Touch ID를 사용하여 %@(으)로 인증",
           @"사용자에 의해 인증이 취소됨",
           @"%@(으)로 끝나는 번호");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_ko;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end