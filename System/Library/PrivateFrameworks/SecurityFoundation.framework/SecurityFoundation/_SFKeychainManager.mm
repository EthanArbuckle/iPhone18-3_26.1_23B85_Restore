@interface _SFKeychainManager
+ (id)defaultManager;
+ (id)defaultOverCommitManager;
- (BOOL)setIdentity:(id)identity forIdentifier:(id)identifier accessPolicy:(id)policy error:(id *)error;
- (__CFDictionary)_certificateAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy;
- (__CFDictionary)_commonKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key;
- (__CFDictionary)_privateKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key;
- (__CFDictionary)_publicKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key;
- (__SecKey)findPrivateKeyWithIdentifier:(id)identifier certificate:(id *)certificate result:(int *)result;
- (id)_symmetricKeyAttributesForIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key;
- (id)foundPrivateKey:(__SecKey *)key certificate:(id)certificate;
- (id)identityForIdentifier:(id)identifier;
- (id)initManager;
- (id)initOverCommitManager;
- (id)publicKeyLookupWithIdentifier:(id)identifier certificate:(id)certificate result:(int)result;
- (int)generateAttributesForIdentityAndAddToKeychain:(id)keychain forIdentifier:(id)identifier accessPolicy:(id)policy;
- (void)identityForIdentifier:(id)identifier resultHandler:(id)handler;
- (void)keyForIdentifier:(id)identifier specifier:(id)specifier resultHandler:(id)handler;
- (void)removeItemWithIdentifier:(id)identifier resultHandler:(id)handler;
- (void)setIdentity:(id)identity forIdentifier:(id)identifier accessPolicy:(id)policy resultHandler:(id)handler;
- (void)setKey:(id)key forIdentifier:(id)identifier accessPolicy:(id)policy resultHandler:(id)handler;
@end

@implementation _SFKeychainManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[_SFKeychainManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

+ (id)defaultOverCommitManager
{
  if (defaultOverCommitManager_onceToken != -1)
  {
    +[_SFKeychainManager defaultOverCommitManager];
  }

  v3 = defaultOverCommitManager_defaultOverCommitManager;

  return v3;
}

- (id)initManager
{
  v7.receiver = self;
  v7.super_class = _SFKeychainManager;
  v2 = [(_SFKeychainManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SFKeychainManager Queue", 0);
    keychainManagerQueue = v2->_keychainManagerQueue;
    v2->_keychainManagerQueue = v3;

    v5 = dispatch_get_global_queue(0, 0);
    [(_SFKeychainManager *)v2 setKeychainReplyQueue:v5];
  }

  return v2;
}

- (id)initOverCommitManager
{
  v9.receiver = self;
  v9.super_class = _SFKeychainManager;
  v2 = [(_SFKeychainManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_overcommit();
    v4 = dispatch_queue_create("SFKeychainManager over commit Queue", v3);
    keychainManagerQueue = v2->_keychainManagerQueue;
    v2->_keychainManagerQueue = v4;

    v6 = dispatch_get_global_queue(0, 2uLL);
    keychainReplyQueue = v2->_keychainReplyQueue;
    v2->_keychainReplyQueue = v6;
  }

  return v2;
}

- (id)_symmetricKeyAttributesForIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key
{
  v18[3] = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  keyCopy = key;
  v9 = *MEMORY[0x277CDC080];
  v17[0] = *MEMORY[0x277CDC228];
  v17[1] = v9;
  v18[0] = *MEMORY[0x277CDC250];
  v18[1] = identifier;
  v17[2] = *MEMORY[0x277CDC090];
  v18[2] = *MEMORY[0x277CBED28];
  v10 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  v12 = [v10 dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = [v12 mutableCopy];
  if (keyCopy)
  {
    keyData = [keyCopy keyData];
    [v13 setObject:keyData forKeyedSubscript:*MEMORY[0x277CDC5E8]];
  }

  if (policyCopy)
  {
    [v13 addEntriesFromDictionary:{objc_msgSend(policyCopy, "secAccessibilityAttributes")}];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setKey:(id)key forIdentifier:(id)identifier accessPolicy:(id)policy resultHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  policyCopy = policy;
  handlerCopy = handler;
  keychainReplyQueue = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___SFKeychainManager_setKey_forIdentifier_accessPolicy_resultHandler___block_invoke;
  block[3] = &unk_278849570;
  block[4] = self;
  v20 = identifierCopy;
  v21 = policyCopy;
  v22 = keyCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = keyCopy;
  v17 = policyCopy;
  v18 = identifierCopy;
  dispatch_async(keychainReplyQueue, block);
}

- (__CFDictionary)_commonKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key
{
  policyCopy = policy;
  keyCopy = key;
  identifierCopy = identifier;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC080], identifierCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF28], identifierCopy);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  if (policyCopy)
  {
    accessGroup = [policyCopy accessGroup];

    if (accessGroup)
    {
      v12 = *MEMORY[0x277CDBEC8];
      accessGroup2 = [policyCopy accessGroup];
      CFDictionaryAddValue(Mutable, v12, accessGroup2);
    }

    -[__CFDictionary addEntriesFromDictionary:](Mutable, "addEntriesFromDictionary:", [policyCopy secAccessibilityAttributes]);
  }

  if (keyCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F8], [keyCopy _secKey]);
  }

  CFAutorelease(Mutable);

  return Mutable;
}

