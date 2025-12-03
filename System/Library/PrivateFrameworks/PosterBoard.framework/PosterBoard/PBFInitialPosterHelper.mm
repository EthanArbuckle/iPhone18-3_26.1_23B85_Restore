@interface PBFInitialPosterHelper
+ (id)hostConfigurationForRole:(id)role;
+ (id)incomingPosterConfigurationForRole:(id)role templatePath:(id)path userInfo:(id)info;
+ (id)initialPosterConfigurationsWithModelCoordinatorProvider:(id)provider role:(id)role;
@end

@implementation PBFInitialPosterHelper

+ (id)initialPosterConfigurationsWithModelCoordinatorProvider:(id)provider role:(id)role
{
  v78[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  roleCopy = role;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PBFInitialPosterHelper_initialPosterConfigurationsWithModelCoordinatorProvider_role___block_invoke;
  aBlock[3] = &unk_2782C9468;
  v7 = providerCopy;
  v65 = v7;
  v8 = roleCopy;
  v66 = v8;
  v55 = _Block_copy(aBlock);
  v9 = PBFLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) Setting up default wallpaper(s)", buf, 2u);
  }

  if (![v8 isEqual:*MEMORY[0x277D3EEF0]])
  {
    v21 = *MEMORY[0x277D3EE98];
    if (![v8 isEqual:*MEMORY[0x277D3EE98]])
    {
      v15 = 0;
      v19 = 0;
      v20 = MEMORY[0x277CBEC10];
      goto LABEL_53;
    }

    v22 = PBFLogPosterContents();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) No configuration path yet... let's see what our defaults are.", buf, 2u);
    }

    mEMORY[0x277D3EF28] = [MEMORY[0x277D3EF28] sharedHostConfigurationManager];
    v24 = [mEMORY[0x277D3EF28] hostConfigurationForRole:v21];

    if (v24)
    {
      entries = [v24 entries];
    }

    else
    {
      v31 = PBFLogPosterContents();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) No host-provided default posters for ambient role. Using hardwired defaults.", buf, 2u);
      }

      v32 = [objc_alloc(MEMORY[0x277D3E958]) initWithExtensionID:@"com.apple.ambient.AmbientUI.InfographPoster" descriptorID:@"InfographPoster"];
      v74 = v32;
      entries = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
    }

    v49 = v24;
    v50 = v7;
    v52 = v8;
    v51 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v29 = entries;
    v33 = [v29 countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (v33)
    {
      v34 = v33;
      v15 = 0;
      v35 = *v58;
      obj = v29;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          v37 = v15;
          if (*v58 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v57 + 1) + 8 * i);
          extensionID = [v38 extensionID];
          descriptorID = [v38 descriptorID];
          v56 = 0;
          v15 = v55[2](v55, extensionID, descriptorID, &v56);
          v41 = v56;

          v42 = PBFLogPosterContents();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
          if (v41)
          {
            if (v43)
            {
              extensionID2 = [v38 extensionID];
              descriptorID2 = [v38 descriptorID];
              *buf = 138412802;
              v68 = extensionID2;
              v69 = 2112;
              v70 = descriptorID2;
              v71 = 2112;
              v72 = v41;
              _os_log_impl(&dword_21B526000, v42, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) Failed setting up extension %@, descriptor: %@, error: %@", buf, 0x20u);
            }
          }

          else
          {
            if (v43)
            {
              extensionID3 = [v38 extensionID];
              descriptorID3 = [v38 descriptorID];
              *buf = 138412546;
              v68 = extensionID3;
              v69 = 2112;
              v70 = descriptorID3;
              _os_log_impl(&dword_21B526000, v42, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) Generated poster for extension %@, descriptor: %@", buf, 0x16u);
            }

            v42 = [self incomingPosterConfigurationForRole:v52 templatePath:v15 userInfo:0];
            [v51 addObject:v42];
          }
        }

        v29 = obj;
        v34 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
      }

      while (v34);
    }

    else
    {
      v15 = 0;
    }

    if ([v51 count])
    {
      v19 = v51;
    }

    else
    {
      v19 = 0;
    }

    v27 = v49;
    v7 = v50;
    v8 = v52;

    v20 = MEMORY[0x277CBEC10];
    goto LABEL_52;
  }

  v10 = +[PBFWallpaperKitBridge defaultBridge];
  shouldInstallHeroPosterAsDefaultLockScreenWallpaper = [v10 shouldInstallHeroPosterAsDefaultLockScreenWallpaper];

  if (!shouldInstallHeroPosterAsDefaultLockScreenWallpaper)
  {
    v19 = 0;
    v20 = MEMORY[0x277CBEC10];
LABEL_22:
    v26 = PBFLogPosterContents();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) No configuration path yet... let's setup a legacy poster.", buf, 2u);
    }

    v61 = 0;
    v15 = v55[2](v55, @"com.apple.PaperBoard.LegacyPoster", @"LegacyPoster", &v61);
    v27 = v61;
    v28 = PBFLogPosterContents();
    v29 = v28;
    if (v27)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [PBFInitialPosterHelper initialPosterConfigurationsWithModelCoordinatorProvider:v27 role:v29];
      }
    }

    else
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) Generated legacy poster successfully.", buf, 2u);
      }

      v29 = [self incomingPosterConfigurationForRole:v8 templatePath:v15 userInfo:v20];
      v75 = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];

      v19 = v30;
    }

