@interface ACCTicketManager
- (ACCSSOTGTStoragePolicy)tgtStoragePolicy;
- (BOOL)hasValidPublicKeyForRealm:(id)a3;
- (BOOL)installCertificateWithString:(id)a3 version:(id)a4 forRealm:(id)a5;
- (BOOL)storeSSOToken:(id)a3;
- (__SecCertificate)certificateForRealm:(id)a3;
- (__SecCertificate)certificateFromString:(id)a3;
- (__SecKey)publicKeyForRealm:(id)a3;
- (id)authContextWithRequest:(id)a3;
- (id)authContextWithRequest:(id)a3 keyCode:(id)a4 authenticationType:(id)a5;
- (id)authContextWithRequest:(id)a3 sessionToken:(id)a4;
- (id)certificateStoragePolicy;
- (id)changePasswordContextWithRequest:(id)a3 oldPassword:(id)a4 newPassword:(id)a5;
- (id)createNonceString;
- (id)createSSOTokenWithContent:(id)a3 context:(id)a4;
- (id)cryptograph;
- (id)decryptEncryptedContent:(id)a3 withHmac:(id)a4 context:(id)a5;
- (id)encryptSourceTokenWithSourceTokenData:(id)a3 encryptionKey:(id)a4 initializationVector:(id)a5;
- (id)encryptionKeyWithRandomKey:(id)a3;
- (id)envelopEncryptedSourceToken:(id)a3 dsKeyVersion:(id)a4 encryptedRandomKey:(id)a5 initializationVector:(id)a6 tokenDataHMAC:(id)a7 tokenVersion:(id)a8;
- (id)envelopeWithContext:(id)a3;
- (id)envelopeWithContext:(id)a3 publicKey:(__SecKey *)a4;
- (id)fetchSSOTokenForPrincipal:(id)a3;
- (id)fetchSSOTokenForPrincipal:(id)a3 agedLessThan:(double)a4;
- (id)prepareToken:(id)a3 withTGTInfo:(id)a4;
- (id)serviceTicketStringWithRequest:(id)a3 ssoToken:(id)a4;
- (id)setPublicKeyWithCertificate:(__SecCertificate *)a3 version:(id)a4 forRealm:(id)a5;
- (id)tokenDataHMACForRandomKey:(id)a3 sourceTokenData:(id)a4;
- (void)dealloc;
- (void)prepareTokenFor2SV:(id)a3 withVerificationCode:(id)a4 tgtInfo:(id)a5;
- (void)uninstallPublicKeyForRealm:(id)a3;
- (void)updateContextEncryptionHash:(id)a3 withKeyCode:(id)a4;
- (void)updateContextWithClientSecretIfAny:(id)a3;
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

- (__SecCertificate)certificateFromString:(id)a3
{
  if (![a3 length])
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

- (BOOL)installCertificateWithString:(id)a3 version:(id)a4 forRealm:(id)a5
{
  if (![a3 length] || !objc_msgSend(a4, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager installCertificateWithString:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 98, 0, "Public key or version missing in the server response");
    }

    return 0;
  }

  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACCTicketManager installCertificateWithString:version:forRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 79, 0, "Install new public key with version %@", a4);
  }

  v9 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 componentsSeparatedByString:{@"-----BEGIN CERTIFICATE-----", "componentsJoinedByString:", &stru_2A1EB91A0), "componentsSeparatedByString:", @"-----END CERTIFICATE-----", "componentsJoinedByString:", &stru_2A1EB91A0}];
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
  v12 = [(ACCTicketManager *)self setPublicKeyWithCertificate:v10 version:a4 forRealm:a5]!= 0;
  CFRelease(v11);
  return v12;
}

- (void)uninstallPublicKeyForRealm:(id)a3
{
  v5 = [(ACCTicketManager *)self certificateStoragePolicy];
  v6 = [(ACCTicketManager *)self certificateLabelForRealm:a3];

  [v5 removeCertificateWithLabel:v6 realm:a3];
}

- (__SecCertificate)certificateForRealm:(id)a3
{
  v5 = [(ACCTicketManager *)self certificateLabelForRealm:?];
  result = [v5 length];
  if (result)
  {
    v7 = [(ACCTicketManager *)self certificateStoragePolicy];

    return [v7 certificateWithLabel:v5 realm:a3];
  }

  return result;
}

