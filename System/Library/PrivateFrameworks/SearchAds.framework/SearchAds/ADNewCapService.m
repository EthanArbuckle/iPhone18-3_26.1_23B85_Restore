@interface ADNewCapService
- (ADNewCapService)initWithStorageType:(int64_t)a3;
- (id)_storageTypeString;
- (id)clickCountByLine;
- (id)impressionCountByLine;
- (void)cleanDownloadData;
- (void)updateCapData:(id)a3 forType:(int64_t)a4 completionHandler:(id)a5;
- (void)updateDownloadData:(id)a3 forType:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation ADNewCapService

- (ADNewCapService)initWithStorageType:(int64_t)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = ADNewCapService;
  v4 = [(ADNewCapService *)&v51 init];
  v9 = v4;
  if (!v4)
  {
LABEL_19:
    v47 = v9;
    goto LABEL_20;
  }

  v4->_storageType = a3;
  v10 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v5, v6, v7, v8);
  v15 = v10;
  storageType = v9->_storageType;
  if (storageType > 3)
  {
    if (storageType <= 5)
    {
      v17 = objc_msgSend_iris2Settings(v10, v11, v12, v13, v14);
      goto LABEL_15;
    }

    if (storageType == 6)
    {
      v17 = objc_msgSend_metisSettings(v10, v11, v12, v13, v14);
      goto LABEL_15;
    }

    if (storageType == 7)
    {
      v17 = objc_msgSend_floraSettings(v10, v11, v12, v13, v14);
      goto LABEL_15;
    }
  }

  else
  {
    if ((storageType - 2) < 2)
    {
      v17 = objc_msgSend_iris1Settings(v10, v11, v12, v13, v14);
      goto LABEL_15;
    }

    if (!storageType)
    {
      v17 = objc_msgSend_searchSettings(v10, v11, v12, v13, v14);
      goto LABEL_15;
    }

    if (storageType == 1)
    {
      v17 = objc_msgSend_landingPageSettings(v10, v11, v12, v13, v14);
LABEL_15:
      v22 = v17;
      objc_msgSend_clickExpirationThresholdInSeconds(v17, v18, v19, v20, v21);
      v9->_clickExpirationThresholdInSeconds = v23;
      objc_msgSend_frequencyCapExpirationInSeconds(v22, v24, v25, v26, v27);
      v9->_frequencyCapExpirationInSeconds = v28;
      v9->_maxFrequencyCapElements = objc_msgSend_maxFrequencyCapElements(v22, v29, v30, v31, v32);
      v9->_maxClickCapElements = objc_msgSend_maxClickCapElements(v22, v33, v34, v35, v36);
      if (v9->_storageType)
      {
        v41 = objc_alloc(MEMORY[0x277CE9608]);
        v45 = objc_msgSend_initWithStorageType_(v41, v42, v9->_storageType, v43, v44);
      }

      else
      {
        v45 = objc_msgSend_sharedInstance(MEMORY[0x277CE9608], v37, v38, v39, v40);
      }

      capData = v9->_capData;
      v9->_capData = v45;

      goto LABEL_19;
    }
  }

  v50 = APLogForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v53 = a3;
    _os_log_impl(&dword_264E42000, v50, OS_LOG_TYPE_ERROR, "Unknown Cap storage type: %ld", buf, 0xCu);
  }

  v47 = 0;
LABEL_20:

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)updateCapData:(id)a3 forType:(int64_t)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ADNewCapService updateCapData:forType:completionHandler:]";
    _os_log_impl(&dword_264E42000, v10, OS_LOG_TYPE_DEFAULT, "API call to %s received.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v11, v12, v13, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_264E442FC;
  v22[3] = &unk_279B88840;
  objc_copyWeak(v25, buf);
  v16 = v9;
  v24 = v16;
  v17 = v8;
  v23 = v17;
  v25[1] = a4;
  objc_msgSend_addOperationWithBlock_(v15, v18, v22, v19, v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateDownloadData:(id)a3 forType:(int64_t)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ADNewCapService updateDownloadData:forType:completionHandler:]";
    _os_log_impl(&dword_264E42000, v10, OS_LOG_TYPE_DEFAULT, "API call to %s received.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v11, v12, v13, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_264E446B4;
  v22[3] = &unk_279B88840;
  objc_copyWeak(v25, buf);
  v25[1] = a4;
  v16 = v9;
  v24 = v16;
  v17 = v8;
  v23 = v17;
  objc_msgSend_addOperationWithBlock_(v15, v18, v22, v19, v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

- (id)clickCountByLine
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v11 = objc_msgSend_maxClickCapElements(self, v7, v8, v9, v10);
  objc_msgSend_clickExpirationThresholdInSeconds(self, v12, v13, v14, v15);
  v19 = objc_msgSend_clickCountByLineMaxClickElements_expirationClickThreshold_(v6, v16, v11, v17, v18);

  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_msgSend__storageTypeString(self, v21, v22, v23, v24);
    v26 = v25;
    v27 = @"{}";
    if (v19)
    {
      v27 = v19;
    }

    v30 = 138543619;
    v31 = v25;
    v32 = 2113;
    v33 = v27;
    _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing click cap data for %{public}@. Loaded data: %{private}@.", &v30, 0x16u);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)impressionCountByLine
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v11 = objc_msgSend_maxFrequencyCapElements(self, v7, v8, v9, v10);
  objc_msgSend_frequencyCapExpirationInSeconds(self, v12, v13, v14, v15);
  v19 = objc_msgSend_impressionCountByLineWithMaxFrequencyElements_expirationFrequencyThreshold_(v6, v16, v11, v17, v18);

  v20 = APLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_msgSend__storageTypeString(self, v21, v22, v23, v24);
    v26 = v25;
    v27 = @"{}";
    if (v19)
    {
      v27 = v19;
    }

    v30 = 138543619;
    v31 = v25;
    v32 = 2113;
    v33 = v27;
    _os_log_impl(&dword_264E42000, v20, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing impression cap data for %{public}@. Loaded data: %{private}@.", &v30, 0x16u);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)cleanDownloadData
{
  v18 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_maxClickCapElements(self, v6, v7, v8, v9);
  objc_msgSend_clickExpirationThresholdInSeconds(self, v11, v12, v13, v14);
  objc_msgSend_cleanDownloadArrayWithMaxClickElements_expirationClickThreshold_(v18, v15, v10, v16, v17);
}

- (id)_storageTypeString
{
  v5 = objc_msgSend_storageType(self, a2, v2, v3, v4);
  if ((v5 - 1) > 6)
  {
    return @"Results";
  }

  else
  {
    return off_279B88860[v5 - 1];
  }
}

@end