@interface ACCTicketManager
- (ACCSSOTGTStoragePolicy)tgtStoragePolicy;
- (BOOL)hasValidPublicKeyForRealm:(id)realm;
- (BOOL)installCertificateWithString:(id)string version:(id)version forRealm:(id)realm;
- (BOOL)storeSSOToken:(id)token;
- (__SecCertificate)certificateForRealm:(id)realm;
- (__SecCertificate)certificateFromString:(id)string;
- (__SecKey)publicKeyForRealm:(id)realm;
- (id)authContextWithRequest:(id)request;
- (id)authContextWithRequest:(id)request keyCode:(id)code authenticationType:(id)type;
- (id)authContextWithRequest:(id)request sessionToken:(id)token;
- (id)certificateStoragePolicy;
- (id)changePasswordContextWithRequest:(id)request oldPassword:(id)password newPassword:(id)newPassword;
- (id)createNonceString;
- (id)createSSOTokenWithContent:(id)content context:(id)context;
- (id)cryptograph;
- (id)decryptEncryptedContent:(id)content withHmac:(id)hmac context:(id)context;
- (id)encryptSourceTokenWithSourceTokenData:(id)data encryptionKey:(id)key initializationVector:(id)vector;
- (id)encryptionKeyWithRandomKey:(id)key;
- (id)envelopEncryptedSourceToken:(id)token dsKeyVersion:(id)version encryptedRandomKey:(id)key initializationVector:(id)vector tokenDataHMAC:(id)c tokenVersion:(id)tokenVersion;
- (id)envelopeWithContext:(id)context;
- (id)envelopeWithContext:(id)context publicKey:(__SecKey *)key;
- (id)fetchSSOTokenForPrincipal:(id)principal;
- (id)fetchSSOTokenForPrincipal:(id)principal agedLessThan:(double)than;
- (id)prepareToken:(id)token withTGTInfo:(id)info;
- (id)serviceTicketStringWithRequest:(id)request ssoToken:(id)token;
- (id)setPublicKeyWithCertificate:(__SecCertificate *)certificate version:(id)version forRealm:(id)realm;
- (id)tokenDataHMACForRandomKey:(id)key sourceTokenData:(id)data;
- (void)dealloc;
- (void)prepareTokenFor2SV:(id)v withVerificationCode:(id)code tgtInfo:(id)info;
- (void)uninstallPublicKeyForRealm:(id)realm;
- (void)updateContextEncryptionHash:(id)hash withKeyCode:(id)code;
- (void)updateContextWithClientSecretIfAny:(id)any;
@end

@implementation ACCTicketManager

- (id)cryptograph
{
  v2 = +[ACFComponents components];

  return [v2 cryptograph];
}

- (id)certificateStoragePolicy
{
  v2 = +[ACFComponents components];

  return [v2 certificateStoragePolicy];
}

- (ACCSSOTGTStoragePolicy)tgtStoragePolicy
{
  v2 = +[ACCComponents components];

  return [v2 tgtStoragePolicy];
}

- (void)dealloc
{
  [(ACCTicketManager *)self setAuthContextClass:0];
  [(ACCTicketManager *)self setSsoTokenClass:0];
  v3.receiver = self;
  v3.super_class = ACCTicketManager;
  [(ACCTicketManager *)&v3 dealloc];
}

- (__SecCertificate)certificateFromString:(id)string
{
  if (![string length])
  {
    return 0;
  }

  v5 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  if (![v5 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager certificateFromString:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 68, 0, "Failed to decode PEM data");
    }

    return 0;
  }

  v6 = *MEMORY[0x29EDB8ED8];

  return SecCertificateCreateWithData(v6, v5);
}

