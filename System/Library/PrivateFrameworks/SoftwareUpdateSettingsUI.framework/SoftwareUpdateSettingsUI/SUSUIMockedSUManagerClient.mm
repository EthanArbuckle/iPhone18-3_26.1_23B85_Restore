@interface SUSUIMockedSUManagerClient
- (BOOL)createInstallationKeybagWithOptions:(id)options;
- (BOOL)isInstallationKeybagRequired;
- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)descriptor;
- (BOOL)securityResponseRollbackSuggested:(id)suggested error:(id *)error;
- (BOOL)setLastRollbackDescriptor:(id)descriptor;
- (SUSUIMockedSUManagerClient)initWithDelegate:(id)delegate queue:(id)queue clientType:(int)type;
- (id)controllerStrategy;
- (void)areUpdatesDownloadableWithOptions:(id)options alternateUpdateOptions:(id)updateOptions preferredUpdateDownloadable:(BOOL *)downloadable alternateUpdateDownloadable:(BOOL *)updateDownloadable preferredUpdateError:(id *)error alternateUpdateError:(id *)updateError;
- (void)autoScanAndDownloadIfAvailable:(id)available;
- (void)cancelDownloadWithOptions:(id)options withResult:(id)result;
- (void)currentAutoInstallOperation:(BOOL)operation withResult:(id)result;
- (void)currentPasscodePolicy:(id)policy;
- (void)delayEndDate:(id)date;
- (void)descriptors:(id)descriptors;
- (void)destroyInstallationKeybag;
- (void)download:(id)download;
- (void)downloadAndInstallState:(id)state;
- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)installUpdate:(id)update;
- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result;
- (void)isAutoUpdateEnabled:(id)enabled;
- (void)isAutoUpdateScheduled:(id)scheduled;
- (void)isClearingSpaceForDownload:(id)download;
- (void)isDelayingUpdates:(id)updates;
- (void)isDownloading:(id)downloading;
- (void)isRollingBack:(id)back;
- (void)isScanning:(id)scanning;
- (void)isUpdateReadyForInstallation:(id)installation;
- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result;
- (void)pauseDownload:(id)download;
- (void)presentAutoUpdateBanner:(id)banner;
- (void)previousRollbackWithOptions:(id)options withResult:(id)result;
- (void)purgeDownloadWithOptions:(id)options withResult:(id)result;
- (void)recordSUAnalyticsEvent:(id)event;
- (void)resumeDownload:(id)download;
- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)scheduleRollbackRebootForLater:(id)later;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)slaVersion:(id)version;
- (void)softwareUpdatePathRestriction:(id)restriction;
- (void)startDownload:(id)download;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)submitSUAnalyticsEvent:(id)event;
- (void)submitSUAnalyticsEventsWithName:(id)name;
- (void)updateDownloadOptions:(id)options withResult:(id)result;
- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler;
@end

@implementation SUSUIMockedSUManagerClient

- (SUSUIMockedSUManagerClient)initWithDelegate:(id)delegate queue:(id)queue clientType:(int)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v14 = 0;
  objc_storeStrong(&v14, queue);
  typeCopy = type;
  v5 = selfCopy;
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = SUSUIMockedSUManagerClient;
  v11 = [(SUManagerClient *)&v12 initWithDelegate:location[0] queue:v14 clientType:type];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    [(SUManagerClient *)selfCopy invalidate];
    if (location[0])
    {
      v8 = +[SUSUITestAutomationManager sharedManager];
      [v8 addResponderDelegate:location[0] forServiceType:0];
      MEMORY[0x277D82BD8](v8);
    }
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)isScanning:(id)scanning
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scanning);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__SUSUIMockedSUManagerClient_isScanning___block_invoke;
  v8 = &unk_279CBE6B8;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [controllerStrategy isScanning:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  v13 = 0;
  objc_storeStrong(&v13, results);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __61__SUSUIMockedSUManagerClient_scanForUpdates_withScanResults___block_invoke;
  v11 = &unk_279CBE9D0;
  v12 = MEMORY[0x277D82BE0](v13);
  [controllerStrategy scanForUpdates:v5 withScanResults:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)autoScanAndDownloadIfAvailable:(id)available
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, available);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:0 userInfo:0];
  v3[2](v3, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)isClearingSpaceForDownload:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)descriptors:(id)descriptors
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptors);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:0 userInfo:0];
  v3[2](v3, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)isDownloading:(id)downloading
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  objc_storeStrong(location, 0);
}

