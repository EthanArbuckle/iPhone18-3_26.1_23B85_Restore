@interface RMStoreProfilesAdapter
- (BOOL)_allowedPayloadType:(id)a3 store:(id)a4;
- (BOOL)_canAssumeOwnershipOfProfile:(id)a3 newProfile:(id)a4 newDeclarationKey:(id)a5 store:(id)a6;
- (BOOL)_canInstallProfile:(id)a3 store:(id)a4 declarationKey:(id)a5 outAssumeOwnership:(BOOL *)a6 error:(id *)a7;
- (BOOL)_canReplaceProfile:(id)a3 newProfile:(id)a4 newDeclarationKey:(id)a5 store:(id)a6 outAssumeOwnership:(BOOL *)a7 error:(id *)a8;
- (BOOL)_canUninstallProfileWithIdentifier:(id)a3 store:(id)a4 error:(id *)a5;
- (BOOL)_removeProfileWithIdentifier:(id)a3 error:(id *)a4;
- (RMStoreProfilesAdapter)initWithScope:(int64_t)a3;
- (id)_allowedErSSOPayloadTypes;
- (id)_declarationKeyForProfile:(id)a3;
- (id)_declarationKeyForUserInfo:(id)a3;
- (id)_disallowedPayloadTypes;
- (id)_installOptionsForStore:(id)a3 declarationKey:(id)a4 assumeOwnership:(BOOL)a5;
- (id)_installProfileData:(id)a3 options:(id)a4 error:(id *)a5;
- (id)_payloadStructure:(id)a3;
- (id)_personaIDForStore:(id)a3;
- (id)_profileForIdentifier:(id)a3 rmOnly:(BOOL)a4;
- (id)allProfileIdentifiers;
- (id)installedProfileIdentifierByDeclarationKey;
- (id)profileNameForIdentifier:(id)a3;
- (void)allProfileIdentifiers;
- (void)installProfileData:(id)a3 store:(id)a4 declarationKey:(id)a5 completionHandler:(id)a6;
- (void)installedProfileIdentifierByDeclarationKey;
- (void)uninstallProfileWithIdentifier:(id)a3 store:(id)a4 completionHandler:(id)a5;
@end

@implementation RMStoreProfilesAdapter

- (id)installedProfileIdentifierByDeclarationKey
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v4 = 19;
  }

  else
  {
    v4 = 9;
  }

  v5 = [v3 installedProfileIdentifiersWithFilterFlags:v4];

  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:v12 rmOnly:1, v19];
        v15 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v14];
        if (v15)
        {
          [v6 setObject:v12 forKeyedSubscript:v15];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter installedProfileIdentifierByDeclarationKey];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (RMStoreProfilesAdapter)initWithScope:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RMStoreProfilesAdapter;
  result = [(RMStoreProfilesAdapter *)&v5 init];
  if (result)
  {
    result->_isSystemScope = a3 == 1;
  }

  return result;
}

- (id)allProfileIdentifiers
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v4 = 19;
  }

  else
  {
    v4 = 9;
  }

  v5 = [v3 installedProfileIdentifiersWithFilterFlags:v4];

  v6 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter allProfileIdentifiers];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v7;
}

- (id)profileNameForIdentifier:(id)a3
{
  v3 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:a3 rmOnly:1];
  v4 = [v3 friendlyName];

  return v4;
}

- (void)installProfileData:(id)a3 store:(id)a4 declarationKey:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23 = 0;
  v22 = 0;
  v14 = [(RMStoreProfilesAdapter *)self _canInstallProfile:v10 store:v11 declarationKey:v12 outAssumeOwnership:&v23 error:&v22];
  v15 = v22;
  if (v14)
  {
    v16 = [(RMStoreProfilesAdapter *)self _installOptionsForStore:v11 declarationKey:v12 assumeOwnership:v23];
    v21 = v15;
    v17 = [(RMStoreProfilesAdapter *)self _installProfileData:v10 options:v16 error:&v21];
    v18 = v21;

    v19 = [MEMORY[0x277D45F58] profilesAdapter];
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter installProfileData:store:declarationKey:completionHandler:];
      }

      v13[2](v13, v17, 0);
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter installProfileData:store:declarationKey:completionHandler:];
      }

      (v13)[2](v13, 0, v18);
    }
  }

  else
  {
    (v13)[2](v13, 0, v15);
    v18 = v15;
  }
}

