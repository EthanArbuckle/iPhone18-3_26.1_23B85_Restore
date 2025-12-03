@interface ACM2SVHTTPGetTrustedDevicesHandler
- (ACM2SVHTTPGetTrustedDevicesHandler)initWithContext:(id)context;
- (id)convertErrorToACMError:(id)error;
@end

@implementation ACM2SVHTTPGetTrustedDevicesHandler

- (ACM2SVHTTPGetTrustedDevicesHandler)initWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = ACM2SVHTTPGetTrustedDevicesHandler;
  v4 = [(ACMHTTPAuthenticationHandler *)&v6 initWithContext:?];
  if (v4)
  {
    -[ACFHTTPTransportProtocol setRequestURLTemplate:](-[ACCHTTPHandler transport](v4, "transport"), "setRequestURLTemplate:", [objc_msgSend(objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")]);
  }

  return v4;
}

- (id)convertErrorToACMError:(id)error
{
  if (qword_2A1EB8E98 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVHTTPGetTrustedDevicesHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPGetTrustedDevicesHandler.m", 33, 0, "Convert error %@ to user-friedly error.", error);
  }

  domain = [error domain];
  if ([domain isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return error;
  }

  localizedFailureReason = [error localizedFailureReason];
  localizedDescription = [error localizedDescription];
  if (![domain isEqualToString:@"HTTPServerErrorDomain"])
  {
    selfCopy = self;
    v10 = &selfCopy;
    goto LABEL_12;
  }

  code = [error code];
  if (code != -20100 && code != -20600)
  {
    v12.receiver = self;
    v10 = &v12;
LABEL_12:
    v10->super_class = ACM2SVHTTPGetTrustedDevicesHandler;
    result = [(objc_super *)v10 convertErrorToACMError:error];
    if (result)
    {
      return result;
    }

    goto LABEL_13;
  }

  localizedDescription = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
LABEL_13:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", error, *MEMORY[0x29EDB9F18], localizedDescription, *MEMORY[0x29EDB9ED8], localizedFailureReason, *MEMORY[0x29EDB9EE0], 0, selfCopy)}];
  if (!result)
  {
    return error;
  }

  return result;
}

@end