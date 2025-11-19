@interface SUSUIMockedSUManagerClient
- (BOOL)createInstallationKeybagWithOptions:(id)a3;
- (BOOL)isInstallationKeybagRequired;
- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)a3;
- (BOOL)securityResponseRollbackSuggested:(id)a3 error:(id *)a4;
- (BOOL)setLastRollbackDescriptor:(id)a3;
- (SUSUIMockedSUManagerClient)initWithDelegate:(id)a3 queue:(id)a4 clientType:(int)a5;
- (id)controllerStrategy;
- (void)areUpdatesDownloadableWithOptions:(id)a3 alternateUpdateOptions:(id)a4 preferredUpdateDownloadable:(BOOL *)a5 alternateUpdateDownloadable:(BOOL *)a6 preferredUpdateError:(id *)a7 alternateUpdateError:(id *)a8;
- (void)autoScanAndDownloadIfAvailable:(id)a3;
- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)currentAutoInstallOperation:(BOOL)a3 withResult:(id)a4;
- (void)currentPasscodePolicy:(id)a3;
- (void)delayEndDate:(id)a3;
- (void)descriptors:(id)a3;
- (void)destroyInstallationKeybag;
- (void)download:(id)a3;
- (void)downloadAndInstallState:(id)a3;
- (void)eligibleRollbackWithOptions:(id)a3 withResult:(id)a4;
- (void)getMandatorySoftwareUpdateDictionary:(id)a3;
- (void)installUpdate:(id)a3;
- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4;
- (void)isAutoUpdateEnabled:(id)a3;
- (void)isAutoUpdateScheduled:(id)a3;
- (void)isClearingSpaceForDownload:(id)a3;
- (void)isDelayingUpdates:(id)a3;
- (void)isDownloading:(id)a3;
- (void)isRollingBack:(id)a3;
- (void)isScanning:(id)a3;
- (void)isUpdateReadyForInstallation:(id)a3;
- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4;
- (void)pauseDownload:(id)a3;
- (void)presentAutoUpdateBanner:(id)a3;
- (void)previousRollbackWithOptions:(id)a3 withResult:(id)a4;
- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)recordSUAnalyticsEvent:(id)a3;
- (void)resumeDownload:(id)a3;
- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4;
- (void)scanForUpdates:(id)a3 withScanResults:(id)a4;
- (void)scheduleRollbackRebootForLater:(id)a3;
- (void)setMandatorySoftwareUpdateDictionary:(id)a3;
- (void)slaVersion:(id)a3;
- (void)softwareUpdatePathRestriction:(id)a3;
- (void)startDownload:(id)a3;
- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4;
- (void)submitSUAnalyticsEvent:(id)a3;
- (void)submitSUAnalyticsEventsWithName:(id)a3;
- (void)updateDownloadOptions:(id)a3 withResult:(id)a4;
- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5;
@end

@implementation SUSUIMockedSUManagerClient

- (SUSUIMockedSUManagerClient)initWithDelegate:(id)a3 queue:(id)a4 clientType:(int)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = a5;
  v5 = v16;
  v16 = 0;
  v12.receiver = v5;
  v12.super_class = SUSUIMockedSUManagerClient;
  v11 = [(SUManagerClient *)&v12 initWithDelegate:location[0] queue:v14 clientType:a5];
  v16 = v11;
  objc_storeStrong(&v16, v11);
  if (v11)
  {
    [(SUManagerClient *)v16 invalidate];
    if (location[0])
    {
      v8 = +[SUSUITestAutomationManager sharedManager];
      [v8 addResponderDelegate:location[0] forServiceType:0];
      MEMORY[0x277D82BD8](v8);
    }
  }

  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v7;
}

