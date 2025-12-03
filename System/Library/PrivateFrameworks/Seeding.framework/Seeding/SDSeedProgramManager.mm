@interface SDSeedProgramManager
+ (BOOL)_canEnrollInBetaSoftware;
+ (BOOL)_currentAudienceIsSeed;
+ (BOOL)_currentCatalogIsSeed;
+ (BOOL)_setAudienceForSeedProgram:(int64_t)program;
+ (BOOL)_setCatalogForSeedProgram:(int64_t)program;
+ (BOOL)canFileFeedback;
+ (BOOL)fixUpAssetAudience;
+ (BOOL)isEnrolledInSeedProgram;
+ (BOOL)unenrollFromSeedProgram;
+ (NSDictionary)currentEnrollmentMetadata;
+ (id)_loadSeedAudiencesFromPlist;
+ (id)_loadSeedCatalogsFromPlist;
+ (id)stringForSeedProgram:(int64_t)program;
+ (int64_t)_currentSeedProgramFromDisk;
+ (int64_t)_legacyCurrentSeedProgram;
+ (int64_t)_seedProgramForString:(id)string;
+ (int64_t)currentSeedProgram;
+ (int64_t)currentSeedProgramForDiskAtPath:(id)path;
+ (void)_clearSeedCatalog;
+ (void)_createFeedbackAssistantSymlink;
+ (void)_currentSeedProgramFromDisk;
+ (void)_setHelpFeedbackMenuEnabled:(BOOL)enabled;
+ (void)_setSeedOptOutUIDisabled:(BOOL)disabled;
+ (void)_setSeedProgramPref:(int64_t)pref;
+ (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience completion:(id)completion;
@end

@implementation SDSeedProgramManager

+ (int64_t)currentSeedProgram
{
  v2 = +[SDBetaManager _currentBetaProgram];
  program = [v2 program];

  return program;
}

+ (int64_t)_legacyCurrentSeedProgram
{
  v2 = CFPreferencesCopyAppValue(@"SeedProgram", @"com.apple.seeding");
  v3 = [SDSeedProgramManager _seedProgramForString:v2];
  if (v2)
  {
    CFRelease(v2);
  }

  if ((v3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (void)_setSeedProgramPref:(int64_t)pref
{
  if (pref)
  {
    v3 = [SDSeedProgramManager stringForSeedProgram:?];
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetValue(@"SeedProgram", v3, @"com.apple.seeding", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);

  CFPreferencesAppSynchronize(@"com.apple.seeding");
}

+ (int64_t)currentSeedProgramForDiskAtPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    if ([pathCopy isEqualToString:@"/"])
    {
      v6 = +[SDSeedingLogging fwHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "+[SDSeedProgramManager currentSeedProgramForDiskAtPath:]";
        _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "%s called on local disk, using preferences instead.", &v19, 0xCu);
      }

      currentSeedProgram = [self currentSeedProgram];
      goto LABEL_21;
    }

    v9 = [v5 stringByAppendingPathComponent:@"Library"];
    v10 = [v9 stringByAppendingPathComponent:@"Preferences"];
    v11 = [v10 stringByAppendingPathComponent:@"com.apple.seeding.plist"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(v10) = [defaultManager fileExistsAtPath:v11];

    if (v10)
    {
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v11];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 valueForKey:@"SeedProgram"];
        currentSeedProgram = [v15 intValue];

        if ((currentSeedProgram - 1) < 4)
        {
LABEL_20:

          goto LABEL_21;
        }

        v16 = +[SDSeedingLogging fwHandle];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[SDSeedProgramManager currentSeedProgramForDiskAtPath:];
        }
      }

      else
      {
        v16 = +[SDSeedingLogging fwHandle];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[SDSeedProgramManager currentSeedProgramForDiskAtPath:];
        }
      }
    }

    else
    {
      v14 = +[SDSeedingLogging fwHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[SDSeedProgramManager currentSeedProgramForDiskAtPath:];
      }
    }

    currentSeedProgram = 0;
    goto LABEL_20;
  }

  v8 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[SDSeedProgramManager currentSeedProgramForDiskAtPath:];
  }

  currentSeedProgram = 0;
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
  return currentSeedProgram;
}

