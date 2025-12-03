@interface RTAssetManager
- (RTAssetManager)initWithDefaultsManager:(id)manager assetProcessor:(id)processor xpcActivityManager:(id)activityManager;
- (id)defaultAssetDownloadOptions;
- (id)defaultCatalogDownloadOptions;
- (id)defaultXPCActivityCriteria;
- (id)latestAssetFromAssets:(id)assets;
- (void)_copyRoutineAssetFromCoreLocationConfig:(id)config;
- (void)_downloadAsset:(id)asset handler:(id)handler;
- (void)_finalizeAssetUpdateOperationWithError:(id)error;
- (void)_handleAssetDownloadResult:(int64_t)result asset:(id)asset handler:(id)handler;
- (void)_handleCatalogDownloadWithType:(id)type downloadResult:(int64_t)result handler:(id)handler;
- (void)_handleMetadataQueryResult:(int64_t)result assetQuery:(id)query handler:(id)handler;
- (void)_handleRoutineConfigAssetChangedNotification;
- (void)_installAsset:(id)asset fileManager:(id)manager handler:(id)handler;
- (void)_performUpdateOfAssetsWithTypeAssetType:(id)type handler:(id)handler;
- (void)_setupRoutineConfigAssetChangedNotification;
- (void)_shutdownWithHandler:(id)handler;
- (void)copyRoutineAssetFromCoreLocationConfigWithHandler:(id)handler;
- (void)handleRoutineConfigAssetChangedNotification;
- (void)performUpdateOfAssetsWithTypeAssetType:(id)type handler:(id)handler;
- (void)setupRoutineConfigAssetChangedNotification;
- (void)updateAssetServerURL:(id)l assetType:(id)type handler:(id)handler;
@end

@implementation RTAssetManager

- (RTAssetManager)initWithDefaultsManager:(id)manager assetProcessor:(id)processor xpcActivityManager:(id)activityManager
{
  managerCopy = manager;
  processorCopy = processor;
  activityManagerCopy = activityManager;
  v13 = activityManagerCopy;
  if (!managerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(location[0]) = 0;
    v25 = "Invalid parameter not satisfying: defaultsManager";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, location, 2u);
    goto LABEL_16;
  }

  if (!processorCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(location[0]) = 0;
    v25 = "Invalid parameter not satisfying: assetProcessor";
    goto LABEL_15;
  }

  if (!activityManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v25 = "Invalid parameter not satisfying: xpcActivityManager";
      goto LABEL_15;
    }

LABEL_16:

    selfCopy = 0;
    goto LABEL_17;
  }

  v30.receiver = self;
  v30.super_class = RTAssetManager;
  v14 = [(RTNotifier *)&v30 init];
  p_isa = &v14->super.super.super.isa;
  if (v14)
  {
    objc_storeStrong(&v14->_defaultsManager, manager);
    objc_storeStrong(p_isa + 4, processor);
    objc_storeStrong(p_isa + 7, activityManager);
    v16 = [p_isa[5] objectForKey:@"LastAssetContentVersionDownloaded"];
    if (v16)
    {
      v17 = objc_opt_new();
      [v17 setObject:v16 forKeyedSubscript:@"contentVersion"];
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = [v18 initWithCString:RTAnalyticsEventAssetContentVersion encoding:1];
      log_analytics_submission(v19, v17);
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v19];
      AnalyticsSendEvent();
    }

    defaultXPCActivityCriteria = [p_isa defaultXPCActivityCriteria];
    objc_initWeak(location, p_isa);
    v22 = p_isa[7];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__RTAssetManager_initWithDefaultsManager_assetProcessor_xpcActivityManager___block_invoke;
    v27[3] = &unk_2788C6A18;
    v28[1] = a2;
    objc_copyWeak(v28, location);
    [v22 registerActivityWithIdentifier:@"com.apple.routined.assets" criteria:defaultXPCActivityCriteria handler:v27];
    [p_isa setupRoutineConfigAssetChangedNotification];
    objc_destroyWeak(v28);
    objc_destroyWeak(location);
  }

  self = p_isa;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

