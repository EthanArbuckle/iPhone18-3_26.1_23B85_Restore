@interface ACMLocale_English
- (ACMLocale_English)init;
- (void)dealloc;
@end

@implementation ACMLocale_English

- (ACMLocale_English)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_English;
  v2 = [(ACMLocale_English *)&v6 init];
  if (v2)
  {
    v3 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Password field is empty",  @"Cancel",  @"Sign In",  @"OK",  @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.",  @"Invalid Parameters. Some of input parameters are set incorrectly.",  @"Apple ID password",  @"You appear to be offline. Please connect to the Internet and try again.",  @"Your Apple ID or password was entered incorrectly.",  @"Two-step verification required, but user interaction is not allowed.",  @"TRUSTED DEVICES",  @"To manage your trusted devices visit %@ from a Mac or PC.",  @"Failed to create valid service ticket",  @"Two-step verification response is empty.",  @"You have sent too many codes to verify your device. Please try again later.",  @"SMS to Phone Number",  @"The device you select below will be sent a temporary code that you can use to verify your identity.",  @"Out of Memory",  @"john.appleseed",  @"Send code to %@",  @"Unexpected method invocation",  @"You failed to verify the code too many times. Please send a new code to a different device or try again later.",  @"Invalid Data Token. Data Token for verify is not valid.",  @"Authentication was canceled by application",  @"Invalid passcode length",  @"Verification Code",  @"This account name has been disabled for security reasons. You can reset your password at %@.",  @"Unable to receive messages at any of your devices?",  @"Send a new code",  @"Oops, an error occurred. Thanks for your patience, please try again later.",  @"Required",  @"Cannot find this person.",  @"Enter verification code",  @"Device is not found.",  @"Apple ID",  @"Two-step verification is enabled for this Apple ID.",  @"Can not verify token.",  @"Password",  @"Generate TOTP code",  @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.",  @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.",  @"Failed to create valid SSO token",  @"User need to enroll for two-step verification.",  @"The verification code you entered is not valid.",  @"Continue",  @"Verify Identity",  @"Please complete two-step verification set up and try again.",
           @"Authentication was canceled by system",
           @"Device list is empty.",
           @"phone ending in %@",
           @"Response from server is malformed",
           @"Invalid Session.",
           @"You have sent too many codes to verify your phone number. Please try again later.",
           @"Your account name or password was entered incorrectly.",
           @"Two-step verification has been disabled for the Apple ID account %@.",
           @"This Apple ID has been disabled for security reasons. You can reset your password at %@.",
           @"iForgot…",
           @"No Device information available.",
           @"Apple ID field is empty",
           @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.",
           @"Authenticate as %@ with Touch ID");
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Password field is empty",  @"Cancel",  @"Sign In",  @"OK",  @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.",  @"Invalid Parameters. Some of input parameters are set incorrectly.",  @"Apple ID password",  @"You appear to be offline. Please connect to the Internet and try again.",  @"Your Apple ID or password was entered incorrectly.",  @"Two-step verification required, but user interaction is not allowed.",  @"TRUSTED DEVICES",  @"To manage your trusted devices visit %@ from a Mac or PC.",  @"Failed to create valid service ticket",  @"Two-step verification response is empty.",  @"You have sent too many codes to verify your device. Please try again later.",  @"SMS to Phone Number",  @"The device you select below will be sent a temporary code that you can use to verify your identity.",  @"Out of Memory",  @"john.appleseed",  @"Send code to %@",  @"Unexpected method invocation",  @"You failed to verify the code too many times. Please send a new code to a different device or try again later.",  @"Invalid Data Token. Data Token for verify is not valid.",  @"Authentication was canceled by application",  @"Invalid passcode length",  @"Verification Code",  @"This account name has been disabled for security reasons. You can reset your password at %@.",  @"Unable to receive messages at any of your devices?",  @"Send a new code",  @"Oops, an error occurred. Thanks for your patience, please try again later.",  @"Required",  @"Cannot find this person.",  0x2A1EBA000,  @"Device is not found.",  @"Apple ID",  @"Two-step verification is enabled for this Apple ID.",  @"Can not verify token.",  @"Password",  @"Generate TOTP code",  @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.",  @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.",  @"Failed to create valid SSO token",  @"User need to enroll for two-step verification.",  @"The verification code you entered is not valid.",  @"Continue",  @"Verify Identity",  @"Please complete two-step verification set up and try again.",
           @"Authentication was canceled by system",
           @"Device list is empty.",
           @"phone ending in %@",
           @"Response from server is malformed",
           @"Invalid Session.",
           @"You have sent too many codes to verify your phone number. Please try again later.",
           @"Your account name or password was entered incorrectly.",
           @"Two-step verification has been disabled for the Apple ID account %@.",
           @"This Apple ID has been disabled for security reasons. You can reset your password at %@.",
           @"iForgot…",
           @"No Device information available.",
           @"Apple ID field is empty",
           @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.",
           @"Authenticate as %@ with Touch ID");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_English;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end