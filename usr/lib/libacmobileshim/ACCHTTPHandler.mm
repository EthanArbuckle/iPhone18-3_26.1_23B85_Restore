@interface ACCHTTPHandler
+ (id)handlerWithContext:(id)context;
- (ACCHTTPHandler)initWithContext:(id)context;
- (ACFHTTPTransportProtocol)transport;
- (BOOL)installCertificateWithString:(id)string version:(id)version forRealm:(id)realm;
- (BOOL)isCanceled;
- (BOOL)isConnectionError:(id)error;
- (BOOL)shouldReturnResponse:(id)response orReportError:(id *)error;
- (BOOL)shouldTryOtherServers:(id)servers error:(id)error;
- (BOOL)updatePublicKeyWithResponse:(id)response;
- (NSDictionary)requestHeader;
- (id)convertErrorToACMError:(id)error;
- (id)iForgotString;
- (id)invalidPublicKeyErrorForReponse:(id)reponse error:(id)error;
- (id)realm;
- (id)responseWithData:(id)data error:(id *)error;
- (void)cancelRequest;
- (void)dealloc;
- (void)performRequestWithCompletionBlock:(id)block;
- (void)uninstallPublicKeyForRealm:(id)realm;
- (void)updateTransport;
@end

@implementation ACCHTTPHandler

+ (id)handlerWithContext:(id)context
{
  v3 = [[self alloc] initWithContext:context];

  return v3;
}

- (ACCHTTPHandler)initWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = ACCHTTPHandler;
  v4 = [(ACCHTTPHandler *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(ACCHTTPHandler *)v4 setContext:context];
    [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v5 transport] setHttpMethod:@"POST"];
    -[ACFHTTPTransportProtocol setHttpHeader:](-[ACCHTTPHandler transport](v5, "transport"), "setHttpHeader:", [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{@"text/x-xml-plist", @"Content-Type", 0}]);
    [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v5 transport] setServerHosts:[(ACCHTTPHandler *)v5 serverHosts]];
    [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v5 transport] setServerAttemptsDelays:[(ACCHTTPHandler *)v5 serverAttemptsDelays]];
    v6 = [objc_msgSend(context "request")];
    if (v6)
    {
      [v6 floatValue];
      [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v5 transport] setTimeout:v7];
    }

    [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  }

  return v5;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  [(ACCHTTPHandler *)self setTransport:0];
  [(ACCHTTPHandler *)self setFinalizeBlock:0];
  [(ACCHTTPHandler *)self setContext:0];
  v3.receiver = self;
  v3.super_class = ACCHTTPHandler;
  [(ACCHTTPHandler *)&v3 dealloc];
}

- (id)realm
{
  request = [(ACCAuthContextProtocol *)[(ACCHTTPHandler *)self context] request];

  return [request realm];
}

- (ACFHTTPTransportProtocol)transport
{
  result = self->_transport;
  if (!result)
  {
    v4 = [+[ACFComponents components](ACFComponents "components")];
    self->_transport = v4;
    v5 = [(ACFHTTPTransportProtocol *)v4 conformsToProtocol:&unk_2A1EF1948];
    result = self->_transport;
    if ((v5 & 1) == 0)
    {

      result = 0;
      self->_transport = 0;
    }
  }

  return result;
}

- (BOOL)isCanceled
{
  transport = [(ACCHTTPHandler *)self transport];

  return [(ACFHTTPTransportProtocol *)transport isCanceled];
}

- (NSDictionary)requestHeader
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", 3, @"Version"];
  return [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

- (void)updateTransport
{
  v4 = 0;
  v3 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:-[ACCHTTPHandler httpRequestDictionary](self format:"httpRequestDictionary") options:100 error:{0, &v4}];
  if (qword_2A1EB8FF0 && v4 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACCHTTPHandler updateTransport]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 125, 0, "Error while creating request content: %@", v4);
  }

  [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)self transport] setHttpPOSTBody:v3];
}

- (void)performRequestWithCompletionBlock:(id)block
{
  [(ACCHTTPHandler *)self updateTransport];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __52__ACCHTTPHandler_performRequestWithCompletionBlock___block_invoke;
  v8[3] = &unk_29EE91DB8;
  v8[4] = self;
  [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)self transport] setRetryCheckBlock:v8];
  v5 = [block copy];
  transport = [(ACCHTTPHandler *)self transport];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __52__ACCHTTPHandler_performRequestWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_29EE91DE0;
  v7[4] = self;
  v7[5] = v5;
  [(ACFHTTPTransportProtocol *)transport performRequestWithCompletionBlock:v7];
}

