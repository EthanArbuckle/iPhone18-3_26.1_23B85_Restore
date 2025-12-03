@interface NSURLCredentialStorage(SafariCoreExtras)
+ (BOOL)safari_test_saveCredential:()SafariCoreExtras withArbitraryProtectionSpace:;
+ (id)_safari_personalSidecarDictionaryForPasskeyWithUserHandle:()SafariCoreExtras relyingPartyID:groupID:;
+ (id)safari_customTitleForPasskeyWithUserHandle:()SafariCoreExtras relyingPartyID:groupID:;
+ (id)safari_test_addTestingPasskeyItemWithCredentialID:()SafariCoreExtras groupID:toRecentlyDeleted:;
+ (uint64_t)safari_performUsingTestingMode:()SafariCoreExtras;
+ (uint64_t)safari_test_setUseTestingAccessGroups:()SafariCoreExtras;
+ (void)safari_setLastUsedDate:()SafariCoreExtras forPasskeyWithUserHandle:relyingPartyID:groupID:context:;
+ (void)safari_test_purgeKeychainItemsFromTestingAccessGroups;
- (BOOL)_safari_copyPersonalSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:;
- (BOOL)_safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:()SafariCoreExtras forGroupWithID:fromRecentlyDeleted:;
- (BOOL)_safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:()SafariCoreExtras withNewUsername:fromRecentlyDeleted:;
- (BOOL)safari_copySavedAccountWithPasskeyToPersonalKeychain:()SafariCoreExtras;
- (BOOL)safari_moveCredentialTypesToRecentlyDeleted:()SafariCoreExtras onSavedAccount:;
- (BOOL)safari_recoverSavedAccountFromRecentlyDeleted:()SafariCoreExtras;
- (BOOL)safari_setCredential:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:;
- (WBSGeneratedPassword)safari_addGeneratedPassword:()SafariCoreExtras forProtectionSpace:wasGeneratedInPrivateBrowsingSession:;
- (WBSGeneratedPassword)safari_updateGeneratedPassword:()SafariCoreExtras withPassword:;
- (id)_formattedLabelWithHost:()SafariCoreExtras user:;
- (id)_safari_accountStringForGeneratedPassword;
- (id)_safari_allCredentialItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:;
- (id)_safari_allSidecarItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:;
- (id)_safari_dataFromGeneratedPasswordDictionary:()SafariCoreExtras domain:;
- (id)_safari_dataFromSidecarDictionary:()SafariCoreExtras user:domain:;
- (id)_safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:()SafariCoreExtras;
- (id)_safari_getCredentialItemsFromKeychainForPasswordInSavedAccount:()SafariCoreExtras;
- (id)_safari_getKeychainItemForSidecar:()SafariCoreExtras ofType:groupID:fromRecentlyDeleted:;
- (id)_safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount:()SafariCoreExtras;
- (id)_safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount:()SafariCoreExtras;
- (id)_safari_lastModifiedDateForPasskeyCredentialOnSavedAccount:()SafariCoreExtras;
- (id)_safari_lastModifiedDateForPasswordCredentialsOnSavedAccount:()SafariCoreExtras;
- (id)_safari_protectionSpaceFromKeychainDictionary:()SafariCoreExtras;
- (id)_safari_sidecarDictionaryFromData:()SafariCoreExtras user:domain:;
- (id)safari_allGeneratedPasswordItems;
- (id)safari_allPersonalSidecarsForGroupID:()SafariCoreExtras fromRecentlyDeleted:;
- (id)safari_allPersonalSidecarsInPersonalKeychain;
- (id)safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain;
- (id)safari_allSharedSidecarsForGroupID:()SafariCoreExtras fromRecentlyDeleted:;
- (id)safari_mostRecentLastModifiedDateForCredentialsOnSavedAccount:()SafariCoreExtras;
- (uint64_t)_safari_copySharedSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:;
- (uint64_t)_safari_deleteAllPasskeyCredentialsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllPasswordCredentialsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllPersonalSidecarsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllRecentlyDeletedPasskeyCredentialsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllRecentlyDeletedPasswordCredentialsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllRecentlyDeletedPersonalSidecarsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllRecentlyDeletedSharedSidecarsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_deleteAllSharedSidecarsForGroupID:()SafariCoreExtras;
- (uint64_t)_safari_moveKeychainItemsWithPersistentIdentifiers:()SafariCoreExtras toAccessGroup:;
- (uint64_t)_safari_movePasskeyCredentialFromSavedAccountToRecentlyDeleted:()SafariCoreExtras;
- (uint64_t)_safari_movePasskeySidecarsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras;
- (uint64_t)_safari_movePasswordCredentialsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras;
- (uint64_t)_safari_movePasswordSidecarsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras;
- (uint64_t)_safari_moveSidecarItemsByTypeToRecentlyDeleted:()SafariCoreExtras savedAccount:;
- (uint64_t)_safari_recoverPasskeyCredentialFromRecentlyDeletedSavedAccount:()SafariCoreExtras;
- (uint64_t)_safari_recoverPasskeySidecarsFromRecentlyDeletedSavedAccount:()SafariCoreExtras;
- (uint64_t)_safari_recoverPasswordCredentialsFromRecentlyDeletedSavedAccount:()SafariCoreExtras;
- (uint64_t)_safari_recoverPasswordSidecarsFromRecentlyDeletedSavedAccount:()SafariCoreExtras;
- (uint64_t)_safari_recoverSidecarItemsByType:()SafariCoreExtras forRecentlyDeletedSavedAccount:;
- (uint64_t)_safari_removeDefaultCommentFromKeychainItemsMatchingQuery:()SafariCoreExtras;
- (uint64_t)safari_copySavedAccountWithPasskey:()SafariCoreExtras toGroupWithID:;
- (uint64_t)safari_copySavedAccountWithPassword:()SafariCoreExtras toGroupWithID:;
- (uint64_t)safari_copySavedAccountWithPasswordToPersonalKeychain:()SafariCoreExtras withNewUsername:;
- (uint64_t)safari_deleteAllItemsForGroupID:()SafariCoreExtras;
- (void)_safari_addKeychainItem:()SafariCoreExtras ofType:toSidecarDictionary:;
- (void)_safari_migrateKeychainItemsWithInvalidAuthenticationTypes;
- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:;
- (void)safari_allSafariCredentials;
- (void)safari_deleteAllGeneratedPasswords;
- (void)safari_deleteCredentialWithEmptyServerHostForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:;
- (void)safari_deleteGeneratedPassword:()SafariCoreExtras;
- (void)safari_deletePasskeyFromSavedAccount:()SafariCoreExtras groupID:;
- (void)safari_deletePasswordCredentialForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:;
- (void)safari_deleteSidecarOfType:()SafariCoreExtras forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:;
- (void)safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler:()SafariCoreExtras;
- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:;
- (void)safari_setSidecar:()SafariCoreExtras credential:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:;
@end

@implementation NSURLCredentialStorage(SafariCoreExtras)

- (id)safari_allGeneratedPasswordItems
{
  v40 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697B018];
  v1 = *MEMORY[0x1E697B260];
  v26 = *MEMORY[0x1E697AFF8];
  v27 = v1;
  v2 = *MEMORY[0x1E697B268];
  *buf = v0;
  *&buf[8] = v2;
  v3 = *MEMORY[0x1E697ABD0];
  v28 = *MEMORY[0x1E697ABD0];
  v4 = generatedPasswordsLogAccessGroup();
  v5 = *MEMORY[0x1E697AEB0];
  v6 = *MEMORY[0x1E697AEB8];
  *&buf[16] = v4;
  v35 = v6;
  v7 = *MEMORY[0x1E697B310];
  v29 = v5;
  v30 = v7;
  v8 = *MEMORY[0x1E697B318];
  v36 = MEMORY[0x1E695E118];
  v37 = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E697B320];
  v31 = v8;
  v32 = v9;
  v33 = *MEMORY[0x1E697B390];
  v38 = MEMORY[0x1E695E118];
  v39 = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v26 count:8];
  v11 = [v10 mutableCopy];

  v26 = 0;
  v12 = SecItemCopyMatching(v11, &v26);
  if (v12)
  {
    v13 = v12;
    if (v12 == -25300)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        v17 = MEMORY[0x1E695E0F0];
        goto LABEL_10;
      }

      v15 = v14;
      v16 = [(__CFDictionary *)v11 objectForKeyedSubscript:v3];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "No recently generated password items found in access group %{public}@", buf, 0xCu);
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v25 = v22;
      v16 = [(__CFDictionary *)v11 objectForKeyedSubscript:v3];
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 1024;
      *&buf[14] = v13;
      _os_log_error_impl(&dword_1B8447000, v25, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed to fetch recently generated password items in access group %{public}@, result %i", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v17 = v26;
  v18 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v17 count];
    v21 = [(__CFDictionary *)v11 objectForKeyedSubscript:v3];
    *buf = 134218242;
    *&buf[4] = v20;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    _os_log_impl(&dword_1B8447000, v19, OS_LOG_TYPE_DEFAULT, "Fetched %li recently generated password items from access group %{public}@", buf, 0x16u);
  }

LABEL_10:

  v23 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)safari_allPersonalSidecarsInPersonalKeychain
{
  _safari_allPersonalSidecarEntriesInPersonalKeychain = [self _safari_allPersonalSidecarEntriesInPersonalKeychain];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__NSURLCredentialStorage_SafariCoreExtras__safari_allPersonalSidecarsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF2B70;
  v5[4] = self;
  v3 = [_safari_allPersonalSidecarEntriesInPersonalKeychain safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

- (id)safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain
{
  _safari_allRecentlyDeletedPersonalSidecarEntriesInPersonalKeychain = [self _safari_allRecentlyDeletedPersonalSidecarEntriesInPersonalKeychain];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__NSURLCredentialStorage_SafariCoreExtras__safari_allRecentlyDeletedPersonalSidecarsInPersonalKeychain__block_invoke;
  v5[3] = &unk_1E7CF2B70;
  v5[4] = self;
  v3 = [_safari_allRecentlyDeletedPersonalSidecarEntriesInPersonalKeychain safari_mapAndFilterObjectsUsingBlock:v5];

  return v3;
}

+ (uint64_t)safari_performUsingTestingMode:()SafariCoreExtras
{
  v3 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = shouldUseTestingAccessGroups;
  shouldUseTestingAccessGroups = 1;
  v3[2](v3);

  shouldUseTestingAccessGroups = v4;

  return os_unfair_recursive_lock_unlock();
}

- (uint64_t)_safari_moveKeychainItemsWithPersistentIdentifiers:()SafariCoreExtras toAccessGroup:
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v42 = *MEMORY[0x1E697ABD0];
  v43[0] = v6;
  v7 = 1;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = v6;
    v12 = *v28;
    v13 = *MEMORY[0x1E697B3C8];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v39 = v13;
        v16 = [v15 objectForKeyedSubscript:{v13, v26}];
        v40 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

        if ((SecItemUpdateWithError() & 1) == 0)
        {
          v18 = WBS_LOG_CHANNEL_PREFIXKeychain();
          v6 = v26;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v21 = *MEMORY[0x1E697AC30];
            v22 = v18;
            v23 = [v15 objectForKeyedSubscript:v21];
            v24 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
            safari_privacyPreservingDescription = [0 safari_privacyPreservingDescription];
            *buf = 138740739;
            v32 = v23;
            v33 = 2117;
            v34 = v24;
            v35 = 2112;
            v36 = v26;
            v37 = 2112;
            v38 = safari_privacyPreservingDescription;
            _os_log_error_impl(&dword_1B8447000, v22, OS_LOG_TYPE_ERROR, "Unable to move credential %{sensitive}@ (%{sensitive}@) to access group %@: %@", buf, 0x2Au);
          }

          CFRelease(0);

          v7 = 0;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v7 = 1;
    v6 = v26;
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)safari_moveCredentialTypesToRecentlyDeleted:()SafariCoreExtras onSavedAccount:
{
  v6 = a4;
  v7 = ((a3 & [v6 credentialTypes] & 1) == 0 || objc_msgSend(self, "_safari_movePasswordCredentialsFromSavedAccountToRecentlyDeleted:", v6) && objc_msgSend(self, "_safari_movePasswordSidecarsFromSavedAccountToRecentlyDeleted:", v6)) && ((a3 & objc_msgSend(v6, "credentialTypes") & 2) == 0 || objc_msgSend(self, "_safari_movePasskeyCredentialFromSavedAccountToRecentlyDeleted:", v6) && objc_msgSend(self, "_safari_movePasskeySidecarsFromSavedAccountToRecentlyDeleted:", v6));

  return v7;
}

- (uint64_t)_safari_movePasswordCredentialsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getCredentialItemsFromKeychainForPasswordInSavedAccount:v4];
  v6 = [v5 count];
  protectionSpaces = [v4 protectionSpaces];

  v8 = [protectionSpaces count];
  if (v6 >= v8)
  {
    v10 = recentlyDeletedPasswordCredentialAccessGroup();
    v9 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v5 toAccessGroup:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_safari_movePasswordSidecarsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount:v4];
  v6 = [self _safari_moveSidecarItemsByTypeToRecentlyDeleted:v5 savedAccount:v4];

  return v6;
}

