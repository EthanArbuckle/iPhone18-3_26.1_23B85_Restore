@interface PSUIAppInstallController
+ (id)iconLocalCacheURLFromKey:(id)a3;
+ (id)loadIconFromURL:(id)a3 session:(id)a4;
+ (id)lookupAppDescriptionForInstalledApp:(id)a3;
+ (id)tryLoadAppDescriptionFromCacheForBundleId:(id)a3;
+ (void)lookupAppFromStore:(id)a3 completionHandler:(id)a4;
+ (void)saveAppDescriptionToCache:(id)a3;
- (PSUIAppInstallController)initWithAppID:(id)a3 carrierMoreAppsURL:(id)a4;
- (PSUIAppInstallController)initWithBundleID:(id)a3;
- (PSUIAppInstallController)initWithBundleIDAndOpenAppURL:(id)a3 openAppURL:(id)a4;
- (id)loadTextForPublisher:(id)a3;
- (id)specifierWithDescriptionParameters:(id)a3 completion:(id)a4;
- (id)tryLoadSubTitleForBundleId:(id)a3;
- (void)installButtonTapped:(id)a3;
- (void)load;
- (void)moreAppsButtonTapped:(id)a3;
- (void)setOverrideLocalAppDescription:(BOOL)a3;
@end

@implementation PSUIAppInstallController

- (PSUIAppInstallController)initWithAppID:(id)a3 carrierMoreAppsURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 componentsSeparatedByString:@"."];
  v10 = [v9 mutableCopy];

  if ([v10 count])
  {
    [v10 removeObjectAtIndex:0];
    v11 = [v10 componentsJoinedByString:@"."];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_appID, a3);
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  v13 = [v12 scheme];
  if ([v13 isEqualToString:@"http"])
  {
    v14 = v12;
    moreAppsURL = self->_moreAppsURL;
    self->_moreAppsURL = v14;
  }

  else
  {
    moreAppsURL = [v12 scheme];
    if ([moreAppsURL isEqualToString:@"https"])
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v17 = self->_moreAppsURL;
    self->_moreAppsURL = v16;
  }

  v18 = [(PSUIAppInstallController *)self initWithBundleID:v11];
  return v18;
}

- (PSUIAppInstallController)initWithBundleIDAndOpenAppURL:(id)a3 openAppURL:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:a4];
    openAppURL = self->_openAppURL;
    self->_openAppURL = v7;
  }

  v9 = [(PSUIAppInstallController *)self initWithBundleID:v6];

  return v9;
}

- (PSUIAppInstallController)initWithBundleID:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PSUIAppInstallController;
  v6 = [(PSUIAppInstallController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
    v7->_overrideLocalAppDescription = 1;
    v8 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v8 setTimeoutIntervalForRequest:4.0];
    [v8 setTimeoutIntervalForResource:4.0];
    v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8];
    session = v7->_session;
    v7->_session = v9;
  }

  return v7;
}

- (void)setOverrideLocalAppDescription:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_overrideLocalAppDescription = a3;
  objc_sync_exit(obj);
}

- (void)load
{
  v3 = self->_bundleID;
  v4 = [objc_opt_class() lookupAppDescriptionForInstalledApp:v3];
  v5 = self;
  objc_sync_enter(v5);
  p_appDescription = &v5->_appDescription;
  if (v5->_appDescription && v5->_installState == (v4 != 0))
  {
LABEL_7:
    objc_sync_exit(v5);

    goto LABEL_11;
  }

  objc_sync_exit(v5);

  if (v4)
  {
    v5 = v5;
    objc_sync_enter(v5);
    if (v5->_overrideLocalAppDescription)
    {
      objc_storeStrong(p_appDescription, v4);
    }

    v5->_installState = 1;
    goto LABEL_7;
  }

  v7 = [(PSUIAppInstallController *)v5 getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "Attempt to load from app store", buf, 2u);
  }

  objc_initWeak(buf, v5);
  v8 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__PSUIAppInstallController_load__block_invoke;
  v9[3] = &unk_279BAA1B8;
  v9[4] = v5;
  objc_copyWeak(&v10, buf);
  [v8 lookupAppFromStore:v3 completionHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
LABEL_11:
}

