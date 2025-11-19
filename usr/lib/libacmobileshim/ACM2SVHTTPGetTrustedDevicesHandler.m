@interface ACM2SVHTTPGetTrustedDevicesHandler
- (ACM2SVHTTPGetTrustedDevicesHandler)initWithContext:(id)a3;
- (id)convertErrorToACMError:(id)a3;
@end

@implementation ACM2SVHTTPGetTrustedDevicesHandler

- (ACM2SVHTTPGetTrustedDevicesHandler)initWithContext:(id)a3
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

- (id)convertErrorToACMError:(id)a3
{
  if (qword_2A1EB8E98 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVHTTPGetTrustedDevicesHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPGetTrustedDevicesHandler.m", 33, 0, "Convert error %@ to user-friedly error.", a3);
  }

  v5 = [a3 domain];
  if ([v5 isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return a3;
  }

  v7 = [a3 localizedFailureReason];
  v8 = [a3 localizedDescription];
  if (![v5 isEqualToString:@"HTTPServerErrorDomain"])
  {
    v11 = self;
    v10 = &v11;
    goto LABEL_12;
  }

  v9 = [a3 code];
  if (v9 != -20100 && v9 != -20600)
  {
    v12.receiver = self;
    v10 = &v12;
LABEL_12:
    v10->super_class = ACM2SVHTTPGetTrustedDevicesHandler;
    result = [(objc_super *)v10 convertErrorToACMError:a3];
    if (result)
    {
      return result;
    }

    goto LABEL_13;
  }

  v8 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
LABEL_13:
  result = [MEMORY[0x29EDB9FA0] errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", a3, *MEMORY[0x29EDB9F18], v8, *MEMORY[0x29EDB9ED8], v7, *MEMORY[0x29EDB9EE0], 0, v11)}];
  if (!result)
  {
    return a3;
  }

  return result;
}

@end