@interface PODeviceConfiguration
- (BOOL)encryptAndSaveTemporaryAccountCredential:(id)credential;
- (BOOL)hasTemporaryAccountCredential;
- (BOOL)supportsAccessKey;
- (BOOL)supportsAuthorization;
- (BOOL)supportsCreateFirstUserDuringSetup;
- (BOOL)supportsCreateNewUsers;
- (BOOL)supportsCreateTemporaryUsers;
- (BOOL)supportsTokenUnlock;
- (NSNumber)loginFrequency;
- (PODeviceConfiguration)init;
- (PODeviceConfiguration)initWithCoder:(id)coder;
- (PODeviceConfiguration)initWithData:(id)data;
- (__SecIdentity)accessTokenTerminalIdentity;
- (__SecIdentity)deviceEncryptionIdentity;
- (__SecIdentity)deviceSigningIdentity;
- (__SecKey)deviceEncryptionKey;
- (__SecKey)deviceEncryptionKeyWithContext:(id)context;
- (__SecKey)deviceEncryptionPublicKey;
- (__SecKey)deviceSigningKey;
- (__SecKey)deviceSigningKeyWithContext:(id)context;
- (__SecKey)deviceSigningPublicKey;
- (id)dataRepresentationForDisplay:(BOOL)display;
- (id)decryptTemporaryAccountCredential;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessTokenTerminalIdentity:(__SecIdentity *)identity;
- (void)setDeviceEncryptionKey:(__SecKey *)key;
- (void)setDeviceSigningKey:(__SecKey *)key;
- (void)supportsAccessKey;
- (void)supportsAuthorization;
- (void)supportsCreateFirstUserDuringSetup;
- (void)supportsCreateNewUsers;
- (void)supportsCreateTemporaryUsers;
- (void)supportsTokenUnlock;
@end

@implementation PODeviceConfiguration

- (PODeviceConfiguration)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PODeviceConfiguration;
  v2 = [(PODeviceConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v9[0] = @"AccountName";
    v9[1] = @"FullName";
    v10[0] = @"com.apple.PlatformSSO.AccountShortName";
    v10[1] = @"name";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    tokenToUserMapping = v3->_tokenToUserMapping;
    v3->_tokenToUserMapping = v4;

    objc_storeStrong(&v3->_signingAlgorithm, &unk_2870A9198);
    objc_storeStrong(&v3->_encryptionAlgorithm, &unk_2870A9198);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)supportsTokenUnlock
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODeviceConfiguration supportsTokenUnlock];
  }

  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  if (sharedDeviceKeys)
  {
    LOBYTE(sharedDeviceKeys) = [(PODeviceConfiguration *)self protocolVersion]== 1;
  }

  return sharedDeviceKeys;
}

- (BOOL)supportsAuthorization
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODeviceConfiguration supportsAuthorization];
  }

  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  if (sharedDeviceKeys)
  {
    LOBYTE(sharedDeviceKeys) = [(PODeviceConfiguration *)self authorizationEnabled];
  }

  return sharedDeviceKeys;
}

- (BOOL)supportsCreateNewUsers
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODeviceConfiguration supportsCreateNewUsers];
  }

  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  if (sharedDeviceKeys)
  {
    LOBYTE(sharedDeviceKeys) = [(PODeviceConfiguration *)self createUsersEnabled];
  }

  return sharedDeviceKeys;
}

- (BOOL)supportsCreateFirstUserDuringSetup
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODeviceConfiguration supportsCreateFirstUserDuringSetup];
  }

  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  if (sharedDeviceKeys)
  {
    LOBYTE(sharedDeviceKeys) = [(PODeviceConfiguration *)self createFirstUserDuringSetupEnabled];
  }

  return sharedDeviceKeys;
}

- (BOOL)supportsCreateTemporaryUsers
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PODeviceConfiguration *)self supportsCreateTemporaryUsers];
  }

  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  if (sharedDeviceKeys)
  {
    sharedDeviceKeys = [(PODeviceConfiguration *)self createUsersEnabled];
    if (sharedDeviceKeys)
    {
      LOBYTE(sharedDeviceKeys) = [(PODeviceConfiguration *)self newUserAuthorizationMode]== 4;
    }
  }

  return sharedDeviceKeys;
}

- (BOOL)supportsAccessKey
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PODeviceConfiguration *)self supportsAccessKey];
  }

  if ([(PODeviceConfiguration *)self loginType]== 4)
  {
    return 1;
  }

  if (![(PODeviceConfiguration *)self supportsCreateNewUsers]&& ![(PODeviceConfiguration *)self supportsCreateTemporaryUsers]&& ![(PODeviceConfiguration *)self supportsCreateFirstUserDuringSetup])
  {
    return 0;
  }

  createUserLoginTypes = [(PODeviceConfiguration *)self createUserLoginTypes];
  v4 = [createUserLoginTypes containsObject:&unk_2870A90F0];

  return v4;
}

- (NSNumber)loginFrequency
{
  if (self->_loginFrequency)
  {
    return self->_loginFrequency;
  }

  else
  {
    return &unk_2870A9108;
  }
}

- (__SecKey)deviceSigningKey
{
  result = self->_deviceSigningKey;
  if (!result)
  {
    sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
    deviceSigningKeyData = self->__deviceSigningKeyData;
    if (sharedDeviceKeys)
    {
      result = [POSecKeyHelper systemKeyForData:deviceSigningKeyData];
    }

    else
    {
      result = [POSecKeyHelper keyForData:deviceSigningKeyData];
    }

    self->_deviceSigningKey = result;
  }

  return result;
}