void __76__RTAssetManager_initWithDefaultsManager_assetProcessor_xpcActivityManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__RTAssetManager_initWithDefaultsManager_assetProcessor_xpcActivityManager___block_invoke_301;
      v10[3] = &unk_2788C48C0;
      v11 = v5;
      [WeakRetained copyRoutineAssetFromCoreLocationConfigWithHandler:v10];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

uint64_t __76__RTAssetManager_initWithDefaultsManager_assetProcessor_xpcActivityManager___block_invoke_301(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)copyRoutineAssetFromCoreLocationConfigWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTAssetManager_copyRoutineAssetFromCoreLocationConfigWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)setupRoutineConfigAssetChangedNotification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTAssetManager_setupRoutineConfigAssetChangedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setupRoutineConfigAssetChangedNotification
{
  v3 = objc_opt_new();
  notificationHelper = self->_notificationHelper;
  self->_notificationHelper = v3;

  objc_initWeak(&location, self);
  v5 = self->_notificationHelper;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__RTAssetManager__setupRoutineConfigAssetChangedNotification__block_invoke;
  v6[3] = &unk_2788C5908;
  objc_copyWeak(&v7, &location);
  [(RTDarwinNotificationHelper *)v5 addObserverForNotificationName:@"kRoutineConfigAssetChangedNotification" handler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__RTAssetManager__setupRoutineConfigAssetChangedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleRoutineConfigAssetChangedNotification];
    WeakRetained = v2;
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTXPCActivityManager *)self->_xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.assets" handler:0];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)_copyRoutineAssetFromCoreLocationConfig:(id)config
{
  v33[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  v25 = 0;
  v6 = CLCopyRoutineAssetSettings();
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138413058;
        v27 = v9;
        v28 = 1024;
        *v29 = HIDWORD(v25);
        *&v29[4] = 1024;
        *&v29[6] = v25;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@ compatibilityVersion %d, contentVersion %d, received RoutineAsset, %@, ", buf, 0x22u);
      }
    }

    v10 = MEMORY[0x277CBEBC0];
    v11 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"defaults.plist"];
    v12 = [v10 fileURLWithPath:v11 isDirectory:0];

    v24 = 0;
    v13 = [v6 writeToURL:v12 error:&v24];
    v14 = v24;
    if (v13)
    {
      defaultsManager = self->_defaultsManager;
      path = [v12 path];
      [(RTDefaultsManager *)defaultsManager addDomain:path];
      v17 = 0;
    }

    else
    {
      path = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        *buf = 138412546;
        v27 = v23;
        v28 = 2112;
        *v29 = v14;
        _os_log_error_impl(&dword_2304B3000, path, OS_LOG_TYPE_ERROR, "%@, Encountered error in creating assets defaults.plist file: %@", buf, 0x16u);
      }

      v17 = v14;
    }

    (configCopy)[2](configCopy, v17);
  }

  else
  {
    if (v7)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412290;
        v27 = v19;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, Received a NULL  CFDictionaryRef routineAssetSettingsDict", buf, 0xCu);
      }
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"CFDictionaryRef routineAssetSettingsDict from CL is NULL";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v6 = [v20 errorWithDomain:v21 code:7 userInfo:v22];

    (configCopy)[2](configCopy, v6);
  }
}

- (void)handleRoutineConfigAssetChangedNotification
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTAssetManager_handleRoutineConfigAssetChangedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleRoutineConfigAssetChangedNotification
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDefaults);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "received Routine Config Asset change notification", buf, 2u);
    }
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__RTAssetManager__handleRoutineConfigAssetChangedNotification__block_invoke;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v5[4] = a2;
  [(RTAssetManager *)self _copyRoutineAssetFromCoreLocationConfig:v5];
}

void __62__RTAssetManager__handleRoutineConfigAssetChangedNotification__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error %@", &v6, 0x16u);
    }
  }
}

- (void)performUpdateOfAssetsWithTypeAssetType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTAssetManager_performUpdateOfAssetsWithTypeAssetType_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = typeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = typeCopy;
  dispatch_async(queue, block);
}

void __65__RTAssetManager_performUpdateOfAssetsWithTypeAssetType_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__RTAssetManager_performUpdateOfAssetsWithTypeAssetType_handler___block_invoke_2;
  v3[3] = &unk_2788C4F60;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _performUpdateOfAssetsWithTypeAssetType:v2 handler:v3];
}