- (__SecKey)publicKeyForRealm:(id)a3
{
  if (qword_2A1EB8EC0 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileStart("[ACCTicketManager publicKeyForRealm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 121, 0, 0);
  }

  v5 = [(ACCTicketManager *)self certificateForRealm:a3];
  if (v5 || (v5 = [(ACCTicketManager *)self defaultPublicKeyCertificateForRealm:a3]) != 0)
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

- (BOOL)hasValidPublicKeyForRealm:(id)a3
{
  if (a3)
  {
    v5 = [-[ACCTicketManager publicKeyVersionForRealm:](self "publicKeyVersionForRealm:{"compare:", -[ACCTicketManager defaultPublicKeyVersionForRealm:](self, "defaultPublicKeyVersionForRealm:", a3)}")];
    if (v5)
    {
      LOBYTE(v5) = [(ACCTicketManager *)self publicKeyForRealm:a3]!= 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)setPublicKeyWithCertificate:(__SecCertificate *)a3 version:(id)a4 forRealm:(id)a5
{
  v9 = [(ACCTicketManager *)self certificateStoragePolicy];
  v10 = SecCertificateCopySubjectSummary(a3);
  v11 = [(ACCTicketManager *)self certificateLabelForRealm:a5];
  if ([v11 length])
  {
    [(ACCTicketManager *)self uninstallPublicKeyForRealm:a5];
  }

  else if (!v11 || ([(__CFString *)v10 isEqualToString:v11]& 1) == 0)
  {
    if ([v9 removeCertificateWithLabel:v10 realm:a5])
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

  if ([v9 storeCertificate:a3 realm:a5])
  {
    [(ACCTicketManager *)self setPublickKeyVersion:a4 label:v10 forRealm:a5];
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
  v2 = [(ACCTicketManager *)self cryptograph];

  return [v2 randomStringOfLength:32];
}

- (id)envelopeWithContext:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [objc_msgSend(a3 "principal")];
    v6 = [(ACCTicketManager *)self publicKeyForRealm:v5];
    [v3 setDsKeyVersion:{-[ACCTicketManager publicKeyVersionForRealm:](self, "publicKeyVersionForRealm:", v5)}];
    v3 = [(ACCTicketManager *)self envelopeWithContext:v3 publicKey:v6];
  }

  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACCTicketManager envelopeWithContext:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 293, 0, "Created token envelope");
  }

  return v3;
}

- (id)envelopeWithContext:(id)a3 publicKey:(__SecKey *)a4
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v7 = [(ACCTicketManager *)self cryptograph];
  [a3 setEncryptionKey:{objc_msgSend(v7, "randomDataOfLength:", kACFAES128KeySize)}];
  v8 = [(ACCTicketManager *)self cryptograph];
  [a3 setInitializationVector:{objc_msgSend(v8, "randomDataOfLength:", kACFAES128KeySize)}];
  v9 = [objc_msgSend(a3 "tokenSourceString")];
  v10 = -[ACCTicketManager encryptSourceTokenWithSourceTokenData:encryptionKey:initializationVector:](self, "encryptSourceTokenWithSourceTokenData:encryptionKey:initializationVector:", [-[ACCTicketManager cryptograph](self "cryptograph")], -[ACCTicketManager encryptionKeyWithRandomKey:](self, "encryptionKeyWithRandomKey:", objc_msgSend(a3, "encryptionKey")), objc_msgSend(a3, "initializationVector"));
  v11 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  v12 = -[ACCTicketManager tokenDataHMACForRandomKey:sourceTokenData:](self, "tokenDataHMACForRandomKey:sourceTokenData:", [a3 encryptionKey], v9);
  v13 = [a3 dsKeyVersion];
  v14 = [a3 initializationVector];
  v15 = [(ACCTicketManager *)self tokenVersion];

  return [(ACCTicketManager *)self envelopEncryptedSourceToken:v10 dsKeyVersion:v13 encryptedRandomKey:v11 initializationVector:v14 tokenDataHMAC:v12 tokenVersion:v15];
}

- (id)encryptSourceTokenWithSourceTokenData:(id)a3 encryptionKey:(id)a4 initializationVector:(id)a5
{
  if ([a3 length] && objc_msgSend(a4, "length") && objc_msgSend(a5, "length"))
  {
    v9 = [(ACCTicketManager *)self cryptograph];

    return [v9 encryptAES128CBCData:a3 withKey:a4 initializationVector:a5 pading:1];
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

- (id)decryptEncryptedContent:(id)a3 withHmac:(id)a4 context:(id)a5
{
  if (![a3 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 391, 0, "Nothing to decrypt");
    }

    return 0;
  }

  if (!a4)
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 386, 0, "HMAC is invalid");
    }

    return 0;
  }

  if (![objc_msgSend(a5 "encryptionKey")])
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

  if (![objc_msgSend(a5 "initializationVector")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager decryptEncryptedContent:withHmac:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 371, 0, "Invalid initialization vector");
    }

    return 0;
  }

  v9 = -[ACCTicketManager encryptionKeyWithRandomKey:](self, "encryptionKeyWithRandomKey:", [a5 encryptionKey]);
  v10 = [(ACCTicketManager *)self cryptograph];
  v11 = [a5 initializationVector];

  return [v10 decryptAES128CBCData:a3 withKey:v9 initializationVector:v11 pading:0];
}