- (uint64_t)_safari_movePasskeyCredentialFromSavedAccountToRecentlyDeleted:()SafariCoreExtras
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [self _safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:?];
  v3 = v2;
  if (v2)
  {
    v9[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = recentlyDeletedPasskeyCredentialAccessGroup();
    v6 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v4 toAccessGroup:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)_safari_movePasskeySidecarsFromSavedAccountToRecentlyDeleted:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount:v4];
  v6 = [self _safari_moveSidecarItemsByTypeToRecentlyDeleted:v5 savedAccount:v4];

  return v6;
}

- (uint64_t)_safari_moveSidecarItemsByTypeToRecentlyDeleted:()SafariCoreExtras savedAccount:
{
  v6 = a3;
  if ([a4 isSavedInPersonalKeychain])
  {
    recentlyDeletedSidecarAccessGroup();
  }

  else
  {
    recentlyDeletedPersonalSidecarAccessGroup();
  }
  v7 = ;
  v8 = [v6 objectForKeyedSubscript:&unk_1F308E288];
  v9 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v8 toAccessGroup:v7];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:&unk_1F308E2A0];
    v11 = recentlyDeletedSidecarAccessGroup();
    v12 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v10 toAccessGroup:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)safari_recoverSavedAccountFromRecentlyDeleted:()SafariCoreExtras
{
  v4 = a3;
  credentialTypes = [v4 credentialTypes];
  v6 = ((credentialTypes & 1) == 0 || [self _safari_recoverPasswordCredentialsFromRecentlyDeletedSavedAccount:v4] && objc_msgSend(self, "_safari_recoverPasswordSidecarsFromRecentlyDeletedSavedAccount:", v4)) && ((credentialTypes & objc_msgSend(v4, "credentialTypes") & 2) == 0 || objc_msgSend(self, "_safari_recoverPasskeyCredentialFromRecentlyDeletedSavedAccount:", v4) && objc_msgSend(self, "_safari_recoverPasskeySidecarsFromRecentlyDeletedSavedAccount:", v4));

  return v6;
}

- (uint64_t)_safari_recoverPasswordCredentialsFromRecentlyDeletedSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getCredentialItemsFromKeychainForPasswordInSavedAccount:v4];
  v6 = [v5 count];
  protectionSpaces = [v4 protectionSpaces];

  v8 = [protectionSpaces count];
  if (v6 >= v8)
  {
    v10 = passwordCredentialAccessGroup();
    v9 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v5 toAccessGroup:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_safari_recoverPasswordSidecarsFromRecentlyDeletedSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount:v4];
  v6 = [self _safari_recoverSidecarItemsByType:v5 forRecentlyDeletedSavedAccount:v4];

  return v6;
}

- (uint64_t)_safari_recoverPasskeyCredentialFromRecentlyDeletedSavedAccount:()SafariCoreExtras
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [self _safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:?];
  v3 = v2;
  if (v2)
  {
    v9[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v5 = passkeyCredentialAccessGroup();
    v6 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v4 toAccessGroup:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)_safari_recoverPasskeySidecarsFromRecentlyDeletedSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self _safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount:v4];
  v6 = [self _safari_recoverSidecarItemsByType:v5 forRecentlyDeletedSavedAccount:v4];

  return v6;
}

- (uint64_t)_safari_recoverSidecarItemsByType:()SafariCoreExtras forRecentlyDeletedSavedAccount:
{
  v6 = a3;
  if ([a4 isSavedInPersonalKeychain])
  {
    sidecarAccessGroup();
  }

  else
  {
    personalSidecarAccessGroup();
  }
  v7 = ;
  v8 = [v6 objectForKeyedSubscript:&unk_1F308E288];
  v9 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v8 toAccessGroup:v7];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:&unk_1F308E2A0];
    v11 = sidecarAccessGroup();
    v12 = [self _safari_moveKeychainItemsWithPersistentIdentifiers:v10 toAccessGroup:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_safari_getCredentialItemsFromKeychainForPasswordInSavedAccount:()SafariCoreExtras
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  protectionSpaces = [v3 protectionSpaces];
  v5 = [protectionSpaces countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v27;
    *&v6 = 138740483;
    v23 = v6;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v27 != v9)
        {
          objc_enumerationMutation(protectionSpaces);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        user = [v3 user];
        sharedGroupID = [v3 sharedGroupID];
        v8 = queryForUserInProtectionSpace(user, v12, 1, sharedGroupID, [v3 isRecentlyDeleted]);

        result = 0;
        v15 = SecItemCopyMatching(v8, &result);
        if (v15)
        {
          v16 = v15;
          v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            continue;
          }

          v18 = v17;
          user2 = [v3 user];
          host = [v12 host];
          *buf = v23;
          v31 = user2;
          v32 = 2117;
          v33 = host;
          v34 = 2048;
          v35 = v16;
          _os_log_error_impl(&dword_1B8447000, v18, OS_LOG_TYPE_ERROR, "Unable to query for password credential item for %{sensitive}@ (%{sensitive}@): %ld", buf, 0x20u);
        }

        else
        {
          user2 = result;
          [array addObject:result];
        }
      }

      v7 = [protectionSpaces countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (!v7)
      {

        break;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:()SafariCoreExtras
{
  v3 = a3;
  v4 = queryForPasskeyFromSavedAccount(v3);
  v5 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
  result = 0;
  v6 = SecItemCopyMatching(v4, &result);
  v7 = v6;
  if (v5 && v6 == -25300)
  {
    [(__CFDictionary *)v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E697AC38]];
    v9 = credentialIDData(v3);
    [(__CFDictionary *)v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E697AC40]];

    v7 = SecItemCopyMatching(v4, &result);
  }

  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(NSURLCredentialStorage(SafariCoreExtras) *)v10 _safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:v3];
    }

    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  return v11;
}

- (BOOL)safari_setCredential:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:
{
  v49[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 persistence] != 3)
  {
    goto LABEL_17;
  }

  authenticationMethod = [v8 authenticationMethod];
  if (([authenticationMethod isEqualToString:*MEMORY[0x1E695AB50]] & 1) == 0)
  {

    goto LABEL_17;
  }

  v11 = [v8 isProxy];

  if (v11)
  {
LABEL_17:
    v32 = 0;
    goto LABEL_18;
  }

  user = [v7 user];
  v13 = queryForUserInProtectionSpace(user, v8, 0, v9, 0);
  v14 = [v13 mutableCopy];

  v15 = WBS_LOG_CHANNEL_PREFIXKeychain();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  v17 = *MEMORY[0x1E697ABD0];
  if (v16)
  {
    [NSURLCredentialStorage(SafariCoreExtras) safari_setCredential:v15 forHTMLFormProtectionSpace:v14 forGroupID:*MEMORY[0x1E697ABD0]];
  }

  query = v14;
  v48[0] = *MEMORY[0x1E697B3C0];
  password = [v7 password];
  v41 = [password dataUsingEncoding:4];
  v49[0] = v41;
  v39 = *MEMORY[0x1E697ADC8];
  v48[1] = *MEMORY[0x1E697ADC8];
  v18 = MEMORY[0x1E696AEC0];
  host = [v8 host];
  user2 = [v7 user];
  v21 = [v18 stringWithFormat:@"%@ (%@)", host, user2];
  v49[1] = v21;
  v48[2] = *MEMORY[0x1E697ACE0];
  v22 = _WBSLocalizedString(@"Web form password", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v49[2] = v22;
  v40 = v17;
  v48[3] = v17;
  v23 = passwordCredentialAccessGroup();
  v49[3] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:4];
  v25 = [v24 mutableCopy];

  v26 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v36 = v26;
    v37 = [v25 objectForKeyedSubscript:v40];
    v38 = [v25 objectForKeyedSubscript:v39];
    *buf = 138543619;
    v45 = v37;
    v46 = 2113;
    v47 = v38;
    _os_log_debug_impl(&dword_1B8447000, v36, OS_LOG_TYPE_DEBUG, "Attributes for credential SecItemUpdate: { accessGroup: %{public}@, label: %{private}@ }", buf, 0x16u);
  }

  user3 = [v7 user];

  if (user3)
  {
    user4 = [v7 user];
    [v25 setObject:user4 forKeyedSubscript:*MEMORY[0x1E697AC30]];
  }

  if (SecItemUpdate(query, v25))
  {
    v29 = [v25 mutableCopy];
    [v29 addEntriesFromDictionary:query];
    v30 = v29;

    addPasswordsKeychainViewHintIfNeeded(v30);
    v31 = SecItemAdd(v30, 0);

    v32 = v31 == 0;
    if (v31)
    {
      v33 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_setCredential:forHTMLFormProtectionSpace:forGroupID:];
      }

      v32 = 0;
    }

    v25 = v30;
  }

  else
  {
    v32 = 1;
  }