- (__CFDictionary)_privateKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key
{
  v5 = [(_SFKeychainManager *)self _commonKeyAttributesForIdentityIdentifier:identifier accessPolicy:policy key:key];
  CFDictionaryAddValue(v5, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
  return v5;
}

- (__CFDictionary)_publicKeyAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy key:(id)key
{
  v5 = [(_SFKeychainManager *)self _commonKeyAttributesForIdentityIdentifier:identifier accessPolicy:policy key:key];
  CFDictionaryAddValue(v5, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
  return v5;
}

- (__CFDictionary)_certificateAttributesForIdentityIdentifier:(id)identifier accessPolicy:(id)policy
{
  policyCopy = policy;
  identifierCopy = identifier;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC230]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC080], identifierCopy);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  if (policyCopy)
  {
    -[__CFDictionary addEntriesFromDictionary:](Mutable, "addEntriesFromDictionary:", [policyCopy secAccessibilityAttributes]);
  }

  CFAutorelease(Mutable);

  return Mutable;
}

- (int)generateAttributesForIdentityAndAddToKeychain:(id)keychain forIdentifier:(id)identifier accessPolicy:(id)policy
{
  policyCopy = policy;
  identifierCopy = identifier;
  keychainCopy = keychain;
  keyPair = [keychainCopy keyPair];
  if (keyPair)
  {
    keyPair2 = [keychainCopy keyPair];

    v13 = [(_SFKeychainManager *)self _privateKeyAttributesForIdentityIdentifier:identifierCopy accessPolicy:policyCopy key:keyPair2];
  }

  else
  {
    keyPair2 = [keychainCopy publicKey];

    v13 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:identifierCopy accessPolicy:policyCopy key:keyPair2];
  }

  v14 = v13;

  return SecItemAdd(v14, 0);
}

