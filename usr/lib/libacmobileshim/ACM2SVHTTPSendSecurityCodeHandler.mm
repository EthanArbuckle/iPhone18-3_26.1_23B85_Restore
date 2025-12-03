@interface ACM2SVHTTPSendSecurityCodeHandler
- (ACM2SVHTTPSendSecurityCodeHandler)initWithContext:(id)context;
- (id)convertErrorToACMError:(id)error;
@end

@implementation ACM2SVHTTPSendSecurityCodeHandler

- (ACM2SVHTTPSendSecurityCodeHandler)initWithContext:(id)context
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

- (id)convertErrorToACMError:(id)error
{
  if (qword_2A1EB8F70)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACM2SVHTTPSendSecurityCodeHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPSendSecurityCodeHandler.m", 32, 0, "Convert error %@ to user-friedly error.", error);
    }
  }

  domain = [error domain];
  if ([domain isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return error;
  }

  v7 = -200240;
  localizedFailureReason = [error localizedFailureReason];
  localizedDescription = [error localizedDescription];
  if ([domain isEqualToString:@"HTTPServerErrorDomain"])
  {
    if ([error code] == -21666)
    {
      localizedDescription = [ACMBaseLocale localizedString:@"You have sent too many codes to verify your phone number. Please try again later."];
      goto LABEL_13;
    }

    v12.receiver = self;
    v10 = &v12;
  }

  else
  {
    selfCopy = self;
    v10 = &selfCopy;
  }

  v10->super_class = ACM2SVHTTPSendSecurityCodeHandler;
  result = [(objc_super *)v10 convertErrorToACMError:error];
  if (result)
  {
    return result;
  }

  v7 = -200200;
LABEL_13:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:v7 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", error, *MEMORY[0x29EDB9F18], localizedDescription, *MEMORY[0x29EDB9ED8], localizedFailureReason, *MEMORY[0x29EDB9EE0], 0, selfCopy)}];
  if (!result)
  {
    return error;
  }

  return result;
}

@end