@interface RMStoreProfilesController
+ (id)newProfileControllerWithPrefix:(id)prefix scope:(int64_t)scope;
- (RMStoreProfilesController)initWithProfileIdentifierPrefix:(id)prefix scope:(int64_t)scope;
- (RMStoreProfilesController)initWithProfilesAdapter:(id)adapter profileIdentifierPrefix:(id)prefix;
- (id)allPrefixedProfileIdentifiers;
- (id)configurationByDeclarationKeyForConfigurations:(id)configurations;
- (id)declarationKeyForStore:(id)store declaration:(id)declaration;
- (id)installedProfileIdentifierByDeclarationKey;
- (id)installedProfileIdentifiers;
- (id)profileIdentifierForConfiguration:(id)configuration;
- (id)profileIdentifierForDeclaration:(id)declaration store:(id)store;
- (id)profileNameForProfileIdentifier:(id)identifier;
- (void)_installProfileAtPath:(id)path store:(id)store declaration:(id)declaration completionHandler:(id)handler;
- (void)_installProfileData:(id)data store:(id)store declarationKey:(id)key completionHandler:(id)handler;
- (void)downloadAndInstallProfileConfiguration:(id)configuration fromURL:(id)l completionHandler:(id)handler;
- (void)downloadAndInstallProfileDeclaration:(id)declaration store:(id)store fromURL:(id)l completionHandler:(id)handler;
- (void)installedProfileIdentifierByDeclarationKey;
- (void)uninstallProfileWithIdentifier:(id)identifier store:(id)store completionHandler:(id)handler;
@end

@implementation RMStoreProfilesController

+ (id)newProfileControllerWithPrefix:(id)prefix scope:(int64_t)scope
{
  prefixCopy = prefix;
  v6 = [[RMStoreProfilesController alloc] initWithProfileIdentifierPrefix:prefixCopy scope:scope];

  return v6;
}

- (RMStoreProfilesController)initWithProfileIdentifierPrefix:(id)prefix scope:(int64_t)scope
{
  prefixCopy = prefix;
  v7 = [[RMStoreProfilesAdapter alloc] initWithScope:scope];
  v8 = [(RMStoreProfilesController *)self initWithProfilesAdapter:v7 profileIdentifierPrefix:prefixCopy];

  return v8;
}

- (RMStoreProfilesController)initWithProfilesAdapter:(id)adapter profileIdentifierPrefix:(id)prefix
{
  adapterCopy = adapter;
  prefixCopy = prefix;
  v12.receiver = self;
  v12.super_class = RMStoreProfilesController;
  v9 = [(RMStoreProfilesController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profilesAdapter, adapter);
    objc_storeStrong(&v10->_profileIdentifierPrefix, prefix);
  }

  return v10;
}

- (id)installedProfileIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  installedProfileIdentifierByDeclarationKey = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  allValues = [installedProfileIdentifierByDeclarationKey allValues];
  v5 = [v2 setWithArray:allValues];

  return v5;
}

- (id)allPrefixedProfileIdentifiers
{
  profilesAdapter = [(RMStoreProfilesController *)self profilesAdapter];
  allProfileIdentifiers = [profilesAdapter allProfileIdentifiers];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RMStoreProfilesController_allPrefixedProfileIdentifiers__block_invoke;
  v8[3] = &unk_279B05ED8;
  v8[4] = self;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  v6 = [allProfileIdentifiers filteredSetUsingPredicate:v5];

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

- (id)profileIdentifierForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  declaration = [configurationCopy declaration];
  store = [configurationCopy store];

  v7 = [(RMStoreProfilesController *)self profileIdentifierForDeclaration:declaration store:store];

  return v7;
}

- (id)profileIdentifierForDeclaration:(id)declaration store:(id)store
{
  v5 = [(RMStoreProfilesController *)self declarationKeyForStore:store declaration:declaration];
  installedProfileIdentifierByDeclarationKey = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  v7 = [installedProfileIdentifierByDeclarationKey objectForKeyedSubscript:v5];

  return v7;
}

- (id)profileNameForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  profilesAdapter = [(RMStoreProfilesController *)self profilesAdapter];
  v6 = [profilesAdapter profileNameForIdentifier:identifierCopy];

  return v6;
}

- (id)installedProfileIdentifierByDeclarationKey
{
  profilesAdapter = [(RMStoreProfilesController *)self profilesAdapter];
  installedProfileIdentifierByDeclarationKey = [profilesAdapter installedProfileIdentifierByDeclarationKey];

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(installedProfileIdentifierByDeclarationKey, "count")}];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__RMStoreProfilesController_installedProfileIdentifierByDeclarationKey__block_invoke;
  v19 = &unk_279B05F00;
  selfCopy = self;
  v6 = v5;
  v21 = v6;
  [installedProfileIdentifierByDeclarationKey enumerateKeysAndObjectsUsingBlock:&v16];
  profilesController = [MEMORY[0x277D45F58] profilesController];
  if (os_log_type_enabled(profilesController, OS_LOG_TYPE_DEBUG))
  {
    [(RMStoreProfilesController *)v6 installedProfileIdentifierByDeclarationKey:profilesController];
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

- (id)configurationByDeclarationKeyForConfigurations:(id)configurations
{
  v22 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = configurationsCopy;
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
        store = [v11 store];
        declaration = [v11 declaration];
        v14 = [(RMStoreProfilesController *)self declarationKeyForStore:store declaration:declaration];

        [v5 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)declarationKeyForStore:(id)store declaration:(id)declaration
{
  declarationCopy = declaration;
  storeCopy = store;
  profileIdentifierPrefix = [(RMStoreProfilesController *)self profileIdentifierPrefix];
  v9 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:profileIdentifierPrefix store:storeCopy declaration:declarationCopy];

  return v9;
}

- (void)downloadAndInstallProfileConfiguration:(id)configuration fromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  configurationCopy = configuration;
  declaration = [configurationCopy declaration];
  store = [configurationCopy store];

  [(RMStoreProfilesController *)self downloadAndInstallProfileDeclaration:declaration store:store fromURL:lCopy completionHandler:handlerCopy];
}

