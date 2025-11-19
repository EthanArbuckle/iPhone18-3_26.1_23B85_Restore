@interface PABSUnlockWithAppleWatchManager
+ (id)sharedInstance;
- (void)canUseVisionToUnlockWithCompletionHandler:(id)a3;
- (void)canUseWatchToUnlockWithCompletionHandler:(id)a3;
@end

@implementation PABSUnlockWithAppleWatchManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PABSUnlockWithAppleWatchManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __49__PABSUnlockWithAppleWatchManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (void)canUseWatchToUnlockWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v4 = getNRPairedDeviceRegistryClass_softClass;
  v21 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v23 = __getNRPairedDeviceRegistryClass_block_invoke;
    v24 = &unk_279A03148;
    v25 = &v18;
    __getNRPairedDeviceRegistryClass_block_invoke(&buf);
    v4 = v19[3];
  }

  v5 = v4;
  _Block_object_dispose(&v18, 8);
  v6 = [v4 sharedInstance];
  v7 = [v6 isPaired];

  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Unlock using Watch: hasPairedWatch [%@]", &buf, 0xCu);
  }

  if (v7)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = getSFUnlockManagerClass_softClass;
    v21 = getSFUnlockManagerClass_softClass;
    if (!getSFUnlockManagerClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v23 = __getSFUnlockManagerClass_block_invoke;
      v24 = &unk_279A03148;
      v25 = &v18;
      __getSFUnlockManagerClass_block_invoke(&buf);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = [v10 sharedUnlockManager];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v13 = getIDSDefaultPairedDeviceSymbolLoc_ptr;
    v21 = getIDSDefaultPairedDeviceSymbolLoc_ptr;
    if (!getIDSDefaultPairedDeviceSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v23 = __getIDSDefaultPairedDeviceSymbolLoc_block_invoke;
      v24 = &unk_279A03148;
      v25 = &v18;
      __getIDSDefaultPairedDeviceSymbolLoc_block_invoke(&buf);
      v13 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v13)
    {
      [PABSTouchIDPasscodeController enrollResult:bkIdentity:];
      __break(1u);
    }

    v14 = *v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke;
    v16[3] = &unk_279A03300;
    v17 = v3;
    [v12 unlockEnabledWithDevice:v14 completionHandler:v16];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke_cold_1(a2);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)canUseVisionToUnlockWithCompletionHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getSFAuthenticationManagerClass_softClass;
  v17 = getSFAuthenticationManagerClass_softClass;
  if (!getSFAuthenticationManagerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v19 = __getSFAuthenticationManagerClass_block_invoke;
    v20 = &unk_279A03148;
    v21 = &v14;
    __getSFAuthenticationManagerClass_block_invoke(&buf);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = [v4 alloc];
  v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
  v8 = [v7 isSupportedForType:12];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Unlock using Vision: supportsVisionUnlock [%@]", &buf, 0xCu);
  }

  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke;
    v12[3] = &unk_279A03EE0;
    v13 = v3;
    [v7 listCandidateDevicesForType:12 completionHandler:v12];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v5 count] != 0);
}

void __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke_cold_1(char a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25E0E9000, v2, v3, "Unlock using Watch: %@ %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25E0E9000, v2, v3, "Unlock using Vision: %@ %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end