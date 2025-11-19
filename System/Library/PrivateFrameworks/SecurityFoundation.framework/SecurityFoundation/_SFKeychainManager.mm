@interface _SFKeychainManager
+ (id)defaultManager;
+ (id)defaultOverCommitManager;
- (BOOL)setIdentity:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 error:(id *)a6;
- (__CFDictionary)_certificateAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4;
- (__CFDictionary)_commonKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5;
- (__CFDictionary)_privateKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5;
- (__CFDictionary)_publicKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5;
- (__SecKey)findPrivateKeyWithIdentifier:(id)a3 certificate:(id *)a4 result:(int *)a5;
- (id)_symmetricKeyAttributesForIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5;
- (id)foundPrivateKey:(__SecKey *)a3 certificate:(id)a4;
- (id)identityForIdentifier:(id)a3;
- (id)initManager;
- (id)initOverCommitManager;
- (id)publicKeyLookupWithIdentifier:(id)a3 certificate:(id)a4 result:(int)a5;
- (int)generateAttributesForIdentityAndAddToKeychain:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5;
- (void)identityForIdentifier:(id)a3 resultHandler:(id)a4;
- (void)keyForIdentifier:(id)a3 specifier:(id)a4 resultHandler:(id)a5;
- (void)removeItemWithIdentifier:(id)a3 resultHandler:(id)a4;
- (void)setIdentity:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 resultHandler:(id)a6;
- (void)setKey:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 resultHandler:(id)a6;
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

- (id)_symmetricKeyAttributesForIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5
{
  v18[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x277CDC080];
  v17[0] = *MEMORY[0x277CDC228];
  v17[1] = v9;
  v18[0] = *MEMORY[0x277CDC250];
  v18[1] = a3;
  v17[2] = *MEMORY[0x277CDC090];
  v18[2] = *MEMORY[0x277CBED28];
  v10 = MEMORY[0x277CBEAC0];
  v11 = a3;
  v12 = [v10 dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = [v12 mutableCopy];
  if (v8)
  {
    v14 = [v8 keyData];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277CDC5E8]];
  }

  if (v7)
  {
    [v13 addEntriesFromDictionary:{objc_msgSend(v7, "secAccessibilityAttributes")}];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setKey:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70___SFKeychainManager_setKey_forIdentifier_accessPolicy_resultHandler___block_invoke;
  block[3] = &unk_278849570;
  block[4] = self;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, block);
}

- (__CFDictionary)_commonKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC080], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF28], v9);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  if (v7)
  {
    v11 = [v7 accessGroup];

    if (v11)
    {
      v12 = *MEMORY[0x277CDBEC8];
      v13 = [v7 accessGroup];
      CFDictionaryAddValue(Mutable, v12, v13);
    }

    -[__CFDictionary addEntriesFromDictionary:](Mutable, "addEntriesFromDictionary:", [v7 secAccessibilityAttributes]);
  }

  if (v8)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5F8], [v8 _secKey]);
  }

  CFAutorelease(Mutable);

  return Mutable;
}

- (__CFDictionary)_privateKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5
{
  v5 = [(_SFKeychainManager *)self _commonKeyAttributesForIdentityIdentifier:a3 accessPolicy:a4 key:a5];
  CFDictionaryAddValue(v5, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
  return v5;
}

- (__CFDictionary)_publicKeyAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4 key:(id)a5
{
  v5 = [(_SFKeychainManager *)self _commonKeyAttributesForIdentityIdentifier:a3 accessPolicy:a4 key:a5];
  CFDictionaryAddValue(v5, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
  return v5;
}

- (__CFDictionary)_certificateAttributesForIdentityIdentifier:(id)a3 accessPolicy:(id)a4
{
  v5 = a4;
  v6 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC230]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC080], v6);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  if (v5)
  {
    -[__CFDictionary addEntriesFromDictionary:](Mutable, "addEntriesFromDictionary:", [v5 secAccessibilityAttributes]);
  }

  CFAutorelease(Mutable);

  return Mutable;
}

- (int)generateAttributesForIdentityAndAddToKeychain:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 keyPair];
  if (v11)
  {
    v12 = [v10 keyPair];

    v13 = [(_SFKeychainManager *)self _privateKeyAttributesForIdentityIdentifier:v9 accessPolicy:v8 key:v12];
  }

  else
  {
    v12 = [v10 publicKey];

    v13 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:v9 accessPolicy:v8 key:v12];
  }

  v14 = v13;

  return SecItemAdd(v14, 0);
}