- (BOOL)setIdentity:(id)identity forIdentifier:(id)identifier accessPolicy:(id)policy error:(id *)error
{
  identityCopy = identity;
  identifierCopy = identifier;
  policyCopy = policy;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  keychainReplyQueue = [(_SFKeychainManager *)self keychainReplyQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_error___block_invoke;
  v20[3] = &unk_278849598;
  v20[4] = self;
  v14 = identityCopy;
  v21 = v14;
  v15 = identifierCopy;
  v22 = v15;
  v16 = policyCopy;
  v23 = v16;
  v24 = &v32;
  v25 = &v26;
  dispatch_sync(keychainReplyQueue, v20);

  if (error)
  {
    v17 = v27[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

- (void)setIdentity:(id)identity forIdentifier:(id)identifier accessPolicy:(id)policy resultHandler:(id)handler
{
  identityCopy = identity;
  identifierCopy = identifier;
  policyCopy = policy;
  handlerCopy = handler;
  keychainReplyQueue = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_resultHandler___block_invoke;
  block[3] = &unk_278849570;
  block[4] = self;
  v20 = identityCopy;
  v21 = identifierCopy;
  v22 = policyCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = policyCopy;
  v17 = identifierCopy;
  v18 = identityCopy;
  dispatch_async(keychainReplyQueue, block);
}

- (void)keyForIdentifier:(id)identifier specifier:(id)specifier resultHandler:(id)handler
{
  identifierCopy = identifier;
  specifierCopy = specifier;
  handlerCopy = handler;
  keychainReplyQueue = [(_SFKeychainManager *)self keychainReplyQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___SFKeychainManager_keyForIdentifier_specifier_resultHandler___block_invoke;
  v15[3] = &unk_2788495E8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = specifierCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = specifierCopy;
  v14 = identifierCopy;
  dispatch_async(keychainReplyQueue, v15);
}

- (id)foundPrivateKey:(__SecKey *)key certificate:(id)certificate
{
  v17[1] = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  v6 = SecKeyCopyAttributes(key);
  v7 = CFDictionaryGetValue(v6, *MEMORY[0x277CDC028]);
  if ([v7 isEqualToString:*MEMORY[0x277CDC030]])
  {
    v8 = off_278849248;
LABEL_5:
    v9 = [objc_alloc(*v8) initWithSecKey:key];
    CFRelease(key);
    CFRelease(v6);
    v10 = [[_SFIdentity alloc] initWithKeyPair:v9 certificate:certificateCopy];
    v11 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithValue:v10];

    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CDC060]])
  {
    v8 = off_278849150;
    goto LABEL_5;
  }

  CFRelease(key);
  CFRelease(v6);
  v12 = MEMORY[0x277CCA9B8];
  v16 = @"SFKeychainErrorKeyType";
  v17[0] = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [v12 errorWithDomain:@"SFKeychainErrorDomain" code:1 userInfo:v13];

  v11 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithError:v9];
LABEL_7:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (__SecKey)findPrivateKeyWithIdentifier:(id)identifier certificate:(id *)certificate result:(int *)result
{
  identifierCopy = identifier;
  v9 = [(_SFKeychainManager *)self _certificateAttributesForIdentityIdentifier:identifierCopy accessPolicy:0];
  v10 = *MEMORY[0x277CDC568];
  v11 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(v9, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
  result = 0;
  *result = SecItemCopyMatching(v9, &result);
  if (result)
  {
    v12 = [_SFCertificate alloc];
    *certificate = [(_SFCertificate *)v12 initWithSecCertificate:result];
    CFRelease(result);
  }

  v13 = [(_SFKeychainManager *)self _privateKeyAttributesForIdentityIdentifier:identifierCopy accessPolicy:0 key:0, 0];
  CFDictionaryAddValue(v13, v10, v11);
  *result = SecItemCopyMatching(v13, &v16);
  v14 = v16;

  return v14;
}

- (id)publicKeyLookupWithIdentifier:(id)identifier certificate:(id)certificate result:(int)result
{
  v29[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  certificateCopy = certificate;
  key = 0;
  v10 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:identifierCopy accessPolicy:0 key:0];
  v11 = *MEMORY[0x277CDC568];
  v12 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(v10, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
  v13 = SecItemCopyMatching(v10, &key);
  if (v13 != -25300)
  {
    result = v13;
  }

  if (!key)
  {
    goto LABEL_9;
  }

  v14 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:identifierCopy accessPolicy:0 key:0];
  CFDictionaryAddValue(v14, v11, v12);
  v15 = SecItemCopyMatching(v14, &key);
  if (v15 != -25300)
  {
    result = v15;
  }

  if (!key)
  {
LABEL_9:
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:result userInfo:0];
    v19 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithError:v17];
    goto LABEL_15;
  }

  v16 = SecKeyCopyAttributes(key);
  v17 = CFDictionaryGetValue(v16, *MEMORY[0x277CDC028]);
  if ([v17 isEqualToString:*MEMORY[0x277CDC030]])
  {
    v18 = _SFECPublicKey;
  }

  else
  {
    if (![v17 isEqualToString:*MEMORY[0x277CDC060]])
    {
      CFRelease(key);
      CFRelease(v16);
      v23 = MEMORY[0x277CCA9B8];
      v28 = @"SFKeychainErrorKeyType";
      v29[0] = v17;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v21 = [v23 errorWithDomain:@"SFKeychainErrorDomain" code:1 userInfo:v24];

      v19 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithError:v21];
      goto LABEL_14;
    }

    v18 = SFRSAPublicKey;
  }

  v20 = [v18 alloc];
  v21 = [v20 initWithSecKey:key];
  CFRelease(key);
  CFRelease(v16);
  v22 = [[_SFIdentity alloc] initWithPublicKey:v21 certificate:certificateCopy];
  v19 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithValue:v22];

LABEL_14:
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)identityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  keychainManagerQueue = [(_SFKeychainManager *)self keychainManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___SFKeychainManager_identityForIdentifier___block_invoke;
  block[3] = &unk_278849610;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(keychainManagerQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)identityForIdentifier:(id)identifier resultHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  keychainManagerQueue = [(_SFKeychainManager *)self keychainManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___SFKeychainManager_identityForIdentifier_resultHandler___block_invoke;
  block[3] = &unk_278849660;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(keychainManagerQueue, block);
}

- (void)removeItemWithIdentifier:(id)identifier resultHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  keychainReplyQueue = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___SFKeychainManager_removeItemWithIdentifier_resultHandler___block_invoke;
  block[3] = &unk_2788496B0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = identifierCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(keychainReplyQueue, block);
}

@end