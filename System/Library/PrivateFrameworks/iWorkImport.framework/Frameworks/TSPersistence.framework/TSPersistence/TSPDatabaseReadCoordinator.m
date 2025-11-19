@interface TSPDatabaseReadCoordinator
- (TSPDatabaseReadCoordinator)init;
- (TSPDatabaseReadCoordinator)initWithContext:(id)a3 packageURL:(id)a4 finalizeHandlerQueue:(id)a5 error:(id *)a6;
- (id)context;
- (id)createUpgradedOldAppBundleResourcePath:(id)a3;
- (id)dataForAppRelativePath:(id)a3 filename:(id)a4;
- (id)dataForDatabaseObject:(id)a3 filename:(id)a4;
- (id)dataForLinkURL:(id)a3 filename:(id)a4;
- (id)dataForReadChannel:(id)a3 filename:(id)a4 linkURL:(id)a5;
- (id)databaseReader:(id)a3 wantsDataForAppRelativePath:(id)a4 filename:(id)a5;
- (id)databaseReader:(id)a3 wantsDataForDatabaseObjectIdentifier:(int64_t)a4 filename:(id)a5;
- (id)documentResourceInfoForAppRelativePath:(id)a3;
- (id)externalObjectForIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isReadFinished:(BOOL)a5;
- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4;
- (void)readComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)readRootObjectWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)reader:(id)a3 didUnarchiveObject:(id)a4;
@end

@implementation TSPDatabaseReadCoordinator

- (TSPDatabaseReadCoordinator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDatabaseReadCoordinator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 57, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDatabaseReadCoordinator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDatabaseReadCoordinator)initWithContext:(id)a3 packageURL:(id)a4 finalizeHandlerQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v42.receiver = self;
  v42.super_class = TSPDatabaseReadCoordinator;
  v13 = [(TSPReadCoordinatorBase *)&v42 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_context, v10);
    v15 = objc_alloc(MEMORY[0x277CCAD78]);
    v17 = objc_msgSend_initWithUUIDString_(v15, v16, @"B2DBC1DA-E11C-4083-BF67-58AB57330BAF");
    baseObjectUUID = v14->_baseObjectUUID;
    v14->_baseObjectUUID = v17;

    objc_storeStrong(&v14->_packageURL, a4);
    objc_storeStrong(&v14->_finalizeHandlerQueue, a5);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("TSPDatabaseReadCoordinator.Data", v19);
    dataQueue = v14->_dataQueue;
    v14->_dataQueue = v20;

    v24 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v22, v23);
    dataDictionary = v14->_dataDictionary;
    v14->_dataDictionary = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("TSPDatabaseReadCoordinator.AppRelativeDatas", v26);
    appRelativeDataQueue = v14->_appRelativeDataQueue;
    v14->_appRelativeDataQueue = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appRelativeDataDictionary = v14->_appRelativeDataDictionary;
    v14->_appRelativeDataDictionary = v29;

    v31 = [TSPDatabase alloc];
    v34 = objc_msgSend_path(v11, v32, v33);
    inited = objc_msgSend_initReadonlyWithPath_error_(v31, v35, v34, a6);
    database = v14->_database;
    v14->_database = inited;

    v39 = v14->_database;
    if (!v39)
    {
LABEL_5:
      v41 = 0;
      objc_msgSend_closeWithError_(v39, v38, &v41);

      v14 = 0;
      goto LABEL_6;
    }

    if ((objc_msgSend_documentVersion_error_(v39, v38, &v14->_databaseVersion, a6) & 1) == 0)
    {
      v39 = v14->_database;
      goto LABEL_5;
    }
  }

LABEL_6:

  return v14;
}

- (void)readRootObjectWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A87BA8;
  aBlock[3] = &unk_27A6E4B68;
  v8 = v6;
  v19 = v8;
  v20 = v7;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = dispatch_get_global_queue(0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A87CC8;
  v15[3] = &unk_27A6E5D30;
  v15[4] = WeakRetained;
  v15[5] = self;
  v16 = v8;
  v17 = v10;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)readComponent:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD5CD8();
  }

  v12 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v10, 0);
  objc_msgSend_setError_(self, v13, v12);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A885D8;
  block[3] = &unk_27A6E3480;
  v16 = v11;
  v14 = v11;
  dispatch_async(v9, block);
}

