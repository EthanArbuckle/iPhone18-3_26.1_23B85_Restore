@interface ACM2SVHTTPSendSecurityCodeHandler
- (ACM2SVHTTPSendSecurityCodeHandler)initWithContext:(id)a3;
- (id)convertErrorToACMError:(id)a3;
@end

@implementation ACM2SVHTTPSendSecurityCodeHandler

- (ACM2SVHTTPSendSecurityCodeHandler)initWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACM2SVHTTPSendSecurityCodeHandler;
  v4 = [(ACMHTTPAuthenticationHandler *)&v6 initWithContext:?];
  if (v4)
  {
    -[ACFHTTPTransportProtocol setRequestURLTemplate:](-[ACCHTTPHandler transport](v4, "transport"), "setRequestURLTemplate:", [objc_msgSend(objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")]);
  }

  return v4;
}

- (id)convertErrorToACMError:(id)a3
{
  if (qword_2A1EB8F70)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACM2SVHTTPSendSecurityCodeHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPSendSecurityCodeHandler.m", 32, 0, "Convert error %@ to user-friedly error.", a3);
    }
  }

  v5 = [a3 domain];
  if ([v5 isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return a3;
  }

  v7 = -200240;
  v8 = [a3 localizedFailureReason];
  v9 = [a3 localizedDescription];
  if ([v5 isEqualToString:@"HTTPServerErrorDomain"])
  {
    if ([a3 code] == -21666)
    {
      v9 = [ACMBaseLocale localizedString:@"You have sent too many codes to verify your phone number. Please try again later."];
      goto LABEL_13;
    }

    v12.receiver = self;
    v10 = &v12;
  }

  else
  {
    v11 = self;
    v10 = &v11;
  }

  v10->super_class = ACM2SVHTTPSendSecurityCodeHandler;
  result = [(objc_super *)v10 convertErrorToACMError:a3];
  if (result)
  {
    return result;
  }

  v7 = -200200;
LABEL_13:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:v7 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", a3, *MEMORY[0x29EDB9F18], v9, *MEMORY[0x29EDB9ED8], v8, *MEMORY[0x29EDB9EE0], 0, v11)}];
  if (!result)
  {
    return a3;
  }

  return result;
}

@end