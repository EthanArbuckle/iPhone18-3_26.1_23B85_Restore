@interface WLKAccountMonitor
+ (id)sharedInstance;
- (BOOL)_shouldNotifyAccountChange:(id)change newAccount:(id)account;
- (BOOL)_shouldNotifyStoreFrontChange:(id)change newAccount:(id)account;
- (WLKAccountMonitor)init;
- (void)_accountStoreDidChange:(id)change;
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
    activeAccount = [MEMORY[0x277D6C478] activeAccount];
    activeAccount = v2->_activeAccount;
    v2->_activeAccount = activeAccount;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLKAccountMonitor;
  [(WLKAccountMonitor *)&v4 dealloc];
}

- (void)_accountStoreDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo wlk_stringForKey:*MEMORY[0x277CB8C90]];

  if (([v5 isEqualToString:*MEMORY[0x277CB8D58]] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CB8D60]))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeAccount = [MEMORY[0x277D6C478] activeAccount];
    activeAccount2 = [(WLKAccountMonitor *)selfCopy activeAccount];
    v9 = [(WLKAccountMonitor *)selfCopy _shouldNotifyAccountChange:activeAccount2 newAccount:activeAccount];

    if (v9)
    {
      objc_storeStrong(&selfCopy->_activeAccount, activeAccount);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"WLKAccountMonitorAccountDidChange" object:selfCopy];
    }

    activeAccount3 = [(WLKAccountMonitor *)selfCopy activeAccount];
    v12 = [(WLKAccountMonitor *)selfCopy _shouldNotifyStoreFrontChange:activeAccount3 newAccount:activeAccount];

    if (v12)
    {
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 postNotificationName:@"WLKAccountMontiorStoreFrontDidChange" object:selfCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)_shouldNotifyAccountChange:(id)change newAccount:(id)account
{
  changeCopy = change;
  accountCopy = account;
  v7 = accountCopy;
  if (changeCopy && !accountCopy)
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

  if (!changeCopy && accountCopy)
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
  if (changeCopy && accountCopy)
  {
    identifier = [changeCopy identifier];
    identifier2 = [v7 identifier];
    v15 = [identifier isEqualToString:identifier2];

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

- (BOOL)_shouldNotifyStoreFrontChange:(id)change newAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  accountCopy = account;
  v7 = accountCopy;
  v8 = 0;
  if (changeCopy && accountCopy)
  {
    ams_storefront = [changeCopy ams_storefront];
    ams_storefront2 = [v7 ams_storefront];
    v11 = [ams_storefront isEqualToString:ams_storefront2];

    if (v11)
    {
      v8 = 0;
    }

    else
    {
      v12 = WLKSystemLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ams_storefront3 = [changeCopy ams_storefront];
        ams_storefront4 = [v7 ams_storefront];
        v17 = 138412546;
        v18 = ams_storefront3;
        v19 = 2112;
        v20 = ams_storefront4;
        _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKAccountMonitor - Store front changed %@ - %@", &v17, 0x16u);
      }

      v8 = 1;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

@end