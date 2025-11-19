@interface APOdmlCoreDataStorage
- (APOdmlCoreDataStorage)init;
- (id)storePrecheck;
- (void)createContainer;
- (void)initializeCoreDataStackForClient;
- (void)initializeCoreDataStackForDaemon;
- (void)launchContainer;
- (void)makeApplicationSupportDirectory;
- (void)setContainerDescriptionClient;
- (void)setContainerDescriptionDaemon:(id)a3;
@end

@implementation APOdmlCoreDataStorage

- (APOdmlCoreDataStorage)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = APOdmlCoreDataStorage;
  v2 = [(APOdmlCoreDataStorage *)&v22 init];
  v5 = v2;
  if (v2)
  {
    v2->_numLaunchesAttempted = 0;
    v2->_coreDataIsInitialized = 0;
    v6 = objc_msgSend_sharedInstance(APOdmlDatabaseConfiguration, v3, v4);
    isDaemonProcess = objc_msgSend_isDaemonProcess(v6, v7, v8);

    v10 = OdmlLogForCategory(4uLL);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (isDaemonProcess)
    {
      if (v11)
      {
        v12 = objc_opt_class();
        *buf = 138477827;
        v24 = v12;
        v13 = v12;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing CoreData for daemon.", buf, 0xCu);
      }

      objc_msgSend_initializeCoreDataStackForDaemon(v5, v14, v15);
    }

    else
    {
      if (v11)
      {
        v16 = objc_opt_class();
        *buf = 138477827;
        v24 = v16;
        v17 = v16;
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%{private}@] Initializing CoreData for client.", buf, 0xCu);
      }

      objc_msgSend_initializeCoreDataStackForClient(v5, v18, v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)makeApplicationSupportDirectory
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = @"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/";
  v23 = 1;
  if (objc_msgSend_fileExistsAtPath_isDirectory_(v3, v5, v4, &v23))
  {
    v7 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      *buf = 138477827;
      v25 = v8;
      v9 = v8;
      _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "[%{private}@] Directory already exists.", buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v6, v4);
    v22 = 0;
    objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v3, v11, v10, 1, 0, &v22);
    v12 = v22;
    v7 = v22;
    v13 = OdmlLogForCategory(4uLL);
    v14 = v13;
    if (v7)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *buf = 138478083;
        v25 = v15;
        v26 = 2112;
        v27 = v7;
        v16 = v15;
        _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to make appropriate directory with error: %@", buf, 0x16u);
      }

      v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, @"APOdmlFeatureStorageErrorDomain", 5001, 0);
      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v18, v14, 0);
      objc_storeStrong(&self->_coreDataError, v12);
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138478083;
      v25 = v19;
      v26 = 2112;
      v27 = v10;
      v20 = v19;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_DEFAULT, "[%{private}@] Created directory at %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)initializeCoreDataStackForDaemon
{
  objc_msgSend_makeApplicationSupportDirectory(self, a2, v2);
  objc_msgSend_createContainer(self, v4, v5);
  objc_msgSend_setContainerDescriptionDaemon_(self, v6, *MEMORY[0x277CBE2E8]);

  MEMORY[0x2821F9670](self, sel_launchContainer, v7);
}

- (void)initializeCoreDataStackForClient
{
  objc_msgSend_createContainer(self, a2, v2);
  objc_msgSend_setContainerDescriptionClient(self, v4, v5);

  MEMORY[0x2821F9670](self, sel_launchContainer, v6);
}

- (void)createContainer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA8D8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
  v8 = objc_msgSend_URLForResource_withExtension_(v6, v7, @"FeatureModel", @"momd");
  v9 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138478083;
    v20 = objc_opt_class();
    v21 = 2112;
    v22 = v8;
    v10 = v20;
    _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_DEFAULT, "[%{private}@] Model URL: %@", &v19, 0x16u);
  }

  v11 = objc_alloc(MEMORY[0x277CBE450]);
  v13 = objc_msgSend_initWithContentsOfURL_(v11, v12, v8);
  v14 = objc_alloc(MEMORY[0x277CBE4A0]);
  v16 = objc_msgSend_initWithName_managedObjectModel_(v14, v15, @"FeatureModel", v13);
  persistentContainer = self->_persistentContainer;
  self->_persistentContainer = v16;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setContainerDescriptionDaemon:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = a3;
  v7 = objc_msgSend_fileURLWithPath_(v4, v6, @"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite");
  v8 = objc_alloc(MEMORY[0x277CBE4E0]);
  v10 = objc_msgSend_initWithURL_(v8, v9, v7);
  objc_msgSend_setOption_forKey_(v10, v11, MEMORY[0x277CBEC38], *MEMORY[0x277CBE210]);
  objc_msgSend_setType_(v10, v12, v5);

  v17[0] = v10;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v17, 1);
  objc_msgSend_setPersistentStoreDescriptions_(self->_persistentContainer, v15, v14);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setContainerDescriptionClient
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE4E0]);
  objc_msgSend_setOption_forKey_(v3, v4, @"com.apple.ap.adprivacyd.store", *MEMORY[0x277CBE340]);
  v5 = MEMORY[0x277CBEC38];
  objc_msgSend_setOption_forKey_(v3, v6, MEMORY[0x277CBEC38], *MEMORY[0x277CBE328]);
  objc_msgSend_setOption_forKey_(v3, v7, v5, *MEMORY[0x277CBE210]);
  objc_msgSend_setType_(v3, v8, *MEMORY[0x277CBE348]);
  v13[0] = v3;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v13, 1);
  objc_msgSend_setPersistentStoreDescriptions_(self->_persistentContainer, v11, v10);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)launchContainer
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numLaunchesAttempted(self, a2, v2);
  objc_msgSend_setNumLaunchesAttempted_(self, v5, (v4 + 1));
  v6 = OdmlLogForCategory(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v12 = objc_opt_class();
    v7 = v12;
    _os_log_impl(&dword_260ECB000, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@] Launching CoreData Container", buf, 0xCu);
  }

  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260ED2C54;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)storePrecheck
{
  v4 = objc_msgSend_coreDataError(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_coreDataError(self, v5, v6);
  }

  else if (objc_msgSend_coreDataIsInitialized(self, v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = objc_msgSend_initWithDomain_code_userInfo_(v8, v9, @"APOdmlFeatureStorageErrorDomain", 5002, 0);
  }

  return v7;
}

@end