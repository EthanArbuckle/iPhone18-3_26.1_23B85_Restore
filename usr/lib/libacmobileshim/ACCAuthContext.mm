@interface ACCAuthContext
+ (id)authContextWithRequest:(id)a3;
- (ACCAuthContext)initWithRequest:(id)a3;
- (NSDate)expirationDate;
- (NSMutableDictionary)parametersDictionary;
- (NSString)xmlTokenSourceString;
- (id)strippedPropertyListString:(id)a3;
- (void)dealloc;
- (void)setExpirationDate:(id)a3;
@end

@implementation ACCAuthContext

+ (id)authContextWithRequest:(id)a3
{
  if (qword_2A1EB8F28 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "+[ACCAuthContext authContextWithRequest:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCAuthContext.m", 47, 0, "Creating initial token");
  }

  v5 = [[a1 alloc] initWithRequest:a3];

  return v5;
}

- (ACCAuthContext)initWithRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = ACCAuthContext;
  v4 = [(ACCAuthContext *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACCAuthContext *)v4 setDsKeyVersion:@"0.0"];
    -[ACCAuthContext setPrincipal:](v5, "setPrincipal:", [a3 principal]);
    -[ACCAuthContext setAppID:](v5, "setAppID:", [a3 appID]);
    -[ACCAuthContext setAppIDKey:](v5, "setAppIDKey:", [a3 appIDKey]);
    -[ACCAuthContext setCreationDate:](v5, "setCreationDate:", [MEMORY[0x29EDB8DB0] date]);
    -[ACCAuthContext setServiceName:](v5, "setServiceName:", [a3 serviceName]);
    [(ACCAuthContext *)v5 setRequest:a3];
  }

  return v5;
}

- (void)dealloc
{
  [(ACCAuthContext *)self setDsKeyVersion:0];
  [(ACCAuthContext *)self setAppID:0];
  [(ACCAuthContext *)self setAppIDKey:0];
  [(ACCAuthContext *)self setRequest:0];
  [(ACCAuthContext *)self setNonce:0];
  [(ACCAuthContext *)self setEncryptionHash:0];
  [(ACCAuthContext *)self setOldUserKey:0];
  [(ACCAuthContext *)self setCurrentUserKey:0];
  [(ACCAuthContext *)self setPrincipal:0];
  [(ACCAuthContext *)self setCreationDate:0];
  [(ACCAuthContext *)self setExpirationDate:0];
  [(ACCAuthContext *)self setSessionToken:0];
  [(ACCAuthContext *)self setTokenVersion:0];
  [(ACCAuthContext *)self setTwoStepVerificationCode:0];
  [(ACCAuthContext *)self setPersonID:0];
  [(ACCAuthContext *)self setSelectedDeviceId:0];
  [(ACCAuthContext *)self setSelectedDeviceType:0];
  [(ACCAuthContext *)self setServiceName:0];
  [(ACCAuthContext *)self setRecoveryKey:0];
  [(ACCAuthContext *)self setClientSecretTokenHmac:0];
  [(ACCAuthContext *)self setClientSecretCreateDate:0];
  [(ACCAuthContext *)self setTouchIDSupport:0];
  v3.receiver = self;
  v3.super_class = ACCAuthContext;
  [(ACCAuthContext *)&v3 dealloc];
}

- (NSDate)expirationDate
{
  if (self->_expirationDate)
  {
    return self->_expirationDate;
  }

  v5 = [(ACCAuthContext *)self creationDate];

  return [(NSDate *)v5 dateByAddingTimeInterval:300.0];
}

- (void)setExpirationDate:(id)a3
{
  expirationDate = self->_expirationDate;
  if (expirationDate != a3)
  {
    v6 = expirationDate;
    self->_expirationDate = a3;
  }
}