void __65__RTAssetManager_performUpdateOfAssetsWithTypeAssetType_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _finalizeAssetUpdateOperationWithError:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)_performUpdateOfAssetsWithTypeAssetType:(id)type handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (typeCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "[RTAssetManager _performUpdateOfAssetsWithTypeAssetType:handler:]";
    v29 = 1024;
    LODWORD(v30) = 226;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetType (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTAssetManager _performUpdateOfAssetsWithTypeAssetType:handler:]";
      v29 = 1024;
      LODWORD(v30) = 227;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"LastAssetUpdateDate"];
  v12 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"LastSuccessfulAssetUpdateDate"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [v11 stringFromDate];
      stringFromDate2 = [v12 stringFromDate];
      *buf = 138412546;
      v28 = stringFromDate;
      v29 = 2112;
      v30 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Checking for new assets to download, date of last attempt, %@, last success, %@", buf, 0x16u);
    }
  }

  if (v8)
  {
    if (typeCopy)
    {
      defaultCatalogDownloadOptions = [(RTAssetManager *)self defaultCatalogDownloadOptions];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "Starting catalog download.", buf, 2u);
        }
      }

      v18 = MEMORY[0x277D289C0];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__RTAssetManager__performUpdateOfAssetsWithTypeAssetType_handler___block_invoke;
      v22[3] = &unk_2788C7690;
      v22[4] = self;
      v23 = typeCopy;
      v24 = v8;
      [v18 startCatalogDownload:v23 options:defaultCatalogDownloadOptions then:v22];
    }

    else
    {
      defaultCatalogDownloadOptions = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset type is nil, returning."];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = defaultCatalogDownloadOptions;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v25 = *MEMORY[0x277CCA450];
      v26 = defaultCatalogDownloadOptions;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:1 userInfo:v20];
      (v8)[2](v8, v21);
    }
  }
}

void __66__RTAssetManager__performUpdateOfAssetsWithTypeAssetType_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__RTAssetManager__performUpdateOfAssetsWithTypeAssetType_handler___block_invoke_2;
  v6[3] = &unk_2788C4C20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v9 = a2;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

- (id)defaultXPCActivityCriteria
{
  v2 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:0 allowBattery:86400.0 powerNap:43200.0];

  return v2;
}

- (id)defaultCatalogDownloadOptions
{
  v2 = objc_opt_new();
  [v2 setDiscretionary:0];

  return v2;
}

- (id)defaultAssetDownloadOptions
{
  v2 = objc_opt_new();
  [v2 setAllowsCellularAccess:0];
  [v2 setDiscretionary:0];

  return v2;
}

- (void)_handleCatalogDownloadWithType:(id)type downloadResult:(int64_t)result handler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!typeCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTAssetManager _handleCatalogDownloadWithType:downloadResult:handler:]";
      v38 = 1024;
      v39 = 312;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetType (in %s:%d)", buf, 0x12u);
    }

    if (v10)
    {
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset type is nil, returning."];
      v17 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = result;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v34 = *MEMORY[0x277CCA450];
      v35 = result;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = MEMORY[0x277CCA9B8];
      v15 = 1;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!handlerCopy)
  {
LABEL_14:
    result = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTAssetManager _handleCatalogDownloadWithType:downloadResult:handler:]";
      v38 = 1024;
      v39 = 313;
      _os_log_error_impl(&dword_2304B3000, result, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_29;
  }

  if (result)
  {
    result = [MEMORY[0x277CCACA8] stringWithFormat:@"The catalog download for asset type, %@, failed with result, %lu.", typeCopy, result];
    v12 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = result;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v32 = *MEMORY[0x277CCA450];
    v33 = result;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = MEMORY[0x277CCA9B8];
    v15 = 4;
LABEL_13:
    v18 = [v14 errorWithDomain:@"RTAssetManagerErrorDomain" code:v15 userInfo:v13];
    (v10)[2](v10, v18);

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Catalog download finished.", buf, 2u);
    }
  }

  v20 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:typeCopy];
  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = typeCopy;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Querying metadata for asset type %@.", buf, 0xCu);
      }
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __72__RTAssetManager__handleCatalogDownloadWithType_downloadResult_handler___block_invoke;
    v27[3] = &unk_2788C7690;
    v27[4] = self;
    result = v21;
    v28 = result;
    v29 = v10;
    [result queryMetaData:v27];
  }

  else
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid asset query."];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v23;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v30 = *MEMORY[0x277CCA450];
    v31 = v23;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:2 userInfo:v25];
    (v10)[2](v10, v26);

    result = 0;
  }

