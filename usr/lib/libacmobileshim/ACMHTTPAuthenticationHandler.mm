@interface ACMHTTPAuthenticationHandler
- (ACMHTTPAuthenticationHandler)initWithContext:(id)a3;
- (BOOL)shouldReturnResponse:(id)a3 orReportError:(id *)a4;
- (id)requestBody;
@end

@implementation ACMHTTPAuthenticationHandler

- (ACMHTTPAuthenticationHandler)initWithContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = ACMHTTPAuthenticationHandler;
  v3 = [(ACCHTTPHandler *)&v6 initWithContext:a3];
  v4 = v3;
  if (v3)
  {
    -[ACFHTTPTransportProtocol setRequestURLTemplate:](-[ACCHTTPHandler transport](v3, "transport"), "setRequestURLTemplate:", [-[ACMHTTPHandler environmentPreferences](v3 "environmentPreferences")]);
  }

  return v4;
}

- (id)requestBody
{
  result = objc_opt_new();
  if (result)
  {
    v4 = result;
    if ([(ACCAuthContextProtocol *)[(ACCHTTPHandler *)self context] appID])
    {
      [v4 setObject:-[ACCAuthContextProtocol appID](-[ACCHTTPHandler context](self forKey:{"context"), "appID"), @"m"}];
    }

    else if (qword_2A1EB8F00 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPAuthenticationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 52, 0, "App ID is not set");
    }

    v5 = [objc_msgSend(MEMORY[0x29EDB8DE0] "currentLocale")];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"u"];
    }

    else if (qword_2A1EB8F00 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACMHTTPAuthenticationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 63, 0, "Unable to set localeIdentifier");
    }

    v6 = [objc_msgSend(+[ACCComponents components](ACCComponents "components")];
    if (v6)
    {
      [v4 setObject:v6 forKey:@"za"];
    }

    else if (qword_2A1EB8F00 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPAuthenticationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 74, 0, "Token envelope is not set");
    }

    if ([(ACMHTTPAuthenticationHandler *)self policyVersion])
    {
      [v4 setObject:-[ACMHTTPAuthenticationHandler policyVersion](self forKey:{"policyVersion"), @"pv"}];
    }

    else if (qword_2A1EB8F00 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPAuthenticationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 83, 0, "Policy version is not set");
    }

    if ([(ACCAuthContextProtocol *)[(ACCHTTPHandler *)self context] dsKeyVersion])
    {
      [v4 setObject:-[ACCAuthContextProtocol dsKeyVersion](-[ACCHTTPHandler context](self forKey:{"context"), "dsKeyVersion"), @"t"}];
    }

    else if (qword_2A1EB8F00 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMHTTPAuthenticationHandler requestBody]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 92, 0, "DS Key version is not set");
    }

    v7 = [v4 copy];

    return v7;
  }

  return result;
}

- (BOOL)shouldReturnResponse:(id)a3 orReportError:(id *)a4
{
  if (!a4)
  {
    [ACMHTTPAuthenticationHandler shouldReturnResponse:a2 orReportError:self];
  }

  v13.receiver = self;
  v13.super_class = ACMHTTPAuthenticationHandler;
  v7 = [(ACCHTTPHandler *)&v13 shouldReturnResponse:a3 orReportError:a4];
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      if (!*a4)
      {
        if ([(ACMHTTPAuthenticationHandler *)self shouldValidateTGTs])
        {
          if (![a3 objectForKey:@"pt"])
          {
            v10 = MEMORY[0x29EDB9FA0];
            v11 = MEMORY[0x29EDB8DC0];
            v12 = [ACMBaseLocale localizedString:@"Response from server is malformed"];
            *a4 = [v10 errorWithDomain:@"HTTPServerErrorDomain" code:-100360 userInfo:{objc_msgSend(v11, "dictionaryWithObjectsAndKeys:", v12, *MEMORY[0x29EDB9EE0], 0)}];
            if (qword_2A1EB8F00)
            {
              if ((ACFLogSettingsGetLevelMask() & 8) != 0)
              {
                ACFLog(3, "[ACMHTTPAuthenticationHandler shouldReturnResponse:orReportError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMHTTPAuthenticationHandler.m", 116, 0, "Response from server does not have TGT: %@", a3);
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (uint64_t)shouldReturnResponse:(uint64_t)a1 orReportError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ACMHTTPAuthenticationHandler.m" lineNumber:108 description:@"the error should not be nil!"];
}

@end