- (void)startDownload:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  objc_storeStrong(location, 0);
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v13 = 0;
  objc_storeStrong(&v13, result);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __66__SUSUIMockedSUManagerClient_startDownloadWithOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [controllerStrategy startDownloadWithOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)pauseDownload:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  objc_storeStrong(location, 0);
}

- (void)resumeDownload:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  objc_storeStrong(location, 0);
}

- (void)updateDownloadOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, result);
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

- (void)download:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v3 = selfCopy;
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

- (void)downloadAndInstallState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__SUSUIMockedSUManagerClient_downloadAndInstallState___block_invoke;
  v8 = &unk_279CC0428;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [controllerStrategy downloadAndInstallState:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)updatesDownloadableWithOptions:(id)options alternateDownloadOptions:(id)downloadOptions replyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v16 = 0;
  objc_storeStrong(&v16, downloadOptions);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __99__SUSUIMockedSUManagerClient_updatesDownloadableWithOptions_alternateDownloadOptions_replyHandler___block_invoke;
  v13 = &unk_279CC0478;
  v14 = MEMORY[0x277D82BE0](v15);
  [controllerStrategy updatesDownloadableWithOptions:v7 alternateDownloadOptions:v8 replyHandler:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)cancelDownloadWithOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, result);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)purgeDownloadWithOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, result);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)eligibleRollbackWithOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v14 = 0;
  objc_storeStrong(&v14, result);
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

- (void)rollbackUpdateWithOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, result);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)previousRollbackWithOptions:(id)options withResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v5 = 0;
  objc_storeStrong(&v5, result);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)isRollingBack:(id)back
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, back);
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

- (void)scheduleRollbackRebootForLater:(id)later
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, later);
  objc_storeStrong(location, 0);
}

- (BOOL)setLastRollbackDescriptor:(id)descriptor
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)securityResponseRollbackSuggested:(id)suggested error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, suggested);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)currentAutoInstallOperation:(BOOL)operation withResult:(id)result
{
  selfCopy = self;
  v6 = a2;
  operationCopy = operation;
  location = 0;
  objc_storeStrong(&location, result);
  objc_storeStrong(&location, 0);
}

- (void)currentPasscodePolicy:(id)policy
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, policy);
  objc_storeStrong(location, 0);
}

- (void)isAutoUpdateEnabled:(id)enabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enabled);
  objc_storeStrong(location, 0);
}

- (void)isAutoUpdateScheduled:(id)scheduled
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scheduled);
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

- (void)presentAutoUpdateBanner:(id)banner
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, banner);
  objc_storeStrong(location, 0);
}

- (void)isUpdateReadyForInstallation:(id)installation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, installation);
  (*(location[0] + 2))(location[0], 1, 0);
  [(SUSUIMockedSUManagerClient *)selfCopy isUpdateReadyForInstallationWithOptions:0 withResult:location[0]];
  objc_storeStrong(location, 0);
}

- (void)isUpdateReadyForInstallationWithOptions:(id)options withResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v13 = 0;
  objc_storeStrong(&v13, result);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __81__SUSUIMockedSUManagerClient_isUpdateReadyForInstallationWithOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [controllerStrategy isUpdateReadyForInstallationWithOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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

- (void)installUpdate:(id)update
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)installUpdateWithInstallOptions:(id)options withResult:(id)result
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v13 = 0;
  objc_storeStrong(&v13, result);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__SUSUIMockedSUManagerClient_installUpdateWithInstallOptions_withResult___block_invoke;
  v11 = &unk_279CBE6B8;
  v12 = MEMORY[0x277D82BE0](v13);
  [controllerStrategy installUpdateWithInstallOptions:v5 withResult:?];
  MEMORY[0x277D82BD8](controllerStrategy);
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
  controllerStrategy = [(SUSUIMockedSUManagerClient *)self controllerStrategy];
  v4 = [controllerStrategy isInstallationKeybagRequiredForDescriptor:0];
  MEMORY[0x277D82BD8](controllerStrategy);
  return v4;
}