+ (BOOL)isEnrolledInSeedProgram
{
  currentSeedProgram = [objc_opt_class() currentSeedProgram];
  if (!getuid())
  {
    v3 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Seeding: isEnrolledInSeedProgram called as root", v5, 2u);
    }

    currentSeedProgram = [objc_opt_class() _currentSeedProgramFromDisk];
  }

  return currentSeedProgram != 0;
}

+ (BOOL)unenrollFromSeedProgram
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "Seeding: Un-enrolling", &v13, 2u);
  }

  v3 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [v4 stringForSeedProgram:{objc_msgSend(objc_opt_class(), "currentSeedProgram")}];
    uTF8String = [v5 UTF8String];
    v13 = 136315138;
    v14 = uTF8String;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Seeding: Un-enrolling from seed program: %s", &v13, 0xCu);
  }

  [objc_opt_class() _setSeedProgramPref:0];
  if ([objc_opt_class() _currentCatalogIsSeed])
  {
    v7 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[SDCatalogUtilities _currentCatalog];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Seeding: Clearing catalog: %@", &v13, 0xCu);
    }

    [objc_opt_class() _clearSeedCatalog];
  }

  if ([objc_opt_class() _currentAudienceIsSeed])
  {
    v9 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[SDCatalogUtilities _currentAssetAudience];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_DEFAULT, "Seeding: Clearing audience: %@", &v13, 0xCu);
    }

    [objc_opt_class() _clearAudience];
  }

  result = +[SDProfileUtilities removeSeedingProfile];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)_currentSeedProgramFromDisk
{
  v13 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/Managed Preferences/mobile/com.apple.seeding.plist"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/Managed Preferences/mobile/com.apple.seeding.plist"];
    v6 = +[SDSeedingLogging fwHandle];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        +[SDSeedProgramManager _currentSeedProgramFromDisk];
      }

      v7 = [v5 objectForKey:@"SeedProgram"];
      v8 = [self _seedProgramForString:v7];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[SDSeedProgramManager _currentSeedProgramFromDisk];
      }

      v8 = 0;
    }
  }

  else
  {
    v5 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = @"/var/Managed Preferences/mobile/com.apple.seeding.plist";
      _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_INFO, "Seeding plist does not exist at path [%{public}@]", &v11, 0xCu);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_loadSeedCatalogsFromPlist
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SeedCatalogs" ofType:@"plist"];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SDSeedProgramManager__loadSeedCatalogsFromPlist__block_invoke;
  v9[3] = &unk_2787CB880;
  v7 = v6;
  v10 = v7;
  selfCopy = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __50__SDSeedProgramManager__loadSeedCatalogsFromPlist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [objc_opt_class() _seedProgramForString:v8];

  v10 = [v4 numberWithInteger:v9];
  [v5 setObject:v7 forKey:v10];
}

+ (id)_loadSeedAudiencesFromPlist
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SeedAudiences" ofType:@"plist"];

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SDSeedProgramManager__loadSeedAudiencesFromPlist__block_invoke;
  v9[3] = &unk_2787CB880;
  v7 = v6;
  v10 = v7;
  selfCopy = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __51__SDSeedProgramManager__loadSeedAudiencesFromPlist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [objc_opt_class() _seedProgramForString:v8];

  v10 = [v4 numberWithInteger:v9];
  [v5 setObject:v7 forKey:v10];
}

+ (BOOL)_currentCatalogIsSeed
{
  _loadSeedCatalogsFromPlist = [objc_opt_class() _loadSeedCatalogsFromPlist];
  v3 = +[SDCatalogUtilities _currentCatalog];
  allValues = [_loadSeedCatalogsFromPlist allValues];
  v5 = [allValues containsObject:v3];

  return v5;
}

+ (BOOL)_currentAudienceIsSeed
{
  _loadSeedAudiencesFromPlist = [objc_opt_class() _loadSeedAudiencesFromPlist];
  v3 = +[SDCatalogUtilities _currentAssetAudience];
  allValues = [_loadSeedAudiencesFromPlist allValues];
  v5 = [allValues containsObject:v3];

  return v5;
}