- (void)downloadAndInstallProfileDeclaration:(id)declaration store:(id)store fromURL:(id)l completionHandler:(id)handler
{
  declarationCopy = declaration;
  storeCopy = store;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__RMStoreProfilesController_downloadAndInstallProfileDeclaration_store_fromURL_completionHandler___block_invoke;
  v16[3] = &unk_279B05F28;
  v17 = declarationCopy;
  selfCopy = self;
  v19 = storeCopy;
  v20 = handlerCopy;
  v13 = storeCopy;
  v14 = handlerCopy;
  v15 = declarationCopy;
  [v13 fetchDataAtURL:l completionHandler:v16];
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

- (void)_installProfileAtPath:(id)path store:(id)store declaration:(id)declaration completionHandler:(id)handler
{
  v36[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  storeCopy = store;
  declarationCopy = declaration;
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0;
  v15 = [defaultManager attributesOfItemAtPath:pathCopy error:&v34];
  v16 = v34;
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];

  declarationIdentifier = [declarationCopy declarationIdentifier];
  if (v17)
  {
    if ([v17 longLongValue] >= 1 && objc_msgSend(v17, "longLongValue") < 30721)
    {
      v33 = 0;
      v24 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v33];
      v25 = v33;
      if (v24)
      {
        [(RMStoreProfilesController *)self declarationKeyForStore:storeCopy declaration:declarationCopy];
        v26 = v29 = v25;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __87__RMStoreProfilesController__installProfileAtPath_store_declaration_completionHandler___block_invoke;
        v30[3] = &unk_279B05F50;
        v31 = declarationIdentifier;
        v32 = handlerCopy;
        [(RMStoreProfilesController *)self _installProfileData:v24 store:storeCopy declarationKey:v26 completionHandler:v30];

        v25 = v29;
      }

      else
      {
        profilesController = [MEMORY[0x277D45F58] profilesController];
        if (os_log_type_enabled(profilesController, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesController _installProfileAtPath:store:declaration:completionHandler:];
        }

        (*(handlerCopy + 2))(handlerCopy, 0, v25);
      }
    }

    else
    {
      profilesController2 = [MEMORY[0x277D45F58] profilesController];
      if (os_log_type_enabled(profilesController2, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesController _installProfileAtPath:declarationIdentifier store:v17 declaration:? completionHandler:?];
      }

      v20 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA068];
      v36[0] = @"Invalid profile size";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v22 = [v20 errorWithDomain:@"ProfilesErrorDomain" code:0 userInfo:v21];

      (*(handlerCopy + 2))(handlerCopy, 0, v22);
      v16 = v22;
    }
  }

  else
  {
    profilesController3 = [MEMORY[0x277D45F58] profilesController];
    if (os_log_type_enabled(profilesController3, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesController _installProfileAtPath:store:declaration:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v16);
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

- (void)_installProfileData:(id)data store:(id)store declarationKey:(id)key completionHandler:(id)handler
{
  dataCopy = data;
  storeCopy = store;
  keyCopy = key;
  handlerCopy = handler;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__4;
  v26[4] = __Block_byref_object_dispose__4;
  v27 = 0;
  installedProfileIdentifierByDeclarationKey = [(RMStoreProfilesController *)self installedProfileIdentifierByDeclarationKey];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke;
  v23[3] = &unk_279B05F78;
  v15 = keyCopy;
  v24 = v15;
  v25 = v26;
  [installedProfileIdentifierByDeclarationKey enumerateKeysAndObjectsUsingBlock:v23];
  profilesAdapter = [(RMStoreProfilesController *)self profilesAdapter];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__RMStoreProfilesController__installProfileData_store_declarationKey_completionHandler___block_invoke_2;
  v19[3] = &unk_279B05FC8;
  v22 = v26;
  v19[4] = self;
  v17 = storeCopy;
  v20 = v17;
  v18 = handlerCopy;
  v21 = v18;
  [profilesAdapter installProfileData:dataCopy store:v17 declarationKey:v15 completionHandler:v19];

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

- (void)uninstallProfileWithIdentifier:(id)identifier store:(id)store completionHandler:(id)handler
{
  identifierCopy = identifier;
  v9 = MEMORY[0x277D45F58];
  handlerCopy = handler;
  storeCopy = store;
  profilesController = [v9 profilesController];
  if (os_log_type_enabled(profilesController, OS_LOG_TYPE_DEBUG))
  {
    [(RMStoreProfilesController *)identifierCopy uninstallProfileWithIdentifier:profilesController store:v13 completionHandler:v14, v15, v16, v17, v18];
  }

  profilesAdapter = [(RMStoreProfilesController *)self profilesAdapter];
  [profilesAdapter uninstallProfileWithIdentifier:identifierCopy store:storeCopy completionHandler:handlerCopy];
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