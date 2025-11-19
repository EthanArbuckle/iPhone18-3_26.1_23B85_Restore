@interface _RESignificantTimeChangeNotifier
+ (id)sharedInstance;
- (_RESignificantTimeChangeNotifier)init;
- (void)_notify;
- (void)dealloc;
@end

@implementation _RESignificantTimeChangeNotifier

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[_RESignificantTimeChangeNotifier sharedInstance];
  }

  v3 = sharedInstance_Notifier;

  return v3;
}

- (_RESignificantTimeChangeNotifier)init
{
  v18.receiver = self;
  v18.super_class = _RESignificantTimeChangeNotifier;
  v2 = [(_RESignificantTimeChangeNotifier *)&v18 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __40___RESignificantTimeChangeNotifier_init__block_invoke;
    v15 = &unk_2785F9A90;
    objc_copyWeak(&v16, &location);
    v5 = [REUpNextScheduler schedulerWithQueue:v3 delay:&v12 updateBlock:0.05];
    scheduler = v2->_scheduler;
    v2->_scheduler = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2->_scheduler selector:sel_schedule name:*MEMORY[0x277CBE580] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2->_scheduler selector:sel_schedule name:*MEMORY[0x277CBE778] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2->_scheduler selector:sel_schedule name:*MEMORY[0x277CBE780] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2->_scheduler, _significantTimeChangeForScheduler, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_scheduler];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self->_scheduler, @"SignificantTimeChangeNotification", 0);
  v5.receiver = self;
  v5.super_class = _RESignificantTimeChangeNotifier;
  [(_RESignificantTimeChangeNotifier *)&v5 dealloc];
}

- (void)_notify
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RESignificantTimeChangeNotification" object:0];
}

@end