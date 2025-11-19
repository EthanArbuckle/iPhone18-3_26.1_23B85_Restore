@interface NSURLCredentialStorage
@end

@implementation NSURLCredentialStorage

WBSSavedAccountSidecar *__88__NSURLCredentialStorage_SafariCoreExtras__safari_allPersonalSidecarsInPersonalKeychain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = *MEMORY[0x1E697AC30];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v9 = [v4 _safari_sidecarDictionaryFromData:v5 user:v7 domain:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) _safari_protectionSpaceFromKeychainDictionary:v3];
    v11 = [WBSSavedAccountSidecar alloc];
    v12 = [v3 objectForKeyedSubscript:v6];
    v13 = [(WBSSavedAccountSidecar *)v11 initWithUser:v12 protectionSpace:v10 dictionaryRepresentation:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __152__NSURLCredentialStorage_SafariCoreExtras__safari_deleteCredentialWithEmptyServerHostForUser_forHTMLFormProtectionSpace_forGroupID_fromRecentlyDeleted___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  if (![v6 length])
  {
    v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
    *(*(*(a1 + 32) + 8) + 24) = v7;

    *a4 = 1;
  }
}

id __71__NSURLCredentialStorage_SafariCoreExtras__safari_allSafariCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 authenticationMethod];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695AB50]];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __123__NSURLCredentialStorage_SafariCoreExtras__safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v2, OS_LOG_TYPE_INFO, "Starting migration for keychain items with invalid authentication types", buf, 2u);
  }

  [*(a1 + 32) _safari_migrateKeychainItemsWithInvalidAuthenticationTypes];
  v3 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Finished migration for keychain items with invalid authentication types", v5, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __102__NSURLCredentialStorage_SafariCoreExtras___safari_migrateKeychainItemsWithInvalidAuthenticationTypes__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v11];
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v11];
  }

  v10 = [v9 objectForKeyedSubscript:v7];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    [v9 setObject:v10 forKeyedSubscript:v7];
  }

  [v10 addObject:v8];
}

__CFString *__102__NSURLCredentialStorage_SafariCoreExtras___safari_migrateKeychainItemsWithInvalidAuthenticationTypes__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v3 = &stru_1F3064D08;
  if (v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &stru_1F3064D08;
    }

    v3 = v6;
  }

  return v3;
}

BOOL __102__NSURLCredentialStorage_SafariCoreExtras___safari_migrateKeychainItemsWithInvalidAuthenticationTypes__block_invoke_94(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697B3C8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
  v4 = v3;
  if (v3)
  {
    v11 = v2;
    v12[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = SecItemDelete(v5);
    v7 = v6 == 0;
    if (v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __102__NSURLCredentialStorage_SafariCoreExtras___safari_migrateKeychainItemsWithInvalidAuthenticationTypes__block_invoke_94_cold_1();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void __107__NSURLCredentialStorage_SafariCoreExtras___safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 sharedGroupID];
  v9 = [v5 _safari_getKeychainItemForSidecar:v7 ofType:a2 groupID:v8 fromRecentlyDeleted:{objc_msgSend(*(a1 + 40), "isRecentlyDeleted")}];

  [*(a1 + 32) _safari_addKeychainItem:v9 ofType:a2 toSidecarDictionary:*(a1 + 48)];
}

void __106__NSURLCredentialStorage_SafariCoreExtras___safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 sharedGroupID];
  v9 = [v5 _safari_getKeychainItemForSidecar:v7 ofType:a2 groupID:v8 fromRecentlyDeleted:{objc_msgSend(*(a1 + 40), "isRecentlyDeleted")}];

  [*(a1 + 32) _safari_addKeychainItem:v9 ofType:a2 toSidecarDictionary:*(a1 + 48)];
}

