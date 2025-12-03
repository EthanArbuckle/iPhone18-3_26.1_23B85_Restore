@interface APOdmlStoreServerContainer
+ (id)sharedInstance;
- (APOdmlStoreServerContainer)init;
- (id)storeServerForModelURL:(id)l;
- (void)_startListening:(id)listening;
- (void)startListening;
@end

@implementation APOdmlStoreServerContainer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF1028;
  block[3] = &unk_279AC5E98;
  block[4] = self;
  if (qword_280CCF560 != -1)
  {
    dispatch_once(&qword_280CCF560, block);
  }

  v2 = qword_280CCF578;

  return v2;
}

- (APOdmlStoreServerContainer)init
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = APOdmlStoreServerContainer;
  v2 = [(APOdmlStoreServerContainer *)&v27 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCA8D8];
    v4 = objc_opt_class();
    v6 = objc_msgSend_bundleForClass_(v3, v5, v4);
    v8 = objc_msgSend_URLForResource_withExtension_(v6, v7, @"FeatureModel", @"momd");
    modelURL = v2->_modelURL;
    v2->_modelURL = v8;

    v11 = v2->_modelURL;
    if (!v11)
    {
      v12 = OdmlLogForCategory(4uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        *buf = 138477827;
        v29 = v13;
        v14 = v13;
        _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_ERROR, "[%{private}@] Error: CoreData model not found.", buf, 0xCu);
      }

      v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"APOdmlFeatureStorageErrorDomain", 5010, 0);
      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v17, v16, 0);

      v11 = v2->_modelURL;
    }

    v18 = objc_msgSend_storeServerForModelURL_(v2, v10, v11);
    storeServer = v2->_storeServer;
    v2->_storeServer = v18;

    v2->_isListening = 0;
    listeningError = v2->_listeningError;
    v2->_listeningError = 0;

    v21 = [APOdmlUnfairLock alloc];
    v23 = objc_msgSend_initWithOptions_(v21, v22, 1);
    listeningLock = v2->_listeningLock;
    v2->_listeningLock = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)storeServerForModelURL:(id)l
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBE210];
  v17[0] = *MEMORY[0x277CBE338];
  v17[1] = v3;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CBE340];
  v17[2] = *MEMORY[0x277CBE328];
  v17[3] = v4;
  v18[2] = MEMORY[0x277CBEC38];
  v18[3] = @"com.apple.ap.adprivacyd.store";
  v5 = MEMORY[0x277CBEAC0];
  lCopy = l;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v5, v7, v18, v17, 4);
  v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v9, @"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite");
  v11 = objc_alloc(MEMORY[0x277CBE510]);
  v12 = objc_alloc_init(APOdmlStoreServerPolicy);
  v14 = objc_msgSend_initForStoreWithURL_usingModelAtURL_options_policy_(v11, v13, v10, lCopy, v8, v12);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)startListening
{
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF1454;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startListening:(id)listening
{
  v33[1] = *MEMORY[0x277D85DE8];
  listeningCopy = listening;
  v5 = objc_alloc(MEMORY[0x277CBE450]);
  v8 = objc_msgSend_modelURL(self, v6, v7);
  v10 = objc_msgSend_initWithContentsOfURL_(v5, v9, v8);

  v11 = objc_alloc(MEMORY[0x277CBE4A0]);
  v13 = objc_msgSend_initWithName_managedObjectModel_(v11, v12, @"FeatureModel", v10);
  v15 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v14, @"/private/var/mobile/Library/Application Support/com.apple.ap.adprivacyd/FeatureModel.sqlite");
  v16 = objc_alloc(MEMORY[0x277CBE4E0]);
  v18 = objc_msgSend_initWithURL_(v16, v17, v15);
  objc_msgSend_setType_(v18, v19, *MEMORY[0x277CBE2E8]);
  objc_msgSend_setShouldInferMappingModelAutomatically_(v18, v20, 1);
  objc_msgSend_setShouldMigrateStoreAutomatically_(v18, v21, 1);
  v22 = MEMORY[0x277CBEC38];
  objc_msgSend_setOption_forKey_(v18, v23, MEMORY[0x277CBEC38], *MEMORY[0x277CBE270]);
  objc_msgSend_setOption_forKey_(v18, v24, v22, *MEMORY[0x277CBE210]);
  v33[0] = v18;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v33, 1);
  objc_msgSend_setPersistentStoreDescriptions_(v13, v27, v26);

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_260EF19E8;
  v31[3] = &unk_279AC69C0;
  v31[4] = self;
  v32 = listeningCopy;
  v28 = listeningCopy;
  objc_msgSend_loadPersistentStoresWithCompletionHandler_(v13, v29, v31);

  v30 = *MEMORY[0x277D85DE8];
}

@end