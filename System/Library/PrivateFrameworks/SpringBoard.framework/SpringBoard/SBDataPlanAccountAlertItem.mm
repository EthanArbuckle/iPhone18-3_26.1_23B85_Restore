@interface SBDataPlanAccountAlertItem
+ (id)laterButtonTitle;
+ (id)nowButtonTitle;
- (SBDataPlanAccountAlertItem)initWithAccountURL:(id)l;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
- (void)takeAction;
@end

@implementation SBDataPlanAccountAlertItem

- (SBDataPlanAccountAlertItem)initWithAccountURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = SBDataPlanAccountAlertItem;
  v5 = [(SBAlertItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBDataPlanAccountAlertItem *)v5 setAccountURL:lCopy];
  }

  return v6;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v6 = [(SBAlertItem *)self alertController:configure];
  if (!configure)
  {
    v7 = MEMORY[0x277D750F8];
    laterButtonTitle = [objc_opt_class() laterButtonTitle];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__SBDataPlanAccountAlertItem_configure_requirePasscodeForActions___block_invoke;
    v14[3] = &unk_2783A8A40;
    v14[4] = self;
    v9 = [v7 actionWithTitle:laterButtonTitle style:0 handler:v14];
    [v6 addAction:v9];

    v10 = MEMORY[0x277D750F8];
    nowButtonTitle = [objc_opt_class() nowButtonTitle];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__SBDataPlanAccountAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v13[3] = &unk_2783A8A40;
    v13[4] = self;
    v12 = [v10 actionWithTitle:nowButtonTitle style:0 handler:v13];
    [v6 addAction:v12];
  }
}

uint64_t __66__SBDataPlanAccountAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = *(a1 + 32);

  return [v2 notNow];
}

uint64_t __66__SBDataPlanAccountAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = *(a1 + 32);

  return [v2 takeAction];
}

- (void)takeAction
{
  v3 = +[SBApplicationController sharedInstance];
  dataActivationApplication = [v3 dataActivationApplication];

  if (dataActivationApplication)
  {
    v5 = +[SBWorkspace mainWorkspace];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SBDataPlanAccountAlertItem_takeAction__block_invoke;
    v6[3] = &unk_2783AAA48;
    v7 = dataActivationApplication;
    selfCopy = self;
    [v5 requestTransitionWithBuilder:v6];
  }
}

void __40__SBDataPlanAccountAlertItem_takeAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SBDataPlanAccountAlertItem_takeAction__block_invoke_2;
  v6[3] = &unk_2783A96A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 modifyApplicationContext:v6];
}

void __40__SBDataPlanAccountAlertItem_takeAction__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  v4 = [*(a1 + 40) accountURL];
  [(SBWorkspaceEntity *)v5 setObject:v4 forActivationSetting:5];

  [v3 setBackground:1];
  [v3 setEntity:v5 forLayoutRole:1];
}

+ (id)laterButtonTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"DATA_PLAN_LATER" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

+ (id)nowButtonTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"DATA_PLAN_NOW" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

@end