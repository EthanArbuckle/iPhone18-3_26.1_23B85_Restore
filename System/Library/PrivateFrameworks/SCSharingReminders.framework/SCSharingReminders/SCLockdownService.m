@interface SCLockdownService
- (SCLockdownService)init;
- (void)fetchWifiSyncIdentifiersWithCompletion:(id)a3;
- (void)hostForIdentifier:(id)a3 completion:(id)a4;
@end

@implementation SCLockdownService

- (SCLockdownService)init
{
  v6.receiver = self;
  v6.super_class = SCLockdownService;
  v2 = [(SCLockdownService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D03618]);
    [(SCLockdownService *)v2 setRemotePairingStore:v3];

    v4 = dispatch_queue_create("LockdownServiceQueue", 0);
    [(SCLockdownService *)v2 setWorkQueue:v4];
  }

  return v2;
}

- (void)fetchWifiSyncIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(SCLockdownService *)self remotePairingStore];
    v6 = [(SCLockdownService *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke;
    v7[3] = &unk_279B399F0;
    v8 = v4;
    [v5 fetchPairedDevicesOnQueue:v6 completion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8]);
  }
}

void __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = SCLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [v20 lockdownFrameworkKey];

        if (v21)
        {
          v22 = [v20 lockdownFrameworkKey];
          [v14 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 32) + 16))();
  v23 = *MEMORY[0x277D85DE8];
}

- (void)hostForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCLockdownService *)self remotePairingStore];
  v9 = [v8 isWifiSyncEnabled];
  if (!v6 || !v9)
  {

    goto LABEL_6;
  }

  v10 = _os_feature_enabled_impl();

  if ((v10 & 1) == 0)
  {
LABEL_6:
    v7[2](v7, 0);
    goto LABEL_7;
  }

  v11 = [(SCLockdownService *)self remotePairingStore];
  v12 = [(SCLockdownService *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SCLockdownService_hostForIdentifier_completion___block_invoke;
  v13[3] = &unk_279B39A18;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  [v11 fetchPairedDevicesOnQueue:v12 completion:v13];

LABEL_7:
}

void __50__SCLockdownService_hostForIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = SCLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [*(a1 + 32) interestedNotifications];
  v15 = [v14 containsObject:*(a1 + 40)];

  if (v15)
  {
    v16 = lockdown_copy_wireless_connections_list();
    if (v16)
    {
      v17 = v16;
      v18 = CFArrayGetValueAtIndex(v16, 0);
      CFRelease(v17);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = v6;
      v19 = v6;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        while (2)
        {
          v23 = 0;
          do
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v37 + 1) + 8 * v23) lockdownFrameworkKey];
            v25 = [v18 isEqualToString:v24];

            if (v25)
            {
              (*(*(a1 + 48) + 16))();

              goto LABEL_22;
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v26 = SCLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262556000, v26, OS_LOG_TYPE_DEFAULT, "Found no wirelessly connected hosts", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
LABEL_22:

      v6 = v35;
    }
  }

  else
  {
    v27 = SCLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __50__SCLockdownService_hostForIdentifier_completion___block_invoke_cold_2((a1 + 40), v27, v28, v29, v30, v31, v32, v33);
    }

    (*(*(a1 + 48) + 16))();
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __60__SCLockdownService_fetchWifiSyncIdentifiersWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_262556000, a2, a3, "Failed to fetch paired devices. Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__SCLockdownService_hostForIdentifier_completion___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_3(&dword_262556000, a2, a3, "Returning null because notification: %@ was not recognized", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end