@interface SUSettingsTipsManager
+ (id)sharedManager;
- (SUSettingsTipsManager)init;
- (void)configureManualComingSoonTipWithTitle:(id)a3 andContent:(id)a4 learnMoreLink:(id)a5 imageSystemName:(id)a6;
- (void)setup:(BOOL)a3;
@end

@implementation SUSettingsTipsManager

+ (id)sharedManager
{
  v5 = &sharedManager_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_3);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedManager_sharedInstance;

  return v2;
}

double __38__SUSettingsTipsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SUSettingsTipsManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

- (SUSettingsTipsManager)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = SUSettingsTipsManager;
  v6 = [(SUSettingsTipsManager *)&v4 init];
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)setup:(BOOL)a3
{
  v3 = +[SUSettingsSwiftTipsManager sharedManager];
  [(SUSettingsSwiftTipsManager *)v3 setupForManualControl:a3];
  MEMORY[0x277D82BD8](v3);
}

- (void)configureManualComingSoonTipWithTitle:(id)a3 andContent:(id)a4 learnMoreLink:(id)a5 imageSystemName:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  v9 = +[SUSettingsSwiftTipsManager sharedManager];
  [(SUSettingsSwiftTipsManager *)v9 configureManualComingSoonTipWithTitle:location[0] andContent:v12 learnMoreLink:v11 imageSystemName:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end