- (BOOL)installCertificateWithString:(id)string version:(id)version forRealm:(id)realm
{
  if (![string length] || !objc_msgSend(version, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager installCertificateWithString:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 98, 0, "Public key or version missing in the server response");
    }

    return 0;
  }

  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACCTicketManager installCertificateWithString:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 79, 0, "Install new public key with version %@", version);
  }

  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(string componentsSeparatedByString:{@"-----BEGIN CERTIFICATE-----", "componentsJoinedByString:", &stru_2A1EB91A0), "componentsSeparatedByString:", @"-----END CERTIFICATE-----", "componentsJoinedByString:", &stru_2A1EB91A0}];
  v10 = -[ACCTicketManager certificateFromString:](self, "certificateFromString:", [objc_msgSend(v9 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x29EDB9F50], "whitespaceAndNewlineCharacterSet")), "componentsJoinedByString:", &stru_2A1EB91A0}]);
  if (!v10)
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager installCertificateWithString:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 93, 0, "Failed to read certificate data");
    }

    return 0;
  }

  v11 = v10;
  v12 = [(ACCTicketManager *)self setPublicKeyWithCertificate:v10 version:version forRealm:realm]!= 0;
  CFRelease(v11);
  return v12;
}

- (void)uninstallPublicKeyForRealm:(id)realm
{
  certificateStoragePolicy = [(ACCTicketManager *)self certificateStoragePolicy];
  v6 = [(ACCTicketManager *)self certificateLabelForRealm:realm];

  [certificateStoragePolicy removeCertificateWithLabel:v6 realm:realm];
}

- (__SecCertificate)certificateForRealm:(id)realm
{
  v5 = [(ACCTicketManager *)self certificateLabelForRealm:?];
  result = [v5 length];
  if (result)
  {
    certificateStoragePolicy = [(ACCTicketManager *)self certificateStoragePolicy];

    return [certificateStoragePolicy certificateWithLabel:v5 realm:realm];
  }

  return result;
}

- (__SecKey)publicKeyForRealm:(id)realm
{
  if (qword_2A1EB8EC0 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 121, 0, 0);
  }

  v5 = [(ACCTicketManager *)self certificateForRealm:realm];
  if (v5 || (v5 = [(ACCTicketManager *)self defaultPublicKeyCertificateForRealm:realm]) != 0)
  {
    v6 = [MEMORY[0x29EDB8D80] arrayWithObject:v5];
    BasicX509 = SecPolicyCreateBasicX509();
    trust = 0;
    v8 = SecTrustCreateWithCertificates(v6, BasicX509, &trust);
    if (trust)
    {
      v9 = MEMORY[0x29C288B20]();
      if (v9)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v10 = MEMORY[0x29C288B40](trust, &v15);
      if (qword_2A1EB8EB0)
      {
        v11 = v10;
        if (v10)
        {
          if ((ACFLogSettingsGetLevelMask() & 8) != 0)
          {
            ACFLog(3, "[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 155, 0, "Trust evaluate failed with code: %d", v11);
          }
        }
      }

      v9 = MEMORY[0x29C288B20](trust);
      if (v9)
      {
LABEL_13:
        v12 = v9;
        v13 = v9;
      }

      else
      {
        if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
        {
          ACFLog(3, "[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 167, 0, "Failed create public key");
        }

        v12 = 0;
      }

      CFRelease(trust);
    }

    else
    {
      if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 173, 0, "Failed to create trust instance with error: %d", v8);
      }

      v12 = 0;
    }

    CFRelease(BasicX509);
  }

  else
  {
    v12 = 0;
  }

  if (qword_2A1EB8EB8 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileEnd("[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 178, 0, 0);
  }

  return v12;
}

- (BOOL)hasValidPublicKeyForRealm:(id)realm
{
  if (realm)
  {
    v5 = [-[ACCTicketManager publicKeyVersionForRealm:](self "publicKeyVersionForRealm:{"compare:", -[ACCTicketManager defaultPublicKeyVersionForRealm:](self, "defaultPublicKeyVersionForRealm:", realm)}")];
    if (v5)
    {
      LOBYTE(v5) = [(ACCTicketManager *)self publicKeyForRealm:realm]!= 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)setPublicKeyWithCertificate:(__SecCertificate *)certificate version:(id)version forRealm:(id)realm
{
  certificateStoragePolicy = [(ACCTicketManager *)self certificateStoragePolicy];
  v10 = SecCertificateCopySubjectSummary(certificate);
  v11 = [(ACCTicketManager *)self certificateLabelForRealm:realm];
  if ([v11 length])
  {
    [(ACCTicketManager *)self uninstallPublicKeyForRealm:realm];
  }

  else if (!v11 || ([(__CFString *)v10 isEqualToString:v11]& 1) == 0)
  {
    if ([certificateStoragePolicy removeCertificateWithLabel:v10 realm:realm])
    {
      if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "[ACCTicketManager setPublicKeyWithCertificate:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 219, 0, "Removed previous certificate");
      }
    }

    else if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager setPublicKeyWithCertificate:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 223, 0, "Error trying to remove certificate %@", v10);
    }
  }

  if ([certificateStoragePolicy storeCertificate:certificate realm:realm])
  {
    [(ACCTicketManager *)self setPublickKeyVersion:version label:v10 forRealm:realm];
  }

  else
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager setPublicKeyWithCertificate:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 229, 0, "Error trying to store certificate");
    }

    return 0;
  }

  return v10;
}

