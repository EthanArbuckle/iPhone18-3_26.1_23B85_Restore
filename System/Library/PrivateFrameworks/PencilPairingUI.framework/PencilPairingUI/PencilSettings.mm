@interface PencilSettings
+ (id)pencilUserDefaults;
+ (id)sharedPencilSettings;
- (PencilSettings)init;
- (id)daemonQueue;
- (void)_dispatchWithErrorHandler:(id)handler successHandler:(id)successHandler;
- (void)_postPencilSettingsDidChangeRemoteNotification;
- (void)loadSettings;
- (void)migrateObsoletedAXOpaqueTouchSetting;
- (void)setAutoRefineEnabled:(BOOL)enabled;
- (void)setPreferredSqueezeAction:(int64_t)action;
- (void)setPreferredTapAction:(int64_t)action;
- (void)syncSettingsToBackboard;
@end

@implementation PencilSettings

+ (id)sharedPencilSettings
{
  if (sharedPencilSettings_onceToken != -1)
  {
    +[PencilSettings sharedPencilSettings];
  }

  v3 = sharedPencilSettings___sharedPencilSettings;

  return v3;
}

uint64_t __38__PencilSettings_sharedPencilSettings__block_invoke()
{
  sharedPencilSettings___sharedPencilSettings = objc_alloc_init(PencilSettings);

  return MEMORY[0x2821F96F8]();
}

+ (id)pencilUserDefaults
{
  if (pencilUserDefaults_onceToken != -1)
  {
    +[PencilSettings pencilUserDefaults];
  }

  v3 = pencilUserDefaults___pencilUserDefaults;

  return v3;
}

uint64_t __36__PencilSettings_pencilUserDefaults__block_invoke()
{
  pencilUserDefaults___pencilUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.UIKit"];

  return MEMORY[0x2821F96F8]();
}

- (PencilSettings)init
{
  v4.receiver = self;
  v4.super_class = PencilSettings;
  v2 = [(PencilSettings *)&v4 init];
  [(PencilSettings *)v2 loadSettings];
  return v2;
}

- (void)syncSettingsToBackboard
{
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "Syncing settings to backboard", v8, 2u);
  }

  v4 = +[BundleControllerHelper sharedInstance];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_preferredTapAction == 0];
  [v4 setOpaqueTouchProperty:@"DoubleTapGestureDisabled" value:v5];

  v6 = +[BundleControllerHelper sharedInstance];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_preferredSqueezeAction == 0];
  [v6 setOpaqueTouchProperty:@"SqueezeGestureDisabled" value:v7];
}

- (void)migrateObsoletedAXOpaqueTouchSetting
{
  if (!_AXSAllowOpaqueTouchGestures())
  {
    v2 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E1BC000, v2, OS_LOG_TYPE_DEFAULT, "Migrating _AXSAllowOpaqueTouchGestures setting.", buf, 2u);
    }

    _AXSSetAllowOpaqueTouchGestures();
    if (_AXSAllowOpaqueTouchGestures())
    {
      v3 = +[PencilSettings pencilUserDefaults];
      [v3 setInteger:0 forKey:*MEMORY[0x277D76DE0]];
    }

    else
    {
      v3 = os_log_create("com.apple.pencilpairingui", "");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "Unable to migrate _AXSAllowOpaqueTouchGestures setting.", v4, 2u);
      }
    }
  }
}

- (void)loadSettings
{
  self->_preferredTapAction = [MEMORY[0x277D75820] preferredTapAction];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    preferredSqueezeAction = [MEMORY[0x277D75820] preferredSqueezeAction];
  }

  else
  {
    preferredSqueezeAction = 0;
  }

  self->_preferredSqueezeAction = preferredSqueezeAction;
}

