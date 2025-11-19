@interface TSPSaveOperationState
- (BOOL)hasNewStorageForData:(id)a3;
- (TSPSaveOperationState)init;
- (TSPSaveOperationState)initWithUpdateType:(int64_t)a3;
- (id)saveOperationStateForRemoteStorage:(id)a3;
- (void)addNewPackageDataStorage:(id)a3 forRemoteDataStorage:(id)a4 changeCount:(unint64_t)a5;
- (void)enumerateDataAndStoragesUsingBlock:(id)a3;
- (void)enumerateRemoteDataUsingBlock:(id)a3;
- (void)willMigrateRemoteDataToTemporaryStorage:(id)a3;
@end

@implementation TSPSaveOperationState

- (TSPSaveOperationState)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPSaveOperationState init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSaveOperationState.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 38, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPSaveOperationState init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPSaveOperationState)initWithUpdateType:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = TSPSaveOperationState;
  v4 = [(TSPSaveOperationState *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAB00]);
    v7 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v5, v6, 512, 0, 16);
    newDataStorages = v4->_newDataStorages;
    v4->_newDataStorages = v7;

    v9 = objc_alloc(MEMORY[0x277CCAA50]);
    v11 = objc_msgSend_initWithOptions_capacity_(v9, v10, 512, 0);
    remoteData = v4->_remoteData;
    v4->_remoteData = v11;

    v13 = objc_alloc(MEMORY[0x277CCAB00]);
    v15 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v13, v14, 512, 0, 16);
    saveOperationStatesForRemoteStorages = v4->_saveOperationStatesForRemoteStorages;
    v4->_saveOperationStatesForRemoteStorages = v15;

    v4->_updateType = a3;
    v17 = v4;
  }

  return v4;
}

- (BOOL)hasNewStorageForData:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_newDataStorages, a2, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)enumerateDataAndStoragesUsingBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_newDataStorages;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v19, 16);
  if (v8)
  {
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = objc_msgSend_objectForKey_(self->_newDataStorages, v7, v11, v14);
      v4[2](v4, v11, v12, &v18);
      LOBYTE(v11) = v18;

      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v19, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateRemoteDataUsingBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_remoteData;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v12 + 1) + 8 * v9), &v16);
      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v12, v17, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)willMigrateRemoteDataToTemporaryStorage:(id)a3
{
  v26 = a3;
  objc_opt_class();
  v6 = objc_msgSend_storage(v26, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    objc_msgSend_addObject_(self->_remoteData, v8, v26);
    v10 = objc_msgSend_objectForKey_(self->_saveOperationStatesForRemoteStorages, v9, v7);

    if (v10)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPSaveOperationState willMigrateRemoteDataToTemporaryStorage:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSaveOperationState.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 99, 0, "expected nil value for '%{public}s'", "[_saveOperationStatesForRemoteStorages objectForKey:remoteDataStorage]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = [TSPRemoteDataStorageSaveOperationState alloc];
    v22 = objc_msgSend_packageDataStorage(v7, v20, v21);
    v24 = objc_msgSend_initWithChangeCount_originalPackageDataStorage_updatedPackageDataStorage_(v19, v23, 0, v22, 0);

    objc_msgSend_setObject_forKey_(self->_saveOperationStatesForRemoteStorages, v25, v24, v7);
  }
}

- (void)addNewPackageDataStorage:(id)a3 forRemoteDataStorage:(id)a4 changeCount:(unint64_t)a5
{
  v33 = a3;
  v9 = a4;
  if (!v33)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPSaveOperationState addNewPackageDataStorage:forRemoteDataStorage:changeCount:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSaveOperationState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 111, 0, "invalid nil value for '%{public}s'", "packageDataStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_objectForKey_(self->_saveOperationStatesForRemoteStorages, v8, v9);

  if (v17)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPSaveOperationState addNewPackageDataStorage:forRemoteDataStorage:changeCount:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSaveOperationState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 113, 0, "expected nil value for '%{public}s'", "[_saveOperationStatesForRemoteStorages objectForKey:remoteDataStorage]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = [TSPRemoteDataStorageSaveOperationState alloc];
  v29 = objc_msgSend_packageDataStorage(v9, v27, v28);
  v31 = objc_msgSend_initWithChangeCount_originalPackageDataStorage_updatedPackageDataStorage_(v26, v30, a5, v29, v33);

  objc_msgSend_setObject_forKey_(self->_saveOperationStatesForRemoteStorages, v32, v31, v9);
}

- (id)saveOperationStateForRemoteStorage:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_saveOperationStatesForRemoteStorages, a2, a3);

  return v3;
}

@end