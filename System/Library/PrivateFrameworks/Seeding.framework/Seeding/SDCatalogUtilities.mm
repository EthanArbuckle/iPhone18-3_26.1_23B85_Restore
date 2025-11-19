@interface SDCatalogUtilities
+ (id)_currentCatalog;
+ (void)_resetAssetAudience;
+ (void)_setAudience:(id)a3;
+ (void)_setCatalog:(id)a3;
@end

@implementation SDCatalogUtilities

+ (void)_setCatalog:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SDSeedingLogging fwHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = [v3 UTF8String];
    v6 = "Seeding: Setting catalog URL: %s";
    v7 = v4;
    v8 = 12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v6 = "Seeding: Clearing catalog URL";
    v7 = v4;
    v8 = 2;
  }

  _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
LABEL_7:

  v9 = [objc_opt_class() _currentCatalog];
  if ([v9 isEqualToString:v3])
  {
    v10 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SDCatalogUtilities _setCatalog:v10];
    }
  }

  else
  {
    CFPreferencesSetValue(@"CatalogURL", v3, @"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    CFPreferencesAppSynchronize(@"com.apple.SoftwareUpdate");
    notify_post("com.apple.SoftwareUpdate.CheckForCatalogChange");
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_setAudience:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "will set mobile asset audience [%{public}@]", buf, 0xCu);
  }

  if ([v3 length])
  {
    v5 = MASetPallasAudience();
    v6 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&dword_22E41E000, v6, OS_LOG_TYPE_DEFAULT, "did set mobile asset audience with result [%lld]", buf, 0xCu);
    }

    NSLog(&cfstr_AudiencesResul.isa, v5);
  }

  else
  {
    v7 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v7, OS_LOG_TYPE_INFO, "Failed to set audience: given value is nil", buf, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_resetAssetAudience
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_22E41E000, v2, OS_LOG_TYPE_DEFAULT, "will reset mobile asset audience", &v6, 2u);
  }

  v3 = MASetPallasAudience();
  v4 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_22E41E000, v4, OS_LOG_TYPE_DEFAULT, "did reset mobile asset audience with result [%lld]", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_currentCatalog
{
  CFPreferencesAppSynchronize(@"com.apple.SoftwareUpdate");
  v2 = CFPreferencesCopyValue(@"CatalogURL", @"com.apple.SoftwareUpdate", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);

  return v2;
}

@end