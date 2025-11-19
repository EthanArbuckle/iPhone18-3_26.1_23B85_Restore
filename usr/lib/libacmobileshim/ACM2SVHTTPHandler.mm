@interface ACM2SVHTTPHandler
- (id)convertErrorToACMError:(id)a3;
@end

@implementation ACM2SVHTTPHandler

- (id)convertErrorToACMError:(id)a3
{
  if (qword_2A1EB8F58 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVHTTPHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPHandler.m", 27, 0, "Convert error %@ to user-friedly error.", a3);
  }

  v5 = [a3 domain];
  if ([v5 isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return a3;
  }

  v7 = [a3 localizedFailureReason];
  v8 = [a3 localizedDescription];
  if ([v5 isEqualToString:@"HTTPServerErrorDomain"])
  {
    v9 = [a3 code];
    if (v9 > -21653)
    {
      if (v9 > -20624)
      {
        if (v9 != -20623)
        {
          if (v9 == -20600)
          {
            v8 = [ACMBaseLocale localizedString:@"Cannot find this person."];
            v10 = -200270;
            goto LABEL_33;
          }

          if (v9 == -20100)
          {
            v8 = [ACMBaseLocale localizedString:@"Invalid Session."];
            v10 = -200220;
            goto LABEL_33;
          }

          goto LABEL_36;
        }

        v13 = @"Device is not found.";
        goto LABEL_31;
      }

      if (v9 != -21652)
      {
        if (v9 == -21651)
        {
          v10 = -200310;
          v8 = [ACMBaseLocale localizedString:@"Two-step verification has been disabled for the Apple ID account %@."];
          v12 = [-[ACCAuthContextProtocol principal](-[ACCHTTPHandler context](self "context")];
          if (v12)
          {
            v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8, v12];
          }

          goto LABEL_33;
        }

        goto LABEL_36;
      }

LABEL_27:
      v13 = @"No Device information available.";
LABEL_31:
      v8 = [ACMBaseLocale localizedString:v13];
      v14 = 80;
      goto LABEL_32;
    }

    if (v9 > -21664)
    {
      if (v9 == -21663)
      {
        v8 = [ACMBaseLocale localizedString:@"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key."];
        v14 = 100;
LABEL_32:
        v10 = *&v14 | 0xFFFFFFFFFFFCF18ALL;
        goto LABEL_33;
      }

      if (v9 == -21654)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v9 == -21673)
      {
        v8 = [ACMBaseLocale localizedString:@"You failed to verify the code too many times. Please send a new code to a different device or try again later."];
        v10 = -200260;
        goto LABEL_33;
      }

      if (v9 == -21669)
      {
        v8 = [ACMBaseLocale localizedString:@"The verification code you entered is not valid."];
        v10 = -200250;
        goto LABEL_33;
      }
    }

LABEL_36:
    v16 = self;
    v11 = &v16;
    goto LABEL_14;
  }

  v15.receiver = self;
  v11 = &v15;
LABEL_14:
  v11->super_class = ACM2SVHTTPHandler;
  result = [(objc_super *)v11 convertErrorToACMError:a3];
  if (result)
  {
    return result;
  }

  v10 = -200200;
LABEL_33:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:v10 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", a3, *MEMORY[0x29EDB9F18], v8, *MEMORY[0x29EDB9ED8], v7, *MEMORY[0x29EDB9EE0], 0, v15.receiver)}];
  if (!result)
  {
    return a3;
  }

  return result;
}

@end