void __32__PSUIAppInstallController_load__block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  if (v17)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = [v17 iconURL];
    v7 = [v5 loadIconFromURL:v6 session:*(*(a1 + 32) + 8)];
    [v17 setIcon:v7];

    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    *(*(a1 + 32) + 20) = 0;
    objc_storeStrong((*(a1 + 32) + 40), a2);
    v9 = [v17 installURL];
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    v12 = *(a1 + 32);
    [objc_opt_class() saveAppDescriptionToCache:*(v12 + 40)];
    objc_sync_exit(v8);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    v15 = [WeakRetained loadingCompletionBlock];

    if (v15)
    {
      v16 = [v14 loadingCompletionBlock];
      (v16)[2](v16, v17 != 0);
    }
  }
}

+ (id)lookupAppDescriptionForInstalledApp:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v4 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "+[PSUIAppInstallController lookupAppDescriptionForInstalledApp:]";
    v28 = 2112;
    v29 = v3;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s requesting launch services bundle enumeration for %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __64__PSUIAppInstallController_lookupAppDescriptionForInstalledApp___block_invoke;
  v17 = &unk_279BAA1E0;
  v6 = v3;
  v18 = v6;
  v19 = &v20;
  [v5 enumerateBundlesOfType:1 block:&v14];

  if (v21[5])
  {
    v7 = objc_alloc_init(PSUIAppDescription);
    v8 = [v21[5] localizedNameForContext:{0, v14, v15, v16, v17}];
    [(PSUIAppDescription *)v7 setName:v8];

    v9 = [v21[5] vendorName];
    [(PSUIAppDescription *)v7 setPublisher:v9];

    [(PSUIAppDescription *)v7 setBundleID:v6];
    v10 = MEMORY[0x277D755B8];
    ScreenScale();
    v11 = [v10 _applicationIconImageForBundleIdentifier:v6 format:2 scale:?];
    [(PSUIAppDescription *)v7 setIcon:v11];
  }

  else
  {
    v11 = [MEMORY[0x277D4D830] loggerWithCategory:{@"AppInstallController", v14, v15, v16, v17}];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "+[PSUIAppInstallController lookupAppDescriptionForInstalledApp:]";
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "%s failed to retrieve bundle enumeration for %@", buf, 0x16u);
    }

    v7 = 0;
  }

  _Block_object_dispose(&v20, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

void __64__PSUIAppInstallController_lookupAppDescriptionForInstalledApp___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if (v7)
    {
      v8 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v11 = 136315394;
        v12 = "+[PSUIAppInstallController lookupAppDescriptionForInstalledApp:]_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s successfully retrieved bundle enumeration for %@", &v11, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)lookupAppFromStore:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CEE3F8];
  v8 = [MEMORY[0x277CEE570] bagSubProfile];
  v9 = [MEMORY[0x277CEE570] bagSubProfileVersion];
  v10 = [v7 bagForProfile:v8 profileVersion:v9];

  v11 = [objc_alloc(MEMORY[0x277CEE570]) initWithType:0 clientIdentifier:@"com.apple.telephony.CellularSettings" clientVersion:@"1" bag:v10];
  v25[0] = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v11 setBundleIdentifiers:v12];

  v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "+[PSUIAppInstallController lookupAppFromStore:completionHandler:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s requesting store info for %@", buf, 0x16u);
  }

  v14 = [v11 perform];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__PSUIAppInstallController_lookupAppFromStore_completionHandler___block_invoke;
  v18[3] = &unk_279BAA208;
  v19 = v5;
  v20 = v6;
  v15 = v6;
  v16 = v5;
  [v14 addFinishBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __65__PSUIAppInstallController_lookupAppFromStore_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v15 = 136315650;
      v16 = "+[PSUIAppInstallController lookupAppFromStore:completionHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s failed to retrieve store info for %@ (error = %@)", &v15, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 responseDataItems];
    if ([v8 count])
    {
      v9 = [PSUIAppDescription alloc];
      v10 = [v8 firstObject];
      v11 = [(PSUIAppDescription *)v9 initWithAMSMediaResponseDictionary:v10];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v12 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v15 = 136315394;
        v16 = "+[PSUIAppInstallController lookupAppFromStore:completionHandler:]_block_invoke";
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s failed to retrieve store info for %@ (No error, but no items returned.)", &v15, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)loadIconFromURL:(id)a3 session:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v8 = [MEMORY[0x277CCAD20] requestWithURL:v5 cachePolicy:2 timeoutInterval:20.0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__PSUIAppInstallController_loadIconFromURL_session___block_invoke;
  v16[3] = &unk_279BAA230;
  v9 = v5;
  v17 = v9;
  v19 = &v20;
  v10 = v7;
  v18 = v10;
  v11 = [v6 dataTaskWithRequest:v8 completionHandler:v16];
  v12 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "+[PSUIAppInstallController loadIconFromURL:session:]";
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_2658DE000, v12, OS_LOG_TYPE_DEFAULT, "%s requesting app icon from %@", buf, 0x16u);
  }

  [v11 resume];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __52__PSUIAppInstallController_loadIconFromURL_session___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
  v9 = v8;
  if (!v6 || v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = 136315650;
      v19 = "+[PSUIAppInstallController loadIconFromURL:session:]_block_invoke";
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "%s failed to retrieve app icon from %@ (error = %@)", &v18, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v18 = 136315394;
      v19 = "+[PSUIAppInstallController loadIconFromURL:session:]_block_invoke";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s successfully retrieved app icon from %@", &v18, 0x16u);
    }

    v11 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v12 = [v11 imageWithData:v6 scale:?];
    v13 = [v12 _applicationIconImageForFormat:2 precomposed:0];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v16 = *MEMORY[0x277D85DE8];
}

