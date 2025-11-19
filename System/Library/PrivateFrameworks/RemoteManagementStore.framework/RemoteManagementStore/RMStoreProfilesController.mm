@interface RMStoreProfilesController
+ (id)newProfileControllerWithPrefix:(id)a3 scope:(int64_t)a4;
- (RMStoreProfilesController)initWithProfileIdentifierPrefix:(id)a3 scope:(int64_t)a4;
- (RMStoreProfilesController)initWithProfilesAdapter:(id)a3 profileIdentifierPrefix:(id)a4;
- (id)allPrefixedProfileIdentifiers;
- (id)configurationByDeclarationKeyForConfigurations:(id)a3;
- (id)declarationKeyForStore:(id)a3 declaration:(id)a4;
- (id)installedProfileIdentifierByDeclarationKey;
- (id)installedProfileIdentifiers;
- (id)profileIdentifierForConfiguration:(id)a3;
- (id)profileIdentifierForDeclaration:(id)a3 store:(id)a4;
- (id)profileNameForProfileIdentifier:(id)a3;
- (void)_installProfileAtPath:(id)a3 store:(id)a4 declaration:(id)a5 completionHandler:(id)a6;
- (void)_installProfileData:(id)a3 store:(id)a4 declarationKey:(id)a5 completionHandler:(id)a6;
- (void)downloadAndInstallProfileConfiguration:(id)a3 fromURL:(id)a4 completionHandler:(id)a5;
- (void)downloadAndInstallProfileDeclaration:(id)a3 store:(id)a4 fromURL:(id)a5 completionHandler:(id)a6;
- (void)installedProfileIdentifierByDeclarationKey;
- (void)uninstallProfileWithIdentifier:(id)a3 store:(id)a4 completionHandler:(id)a5;
@end

@implementation RMStoreProfilesController

+ (id)newProfileControllerWithPrefix:(id)a3 scope:(int64_t)a4
{
  v5 = a3;
  v6 = [[RMStoreProfilesController alloc] initWithProfileIdentifierPrefix:v5 scope:a4];

  return v6;
}

- (RMStoreProfilesController)initWithProfileIdentifierPrefix:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v7 = [[RMStoreProfilesAdapter alloc] initWithScope:a4];
  v8 = [(RMStoreProfilesController *)self initWithProfilesAdapter:v7 profileIdentifierPrefix:v6];

  return v8;
}

- (RMStoreProfilesController)initWithProfilesAdapter:(id)a3 profileIdentifierPrefix:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RMStoreProfilesController;
  v9 = [(RMStoreProfilesController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profilesAdapter, a3);
    objc_storeStrong(&v10->_profileIdentifierPrefix, a4);
  }

  return v10;
}

- (id)installedProfileIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)allPrefixedProfileIdentifiers
{
  v3 = [(RMStoreProfilesController *)self profilesAdapter];
  v4 = [v3 allProfileIdentifiers];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMStoreProfilesController_allPrefixedProfileIdentifiers__block_invoke;
  v8[3] = &unk_279B05ED8;
  v8[4] = self;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  v6 = [v4 filteredSetUsingPredicate:v5];

  return v6;
}

uint64_t __58__RMStoreProfilesController_allPrefixedProfileIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 profileIdentifierPrefix];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

- (id)profileIdentifierForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 declaration];
  v6 = [v4 store];

  v7 = [(RMStoreProfilesController *)self profileIdentifierForDeclaration:v5 store:v6];

  return v7;
}

- (id)profileIdentifierForDeclaration:(id)a3 store:(id)a4
{
  v5 = [(RMStoreProfilesController *)self declarationKeyForStore:a4 declaration:a3];
  v6 = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (id)profileNameForProfileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RMStoreProfilesController *)self profilesAdapter];
  v6 = [v5 profileNameForIdentifier:v4];

  return v6;
}

