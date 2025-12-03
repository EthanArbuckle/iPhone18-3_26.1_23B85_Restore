@interface ACMHTTPTicketVerificationHandler
+ (id)handlerName;
- (ACMHTTPTicketVerificationHandler)initWithContext:(id)context;
- (id)requestBody;
@end

@implementation ACMHTTPTicketVerificationHandler

+ (id)handlerName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (ACMHTTPTicketVerificationHandler)initWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = ACMHTTPTicketVerificationHandler;
  v3 = [(ACCHTTPHandler *)&v6 initWithContext:context];
  v4 = v3;
  if (v3)
  {
    -[ACFHTTPTransportProtocol setRequestURLTemplate:](-[ACCHTTPHandler transport](v3, "transport"), "setRequestURLTemplate:", [-[ACMHTTPHandler environmentPreferences](v3 "environmentPreferences")]);
  }

  return v4;
}

- (id)requestBody
{
  v3 = objc_opt_new();
  if (v3)
  {
    if ([(ACCAuthContextProtocol *)[(ACCHTTPHandler *)self context] appID])
    {
      [v3 setObject:-[ACCAuthContextProtocol appID](-[ACCHTTPHandler context](self forKeyedSubscript:{"context"), "appID"), @"m"}];
    }

    else if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 52, 0, "App ID is not set");
    }

    if ([(ACCAuthContextProtocol *)[(ACCHTTPHandler *)self context] appIDKey])
    {
      [v3 setObject:-[ACCAuthContextProtocol appIDKey](-[ACCHTTPHandler context](self forKeyedSubscript:{"context"), "appIDKey"), @"n"}];
    }

    else if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 61, 0, "App ID Key is not set");
    }

    if ([-[ACCAuthContextProtocol request](-[ACCHTTPHandler context](self "context")])
    {
      [v3 setObject:objc_msgSend(-[ACCAuthContextProtocol request](-[ACCHTTPHandler context](self forKeyedSubscript:{"context"), "request"), "token"), @"st"}];
    }

    else if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 70, 0, "Token is not set");
    }

    v4 = [objc_msgSend(MEMORY[0x29EDB8DE0] "currentLocale")];
    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"u"];
    }

    else if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 81, 0, "localeIdentifier is not set");
    }

    if ([-[ACCAuthContextProtocol request](-[ACCHTTPHandler context](self "context")])
    {
      [v3 setObject:objc_msgSend(-[ACCAuthContextProtocol request](-[ACCHTTPHandler context](self forKeyedSubscript:{"context"), "request"), "userName"), @"b"}];
    }

    else if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 90, 0, "userName is not set");
    }

    v3 = [v3 copy];
  }

  if (qword_2A1EB8F20 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "-[ACMHTTPTicketVerificationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPTicketVerificationHandler.m", 96, 0, "Service ticket size: %d", [objc_msgSend(-[ACCAuthContextProtocol request](-[ACCHTTPHandler context](self "context")]);
  }

  return v3;
}

@end