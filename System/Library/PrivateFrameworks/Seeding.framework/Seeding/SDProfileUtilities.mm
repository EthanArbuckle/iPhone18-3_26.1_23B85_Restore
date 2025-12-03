@interface SDProfileUtilities
+ (BOOL)isProfileInstallationAllowed;
+ (BOOL)removeSeedingProfile;
+ (id)getAssetAudienceIDForInstalledProfile:(id *)profile;
+ (id)getInstalledSeedProfile;
+ (void)forceRemoveSeedingProfile;
+ (void)installProfileWithData:(id)data error:(id *)error;
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
      [self removeSeedingProfile];
    }
  }
}

+ (void)installProfileWithData:(id)data error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = +[SDSeedingLogging profileHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [dataCopy length];
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Will install profile with data.length [%lu]", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D263E8];
  v24 = &unk_284250A68;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v22 = 0;
  v8 = [MEMORY[0x277D26290] profileWithData:dataCopy outError:&v22];
  v9 = v22;
  if (v9)
  {
    v10 = v9;
    if (error)
    {
      v11 = v9;
      *error = v10;
    }

    v12 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SDProfileUtilities installProfileWithData:v10 error:?];
    }

LABEL_8:

    goto LABEL_21;
  }

  identifier = [v8 identifier];
  v14 = SDIsSeedProfileIdentifier(identifier);

  if (v14)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v21 = 0;
    v16 = [mEMORY[0x277D262A0] installProfileData:dataCopy options:v7 outError:&v21];
    v10 = v21;

    if (v10)
    {
      if (error)
      {
        v17 = v10;
        *error = v10;
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

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.profile-utils" code:1 userInfo:0];
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
  getInstalledSeedProfile = [self getInstalledSeedProfile];
  if (getInstalledSeedProfile)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    identifier = [getInstalledSeedProfile identifier];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__SDProfileUtilities_removeSeedingProfile__block_invoke;
    v21[3] = &unk_2787CB838;
    v24 = buf;
    v8 = getInstalledSeedProfile;
    v22 = v8;
    v9 = v5;
    v23 = v9;
    [mEMORY[0x277D262A0] removeProfileAsyncWithIdentifier:identifier installationType:1 completion:v21];

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    getInstalledSeedProfile2 = [self getInstalledSeedProfile];

    if (getInstalledSeedProfile2)
    {
      v11 = +[SDSeedingLogging profileHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, "Deleted one profile, but detected another, deleting again.", v25, 2u);
      }

      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
      identifier2 = [getInstalledSeedProfile2 identifier];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__SDProfileUtilities_removeSeedingProfile__block_invoke_10;
      v17[3] = &unk_2787CB838;
      v20 = buf;
      v18 = getInstalledSeedProfile2;
      v9 = v12;
      v19 = v9;
      [mEMORY[0x277D262A0]2 removeProfileAsyncWithIdentifier:identifier2 installationType:1 completion:v17];

      dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    v15 = v27[24];
  }

  else
  {
    getInstalledSeedProfile2 = +[SDSeedingLogging profileHandle];
    if (os_log_type_enabled(getInstalledSeedProfile2, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_22E41E000, getInstalledSeedProfile2, OS_LOG_TYPE_DEFAULT, "No seed profile exists.", v25, 2u);
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
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isProfileUIInstallationAllowed = [mEMORY[0x277D262A0] isProfileUIInstallationAllowed];

  return isProfileUIInstallationAllowed;
}

+ (id)getAssetAudienceIDForInstalledProfile:(id *)profile
{
  v31 = *MEMORY[0x277D85DE8];
  getInstalledSeedProfile = [self getInstalledSeedProfile];
  v5 = getInstalledSeedProfile;
  if (!getInstalledSeedProfile)
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
  payloads = [getInstalledSeedProfile payloads];
  v7 = [payloads countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v7)
  {

    goto LABEL_21;
  }

  v8 = v7;
  profileCopy = profile;
  v23 = v5;
  v9 = 0;
  v10 = *v25;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(payloads);
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

    v8 = [payloads countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v8);

  profile = profileCopy;
  if (!v9)
  {
LABEL_21:
    v19 = [SDSeedingLogging profileHandle:profileCopy];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SDProfileUtilities getAssetAudienceIDForInstalledProfile:v19];
    }

    if (profile)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.profile-utils" code:0 userInfo:0];
      *profile = v9 = 0;
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

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] removeProfileWithIdentifier:@"com.apple.applebetasoftware"];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0]2 removeProfileWithIdentifier:@"com.apple.appleseedsoftware"];
}

+ (id)getInstalledSeedProfile
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:@"com.apple.appleseedsoftware"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:@"com.apple.applebetasoftware"];
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