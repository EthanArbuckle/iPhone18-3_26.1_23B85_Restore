@interface POKeychainHelper
- (BOOL)_saveAttestationToKeychain:(id)a3 extensionIdentifier:(id)a4 keyHash:(id)a5 attestationDate:(id)a6 error:(id *)a7;
- (BOOL)_saveAttestationToKeychain:(id)a3 extensionIdentifier:(id)a4 keyHash:(id)a5 error:(id *)a6;
- (BOOL)retrieveIdentityForTokenId:(id)a3 context:(id)a4 forSigning:(BOOL)a5 hash:(id)a6 identity:(__SecIdentity *)a7;
- (id)_checkForCachedAttestationForExtensionIdentifier:(id)a3 keyHash:(id)a4;
- (int)removeTokensFromKeychainWithService:(id)a3 username:(id)a4 system:(BOOL)a5;
- (int)retrieveTokensFromKeychainForService:(id)a3 username:(id)a4 system:(BOOL)a5 returningTokens:(id *)a6 metaData:(id *)a7;
- (void)_deleteAllCachedAttestations;
- (void)_deleteCachedAttestationForExtensionIdentifier:(id)a3 key:(__SecKey *)a4;
- (void)_deleteCachedAttestationForExtensionIdentifier:(id)a3 keyHash:(id)a4;
@end

@implementation POKeychainHelper

