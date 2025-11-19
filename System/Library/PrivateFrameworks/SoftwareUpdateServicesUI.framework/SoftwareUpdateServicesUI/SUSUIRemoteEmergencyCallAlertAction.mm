@interface SUSUIRemoteEmergencyCallAlertAction
- (SUSUIRemoteEmergencyCallAlertAction)initWithCompletionBlock:(id)a3;
- (void)fireCompletionIfNecessaryForResult:(BOOL)a3;
@end

@implementation SUSUIRemoteEmergencyCallAlertAction

- (SUSUIRemoteEmergencyCallAlertAction)initWithCompletionBlock:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v16;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v7 = v5;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __63__SUSUIRemoteEmergencyCallAlertAction_initWithCompletionBlock___block_invoke;
  v13 = &unk_279CB3AE0;
  v14 = MEMORY[0x277D82BE0](location[0]);
  v16 = 0;
  v9.receiver = v6;
  v9.super_class = SUSUIRemoteEmergencyCallAlertAction;
  v16 = [(SUSUIRemoteEmergencyCallAlertAction *)&v9 initWithInfo:0 timeout:v7 forResponseOnQueue:0.0 withHandler:?];
  objc_storeStrong(&v16, v16);
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v8;
}

void __63__SUSUIRemoteEmergencyCallAlertAction_initWithCompletionBlock___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] info];
  [v2 flagForSetting:SUSUIEmergencyCallAlertActionOutputSuccess];
  BSSettingFlagIsYes();
  MEMORY[0x277D82BD8](v2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)fireCompletionIfNecessaryForResult:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  if (([(SUSUIRemoteEmergencyCallAlertAction *)self canSendResponse]& 1) != 0)
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
    [v5 setFlag:BSSettingFlagForBool() forSetting:SUSUIEmergencyCallAlertActionOutputSuccess];
    v3 = v8;
    v4 = [MEMORY[0x277CF0B68] responseWithInfo:v5];
    [(SUSUIRemoteEmergencyCallAlertAction *)v3 sendResponse:?];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v5, 0);
  }
}

@end