- (__SecKey)deviceSigningKeyWithContext:(id)context
{
  contextCopy = context;
  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  deviceSigningKeyData = self->__deviceSigningKeyData;
  if (sharedDeviceKeys)
  {
    v7 = [POSecKeyHelper systemKeyForData:deviceSigningKeyData context:contextCopy];
  }

  else
  {
    v7 = [POSecKeyHelper keyForData:deviceSigningKeyData context:contextCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setDeviceSigningKey:(__SecKey *)key
{
  self->_deviceSigningKey = key;
  if (key)
  {
    v4 = [POSecKeyHelper dataForKey:?];
    deviceSigningKeyData = self->__deviceSigningKeyData;
    self->__deviceSigningKeyData = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (__SecKey)deviceSigningPublicKey
{
  result = [(PODeviceConfiguration *)self deviceSigningKey];
  if (result)
  {
    return SecKeyCopyPublicKey([(PODeviceConfiguration *)self deviceSigningKey]);
  }

  return result;
}

- (__SecKey)deviceEncryptionKey
{
  result = self->_deviceEncryptionKey;
  if (!result)
  {
    sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
    deviceEncryptionKeyData = self->__deviceEncryptionKeyData;
    if (sharedDeviceKeys)
    {
      result = [POSecKeyHelper systemKeyForData:deviceEncryptionKeyData];
    }

    else
    {
      result = [POSecKeyHelper keyForData:deviceEncryptionKeyData];
    }

    self->_deviceEncryptionKey = result;
  }

  return result;
}

- (__SecKey)deviceEncryptionKeyWithContext:(id)context
{
  contextCopy = context;
  sharedDeviceKeys = [(PODeviceConfiguration *)self sharedDeviceKeys];
  deviceEncryptionKeyData = self->__deviceEncryptionKeyData;
  if (sharedDeviceKeys)
  {
    v7 = [POSecKeyHelper systemKeyForData:deviceEncryptionKeyData context:contextCopy];
  }

  else
  {
    v7 = [POSecKeyHelper keyForData:deviceEncryptionKeyData context:contextCopy];
  }

  v8 = v7;

  return v8;
}

- (void)setDeviceEncryptionKey:(__SecKey *)key
{
  selfCopy = self;
  if (self->_temporaryAccountCredential)
  {
    self = [(PODeviceConfiguration *)self decryptTemporaryAccountCredential];
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  selfCopy->_deviceEncryptionKey = key;
  if (key)
  {
    v9 = selfCopy2;
    v6 = [POSecKeyHelper dataForKey:key];
    deviceEncryptionKeyData = selfCopy->__deviceEncryptionKeyData;
    selfCopy->__deviceEncryptionKeyData = v6;

    if (v9)
    {
      if (![(PODeviceConfiguration *)selfCopy encryptAndSaveTemporaryAccountCredential:?])
      {
        v8 = __48__PODeviceConfiguration_setDeviceEncryptionKey___block_invoke();
      }
    }

    selfCopy2 = 0;
  }

  MEMORY[0x2821F96F8](self, selfCopy2);
}

id __48__PODeviceConfiguration_setDeviceEncryptionKey___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to encrypt temporary account credential when updating encryption key."];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (__SecKey)deviceEncryptionPublicKey
{
  result = [(PODeviceConfiguration *)self deviceEncryptionKey];
  if (result)
  {
    deviceEncryptionKey = [(PODeviceConfiguration *)self deviceEncryptionKey];

    return SecKeyCopyPublicKey(deviceEncryptionKey);
  }

  return result;
}

- (__SecIdentity)deviceSigningIdentity
{
  deviceSigningKey = [(PODeviceConfiguration *)self deviceSigningKey];
  deviceSigningCertificate = self->_deviceSigningCertificate;

  return [POSecKeyHelper identityForKey:deviceSigningKey andCertificate:deviceSigningCertificate];
}

- (__SecIdentity)deviceEncryptionIdentity
{
  v2 = [POSecKeyHelper identityForKey:[(PODeviceConfiguration *)self deviceEncryptionKey] andCertificate:self->_deviceEncryptionCertificate];

  return v2;
}

- (__SecIdentity)accessTokenTerminalIdentity
{
  if (!self->__accessTokenTerminalIdentityCertData)
  {
    return 0;
  }

  if (!self->__accessTokenTerminalIdentityKeyData)
  {
    return 0;
  }

  v3 = [POSecKeyHelper certificateForData:?];
  if (self->__accessTokenTerminalIdentityKeySEP)
  {
    accessTokenTerminalIdentityKeyData = self->__accessTokenTerminalIdentityKeyData;
    if (self->__accessTokenTerminalIdentityKeySystem)
    {
      v5 = [POSecKeyHelper systemKeyForData:accessTokenTerminalIdentityKeyData];
    }

    else
    {
      v5 = [POSecKeyHelper keyForData:accessTokenTerminalIdentityKeyData];
    }
  }

  else
  {
    v5 = [POSecKeyHelper ephemeralKeyForData:self->__accessTokenTerminalIdentityKeyData];
  }

  v7 = v5;
  if (v3)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    SecCFAllocatorZeroize();
    v10 = SecIdentityCreate();
    CFRelease(v3);
LABEL_18:
    CFRelease(v7);
    return v10;
  }

  v9 = __52__PODeviceConfiguration_accessTokenTerminalIdentity__block_invoke();
  if (v3)
  {
    CFRelease(v3);
  }

  v10 = 0;
  result = 0;
  if (v7)
  {
    goto LABEL_18;
  }

  return result;
}

id __52__PODeviceConfiguration_accessTokenTerminalIdentity__block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to create certificate or key"];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (void)setAccessTokenTerminalIdentity:(__SecIdentity *)identity
{
  if (identity)
  {
    certificateRef = 0;
    v5 = SecIdentityCopyCertificate(identity, &certificateRef);
    if (v5)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke;
      v20[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v21 = v5;
      v6 = __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke(v20);
    }

    else
    {
      v9 = [POSecKeyHelper dataForCertificate:certificateRef];
      accessTokenTerminalIdentityCertData = self->__accessTokenTerminalIdentityCertData;
      self->__accessTokenTerminalIdentityCertData = v9;

      privateKeyRef = 0;
      v11 = SecIdentityCopyPrivateKey(identity, &privateKeyRef);
      if (v11)
      {
        v12 = v11;
        if (certificateRef)
        {
          CFRelease(certificateRef);
          certificateRef = 0;
        }

        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_29;
        v17[3] = &__block_descriptor_36_e14___NSError_8__0l;
        v18 = v12;
        v13 = __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_29(v17);
      }

      else
      {
        self->__accessTokenTerminalIdentityKeySEP = [POSecKeyHelper isSEPKey:privateKeyRef];
        self->__accessTokenTerminalIdentityKeySystem = [POSecKeyHelper isSystemKey:privateKeyRef];
        if (self->__accessTokenTerminalIdentityKeySEP)
        {
          [POSecKeyHelper dataForKey:privateKeyRef];
        }

        else
        {
          [POSecKeyHelper dataForEphemeralKey:privateKeyRef];
        }
        v14 = ;
        accessTokenTerminalIdentityKeyData = self->__accessTokenTerminalIdentityKeyData;
        self->__accessTokenTerminalIdentityKeyData = v14;

        if (certificateRef)
        {
          CFRelease(certificateRef);
          certificateRef = 0;
        }

        if (privateKeyRef)
        {
          CFRelease(privateKeyRef);
          privateKeyRef = 0;
        }

        if (!self->__accessTokenTerminalIdentityKeyData)
        {
          v16 = __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_33();
        }
      }
    }
  }

  else
  {
    v7 = self->__accessTokenTerminalIdentityCertData;
    self->__accessTokenTerminalIdentityCertData = 0;

    v8 = self->__accessTokenTerminalIdentityKeyData;
    self->__accessTokenTerminalIdentityKeyData = 0;
  }
}

id __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error with SecIdentityCopyCertificate."];
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_29(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error with SecIdentityCopyPrivateKey."];
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_33()
{
  v0 = [POError errorWithCode:-1001 description:@"Missing terminal identity key data"];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)hasTemporaryAccountCredential
{
  decryptTemporaryAccountCredential = [(PODeviceConfiguration *)self decryptTemporaryAccountCredential];
  v3 = decryptTemporaryAccountCredential != 0;

  return v3;
}

- (BOOL)encryptAndSaveTemporaryAccountCredential:(id)credential
{
  credentialCopy = credential;
  v5 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PODeviceConfiguration encryptAndSaveTemporaryAccountCredential:v5];
  }

  v6 = SecKeyCopyPublicKey([(PODeviceConfiguration *)self deviceEncryptionKey]);
  v7 = v6;
  if (v6)
  {
    if (SecKeyIsAlgorithmSupported(v6, kSecKeyOperationTypeEncrypt, *MEMORY[0x277CDC328]))
    {
      error = 0;
      v8 = SecKeyCreateEncryptedData(v7, *MEMORY[0x277CDC338], [credentialCopy dataUsingEncoding:4], &error);
      CFRelease(v7);
      if (error)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8 == 0;
      }

      LOBYTE(v7) = !v9;
      if (v9)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke_50;
        v14[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v14[4] = error;
        v12 = __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke_50(v14);
      }

      else
      {
        objc_storeStrong(&self->_temporaryAccountCredential, v8);
      }
    }

    else
    {
      CFRelease(v7);
      v11 = __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke_44();
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    v10 = __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke();
  }

  return v7;
}

id __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke()
{
  v0 = [POError errorWithCode:-1005 description:@"Missing device encryption public key."];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke_44()
{
  v0 = [POError errorWithCode:-1001 description:@"Encryption algorithm not supported."];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __66__PODeviceConfiguration_encryptAndSaveTemporaryAccountCredential___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Failed to encrypt temporary account credential."];

  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

- (id)decryptTemporaryAccountCredential
{
  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PODeviceConfiguration *)v3 decryptTemporaryAccountCredential];
  }

  deviceEncryptionKey = [(PODeviceConfiguration *)self deviceEncryptionKey];
  v5 = 0;
  if (self->_temporaryAccountCredential)
  {
    v6 = deviceEncryptionKey;
    if (deviceEncryptionKey)
    {
      if (SecKeyIsAlgorithmSupported(deviceEncryptionKey, kSecKeyOperationTypeDecrypt, *MEMORY[0x277CDC328]))
      {
        error = 0;
        v7 = SecKeyCreateDecryptedData(v6, *MEMORY[0x277CDC338], self->_temporaryAccountCredential, &error);
        v8 = v7;
        if (error || !v7)
        {
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __58__PODeviceConfiguration_decryptTemporaryAccountCredential__block_invoke_60;
          v13[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v13[4] = error;
          v11 = __58__PODeviceConfiguration_decryptTemporaryAccountCredential__block_invoke_60(v13);
          v5 = 0;
        }

        else
        {
          v9 = SecCFAllocatorZeroize();
          v5 = CFStringCreateWithBytes(v9, [(__CFData *)v8 bytes], [(__CFData *)v8 length], 0x8000100u, 0);
        }
      }

      else
      {
        v10 = __58__PODeviceConfiguration_decryptTemporaryAccountCredential__block_invoke();
        v5 = 0;
      }
    }
  }

  return v5;
}

id __58__PODeviceConfiguration_decryptTemporaryAccountCredential__block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Encryption algorithm not supported when decrypting pending sso tokens."];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __58__PODeviceConfiguration_decryptTemporaryAccountCredential__block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"failed to decrypt temporary account credential."];

  v3 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

- (id)dataRepresentationForDisplay:(BOOL)display
{
  displayCopy = display;
  v5 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v5 setFormatOptions:1907];
  v6 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v6 setUnitsStyle:3];
  [v6 setAllowedUnits:48];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
  v9 = NSStringFromSelector(sel_version);
  [v7 setObject:v8 forKeyedSubscript:v9];

  deviceSigningKeyData = self->__deviceSigningKeyData;
  if (displayCopy)
  {
    [(NSData *)deviceSigningKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)deviceSigningKeyData psso_base64URLEncodedString];
  }
  v11 = ;
  v12 = NSStringFromSelector(sel__deviceSigningKeyData);
  [v7 setObject:v11 forKeyedSubscript:v12];

  pendingSigningAlgorithm = [POSecKeyHelper dataForCertificate:self->_deviceSigningCertificate];
  psso_base64URLEncodedString = [pendingSigningAlgorithm psso_base64URLEncodedString];
  v15 = NSStringFromSelector(sel_deviceSigningCertificate);
  [v7 setObject:psso_base64URLEncodedString forKeyedSubscript:v15];

  [(PODeviceConfiguration *)self signingAlgorithm];
  if (displayCopy)
    pendingSigningAlgorithm = {;
    [POConstantCoreUtil stringForSigningAlgorithm:pendingSigningAlgorithm];
  }
  v16 = ;
  v17 = NSStringFromSelector(sel_signingAlgorithm);
  [v7 setObject:v16 forKeyedSubscript:v17];

  if (displayCopy)
  {

    pendingSigningAlgorithm = [(PODeviceConfiguration *)self pendingSigningAlgorithm];
    [POConstantCoreUtil stringForSigningAlgorithm:pendingSigningAlgorithm];
  }

  else
  {
    [(PODeviceConfiguration *)self pendingSigningAlgorithm];
  }
  v18 = ;
  v19 = NSStringFromSelector(sel_pendingSigningAlgorithm);
  [v7 setObject:v18 forKeyedSubscript:v19];

  if (displayCopy)
  {

    [(NSData *)self->__deviceEncryptionKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)self->__deviceEncryptionKeyData psso_base64URLEncodedString];
  }
  v20 = ;
  v21 = NSStringFromSelector(sel__deviceEncryptionKeyData);
  [v7 setObject:v20 forKeyedSubscript:v21];

  pendingEncryptionAlgorithm = [POSecKeyHelper dataForCertificate:self->_deviceEncryptionCertificate];
  psso_base64URLEncodedString2 = [pendingEncryptionAlgorithm psso_base64URLEncodedString];
  v24 = NSStringFromSelector(sel_deviceEncryptionCertificate);
  [v7 setObject:psso_base64URLEncodedString2 forKeyedSubscript:v24];

  [(PODeviceConfiguration *)self encryptionAlgorithm];
  if (displayCopy)
    pendingEncryptionAlgorithm = {;
    [POConstantCoreUtil stringForEncryptionAlgorithm:pendingEncryptionAlgorithm];
  }
  v25 = ;
  v26 = v6;
  v27 = NSStringFromSelector(sel_encryptionAlgorithm);
  [v7 setObject:v25 forKeyedSubscript:v27];

  if (displayCopy)
  {

    pendingEncryptionAlgorithm = [(PODeviceConfiguration *)self pendingEncryptionAlgorithm];
    [POConstantCoreUtil stringForEncryptionAlgorithm:pendingEncryptionAlgorithm];
  }

  else
  {
    [(PODeviceConfiguration *)self pendingEncryptionAlgorithm];
  }
  v28 = ;
  v29 = NSStringFromSelector(sel_pendingEncryptionAlgorithm);
  [v7 setObject:v28 forKeyedSubscript:v29];

  if (displayCopy)
  {

    lastEncryptionKeyChange = [(PODeviceConfiguration *)self lastEncryptionKeyChange];
    [v5 stringFromDate:lastEncryptionKeyChange];
  }

  else
  {
    v31 = MEMORY[0x277CCABB0];
    lastEncryptionKeyChange = [(PODeviceConfiguration *)self lastEncryptionKeyChange];
    [lastEncryptionKeyChange timeIntervalSince1970];
    [v31 numberWithDouble:?];
  }
  v32 = ;
  v33 = NSStringFromSelector(sel_lastEncryptionKeyChange);
  [v7 setObject:v32 forKeyedSubscript:v33];

  extensionIdentifier = self->_extensionIdentifier;
  v35 = NSStringFromSelector(sel_extensionIdentifier);
  [v7 setObject:extensionIdentifier forKeyedSubscript:v35];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration registrationCompleted](self, "registrationCompleted")}];
  v37 = NSStringFromSelector(sel_registrationCompleted);
  [v7 setObject:v36 forKeyedSubscript:v37];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration sharedDeviceKeys](self, "sharedDeviceKeys")}];
  v39 = NSStringFromSelector(sel_sharedDeviceKeys);
  [v7 setObject:v38 forKeyedSubscript:v39];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PODeviceConfiguration protocolVersion](self, "protocolVersion")}];
  v41 = NSStringFromSelector(sel_protocolVersion);
  [v7 setObject:v40 forKeyedSubscript:v41];

  sdkVersionString = [(PODeviceConfiguration *)self sdkVersionString];
  v43 = NSStringFromSelector(sel_sdkVersionString);
  [v7 setObject:sdkVersionString forKeyedSubscript:v43];

  loginType = self->_loginType;
  if (displayCopy)
  {
    [POConstantCoreUtil stringForLoginType:loginType];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:loginType];
  }
  v45 = ;
  v46 = NSStringFromSelector(sel_loginType);
  [v7 setObject:v45 forKeyedSubscript:v46];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration createUsersEnabled](self, "createUsersEnabled")}];
  v48 = NSStringFromSelector(sel_createUsersEnabled);
  [v7 setObject:v47 forKeyedSubscript:v48];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration createFirstUserDuringSetupEnabled](self, "createFirstUserDuringSetupEnabled")}];
  v50 = NSStringFromSelector(sel_createFirstUserDuringSetupEnabled);
  [v7 setObject:v49 forKeyedSubscript:v50];

  createUserLoginTypes = [(PODeviceConfiguration *)self createUserLoginTypes];
  v52 = NSStringFromSelector(sel_createUserLoginTypes);
  [v7 setObject:createUserLoginTypes forKeyedSubscript:v52];

  v53 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration authorizationEnabled](self, "authorizationEnabled")}];
  v54 = NSStringFromSelector(sel_authorizationEnabled);
  [v7 setObject:v53 forKeyedSubscript:v54];

  tokenToUserMapping = [(PODeviceConfiguration *)self tokenToUserMapping];
  v56 = NSStringFromSelector(sel_tokenToUserMapping);
  [v7 setObject:tokenToUserMapping forKeyedSubscript:v56];

  if (displayCopy)
  {
    [POConstantCoreUtil stringForUserAuthorizationMode:[(PODeviceConfiguration *)self newUserAuthorizationMode]];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:{-[PODeviceConfiguration newUserAuthorizationMode](self, "newUserAuthorizationMode")}];
  }
  v57 = ;
  v58 = NSStringFromSelector(sel_newUserAuthorizationMode);
  [v7 setObject:v57 forKeyedSubscript:v58];

  if (displayCopy)
  {
    [POConstantCoreUtil stringForUserAuthorizationMode:[(PODeviceConfiguration *)self userAuthorizationMode]];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:{-[PODeviceConfiguration userAuthorizationMode](self, "userAuthorizationMode")}];
  }
  v59 = ;
  v60 = NSStringFromSelector(sel_userAuthorizationMode);
  [v7 setObject:v59 forKeyedSubscript:v60];

  administratorGroups = [(PODeviceConfiguration *)self administratorGroups];
  v62 = NSStringFromSelector(sel_administratorGroups);
  [v7 setObject:administratorGroups forKeyedSubscript:v62];

  authorizationGroups = [(PODeviceConfiguration *)self authorizationGroups];
  v64 = NSStringFromSelector(sel_authorizationGroups);
  [v7 setObject:authorizationGroups forKeyedSubscript:v64];

  otherGroups = [(PODeviceConfiguration *)self otherGroups];
  v66 = NSStringFromSelector(sel_otherGroups);
  [v7 setObject:otherGroups forKeyedSubscript:v66];

  defaultUserDomain = [(PODeviceConfiguration *)self defaultUserDomain];
  v68 = NSStringFromSelector(sel_defaultUserDomain);
  [v7 setObject:defaultUserDomain forKeyedSubscript:v68];

  accountDisplayName = [(PODeviceConfiguration *)self accountDisplayName];
  v70 = NSStringFromSelector(sel_accountDisplayName);
  [v7 setObject:accountDisplayName forKeyedSubscript:v70];

  loginFrequency = [(PODeviceConfiguration *)self loginFrequency];
  v72 = NSStringFromSelector(sel_loginFrequency);
  [v7 setObject:loginFrequency forKeyedSubscript:v72];

  if (displayCopy)
  {
    [POConstantCoreUtil stringForLoginPolicy:[(PODeviceConfiguration *)self fileVaultPolicy]];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PODeviceConfiguration fileVaultPolicy](self, "fileVaultPolicy")}];
  }
  v73 = ;
  v74 = NSStringFromSelector(sel_fileVaultPolicy);
  [v7 setObject:v73 forKeyedSubscript:v74];

  if (displayCopy)
  {
    [POConstantCoreUtil stringForLoginPolicy:[(PODeviceConfiguration *)self loginPolicy]];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PODeviceConfiguration loginPolicy](self, "loginPolicy")}];
  }
  v75 = ;
  v76 = NSStringFromSelector(sel_loginPolicy);
  [v7 setObject:v75 forKeyedSubscript:v76];

  if (displayCopy)
  {
    [POConstantCoreUtil stringForLoginPolicy:[(PODeviceConfiguration *)self unlockPolicy]];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PODeviceConfiguration unlockPolicy](self, "unlockPolicy")}];
  }
  v77 = ;
  v78 = NSStringFromSelector(sel_unlockPolicy);
  [v7 setObject:v77 forKeyedSubscript:v78];

  if (displayCopy)
  {
    [v6 stringFromTimeInterval:{-[PODeviceConfiguration offlineGracePeriod](self, "offlineGracePeriod")}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:{-[PODeviceConfiguration offlineGracePeriod](self, "offlineGracePeriod")}];
  }
  v79 = ;
  v80 = NSStringFromSelector(sel_offlineGracePeriod);
  [v7 setObject:v79 forKeyedSubscript:v80];

  if (displayCopy)
  {
    [v6 stringFromTimeInterval:{-[PODeviceConfiguration requireAuthGracePeriod](self, "requireAuthGracePeriod")}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithInteger:{-[PODeviceConfiguration requireAuthGracePeriod](self, "requireAuthGracePeriod")}];
  }
  v81 = ;
  authGracePeriodStart2 = NSStringFromSelector(sel_requireAuthGracePeriod);
  [v7 setObject:v81 forKeyedSubscript:authGracePeriodStart2];

  authGracePeriodStart = [(PODeviceConfiguration *)self authGracePeriodStart];
  if (authGracePeriodStart)
  {
    authGracePeriodStart2 = [(PODeviceConfiguration *)self authGracePeriodStart];
    v84 = [v5 stringFromDate:authGracePeriodStart2];
  }

  else
  {
    v84 = 0;
  }

  v85 = NSStringFromSelector(sel_authGracePeriodStart);
  [v7 setObject:v84 forKeyedSubscript:v85];

  if (authGracePeriodStart)
  {
  }

  nonPlatformSSOAccounts = [(PODeviceConfiguration *)self nonPlatformSSOAccounts];
  v87 = NSStringFromSelector(sel_nonPlatformSSOAccounts);
  [v7 setObject:nonPlatformSSOAccounts forKeyedSubscript:v87];

  temporaryAccountCredential = self->_temporaryAccountCredential;
  if (displayCopy)
  {
    [(NSData *)temporaryAccountCredential psso_sha256HashString];
  }

  else
  {
    [(NSData *)temporaryAccountCredential psso_base64URLEncodedString];
  }
  v89 = ;
  v90 = NSStringFromSelector(sel_temporaryAccountCredential);
  [v7 setObject:v89 forKeyedSubscript:v90];

  v91 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration allowDeviceIdentifiersInAttestation](self, "allowDeviceIdentifiersInAttestation")}];
  v92 = NSStringFromSelector(sel_allowDeviceIdentifiersInAttestation);
  [v7 setObject:v91 forKeyedSubscript:v92];

  v93 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration allowAccessTokenExpressMode](self, "allowAccessTokenExpressMode")}];
  v94 = NSStringFromSelector(sel_allowAccessTokenExpressMode);
  [v7 setObject:v93 forKeyedSubscript:v94];

  v95 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration _accessTokenTerminalIdentityKeySEP](self, "_accessTokenTerminalIdentityKeySEP")}];
  v96 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySEP);
  [v7 setObject:v95 forKeyedSubscript:v96];

  v97 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration _accessTokenTerminalIdentityKeySystem](self, "_accessTokenTerminalIdentityKeySystem")}];
  v98 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySystem);
  [v7 setObject:v97 forKeyedSubscript:v98];

  accessTokenTerminalIdentityKeyData = self->__accessTokenTerminalIdentityKeyData;
  if (displayCopy)
  {
    [(NSData *)accessTokenTerminalIdentityKeyData psso_sha256HashString];
  }

  else
  {
    [(NSData *)accessTokenTerminalIdentityKeyData psso_base64URLEncodedString];
  }
  v100 = ;
  v101 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeyData);
  [v7 setObject:v100 forKeyedSubscript:v101];

  [(NSData *)self->__accessTokenTerminalIdentityCertData psso_base64URLEncodedString];
  if (displayCopy)
    v102 = {;
    v103 = NSStringFromSelector(sel__accessTokenTerminalIdentityCertData);
    [v7 setObject:v102 forKeyedSubscript:v103];

    accessTokenReaderGroupIdentifier = [(PODeviceConfiguration *)self accessTokenReaderGroupIdentifier];
    [POTokenHelper dataToHex:accessTokenReaderGroupIdentifier];
  }

  else
    v105 = {;
    v106 = NSStringFromSelector(sel__accessTokenTerminalIdentityCertData);
    [v7 setObject:v105 forKeyedSubscript:v106];

    accessTokenReaderGroupIdentifier = [(PODeviceConfiguration *)self accessTokenReaderGroupIdentifier];
    [accessTokenReaderGroupIdentifier psso_base64URLEncodedString];
  }
  v107 = ;
  v108 = NSStringFromSelector(sel_accessTokenReaderGroupIdentifier);
  [v7 setObject:v107 forKeyedSubscript:v108];

  lastCheckDate = self->_lastCheckDate;
  if (lastCheckDate)
  {
    v110 = [v5 stringFromDate:self->_lastCheckDate];
  }

  else
  {
    v110 = 0;
  }

  v111 = NSStringFromSelector(sel_lastCheckDate);
  [v7 setObject:v110 forKeyedSubscript:v111];

  if (lastCheckDate)
  {
  }

  v112 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration synchronizeProfilePicture](self, "synchronizeProfilePicture", v5)}];
  v113 = NSStringFromSelector(sel_synchronizeProfilePicture);
  [v7 setObject:v112 forKeyedSubscript:v113];

  v114 = [MEMORY[0x277CCABB0] numberWithBool:{-[PODeviceConfiguration temporarySessionQuickLogin](self, "temporarySessionQuickLogin")}];
  v115 = NSStringFromSelector(sel_temporarySessionQuickLogin);
  [v7 setObject:v114 forKeyedSubscript:v115];

  date = [MEMORY[0x277CBEAA8] date];
  v117 = [v5 stringFromDate:date];
  [v7 setObject:v117 forKeyedSubscript:@"created"];

  v123 = 0;
  v118 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:11 error:&v123];
  v119 = v118;
  if (v123)
  {
    v120 = __54__PODeviceConfiguration_dataRepresentationForDisplay___block_invoke();
    v121 = 0;
  }

  else
  {
    v121 = v118;
  }

  return v121;
}