id __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke()
{
  v0 = [POError errorWithCode:-1006 description:@"Missing required values to add tokens to keychain."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

- (int)retrieveTokensFromKeychainForService:(id)a3 username:(id)a4 system:(BOOL)a5 returningTokens:(id *)a6 metaData:(id *)a7
{
  v9 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  result = 0;
  v14 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:];
  }

  if (v12 && v13)
  {
    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }

    v15 = *MEMORY[0x277CBED28];
    v16 = *MEMORY[0x277CDC558];
    v56[0] = *MEMORY[0x277CDC550];
    v56[1] = v16;
    v57[0] = v15;
    v57[1] = v15;
    v17 = *MEMORY[0x277CDC120];
    v57[2] = v12;
    v18 = *MEMORY[0x277CDBF20];
    v56[2] = v17;
    v56[3] = v18;
    v19 = [v13 lowercaseString];
    v20 = *MEMORY[0x277CDBEC8];
    v57[3] = v19;
    v57[4] = kPlatformSSOAccessGroup;
    v21 = *MEMORY[0x277CDC228];
    v56[4] = v20;
    v56[5] = v21;
    v56[6] = *MEMORY[0x277CDC5C8];
    v57[5] = *MEMORY[0x277CDC238];
    v57[6] = v15;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:7];
    v23 = [v22 mutableCopy];

    if (v9)
    {
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC5D8]];
    }

    v24 = SecItemCopyMatching(v23, &result);
    v25 = v24;
    if (v24)
    {
      v51[1] = MEMORY[0x277D85DD0];
      v51[2] = 3221225472;
      v51[3] = __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke;
      v51[4] = &__block_descriptor_36_e14___NSError_8__0l;
      v52 = v24;
      v26 = __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke();
    }

    else
    {
      v27 = result;
      v28 = [v27 objectForKey:*MEMORY[0x277CDC5E8]];
      v29 = v28;
      if (a6)
      {
        v30 = v28;
        *a6 = v29;
      }

      if (a7)
      {
        v31 = [v27 objectForKey:*MEMORY[0x277CDBFB8]];
        if (v31)
        {
          v46 = v27;
          v48 = MEMORY[0x277CCAAC8];
          v50 = v29;
          v32 = MEMORY[0x277CBEB98];
          v33 = v31;
          v55 = objc_opt_class();
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
          v34 = [v32 setWithArray:v47];
          v35 = MEMORY[0x277CBEB98];
          v54[0] = objc_opt_class();
          v54[1] = objc_opt_class();
          v54[2] = objc_opt_class();
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
          v37 = [v35 setWithArray:v36];
          v51[0] = 0;
          v38 = v48;
          v39 = v34;
          v49 = v33;
          v40 = [v38 unarchivedDictionaryWithKeysOfClasses:v34 objectsOfClasses:v37 fromData:v33 error:v51];
          v41 = v51[0];
          v42 = v40;
          *a7 = v40;

          if (v41)
          {
            v43 = PO_LOG_POKeychainHelper();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:];
            }
          }

          v31 = v49;
          v29 = v50;
          v27 = v46;
        }
      }

      if (result)
      {
        CFRelease(result);
        result = 0;
      }
    }
  }

  else
  {
    v25 = -67693;
    v23 = PO_LOG_POKeychainHelper();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v59 = "[POKeychainHelper retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:]";
      v60 = 2112;
      v61 = self;
      _os_log_impl(&dword_25E8B1000, v23, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  return v25;
}

id __98__POKeychainHelper_retrieveTokensFromKeychainForService_username_system_returningTokens_metaData___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"Keychain entry not found"];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (int)removeTokensFromKeychainWithService:(id)a3 username:(id)a4 system:(BOOL)a5
{
  v5 = a5;
  v26[7] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper removeTokensFromKeychainWithService:username:system:];
  }

  if (v7 && v8)
  {
    v10 = *MEMORY[0x277CBED28];
    v11 = *MEMORY[0x277CDC558];
    v25[0] = *MEMORY[0x277CDC550];
    v25[1] = v11;
    v26[0] = v10;
    v26[1] = v10;
    v12 = *MEMORY[0x277CDC120];
    v26[2] = v7;
    v13 = *MEMORY[0x277CDBF20];
    v25[2] = v12;
    v25[3] = v13;
    v14 = [v8 lowercaseString];
    v15 = *MEMORY[0x277CDBEC8];
    v26[3] = v14;
    v26[4] = kPlatformSSOAccessGroup;
    v16 = *MEMORY[0x277CDC228];
    v25[4] = v15;
    v25[5] = v16;
    v25[6] = *MEMORY[0x277CDC5C8];
    v26[5] = *MEMORY[0x277CDC238];
    v26[6] = v10;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
    v18 = [v17 mutableCopy];

    if (v5)
    {
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDC5D8]];
    }

    v19 = SecItemDelete(v18);
    v20 = v19;
    if (v19 != -25300 && v19)
    {
      v21 = __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke_27();
    }
  }

  else
  {
    v22 = __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke();
    v20 = -67693;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

id __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke()
{
  v0 = [POError errorWithCode:-1006 description:@"Values missing to delete credentials from keychain"];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

id __72__POKeychainHelper_removeTokensFromKeychainWithService_username_system___block_invoke_27()
{
  v0 = [POError errorWithCode:-1001 description:@"Deleting keychain entry failed"];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (BOOL)retrieveIdentityForTokenId:(id)a3 context:(id)a4 forSigning:(BOOL)a5 hash:(id)a6 identity:(__SecIdentity *)a7
{
  v9 = a5;
  v39[6] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    result = 0;
    v14 = *MEMORY[0x277CDC228];
    v15 = *MEMORY[0x277CDC240];
    v16 = *MEMORY[0x277CDBEC8];
    v38[0] = *MEMORY[0x277CDC228];
    v38[1] = v16;
    v17 = *MEMORY[0x277CDBED0];
    v39[0] = v15;
    v39[1] = v17;
    v18 = *MEMORY[0x277CDC550];
    v38[2] = *MEMORY[0x277CDC560];
    v38[3] = v18;
    v39[2] = MEMORY[0x277CBEC38];
    v39[3] = MEMORY[0x277CBEC38];
    v19 = *MEMORY[0x277CDC5A0];
    v20 = *MEMORY[0x277CDC158];
    v38[4] = *MEMORY[0x277CDC5A0];
    v38[5] = v20;
    v39[4] = v12;
    v39[5] = v11;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];
    v22 = [v21 mutableCopy];

    if (v9)
    {
      [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CDBF68]];
    }

    if (v13)
    {
      [v22 setObject:v13 forKeyedSubscript:*MEMORY[0x277CDBF28]];
    }

    if (SecItemCopyMatching(v22, &result))
    {
      v23 = PO_LOG_POKeychainHelper();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
      }

      v24 = 0;
    }

    else
    {
      v23 = result;
      v26 = a7;
      v27 = *MEMORY[0x277CDC5F0];
      v28 = [result objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];
      v36[0] = v14;
      v36[1] = v27;
      v37[0] = v15;
      v37[1] = v28;
      v29 = v28;
      v30 = *MEMORY[0x277CDC438];
      v36[2] = *MEMORY[0x277CDC428];
      v36[3] = v19;
      v37[2] = v30;
      v37[3] = v12;
      v36[4] = *MEMORY[0x277CDC568];
      v37[4] = *MEMORY[0x277CBED28];
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
      if (SecItemCopyMatching(v31, v26) || !*v26)
      {
        v32 = PO_LOG_POKeychainHelper();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
        }

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }
    }
  }

  else
  {
    v25 = PO_LOG_POKeychainHelper();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [POKeychainHelper retrieveIdentityForTokenId:context:forSigning:hash:identity:];
    }

    v24 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)_saveAttestationToKeychain:(id)a3 extensionIdentifier:(id)a4 keyHash:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEAA8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 date];
  LOBYTE(a6) = [(POKeychainHelper *)self _saveAttestationToKeychain:v13 extensionIdentifier:v12 keyHash:v11 attestationDate:v14 error:a6];

  return a6;
}

