@interface SDProfileUtilities
+ (BOOL)isProfileInstallationAllowed;
+ (BOOL)removeSeedingProfile;
+ (id)getAssetAudienceIDForInstalledProfile:(id *)a3;
+ (id)getInstalledSeedProfile;
+ (void)forceRemoveSeedingProfile;
+ (void)installProfileWithData:(id)a3 error:(id *)a4;
+ (void)removeSeedProfileIfRestricted;
@end

@implementation SDProfileUtilities

+ (void)removeSeedProfileIfRestricted
{
  if (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seeding"];
    if ([v3 BOOLForKey:@"EnableProfiles"])
    {
      v4 = +[SDSeedingLogging profileHandle];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Profiles are currently allowed, they will not be removed.", v5, 2u);
      }
    }

    else
    {
      [a1 removeSeedingProfile];
    }
  }
}

+ (void)installProfileWithData:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SDSeedingLogging profileHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [v5 length];
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Will install profile with data.length [%lu]", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D263E8];
  v24 = &unk_284250A68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v22 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:v5 outError:&v22];
  v9 = v22;
  if (v9)
  {
    v10 = v9;
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
    }

    v12 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SDProfileUtilities installProfileWithData:v10 error:?];
    }

LABEL_8:

    goto LABEL_21;
  }

  v13 = [v8 identifier];
  v14 = SDIsSeedProfileIdentifier(v13);

  if (v14)
  {
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    v21 = 0;
    v16 = [v15 installProfileData:v5 options:v7 outError:&v21];
    v10 = v21;

    if (v10)
    {
      if (a4)
      {
        v17 = v10;
        *a4 = v10;
      }

      v12 = +[SDSeedingLogging profileHandle];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SDProfileUtilities installProfileWithData:v10 error:?];
      }

      goto LABEL_8;
    }

    v19 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v19, OS_LOG_TYPE_DEFAULT, "Beta profile installation complete.", buf, 2u);
    }
  }

  else
  {
    v18 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SDProfileUtilities installProfileWithData:v18 error:?];
    }

    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.profile-utils" code:1 userInfo:0];
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

+ (BOOL)removeSeedingProfile
{
  v3 = +[SDSeedingLogging profileHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Removing seeding profile", buf, 2u);
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = [a1 getInstalledSeedProfile];
  if (v4)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v4 identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__SDProfileUtilities_removeSeedingProfile__block_invoke;
    v21[3] = &unk_2787CB838;
    v24 = buf;
    v8 = v4;
    v22 = v8;
    v9 = v5;
    v23 = v9;
    [v6 removeProfileAsyncWithIdentifier:v7 installationType:1 completion:v21];

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v10 = [a1 getInstalledSeedProfile];

    if (v10)
    {
      v11 = +[SDSeedingLogging profileHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "Deleted one profile, but detected another, deleting again.", v25, 2u);
      }

      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      v13 = [MEMORY[0x277D262A0] sharedConnection];
      v14 = [v10 identifier];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__SDProfileUtilities_removeSeedingProfile__block_invoke_10;
      v17[3] = &unk_2787CB838;
      v20 = buf;
      v18 = v10;
      v9 = v12;
      v19 = v9;
      [v13 removeProfileAsyncWithIdentifier:v14 installationType:1 completion:v17];

      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    v15 = v27[24];
  }

  else
  {
    v10 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "No seed profile exists.", v25, 2u);
    }

    v15 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v15 & 1;
}

void __42__SDProfileUtilities_removeSeedingProfile__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SDProfileUtilities_removeSeedingProfile__block_invoke_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Deleted profile %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SDProfileUtilities_removeSeedingProfile__block_invoke_10(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__SDProfileUtilities_removeSeedingProfile__block_invoke_10_cold_1(v3);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "Deleted second profile %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isProfileInstallationAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isProfileUIInstallationAllowed];

  return v3;
}

+ (id)getAssetAudienceIDForInstalledProfile:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a1 getInstalledSeedProfile];
  v5 = v4;
  if (!v4)
  {
    v18 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v18, OS_LOG_TYPE_INFO, "No beta profile found", buf, 2u);
    }

LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v4 payloads];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v7)
  {

    goto LABEL_21;
  }

  v8 = v7;
  v22 = a3;
  v23 = v5;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [v13 defaultsForDomain:@"com.apple.MobileAsset"];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 objectForKeyedSubscript:@"MobileAssetAssetAudience"];

          v9 = v16;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v8);

  a3 = v22;
  if (!v9)
  {
LABEL_21:
    v19 = [SDSeedingLogging profileHandle:v22];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SDProfileUtilities getAssetAudienceIDForInstalledProfile:v19];
    }

    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.profile-utils" code:0 userInfo:0];
      *a3 = v9 = 0;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v17 = +[SDSeedingLogging profileHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v29 = v9;
    _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_INFO, "Found beta profile with Asset Audience ID [%{public}@]", buf, 0xCu);
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)forceRemoveSeedingProfile
{
  v2 = +[SDSeedingLogging profileHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_INFO, "Removing seeding profile", v5, 2u);
  }

  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 removeProfileWithIdentifier:@"com.apple.applebetasoftware"];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 removeProfileWithIdentifier:@"com.apple.appleseedsoftware"];
}

+ (id)getInstalledSeedProfile
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedProfileWithIdentifier:@"com.apple.appleseedsoftware"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 installedProfileWithIdentifier:@"com.apple.applebetasoftware"];
  }

  v6 = v5;

  return v6;
}

+ (void)installProfileWithData:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 MCVerboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Can't parse profile. Error: [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)installProfileWithData:(void *)a1 error:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 MCVerboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Installation failed. Error: [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SDProfileUtilities_removeSeedingProfile__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 MCVerboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Removal of beta profile failed. Error: [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SDProfileUtilities_removeSeedingProfile__block_invoke_10_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 MCVerboseDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_22E41E000, v2, v3, "Removal of second beta profile failed. Error: [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end