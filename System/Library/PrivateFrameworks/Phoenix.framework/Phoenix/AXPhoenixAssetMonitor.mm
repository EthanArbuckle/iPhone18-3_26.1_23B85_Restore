@interface AXPhoenixAssetMonitor
- (AXPhoenixAssetMonitor)initWithDelegate:(id)delegate;
- (AXPhoenixAssetMonitorDelegate)delegate;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetDidUpdate;
@end

@implementation AXPhoenixAssetMonitor

- (AXPhoenixAssetMonitor)initWithDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v12.receiver = v3;
  v12.super_class = AXPhoenixAssetMonitor;
  selfCopy = [(AXPhoenixAssetMonitor *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AXPhoenixAssetMonitor *)selfCopy setDelegate:location[0]];
    v8 = +[(AXAssetPolicy *)AXPhoenixAssetPolicy];
    [(AXPhoenixAssetMonitor *)selfCopy setAssetPolicy:?];
    MEMORY[0x277D82BD8](v8);
    v9 = MEMORY[0x277CE6668];
    assetPolicy = [(AXPhoenixAssetMonitor *)selfCopy assetPolicy];
    v4 = [v9 assetControllerWithPolicy:? qosClass:?];
    assetController = selfCopy->_assetController;
    selfCopy->_assetController = v4;
    MEMORY[0x277D82BD8](assetController);
    MEMORY[0x277D82BD8](assetPolicy);
    [(AXAssetController *)selfCopy->_assetController setUserInitiated:1];
    [(AXAssetController *)selfCopy->_assetController addObserver:selfCopy];
    v11 = AXLogBackTap();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v15, "[AXPhoenixAssetMonitor initWithDelegate:]", selfCopy);
      _os_log_impl(&dword_25E4AC000, v11, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Initiating download", v15, 0x16u);
    }

    objc_storeStrong(&v11, 0);
    [(AXAssetController *)selfCopy->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:?];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, assets);
  successfulCopy = successful;
  v11 = 0;
  objc_storeStrong(&v11, error);
  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_32_8_64_8_64(v16, "[AXPhoenixAssetMonitor assetController:didFinishRefreshingAssets:wasSuccessful:error:]", selfCopy, v13);
    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Refreshed Assets:\n%@", v16, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  lastObject = [v13 lastObject];
  [(AXPhoenixAssetMonitor *)selfCopy setLatestAsset:?];
  MEMORY[0x277D82BD8](lastObject);
  [(AXPhoenixAssetMonitor *)selfCopy assetDidUpdate];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, asset);
  successfulCopy = successful;
  v13 = 0;
  objc_storeStrong(&v13, error);
  downloadsCopy = downloads;
  if (successfulCopy)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v18, "[AXPhoenixAssetMonitor assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:]", selfCopy, v15);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Downloaded Asset:\n%@", v18, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    [(AXPhoenixAssetMonitor *)selfCopy setLatestAsset:v15];
    [(AXPhoenixAssetMonitor *)selfCopy assetDidUpdate];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assetDidUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = AXLogBackTap();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    latestAsset = [(AXPhoenixAssetMonitor *)selfCopy latestAsset];
    __os_log_helper_16_2_3_8_32_8_64_8_64(v9, "[AXPhoenixAssetMonitor assetDidUpdate]", selfCopy, latestAsset);
    _os_log_impl(&dword_25E4AC000, location[0], OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Got assets:\n%@", v9, 0x20u);
    MEMORY[0x277D82BD8](latestAsset);
  }

  objc_storeStrong(location, 0);
  delegate = [(AXPhoenixAssetMonitor *)selfCopy delegate];
  latestAsset2 = [(AXPhoenixAssetMonitor *)selfCopy latestAsset];
  localURL = [(AXAsset *)latestAsset2 localURL];
  latestAsset3 = [(AXPhoenixAssetMonitor *)selfCopy latestAsset];
  [(AXPhoenixAssetMonitorDelegate *)delegate modelDidUpdate:localURL assetVersion:[(AXAsset *)latestAsset3 contentVersion]];
  MEMORY[0x277D82BD8](latestAsset3);
  MEMORY[0x277D82BD8](localURL);
  MEMORY[0x277D82BD8](latestAsset2);
  MEMORY[0x277D82BD8](delegate);
  *MEMORY[0x277D85DE8];
}

- (AXPhoenixAssetMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end