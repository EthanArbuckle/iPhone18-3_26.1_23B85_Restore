@interface STAccountStateMonitor
- (STAccountStateMonitor)initWithDelegate:(id)a3;
- (STAccountStateMonitorDelegate)delegate;
- (void)dealloc;
- (void)reloadAccountState:(BOOL)a3;
@end

@implementation STAccountStateMonitor

- (void)dealloc
{
  notify_cancel(self->_TCCAccessChangedNotificationToken);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_cloudKitAccountChangeObserver];

  v4.receiver = self;
  v4.super_class = STAccountStateMonitor;
  [(STAccountStateMonitor *)&v4 dealloc];
}

- (STAccountStateMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = STAccountStateMonitor;
  v5 = [(STAccountStateMonitor *)&v34 init];
  objc_storeWeak(&v5->_delegate, v4);
  v6 = [[STDebouncer alloc] initWithMinCoalescenceInterval:1.0 maxCoalescenceInterval:5.0];
  [v6 setDelegate:v5];
  objc_storeStrong(&v5->_debouncer, v6);
  v7 = +[STXPCEventDispatcher notifydEventDispatcher];
  v8 = [v7 registerObserverWithIdentifier:@"com.apple.dmd.iCloudAccount.didChange"];
  accountChangeObserver = v5->_accountChangeObserver;
  v5->_accountChangeObserver = v8;

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100004ECC;
  v32[3] = &unk_1001A2AF8;
  v10 = v6;
  v33 = v10;
  [(STXPCEventObserver *)v5->_accountChangeObserver setHandler:v32];
  v11 = [v7 registerObserverWithIdentifier:FAFamilyUpdateNotification];
  familyChangeObserver = v5->_familyChangeObserver;
  v5->_familyChangeObserver = v11;

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100004F80;
  v30[3] = &unk_1001A2AF8;
  v13 = v10;
  v31 = v13;
  [(STXPCEventObserver *)v5->_familyChangeObserver setHandler:v30];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004F8C;
  handler[3] = &unk_1001A2B20;
  v14 = v13;
  v29 = v14;
  notify_register_dispatch("com.apple.tcc.access.changed", &v5->_TCCAccessChangedNotificationToken, &_dispatch_main_q, handler);
  objc_initWeak(&location, v5);
  v15 = +[NSNotificationCenter defaultCenter];
  v16 = +[NSOperationQueue mainQueue];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100004F98;
  v24 = &unk_1001A2B70;
  objc_copyWeak(&v26, &location);
  v17 = v14;
  v25 = v17;
  v18 = [v15 addObserverForName:CKAccountChangedNotification object:0 queue:v16 usingBlock:&v21];
  cloudKitAccountChangeObserver = v5->_cloudKitAccountChangeObserver;
  v5->_cloudKitAccountChangeObserver = v18;

  [(STAccountStateMonitor *)v5 reloadAccountState:1, v21, v22, v23, v24];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v5;
}

- (void)reloadAccountState:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100005288;
  v3[3] = &unk_1001A2C10;
  v3[4] = self;
  v4 = a3;
  [STUserDescription currentUserWithCompletion:v3];
}

- (STAccountStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end