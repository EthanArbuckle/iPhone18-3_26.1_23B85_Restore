@interface ACM2SVHTTPHandler
- (id)convertErrorToACMError:(id)error;
@end

@implementation ACM2SVHTTPHandler

- (id)convertErrorToACMError:(id)error
{
  if (qword_2A1EB8F58 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVHTTPHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPHandler.m", 27, 0, "Convert error %@ to user-friedly error.", error);
  }

  domain = [error domain];
  if ([domain isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return error;
  }

  localizedFailureReason = [error localizedFailureReason];
  localizedDescription = [error localizedDescription];
  if ([domain isEqualToString:@"HTTPServerErrorDomain"])
  {
    code = [error code];
    if (code > -21653)
    {
      if (code > -20624)
      {
        if (code != -20623)
        {
          if (code == -20600)
          {
            localizedDescription = [ACMBaseLocale localizedString:@"Cannot find this person."];
            v10 = -200270;
            goto LABEL_33;
          }

          if (code == -20100)
          {
            localizedDescription = [ACMBaseLocale localizedString:@"Invalid Session."];
            v10 = -200220;
            goto LABEL_33;
          }

          goto LABEL_36;
        }

        v13 = @"Device is not found.";
        goto LABEL_31;
      }

      if (code != -21652)
      {
        if (code == -21651)
        {
          v10 = -200310;
          localizedDescription = [ACMBaseLocale localizedString:@"Two-step verification has been disabled for the Apple ID account %@."];
          v12 = [-[ACCAuthContextProtocol principal](-[ACCHTTPHandler context](self "context")];
          if (v12)
          {
            localizedDescription = [MEMORY[0x29EDBA0F8] stringWithFormat:localizedDescription, v12];
          }

          goto LABEL_33;
        }

        goto LABEL_36;
      }

LABEL_27:
      v13 = @"No Device information available.";
LABEL_31:
      localizedDescription = [ACMBaseLocale localizedString:v13];
      v14 = 80;
      goto LABEL_32;
    }

    if (code > -21664)
    {
      if (code == -21663)
      {
        localizedDescription = [ACMBaseLocale localizedString:@"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key."];
        v14 = 100;
LABEL_32:
        v10 = *&v14 | 0xFFFFFFFFFFFCF18ALL;
        goto LABEL_33;
      }

      if (code == -21654)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (code == -21673)
      {
        localizedDescription = [ACMBaseLocale localizedString:@"You failed to verify the code too many times. Please send a new code to a different device or try again later."];
        v10 = -200260;
        goto LABEL_33;
      }

      if (code == -21669)
      {
        localizedDescription = [ACMBaseLocale localizedString:@"The verification code you entered is not valid."];
        v10 = -200250;
        goto LABEL_33;
      }
    }

LABEL_36:
    selfCopy = self;
    v11 = &selfCopy;
    goto LABEL_14;
  }

  v15.receiver = self;
  v11 = &v15;
LABEL_14:
  v11->super_class = ACM2SVHTTPHandler;
  result = [(objc_super *)v11 convertErrorToACMError:error];
  if (result)
  {
    return result;
  }

  v10 = -200200;
LABEL_33:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:v10 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", error, *MEMORY[0x29EDB9F18], localizedDescription, *MEMORY[0x29EDB9ED8], localizedFailureReason, *MEMORY[0x29EDB9EE0], 0, v15.receiver)}];
  if (!result)
  {
    return error;
  }

  return result;
}

@end