- (BOOL)isInstallationKeybagRequiredForDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = [controllerStrategy isInstallationKeybagRequiredForDescriptor:location[0]];
  MEMORY[0x277D82BD8](controllerStrategy);
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)createInstallationKeybagWithOptions:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  v5 = [controllerStrategy createInstallationKeybagWithOptions:location[0]];
  MEMORY[0x277D82BD8](controllerStrategy);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)destroyInstallationKeybag
{
  controllerStrategy = [(SUSUIMockedSUManagerClient *)self controllerStrategy];
  [controllerStrategy destroyInstallationKeybag];
  MEMORY[0x277D82BD8](controllerStrategy);
}

- (void)slaVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v3.receiver = selfCopy;
  v3.super_class = SUSUIMockedSUManagerClient;
  [(SUManagerClient *)&v3 slaVersion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)softwareUpdatePathRestriction:(id)restriction
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restriction);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)isDelayingUpdates:(id)updates
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  (*(location[0] + 2))(location[0], 0, 0);
  objc_storeStrong(location, 0);
}

- (void)delayEndDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  objc_storeStrong(location, 0);
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)areUpdatesDownloadableWithOptions:(id)options alternateUpdateOptions:(id)updateOptions preferredUpdateDownloadable:(BOOL *)downloadable alternateUpdateDownloadable:(BOOL *)updateDownloadable preferredUpdateError:(id *)error alternateUpdateError:(id *)updateError
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, options);
  v46 = 0;
  objc_storeStrong(&v46, updateOptions);
  downloadableCopy = downloadable;
  updateDownloadableCopy = updateDownloadable;
  errorCopy = error;
  updateErrorCopy = updateError;
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
  controllerStrategy = [(SUSUIMockedSUManagerClient *)selfCopy controllerStrategy];
  [controllerStrategy updatesDownloadableWithOptions:location[0] alternateDownloadOptions:v46 replyHandler:?];
  MEMORY[0x277D82BD8](controllerStrategy);
  if (downloadableCopy)
  {
    *downloadableCopy = v38[3] & 1;
  }

  if (updateDownloadableCopy)
  {
    *updateDownloadableCopy = v33[3] & 1;
  }

  if (errorCopy)
  {
    v11 = v26[5];
    v8 = v11;
    *errorCopy = v11;
  }

  if (updateErrorCopy)
  {
    v10 = v19[5];
    v9 = v10;
    *updateErrorCopy = v10;
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

- (void)recordSUAnalyticsEvent:(id)event
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEvent:(id)event
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  objc_storeStrong(location, 0);
}

- (void)submitSUAnalyticsEventsWithName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  objc_storeStrong(location, 0);
}

- (id)controllerStrategy
{
  v20 = *MEMORY[0x277D85DE8];
  v17[2] = self;
  v17[1] = a2;
  v12 = +[SUSUITestAutomationManager sharedManager];
  currentSession = [v12 currentSession];
  v17[0] = [currentSession strategyForServiceType:0];
  MEMORY[0x277D82BD8](currentSession);
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
      currentSession2 = [v10 currentSession];
      correlationId = [currentSession2 correlationId];
      v5 = MEMORY[0x277D82BE0](correlationId);
      v14 = v5;
      v2 = objc_opt_class();
      v13 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_64_8_64(v19, v5, v13);
      _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] The strategy class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyBase.", v19, 0x16u);
      MEMORY[0x277D82BD8](correlationId);
      MEMORY[0x277D82BD8](currentSession2);
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