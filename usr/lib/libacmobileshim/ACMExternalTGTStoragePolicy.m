@interface ACMExternalTGTStoragePolicy
- (ACFCryptographProtocol)cryptograph;
- (BOOL)performRemoveTokenWithPrincipal:(id)a3 service:(id)a4;
- (NSData)secret;
- (id)decryptTokenData:(id)a3;
- (id)encryptTokenData:(id)a3;
- (id)preferences;
- (id)searchItemWithInfo:(id)a3;
- (id)service;
- (id)tokenDataWithDictionary:(id)a3;
- (id)tokenDictionaryWithData:(id)a3;
- (int)storeItemWithInfo:(id)a3;
- (void)resetSecret;
@end

@implementation ACMExternalTGTStoragePolicy

- (id)service
{
  v2 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];

  return [v2 stringByAppendingString:@".appleconnect.tgt"];
}

- (id)searchItemWithInfo:(id)a3
{
  v4 = [(ACMKeychainTGTStoragePolicy *)self keychainManager];

  return [(ACFKeychainManagerProtocol *)v4 searchItemWithInfo:a3];
}

- (int)storeItemWithInfo:(id)a3
{
  [a3 setAccessibleType:*MEMORY[0x29EDBBB98]];
  v6.receiver = self;
  v6.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v6 storeItemWithInfo:a3];
}

- (id)tokenDataWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMExternalTGTStoragePolicy *)self encryptTokenData:[(ACMKeychainTGTStoragePolicy *)&v4 tokenDataWithDictionary:a3]];
}

- (id)tokenDictionaryWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v4 tokenDictionaryWithData:[(ACMExternalTGTStoragePolicy *)self decryptTokenData:a3]];
}

- (BOOL)performRemoveTokenWithPrincipal:(id)a3 service:(id)a4
{
  [(ACMExternalTGTStoragePolicy *)self resetSecret];
  v8.receiver = self;
  v8.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v8 performRemoveTokenWithPrincipal:a3 service:a4];
}

- (ACFCryptographProtocol)cryptograph
{
  v2 = +[ACFComponents components];

  return [v2 cryptograph];
}

- (id)preferences
{
  v2 = +[ACMExternalAppleConnectImplComponents components];

  return [v2 preferences];
}

- (NSData)secret
{
  if (!self->_secret)
  {
    v3 = [-[ACMExternalTGTStoragePolicy preferences](self "preferences")];
    self->_secret = v3;
    if (![(NSData *)v3 length])
    {
      v4 = [(ACMExternalTGTStoragePolicy *)self cryptograph];
      v5 = [(ACFCryptographProtocol *)v4 randomDataOfLength:2 * kACFAES128KeySize];
      self->_secret = v5;
      [-[ACMExternalTGTStoragePolicy preferences](self "preferences")];
    }
  }

  return self->_secret;
}

- (void)resetSecret
{
  [-[ACMExternalTGTStoragePolicy preferences](self "preferences")];

  self->_secret = 0;
}

- (id)encryptTokenData:(id)a3
{
  v5 = [(ACMExternalTGTStoragePolicy *)self secret];
  v6 = kACFAES128KeySize;
  if ([(NSData *)v5 length]== 2 * v6)
  {
    v7 = [(NSData *)v5 subdataWithRange:0, kACFAES128KeySize];
    v8 = [(NSData *)v5 subdataWithRange:kACFAES128KeySize, kACFAES128KeySize];
    v9 = [(ACMExternalTGTStoragePolicy *)self cryptograph];

    return [(ACFCryptographProtocol *)v9 encryptAES128CBCData:a3 withKey:v8 initializationVector:v7 pading:1];
  }

  else
  {
    if (qword_2A1EB8F78 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMExternalTGTStoragePolicy encryptTokenData:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalTGTStoragePolicy.m", 119, 0, "Failed to write");
    }

    return 0;
  }
}

- (id)decryptTokenData:(id)a3
{
  v5 = [(ACMExternalTGTStoragePolicy *)self secret];
  v6 = kACFAES128KeySize;
  if ([(NSData *)v5 length]== 2 * v6)
  {
    v7 = [(NSData *)v5 subdataWithRange:0, kACFAES128KeySize];
    v8 = [(NSData *)v5 subdataWithRange:kACFAES128KeySize, kACFAES128KeySize];
    v9 = [(ACMExternalTGTStoragePolicy *)self cryptograph];

    return [(ACFCryptographProtocol *)v9 decryptAES128CBCData:a3 withKey:v8 initializationVector:v7 pading:1];
  }

  else
  {
    if (qword_2A1EB8F78 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMExternalTGTStoragePolicy decryptTokenData:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalTGTStoragePolicy.m", 136, 0, "Failed to read");
    }

    return 0;
  }
}

@end