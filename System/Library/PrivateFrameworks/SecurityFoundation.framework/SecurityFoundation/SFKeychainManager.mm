@interface SFKeychainManager
@end

@implementation SFKeychainManager

uint64_t __36___SFKeychainManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = [[_SFKeychainManager alloc] initManager];

  return MEMORY[0x2821F96F8]();
}

uint64_t __46___SFKeychainManager_defaultOverCommitManager__block_invoke()
{
  defaultOverCommitManager_defaultOverCommitManager = [[_SFKeychainManager alloc] initOverCommitManager];

  return MEMORY[0x2821F96F8]();
}

void __70___SFKeychainManager_setKey_forIdentifier_accessPolicy_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _symmetricKeyAttributesForIdentifier:*(a1 + 40) accessPolicy:*(a1 + 48) key:*(a1 + 56)];
  v3 = SecItemAdd(v2, 0);
  if (*(a1 + 64))
  {
    v4 = v3;
    v5 = [*(a1 + 32) keychainReplyQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70___SFKeychainManager_setKey_forIdentifier_accessPolicy_resultHandler___block_invoke_2;
    v6[3] = &unk_278849548;
    v8 = v4;
    v7 = *(a1 + 64);
    dispatch_async(v5, v6);
  }
}

void __70___SFKeychainManager_setKey_forIdentifier_accessPolicy_resultHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

uint64_t __67___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) generateAttributesForIdentityAndAddToKeychain:*(a1 + 40) forIdentifier:*(a1 + 48) accessPolicy:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  if (result)
  {
    *(v3 + 24) = 0;
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:result userInfo:0];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    *(v3 + 24) = 1;
  }

  return result;
}

void __75___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generateAttributesForIdentityAndAddToKeychain:*(a1 + 40) forIdentifier:*(a1 + 48) accessPolicy:*(a1 + 56)];
  if (*(a1 + 64))
  {
    v3 = v2;
    v4 = [*(a1 + 32) keychainReplyQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __75___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_resultHandler___block_invoke_2;
    v5[3] = &unk_278849548;
    v7 = v3;
    v6 = *(a1 + 64);
    dispatch_async(v4, v5);
  }
}

void __75___SFKeychainManager_setIdentity_forIdentifier_accessPolicy_resultHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

void __63___SFKeychainManager_keyForIdentifier_specifier_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _symmetricKeyAttributesForIdentifier:*(a1 + 40) accessPolicy:0 key:0];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC558]];
  result = 0;
  v3 = SecItemCopyMatching(v2, &result);
  v4 = result;
  v5 = [*(a1 + 32) keychainReplyQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63___SFKeychainManager_keyForIdentifier_specifier_resultHandler___block_invoke_2;
  block[3] = &unk_2788495C0;
  v8 = v4;
  v11 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v6 = v4;
  dispatch_async(v5, block);
}

void __63___SFKeychainManager_keyForIdentifier_specifier_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [SFTripleDESKey alloc];
      v8 = *(a1 + 32);
      v9 = objc_alloc_init(_SFTripleDESKeySpecifier);
      v27 = 0;
      v10 = [(_SFSymmetricKey *)v7 initWithData:v8 specifier:v9 error:&v27];
      v11 = v27;

      v12 = *(a1 + 48);
      if (v11)
      {
        v13 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithError:v11];
        (*(v12 + 16))(v12, v13);
LABEL_14:

        v20 = *(a1 + 48);
        v21 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithError:v11];
        (*(v20 + 16))(v20, v21);

LABEL_21:
        return;
      }

      v22 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithValue:v10];
      (*(v12 + 16))(v12, v22);
      goto LABEL_19;
    }

    v14 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [_SFAESKey alloc];
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v26 = 0;
      v10 = [(_SFSymmetricKey *)v15 initWithData:v16 specifier:v17 error:&v26];
      v18 = v26;
      if (v18)
      {
        v11 = v18;
        v19 = *(a1 + 48);
        v13 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithError:v18];
        (*(v19 + 16))(v19, v13);
        goto LABEL_14;
      }

      if (v10)
      {
        v23 = *(a1 + 48);
        v22 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithValue:v10];
        (*(v23 + 16))(v23, v22);
LABEL_19:
      }
    }

    else
    {
      v10 = 0;
    }

    v24 = *(a1 + 48);
    v11 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithValue:v10];
    (*(v24 + 16))(v24, v11);
    goto LABEL_21;
  }

  v4 = *(a1 + 48);
  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  v5 = [(_SFKeychainFetchResult *)_SFKeychainKeyFetchResult fetchResultWithError:v25];
  (*(v4 + 16))(v4, v5);
}

void __44___SFKeychainManager_identityForIdentifier___block_invoke(void *a1)
{
  v11 = 0;
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 findPrivateKeyWithIdentifier:v3 certificate:&v10 result:&v11];
  v5 = v10;
  v6 = a1[4];
  if (v4)
  {
    [v6 foundPrivateKey:v4 certificate:v5];
  }

  else
  {
    [v6 publicKeyLookupWithIdentifier:a1[5] certificate:v5 result:v11];
  }
  v7 = ;
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __58___SFKeychainManager_identityForIdentifier_resultHandler___block_invoke(uint64_t a1)
{
  v23 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = [v2 findPrivateKeyWithIdentifier:v3 certificate:&v22 result:&v23];
  v5 = v22;
  v6 = *(a1 + 32);
  if (v4)
  {
    v7 = [v6 foundPrivateKey:v4 certificate:v5];
    v8 = [*(a1 + 32) keychainReplyQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58___SFKeychainManager_identityForIdentifier_resultHandler___block_invoke_2;
    v19[3] = &unk_278849638;
    v9 = &v21;
    v10 = *(a1 + 48);
    v11 = &v20;
    v20 = v7;
    v21 = v10;
    v12 = v7;
    v13 = v19;
  }

  else
  {
    v14 = [v6 publicKeyLookupWithIdentifier:*(a1 + 40) certificate:v5 result:v23];
    v8 = [*(a1 + 32) keychainReplyQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58___SFKeychainManager_identityForIdentifier_resultHandler___block_invoke_3;
    v16[3] = &unk_278849638;
    v9 = &v18;
    v15 = *(a1 + 48);
    v11 = &v17;
    v17 = v14;
    v18 = v15;
    v12 = v14;
    v13 = v16;
  }

  dispatch_async(v8, v13);
}

void __61___SFKeychainManager_removeItemWithIdentifier_resultHandler___block_invoke(uint64_t a1)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC230];
  v29[0] = *MEMORY[0x277CDC250];
  v29[1] = v2;
  v3 = *MEMORY[0x277CDC248];
  v29[2] = *MEMORY[0x277CDC238];
  v29[3] = v3;
  [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    v8 = *MEMORY[0x277CDC080];
    v9 = *MEMORY[0x277CDC228];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v26[0] = v8;
        v26[1] = v9;
        v27[0] = v12;
        v27[1] = v11;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v14 = SecItemDelete(v13);
        v6 |= v14 == 0;
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v14 = 0;
    v6 = 0;
  }

  if (*(a1 + 48))
  {
    v15 = [*(a1 + 40) keychainReplyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___SFKeychainManager_removeItemWithIdentifier_resultHandler___block_invoke_2;
    block[3] = &unk_278849688;
    v21 = v6 & 1;
    v19 = *(a1 + 48);
    v20 = v14;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61___SFKeychainManager_removeItemWithIdentifier_resultHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:*(a1 + 40) userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

@end