- (id)createNonceString
{
  cryptograph = [(ACCTicketManager *)self cryptograph];

  return [cryptograph randomStringOfLength:32];
}

- (id)envelopeWithContext:(id)context
{
  contextCopy = context;
  if (context)
  {
    v5 = [objc_msgSend(context "principal")];
    v6 = [(ACCTicketManager *)self publicKeyForRealm:v5];
    [contextCopy setDsKeyVersion:{-[ACCTicketManager publicKeyVersionForRealm:](self, "publicKeyVersionForRealm:", v5)}];
    contextCopy = [(ACCTicketManager *)self envelopeWithContext:contextCopy publicKey:v6];
  }

  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACCTicketManager envelopeWithContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 293, 0, "Created token envelope");
  }

  return contextCopy;
}

- (id)envelopeWithContext:(id)context publicKey:(__SecKey *)key
{
  if (!context || !key)
  {
    return 0;
  }

  cryptograph = [(ACCTicketManager *)self cryptograph];
  [context setEncryptionKey:{objc_msgSend(cryptograph, "randomDataOfLength:", kACFAES128KeySize)}];
  cryptograph2 = [(ACCTicketManager *)self cryptograph];
  [context setInitializationVector:{objc_msgSend(cryptograph2, "randomDataOfLength:", kACFAES128KeySize)}];
  v9 = [objc_msgSend(context "tokenSourceString")];
  v10 = -[ACCTicketManager encryptSourceTokenWithSourceTokenData:encryptionKey:initializationVector:](self, "encryptSourceTokenWithSourceTokenData:encryptionKey:initializationVector:", [-[ACCTicketManager cryptograph](self "cryptograph")], -[ACCTicketManager encryptionKeyWithRandomKey:](self, "encryptionKeyWithRandomKey:", objc_msgSend(context, "encryptionKey")), objc_msgSend(context, "initializationVector"));
  v11 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  v12 = -[ACCTicketManager tokenDataHMACForRandomKey:sourceTokenData:](self, "tokenDataHMACForRandomKey:sourceTokenData:", [context encryptionKey], v9);
  dsKeyVersion = [context dsKeyVersion];
  initializationVector = [context initializationVector];
  tokenVersion = [(ACCTicketManager *)self tokenVersion];

  return [(ACCTicketManager *)self envelopEncryptedSourceToken:v10 dsKeyVersion:dsKeyVersion encryptedRandomKey:v11 initializationVector:initializationVector tokenDataHMAC:v12 tokenVersion:tokenVersion];
}

- (id)encryptSourceTokenWithSourceTokenData:(id)data encryptionKey:(id)key initializationVector:(id)vector
{
  if ([data length] && objc_msgSend(key, "length") && objc_msgSend(vector, "length"))
  {
    cryptograph = [(ACCTicketManager *)self cryptograph];

    return [cryptograph encryptAES128CBCData:data withKey:key initializationVector:vector pading:1];
  }

  else
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager encryptSourceTokenWithSourceTokenData:encryptionKey:initializationVector:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 343, 0, "Invalid parameters");
    }

    return 0;
  }
}

