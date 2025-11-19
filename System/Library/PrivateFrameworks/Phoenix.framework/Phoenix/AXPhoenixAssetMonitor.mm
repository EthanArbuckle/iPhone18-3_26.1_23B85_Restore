@interface AXPhoenixAssetMonitor
- (AXPhoenixAssetMonitor)initWithDelegate:(id)a3;
- (AXPhoenixAssetMonitorDelegate)delegate;
- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7;
- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6;
- (void)assetDidUpdate;
@end

@implementation AXPhoenixAssetMonitor

- (AXPhoenixAssetMonitor)initWithDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = AXPhoenixAssetMonitor;
  v14 = [(AXPhoenixAssetMonitor *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    [(AXPhoenixAssetMonitor *)v14 setDelegate:location[0]];
    v8 = +[(AXAssetPolicy *)AXPhoenixAssetPolicy];
    [(AXPhoenixAssetMonitor *)v14 setAssetPolicy:?];
    MEMORY[0x277D82BD8](v8);
    v9 = MEMORY[0x277CE6668];
    v10 = [(AXPhoenixAssetMonitor *)v14 assetPolicy];
    v4 = [v9 assetControllerWithPolicy:? qosClass:?];
    assetController = v14->_assetController;
    v14->_assetController = v4;
    MEMORY[0x277D82BD8](assetController);
    MEMORY[0x277D82BD8](v10);
    [(AXAssetController *)v14->_assetController setUserInitiated:1];
    [(AXAssetController *)v14->_assetController addObserver:v14];
    v11 = AXLogBackTap();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v15, "[AXPhoenixAssetMonitor initWithDelegate:]", v14);
      _os_log_impl(&dword_25E4AC000, v11, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Initiating download", v15, 0x16u);
    }

    objc_storeStrong(&v11, 0);
    [(AXAssetController *)v14->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:0 catalogRefreshOverrideTimeout:0 completion:?];
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v7;
}

- (void)assetController:(id)a3 didFinishRefreshingAssets:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v11 = 0;
  objc_storeStrong(&v11, a6);
  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_32_8_64_8_64(v16, "[AXPhoenixAssetMonitor assetController:didFinishRefreshingAssets:wasSuccessful:error:]", v15, v13);
    _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Refreshed Assets:\n%@", v16, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [v13 lastObject];
  [(AXPhoenixAssetMonitor *)v15 setLatestAsset:?];
  MEMORY[0x277D82BD8](v6);
  [(AXPhoenixAssetMonitor *)v15 assetDidUpdate];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assetController:(id)a3 didFinishDownloadingAsset:(id)a4 wasSuccessful:(BOOL)a5 error:(id)a6 hasRemainingDownloads:(BOOL)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = a7;
  if (v14)
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v18, "[AXPhoenixAssetMonitor assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:]", v17, v15);
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Downloaded Asset:\n%@", v18, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    [(AXPhoenixAssetMonitor *)v17 setLatestAsset:v15];
    [(AXPhoenixAssetMonitor *)v17 assetDidUpdate];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)assetDidUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = self;
  location[1] = a2;
  location[0] = AXLogBackTap();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    v6 = [(AXPhoenixAssetMonitor *)v8 latestAsset];
    __os_log_helper_16_2_3_8_32_8_64_8_64(v9, "[AXPhoenixAssetMonitor assetDidUpdate]", v8, v6);
    _os_log_impl(&dword_25E4AC000, location[0], OS_LOG_TYPE_INFO, "[PHOENIX] %s [%@]: Model loading: Got assets:\n%@", v9, 0x20u);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  v5 = [(AXPhoenixAssetMonitor *)v8 delegate];
  v4 = [(AXPhoenixAssetMonitor *)v8 latestAsset];
  v3 = [(AXAsset *)v4 localURL];
  v2 = [(AXPhoenixAssetMonitor *)v8 latestAsset];
  [(AXPhoenixAssetMonitorDelegate *)v5 modelDidUpdate:v3 assetVersion:[(AXAsset *)v2 contentVersion]];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (AXPhoenixAssetMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end