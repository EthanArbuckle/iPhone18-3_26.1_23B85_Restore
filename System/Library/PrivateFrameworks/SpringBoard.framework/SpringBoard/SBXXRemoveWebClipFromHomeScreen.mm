@interface SBXXRemoveWebClipFromHomeScreen
@end

@implementation SBXXRemoveWebClipFromHomeScreen

void ___SBXXRemoveWebClipFromHomeScreen_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = serverIconController();
  v3 = [v2 iconModel];
  v4 = [v3 bookmarkIconForWebClipIdentifier:*(a1 + 32)];

  if (v4)
  {
    v5 = [v2 iconManager];
    [v5 uninstallIcon:v4 animate:1];
  }

  else
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Unable to find icon with webclip identifier [%{public}@] for removal.", &v8, 0xCu);
    }
  }

  [SBApp noteInstalledWebClipsDidChange];
}

@end