- (NSMutableDictionary)parametersDictionary
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ([(NSString *)[(ACFPrincipal *)[(ACCAuthContext *)self principal] realm] length])
  {
    [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self tokenVersion] forKey:@"a"];
    if ([(NSString *)[(ACFPrincipal *)[(ACCAuthContext *)self principal] userName] length])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACFPrincipal *)[(ACCAuthContext *)self principal] userName] forKey:@"b"];
    }

    [(NSMutableDictionary *)v3 setValue:[(ACFPrincipal *)[(ACCAuthContext *)self principal] realm] forKey:@"c"];
    v4 = MEMORY[0x29EDBA070];
    [(NSDate *)[(ACCAuthContext *)self creationDate] timeIntervalSince1970];
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v4 numberWithUnsignedLongLong:(v5 * 1000.0)], @"d");
    v6 = MEMORY[0x29EDBA070];
    [(NSDate *)[(ACCAuthContext *)self expirationDate] timeIntervalSince1970];
    -[NSMutableDictionary setValue:forKey:](v3, "setValue:forKey:", [v6 numberWithUnsignedLongLong:(v7 * 1000.0)], @"e");
    if ([(ACCAuthContext *)self appID])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self appID] forKey:@"m"];
    }

    if ([(NSString *)[(ACCAuthContext *)self appIDKey] length])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self appIDKey] forKey:@"n"];
    }

    [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self nonce] forKey:@"o"];
    [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self dsKeyVersion] forKey:@"t"];
    if ([(ACCAuthContext *)self encryptionHash])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self encryptionHash] forKey:@"sh"];
    }

    [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self authenticationType] forKey:@"s"];
    if ([(ACCAuthContext *)self sessionToken])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self sessionToken] forKey:@"q"];
    }

    if ([(ACCAuthContext *)self currentUserKey])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self currentUserKey] forKey:@"nv"];
    }

    if ([(ACCAuthContext *)self oldUserKey])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self oldUserKey] forKey:@"ov"];
    }

    if ([(ACCAuthContext *)self personID])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self personID] forKey:@"pid"];
    }

    if ([(ACCAuthContext *)self serviceName])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self serviceName] forKey:@"sn"];
    }

    if ([(ACCAuthContext *)self selectedDeviceId])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self selectedDeviceId] forKey:@"di"];
    }

    if ([(ACCAuthContext *)self selectedDeviceType])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self selectedDeviceType] forKey:@"dk"];
    }

    if ([(ACCAuthContext *)self twoStepVerificationCode])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self twoStepVerificationCode] forKey:@"sc"];
    }

    if ([(ACCAuthContext *)self clientSecretTokenHmac])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self clientSecretTokenHmac] forKey:@"ho"];
      if ([(ACCAuthContext *)self clientSecretCreateDate])
      {
        [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self clientSecretCreateDate] forKey:@"ccd"];
      }
    }

    if ([(ACCAuthContext *)self recoveryKey])
    {
      [(NSMutableDictionary *)v3 setValue:[(ACCAuthContext *)self recoveryKey] forKey:@"rk"];
    }

    v8 = [MEMORY[0x29EDB8DE0] currentLocale];
    v9 = [v8 objectForKey:*MEMORY[0x29EDB8CF8]];
    v10 = [v8 objectForKey:*MEMORY[0x29EDB8CE0]];
    v11 = [objc_msgSend(MEMORY[0x29EDB8E60] "systemTimeZone")];
    if (v9)
    {
      [(NSMutableDictionary *)v3 setValue:v9 forKey:@"lc"];
    }

    if (v10)
    {
      [(NSMutableDictionary *)v3 setValue:v10 forKey:@"lr"];
    }

    if (v11)
    {
      [(NSMutableDictionary *)v3 setValue:v11 forKey:@"tz"];
    }
  }

  return v3;
}

- (NSString)xmlTokenSourceString
{
  v3 = [(ACCAuthContext *)self parametersDictionary];
  v9 = 0;
  v4 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v3 format:100 options:0 error:&v9];
  if (qword_2A1EB8F28 && v9 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACCAuthContext xmlTokenSourceString]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCAuthContext.m", 230, 0, "Failed to create plist: %@", v9);
  }

  v5 = qword_2A1EB8F28;
  v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:v4 encoding:4];
  if (!v5)
  {
    return [(ACCAuthContext *)self strippedPropertyListString:v6];
  }

  if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACCAuthContext xmlTokenSourceString]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCAuthContext.m", 233, 0, "SIZE TEST: Token source string size is %d", [v6 length]);
  }

  v7 = [(ACCAuthContext *)self strippedPropertyListString:v6];
  if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACCAuthContext xmlTokenSourceString]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCAuthContext.m", 235, 0, "SIZE TEST: Stripped token source string size is %d", [v7 length]);
  }

  return v7;
}

- (id)strippedPropertyListString:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 componentsSeparatedByString:{@"\n", "componentsJoinedByString:", &stru_2A1EB91A0), "componentsSeparatedByString:", @"\t"}];

  return [v3 componentsJoinedByString:&stru_2A1EB91A0];
}

@end