- (void)setPreferredTapAction:(int64_t)action
{
  if (self->_preferredTapAction != action)
  {
    self->_preferredTapAction = action;
    v5 = +[PencilSettings pencilUserDefaults];
    [v5 setInteger:self->_preferredTapAction forKey:*MEMORY[0x277D76DE0]];

    v6 = +[PencilSettings pencilUserDefaults];
    [v6 synchronize];

    v7 = +[PencilSettingsStatisticsManager sharedInstance];
    [v7 recordSetPencilPerferredAction:self->_preferredTapAction];

    [(PencilSettings *)self syncSettingsToBackboard];
  }
}

- (void)setPreferredSqueezeAction:(int64_t)action
{
  if (self->_preferredSqueezeAction != action)
  {
    self->_preferredSqueezeAction = action;
    v5 = +[PencilSettings pencilUserDefaults];
    [v5 setInteger:self->_preferredSqueezeAction forKey:*MEMORY[0x277D76DD8]];

    v6 = +[PencilSettings pencilUserDefaults];
    [v6 synchronize];

    [(PencilSettings *)self _postPencilSettingsDidChangeRemoteNotification];

    [(PencilSettings *)self syncSettingsToBackboard];
  }
}

- (void)_postPencilSettingsDidChangeRemoteNotification
{
  if (objc_opt_respondsToSelector())
  {
    v2 = MEMORY[0x277CD9650];

    [v2 _postPencilSettingsDidChangeRemoteNotification];
  }
}

- (void)setAutoRefineEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__PencilSettings_setAutoRefineEnabled___block_invoke_36;
  v3[3] = &__block_descriptor_33_e38_v16__0___CHPKRemoteSettingsProtocol__8l;
  enabledCopy = enabled;
  [(PencilSettings *)self _dispatchWithErrorHandler:&__block_literal_global_35 successHandler:v3];
}

void __39__PencilSettings_setAutoRefineEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__PencilSettings_setAutoRefineEnabled___block_invoke_cold_1(v2, v3);
  }
}

void __39__PencilSettings_setAutoRefineEnabled___block_invoke_36(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (*(a1 + 32))
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    v7 = @"UIAutoRefineEnabledKey";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_25E1BC000, v4, OS_LOG_TYPE_INFO, "Setting %@ : %@", &v6, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setGlobalAutoRefineEnabled:*(a1 + 32) withCompletion:&__block_literal_global_47];
  }
}

void __39__PencilSettings_setAutoRefineEnabled___block_invoke_45()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PKRemoteAutoRefineSettingsDidChange", 0, 0, 1u);
}

- (void)_dispatchWithErrorHandler:(id)handler successHandler:(id)successHandler
{
  handlerCopy = handler;
  successHandlerCopy = successHandler;
  daemonQueue = [(PencilSettings *)self daemonQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__PencilSettings__dispatchWithErrorHandler_successHandler___block_invoke;
  v11[3] = &unk_279A0A2D8;
  v12 = handlerCopy;
  v13 = successHandlerCopy;
  v9 = successHandlerCopy;
  v10 = handlerCopy;
  dispatch_async(daemonQueue, v11);
}

void __59__PencilSettings__dispatchWithErrorHandler_successHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.handwritingd.pksettings" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287022158];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __59__PencilSettings__dispatchWithErrorHandler_successHandler___block_invoke_2;
  v9 = &unk_279A0A2B0;
  v10 = *(a1 + 32);
  v11 = &v12;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v6];
  if ((v13[3] & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  [v2 invalidate];

  _Block_object_dispose(&v12, 8);
}

uint64_t __59__PencilSettings__dispatchWithErrorHandler_successHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (id)daemonQueue
{
  if (daemonQueue_onceToken != -1)
  {
    [PencilSettings daemonQueue];
  }

  v3 = daemonQueue_sQueue;

  return v3;
}

uint64_t __29__PencilSettings_daemonQueue__block_invoke()
{
  daemonQueue_sQueue = dispatch_queue_create("com.apple.PencilKit.settingsDaemon", 0);

  return MEMORY[0x2821F96F8]();
}

void __39__PencilSettings_setAutoRefineEnabled___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"UIAutoRefineEnabledKey";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_25E1BC000, a2, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v2, 0x16u);
}

@end