- (id)envelopEncryptedSourceToken:(id)a3 dsKeyVersion:(id)a4 encryptedRandomKey:(id)a5 initializationVector:(id)a6 tokenDataHMAC:(id)a7 tokenVersion:(id)a8
{
  if (![a3 length] || !objc_msgSend(a5, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager envelopEncryptedSourceToken:dsKeyVersion:encryptedRandomKey:initializationVector:tokenDataHMAC:tokenVersion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 429, 0, "Invalid parameters");
    }

    return 0;
  }

  if (![(ACCTicketManager *)self identifier])
  {
    return [MEMORY[0x29EDB8DC0] dictionaryWithObjectsAndKeys:{a4, @"t", a3, @"enc", a5, @"ek", 0}];
  }

  if (![a4 length] || !objc_msgSend(a6, "length") || !objc_msgSend(a7, "length") || !objc_msgSend(a8, "length"))
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager envelopEncryptedSourceToken:dsKeyVersion:encryptedRandomKey:initializationVector:tokenDataHMAC:tokenVersion:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 423, 0, "Invalid parameters");
    }

    return 0;
  }

  v15 = [MEMORY[0x29EDB8E00] dictionaryWithObjectsAndKeys:{a4, @"t", a3, @"enc", a5, @"ek", -[ACCTicketManager identifier](self, "identifier"), @"ex", a7, @"hmac", a6, @"iv", a8, @"a", 0}];
  if ([(ACCTicketManager *)self clientID]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInteger:", -[ACCTicketManager clientID](self, "clientID")), @"cid"}];
  }

  v16 = [v15 copy];

  return v16;
}

- (id)authContextWithRequest:(id)a3
{
  v5 = [(objc_class *)[(ACCTicketManager *)self authContextClass] authContextWithRequest:a3];
  [v5 setNonce:{-[ACCTicketManager createNonceString](self, "createNonceString")}];
  [v5 setDsKeyVersion:{-[ACCTicketManager publicKeyVersionForRealm:](self, "publicKeyVersionForRealm:", objc_msgSend(objc_msgSend(a3, "principal"), "realm"))}];
  [v5 setTokenVersion:{-[ACCTicketManager tokenVersion](self, "tokenVersion")}];
  return v5;
}

