@interface ADDESRecordsManager
- (ADDESRecordsManager)init;
- (BOOL)isAppInstalled:(id)installed;
- (id)eventTypeToString:(int64_t)string;
- (void)createRecords:(id)records firstOrganicId:(id)id error:(id)error;
- (void)updateDESRecord:(id)record forEvent:(int64_t)event;
@end

@implementation ADDESRecordsManager

- (ADDESRecordsManager)init
{
  v15.receiver = self;
  v15.super_class = ADDESRecordsManager;
  v6 = [(ADDESRecordsManager *)&v15 init];
  if (v6)
  {
    v7 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v2, v3, v4, v5);
    v12 = objc_msgSend_UUIDString(v7, v8, v9, v10, v11);
    recordID = v6->_recordID;
    v6->_recordID = v12;
  }

  return v6;
}

- (void)createRecords:(id)records firstOrganicId:(id)id error:(id)error
{
  v54 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  idCopy = id;
  errorCopy = error;
  v15 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v11, v12, v13, v14);
  isPersonalizedAdsEnabled = objc_msgSend_isPersonalizedAdsEnabled(v15, v16, v17, v18, v19);

  if (isPersonalizedAdsEnabled)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = recordsCopy;
    obj = recordsCopy;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v49, v53, 16);
    if (v22)
    {
      v27 = v22;
      v28 = *v50;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v50 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v49 + 1) + 8 * i);
          v31 = objc_msgSend_adamID(v30, v23, v24, v25, v26, v47);
          isAppInstalled = objc_msgSend_isAppInstalled_(self, v32, v31, v33, v34);

          v40 = objc_msgSend_adamID(v30, v36, v37, v38, v39);
          isEqualToString = objc_msgSend_isEqualToString_(idCopy, v41, v40, v42, v43);

          objc_msgSend__createRecordForAdData_installed_isDupe_rerankingError_(self, v45, v30, isAppInstalled, isEqualToString, errorCopy);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v49, v53, 16);
      }

      while (v27);
    }

    recordsCopy = v47;
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)updateDESRecord:(id)record forEvent:(int64_t)event
{
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v7, v8, v9, v10);
  isPersonalizedAdsEnabled = objc_msgSend_isPersonalizedAdsEnabled(v11, v12, v13, v14, v15);

  if (isPersonalizedAdsEnabled)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_msgSend_eventTypeToString_(self, v18, event, v19, v20);
      v30 = 138412546;
      v31 = recordCopy;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_264E42000, v17, OS_LOG_TYPE_DEBUG, "[AdamID %@] Updating DES record with event %@", &v30, 0x16u);
    }

    v22 = MEMORY[0x277D42CE0];
    v27 = objc_msgSend_recordID(self, v23, v24, v25, v26);
    objc_msgSend_updateWithRecordID_adamID_event_(v22, v28, v27, recordCopy, event);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAppInstalled:(id)installed
{
  v5 = objc_msgSend_integerValue(installed, a2, installed, v3, v4);
  v6 = objc_alloc(MEMORY[0x277CC1E70]);
  v9 = objc_msgSend_initWithStoreItemIdentifier_error_(v6, v7, v5, 0, v8);
  LOBYTE(v5) = v9 != 0;

  return v5;
}

- (id)eventTypeToString:(int64_t)string
{
  v9 = *MEMORY[0x277D85DE8];
  if (string == 1)
  {
    result = @"Impression Event";
  }

  else if (string == 2)
  {
    result = @"Interaction Event";
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      stringCopy = string;
      _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_ERROR, "Error: Unidentifiable event type: %ld.", &v7, 0xCu);
    }

    result = @"Unknown";
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end