- (BOOL)setIdentity:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v13 = [(_SFKeychainManager *)self keychainReplyQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_error___block_invoke;
  v20[3] = &unk_278849598;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v24 = &v32;
  v25 = &v26;
  dispatch_sync(v13, v20);

  if (a6)
  {
    v17 = v27[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = *(v33 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

- (void)setIdentity:(id)a3 forIdentifier:(id)a4 accessPolicy:(id)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_resultHandler___block_invoke;
  block[3] = &unk_278849570;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)keyForIdentifier:(id)a3 specifier:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_SFKeychainManager *)self keychainReplyQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___SFKeychainManager_keyForIdentifier_specifier_resultHandler___block_invoke;
  v15[3] = &unk_2788495E8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)foundPrivateKey:(__SecKey *)a3 certificate:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SecKeyCopyAttributes(a3);
  v7 = CFDictionaryGetValue(v6, *MEMORY[0x277CDC028]);
  if ([v7 isEqualToString:*MEMORY[0x277CDC030]])
  {
    v8 = off_278849248;
LABEL_5:
    v9 = [objc_alloc(*v8) initWithSecKey:a3];
    CFRelease(a3);
    CFRelease(v6);
    v10 = [[_SFIdentity alloc] initWithKeyPair:v9 certificate:v5];
    v11 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithValue:v10];

    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CDC060]])
  {
    v8 = off_278849150;
    goto LABEL_5;
  }

  CFRelease(a3);
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

- (__SecKey)findPrivateKeyWithIdentifier:(id)a3 certificate:(id *)a4 result:(int *)a5
{
  v8 = a3;
  v9 = [(_SFKeychainManager *)self _certificateAttributesForIdentityIdentifier:v8 accessPolicy:0];
  v10 = *MEMORY[0x277CDC568];
  v11 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(v9, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
  result = 0;
  *a5 = SecItemCopyMatching(v9, &result);
  if (result)
  {
    v12 = [_SFCertificate alloc];
    *a4 = [(_SFCertificate *)v12 initWithSecCertificate:result];
    CFRelease(result);
  }

  v13 = [(_SFKeychainManager *)self _privateKeyAttributesForIdentityIdentifier:v8 accessPolicy:0 key:0, 0];
  CFDictionaryAddValue(v13, v10, v11);
  *a5 = SecItemCopyMatching(v13, &v16);
  v14 = v16;

  return v14;
}

- (id)publicKeyLookupWithIdentifier:(id)a3 certificate:(id)a4 result:(int)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  key = 0;
  v10 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:v8 accessPolicy:0 key:0];
  v11 = *MEMORY[0x277CDC568];
  v12 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(v10, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
  v13 = SecItemCopyMatching(v10, &key);
  if (v13 != -25300)
  {
    a5 = v13;
  }

  if (!key)
  {
    goto LABEL_9;
  }

  v14 = [(_SFKeychainManager *)self _publicKeyAttributesForIdentityIdentifier:v8 accessPolicy:0 key:0];
  CFDictionaryAddValue(v14, v11, v12);
  v15 = SecItemCopyMatching(v14, &key);
  if (v15 != -25300)
  {
    a5 = v15;
  }

  if (!key)
  {
LABEL_9:
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a5 userInfo:0];
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
  v22 = [[_SFIdentity alloc] initWithPublicKey:v21 certificate:v9];
  v19 = [(_SFKeychainFetchResult *)_SFKeychainIdentityFetchResult fetchResultWithValue:v22];

LABEL_14:
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)identityForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(_SFKeychainManager *)self keychainManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44___SFKeychainManager_identityForIdentifier___block_invoke;
  block[3] = &unk_278849610;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)identityForIdentifier:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFKeychainManager *)self keychainManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___SFKeychainManager_identityForIdentifier_resultHandler___block_invoke;
  block[3] = &unk_278849660;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeItemWithIdentifier:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFKeychainManager *)self keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___SFKeychainManager_removeItemWithIdentifier_resultHandler___block_invoke;
  block[3] = &unk_2788496B0;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

@end