LABEL_18:
  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)safari_deletePasswordCredentialForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = queryForUserInProtectionSpace(a3, a4, 1, v9, a6);
  v11 = [v10 mutableCopy];

  v23 = 0;
  v12 = SecItemCopyMatching(v11, &v23);
  if (v12 != -25300)
  {
    if (v12)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasswordCredentialForUser:forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
      }
    }

    else
    {
      v13 = v23;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = *MEMORY[0x1E697B3C8];
        v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
        v16 = v15;
        if (v15)
        {
          v24 = v14;
          v25[0] = v15;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
          v18 = [v17 mutableCopy];

          if (SecItemDelete(v18))
          {
            v19 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasswordCredentialForUser:forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
            }
          }
        }

        else
        {
          v21 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasswordCredentialForUser:forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteCredentialWithEmptyServerHostForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:
{
  v31[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = queryForUserInProtectionSpace(v12, v10, 1, v11, a6);
  v14 = [v13 mutableCopy];

  [v14 setObject:*MEMORY[0x1E697B268] forKeyedSubscript:*MEMORY[0x1E697B260]];
  result = 0;
  if (SecItemCopyMatching(v14, &result))
  {
    v15 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_deleteCredentialWithEmptyServerHostForUser:forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
    }
  }

  else
  {
    v16 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __152__NSURLCredentialStorage_SafariCoreExtras__safari_deleteCredentialWithEmptyServerHostForUser_forHTMLFormProtectionSpace_forGroupID_fromRecentlyDeleted___block_invoke;
      v24[3] = &unk_1E7CF2AD8;
      v24[4] = &v25;
      [v16 enumerateObjectsUsingBlock:v24];
      v17 = *MEMORY[0x1E697B018];
      v18 = *MEMORY[0x1E697B3C8];
      v30[0] = *MEMORY[0x1E697AFF8];
      v30[1] = v18;
      v19 = v26[3];
      v31[0] = v17;
      v31[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v21 = [v20 mutableCopy];

      if (SecItemDelete(v21))
      {
        v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [NSURLCredentialStorage(SafariCoreExtras) safari_deleteCredentialWithEmptyServerHostForUser:forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
        }
      }

      _Block_object_dispose(&v25, 8);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_formattedLabelWithHost:()SafariCoreExtras user:
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v5, v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  user = [v6 user];
  v9 = queryForUserInProtectionSpace(user, v7, 0, 0, 0);
  v10 = [v9 mutableCopy];

  password = [v6 password];

  if (password)
  {
    v12 = SecItemCopyMatching(v10, 0);
    if (v12)
    {
      if (v12 == -25300)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v13;
          user2 = [v6 user];
          host = [v7 host];
          *buf = 138478083;
          v47 = user2;
          v48 = 2113;
          v49 = host;
          _os_log_impl(&dword_1B8447000, v14, OS_LOG_TYPE_INFO, "Credential for '%{private}@' in protection space %{private}@ doesn't exist.", buf, 0x16u);
        }

        [self safari_setCredential:v6 forHTMLFormProtectionSpace:v7 forGroupID:&stru_1F3064D08];
      }

      else
      {
        v36 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:forHTMLFormProtectionSpace:];
        }
      }
    }

    else
    {
      v18 = +[WBSFeatureAvailability supportsURLCredentialStorageAccessControlGroups];
      v19 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:v20 forHTMLFormProtectionSpace:?];
        }

        v21 = *MEMORY[0x1E697ACC8];
        [(__CFDictionary *)v10 setObject:@"default" forKeyedSubscript:*MEMORY[0x1E697ACC8]];
        v22 = *MEMORY[0x1E697AC30];
        [(__CFDictionary *)v10 removeObjectForKey:*MEMORY[0x1E697AC30]];
        v41 = v21;
        v44 = v21;
        v45 = &stru_1F3064D08;
        v23 = SecItemUpdate(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1]);
        if (v23 != -25300 && v23)
        {
          v37 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:forHTMLFormProtectionSpace:];
          }
        }

        else
        {
          v39 = v22;
          v24 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:v24 forHTMLFormProtectionSpace:v6];
          }

          v42[0] = *MEMORY[0x1E697B3C0];
          password2 = [v6 password];
          v25 = [password2 dataUsingEncoding:4];
          v43[0] = v25;
          v42[1] = *MEMORY[0x1E697ADC8];
          host2 = [v7 host];
          user3 = [v6 user];
          v28 = [self _formattedLabelWithHost:host2 user:user3];
          v43[1] = v28;
          v42[2] = *MEMORY[0x1E697ACE0];
          v29 = _WBSLocalizedString(@"Web form password", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
          v42[3] = v41;
          v43[2] = v29;
          v43[3] = @"default";
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:4];
          v31 = [v30 mutableCopy];

          user4 = [v6 user];

          if (user4)
          {
            user5 = [v6 user];
            [v31 setObject:user5 forKeyedSubscript:v39];

            user6 = [v6 user];
            [(__CFDictionary *)v10 setObject:user6 forKeyedSubscript:v39];
          }

          [(__CFDictionary *)v10 removeObjectForKey:v41];
          if (SecItemUpdate(v10, v31))
          {
            v35 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:forHTMLFormProtectionSpace:];
            }
          }
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:forHTMLFormProtectionSpace:];
      }
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_setDefaultCredential:v17 forHTMLFormProtectionSpace:v6];
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)safari_allSafariCredentials
{
  v18 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  if (+[WBSFeatureAvailability supportsURLCredentialStorageAccessControlGroups])
  {
    v3 = passwordCredentialAccessGroup();
    allCredentials = [self _allCredentialsWithAccessControlGroup:v3 includeLegacyKeychain:0];
  }

  else
  {
    allCredentials = [self allCredentials];
  }

  v5 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    [date timeIntervalSinceNow];
    v14 = 136446466;
    v15 = "all_credentials_fetch";
    v16 = 2048;
    v17 = -v7;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", &v14, 0x16u);
  }

  v8 = [allCredentials safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_30];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_safari_allCredentialItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3 == 2)
  {
    v8 = *MEMORY[0x1E697B020];
    if (a5)
    {
      recentlyDeletedPasskeyCredentialAccessGroup();
    }

    else
    {
      passkeyCredentialAccessGroup();
    }
  }

  else
  {
    if (a3 != 1)
    {
      v10 = [MEMORY[0x1E695E0F8] mutableCopy];
      goto LABEL_14;
    }

    v8 = *MEMORY[0x1E697B018];
    if (a5)
    {
      recentlyDeletedPasswordCredentialAccessGroup();
    }

    else
    {
      passwordCredentialAccessGroup();
    }
  }
  v9 = ;
  v11 = v9;
  v12 = *MEMORY[0x1E697ABD0];
  result[0] = *MEMORY[0x1E697AFF8];
  result[1] = v12;
  *buf = v8;
  *&buf[8] = v9;
  v13 = *MEMORY[0x1E697AEB0];
  v14 = *MEMORY[0x1E697B260];
  result[2] = *MEMORY[0x1E697AEB0];
  result[3] = v14;
  v15 = *MEMORY[0x1E697B268];
  *&buf[16] = MEMORY[0x1E695E118];
  v38 = v15;
  v16 = *MEMORY[0x1E697B318];
  result[4] = *MEMORY[0x1E697B310];
  result[5] = v16;
  v39 = MEMORY[0x1E695E118];
  v40 = MEMORY[0x1E695E118];
  v17 = *MEMORY[0x1E697B390];
  result[6] = *MEMORY[0x1E697B320];
  result[7] = v17;
  v41 = MEMORY[0x1E695E118];
  v42 = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:result count:8];
  v10 = [v18 mutableCopy];

  if ([v7 length])
  {
    v19 = *MEMORY[0x1E697AE90];
    v34[0] = v13;
    v34[1] = v19;
    v35[0] = MEMORY[0x1E695E110];
    v35[1] = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v10 addEntriesFromDictionary:v20];
  }

LABEL_14:
  result[0] = 0;
  v21 = SecItemCopyMatching(v10, result);
  if (v21)
  {
    if (v21 == -25300)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *MEMORY[0x1E697ABD0];
        v24 = v22;
        v25 = [v10 objectForKeyedSubscript:v23];
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&dword_1B8447000, v24, OS_LOG_TYPE_DEFAULT, "No credential items found in access group %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v31 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_allCredentialItemsOfType:v31 groupID:? fromRecentlyDeleted:?];
      }
    }

    v26 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v26 = result[0];
    v27 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [v26 count];
      v30 = [v10 objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
      *buf = 134218242;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      _os_log_impl(&dword_1B8447000, v28, OS_LOG_TYPE_DEFAULT, "Fetched %li credential items from access group %{public}@", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return v26;
}

- (uint64_t)_safari_removeDefaultCommentFromKeychainItemsMatchingQuery:()SafariCoreExtras
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E697ACC8];
  v12[0] = &stru_1F3064D08;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  cf = 0;
  v6 = SecItemUpdateWithError();

  if ((v6 & 1) == 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSURLCredentialStorage(SafariCoreExtras) *)&cf _safari_removeDefaultCommentFromKeychainItemsMatchingQuery:v7];
    }

    CFRelease(cf);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler:()SafariCoreExtras
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __123__NSURLCredentialStorage_SafariCoreExtras__safari_migrateKeychainItemsWithInvalidAuthenticationTypesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF16B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_safari_migrateKeychainItemsWithInvalidAuthenticationTypes
{
  v6 = a2;
  v7 = objc_opt_class();
  *self = 138412290;
  *a4 = v7;
  v8 = v7;
  _os_log_error_impl(&dword_1B8447000, v6, OS_LOG_TYPE_ERROR, "kSecAttrAccount value for keychain item was not of type string, got type: %@", self, 0xCu);
}

- (id)_safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__NSURLCredentialStorage_SafariCoreExtras___safari_getSidecarKeychainItemsByTypeForPasswordOnSavedAccount___block_invoke;
  v11[3] = &unk_1E7CF2B48;
  v11[4] = self;
  v12 = v4;
  v6 = dictionary;
  v13 = v6;
  v7 = v4;
  [v7 enumeratePasswordSidecarsWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)_safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__NSURLCredentialStorage_SafariCoreExtras___safari_getSidecarKeychainItemsByTypeForPasskeyOnSavedAccount___block_invoke;
  v11[3] = &unk_1E7CF2B48;
  v11[4] = self;
  v12 = v4;
  v6 = dictionary;
  v13 = v6;
  v7 = v4;
  [v7 enumeratePasskeySidecarsWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)_safari_getKeychainItemForSidecar:()SafariCoreExtras ofType:groupID:fromRecentlyDeleted:
{
  v9 = a3;
  if (a4)
  {
    v10 = 1936220530;
  }

  else
  {
    v10 = 1835626085;
  }

  v11 = a5;
  user = [v9 user];
  protectionSpace = [v9 protectionSpace];
  v14 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(v10, user, protectionSpace, v11, a6, 1);

  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (v15 != -25300 && v15)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) _safari_getKeychainItemForSidecar:v17 ofType:v9 groupID:? fromRecentlyDeleted:?];
    }

    v16 = 0;
  }

  else
  {
    v16 = result;
  }

  return v16;
}

- (void)_safari_addKeychainItem:()SafariCoreExtras ofType:toSidecarDictionary:
{
  v11 = a3;
  v7 = a5;
  if (v11)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    array = [v7 objectForKeyedSubscript:v8];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      [v7 setObject:array forKeyedSubscript:v10];
    }

    [array addObject:v11];
  }
}