- (id)decryptEncryptedContent:(id)content withHmac:(id)hmac context:(id)context
{
  if (![content length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 391, 0, "Nothing to decrypt");
    }

    return 0;
  }

  if (!hmac)
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 386, 0, "HMAC is invalid");
    }

    return 0;
  }

  if (![objc_msgSend(context "encryptionKey")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 381, 0, "Key is empty");
    }

    return 0;
  }

  if (![objc_msgSend(objc_msgSend(-[ACCTicketManager cryptograph](self "cryptograph")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 376, 0, "TGT checksum does not match");
    }

    return 0;
  }

  if (![objc_msgSend(context "initializationVector")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 371, 0, "Invalid initialization vector");
    }

    return 0;
  }

  v9 = -[ACCTicketManager encryptionKeyWithRandomKey:](self, "encryptionKeyWithRandomKey:", [context encryptionKey]);
  cryptograph = [(ACCTicketManager *)self cryptograph];
  initializationVector = [context initializationVector];

  return [cryptograph decryptAES128CBCData:content withKey:v9 initializationVector:initializationVector pading:0];
}

- (id)envelopEncryptedSourceToken:(id)token dsKeyVersion:(id)version encryptedRandomKey:(id)key initializationVector:(id)vector tokenDataHMAC:(id)c tokenVersion:(id)tokenVersion
{
  if (![token length] || !objc_msgSend(key, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager envelopEncryptedSourceToken:dsKeyVersion:encryptedRandomKey:initializationVector:tokenDataHMAC:tokenVersion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 429, 0, "Invalid parameters");
    }

    return 0;
  }

  if (![(ACCTicketManager *)self identifier])
  {
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{version, @"t", token, @"enc", key, @"ek", 0}];
  }

  if (![version length] || !objc_msgSend(vector, "length") || !objc_msgSend(c, "length") || !objc_msgSend(tokenVersion, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager envelopEncryptedSourceToken:dsKeyVersion:encryptedRandomKey:initializationVector:tokenDataHMAC:tokenVersion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 423, 0, "Invalid parameters");
    }

    return 0;
  }

  v15 = [MEMORY[0x29EDB8E00] dictionaryWithObjectsAndKeys:{version, @"t", token, @"enc", key, @"ek", -[ACCTicketManager identifier](self, "identifier"), @"ex", c, @"hmac", vector, @"iv", tokenVersion, @"a", 0}];
  if ([(ACCTicketManager *)self clientID]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInteger:", -[ACCTicketManager clientID](self, "clientID")), @"cid"}];
  }

  v16 = [v15 copy];

  return v16;
}

- (id)authContextWithRequest:(id)request
{
  v5 = [(objc_class *)[(ACCTicketManager *)self authContextClass] authContextWithRequest:request];
  [v5 setNonce:{-[ACCTicketManager createNonceString](self, "createNonceString")}];
  [v5 setDsKeyVersion:{-[ACCTicketManager publicKeyVersionForRealm:](self, "publicKeyVersionForRealm:", objc_msgSend(objc_msgSend(request, "principal"), "realm"))}];
  [v5 setTokenVersion:{-[ACCTicketManager tokenVersion](self, "tokenVersion")}];
  return v5;
}

- (id)authContextWithRequest:(id)request keyCode:(id)code authenticationType:(id)type
{
  requestCopy = request;
  if (request)
  {
    if ([code length])
    {
      requestCopy = [(ACCTicketManager *)self authContextWithRequest:requestCopy];
      [requestCopy setAuthenticationType:type];
      [(ACCTicketManager *)self updateContextEncryptionHash:requestCopy withKeyCode:code];
    }

    else
    {
      return 0;
    }
  }

  return requestCopy;
}

- (id)authContextWithRequest:(id)request sessionToken:(id)token
{
  v5 = [(ACCTicketManager *)self authContextWithRequest:request];
  [v5 setSessionToken:token];
  return v5;
}

- (void)updateContextEncryptionHash:(id)hash withKeyCode:(id)code
{
  v5 = [-[ACCTicketManager cryptograph](self "cryptograph")];

  [hash setEncryptionHash:v5];
}

