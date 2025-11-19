@interface SUSUIMockedTipsManager
+ (id)sharedManager;
- (SUSUIMockedTipsManager)init;
- (void)contentDidBecomeAvailableWithTitle:(id)a3 andContent:(id)a4 learnMoreLinkUrl:(id)a5 imageSystemName:(id)a6;
@end

@implementation SUSUIMockedTipsManager

+ (id)sharedManager
{
  v5 = &sharedManager_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_4);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __39__SUSUIMockedTipsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SUSUIMockedTipsManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (SUSUIMockedTipsManager)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = SUSUIMockedTipsManager;
  v6 = [(SUSettingsTipsManager *)&v4 init];
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)contentDidBecomeAvailableWithTitle:(id)a3 andContent:(id)a4 learnMoreLinkUrl:(id)a5 imageSystemName:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = 0;
  objc_storeStrong(&v17, a6);
  v16 = _SUSUIInternalLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v14 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_5_8_64_8_66_8_66_8_66_8_66(v22, v14, location[0], v19, v18, v17);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] XCUI Testing - Displaying Coming Soon Tip:\n\tTitle: %{public}@\n\tContent: %{public}@\n\tLearn More URL: %{public}@\n\tImage System Name: %{public}@", v22, 0x34u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  [(SUSettingsTipsManager *)v21 configureManualComingSoonTipWithTitle:location[0] andContent:v19 learnMoreLink:v18 imageSystemName:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end