- (id)_safari_allSidecarItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = *MEMORY[0x1E697B018];
  v9 = *MEMORY[0x1E697B260];
  result[0] = *MEMORY[0x1E697AFF8];
  result[1] = v9;
  v10 = *MEMORY[0x1E697B268];
  *buf = v8;
  *&buf[8] = v10;
  v11 = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B318];
  result[2] = *MEMORY[0x1E697B310];
  result[3] = v12;
  *&buf[16] = MEMORY[0x1E695E118];
  v45 = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697B390];
  result[4] = *MEMORY[0x1E697B320];
  result[5] = v13;
  v46 = MEMORY[0x1E695E118];
  v47 = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:result count:6];
  v15 = [v14 mutableCopy];

  if ([v7 length])
  {
    if (a3 == 1)
    {
      v37 = *MEMORY[0x1E697ABD0];
      if (a5)
      {
        recentlyDeletedSidecarAccessGroup();
      }

      else
      {
        sidecarAccessGroup();
      }
      v18 = ;
      v21 = *MEMORY[0x1E697AEB0];
      v40 = v18;
      v41 = MEMORY[0x1E695E110];
      v22 = *MEMORY[0x1E697AE90];
    }

    else
    {
      if (a3)
      {
        goto LABEL_18;
      }

      v37 = *MEMORY[0x1E697ABD0];
      if (a5)
      {
        recentlyDeletedPersonalSidecarAccessGroup();
      }

      else
      {
        personalSidecarAccessGroup();
      }
      v18 = ;
      v21 = *MEMORY[0x1E697AEB0];
      v40 = v18;
      v41 = v11;
      v22 = *MEMORY[0x1E697ADF0];
    }

    v38 = v21;
    v39 = v22;
    v42 = v7;
    v19 = MEMORY[0x1E695DF20];
    v20 = 3;
  }

  else
  {
    v16 = *MEMORY[0x1E697AEB0];
    v40 = v11;
    v17 = *MEMORY[0x1E697ABD0];
    v37 = v16;
    v38 = v17;
    if (a5)
    {
      recentlyDeletedSidecarAccessGroup();
    }

    else
    {
      sidecarAccessGroup();
    }
    v18 = ;
    v41 = v18;
    v19 = MEMORY[0x1E695DF20];
    v20 = 2;
  }

  v23 = [v19 dictionaryWithObjects:&v40 forKeys:&v37 count:{v20, v37, v38, v39, v40, v41, v42}];
  [v15 addEntriesFromDictionary:v23];

LABEL_18:
  result[0] = 0;
  v24 = SecItemCopyMatching(v15, result);
  if (v24)
  {
    if (v24 == -25300)
    {
      v25 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *MEMORY[0x1E697ABD0];
        v27 = v25;
        v28 = [v15 objectForKeyedSubscript:v26];
        *buf = 138543362;
        *&buf[4] = v28;
        _os_log_impl(&dword_1B8447000, v27, OS_LOG_TYPE_DEFAULT, "No sidecar items found in access group %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v34 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_allSidecarItemsOfType:v34 groupID:? fromRecentlyDeleted:?];
      }
    }

    v29 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v29 = result[0];
    v30 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v29 count];
      v33 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697ABD0]];
      *buf = 134218242;
      *&buf[4] = v32;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_impl(&dword_1B8447000, v31, OS_LOG_TYPE_DEFAULT, "Fetched %li sidecar items from access group %{public}@", buf, 0x16u);
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)safari_allSharedSidecarsForGroupID:()SafariCoreExtras fromRecentlyDeleted:
{
  v5 = [self _safari_allSidecarItemsOfType:1 groupID:a3 fromRecentlyDeleted:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__NSURLCredentialStorage_SafariCoreExtras__safari_allSharedSidecarsForGroupID_fromRecentlyDeleted___block_invoke;
  v8[3] = &unk_1E7CF2B98;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

- (id)safari_allPersonalSidecarsForGroupID:()SafariCoreExtras fromRecentlyDeleted:
{
  v5 = [self _safari_allSidecarItemsOfType:0 groupID:a3 fromRecentlyDeleted:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__NSURLCredentialStorage_SafariCoreExtras__safari_allPersonalSidecarsForGroupID_fromRecentlyDeleted___block_invoke;
  v8[3] = &unk_1E7CF2B70;
  v8[4] = self;
  v6 = [v5 safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

- (id)_safari_protectionSpaceFromKeychainDictionary:()SafariCoreExtras
{
  v3 = MEMORY[0x1E695AC58];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697ADF8]];
  integerValue = [v7 integerValue];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AE00]];

  v10 = WBSHTTPProtocolFromSecAttrProtocolValue(v9);
  v11 = [v5 initWithHost:v6 port:integerValue protocol:v10 realm:0 authenticationMethod:*MEMORY[0x1E695AB50]];

  return v11;
}

- (id)_safari_dataFromSidecarDictionary:()SafariCoreExtras user:domain:
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v17 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v17];
  v10 = v17;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v15 = v12;
      safari_privacyPreservingDescription = [v10 safari_privacyPreservingDescription];
      *buf = 138478339;
      v19 = v7;
      v20 = 2113;
      v21 = v8;
      v22 = 2114;
      v23 = safari_privacyPreservingDescription;
      _os_log_fault_impl(&dword_1B8447000, v15, OS_LOG_TYPE_FAULT, "Unable to archive sidecar for %{private}@ (%{private}@): %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_safari_sidecarDictionaryFromData:()SafariCoreExtras user:domain:
{
  v7 = a4;
  v8 = a5;
  v15 = 0;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v15];
  v10 = v15;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      goto LABEL_9;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NSURLCredentialStorage(SafariCoreExtras) _safari_sidecarDictionaryFromData:user:domain:];
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) _safari_sidecarDictionaryFromData:v12 user:? domain:?];
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)safari_setSidecar:()SafariCoreExtras credential:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  dictionaryRepresentation = [v12 dictionaryRepresentation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v18 = dictionaryRepresentation;
    v19 = 1835626085;
LABEL_5:
    [selfCopy2 _safari_setSidecarDictionary:v18 type:v19 credential:v13 htmlFormProtectionSpace:v14 groupID:v15 fromRecentlyDeleted:a7];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v18 = dictionaryRepresentation;
    v19 = 1936220530;
    goto LABEL_5;
  }

  v20 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v22 = v20;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    user = [v13 user];
    host = [v14 host];
    v27 = 138543875;
    v28 = v24;
    v29 = 2117;
    v30 = user;
    v31 = 2117;
    v32 = host;
    _os_log_error_impl(&dword_1B8447000, v22, OS_LOG_TYPE_ERROR, "Attempted to set non-sidecar object of type %{public}@ for %{sensitive}@ (%{sensitive}@)", &v27, 0x20u);
  }

LABEL_8:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:
{
  v72 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if ([v15 persistence] == 3)
  {
    authenticationMethod = [v16 authenticationMethod];
    if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB50]])
    {
      v19 = [v16 isProxy];

      if ((v19 & 1) == 0)
      {
        user = [v15 user];
        host = [v16 host];
        v22 = [self _safari_dataFromSidecarDictionary:v14 user:user domain:host];

        if (!v22)
        {
LABEL_27:

          goto LABEL_28;
        }

        user2 = [v15 user];
        v24 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(a4, user2, v16, v17, a8, 0);

        query = v24;
        if (a4 == 1936220530)
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = _WBSLocalizedString(@"Password Manager Shared Metadata: %@ (%@)", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
          host2 = [v16 host];
          user3 = [v15 user];
          v28 = [v30 localizedStringWithFormat:v31, host2, user3];

          v24 = query;
          v29 = @"Password Manager Shared Metadata";
        }

        else
        {
          if (a4 != 1835626085)
          {
            v50 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v51 = v50;
              host3 = [v16 host];
              user4 = [v15 user];
              *buf = 134218499;
              v67 = a4;
              v68 = 2117;
              v69 = host3;
              v70 = 2117;
              v71 = user4;
              _os_log_error_impl(&dword_1B8447000, v51, OS_LOG_TYPE_ERROR, "Invalid sidecar type (%lu) while setting sidecar for %{sensitive}@ (%{sensitive}@)", buf, 0x20u);
            }

            goto LABEL_26;
          }

          v25 = MEMORY[0x1E696AEC0];
          host4 = [v16 host];
          user5 = [v15 user];
          v28 = [v25 localizedStringWithFormat:@"Password Manager Metadata: %@ (%@)", host4, user5];

          v29 = @"Password Manager Metadata";
        }

        v34 = _WBSLocalizedString(v29, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
        v35 = *MEMORY[0x1E697B3C0];
        v60 = v22;
        v65[0] = v22;
        v56 = *MEMORY[0x1E697AEF8];
        v57 = v35;
        v64[0] = v35;
        v64[1] = v56;
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v37 = *MEMORY[0x1E697ADC8];
        v65[1] = v36;
        v65[2] = v28;
        v59 = v28;
        v38 = v37;
        v39 = *MEMORY[0x1E697ACE0];
        v64[2] = v38;
        v64[3] = v39;
        v58 = v34;
        v65[3] = v34;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:4];
        v41 = [v40 safari_dictionaryByMergingWithDictionary:v24];
        v42 = [v41 mutableCopy];

        addPasswordsKeychainViewHintIfNeeded(v42);
        v43 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [NSURLCredentialStorage(SafariCoreExtras) _safari_setSidecarDictionary:v43 type:v42 credential:v38 htmlFormProtectionSpace:? groupID:? fromRecentlyDeleted:?];
        }

        v44 = SecItemAdd(v42, 0);
        v22 = v60;
        if (v44)
        {
          if (v44 != -25299)
          {
            v54 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) _safari_setSidecarDictionary:type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:];
            }

            goto LABEL_25;
          }

          v62[0] = v57;
          v62[1] = v56;
          v63[0] = v60;
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          v63[1] = v45;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];

          v47 = SecItemUpdate(query, v46);
          v48 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            [NSURLCredentialStorage(SafariCoreExtras) _safari_setSidecarDictionary:v48 type:query credential:? htmlFormProtectionSpace:? groupID:? fromRecentlyDeleted:?];
            if (v47)
            {
              goto LABEL_16;
            }
          }

          else if (v47)
          {
LABEL_16:
            v49 = WBS_LOG_CHANNEL_PREFIXKeychain();
            v22 = v60;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) _safari_setSidecarDictionary:type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:];
            }

            goto LABEL_25;
          }

          v22 = v60;
        }

LABEL_25:

        v24 = query;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
    }
  }

LABEL_28:

  v55 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteSidecarOfType:()SafariCoreExtras forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = 1936220530;
  }

  else
  {
    v7 = 1835626085;
  }

  v8 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(v7, a4, a5, a6, a7, 1);
  v21 = 0;
  v9 = SecItemCopyMatching(v8, &v21);
  if (v9 != -25300)
  {
    if (v9)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_deleteSidecarOfType:forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
      }
    }

    else
    {
      v10 = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = *MEMORY[0x1E697B3C8];
        v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
        v13 = v12;
        if (v12)
        {
          v14 = *MEMORY[0x1E697B018];
          v22[0] = *MEMORY[0x1E697AFF8];
          v22[1] = v11;
          v23[0] = v14;
          v23[1] = v12;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
          v16 = [v15 mutableCopy];

          if (SecItemDelete(v16))
          {
            v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) safari_deleteSidecarOfType:forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
            }
          }
        }

        else
        {
          v19 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_deleteSidecarOfType:forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:];
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)safari_copySavedAccountWithPasswordToPersonalKeychain:()SafariCoreExtras withNewUsername:
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v25 protectionSpaces];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = *v34;
    v24 = *MEMORY[0x1E697AEB0];
    v23 = *MEMORY[0x1E697AE90];
    v7 = *MEMORY[0x1E697B018];
    v8 = *MEMORY[0x1E697AFF8];
    v9 = *MEMORY[0x1E697B3C8];
    v21 = *MEMORY[0x1E697AC30];
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v11 = queryForPasswordFromSavedAccountAndProtectionSpace(v25, *(*(&v33 + 1) + 8 * v10), 1);
        result[0] = 0;
        if (SecItemCopyMatching(v11, result))
        {
          v15 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasswordToPersonalKeychain:withNewUsername:];
          }

          goto LABEL_22;
        }

        v12 = result[0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasswordToPersonalKeychain:v16 withNewUsername:?];
          }

          goto LABEL_22;
        }

        v13 = [v12 mutableCopy];
        [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v24];
        [v13 setObject:0 forKeyedSubscript:v23];
        [v13 setObject:v7 forKeyedSubscript:v8];
        [v13 setObject:0 forKeyedSubscript:v9];
        if (v26)
        {
          [v13 setObject:v26 forKeyedSubscript:v21];
        }

        addPasswordsKeychainViewHintIfNeeded(v13);
        if (SecItemAdd(v13, 0))
        {
          v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasswordToPersonalKeychain:withNewUsername:];
          }