uint64_t __52__ACCHTTPHandler_performRequestWithCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  if (a3)
  {
    v4 = 0;
  }

  else if ([*(a1 + 32) isCanceled])
  {
    v6 = MEMORY[0x29EDB9FA0];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
    v4 = 0;
    v12 = [v6 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-200200 userInfo:{objc_msgSend(v7, "dictionaryWithObject:forKey:", v8, *MEMORY[0x29EDB9ED8])}];
  }

  else
  {
    v4 = [*(a1 + 32) responseWithData:a2 error:&v12];
  }

  v9 = [*(a1 + 32) shouldReturnResponse:v4 orReportError:&v12];
  if (v9)
  {
    if (v12)
    {
      v12 = [*(a1 + 32) convertErrorToACMError:?];
    }

    v10 = [objc_msgSend(*(a1 + 32) "finalizeBlock")];
    [*(a1 + 32) setFinalizeBlock:0];
    (*(*(a1 + 40) + 16))();

    if (v10)
    {
      v10[2](v10, *(a1 + 32));
    }
  }

  else
  {
    [*(a1 + 32) updateTransport];
  }

  return v9;
}

- (void)cancelRequest
{
  [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)self transport] cancelRequest];
  if ([(ACCHTTPHandler *)self finalizeBlock])
  {
    v3 = [-[ACCHTTPHandler finalizeBlock](self "finalizeBlock")];
    [(ACCHTTPHandler *)self setFinalizeBlock:0];
    v4 = v3[2];

    v4(v3, self);
  }
}

