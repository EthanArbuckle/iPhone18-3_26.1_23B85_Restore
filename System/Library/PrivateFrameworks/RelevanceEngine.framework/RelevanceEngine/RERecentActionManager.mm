@interface RERecentActionManager
- (BOOL)actionWasPerformedLocally:(id)locally;
- (id)_dataForAction:(id)action;
- (id)_init;
- (id)lastPerformedDateForAction:(id)action;
- (unint64_t)actionNumberOfTimesPeformedToday:(id)today;
- (void)_handleRecentActionNotification:(id)notification;
- (void)_storePerformAction:(id)action date:(id)date remote:(BOOL)remote;
- (void)dealloc;
- (void)didPerformAction:(id)action;
@end

@implementation RERecentActionManager

- (id)_init
{
  v11.receiver = self;
  v11.super_class = RERecentActionManager;
  _init = [(RESingleton *)&v11 _init];
  if (_init)
  {
    v3 = objc_opt_new();
    v4 = _init[1];
    _init[1] = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = _init[2];
    _init[2] = dictionary;

    v7 = +[REPredictedActionServer sharedInstance];
    v8 = _init[3];
    _init[3] = v7;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:_init selector:sel__handleRecentActionNotification_ name:@"RERecentDonatedActionWasPerformedNotification" object:0];
  }

  return _init;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RERecentActionManager;
  [(RERecentActionManager *)&v4 dealloc];
}

- (void)didPerformAction:(id)action
{
  v4 = MEMORY[0x277CBEAA8];
  actionCopy = action;
  date = [v4 date];
  [(RERecentActionManager *)self _storePerformAction:actionCopy date:date remote:0];
}

- (void)_storePerformAction:(id)action date:(id)date remote:(BOOL)remote
{
  actionCopy = action;
  dateCopy = date;
  if (actionCopy)
  {
    objc_initWeak(&location, self);
    server = self->_server;
    bundleIdentifier = [actionCopy bundleIdentifier];
    actionIdentifier = [actionCopy actionIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RERecentActionManager__storePerformAction_date_remote___block_invoke;
    v13[3] = &unk_2785FDC10;
    objc_copyWeak(&v16, &location);
    v14 = dateCopy;
    remoteCopy = remote;
    v15 = actionCopy;
    [(REPredictedActionServer *)server fetchPerformedTodayCountForActionWithBundleIdentifer:bundleIdentifier actionIdentifier:actionIdentifier completion:v13];

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

- (id)_dataForAction:(id)action
{
  lock = self->_lock;
  actionCopy = action;
  [(NSLock *)lock lock];
  v6 = [(NSMutableDictionary *)self->_dateValues objectForKeyedSubscript:actionCopy];

  [(NSLock *)self->_lock unlock];

  return v6;
}

- (id)lastPerformedDateForAction:(id)action
{
  v3 = [(RERecentActionManager *)self _dataForAction:action];
  date = [v3 date];

  return date;
}

- (BOOL)actionWasPerformedLocally:(id)locally
{
  v3 = [(RERecentActionManager *)self _dataForAction:locally];
  remote = [v3 remote];

  return remote ^ 1;
}

- (unint64_t)actionNumberOfTimesPeformedToday:(id)today
{
  v3 = [(RERecentActionManager *)self _dataForAction:today];
  v4 = [v3 count];

  return v4;
}

- (void)_handleRecentActionNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"RERecentDonatedActionBundleIdentifierKey"];

  userInfo2 = [notificationCopy userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:@"RERecentDonatedActionIdentifierKey"];

  userInfo3 = [notificationCopy userInfo];

  v9 = [userInfo3 objectForKeyedSubscript:@"RERecentDonatedActionDateKey"];

  v10 = +[RERecentAction actionWithBundleIdentifier:actionIdentifier:](RERecentAction, "actionWithBundleIdentifier:actionIdentifier:", v11, [v7 unsignedLongLongValue]);
  [(RERecentActionManager *)self _storePerformAction:v10 date:v9 remote:1];
}

@end