+ (id)iconLocalCacheURLFromKey:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CarrierAppIcon-%@", v4];

  v11 = [v9 URLByAppendingPathComponent:v10];

  return v11;
}

+ (void)saveAppDescriptionToCache:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  if (v4 && ([v4 bundleID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v4 bundleID];
    v9 = [v8 stringByAppendingString:@"_AppDescription"];

    v10 = [v7 dictionaryForKey:v9];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];

    if (v10)
    {
      v13 = [v10 objectForKey:@"AppIconFilenameKey"];

      if (v13)
      {
        v14 = objc_opt_class();
        v15 = [v7 stringForKey:@"AppIconFilenameKey"];
        v16 = [v14 iconLocalCacheURLFromKey:v15];

        v17 = [MEMORY[0x277CCAA00] defaultManager];
        [v17 removeItemAtURL:v16 error:0];
      }
    }

    v18 = [objc_opt_class() iconLocalCacheURLFromKey:v12];
    v19 = [v4 icon];
    v20 = UIImagePNGRepresentation(v19);
    [v20 writeToURL:v18 atomically:1];

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = [v4 name];

    if (v22)
    {
      v23 = [v4 name];
      [v21 setObject:v23 forKeyedSubscript:@"AppNameKey"];
    }

    v24 = [v4 publisher];

    if (v24)
    {
      v25 = [v4 publisher];
      [v21 setObject:v25 forKeyedSubscript:@"AppPublisherKey"];
    }

    v26 = [v4 bundleID];

    if (v26)
    {
      v27 = [v4 bundleID];
      [v21 setObject:v27 forKeyedSubscript:@"AppBundleIDKey"];
    }

    if (v12)
    {
      [v21 setObject:v12 forKeyedSubscript:@"AppIconFilenameKey"];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [v4 subtitle];
      [v21 setObject:v29 forKeyedSubscript:@"AppSubtitleKey"];
    }

    [v7 setObject:v21 forKey:v9];
    v30 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315906;
      v33 = "+[PSUIAppInstallController saveAppDescriptionToCache:]";
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2658DE000, v30, OS_LOG_TYPE_DEFAULT, "%s writing to cache, %@: %@, icon filename: %@", &v32, 0x2Au);
    }
  }

  else
  {
    v7 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&dword_2658DE000, v7, OS_LOG_TYPE_ERROR, "Null description!!", &v32, 2u);
    }
  }

  objc_sync_exit(v5);
  v31 = *MEMORY[0x277D85DE8];
}

