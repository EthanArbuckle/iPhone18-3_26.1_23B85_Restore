@interface SPUIAppService
+ (id)sharedAppService;
+ (void)initialize;
- (SPUIAppService)init;
- (void)_cancelAwakeNotifyToken;
- (void)activate;
- (void)deactivate;
- (void)init;
- (void)registerAwakeNotifyToken;
@end

@implementation SPUIAppService

- (void)activate
{
  if (!self->_activated)
  {
    self->_activated = 1;
    appServiceQueue = self->_appServiceQueue;
    v4 = qos_class_self();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__SPUIAppService_activate__block_invoke;
    block[3] = &unk_279D052A0;
    block[4] = self;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
    dispatch_async(appServiceQueue, v5);
  }
}

void __26__SPUIAppService_activate__block_invoke(uint64_t a1)
{
  v2 = SPFastApplicationsGetNoBuild();
  v3 = SPFastHiddenAppsGetNoBuild();
  v4 = prepareApps(v2, v3);
  v5 = [objc_alloc(MEMORY[0x277D4BEE0]) initWithName:@"Activate"];
  v6 = v5;
  v7 = MEMORY[0x277CBEC10];
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  [v5 setRootObject:v8];
  [v6 setInfo:v7];
  [*(*(a1 + 32) + 32) sendMessage:v6 withReply:&__block_literal_global_33];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __26__SPUIAppService_activate__block_invoke_cold_1();
  }
}

+ (void)initialize
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  runningInSpotlight = [bundleIdentifier isEqualToString:@"com.apple.springboard"];
}

+ (id)sharedAppService
{
  if (sharedAppService_onceToken != -1)
  {
    +[SPUIAppService sharedAppService];
  }

  v3 = sharedAppService_sAppService;

  return v3;
}

uint64_t __34__SPUIAppService_sharedAppService__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedAppService_sAppService;
  sharedAppService_sAppService = v0;

  v2 = sharedAppService_sAppService;

  return [v2 registerAwakeNotifyToken];
}

- (void)_cancelAwakeNotifyToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  awakeNotifyToken = selfCopy->_awakeNotifyToken;
  selfCopy->_awakeNotifyToken = -1;
  objc_sync_exit(selfCopy);

  if (awakeNotifyToken != -1)
  {

    notify_cancel(awakeNotifyToken);
  }
}

- (void)registerAwakeNotifyToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  awakeNotifyToken = selfCopy->_awakeNotifyToken;
  if (awakeNotifyToken != -1)
  {
    notify_cancel(awakeNotifyToken);
  }

  out_token = -1;
  appServiceQueue = selfCopy->_appServiceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SPUIAppService_registerAwakeNotifyToken__block_invoke;
  v7[3] = &unk_279D05250;
  v7[4] = selfCopy;
  v5 = notify_register_dispatch("com.apple.searchd.launched", &out_token, appServiceQueue, v7);
  v6 = out_token;
  if (v5)
  {
    v6 = -1;
  }

  selfCopy->_awakeNotifyToken = v6;
  objc_sync_exit(selfCopy);
}

void __42__SPUIAppService_registerAwakeNotifyToken__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26B824000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Got index agent wakeup notification!", buf, 2u);
  }

  v2 = MKBGetDeviceLockState();
  if (!v2 || v2 == 3 || unlocked == 1)
  {
    unlocked = 1;
    if (runningInSpotlight == 1)
    {
      v3 = *(*(a1 + 32) + 24);
      v4 = *(*(a1 + 32) + 16);
      v5 = v3;
      kdebug_trace();
      v6 = SPFastApplicationsGetNoBuild();
      v7 = SPFastHiddenAppsGetNoBuild();
      sendAppsInfoWithData(v5, v6, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_26B824000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Got index agent wakeup notification in locked state!", v9, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), lockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (SPUIAppService)init
{
  v16.receiver = self;
  v16.super_class = SPUIAppService;
  v2 = [(SPUIAppService *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_awakeNotifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.searchd.appservice", v5);
    appServiceQueue = v3->_appServiceQueue;
    v3->_appServiceQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277D4BED8]) initWithServiceName:@"com.apple.searchd.background" onQueue:v3->_appServiceQueue];
    backgroundConnection = v3->_backgroundConnection;
    v3->_backgroundConnection = v8;

    v10 = [objc_alloc(MEMORY[0x277D4BED8]) initWithServiceName:@"com.apple.searchd" onQueue:v3->_appServiceQueue];
    appConnection = v3->_appConnection;
    v3->_appConnection = v10;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [(SPUIAppService *)&v3->_backgroundConnection init];
    }

    if (runningInSpotlight == 1)
    {
      v12 = v3->_appServiceQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __22__SPUIAppService_init__block_invoke;
      block[3] = &unk_279D052A0;
      v15 = v3;
      dispatch_async(v12, block);
    }
  }

  return v3;
}

void __22__SPUIAppService_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  SPSetAppUpdateBlock();
  v1 = SPFastApplicationsGet();
}

void __26__SPUIAppService_activate__block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __26__SPUIAppService_activate__block_invoke_2_cold_1();
  }
}

- (void)deactivate
{
  if (self->_activated)
  {
    block[7] = v2;
    block[8] = v3;
    self->_activated = 0;
    appServiceQueue = self->_appServiceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__SPUIAppService_deactivate__block_invoke;
    block[3] = &unk_279D052A0;
    block[4] = self;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
    dispatch_async(appServiceQueue, v5);
  }
}

void __28__SPUIAppService_deactivate__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D4BEE0]) initWithName:@"Deactivate"];
  [v2 setInfo:0];
  [v2 setRootObject:0];
  [*(*(a1 + 32) + 32) sendMessage:v2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __28__SPUIAppService_deactivate__block_invoke_cold_1();
  }
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end