@interface SBGenerateLaunchSnapshotsAlertItem
- (SBGenerateLaunchSnapshotsAlertItem)initWithHandler:(id)a3;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
- (void)regenerateApplications:(id)a3;
@end

@implementation SBGenerateLaunchSnapshotsAlertItem

- (SBGenerateLaunchSnapshotsAlertItem)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBGenerateLaunchSnapshotsAlertItem;
  v5 = [(SBAlertItem *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x223D6F7F0](v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v5 = [(SBAlertItem *)self alertController:a3];
  [v5 setPreferredStyle:0];
  [v5 setTitle:@"Select Application Type"];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 _splashBoardController];
  v8 = [v7 applicationProvider];
  v9 = MEMORY[0x277D750F8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke;
  v25[3] = &unk_2783A8A18;
  v25[4] = self;
  v10 = v8;
  v26 = v10;
  v11 = [v9 actionWithTitle:@"System" style:0 handler:v25];
  [v5 addAction:v11];

  v12 = MEMORY[0x277D750F8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v22[3] = &unk_2783A8A18;
  v13 = v10;
  v23 = v13;
  v24 = self;
  v14 = [v12 actionWithTitle:@"User" style:0 handler:v22];
  [v5 addAction:v14];

  v15 = MEMORY[0x277D750F8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_4;
  v20[3] = &unk_2783A8A18;
  v20[4] = self;
  v21 = v13;
  v16 = v13;
  v17 = [v15 actionWithTitle:@"All" style:2 handler:v20];
  [v5 addAction:v17];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_5;
  v19[3] = &unk_2783A8A40;
  v19[4] = self;
  v18 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:1 handler:v19];
  [v5 addAction:v18];
}

void __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) splashBoardSystemApplications];
  [v1 regenerateApplications:v2];
}

void __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allSplashBoardApplications];
  v3 = [v2 bs_filter:&__block_literal_global_24];

  [*(a1 + 40) regenerateApplications:v3];
}

void __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allSplashBoardApplications];
  [v1 regenerateApplications:v2];
}

uint64_t __74__SBGenerateLaunchSnapshotsAlertItem_configure_requirePasscodeForActions___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) deactivate];
  v2 = *(*(*(a1 + 32) + 112) + 16);

  return v2();
}

- (void)regenerateApplications:(id)a3
{
  v4 = a3;
  [(SBAlertItem *)self deactivate];
  v5 = objc_alloc_init(SBLaunchSnapshotWaitingAlertItem);
  [MEMORY[0x277D67938] activateAlertItem:v5];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 _splashBoardController];
  [v7 removeCachedLaunchImagesForApplications:v4 forgettingApps:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBGenerateLaunchSnapshotsAlertItem_regenerateApplications___block_invoke;
  v9[3] = &unk_2783A92D8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [v7 captureOrUpdateLaunchImagesForApplications:v4 firstImageIsReady:0 completion:v9];
}

void __61__SBGenerateLaunchSnapshotsAlertItem_regenerateApplications___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SBGenerateLaunchSnapshotsAlertItem_regenerateApplications___block_invoke_2;
  v4[3] = &unk_2783A92D8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

uint64_t __61__SBGenerateLaunchSnapshotsAlertItem_regenerateApplications___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivate];
  v2 = *(*(*(a1 + 40) + 112) + 16);

  return v2();
}

@end