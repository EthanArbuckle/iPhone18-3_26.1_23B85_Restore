@interface ACM2SVHTTPVerifySecurityCodeHandler
- (ACM2SVHTTPVerifySecurityCodeHandler)initWithContext:(id)a3;
- (id)convertErrorToACMError:(id)a3;
@end

@implementation ACM2SVHTTPVerifySecurityCodeHandler

- (ACM2SVHTTPVerifySecurityCodeHandler)initWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACM2SVHTTPVerifySecurityCodeHandler;
  v4 = [(ACMHTTPAuthenticationHandler *)&v6 initWithContext:?];
  if (v4)
  {
    -[ACFHTTPTransportProtocol setRequestURLTemplate:](-[ACCHTTPHandler transport](v4, "transport"), "setRequestURLTemplate:", [objc_msgSend(objc_msgSend(+[ACMAppleConnectImplComponents components](ACMAppleConnectImplComponents "components")]);
  }

  return v4;
}

- (id)convertErrorToACMError:(id)a3
{
  if (qword_2A1EB9008 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACM2SVHTTPVerifySecurityCodeHandler convertErrorToACMError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACM2SVHTTPVerifySecurityCodeHandler.m", 30, 0, "Convert error %@ to user-friedly error.", a3);
  }

  v6.receiver = self;
  v6.super_class = ACM2SVHTTPVerifySecurityCodeHandler;
  return [(ACM2SVHTTPHandler *)&v6 convertErrorToACMError:a3];
}

@end