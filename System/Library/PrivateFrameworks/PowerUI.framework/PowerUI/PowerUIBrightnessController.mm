@interface PowerUIBrightnessController
+ (id)sharedInstance;
- (PowerUIBrightnessController)init;
- (void)engageMitigation;
- (void)resetMitigation;
- (void)start;
@end

@implementation PowerUIBrightnessController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[PowerUIBrightnessController sharedInstance];
  }

  v3 = sharedInstance_brightnessController;

  return v3;
}

uint64_t __45__PowerUIBrightnessController_sharedInstance__block_invoke()
{
  sharedInstance_brightnessController = objc_alloc_init(PowerUIBrightnessController);

  return MEMORY[0x2821F96F8]();
}

- (PowerUIBrightnessController)init
{
  v9.receiver = self;
  v9.super_class = PowerUIBrightnessController;
  v2 = [(PowerUIBrightnessController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.powerui.brightnessController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.powerui", "brightnessController");
    log = v2->_log;
    v2->_log = v6;
  }

  return v2;
}

- (void)start
{
  v3 = objc_opt_new();
  bClient = self->_bClient;
  self->_bClient = v3;

  MEMORY[0x2821F96F8]();
}

- (void)resetMitigation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PowerUIBrightnessController_resetMitigation__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __46__PowerUIBrightnessController_resetMitigation__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    [*(v1 + 32) setProperty:&unk_282D4F060 forKey:@"EcoModeFactorUpdate"];
    result = [*(*(v2 + 32) + 32) setProperty:MEMORY[0x277CBEC28] forKey:@"EcoMode"];
    v1 = *(v2 + 32);
  }

  *(v1 + 8) = 0;
  return result;
}

- (void)engageMitigation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PowerUIBrightnessController_engageMitigation__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __47__PowerUIBrightnessController_engageMitigation__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) copyPropertyForKey:@"DisplayBrightness"];
  v3 = [v2 objectForKeyedSubscript:@"Brightness"];

  v4 = *(a1 + 32);
  if (!v3)
  {
    v9 = [v4 log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __47__PowerUIBrightnessController_engageMitigation__block_invoke_cold_1(v9);
    }

    goto LABEL_18;
  }

  if ((*(v4 + 8) & 1) == 0)
  {
    *(v4 + 8) = 1;
    v4 = *(a1 + 32);
  }

  v5 = [*(v4 + 32) setProperty:&unk_282D4F070 forKey:@"EcoModeFactorUpdate"];
  v6 = [*(a1 + 32) log];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v15 = 138412290;
    v16 = &unk_282D4F070;
    v8 = "Success: Setting brightness reduction factor to %@";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v15 = 138412290;
    v16 = &unk_282D4F070;
    v8 = "Failed: Setting brightness reduction factor to %@";
  }

  _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);
LABEL_12:

  v10 = MEMORY[0x277CBEC38];
  v11 = [*(*(a1 + 32) + 32) setProperty:MEMORY[0x277CBEC38] forKey:@"EcoMode"];
  v9 = [*(a1 + 32) log];
  v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      v15 = 138412290;
      v16 = v10;
      v13 = "Success: Setting EcodMode to %@";
LABEL_17:
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
    }
  }

  else if (v12)
  {
    v15 = 138412290;
    v16 = v10;
    v13 = "Failed: Setting EcodMode to %@";
    goto LABEL_17;
  }

LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
}

@end