id __54__PODeviceConfiguration_dataRepresentationForDisplay___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Error serializing device config."];
  v1 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (PODeviceConfiguration)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(PODeviceConfiguration *)self init];

  if (!v5)
  {
LABEL_97:
    v11 = v5;
    goto LABEL_98;
  }

  v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v6 setFormatOptions:1907];
  v215 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:16 error:&v215];
  v8 = v215;
  if (!v8)
  {
    v12 = NSStringFromSelector(sel_version);
    v13 = [v7 objectForKeyedSubscript:v12];

    if (v13)
    {
      v14 = NSStringFromSelector(sel_version);
      v15 = [v7 objectForKeyedSubscript:v14];

      v5->_version = [v15 intValue];
    }

    else
    {
      v5->_version = 0;
    }

    v16 = NSStringFromSelector(sel__deviceSigningKeyData);
    v17 = [v7 objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CBEA90]);
      v19 = NSStringFromSelector(sel__deviceSigningKeyData);
      v20 = [v7 objectForKeyedSubscript:v19];
      v21 = [v18 psso_initWithBase64URLEncodedString:v20];

      objc_storeStrong(&v5->__deviceSigningKeyData, v21);
    }

    v22 = NSStringFromSelector(sel_deviceSigningCertificate);
    v23 = [v7 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEA90]);
      v25 = NSStringFromSelector(sel_deviceSigningCertificate);
      v26 = [v7 objectForKeyedSubscript:v25];
      v27 = [v24 psso_initWithBase64URLEncodedString:v26];

      v5->_deviceSigningCertificate = [POSecKeyHelper certificateForData:v27];
    }

    v28 = NSStringFromSelector(sel_signingAlgorithm);
    v29 = [v7 objectForKeyedSubscript:v28];

    if (v29)
    {
      v30 = NSStringFromSelector(sel_signingAlgorithm);
      signingAlgorithm = [v7 objectForKeyedSubscript:v30];

      objc_storeStrong(&v5->_signingAlgorithm, signingAlgorithm);
    }

    else
    {
      v32 = &unk_2870A9198;
      signingAlgorithm = v5->_signingAlgorithm;
      v5->_signingAlgorithm = v32;
    }

    v33 = NSStringFromSelector(sel_pendingSigningAlgorithm);
    v34 = [v7 objectForKeyedSubscript:v33];

    if (v34)
    {
      v35 = NSStringFromSelector(sel_pendingSigningAlgorithm);
      v36 = [v7 objectForKeyedSubscript:v35];

      objc_storeStrong(&v5->_pendingSigningAlgorithm, v36);
    }

    v37 = NSStringFromSelector(sel__deviceEncryptionKeyData);
    v38 = [v7 objectForKeyedSubscript:v37];

    if (v38)
    {
      v39 = objc_alloc(MEMORY[0x277CBEA90]);
      v40 = NSStringFromSelector(sel__deviceEncryptionKeyData);
      v41 = [v7 objectForKeyedSubscript:v40];
      v42 = [v39 psso_initWithBase64URLEncodedString:v41];

      objc_storeStrong(&v5->__deviceEncryptionKeyData, v42);
    }

    v43 = NSStringFromSelector(sel_deviceEncryptionCertificate);
    v44 = [v7 objectForKeyedSubscript:v43];

    if (v44)
    {
      v45 = objc_alloc(MEMORY[0x277CBEA90]);
      v46 = NSStringFromSelector(sel_deviceEncryptionCertificate);
      v47 = [v7 objectForKeyedSubscript:v46];
      v48 = [v45 psso_initWithBase64URLEncodedString:v47];

      v5->_deviceEncryptionCertificate = [POSecKeyHelper certificateForData:v48];
    }

    v49 = NSStringFromSelector(sel_encryptionAlgorithm);
    v50 = [v7 objectForKeyedSubscript:v49];

    if (v50)
    {
      v51 = NSStringFromSelector(sel_encryptionAlgorithm);
      encryptionAlgorithm = [v7 objectForKeyedSubscript:v51];

      objc_storeStrong(&v5->_encryptionAlgorithm, encryptionAlgorithm);
    }

    else
    {
      v53 = &unk_2870A9198;
      encryptionAlgorithm = v5->_encryptionAlgorithm;
      v5->_encryptionAlgorithm = v53;
    }

    v54 = NSStringFromSelector(sel_pendingEncryptionAlgorithm);
    v55 = [v7 objectForKeyedSubscript:v54];

    if (v55)
    {
      v56 = NSStringFromSelector(sel_pendingEncryptionAlgorithm);
      v57 = [v7 objectForKeyedSubscript:v56];

      objc_storeStrong(&v5->_pendingEncryptionAlgorithm, v57);
    }

    v58 = NSStringFromSelector(sel_lastEncryptionKeyChange);
    v59 = [v7 objectForKeyedSubscript:v58];

    if (v59)
    {
      v60 = NSStringFromSelector(sel_lastEncryptionKeyChange);
      v61 = [v7 objectForKeyedSubscript:v60];

      v62 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v61, "intValue")}];
      objc_storeStrong(&v5->_lastEncryptionKeyChange, v62);
    }

    v63 = NSStringFromSelector(sel_extensionIdentifier);
    v64 = [v7 objectForKeyedSubscript:v63];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v64;

    v66 = NSStringFromSelector(sel_registrationCompleted);
    v67 = [v7 objectForKeyedSubscript:v66];

    if (v67)
    {
      v68 = NSStringFromSelector(sel_registrationCompleted);
      v69 = [v7 objectForKeyedSubscript:v68];

      v5->_registrationCompleted = [v69 BOOLValue];
    }

    else
    {
      v5->_registrationCompleted = 0;
    }

    v70 = NSStringFromSelector(sel_sharedDeviceKeys);
    v71 = [v7 objectForKeyedSubscript:v70];

    if (v71)
    {
      v72 = NSStringFromSelector(sel_sharedDeviceKeys);
      v73 = [v7 objectForKeyedSubscript:v72];

      v5->_sharedDeviceKeys = [v73 BOOLValue];
    }

    else
    {
      v5->_sharedDeviceKeys = 0;
    }

    v74 = NSStringFromSelector(sel_protocolVersion);
    v75 = [v7 objectForKeyedSubscript:v74];

    if (v75)
    {
      v76 = NSStringFromSelector(sel_protocolVersion);
      v77 = [v7 objectForKeyedSubscript:v76];

      v5->_protocolVersion = [v77 intValue];
    }

    else
    {
      v5->_protocolVersion = 0;
    }

    v78 = NSStringFromSelector(sel_sdkVersionString);
    v79 = [v7 objectForKeyedSubscript:v78];
    sdkVersionString = v5->_sdkVersionString;
    v5->_sdkVersionString = v79;

    v81 = v5->_sdkVersionString;
    if (!v81 || [(NSNumber *)v81 compare:&unk_2870A92B8]== NSOrderedSame)
    {
      v82 = v5->_sdkVersionString;
      v5->_sdkVersionString = &unk_2870A92C8;
    }

    v83 = NSStringFromSelector(sel_loginType);
    v84 = [v7 objectForKeyedSubscript:v83];
    v5->_loginType = [v84 intValue];

    v85 = NSStringFromSelector(sel_createUsersEnabled);
    v86 = [v7 objectForKeyedSubscript:v85];

    if (v86)
    {
      v87 = NSStringFromSelector(sel_createUsersEnabled);
      v88 = [v7 objectForKeyedSubscript:v87];

      v5->_createUsersEnabled = [v88 BOOLValue];
    }

    else
    {
      v5->_createUsersEnabled = 0;
    }

    v89 = NSStringFromSelector(sel_createFirstUserDuringSetupEnabled);
    v90 = [v7 objectForKeyedSubscript:v89];

    if (v90)
    {
      v91 = NSStringFromSelector(sel_createFirstUserDuringSetupEnabled);
      v92 = [v7 objectForKeyedSubscript:v91];

      v5->_createFirstUserDuringSetupEnabled = [v92 BOOLValue];
    }

    else
    {
      v5->_createFirstUserDuringSetupEnabled = 1;
    }

    v93 = NSStringFromSelector(sel_createUserLoginTypes);
    v94 = [v7 objectForKeyedSubscript:v93];
    createUserLoginTypes = v5->_createUserLoginTypes;
    v5->_createUserLoginTypes = v94;

    v96 = NSStringFromSelector(sel_authorizationEnabled);
    v97 = [v7 objectForKeyedSubscript:v96];

    if (v97)
    {
      v98 = NSStringFromSelector(sel_authorizationEnabled);
      v99 = [v7 objectForKeyedSubscript:v98];

      v5->_authorizationEnabled = [v99 BOOLValue];
    }

    else
    {
      v5->_authorizationEnabled = 0;
    }

    v100 = NSStringFromSelector(sel_tokenToUserMapping);
    v101 = [v7 objectForKeyedSubscript:v100];
    tokenToUserMapping = v5->_tokenToUserMapping;
    v5->_tokenToUserMapping = v101;

    v103 = NSStringFromSelector(sel_newUserAuthorizationMode);
    v104 = [v7 objectForKeyedSubscript:v103];

    if (v104)
    {
      v105 = NSStringFromSelector(sel_newUserAuthorizationMode);
      v106 = [v7 objectForKeyedSubscript:v105];

      v5->_newUserAuthorizationMode = [v106 intValue];
    }

    else
    {
      v5->_newUserAuthorizationMode = 0;
    }

    v107 = NSStringFromSelector(sel_userAuthorizationMode);
    v108 = [v7 objectForKeyedSubscript:v107];

    if (v108)
    {
      v109 = NSStringFromSelector(sel_userAuthorizationMode);
      v110 = [v7 objectForKeyedSubscript:v109];

      v5->_userAuthorizationMode = [v110 intValue];
    }

    else
    {
      v5->_userAuthorizationMode = 0;
    }

    v111 = NSStringFromSelector(sel_administratorGroups);
    v112 = [v7 objectForKeyedSubscript:v111];
    administratorGroups = v5->_administratorGroups;
    v5->_administratorGroups = v112;

    v114 = NSStringFromSelector(sel_authorizationGroups);
    v115 = [v7 objectForKeyedSubscript:v114];
    authorizationGroups = v5->_authorizationGroups;
    v5->_authorizationGroups = v115;

    v117 = NSStringFromSelector(sel_otherGroups);
    v118 = [v7 objectForKeyedSubscript:v117];
    otherGroups = v5->_otherGroups;
    v5->_otherGroups = v118;

    v120 = NSStringFromSelector(sel_defaultUserDomain);
    v121 = [v7 objectForKeyedSubscript:v120];
    defaultUserDomain = v5->_defaultUserDomain;
    v5->_defaultUserDomain = v121;

    v123 = NSStringFromSelector(sel_accountDisplayName);
    v124 = [v7 objectForKeyedSubscript:v123];
    accountDisplayName = v5->_accountDisplayName;
    v5->_accountDisplayName = v124;

    v126 = NSStringFromSelector(sel_loginFrequency);
    v127 = [v7 objectForKeyedSubscript:v126];
    loginFrequency = v5->_loginFrequency;
    v5->_loginFrequency = v127;

    v129 = NSStringFromSelector(sel_fileVaultPolicy);
    v130 = [v7 objectForKeyedSubscript:v129];

    if (v130)
    {
      v131 = NSStringFromSelector(sel_fileVaultPolicy);
      v132 = [v7 objectForKeyedSubscript:v131];

      v5->_fileVaultPolicy = [v132 intValue];
    }

    else
    {
      v5->_fileVaultPolicy = 0;
    }

    v133 = NSStringFromSelector(sel_loginPolicy);
    v134 = [v7 objectForKeyedSubscript:v133];

    if (v134)
    {
      v135 = NSStringFromSelector(sel_loginPolicy);
      v136 = [v7 objectForKeyedSubscript:v135];

      v5->_loginPolicy = [v136 intValue];
    }

    else
    {
      v5->_loginPolicy = 0;
    }

    v137 = NSStringFromSelector(sel_unlockPolicy);
    v138 = [v7 objectForKeyedSubscript:v137];

    if (v138)
    {
      v139 = NSStringFromSelector(sel_unlockPolicy);
      v140 = [v7 objectForKeyedSubscript:v139];

      v5->_unlockPolicy = [v140 intValue];
    }

    else
    {
      v5->_unlockPolicy = 0;
    }

    v141 = NSStringFromSelector(sel_offlineGracePeriod);
    v142 = [v7 objectForKeyedSubscript:v141];

    if (v142)
    {
      v143 = NSStringFromSelector(sel_offlineGracePeriod);
      v144 = [v7 objectForKeyedSubscript:v143];

      v5->_offlineGracePeriod = [v144 intValue];
    }

    else
    {
      v5->_offlineGracePeriod = 604800;
    }

    v145 = NSStringFromSelector(sel_requireAuthGracePeriod);
    v146 = [v7 objectForKeyedSubscript:v145];

    if (v146)
    {
      v147 = NSStringFromSelector(sel_requireAuthGracePeriod);
      v148 = [v7 objectForKeyedSubscript:v147];

      v5->_requireAuthGracePeriod = [v148 intValue];
    }

    else
    {
      v5->_requireAuthGracePeriod = 604800;
    }

    v149 = NSStringFromSelector(sel_authGracePeriodStart);
    v150 = [v7 objectForKeyedSubscript:v149];

    if (v150)
    {
      v151 = [v6 dateFromString:v150];
      authGracePeriodStart = v5->_authGracePeriodStart;
      v5->_authGracePeriodStart = v151;
    }

    v210 = v6;
    v153 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v154 = NSStringFromSelector(sel_nonPlatformSSOAccounts);
    v155 = [v7 objectForKeyedSubscript:v154];

    v211[0] = MEMORY[0x277D85DD0];
    v211[1] = 3221225472;
    v211[2] = __38__PODeviceConfiguration_initWithData___block_invoke_180;
    v211[3] = &unk_279A3DD60;
    v156 = v153;
    v212 = v156;
    [v155 enumerateObjectsUsingBlock:v211];
    if ([v156 count])
    {
      objc_storeStrong(&v5->_nonPlatformSSOAccounts, v153);
    }

    v157 = NSStringFromSelector(sel_allowDeviceIdentifiersInAttestation);
    v158 = [v7 objectForKeyedSubscript:v157];

    if (v158)
    {
      v159 = NSStringFromSelector(sel_allowDeviceIdentifiersInAttestation);
      v160 = [v7 objectForKeyedSubscript:v159];

      v5->_allowDeviceIdentifiersInAttestation = [v160 BOOLValue];
    }

    else
    {
      v5->_allowDeviceIdentifiersInAttestation = 0;
    }

    v161 = NSStringFromSelector(sel_temporaryAccountCredential);
    v162 = [v7 objectForKeyedSubscript:v161];

    if (v162)
    {
      v163 = objc_alloc(MEMORY[0x277CBEA90]);
      v164 = NSStringFromSelector(sel_temporaryAccountCredential);
      v165 = [v7 objectForKeyedSubscript:v164];
      v166 = [v163 psso_initWithBase64URLEncodedString:v165];

      objc_storeStrong(&v5->_temporaryAccountCredential, v166);
    }

    v167 = NSStringFromSelector(sel_allowAccessTokenExpressMode);
    v168 = [v7 objectForKeyedSubscript:v167];

    if (v168)
    {
      v169 = NSStringFromSelector(sel_allowAccessTokenExpressMode);
      v170 = [v7 objectForKeyedSubscript:v169];

      v5->_allowAccessTokenExpressMode = [v170 BOOLValue];
    }

    v171 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySEP);
    v172 = [v7 objectForKeyedSubscript:v171];

    if (v172)
    {
      v173 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySEP);
      v174 = [v7 objectForKeyedSubscript:v173];

      v5->__accessTokenTerminalIdentityKeySEP = [v174 BOOLValue];
    }

    v175 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySystem);
    v176 = [v7 objectForKeyedSubscript:v175];

    if (v176)
    {
      v177 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeySystem);
      v178 = [v7 objectForKeyedSubscript:v177];

      v5->__accessTokenTerminalIdentityKeySystem = [v178 BOOLValue];
    }

    v179 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeyData);
    v180 = [v7 objectForKeyedSubscript:v179];

    if (v180)
    {
      v181 = objc_alloc(MEMORY[0x277CBEA90]);
      v182 = NSStringFromSelector(sel__accessTokenTerminalIdentityKeyData);
      v183 = [v7 objectForKeyedSubscript:v182];
      v184 = [v181 psso_initWithBase64URLEncodedString:v183];

      objc_storeStrong(&v5->__accessTokenTerminalIdentityKeyData, v184);
    }

    v185 = NSStringFromSelector(sel__accessTokenTerminalIdentityCertData);
    v186 = [v7 objectForKeyedSubscript:v185];

    if (v186)
    {
      v187 = objc_alloc(MEMORY[0x277CBEA90]);
      v188 = NSStringFromSelector(sel__accessTokenTerminalIdentityCertData);
      v189 = [v7 objectForKeyedSubscript:v188];
      v190 = [v187 psso_initWithBase64URLEncodedString:v189];

      objc_storeStrong(&v5->__accessTokenTerminalIdentityCertData, v190);
    }

    v191 = NSStringFromSelector(sel_accessTokenReaderGroupIdentifier);
    v192 = [v7 objectForKeyedSubscript:v191];

    if (v192)
    {
      v193 = objc_alloc(MEMORY[0x277CBEA90]);
      v194 = NSStringFromSelector(sel_accessTokenReaderGroupIdentifier);
      v195 = [v7 objectForKeyedSubscript:v194];
      v196 = [v193 psso_initWithBase64URLEncodedString:v195];

      objc_storeStrong(&v5->_accessTokenReaderGroupIdentifier, v196);
    }

    v197 = NSStringFromSelector(sel_lastCheckDate);
    v198 = [v7 objectForKeyedSubscript:v197];

    if (v198)
    {
      v199 = [v210 dateFromString:v198];
      lastCheckDate = v5->_lastCheckDate;
      v5->_lastCheckDate = v199;
    }

    v201 = NSStringFromSelector(sel_synchronizeProfilePicture);
    v202 = [v7 objectForKeyedSubscript:v201];

    if (v202)
    {
      v203 = NSStringFromSelector(sel_synchronizeProfilePicture);
      v204 = [v7 objectForKeyedSubscript:v203];

      v5->_synchronizeProfilePicture = [v204 BOOLValue];
    }

    v205 = NSStringFromSelector(sel_temporarySessionQuickLogin);
    v206 = [v7 objectForKeyedSubscript:v205];

    if (v206)
    {
      v207 = NSStringFromSelector(sel_temporarySessionQuickLogin);
      v208 = [v7 objectForKeyedSubscript:v207];

      v5->_temporarySessionQuickLogin = [v208 BOOLValue];
    }

    goto LABEL_97;
  }

  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = __38__PODeviceConfiguration_initWithData___block_invoke;
  v213[3] = &unk_279A3DC48;
  v214 = v8;
  v9 = v8;
  v10 = __38__PODeviceConfiguration_initWithData___block_invoke(v213);

  v11 = 0;
