@interface PowerUILPMNotifier
+ (id)sharedInstance;
- (PowerUILPMNotifier)init;
- (id)autoDisabledNotificationRequest;
- (void)displayAutoDisabledNotification;
- (void)displayFirstUseNotification;
- (void)removeAutoDisabledNotification;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation PowerUILPMNotifier

- (PowerUILPMNotifier)init
{
  v15.receiver = self;
  v15.super_class = PowerUILPMNotifier;
  v2 = [(PowerUILPMNotifier *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.lpm.firstusenotifyqueue", 0);
    firstUseQueue = v2->_firstUseQueue;
    v2->_firstUseQueue = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
    v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
    bundle = v2->_bundle;
    v2->_bundle = v6;

    v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerui.lowpowermode"];
    userNotificationCenter = v2->_userNotificationCenter;
    v2->_userNotificationCenter = v8;

    [(UNUserNotificationCenter *)v2->_userNotificationCenter setWantsNotificationResponsesDelivered];
    [(UNUserNotificationCenter *)v2->_userNotificationCenter setDelegate:v2];
    notify_register_check("com.apple.system.lowpowermode", &v2->_bsmToken);
    out_token = 0;
    v10 = v2->_firstUseQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__PowerUILPMNotifier_init__block_invoke;
    v12[3] = &unk_2782D3E60;
    v13 = v2;
    notify_register_dispatch("com.apple.powerui.testdisplayautodisablednotification", &out_token, v10, v12);
  }

  return v2;
}

- (void)displayAutoDisabledNotification
{
  autoDisabledNotificationRequest = [(PowerUILPMNotifier *)self autoDisabledNotificationRequest];
  [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:autoDisabledNotificationRequest withCompletionHandler:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PowerUILPMNotifier sharedInstance];
  }

  v3 = sharedInstance_notifier;

  return v3;
}

uint64_t __36__PowerUILPMNotifier_sharedInstance__block_invoke()
{
  sharedInstance_notifier = objc_alloc_init(PowerUILPMNotifier);

  return MEMORY[0x2821F96F8]();
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  if (actionIdentifier)
  {
    v8 = actionIdentifier;
    actionIdentifier2 = [responseCopy actionIdentifier];
    v10 = [actionIdentifier2 compare:@"reenable"];

    if (!v10)
    {
      mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
      [mEMORY[0x277D244D8] setPowerMode:1 fromSource:*MEMORY[0x277D244E8]];
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)autoDisabledNotificationRequest
{
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v3 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"AUTO_DISABLE_TITLE" arguments:0];
  [v2 setTitle:v3];

  v4 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"AUTO_DISABLE_BODY" arguments:0];
  [v2 setBody:v4];

  [v2 setCategoryIdentifier:@"auto-disable"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
  [v2 setDefaultActionURL:v5];

  v6 = MEMORY[0x277CE1FC0];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 requestWithIdentifier:uUIDString content:v2 trigger:0];

  return v9;
}

- (void)removeAutoDisabledNotification
{
  if (notify_is_valid_token(self->_bsmToken))
  {
    state64 = 0;
    if (notify_get_state(self->_bsmToken, &state64))
    {
      v3 = 1;
    }

    else
    {
      v3 = state64 == 0;
    }

    if (!v3)
    {
      [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllDeliveredNotifications];
    }
  }
}

- (void)displayFirstUseNotification
{
  firstUseQueue = self->_firstUseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PowerUILPMNotifier_displayFirstUseNotification__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(firstUseQueue, block);
}

void __49__PowerUILPMNotifier_displayFirstUseNotification__block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  v5 = 0;
  v3 = [*(*(a1 + 32) + 24) localizedStringForKey:@"FIRST_NOTIFY_BODY" value:&stru_282D0B728 table:@"PowerUI"];
  CFUserNotificationDisplayAlert(0.0, 0x40uLL, 0, 0, 0, [*(*(a1 + 32) + 24) localizedStringForKey:@"FIRST_NOTIFY_TITLE" value:&stru_282D0B728 table:@"PowerUI"], v3, objc_msgSend(*(*(a1 + 32) + 24), "localizedStringForKey:value:table:", @"FIRST_NOTIFY_CONTINUE", &stru_282D0B728, @"PowerUI"), objc_msgSend(*(*(a1 + 32) + 24), "localizedStringForKey:value:table:", @"FIRST_NOTIFY_CANCEL", &stru_282D0B728, @"PowerUI"), 0, &v5);
  if (v5)
  {
    v4 = [MEMORY[0x277D244D8] sharedInstance];
    [v4 setPowerMode:0 fromSource:*MEMORY[0x277D244E8]];
  }
}

@end