LABEL_52:

    goto LABEL_53;
  }

  v63 = 0;
  v12 = defaultLockScreenWallpaperExtensionIdentifier(&v63);
  v13 = v63;
  v14 = PBFLogPosterContents();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v68 = v12;
    _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) No wallpaper set before, and a valid wallpaper identifier is set: %{public}@", buf, 0xCu);
  }

  v62 = 0;
  v15 = v55[2](v55, v12, v13, &v62);
  v16 = v62;
  v17 = PBFLogPosterContents();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PBFInitialPosterHelper initialPosterConfigurationsWithModelCoordinatorProvider:v16 role:v18];
    }

    v19 = 0;
    v20 = MEMORY[0x277CBEC10];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v68 = v13;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(PBFInitialPosterHelper) Hero Poster default wallpaper was setup: %{public}@", buf, 0xCu);
    }

    v77 = @"wallpaperRepresentingIdentifier";
    v78[0] = v13;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v18 = [self incomingPosterConfigurationForRole:v8 templatePath:v15 userInfo:v20];
    v76 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  }

  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_53:

  return v19;
}

id __87__PBFInitialPosterHelper_initialPosterConfigurationsWithModelCoordinatorProvider_role___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) pbf_posterExtensionStoreCoordinatorForProviderIdentifier:a2 error:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 staticDescriptorStoreCoordinatorForIdentifier:v7];
    if ([v10 hasKnownVersions])
    {
      v11 = [v10 pathOfLatestVersion];
    }

    else
    {
      v12 = [v9 dynamicDescriptorStoreCoordinatorForIdentifier:v7];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
      }

      else
      {
        v15 = *(a1 + 40);
        v20 = 0;
        v13 = [v9 createDynamicDescriptorStoreCoordinatorForIdentifier:v7 role:v15 error:&v20];
        v14 = v20;
        if (!v14)
        {
          v19 = 0;
          v16 = [v13 addNewVersionWithContents:0 error:&v19];
          v14 = v19;
        }

        if (a4 && v14)
        {
          v17 = v14;
          *a4 = v14;
        }
      }

      v11 = [v13 pathOfLatestVersion];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)incomingPosterConfigurationForRole:(id)role templatePath:(id)path userInfo:(id)info
{
  roleCopy = role;
  pathCopy = path;
  infoCopy = info;
  v10 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:roleCopy];
  [v10 copyContentsOfPath:pathCopy error:0];
  v11 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:roleCopy];
  v12 = [v11 mutableCopy];

  if ([roleCopy isEqual:*MEMORY[0x277D3EEF0]])
  {
    v36 = pathCopy;
    defaultConfiguration = [MEMORY[0x277D3EE28] defaultConfiguration];
    v14 = objc_alloc(MEMORY[0x277D3EE30]);
    defaultTitleColor = [MEMORY[0x277D3EE30] defaultTitleColor];
    [MEMORY[0x277D3EE30] defaultContentsLuminance];
    LOBYTE(v32) = 1;
    v35 = defaultConfiguration;
    v16 = [v14 initWithTimeFontConfiguration:defaultConfiguration preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:defaultTitleColor timeNumberingSystem:0 userConfigured:0 contentsLuminance:v32 alternateDateEnabled:0 groupName:?];

    v34 = v16;
    [v12 setTitleStyleConfiguration:v16];
    v17 = +[PBFWallpaperKitBridge defaultBridge];
    LODWORD(defaultTitleColor) = [v17 shouldDefaultWallpaperDisableModifyingLegibilityBlur];

    v18 = [objc_alloc(MEMORY[0x277D3EDC8]) initWithLegibilityBlurEnabled:0 allowsModifyingLegibilityBlur:defaultTitleColor ^ 1];
    v19 = [objc_alloc(MEMORY[0x277D3EDA8]) initWithLegibilityBlurEnabled:0 allowsModifyingLegibilityBlur:defaultTitleColor ^ 1];
    v20 = objc_alloc_init(MEMORY[0x277D3EE18]);
    v21 = objc_alloc_init(MEMORY[0x277D3EDA0]);
    v22 = objc_alloc_init(MEMORY[0x277D3EDB8]);
    v33 = v18;
    v23 = [objc_alloc(MEMORY[0x277D3EDB0]) initWithSelectedAppearanceType:0 lockPosterAppearance:v18 solidColorAppearance:v20 gradientAppearance:v21 homePosterAppearance:v19 customizationConfiguration:v22];
    [v12 setHomeScreenConfiguration:v23];
    v24 = infoCopy;
    v25 = [objc_alloc(MEMORY[0x277D3EDF8]) initWithDepthEffectDisabled:0 motionEffectsDisabled:0];
    [v12 setRenderingConfiguration:v25];
    if ([v24 count])
    {
      [v10 storeUserInfo:v24 error:0];
    }

    infoCopy = v24;
    v26 = v35;
    pathCopy = v36;
  }

  else
  {
    if (![roleCopy isEqual:*MEMORY[0x277D3EE98]])
    {
      goto LABEL_8;
    }

    v26 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:2 creationBehavior:0 editingBehavior:1 deletionBehavior:2];
    [v12 setAmbientConfiguration:v26];
  }