- (id)prepareToken:(id)token withTGTInfo:(id)info
{
  tokenCopy = token;
  if (!token)
  {
    return tokenCopy;
  }

  v6 = MEMORY[0x29EDB8DB0];
  [objc_msgSend(info objectForKey:{@"e", "doubleValue"}];
  [tokenCopy setExpirationDate:{objc_msgSend(v6, "dateWithTimeIntervalSince1970:", v7 / 1000.0)}];
  if (![tokenCopy expirationDate])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 506, 0, "Expiration date is missing");
    }

    return 0;
  }

  [tokenCopy setSessionToken:{objc_msgSend(info, "objectForKey:", @"q"}];
  if (![objc_msgSend(tokenCopy "sessionToken")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 516, 0, "Session token is missing");
    }

    return 0;
  }

  v8 = [info objectForKey:@"b"];
  if (![v8 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 528, 0, "User name is missing");
    }

    return 0;
  }

  v9 = [info objectForKey:@"c"];
  if (![v9 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 538, 0, "Realm is missing");
    }

    return 0;
  }

  if ([objc_msgSend(info objectForKey:{@"lls", "integerValue"}])
  {
    [tokenCopy setLongLiveSession:1];
  }

  [tokenCopy setPersonID:{objc_msgSend(info, "objectForKey:", @"a"}];
  [tokenCopy setPrincipal:{+[ACFPrincipal principalWithUserName:realm:](ACFPrincipal, "principalWithUserName:realm:", v8, v9)}];
  if (objc_opt_respondsToSelector())
  {
    [tokenCopy setUserPreferences:{objc_msgSend(info, "objectForKey:", @"ap"}];
  }

  return tokenCopy;
}

- (void)prepareTokenFor2SV:(id)v withVerificationCode:(id)code tgtInfo:(id)info
{
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 567, 0, "2SV code flow");
  }

  [v setPersonID:{objc_msgSend(info, "objectForKey:", @"a"}];
  [v setIsTwoStepVerificationRequired:{objc_msgSend(info, "objectForKey:", @"se"}];
  if (![v isTwoStepVerificationRequired])
  {
    [v setIsTwoStepVerificationRequired:{objc_msgSend(info, "objectForKey:", @"sap"}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v setIsUserEnrolledFor2SV:{objc_msgSend(info, "objectForKey:", @"sac"}];
  }

  if ([code length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 582, 0, "TGT obtained on 2-step verification");
    }

    v9 = [info objectForKey:@"cs"];
    v10 = [info objectForKey:@"ccd"];
    if ([v principal] && objc_msgSend(v9, "length") && objc_msgSend(v, "personID") && v10)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [v setClientSecret:v9];
        [v setClientSecretCreationTimestamp:v10];

        [(ACCTicketManager *)self tokenDidReceive2SVSecret:v];
      }
    }

    else
    {
      v11 = qword_2A1EB8EB0;
      personID = [v personID];
      if (v11 && !personID && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 599, 0, "Person ID is missing");
      }

      v13 = qword_2A1EB8EB0;
      v14 = [v9 length];
      if (v13 && !v14 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 603, 0, "cSecret is missing");
      }

      if (qword_2A1EB8EB0 && !v10 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 607, 0, "cSecret create date is missing");
      }
    }
  }
}

- (id)createSSOTokenWithContent:(id)content context:(id)context
{
  v7 = [content length];
  if (context && v7)
  {
    v12 = 100;
    v8 = [MEMORY[0x29EDBA0C0] propertyListWithData:content options:0 format:&v12 error:0];
    if (v8)
    {
      [(ACCTicketManager *)self ssoTokenClass];
      v9 = objc_opt_new();
      [v9 setNonce:{objc_msgSend(context, "nonce")}];
      [v9 setCreationDate:{objc_msgSend(context, "creationDate")}];
      [v9 setRecentAuthenticationDate:{objc_msgSend(context, "creationDate")}];
      [v9 setInitialRequest:{objc_msgSend(context, "request")}];
      if (objc_opt_respondsToSelector())
      {
        [v9 setRecentUnlockDate:{objc_msgSend(context, "creationDate")}];
      }
    }

    else
    {
      if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 637, 0, "Failed to create SSO token");
      }

      v9 = 0;
    }

    v10 = [(ACCTicketManager *)self prepareToken:v9 withTGTInfo:v8];
    if (v10)
    {
      -[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:](self, "prepareTokenFor2SV:withVerificationCode:tgtInfo:", v10, [context twoStepVerificationCode], v8);
    }
  }

  else
  {
    if (qword_2A1EB8EB0)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 649, 0, "Invalid Parameters");
      }

      if (![content length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 653, 0, "Content is empty");
      }

      if (!context && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 657, 0, "Token is absent");
      }
    }

    else
    {
      [content length];
    }

    return 0;
  }

  return v10;
}

