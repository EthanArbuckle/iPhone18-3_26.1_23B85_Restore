@interface SBXXSetShowsOverridesForRecording
@end

@implementation SBXXSetShowsOverridesForRecording

void ___SBXXSetShowsOverridesForRecording_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 52))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___SBXXSetShowsOverridesForRecording_block_invoke_2;
    v15[3] = &unk_2783A92D8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = ___SBXXSetShowsOverridesForRecording_block_invoke_113;
    v12 = &unk_2783A92D8;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v2 = [SBDaemonRequest requestWithEnabler:v15 disabler:&v9];
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v19 = v4;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "SBDaemonRequest: adding %{public}@ for %{public}@", buf, 0x16u);
    }

    [SBDaemonHandler addRequest:v2 forKey:*(a1 + 32) forDaemonPid:*(a1 + 48), v9, v10, v11, v12];
  }

  else
  {
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "SBDaemonRequest: removing %{public}@ for %{public}@", buf, 0x16u);
    }

    [SBDaemonHandler removeRequestForKey:*(a1 + 32) forDaemonPid:*(a1 + 48)];
  }
}

void ___SBXXSetShowsOverridesForRecording_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: enabling %{public}@ for %{public}@", &v6, 0x16u);
  }

  v5 = [SBApp statusBarStateAggregator];
  [v5 setShowsOverridesForRecording:1];
}

void ___SBXXSetShowsOverridesForRecording_block_invoke_113(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: disabling %{public}@ for %{public}@", &v6, 0x16u);
  }

  v5 = [SBApp statusBarStateAggregator];
  [v5 setShowsOverridesForRecording:0];
}

@end