LABEL_8:
  v27 = objc_alloc(MEMORY[0x277D3ECE0]);
  _path = [v10 _path];
  serverIdentity = [pathCopy serverIdentity];
  v30 = [v27 initWithNewPath:_path destinationPosterUUID:0 sourceIdentity:serverIdentity configuredProperties:v12 attributes:0];

  [v30 trackTemporaryState:v10];

  return v30;
}

+ (id)hostConfigurationForRole:(id)role
{
  v20[1] = *MEMORY[0x277D85DE8];
  roleCopy = role;
  mEMORY[0x277D3EF28] = [MEMORY[0x277D3EF28] sharedHostConfigurationManager];
  v5 = [mEMORY[0x277D3EF28] hostConfigurationForRole:roleCopy];

  if (v5)
  {
    v6 = v5;
    goto LABEL_14;
  }

  if ([roleCopy isEqual:*MEMORY[0x277D3EE98]])
  {
    v7 = MEMORY[0x277D3E950];
    v8 = [MEMORY[0x277D3E958] entryWithExtensionID:@"com.apple.ambient.AmbientUI.InfographPoster" descriptorID:@"InfographPoster"];
    v20[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v6 = [v7 hostConfigurationWithConfigurationEntries:v9];

    goto LABEL_14;
  }

  if (![roleCopy isEqual:*MEMORY[0x277D3EEF0]])
  {
    goto LABEL_13;
  }

  v10 = +[PBFWallpaperKitBridge defaultBridge];
  shouldInstallHeroPosterAsDefaultLockScreenWallpaper = [v10 shouldInstallHeroPosterAsDefaultLockScreenWallpaper];

  if (shouldInstallHeroPosterAsDefaultLockScreenWallpaper)
  {
    v18 = 0;
    v12 = defaultLockScreenWallpaperExtensionIdentifier(&v18);
    v13 = v18;
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v13)
    {
      v14 = MEMORY[0x277D3E950];
      v15 = [MEMORY[0x277D3E958] entryWithExtensionID:v12 descriptorID:v13];
      v19 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v6 = [v14 hostConfigurationWithConfigurationEntries:v16];

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v13 = @"LegacyPoster";
  v12 = @"com.apple.PaperBoard.LegacyPoster";
  if (@"com.apple.PaperBoard.LegacyPoster")
  {
    goto LABEL_10;
  }

LABEL_12:

LABEL_13:
  v6 = 0;
LABEL_14:

  return v6;
}

+ (void)initialPosterConfigurationsWithModelCoordinatorProvider:(uint64_t)a1 role:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "(PBFInitialPosterHelper) Error setting up collection extension: %@", &v2, 0xCu);
}

+ (void)initialPosterConfigurationsWithModelCoordinatorProvider:(uint64_t)a1 role:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B526000, a2, OS_LOG_TYPE_ERROR, "(PBFInitialPosterHelper) Error setting up legacy extension: %@", &v2, 0xCu);
}

@end