- (id)invalidPublicKeyErrorForReponse:(id)reponse error:(id)error
{
  v6 = objc_opt_new();
  if ([error userInfo])
  {
    [v6 addEntriesFromDictionary:{objc_msgSend(error, "userInfo")}];
  }

  if ([reponse objectForKey:@"dp"])
  {
    [v6 setObject:objc_msgSend(reponse forKey:{"objectForKey:", @"dp", @"dp"}];
  }

  if ([reponse objectForKey:@"t"])
  {
    [v6 setObject:objc_msgSend(reponse forKey:{"objectForKey:", @"t", @"t"}];
  }

  v7 = MEMORY[0x29EDB9FA0];
  domain = [error domain];
  code = [error code];
  v10 = [v6 copy];

  return [v7 errorWithDomain:domain code:code userInfo:v10];
}

- (id)convertErrorToACMError:(id)error
{
  errorCopy = error;
  domain = [error domain];
  if ([domain isEqualToString:@"ACCAppleConnectErrorDomain"])
  {
    return errorCopy;
  }

  v8 = -200200;
  localizedFailureReason = [error localizedFailureReason];
  localizedDescription = [error localizedDescription];
  if (![domain isEqualToString:@"HTTPServerErrorDomain"])
  {
    domain2 = [error domain];
    if ([domain2 isEqualToString:*MEMORY[0x29EDB9F08]])
    {
      code = [error code];
      if ((code + 1009) <= 8)
      {
        if (((1 << (code - 15)) & 0x17A) != 0)
        {
          localizedDescription = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
          v8 = -100401;
        }

        else if (code == -1009)
        {
          localizedDescription = [ACMBaseLocale localizedString:@"You appear to be offline. Please connect to the Internet and try again."];
          v8 = -100400;
        }
      }
    }

    goto LABEL_39;
  }

  code2 = [error code];
  if (code2 <= -21094)
  {
    if (code2 <= -80004)
    {
      if ((code2 + 90003) >= 4)
      {
        if (code2 != -90005)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      localizedDescription = [ACMBaseLocale localizedString:@"Can not verify token."];
      v8 = -100360;
      goto LABEL_39;
    }

    if (code2 != -80003)
    {
      if (code2 != -21515)
      {
        if (code2 == -21096)
        {
          localizedDescription = [ACMBaseLocale localizedString:@"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again."];
          v8 = -100125;
        }

        goto LABEL_39;
      }

      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (code2 > -20201)
  {
    if (code2 <= -20102)
    {
      if ((code2 + 20105) >= 2)
      {
        v12 = -20200;
        goto LABEL_19;
      }

LABEL_32:
      iForgotString = [(ACCHTTPHandler *)self iForgotString];
      v17 = [ACMBaseLocale localizedString:@"To protect your security, it’s time to reset your password. It’s easy, just go to %@."];
      localizedDescription = v17;
      v8 = -100104;
      if (iForgotString && v17)
      {
        v18 = [objc_msgSend(iForgotString stringByReplacingOccurrencesOfString:@"https://" withString:{&stru_2A1EB91A0), "stringByReplacingOccurrencesOfString:withString:", @"/", &stru_2A1EB91A0}];
        localizedDescription = [MEMORY[0x29EDBA0F8] stringWithFormat:localizedDescription, v18];
        v8 = -100104;
      }

      goto LABEL_39;
    }

    if (code2 != -20101)
    {
      if (code2 == -1)
      {
        v15 = [ACMBaseLocale localizedString:@"Oops, an error occurred. Thanks for your patience, please try again later."];
LABEL_38:
        localizedDescription = v15;
        goto LABEL_39;
      }

      goto LABEL_39;
    }

LABEL_28:
    localizedDescription = [ACMBaseLocale localizedString:@"Your Apple ID or password was entered incorrectly."];
    v8 = -100102;
    goto LABEL_39;
  }

  if ((code2 + 21093) < 2)
  {
    goto LABEL_32;
  }

  if (code2 != -20209)
  {
    v12 = -20206;
LABEL_19:
    if (code2 != v12)
    {
      goto LABEL_39;
    }

    goto LABEL_28;
  }

  v8 = -100118;
  iForgotString2 = [(ACCHTTPHandler *)self iForgotString];
  v20 = [ACMBaseLocale localizedString:@"This Apple ID has been disabled for security reasons. You can reset your password at %@."];
  localizedDescription = v20;
  if (iForgotString2 && v20)
  {
    v21 = [objc_msgSend(iForgotString2 stringByReplacingOccurrencesOfString:@"https://" withString:{&stru_2A1EB91A0), "stringByReplacingOccurrencesOfString:withString:", @"/", &stru_2A1EB91A0}];
    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:localizedDescription, v21];
    goto LABEL_38;
  }

LABEL_39:
  v22 = MEMORY[0x29EDB9FA0];
  v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{error, *MEMORY[0x29EDB9F18], localizedDescription, *MEMORY[0x29EDB9ED8], localizedFailureReason, *MEMORY[0x29EDB9EE0], 0}];

  return [v22 errorWithDomain:@"ACCAppleConnectErrorDomain" code:v8 userInfo:v23];
}

- (id)responseWithData:(id)data error:(id *)error
{
  if (qword_2A1EB8FF0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACCHTTPHandler responseWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 330, 0, "Converting response data to dictionary...");
  }

  v18 = 0;
  v19 = 0;
  v6 = [MEMORY[0x29EDBA0C0] propertyListWithData:data options:0 format:&v19 error:&v18];
  v7 = v18;
  if (v18)
  {
    if (qword_2A1EB8FF0)
    {
      LevelMask = ACFLogSettingsGetLevelMask();
      v7 = v18;
      if ((LevelMask & 8) != 0)
      {
        ACFLog(3, "[ACCHTTPHandler responseWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 339, 0, "Error while creating dictionary: %@", v18);
        v7 = v18;
      }
    }

    v9 = MEMORY[0x29EDB9FA0];
    v10 = MEMORY[0x29EDB8DC0];
    localizedDescription = [v7 localizedDescription];
    v12 = [v9 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-100360 userInfo:{objc_msgSend(v10, "dictionaryWithObjectsAndKeys:", localizedDescription, *MEMORY[0x29EDB9ED8], v18, *MEMORY[0x29EDB9F18], 0)}];
    if (!error)
    {
      return v6;
    }

LABEL_16:
    if (v12)
    {
      *error = v12;
    }

    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v6 = [v6 objectForKey:@"Response"]) == 0)
  {
    v13 = qword_2A1EB8FF0;
    v14 = MEMORY[0x29EDB9FA0];
    v15 = MEMORY[0x29EDB8DC0];
    v16 = [ACMBaseLocale localizedString:@"Response from server is malformed"];
    v12 = [v14 errorWithDomain:@"ACCAppleConnectErrorDomain" code:-100360 userInfo:{objc_msgSend(v15, "dictionaryWithObjectsAndKeys:", v16, *MEMORY[0x29EDB9ED8], 0)}];
    if (v13 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCHTTPHandler responseWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 348, 0, "Response from server is malformed or has inappropriate type: %@", 0);
    }

    v6 = 0;
    if (error)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

- (BOOL)shouldReturnResponse:(id)response orReportError:(id *)error
{
  selfCopy = self;
  if (!error)
  {
    [ACCHTTPHandler shouldReturnResponse:a2 orReportError:self];
  }

  if (*error)
  {
    LOBYTE(selfCopy) = 1;
    return selfCopy;
  }

  v7 = [response objectForKey:@"ec"];
  integerValue = [v7 integerValue];
  if (integerValue != -21074)
  {
    if (integerValue == -21065 && ![(ACCHTTPHandler *)selfCopy shouldIgnoreInvalidDSPublicKey])
    {
      [(ACCHTTPHandler *)selfCopy setShouldIgnoreInvalidDSPublicKey:1];
      LODWORD(selfCopy) = ![(ACCHTTPHandler *)selfCopy updatePublicKeyWithResponse:response];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(ACCHTTPHandler *)selfCopy shouldIgnoreInvalidToken])
  {
LABEL_10:
    LOBYTE(selfCopy) = 1;
    goto LABEL_11;
  }

  [(ACCHTTPHandler *)selfCopy setShouldIgnoreInvalidToken:1];
  -[ACCHTTPHandler uninstallPublicKeyForRealm:](selfCopy, "uninstallPublicKeyForRealm:", [-[ACCAuthContextProtocol principal](-[ACCHTTPHandler context](selfCopy "context")]);
  LOBYTE(selfCopy) = 0;
LABEL_11:
  if ([v7 intValue])
  {
    v9 = [response objectForKey:@"em"];
    v10 = [response objectForKey:@"ed"];
    if (qword_2A1EB8FF0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCHTTPHandler shouldReturnResponse:orReportError:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 393, 0, "Detected error in response. Error: %@, Message: %@, Description: %@", v7, v9, v10);
    }

    v11 = MEMORY[0x29EDB9FA0];
    intValue = [v7 intValue];
    *error = [v11 errorWithDomain:@"HTTPServerErrorDomain" code:intValue userInfo:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjectsAndKeys:", v9, *MEMORY[0x29EDB9ED8], v10, *MEMORY[0x29EDB9EE0], 0)}];
  }

  return selfCopy;
}

- (BOOL)shouldTryOtherServers:(id)servers error:(id)error
{
  errorCopy = error;
  if (error)
  {

    LOBYTE(v5) = [(ACCHTTPHandler *)self isConnectionError:error];
  }

  else
  {
    v6 = [(ACCHTTPHandler *)self responseWithData:servers error:&errorCopy];
    if (errorCopy || (v5 = [(ACCHTTPHandler *)self isUknownServerError:v6]))
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isConnectionError:(id)error
{
  domain = [error domain];
  if ([domain isEqualToString:*MEMORY[0x29EDB9F08]])
  {
    code = [error code];
    v6 = 0x7Bu >> (code - 15);
    if ((code + 1009) >= 7)
    {
      LOBYTE(v6) = 0;
    }

    return v6 & 1;
  }

  else
  {
    domain2 = [error domain];

    return [domain2 isEqualToString:@"com.apple.ist.ds.appleconnect.errordomain.HTTPMethodInvocation"];
  }
}

- (BOOL)updatePublicKeyWithResponse:(id)response
{
  v5 = [response objectForKey:@"t"];
  if ([v5 length])
  {
    if (qword_2A1EB8FF0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCHTTPHandler updatePublicKeyWithResponse:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 478, 0, "New key version: %@", v5);
    }

    v6 = [response objectForKey:@"dp"];
    v7 = [-[ACCAuthContextProtocol principal](-[ACCHTTPHandler context](self "context")];

    return [(ACCHTTPHandler *)self installCertificateWithString:v6 version:v5 forRealm:v7];
  }

  else
  {
    if (qword_2A1EB8FF0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCHTTPHandler updatePublicKeyWithResponse:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCHTTPHandler.m", 483, 0, "No new key");
    }

    return 0;
  }
}

- (BOOL)installCertificateWithString:(id)string version:(id)version forRealm:(id)realm
{
  v8 = [+[ACCComponents components](ACCComponents "components")];

  return [v8 installCertificateWithString:string version:version forRealm:realm];
}

- (void)uninstallPublicKeyForRealm:(id)realm
{
  v4 = [+[ACCComponents components](ACCComponents "components")];

  [v4 uninstallPublicKeyForRealm:realm];
}

- (id)iForgotString
{
  v2 = [MEMORY[0x29EDB8E70] URLWithString:{-[ACCHTTPHandler iForgotURL](self, "iForgotURL")}];

  return [v2 host];
}

- (uint64_t)shouldReturnResponse:(uint64_t)a1 orReportError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ACCHTTPHandler.m" lineNumber:364 description:@"the error should not be nil!"];
}

@end