- (void)isScanning:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUIMockedSUManagerClient *)v11 controllerStrategy];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__SUSUIMockedSUManagerClient_isScanning___block_invoke;
  v8 = &unk_279CBE6B8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 isScanning:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __41__SUSUIMockedSUManagerClient_isScanning___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __41__SUSUIMockedSUManagerClient_isScanning___block_invoke_2;
    v11 = &unk_279CB95F0;
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = v17 & 1;
    v12 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)scanForUpdates:(id)a3 withScanResults:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(SUSUIMockedSUManagerClient *)v15 controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __61__SUSUIMockedSUManagerClient_scanForUpdates_withScanResults___block_invoke;
  v11 = &unk_279CBE9D0;
  v12 = MEMORY[0x277D82BE0](v13);
  [v6 scanForUpdates:v5 withScanResults:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __61__SUSUIMockedSUManagerClient_scanForUpdates_withScanResults___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  if (a1[4])
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __61__SUSUIMockedSUManagerClient_scanForUpdates_withScanResults___block_invoke_2;
    v12 = &unk_279CB97A8;
    v15[0] = MEMORY[0x277D82BE0](a1[4]);
    v13 = MEMORY[0x277D82BE0](location[0]);
    v14 = MEMORY[0x277D82BE0](v16);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)autoScanAndDownloadIfAvailable:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:0 userInfo:0];
  v3[2](v3, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)isClearingSpaceForDownload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)descriptors:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:0 userInfo:0];
  v3[2](v3, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)isDownloading:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)startDownload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)startDownloadWithOptions:(id)a3 withResult:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(SUSUIMockedSUManagerClient *)v15 controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __66__SUSUIMockedSUManagerClient_startDownloadWithOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [v6 startDownloadWithOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __66__SUSUIMockedSUManagerClient_startDownloadWithOptions_withResult___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __66__SUSUIMockedSUManagerClient_startDownloadWithOptions_withResult___block_invoke_2;
    v11 = &unk_279CB95F0;
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = v17 & 1;
    v12 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)pauseDownload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)resumeDownload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)updateDownloadOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __63__SUSUIMockedSUManagerClient_updateDownloadOptions_withResult___block_invoke;
  v12 = &unk_279CB9438;
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __39__SUSUIMockedSUManagerClient_download___block_invoke;
  v8 = &unk_279CC0428;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(SUSUIMockedSUManagerClient *)v3 downloadAndInstallState:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __39__SUSUIMockedSUManagerClient_download___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  (*(a1[4] + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)downloadAndInstallState:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUIMockedSUManagerClient *)v11 controllerStrategy];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUIMockedSUManagerClient_downloadAndInstallState___block_invoke;
  v8 = &unk_279CC0428;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 downloadAndInstallState:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __54__SUSUIMockedSUManagerClient_downloadAndInstallState___block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21[1] = a1;
  if (a1[4])
  {
    v6 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    queue = v6;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __54__SUSUIMockedSUManagerClient_downloadAndInstallState___block_invoke_2;
    v16 = &unk_279CC0450;
    v21[0] = MEMORY[0x277D82BE0](a1[4]);
    v17 = MEMORY[0x277D82BE0](location[0]);
    v18 = MEMORY[0x277D82BE0](v24);
    v19 = MEMORY[0x277D82BE0](v23);
    v20 = MEMORY[0x277D82BE0](v22);
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v21, 0);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

uint64_t __54__SUSUIMockedSUManagerClient_downloadAndInstallState___block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return (*(a1[8] + 16))(a1[8], a1[4]);
}

- (void)updatesDownloadableWithOptions:(id)a3 alternateDownloadOptions:(id)a4 replyHandler:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v9 = [(SUSUIMockedSUManagerClient *)v18 controllerStrategy];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __99__SUSUIMockedSUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  v13 = &unk_279CC0478;
  v14 = MEMORY[0x277D82BE0](v15);
  [v9 updatesDownloadableWithOptions:v7 alternateDownloadOptions:v8 replyHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __99__SUSUIMockedSUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke(uint64_t a1, char a2, char a3, id obj, void *a5)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)cancelDownloadWithOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)purgeDownloadWithOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)eligibleRollbackWithOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __69__SUSUIMockedSUManagerClient_eligibleRollbackWithOptions_withResult___block_invoke;
  v12 = &unk_279CB9438;
  v13 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)rollbackUpdateWithOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)previousRollbackWithOptions:(id)a3 withResult:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)isRollingBack:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__SUSUIMockedSUManagerClient_isRollingBack___block_invoke;
  v10 = &unk_279CB9438;
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)scheduleRollbackRebootForLater:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (BOOL)setLastRollbackDescriptor:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)securityResponseRollbackSuggested:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)currentAutoInstallOperation:(BOOL)a3 withResult:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  objc_storeStrong(&location, 0);
}

- (void)currentPasscodePolicy:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)isAutoUpdateEnabled:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)isAutoUpdateScheduled:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__SUSUIMockedSUManagerClient_isAutoUpdateScheduled___block_invoke;
  v10 = &unk_279CB9438;
  v11 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)presentAutoUpdateBanner:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)isUpdateReadyForInstallation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  [(SUSUIMockedSUManagerClient *)v4 isUpdateReadyForInstallationWithOptions:0 withResult:location[0]];
  objc_storeStrong(location, 0);
}

