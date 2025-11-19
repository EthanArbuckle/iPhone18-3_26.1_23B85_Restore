@interface PSGExtendedResearchUtilities
+ (BOOL)getCanShowExtendedResearch;
+ (id)getExtendedResearchSettingsBundleName;
+ (int64_t)_getFileSize:(const char *)a3;
@end

@implementation PSGExtendedResearchUtilities

+ (BOOL)getCanShowExtendedResearch
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0xFFFFFC342];
  v3 = MEMORY[0xFFFFFC342] != 0;
  if (![PSGExtendedResearchUtilities _getFileSize:"/System/Library/PreferenceBundles/SecurityResearchDeviceERMSettings.bundle"])
  {
    v4 = [PSGExtendedResearchUtilities _getFileSize:"/System/Library/PreferenceBundles/SecurityResearchDeviceERMRPSettings.bundle"];
    if (v2)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    v3 = !v5;
  }

  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "canShowExtendedResearch = %{public}@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)getExtendedResearchSettingsBundleName
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [PSGExtendedResearchUtilities _getFileSize:"/System/Library/PreferenceBundles/SecurityResearchDeviceERMRPSettings.bundle"];
  v3 = @"SecurityResearchDeviceERMSettings";
  if (v2 > 0)
  {
    v3 = @"SecurityResearchDeviceERMRPSettings";
  }

  v4 = v3;
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "extendedResearchSettingsBundleName = %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int64_t)_getFileSize:(const char *)a3
{
  memset(&v4, 0, sizeof(v4));
  if (stat(a3, &v4) == -1)
  {
    return 0;
  }

  else
  {
    return v4.st_size;
  }
}

@end