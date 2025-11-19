@interface WLDaemonController
+ (id)sharedInstance;
- (WLDaemonController)init;
- (void)getLocalImportOptionsWithCompletion:(id)a3;
- (void)importLocalContent;
@end

@implementation WLDaemonController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WLDaemonController sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __36__WLDaemonController_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(WLDaemonController);

  return MEMORY[0x2821F96F8]();
}

- (WLDaemonController)init
{
  v5.receiver = self;
  v5.super_class = WLDaemonController;
  v2 = [(WLDaemonController *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(WLDaemonConnection);
    [(WLDaemonController *)v2 setConnection:v3];
  }

  return v2;
}

- (void)getLocalImportOptionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WLDaemonController *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__WLDaemonController_getLocalImportOptionsWithCompletion___block_invoke;
  v11[3] = &unk_279EB40D8;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 daemonWithErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__WLDaemonController_getLocalImportOptionsWithCompletion___block_invoke_2;
  v9[3] = &unk_279EB4100;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 getLocalImportOptions:v9];
}

void __58__WLDaemonController_getLocalImportOptionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x277D85DE8];
  _WLLog(v8, 0, @"%@: XPC error attempting to get local import options - %@", a4, a5, a6, a7, a8, *(a1 + 32));
  v10 = *(a1 + 40);
  v11 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = @"Daemon interrupted";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.welcomekit" code:1 userInfo:v12];
  (*(v10 + 16))(v10, 0, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __58__WLDaemonController_getLocalImportOptionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  v6 = (*(*(a1 + 40) + 16))();
  if (v13)
  {
    _WLLog(v4, 0, @"%@: Error from daemon get local import options - %@", v7, v8, v9, v10, v11, *(a1 + 32));
  }

  return MEMORY[0x2821F96F8](v6);
}

- (void)importLocalContent
{
  v3 = [(WLDaemonController *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__WLDaemonController_importLocalContent__block_invoke;
  v5[3] = &unk_279EB4128;
  v5[4] = self;
  v4 = [v3 daemonWithErrorHandler:v5];

  [v4 importLocalContent];
}

@end