LABEL_29:
}

void __72__RTAssetManager__handleCatalogDownloadWithType_downloadResult_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__RTAssetManager__handleCatalogDownloadWithType_downloadResult_handler___block_invoke_2;
  v6[3] = &unk_2788C4C20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v9 = a2;
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

- (void)_handleMetadataQueryResult:(int64_t)result assetQuery:(id)query handler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (queryCopy)
  {
    if (handlerCopy)
    {
      if (result)
      {
        result = [MEMORY[0x277CCACA8] stringWithFormat:@"The asset query failed with result, %lu", result];
        v12 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          unsignedIntegerValue = result;
          _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v31 = *MEMORY[0x277CCA450];
        v32 = result;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v14 = MEMORY[0x277CCA9B8];
        v15 = 5;
      }

      else
      {
        results = [queryCopy results];
        v20 = [results count];

        if (v20)
        {
          results2 = [queryCopy results];
          result = [(RTAssetManager *)self latestAssetFromAssets:results2];

          if (result)
          {
            attributes = [result attributes];
            v13 = [attributes objectForKey:*MEMORY[0x277D28900]];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v23 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                unsignedIntegerValue = [v13 unsignedIntegerValue];
                _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "Chose asset with version number %lu", buf, 0xCu);
              }
            }

            [(RTAssetManager *)self _downloadAsset:result handler:v10];
            goto LABEL_15;
          }

          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"No assets available to download."];
          v25 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            unsignedIntegerValue = v13;
            _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          v27 = *MEMORY[0x277CCA450];
          v28 = v13;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:8 userInfo:v18];
          (v10)[2](v10, v26);

LABEL_14:
LABEL_15:

          goto LABEL_18;
        }

        result = [MEMORY[0x277CCACA8] stringWithFormat:@"No results for query."];
        v24 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          unsignedIntegerValue = result;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v29 = *MEMORY[0x277CCA450];
        v30 = result;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v14 = MEMORY[0x277CCA9B8];
        v15 = 8;
      }

LABEL_13:
      v18 = [v14 errorWithDomain:@"RTAssetManagerErrorDomain" code:v15 userInfo:v13];
      (v10)[2](v10, v18);
      goto LABEL_14;
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      unsignedIntegerValue = "[RTAssetManager _handleMetadataQueryResult:assetQuery:handler:]";
      v37 = 1024;
      v38 = 374;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetQuery (in %s:%d)", buf, 0x12u);
    }

    if (v10)
    {
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid asset query."];
      v17 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        unsignedIntegerValue = result;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v33 = *MEMORY[0x277CCA450];
      v34 = result;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v14 = MEMORY[0x277CCA9B8];
      v15 = 2;
      goto LABEL_13;
    }
  }

  result = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    unsignedIntegerValue = "[RTAssetManager _handleMetadataQueryResult:assetQuery:handler:]";
    v37 = 1024;
    v38 = 375;
    _os_log_error_impl(&dword_2304B3000, result, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_18:
}

- (id)latestAssetFromAssets:(id)assets
{
  v3 = [assets sortedArrayUsingComparator:&__block_literal_global_25];
  lastObject = [v3 lastObject];

  return lastObject;
}

uint64_t __40__RTAssetManager_latestAssetFromAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = *MEMORY[0x277D28900];
  v7 = [v5 objectForKey:*MEMORY[0x277D28900]];

  v8 = [v4 attributes];

  v9 = [v8 objectForKey:v6];

  v10 = [v7 compare:v9];
  return v10;
}

- (void)_finalizeAssetUpdateOperationWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  date = [MEMORY[0x277CBEAA8] date];
  [(RTDefaultsManager *)self->_defaultsManager setObject:date forKey:@"LastAssetUpdateDate"];
  if (errorCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Error while updating assets, %@", &v10, 0xCu);
    }
  }

  else
  {
    [(RTDefaultsManager *)self->_defaultsManager setObject:date forKey:@"LastSuccessfulAssetUpdateDate"];
  }

  v7 = [(RTDefaultsManager *)self->_defaultsManager objectForKey:@"LastSuccessfulAssetUpdateDate"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [v7 stringFromDate];
      v10 = 138412546;
      v11 = date;
      v12 = 2112;
      v13 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Finished asset update, date of last attempt, %@, last success, %@", &v10, 0x16u);
    }
  }
}

- (void)_downloadAsset:(id)asset handler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!assetCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTAssetManager _downloadAsset:handler:]";
      v35 = 1024;
      v36 = 473;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: asset (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "An asset must be provided to download.", buf, 2u);
      }

      v31 = *MEMORY[0x277CCA450];
      v32 = @"An asset must be provided to download.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = MEMORY[0x277CCA9B8];
      v15 = 0;
      goto LABEL_21;
    }

LABEL_16:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTAssetManager _downloadAsset:handler:]";
      v35 = 1024;
      v36 = 474;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_22;
  }

  if (!handlerCopy)
  {
    goto LABEL_16;
  }

  if (![(RTAssetManager *)self nonUserInitiatedDownloadsAllowed])
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "User disallwed non-user initiated downloads.", buf, 2u);
    }

    v29 = *MEMORY[0x277CCA470];
    v30 = @"User disallwed non-user initiated downloads.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v14 = MEMORY[0x277CCA9B8];
    v15 = 7;
LABEL_21:
    v17 = [v14 errorWithDomain:@"RTAssetManagerErrorDomain" code:v15 userInfo:v13];
    (v8)[2](v8, v17);

LABEL_22:
    goto LABEL_23;
  }

  if ([assetCopy state] == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Asset is present on disk, attempting to install now.", buf, 2u);
      }
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [(RTAssetManager *)self _installAsset:assetCopy fileManager:defaultManager handler:v8];
  }

  else
  {
    v26 = 0;
    if ([assetCopy spaceCheck:&v26])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v34 = v26;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "Space check succeeded, requires %ld bytes.", buf, 0xCu);
        }
      }

      [assetCopy attachProgressCallBack:&__block_literal_global_361];
      defaultManager = [(RTAssetManager *)self defaultAssetDownloadOptions];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Asset is not present on disk, starting download now.", buf, 2u);
        }
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __41__RTAssetManager__downloadAsset_handler___block_invoke_362;
      v23[3] = &unk_2788C7690;
      v23[4] = self;
      v24 = assetCopy;
      v25 = v8;
      [v24 startDownload:defaultManager then:v23];
    }

    else
    {
      defaultManager = [MEMORY[0x277CCACA8] stringWithFormat:@"Insufficient space to download the asset, requires %ld bytes.", v26];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = defaultManager;
          _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      v27 = *MEMORY[0x277CCA450];
      v28 = defaultManager;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:6 userInfo:v21];
      (v8)[2](v8, v22);
    }
  }

LABEL_23:
}

void __41__RTAssetManager__downloadAsset_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 expectedTimeRemaining];
  if (v3 > 0.0)
  {
    v4 = [v2 totalWritten];
    v5 = v4 / [v2 totalExpected];
    if (v5 > 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = v5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "progress: %lf", &v7, 0xCu);
      }
    }
  }
}

void __41__RTAssetManager__downloadAsset_handler___block_invoke_362(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RTAssetManager__downloadAsset_handler___block_invoke_2;
  v6[3] = &unk_2788C4C20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v9 = a2;
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

- (void)_handleAssetDownloadResult:(int64_t)result asset:(id)asset handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!assetCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTAssetManager _handleAssetDownloadResult:asset:handler:]";
      v26 = 1024;
      v27 = 553;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: asset (in %s:%d)", buf, 0x12u);
    }

    if (v10)
    {
      result = [MEMORY[0x277CCACA8] stringWithFormat:@"An asset must be provided to download."];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = result;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      v22 = *MEMORY[0x277CCA450];
      v23 = result;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v14 = MEMORY[0x277CCA9B8];
      v15 = 0;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!handlerCopy)
  {
LABEL_16:
    result = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTAssetManager _handleAssetDownloadResult:asset:handler:]";
      v26 = 1024;
      v27 = 554;
      _os_log_error_impl(&dword_2304B3000, result, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_23;
  }

  if (result)
  {
    result = [MEMORY[0x277CCACA8] stringWithFormat:@"The asset downlaod failed with result, %ld", result];
    v12 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = result;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v20 = *MEMORY[0x277CCA450];
    v21 = result;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = MEMORY[0x277CCA9B8];
    v15 = 4;
LABEL_15:
    v18 = [v14 errorWithDomain:@"RTAssetManagerErrorDomain" code:v15 userInfo:v13];
    (v10)[2](v10, v18);

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Asset finished downloaded, attempting to install now.", buf, 2u);
    }
  }

  result = [MEMORY[0x277CCAA00] defaultManager];
  [(RTAssetManager *)self _installAsset:assetCopy fileManager:result handler:v10];
