@interface WLKBackgroundUpdateController
+ (id)sharedInstance;
- (WLKBackgroundUpdateController)init;
- (id)_init;
- (void)dealloc;
@end

@implementation WLKBackgroundUpdateController

+ (id)sharedInstance
{
  if (sharedInstance___once_1 != -1)
  {
    +[WLKBackgroundUpdateController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __47__WLKBackgroundUpdateController_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = [[WLKBackgroundUpdateController alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (WLKBackgroundUpdateController)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKBackgroundUpdateControllerInitException" format:@"-init is not supported. Use +sharedInstance."];

  return 0;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = WLKBackgroundUpdateController;
  v2 = [(WLKBackgroundUpdateController *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__WLKBackgroundUpdateController__init__block_invoke;
    v6[3] = &unk_279E5EA18;
    objc_copyWeak(&v7, &location);
    LODWORD(v3) = notify_register_dispatch("com.apple.WatchListKit.background-update-requested", &v2->_notifyToken, v3, v6);

    v2->_notifyTokenIsValid = v3 == 0;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __38__WLKBackgroundUpdateController__init__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_GotBackgroundU.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    NSLog(&cfstr_PostingWlkback.isa);
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"WLKBackgroundUpdateRequestedNotification" object:v4];

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  if (self->_notifyTokenIsValid)
  {
    notify_cancel(self->_notifyToken);
  }

  v3.receiver = self;
  v3.super_class = WLKBackgroundUpdateController;
  [(WLKBackgroundUpdateController *)&v3 dealloc];
}

@end