LABEL_98:

  return v11;
}

id __38__PODeviceConfiguration_initWithData___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Error deserializing device config."];
  v2 = PO_LOG_PODeviceConfiguration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

void __38__PODeviceConfiguration_initWithData___block_invoke_180(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(PODeviceConfiguration *)self dataRepresentationForDisplay:1];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (PODeviceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_dataRepresentation);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(PODeviceConfiguration *)self initWithData:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(PODeviceConfiguration *)self dataRepresentation];
  v5 = NSStringFromSelector(sel_dataRepresentation);
  [coderCopy encodeObject:dataRepresentation forKey:v5];
}

- (void)supportsTokenUnlock
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, *MEMORY[0x277D85DE8]);
  [OUTLINED_FUNCTION_7() numberWithBool:?];
  objc_claimAutoreleasedReturnValue();
  v3 = [v1 numberWithInteger:{objc_msgSend(OUTLINED_FUNCTION_4_0(), "protocolVersion")}];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)supportsAuthorization
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, *MEMORY[0x277D85DE8]);
  [OUTLINED_FUNCTION_7() numberWithBool:?];
  objc_claimAutoreleasedReturnValue();
  v3 = [v1 numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_4_0(), "authorizationEnabled")}];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)supportsCreateNewUsers
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, *MEMORY[0x277D85DE8]);
  [OUTLINED_FUNCTION_7() numberWithBool:?];
  objc_claimAutoreleasedReturnValue();
  v3 = [v1 numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_4_0(), "createUsersEnabled")}];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)supportsCreateFirstUserDuringSetup
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(v2, *MEMORY[0x277D85DE8]);
  [OUTLINED_FUNCTION_7() numberWithBool:?];
  objc_claimAutoreleasedReturnValue();
  v3 = [v1 numberWithBool:{objc_msgSend(OUTLINED_FUNCTION_4_0(), "createFirstUserDuringSetupEnabled")}];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)supportsCreateTemporaryUsers
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "sharedDeviceKeys")}];
  [self createUsersEnabled];
  v3 = [OUTLINED_FUNCTION_7() numberWithBool:?];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "newUserAuthorizationMode")}];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)supportsAccessKey
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[PODeviceConfiguration supportsAccessKey]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a2 + 32)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v3, v4, "%{public}@, %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end