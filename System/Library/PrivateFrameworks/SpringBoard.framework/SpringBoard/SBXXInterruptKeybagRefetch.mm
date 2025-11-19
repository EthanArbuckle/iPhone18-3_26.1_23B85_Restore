@interface SBXXInterruptKeybagRefetch
@end

@implementation SBXXInterruptKeybagRefetch

void ___SBXXInterruptKeybagRefetch_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([SBApp isKeybagRefetchTransactionActive])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"interruptKeybagRefetch from %@", *(a1 + 32)];
    v3 = SBWorkspaceInterruptBusynessIfPossible(v2);

    if (v3)
    {
      return;
    }

    v4 = SBLogWorkspace();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = BSPrettyFunctionName();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      v7 = "%{public}@ - failed to interrupt keybag refetch (requested from %{public}@)";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, v7, buf, 0x16u);
    }
  }

  else
  {
    v4 = SBLogWorkspace();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = BSPrettyFunctionName();
      v8 = *(a1 + 32);
      *buf = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v8;
      v7 = "%{public}@ - no keybag refetch active (requested from %{public}@)";
      goto LABEL_7;
    }
  }
}

@end