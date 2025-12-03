@interface POCredentialUtil
+ (BOOL)encryptPendingSSOTokens:(id)tokens usingPublicKey:(__SecKey *)key sharedData:(id)data encryptedTokens:(id *)encryptedTokens;
+ (id)decryptPendingSSOTokens:(id)tokens UsingPrivateKey:(__SecKey *)key sharedData:(id)data;
+ (id)maskName:(id)name;
+ (id)passwordDataFromContext:(id)context error:(id *)error;
+ (id)passwordStringFromData:(id)data;
@end

@implementation POCredentialUtil

+ (id)passwordDataFromContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (contextCopy)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v6 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__POCredentialUtil_passwordDataFromContext_error___block_invoke;
    v14[3] = &unk_279A3E2A0;
    v16 = &v18;
    v17 = &v24;
    v7 = v6;
    v15 = v7;
    [contextCopy credentialOfType:-9 reply:v14];
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v8);
    v9 = v19[5];
    if (error)
    {
      *error = v9;
    }

    else if (v9)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__POCredentialUtil_passwordDataFromContext_error___block_invoke_2;
      v13[3] = &unk_279A3E2C8;
      v13[4] = &v18;
      v11 = __50__POCredentialUtil_passwordDataFromContext_error___block_invoke_2(v13);
    }

    v10 = v25[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __50__POCredentialUtil_passwordDataFromContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  theData = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (theData)
  {
    v6 = SecCFAllocatorZeroize();
    MutableCopy = CFDataCreateMutableCopy(v6, 0, theData);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = MutableCopy;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id __50__POCredentialUtil_passwordDataFromContext_error___block_invoke_2(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(*(*(a1 + 32) + 8) + 40) description:@"Failure to get credential."];
  v2 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v1;
}

+ (id)passwordStringFromData:(id)data
{
  if (data)
  {
    v4 = MEMORY[0x277CCACA8];
    dataCopy = data;
    v6 = [v4 alloc];
    bytes = [dataCopy bytes];
    v8 = [dataCopy length];

    v9 = [v6 initWithBytesNoCopy:bytes length:v8 encoding:4 freeWhenDone:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)maskName:(id)name
{
  v3 = [name componentsSeparatedByString:@"@"];
  firstObject = [v3 firstObject];
  if ([v3 count] == 2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v3 objectAtIndexedSubscript:1];
    v7 = [v5 stringWithFormat:@"@%@", v6];
  }

  else
  {
    v7 = &stru_28708EE58;
  }

  if ([firstObject length] > 3)
  {
    v9 = [firstObject length];
    v10 = MEMORY[0x277CCACA8];
    v11 = [firstObject length];
    if (v9 < 7)
    {
      v12 = v11 - 1;
    }

    else
    {
      v12 = v11 - 2;
    }

    v13 = [firstObject stringByReplacingCharactersInRange:1 withString:{v12, @"***"}];
    v8 = [v10 stringWithFormat:@"%@%@", v13, v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"***%@", v7];
  }

  return v8;
}

+ (BOOL)encryptPendingSSOTokens:(id)tokens usingPublicKey:(__SecKey *)key sharedData:(id)data encryptedTokens:(id *)encryptedTokens
{
  v25[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  dataCopy = data;
  v11 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [POCredentialUtil encryptPendingSSOTokens:v11 usingPublicKey:? sharedData:? encryptedTokens:?];
  }

  v12 = 0;
  if (tokensCopy && key)
  {
    if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeEncrypt, *MEMORY[0x277CDC328]))
    {
      v24 = *MEMORY[0x277CDC400];
      v25[0] = dataCopy;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v23 = 0;
      v14 = *MEMORY[0x277CDC338];
      EncryptedDataWithParameters = SecKeyCreateEncryptedDataWithParameters();
      v16 = EncryptedDataWithParameters;
      v12 = EncryptedDataWithParameters != 0;
      if (EncryptedDataWithParameters)
      {
        v17 = EncryptedDataWithParameters;
        *encryptedTokens = v16;
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __86__POCredentialUtil_encryptPendingSSOTokens_usingPublicKey_sharedData_encryptedTokens___block_invoke_26;
        v22[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v22[4] = v23;
        v19 = __86__POCredentialUtil_encryptPendingSSOTokens_usingPublicKey_sharedData_encryptedTokens___block_invoke_26(v22);
      }
    }

    else
    {
      v18 = __86__POCredentialUtil_encryptPendingSSOTokens_usingPublicKey_sharedData_encryptedTokens___block_invoke();
      v12 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

id __86__POCredentialUtil_encryptPendingSSOTokens_usingPublicKey_sharedData_encryptedTokens___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Encryption algorithm not supported when encrypting pending sso tokens."];
  v1 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __86__POCredentialUtil_encryptPendingSSOTokens_usingPublicKey_sharedData_encryptedTokens___block_invoke_26(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Failed to encrypt tokens when encrypting pending sso tokens."];

  v3 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

+ (id)decryptPendingSSOTokens:(id)tokens UsingPrivateKey:(__SecKey *)key sharedData:(id)data
{
  v22[1] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  dataCopy = data;
  v9 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POCredentialUtil decryptPendingSSOTokens:v9 UsingPrivateKey:? sharedData:?];
  }

  v10 = 0;
  if (tokensCopy && key && dataCopy)
  {
    if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeDecrypt, *MEMORY[0x277CDC328]))
    {
      v21 = *MEMORY[0x277CDC400];
      v22[0] = dataCopy;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v20 = 0;
      v12 = *MEMORY[0x277CDC338];
      DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();
      v14 = DecryptedDataWithParameters;
      if (DecryptedDataWithParameters)
      {
        v10 = DecryptedDataWithParameters;
      }

      else
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __71__POCredentialUtil_decryptPendingSSOTokens_UsingPrivateKey_sharedData___block_invoke_35;
        v19[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v19[4] = v20;
        v16 = __71__POCredentialUtil_decryptPendingSSOTokens_UsingPrivateKey_sharedData___block_invoke_35(v19);
        v10 = 0;
      }
    }

    else
    {
      v15 = __71__POCredentialUtil_decryptPendingSSOTokens_UsingPrivateKey_sharedData___block_invoke();
      v10 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

id __71__POCredentialUtil_decryptPendingSSOTokens_UsingPrivateKey_sharedData___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Encryption algorithm not supported when decrypting pending sso tokens."];
  v1 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __71__POCredentialUtil_decryptPendingSSOTokens_UsingPrivateKey_sharedData___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"failed to decrypt tokens when decrypting pending sso tokens."];

  v3 = PO_LOG_POCredentialUtil();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

@end