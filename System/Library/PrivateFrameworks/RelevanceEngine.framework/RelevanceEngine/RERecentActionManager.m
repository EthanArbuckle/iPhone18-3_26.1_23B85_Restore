@interface RERecentActionManager
- (BOOL)actionWasPerformedLocally:(id)a3;
- (id)_dataForAction:(id)a3;
- (id)_init;
- (id)lastPerformedDateForAction:(id)a3;
- (unint64_t)actionNumberOfTimesPeformedToday:(id)a3;
- (void)_handleRecentActionNotification:(id)a3;
- (void)_storePerformAction:(id)a3 date:(id)a4 remote:(BOOL)a5;
- (void)dealloc;
- (void)didPerformAction:(id)a3;
@end

@implementation RERecentActionManager

- (id)_init
{
  v11.receiver = self;
  v11.super_class = RERecentActionManager;
  v2 = [(RESingleton *)&v11 _init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = v2[1];
    v2[1] = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = v2[2];
    v2[2] = v5;

    v7 = +[REPredictedActionServer sharedInstance];
    v8 = v2[3];
    v2[3] = v7;

    v9 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v9 addObserver:v2 selector:sel__handleRecentActionNotification_ name:@"RERecentDonatedActionWasPerformedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RERecentActionManager;
  [(RERecentActionManager *)&v4 dealloc];
}

- (void)didPerformAction:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [(RERecentActionManager *)self _storePerformAction:v5 date:v6 remote:0];
}

- (void)_storePerformAction:(id)a3 date:(id)a4 remote:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_initWeak(&location, self);
    server = self->_server;
    v11 = [v8 bundleIdentifier];
    v12 = [v8 actionIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RERecentActionManager__storePerformAction_date_remote___block_invoke;
    v13[3] = &unk_2785FDC10;
    objc_copyWeak(&v16, &location);
    v14 = v9;
    v17 = a5;
    v15 = v8;
    [(REPredictedActionServer *)server fetchPerformedTodayCountForActionWithBundleIdentifer:v11 actionIdentifier:v12 completion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __57__RERecentActionManager__storePerformAction_date_remote___block_invoke(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_opt_new();
    v6 = v5;
    if (*(a1 + 32))
    {
      [v5 setDate:?];
    }

    else
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      [v6 setDate:v7];
    }

    [v6 setRemote:*(a1 + 56)];
    [v6 setCount:a2];
    [WeakRetained[1] lock];
    v8 = [WeakRetained[2] objectForKeyedSubscript:*(a1 + 40)];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    if ([v8 remote] & 1) == 0 && (*(a1 + 56))
    {
      goto LABEL_9;
    }

    v10 = [v9 date];
    v11 = [v6 date];
    v12 = [v10 laterDate:v11];
    v13 = [v9 date];
    v18 = [v12 isEqualToDate:v13];

    if (v18)
    {
LABEL_9:
      [WeakRetained[1] unlock];
    }

    else
    {
LABEL_10:
      [WeakRetained[2] setObject:v6 forKeyedSubscript:*(a1 + 40)];
      [WeakRetained[1] unlock];
      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = *(a1 + 40);
      v19 = @"RERecentActionManagerUpdatedActionKey";
      v20[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v14 postNotificationName:@"RERecentActionManagerDidUpdateAction" object:0 userInfo:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_dataForAction:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  v6 = [(NSMutableDictionary *)self->_dateValues objectForKeyedSubscript:v5];

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (id)lastPerformedDateForAction:(id)a3
{
  v3 = [(RERecentActionManager *)self _dataForAction:a3];
  v4 = [v3 date];

  return v4;
}

- (BOOL)actionWasPerformedLocally:(id)a3
{
  v3 = [(RERecentActionManager *)self _dataForAction:a3];
  v4 = [v3 remote];

  return v4 ^ 1;
}

- (unint64_t)actionNumberOfTimesPeformedToday:(id)a3
{
  v3 = [(RERecentActionManager *)self _dataForAction:a3];
  v4 = [v3 count];

  return v4;
}

- (void)_handleRecentActionNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v11 = [v5 objectForKeyedSubscript:@"RERecentDonatedActionBundleIdentifierKey"];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"RERecentDonatedActionIdentifierKey"];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"RERecentDonatedActionDateKey"];

  v10 = +[RERecentAction actionWithBundleIdentifier:actionIdentifier:](RERecentAction, "actionWithBundleIdentifier:actionIdentifier:", v11, [v7 unsignedLongLongValue]);
  [(RERecentActionManager *)self _storePerformAction:v10 date:v9 remote:1];
}

@end