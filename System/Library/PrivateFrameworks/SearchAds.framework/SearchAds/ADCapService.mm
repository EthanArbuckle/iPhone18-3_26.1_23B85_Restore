@interface ADCapService
- (ADCapService)init;
- (id)clickCountByLine;
- (id)impressionCountByLine;
- (void)cleanDownloadData;
- (void)updateCapData:(id)data forType:(int64_t)type completionHandler:(id)handler;
- (void)updateDownloadData:(id)data identifier:(id)identifier forType:(int64_t)type completionHandler:(id)handler;
@end

@implementation ADCapService

- (ADCapService)init
{
  v10.receiver = self;
  v10.super_class = ADCapService;
  v6 = [(ADCapService *)&v10 init];
  if (v6)
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277CE9608], v2, v3, v4, v5);
    capData = v6->_capData;
    v6->_capData = v7;
  }

  return v6;
}

- (void)updateCapData:(id)data forType:(int64_t)type completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ADCapService updateCapData:forType:completionHandler:]";
    _os_log_impl(&dword_264E42000, v10, OS_LOG_TYPE_DEFAULT, "API call to %s received.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v11, v12, v13, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_264E460A0;
  v22[3] = &unk_279B888D0;
  objc_copyWeak(v25, buf);
  v22[4] = self;
  v16 = handlerCopy;
  v24 = v16;
  v17 = dataCopy;
  v23 = v17;
  v25[1] = type;
  objc_msgSend_addOperationWithBlock_(v15, v18, v22, v19, v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateDownloadData:(id)data identifier:(id)identifier forType:(int64_t)type completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = APLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[ADCapService updateDownloadData:identifier:forType:completionHandler:]";
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_264E42000, v13, OS_LOG_TYPE_DEFAULT, "%s (identifier: %@ type:%ld)", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v18 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v14, v15, v16, v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_264E46468;
  v25[3] = &unk_279B888F8;
  objc_copyWeak(v28, buf);
  v28[1] = type;
  v19 = handlerCopy;
  v27 = v19;
  v25[4] = self;
  v20 = identifierCopy;
  v26 = v20;
  objc_msgSend_addOperationWithBlock_(v18, v21, v25, v22, v23);

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

- (id)clickCountByLine
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_clickCountByLine(v5, v6, v7, v8, v9);

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"{}";
    if (v10)
    {
      v12 = v10;
    }

    v15 = 138477827;
    v16 = v12;
    _os_log_impl(&dword_264E42000, v11, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing click cap data for Search Results Page (SRP). Loaded data: %{private}@.", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)impressionCountByLine
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_capData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_impressionCountByLine(v5, v6, v7, v8, v9);

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = @"{}";
    if (v10)
    {
      v12 = v10;
    }

    v15 = 138477827;
    v16 = v12;
    _os_log_impl(&dword_264E42000, v11, OS_LOG_TYPE_DEBUG, "[CappingService] Preparing impression cap data for Search Results Page (SRP). Loaded data: %{private}@.", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)cleanDownloadData
{
  v9 = objc_msgSend_capData(self, a2, v2, v3, v4);
  objc_msgSend_cleanDownloadArray(v9, v5, v6, v7, v8);
}

@end