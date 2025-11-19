@interface VCDaemonDatabaseProvider
- (BOOL)isShortcutsAppInstalled;
- (VCDaemonDatabaseProvider)init;
- (id)databaseWithError:(id *)a3;
- (void)migrateVoiceShortcutsToShortcutsInDatabase:(id)a3;
@end

@implementation VCDaemonDatabaseProvider

- (BOOL)isShortcutsAppInstalled
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x277D7A338] allowPlaceholder:0 error:0];
  v4 = v3 != 0;

  return v4;
}

- (void)migrateVoiceShortcutsToShortcutsInDatabase:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = VCOSTransactionWithName(@"WFDaemonDatabaseProvider.migrateVoiceShortcutsToShortcutsInDatabase");
  v5 = [objc_alloc(MEMORY[0x277D7C080]) initWithDatabase:v3];

  v10 = 0;
  v6 = [v5 migrateWithError:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[VCDaemonDatabaseProvider migrateVoiceShortcutsToShortcutsInDatabase:]";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to migrate shortcuts from CoreData: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)databaseWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4672;
  v19 = __Block_byref_object_dispose__4673;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4672;
  v13 = __Block_byref_object_dispose__4673;
  v14 = 0;
  v5 = [(VCDaemonDatabaseProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VCDaemonDatabaseProvider_databaseWithError___block_invoke;
  block[3] = &unk_2788FEFE0;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = v16[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __46__VCDaemonDatabaseProvider_databaseWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
    goto LABEL_12;
  }

  if (([v2 isShortcutsAppInstalled] & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[VCDaemonDatabaseProvider databaseWithError:]_block_invoke";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Not initializing the database because Shortcuts app is not installed, returning nil", buf, 0xCu);
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = @"Shortcuts app is not installed";
    goto LABEL_11;
  }

  if (WFProcessIsRunningInUserSetup())
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[VCDaemonDatabaseProvider databaseWithError:]_block_invoke";
    }

    v5 = MEMORY[0x277CCA9B8];
    v6 = @"Shortcuts daemon is running under the macOS Installer user";
LABEL_11:
    v8 = WFLocalizedString(v6);
    v9 = [v5 vc_voiceShortcutErrorWithCode:1004 reason:{@"%@", v8}];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    goto LABEL_12;
  }

  v13 = objc_alloc(MEMORY[0x277D7C2F0]);
  v14 = *(*(a1 + 48) + 8);
  obj = *(v14 + 40);
  v15 = [v13 initWithPersistenceMode:0 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *(*(*(a1 + 40) + 8) + 40);
  if (v18)
  {
    objc_storeStrong((*(a1 + 32) + 8), v18);
    [MEMORY[0x277D7C2F0] setDefaultDatabase:*(*(a1 + 32) + 8)];
    [*(a1 + 32) migrateVoiceShortcutsToShortcutsInDatabase:*(*(a1 + 32) + 8)];
  }

  else
  {
    v19 = getWFGeneralLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 136315394;
      v23 = "[VCDaemonDatabaseProvider databaseWithError:]_block_invoke";
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Failed to initialize database: %{public}@", buf, 0x16u);
    }
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

- (VCDaemonDatabaseProvider)init
{
  v9.receiver = self;
  v9.super_class = VCDaemonDatabaseProvider;
  v2 = [(VCDaemonDatabaseProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.shortcuts.VCDaemonDatabaseProvider", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = v2;
  }

  return v2;
}

@end