LABEL_23:
}

- (void)_installAsset:(id)asset fileManager:(id)manager handler:(id)handler
{
  v115[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  managerCopy = manager;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v101 = "[RTAssetManager _installAsset:fileManager:handler:]";
      v102 = 1024;
      LODWORD(v103) = 594;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (assetCopy)
    {
LABEL_3:
      if (managerCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v101 = "[RTAssetManager _installAsset:fileManager:handler:]";
    v102 = 1024;
    LODWORD(v103) = 595;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: asset (in %s:%d)", buf, 0x12u);
  }

  if (managerCopy)
  {
LABEL_4:
    if (!handlerCopy)
    {
      goto LABEL_48;
    }

LABEL_15:
    if (!assetCopy)
    {
      getLocalFileUrl = [MEMORY[0x277CCACA8] stringWithFormat:@"An asset must be provided to download."];
      v42 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v101 = getLocalFileUrl;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v114 = *MEMORY[0x277CCA450];
      v115[0] = getLocalFileUrl;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
      v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:0 userInfo:v43];
      handlerCopy[2](handlerCopy, v44);

      goto LABEL_47;
    }

    if (!managerCopy)
    {
      v45 = MEMORY[0x277CCA9B8];
      v112 = *MEMORY[0x277CCA450];
      v113 = @"fileManager cannot be nil";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      getLocalFileUrl = [v45 errorWithDomain:@"RTAssetManagerErrorDomain" code:7 userInfo:v46];

      v47 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v62 = NSStringFromSelector(a2);
        *buf = 138412546;
        v101 = v62;
        v102 = 2112;
        v103 = getLocalFileUrl;
        _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, getLocalFileUrl);
      goto LABEL_47;
    }

    getLocalFileUrl = [assetCopy getLocalFileUrl];
    assetType = [assetCopy assetType];
    v17 = [assetType isEqualToString:@"com.apple.MobileAsset.routined.defaults"];

    if (v17)
    {
      v18 = [getLocalFileUrl URLByAppendingPathComponent:@"defaults.plist"];

      getLocalFileUrl = v18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        path = [getLocalFileUrl path];
        attributes = [assetCopy attributes];
        v22 = [attributes objectForKey:*MEMORY[0x277D28900]];
        unsignedIntegerValue = [v22 unsignedIntegerValue];
        *buf = 138412546;
        v101 = path;
        v102 = 1024;
        LODWORD(v103) = unsignedIntegerValue;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Asset, located at %@, with content version %u is downloaded, installing now.", buf, 0x12u);
      }
    }

    path2 = [getLocalFileUrl path];
    if ([managerCopy fileExistsAtPath:path2])
    {
      path3 = [getLocalFileUrl path];
      v26 = [managerCopy isReadableFileAtPath:path3];

      if (v26)
      {
        v27 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"assets.plist"];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v101 = v27;
            _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "Path to raw assets in cache directory: %@", buf, 0xCu);
          }
        }

        if (!v27)
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v101 = @"assets.plist";
            _os_log_fault_impl(&dword_2304B3000, v53, OS_LOG_TYPE_FAULT, "pathToRawAssetsInCacheDirectory is nil for file name: %@, cannot continue with install.", buf, 0xCu);
          }

          v54 = objc_alloc(MEMORY[0x277CCA9B8]);
          v110 = *MEMORY[0x277CCA450];
          v111 = @"pathToRawAssetsInCacheDirectory is nil";
          v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v56 = [v54 initWithDomain:@"RTAssetManagerErrorDomain" code:9 userInfo:v55];
          handlerCopy[2](handlerCopy, v56);

          goto LABEL_47;
        }

        v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27 isDirectory:0];
        v30 = v29;
        if (!v29)
        {
          v57 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v101 = v27;
            _os_log_fault_impl(&dword_2304B3000, v57, OS_LOG_TYPE_FAULT, "urlToRawAssetsInCacheDirectory is nil for asset path: %@, cannot continue with install.", buf, 0xCu);
          }

          v58 = objc_alloc(MEMORY[0x277CCA9B8]);
          v108 = *MEMORY[0x277CCA450];
          v109 = @"urlToRawAssetsInCacheDirectory is nil";
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v41 = [v58 initWithDomain:@"RTAssetManagerErrorDomain" code:9 userInfo:v32];
          handlerCopy[2](handlerCopy, v41);
          goto LABEL_84;
        }

        path4 = [v29 path];
        if (!path4)
        {
          v59 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v101 = v27;
            _os_log_fault_impl(&dword_2304B3000, v59, OS_LOG_TYPE_FAULT, "urlToRawAssetsInCacheDirectory.path is nil for asset path: %@, cannot continue with install.", buf, 0xCu);
          }

          v60 = objc_alloc(MEMORY[0x277CCA9B8]);
          v106 = *MEMORY[0x277CCA450];
          v107 = @"urlToRawAssetsInCacheDirectory.path is nil";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          v61 = [v60 initWithDomain:@"RTAssetManagerErrorDomain" code:9 userInfo:v41];
          handlerCopy[2](handlerCopy, v61);

          v32 = 0;
          goto LABEL_84;
        }

        v32 = path4;
        v94 = v27;
        if ([managerCopy fileExistsAtPath:path4])
        {
          v89 = v32;
          v33 = MEMORY[0x277CBEA90];
          v92 = v30;
          absoluteString = [v30 absoluteString];
          v35 = [v33 dataWithContentsOfFile:absoluteString];

          v36 = MEMORY[0x277CBEA90];
          path5 = [getLocalFileUrl path];
          v38 = [v36 dataWithContentsOfFile:path5];

          v90 = v35;
          v88 = v38;
          LODWORD(v36) = [v35 isEqualToData:v38];
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (v36)
          {
            v30 = v92;
            v27 = v94;
            v32 = v89;
            if (v39)
            {
              v40 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "Data for the asset to be installed matched what was on disk, skipping installation", buf, 2u);
              }
            }

            handlerCopy[2](handlerCopy, 0);
            v41 = 0;
