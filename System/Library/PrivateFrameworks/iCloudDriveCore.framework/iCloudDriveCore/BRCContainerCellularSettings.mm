@interface BRCContainerCellularSettings
+ (id)containerCellularSettings;
- (BOOL)isCellularEnabled;
- (BOOL)isUnlimitedCellularUpdatesEnabled;
- (BRCContainerCellularSettings)initWithPersonaID:(id)a3;
- (void)accountDidChangeForPersona:(id)a3;
- (void)dealloc;
@end

@implementation BRCContainerCellularSettings

+ (id)containerCellularSettings
{
  if (containerCellularSettings_onceToken != -1)
  {
    +[BRCContainerCellularSettings containerCellularSettings];
  }

  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 br_currentPersonaID];

  v4 = containerCellularSettings_cellularSettingsByPersonaID;
  objc_sync_enter(v4);
  v5 = [containerCellularSettings_cellularSettingsByPersonaID objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [[BRCContainerCellularSettings alloc] initWithPersonaID:v3];
    [containerCellularSettings_cellularSettingsByPersonaID setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  return v5;
}

- (BOOL)isCellularEnabled
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BRCContainerCellularSettings_isCellularEnabled__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  return [(NSNumber *)self->_isCellularEnabledForDocumentsAndData BOOLValue];
}

void __49__BRCContainerCellularSettings_isCellularEnabled__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    memset(v12, 0, sizeof(v12));
    __brc_create_section(0, "[BRCContainerCellularSettings isCellularEnabled]_block_invoke", 111, 0, v12);
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __49__BRCContainerCellularSettings_isCellularEnabled__block_invoke_cold_1(v12);
    }

    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v5 = [v4 br_accountForCurrentPersona];
    v6 = [v5 aa_useCellularForDataclass:*MEMORY[0x277CB91D8]];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __49__BRCContainerCellularSettings_isCellularEnabled__block_invoke_cold_2();
    }

    __brc_leave_section(v12);
  }
}

- (void)accountDidChangeForPersona:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  return BRPerformWithPersonaAndError();
}

void __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke_2_cold_1(v3, v4, v5);
    }
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    __brc_create_section(0, "[BRCContainerCellularSettings accountDidChangeForPersona:]_block_invoke", 45, 0, v14);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke_2_cold_2(v14);
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __59__BRCContainerCellularSettings_accountDidChangeForPersona___block_invoke_2_cold_3(v8, v9);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    __brc_leave_section(v14);
  }
}

- (BRCContainerCellularSettings)initWithPersonaID:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BRCContainerCellularSettings;
  v5 = [(BRCContainerCellularSettings *)&v22 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.bird.cellular-settings", v7);

    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_opt_new();
    operationQueue = v5->_operationQueue;
    v5->_operationQueue = v10;

    objc_initWeak(&location, v5);
    [MEMORY[0x277CFADF8] startAccountTokenChangeObserverIfNeeded];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277CFAB58];
    v14 = v5->_operationQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__BRCContainerCellularSettings_initWithPersonaID___block_invoke;
    v18[3] = &unk_278507D78;
    objc_copyWeak(&v20, &location);
    v19 = v4;
    v15 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v18];
    accountDidChangeNotificationObserver = v5->_accountDidChangeNotificationObserver;
    v5->_accountDidChangeNotificationObserver = v15;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __50__BRCContainerCellularSettings_initWithPersonaID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained accountDidChangeForPersona:*(a1 + 32)];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_accountDidChangeNotificationObserver];

  v4.receiver = self;
  v4.super_class = BRCContainerCellularSettings;
  [(BRCContainerCellularSettings *)&v4 dealloc];
}

uint64_t __57__BRCContainerCellularSettings_containerCellularSettings__block_invoke()
{
  containerCellularSettings_cellularSettingsByPersonaID = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isUnlimitedCellularUpdatesEnabled
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCContainerCellularSettings_isUnlimitedCellularUpdatesEnabled__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  return [(NSNumber *)self->_isUnlimitedCellularUpdatesEnabledForDocumentsAndData BOOLValue];
}

void __65__BRCContainerCellularSettings_isUnlimitedCellularUpdatesEnabled__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    memset(v12, 0, sizeof(v12));
    __brc_create_section(0, "[BRCContainerCellularSettings isUnlimitedCellularUpdatesEnabled]_block_invoke", 131, 0, v12);
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __65__BRCContainerCellularSettings_isUnlimitedCellularUpdatesEnabled__block_invoke_cold_1(v12);
    }

    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v5 = [v4 br_accountForCurrentPersona];
    v6 = [v5 aa_allowUnlimitedUpdatesForDataclass:*MEMORY[0x277CB91D8]];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __65__BRCContainerCellularSettings_isUnlimitedCellularUpdatesEnabled__block_invoke_cold_2();
    }

    __brc_leave_section(v12);
  }
}

@end