- (id)dataForDatabaseObject:(id)a3 filename:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v6)
  {
    if (objc_msgSend_hasDataState(v6, v7, v8))
    {
      database = self->_database;
      v22 = 0;
      v13 = objc_msgSend_openBlobForObject_error_(database, v10, v6, &v22);
      v14 = v22;
      if (v13)
      {
        v15 = [TSPDatabaseInputStream alloc];
        v17 = objc_msgSend_initWithBlob_(v15, v16, v13);
        v19 = objc_msgSend_dataForReadChannel_filename_linkURL_(self, v18, v17, v9, 0);
      }

      else
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD5CEC();
        }

        v19 = 0;
      }
    }

    else
    {
      v14 = objc_msgSend_fileURL(v6, v10, v11);
      v19 = objc_msgSend_dataForLinkURL_filename_(self, v20, v14, v9);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dataForLinkURL:(id)a3 filename:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D811D0]);
    v8 = objc_msgSend_initForReadingURL_error_(v6, v7, v5, 0);
    v11 = objc_msgSend_lastPathComponent(v5, v9, v10);
    v13 = objc_msgSend_dataForReadChannel_filename_linkURL_(self, v12, v8, v11, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)dataForReadChannel:(id)a3 filename:(id)a4 linkURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v14 = objc_msgSend_dataManager(WeakRetained, v12, v13);
    v16 = objc_msgSend_dataFromReadChannel_filename_dataURL_canLink_(v14, v15, v8, v9, v10, 1);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)documentResourceInfoForAppRelativePath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_resourceContext(WeakRetained, v6, v7);

  v11 = objc_msgSend_tangierDocumentResourceLegacyRegistry(v8, v9, v10);
  v13 = objc_msgSend_createUpgradedOldAppBundleResourcePath_(self, v12, v4);
  v15 = objc_msgSend_documentResourceLegacyInfoForApplicationRelativePath_(v11, v14, v13);

  if (v15)
  {
    v18 = objc_msgSend_documentResourceRegistry(v8, v16, v17);
    v21 = objc_msgSend_digestString(v15, v19, v20);
    v24 = objc_msgSend_locator(v15, v22, v23);
    v26 = objc_msgSend_documentResourceInfoForDigestString_locator_(v18, v25, v21, v24);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD5D14();
    }

    v26 = 0;
  }

  return v26;
}