- (id)authContextWithRequest:(id)a3 keyCode:(id)a4 authenticationType:(id)a5
{
  v5 = a3;
  if (a3)
  {
    if ([a4 length])
    {
      v5 = [(ACCTicketManager *)self authContextWithRequest:v5];
      [v5 setAuthenticationType:a5];
      [(ACCTicketManager *)self updateContextEncryptionHash:v5 withKeyCode:a4];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)authContextWithRequest:(id)a3 sessionToken:(id)a4
{
  v5 = [(ACCTicketManager *)self authContextWithRequest:a3];
  [v5 setSessionToken:a4];
  return v5;
}

- (void)updateContextEncryptionHash:(id)a3 withKeyCode:(id)a4
{
  v5 = [-[ACCTicketManager cryptograph](self "cryptograph")];

  [a3 setEncryptionHash:v5];
}

- (id)prepareToken:(id)a3 withTGTInfo:(id)a4
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v6 = MEMORY[0x29EDB8DB0];
  [objc_msgSend(a4 objectForKey:{@"e", "doubleValue"}];
  [v4 setExpirationDate:{objc_msgSend(v6, "dateWithTimeIntervalSince1970:", v7 / 1000.0)}];
  if (![v4 expirationDate])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 506, 0, "Expiration date is missing");
    }

    return 0;
  }

  [v4 setSessionToken:{objc_msgSend(a4, "objectForKey:", @"q"}];
  if (![objc_msgSend(v4 "sessionToken")])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 516, 0, "Session token is missing");
    }

    return 0;
  }

  v8 = [a4 objectForKey:@"b"];
  if (![v8 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 528, 0, "User name is missing");
    }

    return 0;
  }

  v9 = [a4 objectForKey:@"c"];
  if (![v9 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACCTicketManager prepareToken:withTGTInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 538, 0, "Realm is missing");
    }

    return 0;
  }

  if ([objc_msgSend(a4 objectForKey:{@"lls", "integerValue"}])
  {
    [v4 setLongLiveSession:1];
  }

  [v4 setPersonID:{objc_msgSend(a4, "objectForKey:", @"a"}];
  [v4 setPrincipal:{+[ACFPrincipal principalWithUserName:realm:](ACFPrincipal, "principalWithUserName:realm:", v8, v9)}];
  if (objc_opt_respondsToSelector())
  {
    [v4 setUserPreferences:{objc_msgSend(a4, "objectForKey:", @"ap"}];
  }

  return v4;
}

- (void)prepareTokenFor2SV:(id)a3 withVerificationCode:(id)a4 tgtInfo:(id)a5
{
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 567, 0, "2SV code flow");
  }

  [a3 setPersonID:{objc_msgSend(a5, "objectForKey:", @"a"}];
  [a3 setIsTwoStepVerificationRequired:{objc_msgSend(a5, "objectForKey:", @"se"}];
  if (![a3 isTwoStepVerificationRequired])
  {
    [a3 setIsTwoStepVerificationRequired:{objc_msgSend(a5, "objectForKey:", @"sap"}];
  }

  if (objc_opt_respondsToSelector())
  {
    [a3 setIsUserEnrolledFor2SV:{objc_msgSend(a5, "objectForKey:", @"sac"}];
  }

  if ([a4 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 582, 0, "TGT obtained on 2-step verification");
    }

    v9 = [a5 objectForKey:@"cs"];
    v10 = [a5 objectForKey:@"ccd"];
    if ([a3 principal] && objc_msgSend(v9, "length") && objc_msgSend(a3, "personID") && v10)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        [a3 setClientSecret:v9];
        [a3 setClientSecretCreationTimestamp:v10];

        [(ACCTicketManager *)self tokenDidReceive2SVSecret:a3];
      }
    }

    else
    {
      v11 = qword_2A1EB8EB0;
      v12 = [a3 personID];
      if (v11 && !v12 && (ACFLogSettingsGetLevelMask() & 8) != 0)
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

- (id)createSSOTokenWithContent:(id)a3 context:(id)a4
{
  v7 = [a3 length];
  if (a4 && v7)
  {
    v12 = 100;
    v8 = [MEMORY[0x29EDBA0C0] propertyListWithData:a3 options:0 format:&v12 error:0];
    if (v8)
    {
      [(ACCTicketManager *)self ssoTokenClass];
      v9 = objc_opt_new();
      [v9 setNonce:{objc_msgSend(a4, "nonce")}];
      [v9 setCreationDate:{objc_msgSend(a4, "creationDate")}];
      [v9 setRecentAuthenticationDate:{objc_msgSend(a4, "creationDate")}];
      [v9 setInitialRequest:{objc_msgSend(a4, "request")}];
      if (objc_opt_respondsToSelector())
      {
        [v9 setRecentUnlockDate:{objc_msgSend(a4, "creationDate")}];
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
      -[ACCTicketManager prepareTokenFor2SV:withVerificationCode:tgtInfo:](self, "prepareTokenFor2SV:withVerificationCode:tgtInfo:", v10, [a4 twoStepVerificationCode], v8);
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

      if (![a3 length] && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 653, 0, "Content is empty");
      }

      if (!a4 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACCTicketManager createSSOTokenWithContent:context:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 657, 0, "Token is absent");
      }
    }

    else
    {
      [a3 length];
    }

    return 0;
  }

  return v10;
}

- (BOOL)storeSSOToken:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (![(ACCTicketManager *)self tgtStoragePolicy])
  {
    [ACCTicketManager storeSSOToken:];
  }

  v5 = [(ACCTicketManager *)self tgtStoragePolicy];

  return [(ACCSSOTGTStoragePolicy *)v5 storeToken:a3];
}

- (id)fetchSSOTokenForPrincipal:(id)a3
{
  if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
  {
    ACFLog(6, "[ACCTicketManager fetchSSOTokenForPrincipal:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 677, 0, "Fetching token ignoring idle expiration timeout");
  }

  [MEMORY[0x29EDB8DB0] timeIntervalSinceReferenceDate];

  return [(ACCTicketManager *)self fetchSSOTokenForPrincipal:a3 agedLessThan:?];
}

- (id)fetchSSOTokenForPrincipal:(id)a3 agedLessThan:(double)a4
{
  if (![(ACCTicketManager *)self tgtStoragePolicy])
  {
    [ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:];
  }

  result = [(ACCSSOTGTStoragePolicy *)[(ACCTicketManager *)self tgtStoragePolicy] searchTokenWithPrincipal:a3];
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
          v10 = [0 expirationDate];
          ACFLog(6, "-[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 696, 0, "Token is expired: %@. Expiration date: %@, Current date: %@", a3, v10, [MEMORY[0x29EDB8DB0] date]);
        }
      }

      [(ACCSSOTGTStoragePolicy *)[(ACCTicketManager *)self tgtStoragePolicy] removeTokenWithPrincipal:a3];
      return 0;
    }

    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACCTicketManager fetchSSOTokenForPrincipal:agedLessThan:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 701, 0, "Token is not expired");
    }

    v11 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-a4];
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