+ (BOOL)_setCatalogForSeedProgram:(int64_t)program
{
  _loadSeedCatalogsFromPlist = [objc_opt_class() _loadSeedCatalogsFromPlist];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:program];
  v7 = [_loadSeedCatalogsFromPlist objectForKey:v6];

  if (v7)
  {
    [SDCatalogUtilities _setCatalog:v7];
  }

  else
  {
    v8 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDSeedProgramManager *)self _setCatalogForSeedProgram:program];
    }
  }

  return v7 != 0;
}

+ (BOOL)fixUpAssetAudience
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_DEFAULT, "Fixing Asset Audience.", &v11, 2u);
  }

  currentSeedProgram = [self currentSeedProgram];
  if ((currentSeedProgram - 1) >= 4)
  {
    v6 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "Current Program is not valid. Will not fix up Asset Audience", &v11, 2u);
    }

    v8 = 0;
  }

  else
  {
    v5 = currentSeedProgram;
    v6 = +[SDCatalogUtilities _currentAssetAudience];
    v7 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, "Current Asset Audience [%{public}@]", &v11, 0xCu);
    }

    v8 = [self _setAudienceForSeedProgram:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)_setAudienceForSeedProgram:(int64_t)program
{
  _loadSeedAudiencesFromPlist = [objc_opt_class() _loadSeedAudiencesFromPlist];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:program];
  v7 = [_loadSeedAudiencesFromPlist objectForKey:v6];

  if (v7)
  {
    [SDCatalogUtilities _setAudience:v7];
  }

  else
  {
    v8 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SDSeedProgramManager *)self _setAudienceForSeedProgram:program];
    }
  }

  return v7 != 0;
}

+ (void)_clearSeedCatalog
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = +[SDCatalogUtilities _currentCatalog];
  [v0 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_setHelpFeedbackMenuEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = *MEMORY[0x277CBED28];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CBF008];
  v5 = *MEMORY[0x277CBF020];
  v6 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"NSShowFeedbackMenu", v3, *MEMORY[0x277CBF008], *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(v4, v5, v6);
}

+ (void)_setSeedOptOutUIDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = *MEMORY[0x277CBED28];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277CBF020];
  v5 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"DisableSeedOptOut", v3, @"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.SoftwareUpdate", v4, v5);
}