LABEL_22:
          v14 = 0;
          goto LABEL_23;
        }

        ++v10;
      }

      while (v5 != v10);
      v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [v25 _writeFormerlySharedSavedAccountMarkerForCredentialTypes:1];
  [v25 _copySharablePasswordSidecarDataFromSharedSidecarsToPersonalSidecars];
  result[0] = 0;
  result[1] = result;
  result[2] = 0x2020000000;
  v32 = 1;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __114__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasswordToPersonalKeychain_withNewUsername___block_invoke;
  v27[3] = &unk_1E7CF2BC0;
  v30 = result;
  v27[4] = self;
  v28 = v26;
  v29 = v25;
  [v29 enumeratePasswordSidecarsWithBlock:v27];

  _Block_object_dispose(result, 8);
  v14 = 1;
LABEL_23:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)safari_copySavedAccountWithPassword:()SafariCoreExtras toGroupWithID:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    protectionSpaces = [v6 protectionSpaces];
    v9 = [protectionSpaces countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(protectionSpaces);
          }

          v12 = queryForPasswordFromSavedAccountAndProtectionSpace(v6, *(*(&v30 + 1) + 8 * i), 0);
          [self _safari_removeDefaultCommentFromKeychainItemsMatchingQuery:v12];
          cf = 0;
          v13 = SecItemShareWithGroup();
          if (v13)
          {
            CFRelease(v13);
          }
        }

        v9 = [protectionSpaces countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    if ([v6 hasPasswordSidecars])
    {
      [v6 _clearFormerlySharedSavedAccountMarkerForCredentialTypesIfNecessary:1];
      [v6 _copySharablePasswordSidecarDataFromPersonalSidecarsToSharedSidecars];
      [v6 _copyHistoryItemsFromSharedSidecarToPersonalSidecarAndSetupNewSharedSidecarForGroupID:v7];
      sharedGroupID = [v6 sharedGroupID];
      cf = 0;
      p_cf = &cf;
      v28 = 0x2020000000;
      v29 = 1;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __94__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPassword_toGroupWithID___block_invoke;
      v20[3] = &unk_1E7CF2BE8;
      v15 = sharedGroupID;
      v25 = &cf;
      v21 = v15;
      selfCopy = self;
      v23 = v7;
      v24 = v6;
      [v24 enumeratePasswordSidecarsWithBlock:v20];
      v16 = *(p_cf + 24);

      _Block_object_dispose(&cf, 8);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPassword:toGroupWithID:];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)safari_copySavedAccountWithPasskeyToPersonalKeychain:()SafariCoreExtras
{
  v4 = a3;
  v5 = queryForPasskeyFromSavedAccount(v4);
  v6 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
  result = 0;
  v7 = SecItemCopyMatching(v5, &result);
  v8 = v7;
  if (v6 && v7 == -25300)
  {
    [(__CFDictionary *)v5 setObject:0 forKeyedSubscript:*MEMORY[0x1E697AC38]];
    v10 = credentialIDData(v4);
    [(__CFDictionary *)v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E697AC40]];

    v8 = SecItemCopyMatching(v5, &result);
  }

  if (v8)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasskeyToPersonalKeychain:];
    }

    v12 = 0;
  }

  else
  {
    v13 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 mutableCopy];
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AEB0]];
      [v14 setObject:0 forKeyedSubscript:*MEMORY[0x1E697AE90]];
      [v14 setObject:*MEMORY[0x1E697B020] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      [v14 setObject:0 forKeyedSubscript:*MEMORY[0x1E697B3C8]];
      addPasswordsKeychainViewHintIfNeeded(v14);
      v15 = SecItemAdd(v14, 0);
      v12 = v15 == 0;
      if (v15)
      {
        v16 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasswordToPersonalKeychain:withNewUsername:];
        }
      }

      else
      {
        [v4 _writeFormerlySharedSavedAccountMarkerForCredentialTypes:2];
        if ([v4 hasPasskeySidecars])
        {
          [v4 _copySharablePasskeySidecarDataFromSharedSidecarsToPersonalSidecars];
          v22[0] = 0;
          v22[1] = v22;
          v22[2] = 0x2020000000;
          v23 = 1;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __97__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasskeyToPersonalKeychain___block_invoke;
          v19[3] = &unk_1E7CF2C10;
          v21 = v22;
          v19[4] = self;
          v20 = v4;
          [v20 enumeratePasskeySidecarsWithBlock:v19];

          _Block_object_dispose(v22, 8);
        }
      }
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasskeyToPersonalKeychain:v17];
      }

      v12 = 0;
    }
  }

  return v12;
}

- (uint64_t)safari_copySavedAccountWithPasskey:()SafariCoreExtras toGroupWithID:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = queryForPasskeyFromSavedAccount(v6);
    [self _safari_removeDefaultCommentFromKeychainItemsMatchingQuery:v8];
    v32 = 0;
    v9 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
    v10 = SecItemShareWithGroup();
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v32;
    v12 = v11;
    if (v9)
    {
      domain = [v11 domain];
      if ([domain isEqual:*MEMORY[0x1E696A768]])
      {
        code = [v12 code];

        if (code == -25300)
        {
          [v8 setObject:0 forKeyedSubscript:*MEMORY[0x1E697AC38]];
          v15 = credentialIDData(v6);
          [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x1E697AC40]];

          v16 = SecItemShareWithGroup();
          if (v16)
          {
            CFRelease(v16);
          }
        }
      }

      else
      {
      }
    }

    v18 = 1;
    if ([v6 hasPasskeySidecars])
    {
      [v6 _clearFormerlySharedSavedAccountMarkerForCredentialTypesIfNecessary:2];
      [v6 _copySharablePasskeySidecarDataFromPersonalSidecarsToSharedSidecars];
      sharedGroupID = [v6 sharedGroupID];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 1;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __93__NSURLCredentialStorage_SafariCoreExtras__safari_copySavedAccountWithPasskey_toGroupWithID___block_invoke;
      v22[3] = &unk_1E7CF2BE8;
      v20 = sharedGroupID;
      v27 = &v28;
      v23 = v20;
      selfCopy = self;
      v25 = v7;
      v26 = v6;
      [v26 enumeratePasskeySidecarsWithBlock:v22];
      v18 = *(v29 + 24);

      _Block_object_dispose(&v28, 8);
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_copySavedAccountWithPasskey:toGroupWithID:];
    }

    v18 = 0;
  }

  return v18 & 1;
}

- (BOOL)_safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:()SafariCoreExtras withNewUsername:fromRecentlyDeleted:
{
  v26[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  dictionaryRepresentation = [v8 dictionaryRepresentation];
  user = [v8 user];
  protectionSpace = [v8 protectionSpace];
  host = [protectionSpace host];
  v14 = [self _safari_dataFromSidecarDictionary:dictionaryRepresentation user:user domain:host];

  if (v14)
  {
    user2 = v9;
    if (!v9)
    {
      user2 = [v8 user];
    }

    protectionSpace2 = [v8 protectionSpace];
    v17 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1835626085, user2, protectionSpace2, 0, a5, 0);

    if (!v9)
    {
    }

    v18 = *MEMORY[0x1E697AEF8];
    v25[0] = *MEMORY[0x1E697B3C0];
    v25[1] = v18;
    v26[0] = v14;
    v26[1] = &unk_1F308E2B8;
    v25[2] = *MEMORY[0x1E697ADF0];
    v26[2] = &stru_1F3064D08;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v17 addEntriesFromDictionary:v19];

    addPasswordsKeychainViewHintIfNeeded(v17);
    v20 = SecItemAdd(v17, 0);
    v21 = v20 == 0;
    if (v20)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:withNewUsername:fromRecentlyDeleted:];
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:()SafariCoreExtras forGroupWithID:fromRecentlyDeleted:
{
  v26[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  dictionaryRepresentation = [v8 dictionaryRepresentation];
  user = [v8 user];
  protectionSpace = [v8 protectionSpace];
  host = [protectionSpace host];
  v14 = [self _safari_dataFromSidecarDictionary:dictionaryRepresentation user:user domain:host];

  if (v14)
  {
    user2 = [v8 user];
    protectionSpace2 = [v8 protectionSpace];
    v17 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1835626085, user2, protectionSpace2, v9, a5, 0);

    v18 = *MEMORY[0x1E697AEF8];
    v25[0] = *MEMORY[0x1E697B3C0];
    v25[1] = v18;
    v26[0] = v14;
    v26[1] = &unk_1F308E2B8;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v17 addEntriesFromDictionary:v19];

    addPasswordsKeychainViewHintIfNeeded(v17);
    v20 = SecItemAdd(v17, 0);
    v21 = v20 == 0;
    if (v20)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:forGroupWithID:fromRecentlyDeleted:];
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)_safari_copyPersonalSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:
{
  v27[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  dictionaryRepresentation = [v9 dictionaryRepresentation];
  user = [v9 user];
  protectionSpace = [v9 protectionSpace];
  host = [protectionSpace host];
  v15 = [self _safari_dataFromSidecarDictionary:dictionaryRepresentation user:user domain:host];

  if (v15)
  {
    user2 = [v9 user];
    protectionSpace2 = [v9 protectionSpace];
    v18 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1835626085, user2, protectionSpace2, v10, a6, 0);

    v19 = *MEMORY[0x1E697AEF8];
    v26[0] = *MEMORY[0x1E697B3C0];
    v26[1] = v19;
    v27[0] = v15;
    v27[1] = &unk_1F308E2B8;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v18 addEntriesFromDictionary:v20];

    addPasswordsKeychainViewHintIfNeeded(v18);
    v21 = SecItemAdd(v18, 0);
    v22 = v21 == 0;
    if (v21)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_copyPersonalSidecar:fromGroupWithID:toGroupWithID:fromRecentlyDeleted:];
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (uint64_t)_safari_copySharedSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:
{
  v33[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![v11 length])
  {
    dictionaryRepresentation = [v10 dictionaryRepresentation];
    user = [v10 user];
    protectionSpace = [v10 protectionSpace];
    host = [protectionSpace host];
    v15 = [self _safari_dataFromSidecarDictionary:dictionaryRepresentation user:user domain:host];

    if (!v15)
    {
      v17 = 0;
      goto LABEL_15;
    }

    user2 = [v10 user];
    protectionSpace2 = [v10 protectionSpace];
    v24 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1936220530, user2, protectionSpace2, v12, a6, 0);

    v25 = *MEMORY[0x1E697AEF8];
    v32[0] = *MEMORY[0x1E697B3C0];
    v32[1] = v25;
    v33[0] = v15;
    v33[1] = &unk_1F308E2D0;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v24 addEntriesFromDictionary:v26];

    addPasswordsKeychainViewHintIfNeeded(v24);
    if (!SecItemAdd(v24, 0))
    {

      goto LABEL_4;
    }

    v27 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) _safari_copySharedSidecar:fromGroupWithID:toGroupWithID:fromRecentlyDeleted:];
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  user3 = [v10 user];
  protectionSpace3 = [v10 protectionSpace];
  v15 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1936220530, user3, protectionSpace3, v11, a6, 1);

  cf = 0;
  v16 = SecItemShareWithGroup();
  if (!v16)
  {
    v28 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) _safari_copySharedSidecar:v12 fromGroupWithID:&cf toGroupWithID:v28 fromRecentlyDeleted:?];
    }

    CFRelease(cf);
    goto LABEL_13;
  }

  CFRelease(v16);