- (id)dataForAppRelativePath:(id)a3 filename:(id)a4
{
  v7 = objc_msgSend_documentResourceInfoForAppRelativePath_(self, a2, a3, a4);
  if (!v7 || (WeakRetained = objc_loadWeakRetained(&self->_context), objc_msgSend_dataManager(WeakRetained, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_dataForDocumentResourceInfo_fromFileURL_(v11, v12, v7, 0), v13 = objc_claimAutoreleasedReturnValue(), v11, WeakRetained, !v13))
  {
    v13 = objc_msgSend_null(TSPData, v5, v6);
  }

  return v13;
}

- (id)createUpgradedOldAppBundleResourcePath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDatabaseReadCoordinator createUpgradedOldAppBundleResourcePath:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 264, 0, "invalid nil value for '%{public}s'", "oldRelativePath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (self->_databaseVersion <= 0x2CBDA8414)
  {
    v15 = objc_autoreleasePoolPush();
    v18 = objc_msgSend_pathComponents(v6, v16, v17);
    if (objc_msgSend_count(v18, v19, v20) == 2)
    {
      v22 = objc_msgSend_objectAtIndex_(v18, v21, 0);
      if (objc_msgSend_isEqualToString_(v22, v23, @"Welcome"))
      {
        WeakRetained = objc_loadWeakRetained(&self->_context);
        v27 = objc_msgSend_resourceContext(WeakRetained, v25, v26);

        v30 = objc_msgSend_tangierDocumentResourceLegacyRegistry(v27, v28, v29);
        v32 = objc_msgSend_documentResourceLegacyInfoForApplicationRelativePath_(v30, v31, v6);

        if (v32)
        {
          v14 = 0;
        }

        else
        {
          v83 = objc_msgSend_objectAtIndex_(v18, v33, 1);
          v42 = objc_msgSend_stringByAppendingString_(@"loc_", v41, v83);
          v14 = objc_msgSend_stringByAppendingPathComponent_(v22, v43, v42);

          v45 = objc_msgSend_documentResourceLegacyInfoForApplicationRelativePath_(v30, v44, v14);

          if (!v45)
          {
            v47 = objc_msgSend_stringByAppendingPathComponent_(@"OldAssets", v46, v83);

            v14 = v47;
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPDatabaseReadCoordinator createUpgradedOldAppBundleResourcePath:]");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 272, 0, "Must have 2 path components in app bundled resource paths");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      v14 = 0;
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v14 = 0;
  }

  v48 = objc_msgSend_lastPathComponent(v6, v4, v5);
  if (objc_msgSend_isEqualToString_(v48, v49, @"Parchment_bk.pdf"))
  {
    v51 = objc_msgSend_stringByAppendingPathComponent_(@"OldAssets", v50, v48);

    v14 = v51;
  }

  if (!v14)
  {
    databaseVersion = self->_databaseVersion;
    if (databaseVersion < 0x51FF69E78)
    {
      if (qword_280A52A10 != -1)
      {
        sub_276BD5D28();
      }

      v54 = objc_autoreleasePoolPush();
      v58 = objc_msgSend_objectForKey_(qword_280A52A18, v55, v48);
      if (v58 && (objc_msgSend_pathComponents(v6, v56, v57), v59 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend_count(v59, v60, v61), v59, v62 >= 2))
      {
        v63 = objc_msgSend_stringByDeletingLastPathComponent(v6, v56, v57);
        v14 = objc_msgSend_stringByAppendingPathComponent_(v63, v64, v58);
      }

      else
      {
        v14 = objc_msgSend_copy(v58, v56, v57);
      }

      objc_autoreleasePoolPop(v54);
      if (v14)
      {
        goto LABEL_20;
      }

      databaseVersion = self->_databaseVersion;
    }

    if (databaseVersion >= 0x51FF69E78)
    {
      goto LABEL_43;
    }

    v65 = objc_autoreleasePoolPush();
    v68 = objc_msgSend_pathComponents(v6, v66, v67);
    if (objc_msgSend_count(v68, v69, v70) == 2)
    {
      v72 = objc_msgSend_objectAtIndex_(v68, v71, 0);
      if (!objc_msgSend_isEqualToString_(v72, v73, @"Cerulean"))
      {
        goto LABEL_40;
      }

      if (qword_280A52A20 != -1)
      {
        sub_276BD5D3C();
      }

      if (objc_msgSend_containsObject_(qword_280A52A28, v74, v48))
      {
        v14 = objc_msgSend_stringByAppendingPathComponent_(@"Chalkboard", v75, v48);
      }

      else
      {
LABEL_40:
        v14 = 0;
      }
    }

    else
    {
      v76 = MEMORY[0x277D81150];
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSPDatabaseReadCoordinator createUpgradedOldAppBundleResourcePath:]");
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v80, v77, v79, 370, 0, "Must have 2 path components in app bundled resource paths");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
      v14 = 0;
    }

    objc_autoreleasePoolPop(v65);
    if (!v14)
    {
LABEL_43:
      if (qword_280A52A30 != -1)
      {
        sub_276BD5D50();
      }

      v14 = objc_msgSend_objectForKeyedSubscript_(qword_280A52A38, v50, v6);
      if (!v14)
      {
        v14 = v6;
      }
    }
  }

LABEL_20:

  return v14;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)externalObjectForIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4 isReadFinished:(BOOL)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_objectForIdentifier_(WeakRetained, v7, a3);

  return v8;
}

- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_dataManager(WeakRetained, v6, v7);
  v10 = objc_msgSend_dataForIdentifier_(v8, v9, a4);

  return v10;
}

- (id)databaseReader:(id)a3 wantsDataForDatabaseObjectIdentifier:(int64_t)a4 filename:(id)a5
{
  v7 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_276A88248;
  v20 = sub_276A88258;
  v21 = 0;
  dataQueue = self->_dataQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A8996C;
  v12[3] = &unk_27A6E5D58;
  v14 = &v16;
  v15 = a4;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  dispatch_sync(dataQueue, v12);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)databaseReader:(id)a3 wantsDataForAppRelativePath:(id)a4 filename:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_276A88248;
  v22 = sub_276A88258;
  v23 = 0;
  appRelativeDataQueue = self->_appRelativeDataQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276A89CB0;
  v14[3] = &unk_27A6E36B0;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v17 = &v18;
  v10 = v8;
  v11 = v7;
  dispatch_sync(appRelativeDataQueue, v14);
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)reader:(id)a3 didUnarchiveObject:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  objc_msgSend_wasAddedToDocumentDuringUnarchiveWithContext_(v5, v6, WeakRetained);
}

@end