- (id)changePasswordContextWithRequest:(id)a3 oldPassword:(id)a4 newPassword:(id)a5
{
  v8 = [(ACCTicketManager *)self authContextWithRequest:a3 keyCode:a4 authenticationType:&unk_2A1EE3068];
  [v8 setOldUserKey:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "hashStringSHA256WithString:", a4)}];
  [v8 setCurrentUserKey:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeBase64:", objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeObscuredDataWithString:length:", a5, 2 * objc_msgSend(a5, "lengthOfBytesUsingEncoding:", 4)))}];
  return v8;
}

- (id)serviceTicketStringWithRequest:(id)a3 ssoToken:(id)a4
{
  v6 = [a3 copy];
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

  [v6 setUserName:{objc_msgSend(objc_msgSend(a4, "principal"), "userName")}];
LABEL_7:
  v7 = -[ACCTicketManager authContextWithRequest:sessionToken:](self, "authContextWithRequest:sessionToken:", v6, [a4 sessionToken]);
  if ([a4 longLiveSession])
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

- (void)updateContextWithClientSecretIfAny:(id)a3
{
  v5 = -[ACCTicketManager twoSVSecretForPrincipal:](self, "twoSVSecretForPrincipal:", [a3 principal]);
  if ([v5 length])
  {
    if (qword_2A1EB8EB0 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACCTicketManager updateContextWithClientSecretIfAny:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Core/Sources/ACCTicketManager.m", 826, 0, "cSecret present. Create HMAC");
    }

    v6 = -[ACCTicketManager twoSVPersonIDForPrincipal:](self, "twoSVPersonIDForPrincipal:", [a3 principal]);
    v7 = MEMORY[0x29EDBA0F8];
    v8 = MEMORY[0x29EDBA070];
    [objc_msgSend(a3 "creationDate")];
    [a3 setClientSecretTokenHmac:{objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "encodeBase16:", objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "hmac256DataWithData:key:", objc_msgSend(objc_msgSend(v7, "stringWithFormat:", @"%@:%@:%@", objc_msgSend(v8, "numberWithUnsignedLongLong:", (v9 * 1000.0)), -[ACCTicketManager deviceIdentifier](self, "deviceIdentifier"), v6), "dataUsingEncoding:", 4), objc_msgSend(-[ACCTicketManager cryptograph](self, "cryptograph"), "decodeBase16:", v5)))}];
    v10 = -[ACCTicketManager twoSVCreateDateForPrincipal:](self, "twoSVCreateDateForPrincipal:", [a3 principal]);

    [a3 setClientSecretCreateDate:v10];
  }
}

- (id)encryptionKeyWithRandomKey:(id)a3
{
  if (![a3 length])
  {
    [ACCTicketManager encryptionKeyWithRandomKey:];
  }

  result = [a3 length];
  if (result)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
    [v7 appendData:a3];
    [v7 appendData:v6];
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    v8 = [-[ACCTicketManager cryptograph](self "cryptograph")];
    v9 = [v8 subdataWithRange:{0, kACFAES128KeySize}];
    [-[ACCTicketManager cryptograph](self "cryptograph")];
    return v9;
  }

  return result;
}

- (id)tokenDataHMACForRandomKey:(id)a3 sourceTokenData:(id)a4
{
  if (![a3 length] || !objc_msgSend(a4, "length"))
  {
    [ACCTicketManager tokenDataHMACForRandomKey:sourceTokenData:];
  }

  if (![a3 length])
  {
    return 0;
  }

  if (![a4 length])
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x29EDB8DF8]);
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  v8 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  [v8 appendData:a3];
  [v8 appendData:v7];
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  v9 = [-[ACCTicketManager cryptograph](self "cryptograph")];
  [-[ACCTicketManager cryptograph](self "cryptograph")];
  if (![v9 length])
  {
    return 0;
  }

  v10 = [(ACCTicketManager *)self cryptograph];

  return [v10 hmac256DataWithData:a4 key:v9];
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