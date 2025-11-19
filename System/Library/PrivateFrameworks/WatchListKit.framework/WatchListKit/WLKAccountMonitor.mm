@interface WLKAccountMonitor
+ (id)sharedInstance;
- (BOOL)_shouldNotifyAccountChange:(id)a3 newAccount:(id)a4;
- (BOOL)_shouldNotifyStoreFrontChange:(id)a3 newAccount:(id)a4;
- (WLKAccountMonitor)init;
- (void)_accountStoreDidChange:(id)a3;
- (void)dealloc;
@end

@implementation WLKAccountMonitor

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[WLKAccountMonitor sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __35__WLKAccountMonitor_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(WLKAccountMonitor);

  return MEMORY[0x2821F96F8]();
}

- (WLKAccountMonitor)init
{
  v7.receiver = self;
  v7.super_class = WLKAccountMonitor;
  v2 = [(WLKAccountMonitor *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D6C478] activeAccount];
    activeAccount = v2->_activeAccount;
    v2->_activeAccount = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLKAccountMonitor;
  [(WLKAccountMonitor *)&v4 dealloc];
}

- (void)_accountStoreDidChange:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 wlk_stringForKey:*MEMORY[0x277CB8C90]];

  if (([v5 isEqualToString:*MEMORY[0x277CB8D58]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CB8D60]))
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x277D6C478] activeAccount];
    v8 = [(WLKAccountMonitor *)v6 activeAccount];
    v9 = [(WLKAccountMonitor *)v6 _shouldNotifyAccountChange:v8 newAccount:v7];

    if (v9)
    {
      objc_storeStrong(&v6->_activeAccount, v7);
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 postNotificationName:@"WLKAccountMonitorAccountDidChange" object:v6];
    }

    v11 = [(WLKAccountMonitor *)v6 activeAccount];
    v12 = [(WLKAccountMonitor *)v6 _shouldNotifyStoreFrontChange:v11 newAccount:v7];

    if (v12)
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 postNotificationName:@"WLKAccountMontiorStoreFrontDidChange" object:v6];
    }

    objc_sync_exit(v6);
  }
}

- (BOOL)_shouldNotifyAccountChange:(id)a3 newAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v9 = "WLKAccountMonitor - User logged out";
      v10 = &v18;
LABEL_9:
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!v5 && v6)
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "WLKAccountMonitor - User logged in";
      v10 = buf;
      goto LABEL_9;
    }

LABEL_10:

    v11 = 1;
    goto LABEL_11;
  }

  v11 = 0;
  if (v5 && v6)
  {
    v13 = [v5 identifier];
    v14 = [v7 identifier];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v8 = WLKSystemLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v16 = 0;
    v9 = "WLKAccountMonitor - Account changed";
    v10 = &v16;
    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

- (BOOL)_shouldNotifyStoreFrontChange:(id)a3 newAccount:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 ams_storefront];
    v10 = [v7 ams_storefront];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = WLKSystemLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 ams_storefront];
        v14 = [v7 ams_storefront];
        v17 = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKAccountMonitor - Store front changed %@ - %@", &v17, 0x16u);
      }

      v8 = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

@end