LABEL_66:

LABEL_84:
            goto LABEL_47;
          }

          v30 = v92;
          v27 = v94;
          v32 = v89;
          if (v39)
          {
            v63 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "Data for the asset to be installed did NOT match what was on disk, continuing installation", buf, 2u);
            }
          }

          v97 = 0;
          [managerCopy removeItemAtPath:v89 error:&v97];
          v64 = v97;
          if (v64)
          {
            v41 = v64;
            v65 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v101 = v89;
              v102 = 2112;
              v103 = v41;
              _os_log_error_impl(&dword_2304B3000, v65, OS_LOG_TYPE_ERROR, "Could not delete asset at path, %@, error, %@.", buf, 0x16u);
            }

            handlerCopy[2](handlerCopy, v41);
            goto LABEL_66;
          }
        }

        path6 = [getLocalFileUrl path];
        v96 = 0;
        [managerCopy copyItemAtPath:path6 toPath:v32 error:&v96];
        v41 = v96;

        if (v41)
        {
          v67 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            path7 = [getLocalFileUrl path];
            *buf = 138412802;
            v101 = path7;
            v102 = 2112;
            v103 = v32;
            v104 = 2112;
            v105 = v41;
            _os_log_error_impl(&dword_2304B3000, v67, OS_LOG_TYPE_ERROR, "Could not copy asset at path, %@, to path, %@, error, %@.", buf, 0x20u);
          }

          handlerCopy[2](handlerCopy, v41);
          v27 = v94;
        }

        else
        {
          v68 = MEMORY[0x277CBEBC0];
          v69 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"defaults.plist"];
          v70 = [v68 fileURLWithPath:v69 isDirectory:0];

          assetProcessor = self->_assetProcessor;
          path8 = [v70 path];
          v95 = 0;
          [(RTAssetProcessor *)assetProcessor processAssetsAtPath:v32 intoPath:path8 outError:&v95];
          v41 = v95;

          if (v41)
          {
            v73 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
            v27 = v94;
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              path9 = [v70 path];
              *buf = 138412802;
              v101 = v32;
              v102 = 2112;
              v103 = path9;
              v104 = 2112;
              v105 = v41;
              _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "Error processing asset at path, %@, into path, %@, error, %@.", buf, 0x20u);

              v27 = v94;
            }

            handlerCopy[2](handlerCopy, v41);
          }

          else
          {
            v74 = v70;
            v91 = v70;
            defaultsManager = self->_defaultsManager;
            path10 = [v74 path];
            [(RTDefaultsManager *)defaultsManager addDomain:path10];

            attributes2 = [assetCopy attributes];
            v78 = [attributes2 objectForKey:*MEMORY[0x277D28900]];

            v79 = self->_defaultsManager;
            v80 = v78;
            [(RTDefaultsManager *)v79 setObject:v78 forKey:@"LastAssetContentVersionDownloaded"];
            v93 = v78;
            if (v78)
            {
              v81 = objc_opt_new();
              [v81 setObject:v80 forKeyedSubscript:@"contentVersion"];
              v82 = objc_alloc(MEMORY[0x277CCACA8]);
              v83 = [v82 initWithCString:RTAnalyticsEventAssetContentVersion encoding:1];
              log_analytics_submission(v83, v81);
              v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v83];
              AnalyticsSendEvent();

              v80 = v93;
            }

            v27 = v94;
            v70 = v91;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v85 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
              if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "Asset installed.", buf, 2u);
              }

              v80 = v93;
            }

            handlerCopy[2](handlerCopy, 0);
          }
        }

        goto LABEL_84;
      }
    }

    else
    {
    }

    v98 = *MEMORY[0x277CCA450];
    v48 = MEMORY[0x277CCACA8];
    path11 = [getLocalFileUrl path];
    v50 = [v48 stringWithFormat:@"File not readable or path does not exist, %@.", path11];
    v99 = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];

    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:3 userInfo:v51];
    handlerCopy[2](handlerCopy, v52);