LABEL_4:
  v17 = 1;
LABEL_14:

LABEL_15:
  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

- (uint64_t)safari_deleteAllItemsForGroupID:()SafariCoreExtras
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [self _safari_deleteAllPasswordCredentialsForGroupID:v4];
    v6 = [self _safari_deleteAllRecentlyDeletedPasswordCredentialsForGroupID:v4];
    v7 = [self _safari_deleteAllPasskeyCredentialsForGroupID:v4];
    v8 = [self _safari_deleteAllRecentlyDeletedPasskeyCredentialsForGroupID:v4];
    v9 = [self _safari_deleteAllSharedSidecarsForGroupID:v4];
    v10 = [self _safari_deleteAllRecentlyDeletedSharedSidecarsForGroupID:v4];
    v11 = [self _safari_deleteAllPersonalSidecarsForGroupID:v4];
    v12 = [self _safari_deleteAllRecentlyDeletedPersonalSidecarsForGroupID:v4] & v11 & v10 & v9 & v8 & v7 & v6 & v5;
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NSURLCredentialStorage(SafariCoreExtras) safari_deleteAllItemsForGroupID:];
    }

    v12 = 1;
  }

  return v12 & 1;
}

- (uint64_t)_safari_deleteAllPasswordCredentialsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = passwordCredentialAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllPasswordCredentialsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllRecentlyDeletedPasswordCredentialsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = recentlyDeletedPasswordCredentialAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllRecentlyDeletedPasswordCredentialsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllPasskeyCredentialsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = passkeyCredentialAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllPasskeyCredentialsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllRecentlyDeletedPasskeyCredentialsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = recentlyDeletedPasskeyCredentialAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllRecentlyDeletedPasskeyCredentialsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllSharedSidecarsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = sidecarAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllSharedSidecarsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllRecentlyDeletedSharedSidecarsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = recentlyDeletedSidecarAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E110];
  v8 = *MEMORY[0x1E697AE90];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllRecentlyDeletedSharedSidecarsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllPersonalSidecarsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = personalSidecarAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E697ADF0];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllPersonalSidecarsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_safari_deleteAllRecentlyDeletedPersonalSidecarsForGroupID:()SafariCoreExtras
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v18[0] = *MEMORY[0x1E697B018];
  v4 = *MEMORY[0x1E697ABD0];
  v17[0] = v3;
  v17[1] = v4;
  v5 = a3;
  v6 = recentlyDeletedPersonalSidecarAccessGroup();
  v7 = *MEMORY[0x1E697AEB0];
  v18[1] = v6;
  v18[2] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E697ADF0];
  v17[2] = v7;
  v17[3] = v8;
  v18[3] = v5;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300)
  {
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_deleteAllRecentlyDeletedPersonalSidecarsForGroupID:];
      }
    }
  }

  if (v11)
  {
    v13 = v11 == -25300;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)safari_customTitleForPasskeyWithUserHandle:()SafariCoreExtras relyingPartyID:groupID:
{
  v1 = [self _safari_personalSidecarDictionaryForPasskeyWithUserHandle:? relyingPartyID:? groupID:?];
  v2 = [v1 objectForKeyedSubscript:@"title"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)safari_setLastUsedDate:()SafariCoreExtras forPasskeyWithUserHandle:relyingPartyID:groupID:context:
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [self _safari_personalSidecarDictionaryForPasskeyWithUserHandle:v15 relyingPartyID:v14 groupID:v13];
  v18 = v17;
  if (v17)
  {
    dictionary = v17;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v24 = dictionary;

  v20 = [MEMORY[0x1E695AC58] safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:v14];
  v21 = [[WBSSavedAccountSidecar alloc] initWithUser:v15 protectionSpace:v20 dictionaryRepresentation:v24];
  [(WBSSavedAccountSidecar *)v21 setLastUsedDate:v16 forSite:v14 inContext:v12];

  v22 = [MEMORY[0x1E695AC48] safari_credentialWithUser:v15 password:&stru_1F3064D08 persistence:3];

  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  [mEMORY[0x1E695AC50] safari_setSidecar:v21 credential:v22 htmlFormProtectionSpace:v20 forGroupID:v13 fromRecentlyDeleted:0];
}

- (id)_safari_dataFromGeneratedPasswordDictionary:()SafariCoreExtras domain:
{
  v5 = a4;
  v11 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(NSURLCredentialStorage(SafariCoreExtras) *)v5 _safari_dataFromGeneratedPasswordDictionary:v9 domain:v7];
    }
  }

  return v6;
}

- (id)_safari_accountStringForGeneratedPassword
{
  v0 = [MEMORY[0x1E695DF00] now];
  v1 = MEMORY[0x1E696AEC0];
  [v0 timeIntervalSinceReferenceDate];
  v3 = [v1 stringWithFormat:@"%f", v2];

  return v3;
}

- (WBSGeneratedPassword)safari_addGeneratedPassword:()SafariCoreExtras forProtectionSpace:wasGeneratedInPrivateBrowsingSession:
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    host = [v8 host];
    *buf = 138739971;
    *&buf[4] = host;
    _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "Adding generated password for %{sensitive}@", buf, 0xCu);
  }

  v13 = [WBSGeneratedPassword keychainDictionaryRepresentationWithPassword:v9];

  host2 = [v8 host];
  v15 = [self _safari_dataFromGeneratedPasswordDictionary:v13 domain:host2];

  if (v15)
  {
    [self _safari_accountStringForGeneratedPassword];
    v16 = v49 = a5;
    v50 = v15;
    v17 = v15;
    v52 = v8;
    v18 = v8;
    v19 = *MEMORY[0x1E697B018];
    v20 = *MEMORY[0x1E697AC50];
    result[0] = *MEMORY[0x1E697AFF8];
    result[1] = v20;
    v21 = *MEMORY[0x1E697AC60];
    *buf = v19;
    *&buf[8] = v21;
    result[2] = *MEMORY[0x1E697ADC8];
    v22 = MEMORY[0x1E696AEC0];
    v23 = _WBSLocalizedString(@"Generated Password for %@", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    host3 = [v18 host];
    v25 = [v22 localizedStringWithFormat:v23, host3];
    *&buf[16] = v25;
    result[3] = *MEMORY[0x1E697ACE0];
    v26 = _WBSLocalizedString(@"Generated Password", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    v63 = v26;
    v48 = *MEMORY[0x1E697ABD0];
    result[4] = *MEMORY[0x1E697ABD0];
    v27 = generatedPasswordsLogAccessGroup();
    v28 = *MEMORY[0x1E697AEB0];
    v29 = MEMORY[0x1E695E118];
    v64 = v27;
    v65 = MEMORY[0x1E695E118];
    v30 = *MEMORY[0x1E697AC30];
    result[5] = v28;
    result[6] = v30;
    result[7] = *MEMORY[0x1E697B3C0];
    v51 = v16;
    v66 = v16;
    v67 = v17;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:result count:8];
    v32 = [v31 mutableCopy];

    addPasswordsKeychainViewHintIfNeeded(v32);
    if (v49)
    {
      v55 = *MEMORY[0x1E697AE80];
      host4 = +[WBSGeneratedPassword privateBrowsingSentinel];
      v56 = *MEMORY[0x1E697ADF8];
      safari_protocolAsSecAttrProtocolValue = host4;
      v59 = &unk_1F308E2E8;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&safari_protocolAsSecAttrProtocolValue forKeys:&v55 count:2];
      [v32 addEntriesFromDictionary:v34];
    }

    else
    {
      v55 = *MEMORY[0x1E697AE00];
      safari_protocolAsSecAttrProtocolValue = [v18 safari_protocolAsSecAttrProtocolValue];
      v56 = *MEMORY[0x1E697AE80];
      host4 = [v18 host];
      v59 = host4;
      v57 = *MEMORY[0x1E697ADF8];
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "port")}];
      v60 = v34;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&safari_protocolAsSecAttrProtocolValue forKeys:&v55 count:3];
      [v32 addEntriesFromDictionary:v36];
    }

    v37 = *MEMORY[0x1E697B310];
    v53[0] = *MEMORY[0x1E697B320];
    v53[1] = v37;
    v54[0] = v29;
    v54[1] = v29;
    v38 = *MEMORY[0x1E697B390];
    v53[2] = *MEMORY[0x1E697B318];
    v53[3] = v38;
    v54[2] = v29;
    v54[3] = v29;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];
    [v32 addEntriesFromDictionary:v39];

    addPasswordsKeychainViewHintIfNeeded(v32);
    result[0] = 0;
    v40 = SecItemAdd(v32, result);
    v15 = v50;
    if (v40)
    {
      v41 = v40;
      v42 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v8 = v52;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v46 = v42;
        v47 = [v32 objectForKeyedSubscript:v48];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2048;
        *&buf[14] = v41;
        _os_log_error_impl(&dword_1B8447000, v46, OS_LOG_TYPE_ERROR, "SecItemAdd failed to add generated password item in access group %{public}@: status=%ld", buf, 0x16u);
      }

      v35 = 0;
    }

    else
    {
      v43 = result[0];
      v35 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:result[0]];

      v8 = v52;
    }
  }

  else
  {
    v35 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v35;
}

- (WBSGeneratedPassword)safari_updateGeneratedPassword:()SafariCoreExtras withPassword:
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    protectionSpace = [v6 protectionSpace];
    host = [protectionSpace host];
    *buf = 138739971;
    *&buf[4] = host;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Updating generated password for %{sensitive}@", buf, 0xCu);
  }

  keychainPersistentReference = [v6 keychainPersistentReference];
  if (keychainPersistentReference)
  {
    v13 = [v6 keychainDictionaryRepresentationWithPassword:v7];
    protectionSpace2 = [v6 protectionSpace];
    host2 = [protectionSpace2 host];
    v16 = [self _safari_dataFromGeneratedPasswordDictionary:v13 domain:host2];

    if (!v16)
    {
      v23 = 0;
LABEL_17:

      goto LABEL_18;
    }

    _safari_accountStringForGeneratedPassword = [self _safari_accountStringForGeneratedPassword];
    v18 = *MEMORY[0x1E697B3C8];
    v34 = *MEMORY[0x1E697B3C8];
    v35 = keychainPersistentReference;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v20 = *MEMORY[0x1E697B3C0];
    v32[0] = *MEMORY[0x1E697AC30];
    v32[1] = v20;
    v33[0] = _safari_accountStringForGeneratedPassword;
    v33[1] = v16;
    if (SecItemUpdate(v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2]))
    {
      v21 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_updateGeneratedPassword:withPassword:];
      }
    }

    else
    {
      *buf = 0;
      v24 = *MEMORY[0x1E697B310];
      v30[0] = v18;
      v30[1] = v24;
      v31[0] = keychainPersistentReference;
      v31[1] = MEMORY[0x1E695E118];
      v25 = *MEMORY[0x1E697B320];
      v30[2] = *MEMORY[0x1E697B318];
      v30[3] = v25;
      v31[2] = MEMORY[0x1E695E118];
      v31[3] = MEMORY[0x1E695E118];
      v30[4] = *MEMORY[0x1E697B260];
      v31[4] = *MEMORY[0x1E697B270];
      if (!SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:5], buf))
      {
        v29 = *buf;
        v23 = [[WBSGeneratedPassword alloc] initWithKeychainItemDictionary:*buf];

        goto LABEL_16;
      }

      v26 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_updateGeneratedPassword:withPassword:];
      }
    }

    v23 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [NSURLCredentialStorage(SafariCoreExtras) safari_updateGeneratedPassword:withPassword:];
  }

  v23 = 0;