+ (id)tryLoadAppDescriptionFromCacheForBundleId:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [(PSUIAppDescription *)v4 stringByAppendingString:@"_AppDescription"];
  v7 = [v29 dictionaryForKey:v6];
  if (v7)
  {
    v8 = objc_alloc_init(PSUIAppDescription);
    v9 = [v7 objectForKey:@"AppNameKey"];
    [(PSUIAppDescription *)v8 setName:v9];

    v10 = [v7 objectForKey:@"AppPublisherKey"];
    [(PSUIAppDescription *)v8 setPublisher:v10];

    v11 = [v7 objectForKey:@"AppBundleIDKey"];
    [(PSUIAppDescription *)v8 setBundleID:v11];

    v12 = [v7 objectForKey:@"AppIconFilenameKey"];
    if (v12)
    {
      v13 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() iconLocalCacheURLFromKey:v12];
        v15 = [v14 path];
        *buf = 136315650;
        v31 = "+[PSUIAppInstallController tryLoadAppDescriptionFromCacheForBundleId:]";
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s reading from cache, app description: %@, icon filename: %@", buf, 0x20u);
      }

      v16 = MEMORY[0x277D755B8];
      v17 = [objc_opt_class() iconLocalCacheURLFromKey:v12];
      v18 = [v17 path];
      v19 = [v16 imageWithContentsOfFile:v18];
      v20 = [v19 _applicationIconImageForFormat:2 precomposed:0];
      [(PSUIAppDescription *)v8 setIcon:v20];

      v21 = [v7 objectForKey:@"AppSubtitleKey"];
      [(PSUIAppDescription *)v8 setSubtitle:v21];

      v22 = [(PSUIAppDescription *)v8 name];
      if (!v22)
      {
        goto LABEL_16;
      }

      v23 = [(PSUIAppDescription *)v8 publisher];
      if (v23)
      {
        v24 = [(PSUIAppDescription *)v8 bundleID];
        if (v24)
        {
          v25 = [(PSUIAppDescription *)v8 icon];
          v26 = v25 == 0;

          if (!v26)
          {
            v22 = v8;
LABEL_16:

            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v22 = 0;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x277D4D830] loggerWithCategory:@"AppInstallController"];
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "+[PSUIAppInstallController tryLoadAppDescriptionFromCacheForBundleId:]";
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_2658DE000, &v8->super, OS_LOG_TYPE_DEFAULT, "%s could not find info from cache for bundleid: %@", buf, 0x16u);
  }

  v22 = 0;
LABEL_17:

  objc_sync_exit(v5);
  v27 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)installButtonTapped:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  installState = v5->_installState;
  v7 = v5->_appDescription;
  v8 = v5->_installURL;
  objc_sync_exit(v5);

  v9 = installState == 1;
  v10 = [(PSUIAppInstallController *)v5 getLogger];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[PSUIAppInstallController installButtonTapped:]";
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s Open button pressed", &buf, 0xCu);
    }

    PSAnalyticsSendEvent(@"com.apple.Preferences.CarrierSpaceServicesAppOpenEvent");
    v12 = [(PSUIAppDescription *)v7 bundleID];

    if (!MobileStoreUILibraryCore())
    {
      v20 = [(PSUIAppInstallController *)v5 getLogger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_2658DE000, v20, OS_LOG_TYPE_ERROR, "MobileStoreUI Framework unavailable. Not sending app launch metric.", &buf, 2u);
      }

      goto LABEL_22;
    }

    if (v5->_openAppURL)
    {
      v13 = [(PSUIAppInstallController *)v5 getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(NSURL *)v5->_openAppURL absoluteString];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "Launch app with URL: %@", &buf, 0xCu);
      }

      openAppURL = v5->_openAppURL;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v16 = off_28156A720;
      v28 = off_28156A720;
      if (!off_28156A720)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v30 = __getSUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptionsSymbolLoc_block_invoke;
        v31 = &unk_279BA9F68;
        v32 = &v25;
        v17 = MobileStoreUILibrary();
        v18 = dlsym(v17, "SUUIMetricsLaunchApplicationWithIdentifierAndURLAndLaunchOptions");
        *(v32[1] + 24) = v18;
        off_28156A720 = *(v32[1] + 24);
        v16 = v26[3];
      }

      _Block_object_dispose(&v25, 8);
      if (v16)
      {
        (v16)(v12, openAppURL, 0, 0, 0);
LABEL_22:
        CFRelease(v12);
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v21 = off_28156A718;
      v28 = off_28156A718;
      if (!off_28156A718)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v30 = __getSUUIMetricsLaunchApplicationWithIdentifierSymbolLoc_block_invoke;
        v31 = &unk_279BA9F68;
        v32 = &v25;
        v22 = MobileStoreUILibrary();
        v23 = dlsym(v22, "SUUIMetricsLaunchApplicationWithIdentifier");
        *(v32[1] + 24) = v23;
        off_28156A718 = *(v32[1] + 24);
        v21 = v26[3];
      }

      _Block_object_dispose(&v25, 8);
      if (v21)
      {
        v21(v12, 0);
        goto LABEL_22;
      }
    }

    dlerror();
    abort_report_np();
    __break(1u);
  }

  if (v11)
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PSUIAppInstallController installButtonTapped:]";
    _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s Install button pressed", &buf, 0xCu);
  }

  PSAnalyticsSendEvent(@"com.apple.Preferences.CarrierSpaceServicesAppInstallEvent");
  v19 = [MEMORY[0x277D75128] sharedApplication];
  [v19 openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:0];

LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)moreAppsButtonTapped:(id)a3
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 openURL:self->_moreAppsURL options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (id)specifierWithDescriptionParameters:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(PSUIAppInstallController *)self setLoadingCompletionBlock:a4];
  [(PSUIAppInstallController *)self load];
  v7 = self->_appDescription;
  if (v7)
  {
    if (!v6)
    {
LABEL_23:
      [(PSUIAppDescription *)v7 setInstalled:self->_installState == 1];
      v19 = [PSUIAppInstallCell specifierForAppWithDescription:v7 target:self action:sel_installButtonTapped_];
      goto LABEL_24;
    }

LABEL_3:
    v8 = [(PSUIAppInstallController *)self getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Update description with override text", &v26, 2u);
    }

    v9 = [v6 publisher];
    v10 = [v9 isEqualToString:&stru_287733598];

    if (v10)
    {
      v11 = [(PSUIAppInstallController *)self loadTextForPublisher:v7];
    }

    else
    {
      v20 = [v6 publisher];

      if (!v20)
      {
        goto LABEL_21;
      }

      v11 = [v6 publisher];
    }

    v21 = v11;
    [(PSUIAppDescription *)v7 setPublisher:v11];

LABEL_21:
    v22 = [v6 installedLabel];

    if (v22)
    {
      v23 = [v6 installedLabel];
      [(PSUIAppDescription *)v7 setInstalledLabel:v23];
    }

    goto LABEL_23;
  }

  v12 = self->_bundleID;
  v13 = [(PSUIAppInstallController *)self getLogger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "App description not yet loaded from app store, attempt to load from cache.", &v26, 2u);
  }

  v14 = [objc_opt_class() tryLoadAppDescriptionFromCacheForBundleId:v12];
  v7 = v14;
  if (v14)
  {
    v15 = [(PSUIAppDescription *)v14 bundleID];
    v16 = [v15 isEqualToString:self->_bundleID];

    if (v16)
    {
      v17 = [(PSUIAppInstallController *)self getLogger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v7;
        _os_log_impl(&dword_2658DE000, v17, OS_LOG_TYPE_DEFAULT, "App description found in cache; using cached description: %@", &v26, 0xCu);
      }

      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_3;
    }
  }

  v18 = [(PSUIAppInstallController *)self getLogger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_2658DE000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find app description in cache.", &v26, 2u);
  }

  v19 = 0;
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)loadTextForPublisher:(id)a3
{
  v4 = a3;
  v5 = [v4 subtitle];
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [v4 bundleID];
  v6 = [(PSUIAppInstallController *)self tryLoadSubTitleForBundleId:v7];

  if (!v6)
  {
    v5 = [v4 publisher];
LABEL_2:
    v6 = v5;
  }

  return v6;
}

- (id)tryLoadSubTitleForBundleId:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v4 stringByAppendingString:@"_AppDescription"];
  v8 = [v6 dictionaryForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"AppSubtitleKey"];
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v5);

  return v10;
}

@end