WBSSavedAccountSidecar *__103__NSURLCredentialStorage_SafariCoreExtras__safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = *MEMORY[0x1E697AC30];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v9 = [v4 _safari_sidecarDictionaryFromData:v5 user:v7 domain:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) _safari_protectionSpaceFromKeychainDictionary:v3];
    v11 = [WBSSavedAccountSidecar alloc];
    v12 = [v3 objectForKeyedSubscript:v6];
    v13 = [(WBSSavedAccountSidecar *)v11 initWithUser:v12 protectionSpace:v10 dictionaryRepresentation:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

WBSSavedAccountSharedSidecar *__99__NSURLCredentialStorage_SafariCoreExtras__safari_allSharedSidecarsForGroupID_fromRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = *MEMORY[0x1E697AC30];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v9 = [v4 _safari_sidecarDictionaryFromData:v5 user:v7 domain:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) _safari_protectionSpaceFromKeychainDictionary:v3];
    v11 = [WBSSavedAccountSharedSidecar alloc];
    v12 = [v3 objectForKeyedSubscript:v6];
    v13 = [(WBSSavedAccountSharedSidecar *)v11 initWithUser:v12 protectionSpace:v10 dictionaryRepresentation:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

WBSSavedAccountSidecar *__101__NSURLCredentialStorage_SafariCoreExtras__safari_allPersonalSidecarsForGroupID_fromRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = *MEMORY[0x1E697AC30];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v9 = [v4 _safari_sidecarDictionaryFromData:v5 user:v7 domain:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) _safari_protectionSpaceFromKeychainDictionary:v3];
    v11 = [WBSSavedAccountSidecar alloc];
    v12 = [v3 objectForKeyedSubscript:v6];
    v13 = [(WBSSavedAccountSidecar *)v11 initWithUser:v12 protectionSpace:v10 dictionaryRepresentation:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __114__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasswordToPersonalKeychain_withNewUsername___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (a2 != 1)
  {
    v8 = v7;
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:v7 withNewUsername:*(a1 + 40) fromRecentlyDeleted:{objc_msgSend(*(a1 + 48), "isRecentlyDeleted")}];
    v7 = v8;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void __94__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPassword_toGroupWithID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (a2 == 1)
  {
    v9 = [*(a1 + 40) _safari_copySharedSidecar:v10 fromGroupWithID:*(a1 + 32) toGroupWithID:*(a1 + 48) fromRecentlyDeleted:{objc_msgSend(*(a1 + 56), "isRecentlyDeleted")}];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v7 = [*(a1 + 32) length];
    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = [v8 _safari_copyPersonalSidecar:v10 fromGroupWithID:*(a1 + 32) toGroupWithID:*(a1 + 48) fromRecentlyDeleted:{objc_msgSend(*(a1 + 56), "isRecentlyDeleted")}];
    }

    else
    {
      v9 = [v8 _safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:v10 forGroupWithID:*(a1 + 48) fromRecentlyDeleted:{objc_msgSend(*(a1 + 56), "isRecentlyDeleted")}];
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = v9;
LABEL_8:
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __97__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasskeyToPersonalKeychain___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (a2 != 1)
  {
    v8 = v7;
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:v7 fromRecentlyDeleted:{objc_msgSend(*(a1 + 40), "isRecentlyDeleted")}];
    v7 = v8;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void __93__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasskey_toGroupWithID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  if (a2 == 1)
  {
    v11 = [*(a1 + 40) _safari_copySharedSidecar:v12 fromGroupWithID:*(a1 + 32) toGroupWithID:*(a1 + 48) fromRecentlyDeleted:{objc_msgSend(*(a1 + 56), "isRecentlyDeleted")}];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [*(a1 + 56) isRecentlyDeleted];
    if (v7)
    {
      v11 = [v8 _safari_copyPersonalSidecar:v12 fromGroupWithID:v7 toGroupWithID:v9 fromRecentlyDeleted:v10];
    }

    else
    {
      v11 = [v8 _safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:v12 forGroupWithID:v9 fromRecentlyDeleted:v10];
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = v11;
LABEL_8:
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __97__NSURLCredentialStorage_SafariCoreExtras__safari_test_purgeKeychainItemsFromTestingAccessGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E697ABD0];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v6;
  v21[0] = v4;
  v21[1] = v5;
  v7 = *MEMORY[0x1E697AEB8];
  v8 = *MEMORY[0x1E697B390];
  v20[2] = *MEMORY[0x1E697AEB0];
  v20[3] = v8;
  v21[2] = v7;
  v21[3] = MEMORY[0x1E695E118];
  v9 = SecItemDelete([MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4]);
  if (v9)
  {
    v10 = v9;
    if (v9 == -25300)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = v4;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "No %{public}@ entries found to delete in %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543874;
        v15 = v4;
        v16 = 2114;
        v17 = v5;
        v18 = 2048;
        v19 = v10;
        _os_log_error_impl(&dword_1B8447000, v12, OS_LOG_TYPE_ERROR, "Failed to delete all %{public}@ entries in %{public}@, result %ld", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __102__NSURLCredentialStorage_SafariCoreExtras___safari_migrateKeychainItemsWithInvalidAuthenticationTypes__block_invoke_94_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end