LABEL_18:

  v27 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)safari_deleteGeneratedPassword:()SafariCoreExtras
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  protectionSpace = [v3 protectionSpace];
  generationDate = [v3 generationDate];
  v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    host = [protectionSpace host];
    *buf = 138739971;
    *&buf[4] = host;
    _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, "Removing generated password item for %{sensitive}@", buf, 0xCu);
  }

  v9 = MEMORY[0x1E696AEC0];
  [generationDate timeIntervalSinceReferenceDate];
  v11 = [v9 stringWithFormat:@"%f", v10];
  v12 = protectionSpace;
  v13 = *MEMORY[0x1E697B018];
  v14 = *MEMORY[0x1E697AC50];
  v54[0] = *MEMORY[0x1E697AFF8];
  v54[1] = v14;
  v15 = *MEMORY[0x1E697AC60];
  *buf = v13;
  *&buf[8] = v15;
  v16 = *MEMORY[0x1E697AC30];
  *&buf[16] = v11;
  v17 = *MEMORY[0x1E697ABD0];
  v54[2] = v16;
  v54[3] = v17;
  v18 = generatedPasswordsLogAccessGroup();
  v19 = *MEMORY[0x1E697AEB0];
  v20 = *MEMORY[0x1E697AEB8];
  v56 = v18;
  v57 = v20;
  v21 = *MEMORY[0x1E697B260];
  v54[4] = v19;
  v54[5] = v21;
  v22 = *MEMORY[0x1E697B310];
  v58 = *MEMORY[0x1E697B270];
  v59 = MEMORY[0x1E695E118];
  v23 = *MEMORY[0x1E697B318];
  v54[6] = v22;
  v54[7] = v23;
  v24 = *MEMORY[0x1E697B320];
  v60 = MEMORY[0x1E695E118];
  v61 = MEMORY[0x1E695E118];
  v25 = *MEMORY[0x1E697B390];
  v54[8] = v24;
  v54[9] = v25;
  v62 = MEMORY[0x1E695E118];
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v54 count:10];
  v27 = [v26 mutableCopy];

  if (v12)
  {
    v48 = *MEMORY[0x1E697AE00];
    safari_protocolAsSecAttrProtocolValue = [v12 safari_protocolAsSecAttrProtocolValue];
    v49 = *MEMORY[0x1E697AE80];
    host2 = [v12 host];
    v52 = host2;
    v50 = *MEMORY[0x1E697ADF8];
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "port")}];
    v53 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&safari_protocolAsSecAttrProtocolValue forKeys:&v48 count:3];
    [v27 addEntriesFromDictionary:v30];
  }

  else
  {
    v48 = *MEMORY[0x1E697AE80];
    host2 = +[WBSGeneratedPassword privateBrowsingSentinel];
    v49 = *MEMORY[0x1E697ADF8];
    safari_protocolAsSecAttrProtocolValue = host2;
    v52 = &unk_1F308E2E8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&safari_protocolAsSecAttrProtocolValue forKeys:&v48 count:2];
    [v27 addEntriesFromDictionary:v29];
  }

  keychainPersistentReference = [v3 keychainPersistentReference];
  if (keychainPersistentReference)
  {
    goto LABEL_7;
  }

  v38 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    host3 = [v12 host];
    *buf = 138739971;
    *&buf[4] = host3;
    _os_log_impl(&dword_1B8447000, v39, OS_LOG_TYPE_DEFAULT, "Removing generated password item for %{sensitive}@", buf, 0xCu);
  }

  *buf = 0;
  v41 = SecItemCopyMatching(v27, buf);
  if (!v41)
  {
    v43 = *buf;
    keychainPersistentReference = [*buf objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];

LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = *MEMORY[0x1E697B3C8];
      v47 = keychainPersistentReference;
      v32 = SecItemDelete([MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1]);
      if (v32)
      {
        v33 = v32;
        v34 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v34;
          host4 = [v12 host];
          *buf = 138412803;
          *&buf[4] = generationDate;
          *&buf[12] = 2117;
          *&buf[14] = host4;
          *&buf[22] = 2048;
          v56 = v33;
          _os_log_error_impl(&dword_1B8447000, v35, OS_LOG_TYPE_ERROR, "Failed to delete recently generated password item for date %@ and host %{sensitive}@: status=%ld", buf, 0x20u);
        }
      }
    }

    else
    {
      v37 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_deleteGeneratedPassword:];
      }
    }

    goto LABEL_23;
  }

  if (v41 == -25300)
  {
    v42 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(NSURLCredentialStorage(SafariCoreExtras) *)generationDate safari_deleteGeneratedPassword:v42, v12];
    }
  }

  else
  {
    v44 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [(NSURLCredentialStorage(SafariCoreExtras) *)generationDate safari_deleteGeneratedPassword:v44, v12];
    }
  }

  keychainPersistentReference = 0;
LABEL_23:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteAllGeneratedPasswords
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)safari_test_setUseTestingAccessGroups:()SafariCoreExtras
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  shouldUseTestingAccessGroups = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = passwordCredentialAccessGroup();
    v7 = passkeyCredentialAccessGroup();
    v8 = sidecarAccessGroup();
    v9 = personalSidecarAccessGroup();
    v10 = generatedPasswordsLogAccessGroup();
    os_unfair_recursive_lock_lock_with_options();
    v11 = shouldUseTestingAccessGroups;
    os_unfair_recursive_lock_unlock();
    v12 = @"com.apple.password-manager.website-metadata";
    if (v11)
    {
      v12 = @"com.apple.password-manager.website-metadata.testing";
    }

    v13 = v12;
    v22 = 138413570;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Password Manager Keychain Access Groups:\n\t         Passwords: %@\n\t          Passkeys: %@\n\t          Sidecars: %@\t Personal Sidecars: %@\n\tRecently Generated: %@\tWebsite Metadata: %@\n", &v22, 0x3Eu);
  }

  v14 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = recentlyDeletedPasswordCredentialAccessGroup();
    v17 = recentlyDeletedPasskeyCredentialAccessGroup();
    v18 = recentlyDeletedSidecarAccessGroup();
    v19 = recentlyDeletedPersonalSidecarAccessGroup();
    v22 = 138413058;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "Password Manager Recently Deleted Keychain Access Groups:\n\t        Passwords: %@\n\t         Passkeys: %@\n\t         Sidecars: %@\tPersonal Sidecars: %@\n", &v22, 0x2Au);
  }

  result = os_unfair_recursive_lock_unlock();
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)safari_deletePasskeyFromSavedAccount:()SafariCoreExtras groupID:
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = queryForPasskeyFromSavedAccount(v5);
  v8 = [v6 length];
  if (shouldUseTestingAccessGroups)
  {
    v9 = MEMORY[0x1E695E110];
  }

  else
  {
    v9 = MEMORY[0x1E695E118];
  }

  if (v8)
  {
    v10 = MEMORY[0x1E695E110];
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E697AEB0]];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697AE90]];
  v12 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
  v26 = 0;
  v13 = SecItemCopyMatching(v7, &v26);
  v14 = v13;
  if (v12 && v13 == -25300)
  {
    [v7 setObject:0 forKeyedSubscript:*MEMORY[0x1E697AC38]];
    v15 = credentialIDData(v5);
    [v7 setObject:v15 forKeyedSubscript:*MEMORY[0x1E697AC40]];

    v14 = SecItemCopyMatching(v7, &v26);
  }

  if (v14 != -25300)
  {
    if (v14)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasskeyFromSavedAccount:groupID:];
      }
    }

    else
    {
      v16 = v26;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = *MEMORY[0x1E697B3C8];
        v18 = [v16 objectForKeyedSubscript:*MEMORY[0x1E697B3C8]];
        v19 = v18;
        if (v18)
        {
          v27 = v17;
          v28[0] = v18;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
          v21 = [v20 mutableCopy];

          if (SecItemDelete(v21))
          {
            v22 = WBS_LOG_CHANNEL_PREFIXKeychain();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasskeyFromSavedAccount:groupID:];
            }
          }
        }

        else
        {
          v24 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [NSURLCredentialStorage(SafariCoreExtras) safari_deletePasskeyFromSavedAccount:groupID:];
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

+ (void)safari_test_purgeKeychainItemsFromTestingAccessGroups
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (id)safari_test_addTestingPasskeyItemWithCredentialID:()SafariCoreExtras groupID:toRecentlyDeleted:
{
  v36[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (shouldUseTestingAccessGroups == 1)
  {
    v9 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
    v10 = *MEMORY[0x1E697AFF8];
    v11 = *MEMORY[0x1E697B020];
    v36[0] = *MEMORY[0x1E697B020];
    v12 = *MEMORY[0x1E697ABD0];
    v35[0] = v10;
    v35[1] = v12;
    if (a5)
    {
      recentlyDeletedPasskeyCredentialAccessGroup();
    }

    else
    {
      passkeyCredentialAccessGroup();
    }
    v14 = ;
    v15 = *MEMORY[0x1E697B390];
    v16 = MEMORY[0x1E695E118];
    v36[1] = v14;
    v36[2] = MEMORY[0x1E695E118];
    v17 = *MEMORY[0x1E697B310];
    v35[2] = v15;
    v35[3] = v17;
    v35[4] = *MEMORY[0x1E697AEB0];
    v36[3] = MEMORY[0x1E695E118];
    v36[4] = MEMORY[0x1E695E118];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
    v19 = [v18 mutableCopy];

    v20 = [v7 dataUsingEncoding:4];
    v21 = MEMORY[0x1E697AC38];
    if (!v9)
    {
      v21 = MEMORY[0x1E697AC40];
    }

    [v19 setObject:v20 forKeyedSubscript:*v21];

    addPasswordsKeychainViewHintIfNeeded(v19);
    result = 0;
    v22 = SecItemAdd(v19, &result);
    v23 = result;
    if (v22)
    {
      v13 = 0;
      v24 = result;
    }

    else
    {
      if ([v8 length])
      {
        cf = 0;
        v33[0] = v10;
        v33[1] = v17;
        v34[0] = v11;
        v34[1] = v16;
        v33[2] = *MEMORY[0x1E697B260];
        v34[2] = *MEMORY[0x1E697B270];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
        v26 = [v23 safari_dictionaryByMergingWithDictionary:v25];

        v27 = SecItemShareWithGroup();
        if (SecItemDelete(v19))
        {
          v28 = WBS_LOG_CHANNEL_PREFIXKeychain();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            +[NSURLCredentialStorage(SafariCoreExtras) safari_test_addTestingPasskeyItemWithCredentialID:groupID:toRecentlyDeleted:];
          }
        }
      }

      else
      {
        v27 = v23;
      }

      v24 = v27;
      v13 = v24;
    }
  }

  else
  {
    v13 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)safari_mostRecentLastModifiedDateForCredentialsOnSavedAccount:()SafariCoreExtras
{
  v4 = a3;
  if ([v4 credentialTypes])
  {
    v5 = [self _safari_lastModifiedDateForPasswordCredentialsOnSavedAccount:v4];
  }

  else
  {
    v5 = 0;
  }

  if (([v4 credentialTypes] & 2) != 0)
  {
    v6 = [self _safari_lastModifiedDateForPasskeyCredentialOnSavedAccount:v4];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 laterDate:v6];

      v5 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  return v5;
}

- (id)_safari_lastModifiedDateForPasswordCredentialsOnSavedAccount:()SafariCoreExtras
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = [self _safari_getCredentialItemsFromKeychainForPasswordInSavedAccount:?];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v18;
    v6 = *MEMORY[0x1E697ADD0];
    v7 = *MEMORY[0x1E697ACD0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:v6];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v9 objectForKeyedSubscript:v7];
        }

        v13 = v12;

        if (v4)
        {
          v14 = [v4 laterDate:v13];

          v4 = v14;
        }

        else
        {
          v4 = v13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_safari_lastModifiedDateForPasskeyCredentialOnSavedAccount:()SafariCoreExtras
{
  v1 = [self _safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:?];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E697ADD0]];

  return v2;
}