- (void)uninstallProfileWithIdentifier:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v10 = [(RMStoreProfilesAdapter *)self _canUninstallProfileWithIdentifier:v8 store:a4 error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    v17 = v11;
    v13 = [(RMStoreProfilesAdapter *)self _removeProfileWithIdentifier:v8 error:&v17];
    v14 = v17;

    v15 = [MEMORY[0x277D45F58] profilesAdapter];
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter uninstallProfileWithIdentifier:store:completionHandler:];
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter uninstallProfileWithIdentifier:store:completionHandler:];
    }
  }

  else
  {
    v14 = v11;
  }

  v9[2](v9, v14);
}

- (id)_installProfileData:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D262A0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedConnection];
  v11 = [v10 installProfileData:v9 options:v8 outError:a5];

  return v11;
}

- (BOOL)_removeProfileWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a3;
  v7 = [v5 sharedConnection];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v7 removeProfileWithIdentifier:v6 installationType:v8];

  return 1;
}

- (id)_installOptionsForStore:(id)a3 declarationKey:(id)a4 assumeOwnership:(BOOL)a5
{
  v5 = a5;
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v24 = @"DeclarationKey";
  v9 = [a4 key];
  v25[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  v11 = *MEMORY[0x277D263F0];
  v23[0] = @"com.apple.RemoteManagement.ProfilesController";
  v12 = *MEMORY[0x277D263E8];
  v22[0] = v11;
  v22[1] = v12;
  v13 = MEMORY[0x277CCABB0];
  if ([(RMStoreProfilesAdapter *)self isSystemScope])
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [v13 numberWithInteger:v14];
  v16 = *MEMORY[0x277D26430];
  v23[1] = v15;
  v23[2] = MEMORY[0x277CBEC38];
  v22[2] = v16;
  v22[3] = @"RemoteManagement.UserInfo";
  v23[3] = v10;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v18 = [v17 mutableCopy];

  if (![v8 type])
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26438]];
  }

  if ([v8 type] != 2)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D26410]];
  }

  if (v5)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D263D0]];
  }

  v19 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _installOptionsForStore:declarationKey:assumeOwnership:];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_personaIDForStore:(id)a3
{
  v3 = a3;
  if ([v3 dataSeparated])
  {
    v4 = [v3 personaIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_canInstallProfile:(id)a3 store:(id)a4 declarationKey:(id)a5 outAssumeOwnership:(BOOL *)a6 error:(id *)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v44 = 0;
  v14 = [MEMORY[0x277D26290] profileWithData:a3 outError:&v44];
  v15 = v44;
  v16 = v15;
  if (v14)
  {
    v36 = a6;
    v37 = a7;
    v38 = v15;
    v39 = v13;
    v17 = [v14 identifier];
    v18 = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
    }

    [v14 payloads];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = v43 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v40 + 1) + 8 * i) type];
          v25 = [v24 lowercaseString];

          if (![(RMStoreProfilesAdapter *)self _allowedPayloadType:v25 store:v12])
          {
            v28 = [MEMORY[0x277D45F58] profilesAdapter];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
            }

            v16 = v38;
            v13 = v39;
            if (v37)
            {
              v29 = [MEMORY[0x277D45F40] createProfilePayloadNotAllowedErrorWithPayloadType:v25];
              if (v29)
              {
                v29 = v29;
                *v37 = v29;
              }
            }

            v27 = 0;
            v26 = v19;
            goto LABEL_31;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v26 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:v17 rmOnly:0];
    if (v26)
    {
      v13 = v39;
      v27 = [(RMStoreProfilesAdapter *)self _canReplaceProfile:v26 newProfile:v14 newDeclarationKey:v39 store:v12 outAssumeOwnership:v36 error:v37];
    }

    else
    {
      v33 = [MEMORY[0x277D45F58] profilesAdapter];
      v13 = v39;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
      }

      v27 = 1;
    }

    v16 = v38;
LABEL_31:

    goto LABEL_32;
  }

  v30 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [RMStoreProfilesAdapter _canInstallProfile:store:declarationKey:outAssumeOwnership:error:];
  }

  if (a7)
  {
    v31 = [MEMORY[0x277D45F40] createProfileInvalidErrorWithUnderlyingError:v16];
    v17 = v31;
    if (v31)
    {
      v32 = v31;
      v27 = 0;
      *a7 = v17;
    }

    else
    {
      v27 = 0;
    }

LABEL_32:

    goto LABEL_33;
  }

  v27 = 0;
