@interface SBXXReloadIconForIdentifier
@end

@implementation SBXXReloadIconForIdentifier

void ___SBXXReloadIconForIdentifier_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Reloading icon image for iconID %{public}@", &v7, 0xCu);
  }

  v4 = serverIconController();
  v5 = [v4 iconModel];
  v6 = [v5 leafIconForIdentifier:*(a1 + 32)];

  [v6 reloadIconImage];
}

@end