- (id)installedProfileIdentifierByDeclarationKey
{
  v3 = [(RMStoreProfilesController *)self profilesAdapter];
  v4 = [v3 installedProfileIdentifierByDeclarationKey];

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__RMStoreProfilesController_installedProfileIdentifierByDeclarationKey__block_invoke;
  v19 = &unk_279B05F00;
  v20 = self;
  v6 = v5;
  v21 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:&v16];
  v7 = [MEMORY[0x277D45F58] profilesController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(RMStoreProfilesController *)v6 installedProfileIdentifierByDeclarationKey:v7];
  }

  v14 = [v6 copy];

  return v14;
}

void __71__RMStoreProfilesController_installedProfileIdentifierByDeclarationKey__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 subscriberIdentifier];
  v7 = [*(a1 + 32) profileIdentifierPrefix];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
  }
}

- (id)configurationByDeclarationKeyForConfigurations:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 store];
        v13 = [v11 declaration];
        v14 = [(RMStoreProfilesController *)self declarationKeyForStore:v12 declaration:v13];

        [v5 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)declarationKeyForStore:(id)a3 declaration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMStoreProfilesController *)self profileIdentifierPrefix];
  v9 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:v8 store:v7 declaration:v6];

  return v9;
}

- (void)downloadAndInstallProfileConfiguration:(id)a3 fromURL:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v10 declaration];
  v11 = [v10 store];

  [(RMStoreProfilesController *)self downloadAndInstallProfileDeclaration:v12 store:v11 fromURL:v9 completionHandler:v8];
}

- (void)downloadAndInstallProfileDeclaration:(id)a3 store:(id)a4 fromURL:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__RMStoreProfilesController_downloadAndInstallProfileDeclaration_store_fromURL_completionHandler___block_invoke;
  v16[3] = &unk_279B05F28;
  v17 = v10;
  v18 = self;
  v19 = v11;
  v20 = v12;
  v13 = v11;
  v14 = v12;
  v15 = v10;
  [v13 fetchDataAtURL:a5 completionHandler:v16];
}

void __98__RMStoreProfilesController_downloadAndInstallProfileDeclaration_store_fromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D45F58] profilesController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__RMStoreProfilesController_downloadAndInstallProfileDeclaration_store_fromURL_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [*(a1 + 40) declarationKeyForStore:*(a1 + 48) declaration:*(a1 + 32)];
    [*(a1 + 40) _installProfileData:v5 store:*(a1 + 48) declarationKey:v8 completionHandler:*(a1 + 56)];
  }
}

- (void)_installProfileAtPath:(id)a3 store:(id)a4 declaration:(id)a5 completionHandler:(id)a6
{
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0;
  v15 = [v14 attributesOfItemAtPath:v10 error:&v34];
  v16 = v34;
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];

  v18 = [v12 declarationIdentifier];
  if (v17)
  {
    if ([v17 longLongValue] >= 1 && objc_msgSend(v17, "longLongValue") < 30721)
    {
      v33 = 0;
      v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10 options:0 error:&v33];
      v25 = v33;
      if (v24)
      {
        [(RMStoreProfilesController *)self declarationKeyForStore:v11 declaration:v12];
        v26 = v29 = v25;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke;
        v30[3] = &unk_279B05F50;
        v31 = v18;
        v32 = v13;
        [(RMStoreProfilesController *)self _installProfileData:v24 store:v11 declarationKey:v26 completionHandler:v30];

        v25 = v29;
      }

      else
      {
        v27 = [MEMORY[0x277D45F58] profilesController];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesController _installProfileAtPath:store:declaration:completionHandler:];
        }

        (*(v13 + 2))(v13, 0, v25);
      }
    }

    else
    {
      v19 = [MEMORY[0x277D45F58] profilesController];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesController _installProfileAtPath:v18 store:v17 declaration:? completionHandler:?];
      }

      v20 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36[0] = @"Invalid profile size";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v22 = [v20 errorWithDomain:@"ProfilesErrorDomain" code:0 userInfo:v21];

      (*(v13 + 2))(v13, 0, v22);
      v16 = v22;
    }
  }

  else
  {
    v23 = [MEMORY[0x277D45F58] profilesController];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesController _installProfileAtPath:store:declaration:completionHandler:];
    }

    (*(v13 + 2))(v13, 0, v16);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277D45F58];
  v7 = a2;
  v8 = [v6 profilesController];
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_installProfileData:(id)a3 store:(id)a4 declarationKey:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__4;
  v26[4] = __Block_byref_object_dispose__4;
  v27 = 0;
  v14 = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke;
  v23[3] = &unk_279B05F78;
  v15 = v12;
  v24 = v15;
  v25 = v26;
  [v14 enumerateKeysAndObjectsUsingBlock:v23];
  v16 = [(RMStoreProfilesController *)self profilesAdapter];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2;
  v19[3] = &unk_279B05FC8;
  v22 = v26;
  v19[4] = self;
  v17 = v11;
  v20 = v17;
  v18 = v13;
  v21 = v18;
  [v16 installProfileData:v10 store:v17 declarationKey:v15 completionHandler:v19];

  _Block_object_dispose(v26, 8);
}