LABEL_33:

  v34 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_canReplaceProfile:(id)a3 newProfile:(id)a4 newDeclarationKey:(id)a5 store:(id)a6 outAssumeOwnership:(BOOL *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v13];
  v18 = [v13 identifier];
  v19 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
  }

  if (v17)
  {
    v20 = [v17 subscriberIdentifier];
    v21 = [v15 subscriberIdentifier];
    v22 = [v20 isEqualToString:v21];

    if (v22)
    {
      v23 = [v17 storeIdentifier];
      v24 = [v15 storeIdentifier];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
        v26 = [v17 declarationIdentifier];
        v27 = [v15 declarationIdentifier];
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          v29 = 1;
          goto LABEL_21;
        }

        v30 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
        }
      }

      else
      {
        v30 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
        }
      }
    }

    else
    {
      v30 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
      }
    }
  }

  else if ([(RMStoreProfilesAdapter *)self _canAssumeOwnershipOfProfile:v13 newProfile:v14 newDeclarationKey:v15 store:v16])
  {
    v29 = 1;
    *a7 = 1;
    goto LABEL_21;
  }

  v29 = a8;
  if (a8)
  {
    v31 = [MEMORY[0x277D45F40] createProfileCannotReplaceOtherProfile:v18];
    if (v31)
    {
      v31 = v31;
      *a8 = v31;
    }

    v29 = 0;
  }

LABEL_21:

  return v29;
}

- (BOOL)_canAssumeOwnershipOfProfile:(id)a3 newProfile:(id)a4 newDeclarationKey:(id)a5 store:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 identifier];
  v15 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
  }

  v16 = [v13 enrollmentURL];

  v17 = [v16 scheme];
  v18 = [v17 isEqualToString:@"mdm"];

  if ((v18 & 1) == 0)
  {
    v21 = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:v21 newProfile:? newDeclarationKey:? store:?];
    }

    goto LABEL_12;
  }

  if ([(RMStoreProfilesAdapter *)self _isManagedByMDM:v10])
  {
    v19 = [v12 subscriberIdentifier];
    v20 = [v19 isEqualToString:@"com.apple.RemoteManagement.InteractiveLegacyProfilesExtension"];

    if (v20)
    {
      v21 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v21 = [v11 UUID];
    v24 = [v10 UUID];
    if ([v21 isEqualToString:v24])
    {
      v25 = [(RMStoreProfilesAdapter *)self _payloadStructure:v11];
      v26 = [(RMStoreProfilesAdapter *)self _payloadStructure:v10];
      if ([v25 isEqualToSet:v26])
      {
        v27 = [MEMORY[0x277D45F58] profilesAdapter];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
        }

        v22 = 1;
LABEL_23:

        goto LABEL_13;
      }
    }

    v25 = [MEMORY[0x277D45F58] profilesAdapter];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
    }

    v22 = 0;
    goto LABEL_23;
  }

  v21 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    [RMStoreProfilesAdapter _canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:];
  }

LABEL_12:
  v22 = 0;
LABEL_13:

  return v22;
}

- (id)_payloadStructure:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a3 payloads];
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 identifier];
        v21[0] = v11;
        v12 = [v10 UUID];
        v21[1] = v12;
        v13 = [v10 type];
        v21[2] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_canUninstallProfileWithIdentifier:(id)a3 store:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
  }

  v11 = [(RMStoreProfilesAdapter *)self _profileForIdentifier:v8 rmOnly:1];
  if (v11)
  {
    v12 = [(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v11];
    if (v12 || ([v8 hasPrefix:@"com.apple.RemoteManagement.PasscodeSettingsExtension"] & 1) != 0)
    {
      if (!v9 || ([v12 storeIdentifier], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15 & 1) != 0))
      {
        v16 = 1;
LABEL_24:

        goto LABEL_25;
      }

      v20 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:];
      }
    }

    else
    {
      v20 = [MEMORY[0x277D45F58] profilesAdapter];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
      }
    }

    if (a5)
    {
      v21 = [MEMORY[0x277D45F40] createProfileCannotRemoveOtherProfile:v8];
      if (v21)
      {
        v21 = v21;
        *a5 = v21;
      }
    }

    goto LABEL_23;
  }

  v17 = [MEMORY[0x277D45F58] profilesAdapter];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [RMStoreProfilesAdapter _canUninstallProfileWithIdentifier:store:error:];
  }

  if (a5)
  {
    v18 = [MEMORY[0x277D45F40] createProfileCannotFindRemoveProfile:v8];
    v12 = v18;
    if (v18)
    {
      v19 = v18;
      v16 = 0;
      *a5 = v12;
      goto LABEL_24;
    }

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

- (id)_profileForIdentifier:(id)a3 rmOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(RMStoreProfilesAdapter *)self isSystemScope];
  v8 = [MEMORY[0x277D262A0] sharedConnection];
  v9 = v8;
  if (v7)
  {
    [v8 installedSystemProfileWithIdentifier:v6];
  }

  else
  {
    [v8 installedUserProfileWithIdentifier:v6];
  }
  v10 = ;

  if (!v4 || ([(RMStoreProfilesAdapter *)self _declarationKeyForProfile:v10], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v11 = v10;
  }

  return v11;
}