LABEL_47:
    goto LABEL_48;
  }

LABEL_12:
  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v101 = "[RTAssetManager _installAsset:fileManager:handler:]";
    v102 = 1024;
    LODWORD(v103) = 596;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fileManager (in %s:%d)", buf, 0x12u);
  }

  if (handlerCopy)
  {
    goto LABEL_15;
  }

LABEL_48:
}

- (void)updateAssetServerURL:(id)l assetType:(id)type handler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  handlerCopy = handler;
  if (lCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[RTAssetManager updateAssetServerURL:assetType:handler:]";
      v21 = 1024;
      LODWORD(v22) = 752;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetType (in %s:%d)", &v19, 0x12u);
    }

    if (handlerCopy)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid asset type."];
      v16 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v15;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
      }

      v23 = *MEMORY[0x277CCA450];
      v24[0] = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTAssetManagerErrorDomain" code:1 userInfo:v17];
      handlerCopy[2](handlerCopy, v18);

      goto LABEL_20;
    }

LABEL_18:
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[RTAssetManager updateAssetServerURL:assetType:handler:]";
      v21 = 1024;
      LODWORD(v22) = 753;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v19, 0x12u);
    }

LABEL_20:

    goto LABEL_21;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315394;
    v20 = "[RTAssetManager updateAssetServerURL:assetType:handler:]";
    v21 = 1024;
    LODWORD(v22) = 751;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: url (in %s:%d)", &v19, 0x12u);
  }

  if (!typeCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_18;
  }

  absoluteString = [lCopy absoluteString];
  v11 = MEMORY[0x23191AB40](typeCopy, absoluteString);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityAsset);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = 138412546;
      v20 = typeCopy;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Setting mobile asset server to %@, status, %lld", &v19, 0x16u);
    }
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_21:
}

@end