+ (void)_createFeedbackAssistantSymlink
{
  v9 = *MEMORY[0x277D85DE8];
  [@"/Applications/Utilities/Feedback Assistant.app" UTF8String];
  [@"/System/Library/CoreServices/Applications/Feedback Assistant.app" UTF8String];
  v2 = [self description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_canEnrollInBetaSoftware
{
  v16 = *MEMORY[0x277D85DE8];
  CFPreferencesSynchronize(@"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF010]);
  v2 = CFPreferencesCopyAppValue(@"AllowPreReleaseInstallation", @"com.apple.SoftwareUpdate");
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x277CBED28];
    v5 = v2 == *MEMORY[0x277CBED28];
    CFRelease(v2);
    v6 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v3 == v4)
      {
        v7 = @"YES";
      }

      v14 = 138543362;
      v15 = v7;
      v8 = "AllowPreReleaseInstallation: %{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = +[SDSeedingLogging fwHandle];
    v5 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v8 = "Prerelease configuration not set, assuming YES.";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
      v11 = 2;
LABEL_8:
      _os_log_impl(&dword_22E41E000, v9, v10, v8, &v14, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (NSDictionary)currentEnrollmentMetadata
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  currentSeedProgram = [self currentSeedProgram];
  if (currentSeedProgram)
  {
    v5 = [self stringForSeedProgram:currentSeedProgram];
    [v3 setObject:v5 forKey:@"SeedProgram"];
  }

  v6 = +[SDCatalogUtilities _currentAssetAudience];
  v7 = v6;
  if (v6 && [v6 length])
  {
    [v3 setObject:v7 forKey:@"AssetAudience"];
  }

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v8;
}

+ (void)enrollInSeedProgramNamed:(id)named withAssetAudience:(id)audience completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  audienceCopy = audience;
  completionCopy = completion;
  v11 = [self _seedProgramForString:namedCopy];
  if (v11)
  {
    v12 = [self stringForSeedProgram:v11];
    v13 = +[SDHTTPClient sharedInstance];
    baseURL = [v13 baseURL];

    v28 = baseURL;
    v15 = [baseURL URLByAppendingPathComponent:@"migration"];
    v16 = [v15 URLByAppendingPathComponent:@"v1"];

    v29 = audienceCopy;
    v17 = [audienceCopy stringByAppendingPathExtension:@"mobileconfig"];
    v18 = [v16 URLByAppendingPathComponent:v12];
    v19 = [v18 URLByAppendingPathComponent:v17];

    v20 = [MEMORY[0x277CCAD20] requestWithURL:v19 cachePolicy:1 timeoutInterval:120.0];
    v21 = +[SDHTTPClient sharedInstance];
    urlSession = [v21 urlSession];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke;
    v30[3] = &unk_2787CB8A8;
    v32 = completionCopy;
    v23 = v12;
    v31 = v23;
    v24 = [urlSession dataTaskWithRequest:v20 completionHandler:v30];
    v25 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_22E41E000, v25, OS_LOG_TYPE_DEFAULT, "Requesting profile from profile service for %{public}@.", buf, 0xCu);
    }

    [v24 resume];
    audienceCopy = v29;
  }

  else
  {
    v26 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[SDSeedProgramManager enrollInSeedProgramNamed:withAssetAudience:completion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E41E000, v10, OS_LOG_TYPE_DEFAULT, "Received response from profile service.", buf, 2u);
  }

  if (v8)
  {
    if (v7)
    {
      if (!v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v8;
          if ([v11 statusCode] != 200)
          {
            v19 = +[SDSeedingLogging fwHandle];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_1(v11);
            }

            (*(*(a1 + 40) + 16))();
            goto LABEL_26;
          }

          v23 = 0;
          [SDProfileUtilities installProfileWithData:v7 error:&v23];
          v12 = v23;
          v13 = +[SDSeedingLogging fwHandle];
          v14 = v13;
          if (v12)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_2(v12);
            }

            v15 = *(a1 + 40);
            if (!v15)
            {
              goto LABEL_25;
            }

            v16 = *(v15 + 16);
          }

          else
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a1 + 32);
              *buf = 138543362;
              v25 = v20;
              _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_DEFAULT, "Enrolled device in beta program: [%{public}@]", buf, 0xCu);
            }

            v21 = *(a1 + 40);
            if (!v21)
            {
              goto LABEL_25;
            }

            v16 = *(v21 + 16);
          }

          v16();
LABEL_25:

LABEL_26:
          goto LABEL_27;
        }
      }
    }
  }

  v17 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_3(v9);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }

LABEL_27:

  v22 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_seedProgramForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"CustomerSeed"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"DeveloperSeed"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"PublicSeed"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"OtherSeed"])
    {
      v5 = 4;
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

+ (id)stringForSeedProgram:(int64_t)program
{
  if ((program - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_2787CB8C8[program - 1];
  }

  return v4;
}

+ (BOOL)canFileFeedback
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedProgramManager isEnrolledInSeedProgram];
  v3 = +[SDBuildInfo currentBuildIsSeed];
  v4 = +[SDBuildInfo isFeedbackAssistantAvailable];
  v5 = (v2 || v3) && v4;
  v6 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109888;
    v9[1] = v2;
    v10 = 1024;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "canFileFeedback: enrolledInSeed: %d, onSeedBuild: %d, isFBAAvailable %d, -> result: %d", v9, 0x1Au);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (void)currentSeedProgramForDiskAtPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)enrollInSeedProgram:deletingSystemURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_currentSeedProgramFromDisk
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_setCatalogForSeedProgram:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() stringForSeedProgram:a2];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_setAudienceForSeedProgram:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() stringForSeedProgram:a2];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)enrollInSeedProgramNamed:withAssetAudience:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 statusCode];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __78__SDSeedProgramManager_enrollInSeedProgramNamed_withAssetAudience_completion___block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end