+ (BOOL)safari_test_saveCredential:()SafariCoreExtras withArbitraryProtectionSpace:
{
  v26[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  user = [v6 user];
  v24 = queryForUserInProtectionSpace(user, v5, 0, &stru_1F3064D08, 0);

  v25[0] = *MEMORY[0x1E697AC50];
  authenticationMethod = [v5 authenticationMethod];
  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB50]])
  {
    v9 = MEMORY[0x1E697AC60];
LABEL_11:
    v10 = *v9;
    goto LABEL_12;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB48]])
  {
    v9 = MEMORY[0x1E697AC58];
    goto LABEL_11;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB58]])
  {
    v9 = MEMORY[0x1E697AC68];
    goto LABEL_11;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB60]])
  {
    v9 = MEMORY[0x1E697AC70];
    goto LABEL_11;
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E695AB68]])
  {
    v9 = MEMORY[0x1E697AC78];
    goto LABEL_11;
  }

  v22 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    +[NSURLCredentialStorage(SafariCoreExtras) safari_test_saveCredential:withArbitraryProtectionSpace:];
  }

  v10 = 0;
LABEL_12:

  v26[0] = v10;
  v25[1] = *MEMORY[0x1E697B3C0];
  password = [v6 password];
  v12 = [password dataUsingEncoding:4];
  v26[1] = v12;
  v25[2] = *MEMORY[0x1E697ADC8];
  v13 = MEMORY[0x1E696AEC0];
  host = [v5 host];
  user2 = [v6 user];

  v16 = [v13 stringWithFormat:@"%@ (%@)", host, user2];
  v26[2] = v16;
  v25[3] = *MEMORY[0x1E697ACE0];
  v17 = _WBSLocalizedString(@"Web form password", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v26[3] = v17;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v18 = v23 = v5;
  [v24 addEntriesFromDictionary:v18];

  addPasswordsKeychainViewHintIfNeeded(v24);
  v19 = SecItemAdd(v24, 0) == 0;

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)_safari_personalSidecarDictionaryForPasskeyWithUserHandle:()SafariCoreExtras relyingPartyID:groupID:
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695AC58];
  v9 = a5;
  v10 = a3;
  v11 = [v8 safari_passkeySidecarProtectionSpaceForRelyingPartyIdentifier:a4];
  v12 = queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(1835626085, v10, v11, v9, 0, 1);

  result = 0;
  v13 = SecItemCopyMatching(v12, &result);
  if (v13)
  {
    if (v13 == -25300)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *MEMORY[0x1E697ABD0];
        v16 = v14;
        v17 = [(__CFDictionary *)v12 objectForKeyedSubscript:v15];
        *buf = 138543362;
        v29 = v17;
        _os_log_impl(&dword_1B8447000, v16, OS_LOG_TYPE_DEFAULT, "Passkey sidecar fetching: no sidecar items found in access group %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXKeychain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [NSURLCredentialStorage(SafariCoreExtras) _safari_personalSidecarDictionaryForPasskeyWithUserHandle:v24 relyingPartyID:? groupID:?];
      }
    }

    v23 = 0;
  }

  else
  {
    v18 = result;
    sharedCredentialStorage = [self sharedCredentialStorage];
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    v21 = [v18 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v22 = [v18 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
    v23 = [sharedCredentialStorage _safari_sidecarDictionaryFromData:v20 user:v21 domain:v22];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)_safari_getCredentialItemFromKeychainForPasskeyInSavedAccount:()SafariCoreExtras .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = [OUTLINED_FUNCTION_3() passkeyCredentialID];
  v6 = [a2 passkeyRelyingPartyID];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)safari_setCredential:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 objectForKeyedSubscript:a3];
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v8 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  v9 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697AE90]];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v10, v11, OS_LOG_TYPE_DEBUG, v12, v13, 0x2Au);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)safari_setCredential:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deletePasswordCredentialForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "SecItemDelete failed while trying to delete password credential from group %{private}@: %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)safari_deletePasswordCredentialForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deletePasswordCredentialForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "SecItemCopyMatching failed while trying to delete password credential in group %{private}@: %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteCredentialWithEmptyServerHostForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteCredentialWithEmptyServerHostForUser:()SafariCoreExtras forHTMLFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.3(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(&dword_1B8447000, v2, OS_LOG_TYPE_DEBUG, "Making '%{private}@' credential default for protection space %{private}@.", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultCredential:()SafariCoreExtras forHTMLFormProtectionSpace:.cold.7(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1;
  [OUTLINED_FUNCTION_3() user];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() host];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19(&dword_1B8447000, v6, v7, "Attempting to set a credential for '%{private}@' with no password as default for %{private}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_safari_allCredentialItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697ABD0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_safari_removeDefaultCommentFromKeychainItemsMatchingQuery:()SafariCoreExtras .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_21(a1, a2);
  v4 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Unable to remove default comment from keychain item: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_safari_getKeychainItemForSidecar:()SafariCoreExtras ofType:groupID:fromRecentlyDeleted:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 user];
  v5 = [a2 protectionSpace];
  v6 = [v5 host];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_safari_allSidecarItemsOfType:()SafariCoreExtras groupID:fromRecentlyDeleted:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697ABD0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_safari_sidecarDictionaryFromData:()SafariCoreExtras user:domain:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v4 = 2113;
  v5 = v0;
  _os_log_fault_impl(&dword_1B8447000, v1, OS_LOG_TYPE_FAULT, "Extracted non-Dictionary sidecar from Keychain for %{private}@ (%{private}@)", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_safari_sidecarDictionaryFromData:()SafariCoreExtras user:domain:.cold.2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v4, v5, "Error deserializing sidecar data: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E697ABD0];
  v6 = a1;
  [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_3() objectForKeyedSubscript:a3];
  v9 = 138543619;
  v10 = v5;
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Attributes for sidecar SecItemAdd: { accessGroup: %{public}@, label: %{private}@ }", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:.cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697ABD0];
  v4 = a1;
  v5 = [a2 objectForKeyedSubscript:v3];
  v6 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v8, v9, OS_LOG_TYPE_DEBUG, v10, v11, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_setSidecarDictionary:()SafariCoreExtras type:credential:htmlFormProtectionSpace:groupID:fromRecentlyDeleted:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteSidecarOfType:()SafariCoreExtras forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteSidecarOfType:()SafariCoreExtras forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_deleteSidecarOfType:()SafariCoreExtras forUser:htmlFormProtectionSpace:forGroupID:fromRecentlyDeleted:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasswordToPersonalKeychain:()SafariCoreExtras withNewUsername:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasswordToPersonalKeychain:()SafariCoreExtras withNewUsername:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_20(&dword_1B8447000, v2, v3, "SecItemCopyMatching for password credential received unexpected class %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasswordToPersonalKeychain:()SafariCoreExtras withNewUsername:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPassword:()SafariCoreExtras toGroupWithID:.cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_21(a1, a2);
  v5 = [v2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v6, v7, "Failed to copy password item to group with error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPassword:()SafariCoreExtras toGroupWithID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_copySavedAccountWithPasskeyToPersonalKeychain:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasskeyToPersonalKeychain:()SafariCoreExtras .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_20(&dword_1B8447000, v2, v3, "SecItemCopyMatching for passkey credential received unexpected class %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasskey:()SafariCoreExtras toGroupWithID:.cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_21(a1, a2);
  v5 = [v2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v6, v7, "Failed to share password to group with error: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)safari_copySavedAccountWithPasskey:()SafariCoreExtras toGroupWithID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_safari_copyPersonalSidecarFromSharedPersonalAccessGroupToPersonalKeychain:()SafariCoreExtras withNewUsername:fromRecentlyDeleted:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_copyPersonalSidecarFromPersonalKeychainToSharedPersonalAccessGroup:()SafariCoreExtras forGroupWithID:fromRecentlyDeleted:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Failed to copy personal sidecar to personal sidecar access group for shared group %{private}@, error %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_safari_copyPersonalSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Error updating shared sidecar after sharing with group %@, error %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_safari_copySharedSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a3;
  v6 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_safari_copySharedSidecar:()SafariCoreExtras fromGroupWithID:toGroupWithID:fromRecentlyDeleted:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_1B8447000, v0, v1, "Error adding shared sidecar to group %{private}@, error %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteAllItemsForGroupID:()SafariCoreExtras .cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_safari_deleteAllPasswordCredentialsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllRecentlyDeletedPasswordCredentialsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllPasskeyCredentialsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllRecentlyDeletedPasskeyCredentialsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllSharedSidecarsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllRecentlyDeletedSharedSidecarsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllPersonalSidecarsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_deleteAllRecentlyDeletedPersonalSidecarsForGroupID:()SafariCoreExtras .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_safari_dataFromGeneratedPasswordDictionary:()SafariCoreExtras domain:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_19(&dword_1B8447000, v6, v7, "Unable to archive generated password for %{private}@: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)safari_updateGeneratedPassword:()SafariCoreExtras withPassword:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_updateGeneratedPassword:()SafariCoreExtras withPassword:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_updateGeneratedPassword:()SafariCoreExtras withPassword:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_deleteGeneratedPassword:()SafariCoreExtras .cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_deleteGeneratedPassword:()SafariCoreExtras .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 host];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)safari_deleteGeneratedPassword:()SafariCoreExtras .cold.3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 host];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)safari_deletePasskeyFromSavedAccount:()SafariCoreExtras groupID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)safari_deletePasskeyFromSavedAccount:()SafariCoreExtras groupID:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)safari_deletePasskeyFromSavedAccount:()SafariCoreExtras groupID:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)safari_test_addTestingPasskeyItemWithCredentialID:()SafariCoreExtras groupID:toRecentlyDeleted:.cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_21(a1, a2);
  v4 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Unable to create testing passkey item, error %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)safari_test_addTestingPasskeyItemWithCredentialID:()SafariCoreExtras groupID:toRecentlyDeleted:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)safari_test_saveCredential:()SafariCoreExtras withArbitraryProtectionSpace:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_safari_personalSidecarDictionaryForPasskeyWithUserHandle:()SafariCoreExtras relyingPartyID:groupID:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697ABD0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

@end