@interface ACMExternalTGTStoragePolicy
- (ACFCryptographProtocol)cryptograph;
- (BOOL)performRemoveTokenWithPrincipal:(id)principal service:(id)service;
- (NSData)secret;
- (id)decryptTokenData:(id)data;
- (id)encryptTokenData:(id)data;
- (id)preferences;
- (id)searchItemWithInfo:(id)info;
- (id)service;
- (id)tokenDataWithDictionary:(id)dictionary;
- (id)tokenDictionaryWithData:(id)data;
- (int)storeItemWithInfo:(id)info;
- (void)resetSecret;
@end

@implementation ACMExternalTGTStoragePolicy

- (id)service
{
  v2 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];

  return [v2 stringByAppendingString:@".appleconnect.tgt"];
}

- (id)searchItemWithInfo:(id)info
{
  keychainManager = [(ACMKeychainTGTStoragePolicy *)self keychainManager];

  return [(ACFKeychainManagerProtocol *)keychainManager searchItemWithInfo:info];
}

- (int)storeItemWithInfo:(id)info
{
  [info setAccessibleType:*MEMORY[0x29EDBBB98]];
  v6.receiver = self;
  v6.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v6 storeItemWithInfo:info];
}

- (id)tokenDataWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMExternalTGTStoragePolicy *)self encryptTokenData:[(ACMKeychainTGTStoragePolicy *)&v4 tokenDataWithDictionary:dictionary]];
}

- (id)tokenDictionaryWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v4 tokenDictionaryWithData:[(ACMExternalTGTStoragePolicy *)self decryptTokenData:data]];
}

- (BOOL)performRemoveTokenWithPrincipal:(id)principal service:(id)service
{
  [(ACMExternalTGTStoragePolicy *)self resetSecret];
  v8.receiver = self;
  v8.super_class = ACMExternalTGTStoragePolicy;
  return [(ACMKeychainTGTStoragePolicy *)&v8 performRemoveTokenWithPrincipal:principal service:service];
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
      cryptograph = [(ACMExternalTGTStoragePolicy *)self cryptograph];
      kACFAES128KeySize = [(ACFCryptographProtocol *)cryptograph randomDataOfLength:2 * kACFAES128KeySize];
      self->_secret = kACFAES128KeySize;
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

- (id)encryptTokenData:(id)data
{
  secret = [(ACMExternalTGTStoragePolicy *)self secret];
  v6 = kACFAES128KeySize;
  if ([(NSData *)secret length]== 2 * v6)
  {
    kACFAES128KeySize = [(NSData *)secret subdataWithRange:0, kACFAES128KeySize];
    kACFAES128KeySize2 = [(NSData *)secret subdataWithRange:kACFAES128KeySize, kACFAES128KeySize];
    cryptograph = [(ACMExternalTGTStoragePolicy *)self cryptograph];

    return [(ACFCryptographProtocol *)cryptograph encryptAES128CBCData:data withKey:kACFAES128KeySize2 initializationVector:kACFAES128KeySize pading:1];
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

- (id)decryptTokenData:(id)data
{
  secret = [(ACMExternalTGTStoragePolicy *)self secret];
  v6 = kACFAES128KeySize;
  if ([(NSData *)secret length]== 2 * v6)
  {
    kACFAES128KeySize = [(NSData *)secret subdataWithRange:0, kACFAES128KeySize];
    kACFAES128KeySize2 = [(NSData *)secret subdataWithRange:kACFAES128KeySize, kACFAES128KeySize];
    cryptograph = [(ACMExternalTGTStoragePolicy *)self cryptograph];

    return [(ACFCryptographProtocol *)cryptograph decryptAES128CBCData:data withKey:kACFAES128KeySize2 initializationVector:kACFAES128KeySize pading:1];
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