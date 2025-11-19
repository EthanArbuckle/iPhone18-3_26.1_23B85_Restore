@interface AADataclassManager(iCloudSettings)
- (uint64_t)_isHiddenDataclass:()iCloudSettings;
- (uint64_t)appIsNeitherInstalledOrPlaceholder:()iCloudSettings;
- (uint64_t)isAppRestrictedOnThisDevice:()iCloudSettings;
- (uint64_t)shouldShowDataclass:()iCloudSettings forAccount:;
@end

@implementation AADataclassManager(iCloudSettings)

- (uint64_t)_isHiddenDataclass:()iCloudSettings
{
  v3 = _isHiddenDataclass__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [AADataclassManager(iCloudSettings) _isHiddenDataclass:];
  }

  v5 = [_isHiddenDataclass__dataclassesToHide containsObject:v4];

  return v5;
}

- (uint64_t)shouldShowDataclass:()iCloudSettings forAccount:
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CEC7B8] isMultiUserMode] & 1) != 0 || (objc_msgSend(MEMORY[0x277CEC7A0], "sharedManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSystemAppMCRestrictedOrRemovedForDataclass:forAccount:", v6, v7), v8, (v9) || (objc_msgSend(a1, "_isHiddenDataclass:", v6) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CB8A38]) && (objc_msgSend(v7, "isProvisionedForDataclass:", *MEMORY[0x277CB89D0]) & 1) != 0 || (objc_msgSend(a1, "isAppRestrictedOnThisDevice:", v6))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 isProvisionedForDataclass:v6];
  }

  return v10;
}

- (uint64_t)appIsNeitherInstalledOrPlaceholder:()iCloudSettings
{
  v3 = MEMORY[0x277CEC7A0];
  v4 = a3;
  v5 = [v3 sharedManager];
  v6 = [v5 appBundleIdentifierForDataclass:v4];

  v7 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v6];
  v8 = [v7 appState];
  if ([v8 isInstalled])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 appState];
    v9 = [v10 isPlaceholder] ^ 1;
  }

  return v9;
}

- (uint64_t)isAppRestrictedOnThisDevice:()iCloudSettings
{
  v3 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v3 isEqualToString:*MEMORY[0x277CB89A0]];
  }

  return 0;
}

@end