- (BOOL)_saveAttestationToKeychain:(id)a3 extensionIdentifier:(id)a4 keyHash:(id)a5 attestationDate:(id)a6 error:(id *)a7
{
  v32[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a3;
  v16 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper _saveAttestationToKeychain:extensionIdentifier:keyHash:attestationDate:error:];
  }

  v30 = 0;
  v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v15 format:100 options:0 error:&v30];

  v18 = v30;
  v19 = v18;
  if (v17)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v12, v13];
    v31 = @"kAttestationDate";
    v32[0] = v14;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v22 = [(POKeychainHelper *)self addTokens:v17 metaData:v21 toKeychainForService:v20 username:@"com.apple.platformsso.attestation" system:1];

    v23 = v22 == 0;
    if (v22)
    {
      v24 = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke_38();
      if (a7)
      {
        v24 = v24;
        *a7 = v24;
      }

      v23 = 0;
    }
  }

  else
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke;
    v28[3] = &unk_279A3DC48;
    v29 = v18;
    v25 = __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke(v28);
    if (a7)
    {
      v25 = v25;
      *a7 = v25;
    }

    v23 = 0;
    v20 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

id __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to serialize attestation data"];
  v2 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v1;
}

id __97__POKeychainHelper__saveAttestationToKeychain_extensionIdentifier_keyHash_attestationDate_error___block_invoke_38()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to save attestation data in cache."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (id)_checkForCachedAttestationForExtensionIdentifier:(id)a3 keyHash:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POKeychainHelper _checkForCachedAttestationForExtensionIdentifier:keyHash:];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, v6];

  v31 = 0;
  v32 = 0;
  v10 = [(POKeychainHelper *)self retrieveTokensFromKeychainForService:v9 username:@"com.apple.platformsso.attestation" system:1 returningTokens:&v32 metaData:&v31];
  v11 = v32;
  v12 = v31;
  v13 = v12;
  if (v10)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke;
    v29 = &__block_descriptor_36_e14___NSError_8__0l;
    v30 = v10;
    v14 = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke();
    v15 = 0;
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:@"kAttestationDate"];
    [v16 timeIntervalSinceNow];
    if (v17 >= -7776000.0)
    {
      v24 = 0;
      v19 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v24];
      v18 = v24;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 count])
      {
        v15 = v19;
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45;
        v22[3] = &unk_279A3DC48;
        v23 = v18;
        v20 = __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45(v22);

        v15 = 0;
      }
    }

    else
    {
      v18 = PO_LOG_POKeychainHelper();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25E8B1000, v18, OS_LOG_TYPE_INFO, "Cached attestation too old.", buf, 2u);
      }

      v15 = 0;
    }
  }

  return v15;
}

id __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"Cached attestation not found."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

id __77__POKeychainHelper__checkForCachedAttestationForExtensionIdentifier_keyHash___block_invoke_45(uint64_t a1)
{
  v1 = [POError errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to deserialize attestation data"];
  v2 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v1;
}

- (void)_deleteCachedAttestationForExtensionIdentifier:(id)a3 key:(__SecKey *)a4
{
  v6 = a3;
  if (a4)
  {
    v9 = v6;
    v7 = [POSecKeyHelper publicKeyHashForKey:a4];
    if (v7)
    {
      [(POKeychainHelper *)self _deleteCachedAttestationForExtensionIdentifier:v9 keyHash:v7];
    }

    else
    {
      v8 = __71__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_key___block_invoke();
    }

    v6 = v9;
  }
}

id __71__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_key___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to get hash for key."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1();
  }

  return v0;
}

- (void)_deleteCachedAttestationForExtensionIdentifier:(id)a3 keyHash:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", a3, a4];
  v6 = [(POKeychainHelper *)self removeTokensFromKeychainWithService:v5 username:@"com.apple.platformsso.attestation" system:1];
  if (v6 != -25300 && v6 != 0)
  {
    v8 = __75__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_keyHash___block_invoke();
  }
}

id __75__POKeychainHelper__deleteCachedAttestationForExtensionIdentifier_keyHash___block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"Failed to remove cached attestation."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (void)_deleteAllCachedAttestations
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __48__POKeychainHelper__deleteAllCachedAttestations__block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"Failed to remove cached attestations."];
  v1 = PO_LOG_POKeychainHelper();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __22__POKeyWrap_wrapBlob___block_invoke_2_cold_1();
  }

  return v0;
}

- (void)addTokens:metaData:toKeychainForService:username:system:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addTokens:metaData:toKeychainForService:username:system:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__POKeychainHelper_addTokens_metaData_toKeychainForService_username_system___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrieveTokensFromKeychainForService:username:system:returningTokens:metaData:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeTokensFromKeychainWithService:username:system:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveIdentityForTokenId:context:forSigning:hash:identity:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retrieveCertAndKeyForTokenId:context:forSigning:hash:certificate:privateKey:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveAttestationToKeychain:extensionIdentifier:keyHash:attestationDate:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkForCachedAttestationForExtensionIdentifier:keyHash:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end