- (void)isUpdateReadyForInstallationWithOptions:(id)a3 withResult:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(SUSUIMockedSUManagerClient *)v15 controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __81__SUSUIMockedSUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [v6 isUpdateReadyForInstallationWithOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __81__SUSUIMockedSUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __81__SUSUIMockedSUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke_2;
    v11 = &unk_279CB95F0;
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = v17 & 1;
    v12 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)installUpdate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)installUpdateWithInstallOptions:(id)a3 withResult:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(SUSUIMockedSUManagerClient *)v15 controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__SUSUIMockedSUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [v6 installUpdateWithInstallOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __73__SUSUIMockedSUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __73__SUSUIMockedSUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke_2;
    v11 = &unk_279CB95F0;
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14 = v17 & 1;
    v12 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)isInstallationKeybagRequired
{
  v3 = [(SUSUIMockedSUManagerClient *)self controllerStrategy];
  v4 = [v3 isInstallationKeybagRequiredForDescriptor:0];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUSUIMockedSUManagerClient *)v7 controllerStrategy];
  v5 = [v4 isInstallationKeybagRequiredForDescriptor:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)createInstallationKeybagWithOptions:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUSUIMockedSUManagerClient *)v7 controllerStrategy];
  v5 = [v4 createInstallationKeybagWithOptions:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)destroyInstallationKeybag
{
  v2 = [(SUSUIMockedSUManagerClient *)self controllerStrategy];
  [v2 destroyInstallationKeybag];
  MEMORY[0x277D82BD8](v2);
}

- (void)slaVersion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = SUSUIMockedSUManagerClient;
  [(SUManagerClient *)&v3 slaVersion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)softwareUpdatePathRestriction:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)isDelayingUpdates:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)delayEndDate:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)setMandatorySoftwareUpdateDictionary:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)getMandatorySoftwareUpdateDictionary:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)areUpdatesDownloadableWithOptions:(id)a3 alternateUpdateOptions:(id)a4 preferredUpdateDownloadable:(BOOL *)a5 alternateUpdateDownloadable:(BOOL *)a6 preferredUpdateError:(id *)a7 alternateUpdateError:(id *)a8
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  v45 = a5;
  v44 = a6;
  v43 = a7;
  v42 = a8;
  v37 = 0;
  v38 = &v37;
  v39 = 0x20000000;
  v40 = 32;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x20000000;
  v35 = 32;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 838860800;
  v28 = 48;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 838860800;
  v21 = 48;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v12 = [(SUSUIMockedSUManagerClient *)v48 controllerStrategy];
  [v12 updatesDownloadableWithOptions:location[0] alternateDownloadOptions:v46 replyHandler:?];
  MEMORY[0x277D82BD8](v12);
  if (v45)
  {
    *v45 = v38[3] & 1;
  }

  if (v44)
  {
    *v44 = v33[3] & 1;
  }

  if (v43)
  {
    v11 = v26[5];
    v8 = v11;
    *v43 = v11;
  }

  if (v42)
  {
    v10 = v19[5];
    v9 = v10;
    *v42 = v10;
  }

  _Block_object_dispose(&v18, 8);
  objc_storeStrong(&v24, 0);
  _Block_object_dispose(&v25, 8);
  objc_storeStrong(&v31, 0);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v37, 8);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

void __185__SUSUIMockedSUManagerClient_areUpdatesDownloadableWithOptions_alternateUpdateOptions_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateError_alternateUpdateError___block_invoke(void *a1, char a2, char a3, id obj, void *a5)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  *(*(a1[4] + 8) + 24) = v10 & 1;
  *(*(a1[5] + 8) + 24) = v9 & 1;
  objc_storeStrong((*(a1[6] + 8) + 40), location);
  objc_storeStrong((*(a1[7] + 8) + 40), v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

- (void)recordSUAnalyticsEvent:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEvent:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEventsWithName:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (id)controllerStrategy
{
  v20 = *MEMORY[0x277D85DE8];
  v17[2] = self;
  v17[1] = a2;
  v12 = +[SUSUITestAutomationManager sharedManager];
  v11 = [v12 currentSession];
  v17[0] = [v11 strategyForServiceType:0];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  getSUSMKSoftwareUpdateServicesStrategyBaseClass_1();
  if (objc_opt_isKindOfClass())
  {
    v18 = MEMORY[0x277D82BE0](v17[0]);
  }

  else
  {
    v16 = _SUSUIInternalLoggingFacility();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v10 = +[SUSUITestAutomationManager sharedManager];
      v9 = [v10 currentSession];
      v8 = [v9 correlationId];
      v5 = MEMORY[0x277D82BE0](v8);
      v14 = v5;
      v2 = objc_opt_class();
      v13 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_64_8_64(v19, v5, v13);
      _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] The strategy class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyBase.", v19, 0x16u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    v18 = 0;
  }

  objc_storeStrong(v17, 0);
  *MEMORY[0x277D85DE8];
  v3 = v18;

  return v3;
}

@end