- (BOOL)storeSSOToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  if (![(ACCTicketManager *)self tgtStoragePolicy])
  {
    [ACCTicketManager storeSSOToken:];
  }

  tgtStoragePolicy = [(ACCTicketManager *)self tgtStoragePolicy];

  return [(ACCSSOTGTStoragePolicy *)tgtStoragePolicy storeToken:token];
}

- (id)fetchSSOTokenForPrincipal:(id)principal
{
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACCTicketManager fetchSSOTokenForPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 677, 0, "Fetching token ignoring idle expiration timeout");
  }

  [MEMORY[0x29EDB8DB0] timeIntervalSinceReferenceDate];

  return [(ACCTicketManager *)self fetchSSOTokenForPrincipal:principal agedLessThan:?];
}

- (id)fetchSSOTokenForPrincipal:(id)principal agedLessThan:(double)than
{
  if (![(ACCTicketManager *)self tgtStoragePolicy])
  {
    [ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:];
  }

  result = [(ACCSSOTGTStoragePolicy *)[(ACCTicketManager *)self tgtStoragePolicy] searchTokenWithPrincipal:principal];
  if (result)
  {
    v8 = result;
    if (qword_2A1EB8EB0)
    {
      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 688, 0, "Token principal: %@", [v8 principal]);
      }

      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 689, 0, "Token expiration date: %@", [v8 expirationDate]);
      }

      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 690, 0, "Token recent authentication date: %@", [v8 recentAuthenticationDate]);
      }

      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 691, 0, "Token recent unlock date: %@", [v8 recentUnlockDate]);
      }
    }

    [objc_msgSend(v8 "expirationDate")];
    if (v9 < 0.0)
    {
      if (qword_2A1EB8EB0)
      {
        if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
        {
          expirationDate = [0 expirationDate];
          ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 696, 0, "Token is expired: %@. Expiration date: %@, Current date: %@", principal, expirationDate, [MEMORY[0x29EDB8DB0] date]);
        }
      }

      [(ACCSSOTGTStoragePolicy *)[(ACCTicketManager *)self tgtStoragePolicy] removeTokenWithPrincipal:principal];
      return 0;
    }

    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 701, 0, "Token is not expired");
    }

    v11 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-than];
    if ([objc_msgSend(v8 "recentAuthenticationDate")] != 1)
    {
      if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 709, 0, "Idle expiration time is out of date. Recent authentication date: %@. Reference date: %@", [v8 recentAuthenticationDate], v11);
      }

      return 0;
    }

    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 714, 0, "Idle expiration did not pass. Token is valid.");
    }

    v12 = qword_2A1EB8EB0;
    v13 = [objc_msgSend(objc_msgSend(v8 "principal")];
    v14 = v13;
    if (v13)
    {
      result = v8;
    }

    else
    {
      result = 0;
    }

    if (v12 && (v14 & 1) == 0)
    {
      if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 723, 0, "Token realms does not match request realm", v15);
      }

      return 0;
    }
  }

  return result;
}

- (id)changePasswordContextWithRequest:(id)request oldPassword:(id)password newPassword:(id)newPassword
{
  v8 = [(ACCTicketManager *)self authContextWithRequest:request keyCode:password authenticationType:&unk_2A1EE3068];
  [v8 setOldUserKey:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "hashStringSHA256WithString:", password)}];
  [v8 setCurrentUserKey:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeBase64:", objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeObscuredDataWithString:length:", newPassword, 2 * objc_msgSend(newPassword, "lengthOfBytesUsingEncoding:", 4)))}];
  return v8;
}

- (id)serviceTicketStringWithRequest:(id)request ssoToken:(id)token
{
  v6 = [request copy];
  if ([objc_msgSend(v6 "userName")])
  {
    if ([objc_msgSend(v6 "userName")])
    {
      goto LABEL_7;
    }

    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager serviceTicketStringWithRequest:ssoToken:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 755, 0, "Internal inconsistency");
    }
  }

  [v6 setUserName:{objc_msgSend(objc_msgSend(token, "principal"), "userName")}];