void __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v8 = [a2 keyWithoutServerToken];
  v9 = [*(a1 + 32) keyWithoutServerToken];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_2;
  }

  v7 = [MEMORY[0x277D45F58] profilesController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = *(*(a1[7] + 8) + 40);
  if (!v14 || ([v14 isEqualToString:v5] & 1) != 0)
  {
LABEL_2:
    (*(a1[6] + 16))();
  }

  else
  {
    v15 = [MEMORY[0x277D45F58] profilesController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2_cold_2((a1 + 7));
    }

    v16 = a1[6];
    v17 = a1[7];
    v18 = *(*(v17 + 8) + 40);
    v19 = a1[4];
    v20 = a1[5];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_32;
    v21[3] = &unk_279B05FA0;
    v25 = v17;
    v24 = v16;
    v22 = v5;
    v23 = 0;
    [v19 uninstallProfileWithIdentifier:v18 store:v20 completionHandler:v21];
  }
}

uint64_t __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_32(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D45F58] profilesController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_32_cold_1(a1);
    }
  }

  v4 = a1[5];
  v5 = a1[4];
  return (*(a1[6] + 16))();
}

- (void)uninstallProfileWithIdentifier:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277D45F58];
  v10 = a5;
  v11 = a4;
  v12 = [v9 profilesController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(RMStoreProfilesController *)v8 uninstallProfileWithIdentifier:v12 store:v13 completionHandler:v14, v15, v16, v17, v18];
  }

  v19 = [(RMStoreProfilesController *)self profilesAdapter];
  [v19 uninstallProfileWithIdentifier:v8 store:v11 completionHandler:v10];
}

- (void)installedProfileIdentifierByDeclarationKey
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_261E36000, a2, a3, "Profile identifiers by declaration key: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __98__RMStoreProfilesController_downloadAndInstallProfileDeclaration_store_fromURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) declarationIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1(&dword_261E36000, v2, v3, "Unable to download profile or declaration identifier %{public}@: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_installProfileAtPath:store:declaration:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_261E36000, v0, v1, "Unable to read profile for declaration identifier %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_installProfileAtPath:(uint64_t)a1 store:(void *)a2 declaration:completionHandler:.cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a2 longLongValue];
  OUTLINED_FUNCTION_3_1(&dword_261E36000, v2, v3, "Profile for declaration identifier %{public}@ has invalid size %lld", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_installProfileAtPath:store:declaration:completionHandler:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_261E36000, v0, v1, "Unable to check size of profile for declaration identifier %{public}@: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4(&dword_261E36000, v2, v3, "Error installing profile for declaration identifier %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v2, v3, "Installed profile for declaration identifier %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_261E36000, a2, a3, "Installed profile with identifier %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v2, v3, "Uninstall old profile during replacement with identifier %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_32_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 56) + 8) + 40);
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(&dword_261E36000, v2, OS_LOG_TYPE_ERROR, "Unable to uninstall old profile during replacement with identifier %{public}@", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)uninstallProfileWithIdentifier:(uint64_t)a3 store:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_261E36000, a2, a3, "Uninstalling profile with identifier %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end