- (id)_declarationKeyForProfile:(id)a3
{
  v4 = [a3 installOptions];
  v5 = [(RMStoreProfilesAdapter *)self _declarationKeyForUserInfo:v4];

  return v5;
}

- (id)_declarationKeyForUserInfo:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RemoteManagement.UserInfo"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKeyedSubscript:@"DeclarationKey"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [RMStoreDeclarationKey newDeclarationKey:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_allowedPayloadType:(id)a3 store:(id)a4
{
  v6 = a3;
  if ([RMErSSOStore isPreEnrollmentErSSOStore:a4])
  {
    v7 = [(RMStoreProfilesAdapter *)self _allowedErSSOPayloadTypes];
    v8 = [v7 containsObject:v6];
  }

  else
  {
    v7 = [(RMStoreProfilesAdapter *)self _disallowedPayloadTypes];
    v9 = [v7 containsObject:v6];

    v8 = v9 ^ 1;
  }

  return v8;
}

- (id)_disallowedPayloadTypes
{
  if (_disallowedPayloadTypes_onceToken != -1)
  {
    [RMStoreProfilesAdapter _disallowedPayloadTypes];
  }

  v3 = _disallowedPayloadTypes_disallowedPayloadTypes;

  return v3;
}

uint64_t __49__RMStoreProfilesAdapter__disallowedPayloadTypes__block_invoke()
{
  _disallowedPayloadTypes_disallowedPayloadTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287474D68];

  return MEMORY[0x2821F96F8]();
}

- (id)_allowedErSSOPayloadTypes
{
  if (_allowedErSSOPayloadTypes_onceToken != -1)
  {
    [RMStoreProfilesAdapter _allowedErSSOPayloadTypes];
  }

  v3 = _allowedErSSOPayloadTypes_allowedErSSOPayloadTypes;

  return v3;
}

uint64_t __51__RMStoreProfilesAdapter__allowedErSSOPayloadTypes__block_invoke()
{
  _allowedErSSOPayloadTypes_allowedErSSOPayloadTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287474D80];

  return MEMORY[0x2821F96F8]();
}

- (void)allProfileIdentifiers
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Found all profiles: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)installedProfileIdentifierByDeclarationKey
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Found installed profiles: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)installProfileData:store:declarationKey:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Installed profile: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)installProfileData:store:declarationKey:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Error installing profile: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uninstallProfileWithIdentifier:store:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Error removing profile: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)uninstallProfileWithIdentifier:store:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Removed profile: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_installOptionsForStore:declarationKey:assumeOwnership:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Install options: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canInstallProfile:store:declarationKey:outAssumeOwnership:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Checking if profile can be installed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canInstallProfile:store:declarationKey:outAssumeOwnership:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Profile payload type disallowed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canInstallProfile:store:declarationKey:outAssumeOwnership:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "No existing profile when installing: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canInstallProfile:store:declarationKey:outAssumeOwnership:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Invalid profile data: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Checking if existing profile can be replaced: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Existing profile is not managed by the same subscriber: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Existing profile is not managed by the same store: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canReplaceProfile:newProfile:newDeclarationKey:store:outAssumeOwnership:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Existing profile is not managed by the same configuration: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Checking if existing profile can be taken over: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Cannot take control of a profile not managed by MDM: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Cannot take control of existing profile that does not match new profile: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canAssumeOwnershipOfProfile:newProfile:newDeclarationKey:store:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Existing profile can be taken over: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canUninstallProfileWithIdentifier:store:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2(&dword_261E36000, v0, v1, "Checking if profile can be removed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canUninstallProfileWithIdentifier:store:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Existing profile has no declaration key: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_canUninstallProfileWithIdentifier:store:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Existing profile cannot be found: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end