LABEL_7:
  v7 = -[ACCTicketManager authContextWithRequest:sessionToken:](self, "authContextWithRequest:sessionToken:", v6, [token sessionToken]);
  if ([token longLiveSession])
  {
    [v7 setTouchIDSupport:MEMORY[0x29EDB8EB0]];
  }

  if (!v7)
  {
    return 0;
  }

  v8 = [(ACCTicketManager *)self envelopeWithContext:v7];
  if (!v8)
  {
    return 0;
  }

  v9 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACCTicketManager serviceTicketStringWithRequest:ssoToken:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 772, 0, "SIZE TEST: Service ticket size before zipping %d", [v9 length]);
  }

  v10 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACCTicketManager serviceTicketStringWithRequest:ssoToken:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 777, 0, "SIZE TEST: Service ticket size before base64 encoding %d", [v11 length]);
  }

  v12 = qword_2A1EB8EB0;
  v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%@", -[ACCTicketManager serviceTicketPrefix](self, "serviceTicketPrefix"), objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeBase64:", v11)];
  if (v12 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "-[ACCTicketManager serviceTicketStringWithRequest:ssoToken:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 779, 0, "SIZE TEST: Service ticket size is %d", [v13 length]);
  }

  return v13;
}

- (void)updateContextWithClientSecretIfAny:(id)any
{
  v5 = -[ACCTicketManager twoSVSecretForPrincipal:](self, "twoSVSecretForPrincipal:", [any principal]);
  if ([v5 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager updateContextWithClientSecretIfAny:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 826, 0, "cSecret present. Create HMAC");
    }

    v6 = -[ACCTicketManager twoSVPersonIDForPrincipal:](self, "twoSVPersonIDForPrincipal:", [any principal]);
    v7 = MEMORY[0x29EDBA0F8];
    v8 = MEMORY[0x29EDBA070];
    [objc_msgSend(any "creationDate")];
    [any setClientSecretTokenHmac:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeBase16:", objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "hmac256DataWithData:key:", objc_msgSend(objc_msgSend(v7, "stringWithFormat:", @"%@:%@:%@", objc_msgSend(v8, "numberWithUnsignedLongLong:", (v9 * 1000.0)), -[ACCTicketManager deviceIdentifier](self, "deviceIdentifier"), v6), "dataUsingEncoding:", 4), objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "decodeBase16:", v5)))}];
    v10 = -[ACCTicketManager twoSVCreateDateForPrincipal:](self, "twoSVCreateDateForPrincipal:", [any principal]);

    [any setClientSecretCreateDate:v10];
  }
}

- (id)encryptionKeyWithRandomKey:(id)key
{
  if (![key length])
  {
    [ACCTicketManager encryptionKeyWithRandomKey:];
  }

  result = [key length];
  if (result)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
    [v7 appendData:key];
    [v7 appendData:v6];
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    v8 = [-[ACCTicketManager cryptograph](self "cryptograph")];
    v9 = [v8 subdataWithRange:{0, kACFAES128KeySize}];
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    return v9;
  }

  return result;
}

- (id)tokenDataHMACForRandomKey:(id)key sourceTokenData:(id)data
{
  if (![key length] || !objc_msgSend(data, "length"))
  {
    [ACCTicketManager tokenDataHMACForRandomKey:sourceTokenData:];
  }

  if (![key length])
  {
    return 0;
  }

  if (![data length])
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x29EDB8DF8]);
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  v8 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  [v8 appendData:key];
  [v8 appendData:v7];
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  v9 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  if (![v9 length])
  {
    return 0;
  }

  cryptograph = [(ACCTicketManager *)self cryptograph];

  return [cryptograph hmac256DataWithData:data key:v9];
}

- (uint64_t)storeSSOToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)fetchSSOTokenForPrincipal:agedLessThan:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)encryptionKeyWithRandomKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"0 != randomKey.length" object:? file:? lineNumber:? description:?];
}

- (uint64_t)tokenDataHMACForRandomKey:sourceTokenData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x29EDB9F28] currentHandler];
  OUTLINED_FUNCTION_0();
  return [v0 handleFailureInMethod:@"0 != randomKey.length && 0 != sourceTokenData.length" object:? file:? lineNumber:? description:?];
}

@end