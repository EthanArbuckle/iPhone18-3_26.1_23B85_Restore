@interface TSPSupportManager
+ (BOOL)isSupportAtURLValid:(id)a3 documentUUID:(id)a4 versionUUID:(id)a5 documentProperties:(id *)a6;
+ (id)defaultSupportDirectoryURL;
+ (id)supportBundleURLForDocumentUUID:(id)a3 delegate:(id)a4;
+ (id)supportDirectoryURLWithDelegate:(id)a3 isUnique:(BOOL *)a4;
- (BOOL)copyOrMoveSupportAtURL:(id)a3 originalDocumentProperties:(id)a4 toURL:(id)a5 isCopying:(BOOL)a6 newDocumentProperties:(id)a7 error:(id *)a8;
- (BOOL)endSaveWithSuccess:(BOOL)a3 packageWriter:(id)a4 newURL:(id *)a5 writtenPackage:(id *)a6;
- (BOOL)writeSupportForDocumentUUID:(id)a3 error:(id *)a4 writer:(id)a5;
- (NSURL)presentedSupportURL;
- (TSPSupportManager)init;
- (TSPSupportManager)initWithContext:(id)a3;
- (id)supportURLWithDocumentUUID:(id)a3;
- (void)beginSaveWithDocumentUUID:(id)a3 versionUUID:(id)a4 originalURL:(id)a5 updateType:(int64_t)a6;
- (void)performReadUsingAccessor:(id)a3;
- (void)presentedItemDidMoveToURL:(id)a3;
- (void)removeFilePresenter;
- (void)setPresentedSupportURL:(id)a3;
@end

@implementation TSPSupportManager

- (TSPSupportManager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPSupportManager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 68, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPSupportManager init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPSupportManager)initWithContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TSPSupportManager;
  v5 = [(TSPSupportManager *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    presentedItemQueue = v6->_presentedItemQueue;
    v6->_presentedItemQueue = v7;

    objc_msgSend_setMaxConcurrentOperationCount_(v6->_presentedItemQueue, v9, 1);
    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    presentedSupportURLLock = v6->_presentedSupportURLLock;
    v6->_presentedSupportURLLock = v10;

    v12 = dispatch_group_create();
    pendingEndSaveGroup = v6->_pendingEndSaveGroup;
    v6->_pendingEndSaveGroup = v12;
  }

  return v6;
}

- (void)beginSaveWithDocumentUUID:(id)a3 versionUUID:(id)a4 originalURL:(id)a5 updateType:(int64_t)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  if (UnsafePointer != -1)
  {
    sub_276BD646C();
  }

  if (self->_saveOperationState)
  {
    TSUSetCrashReporterInfo();
    v16 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPSupportManager beginSaveWithDocumentUUID:versionUUID:originalURL:updateType:]", "[TSPSupportManager beginSaveWithDocumentUUID:versionUUID:originalURL:updateType:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm", 89);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 89, 1, "Didn't finish previous save");

    TSUCrashBreakpoint();
    abort();
  }

  v12 = [TSPSupportSaveOperationState alloc];
  updated = objc_msgSend_initWithOriginalDocumentUUID_originalVersionUUID_originalURL_updateType_(v12, v13, v22, v10, v11, a6);
  saveOperationState = self->_saveOperationState;
  self->_saveOperationState = updated;
}

- (BOOL)writeSupportForDocumentUUID:(id)a3 error:(id *)a4 writer:(id)a5
{
  v8 = a3;
  v10 = a5;
  saveOperationState = self->_saveOperationState;
  if (!saveOperationState)
  {
    TSUSetCrashReporterInfo();
    v59 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSPSupportManager writeSupportForDocumentUUID:error:writer:]", "[TSPSupportManager writeSupportForDocumentUUID:error:writer:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm", 95);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v61, v63, 95, 1, "You should not call this method before |-beginSaveWithDocumentUUID:isNewDocumentVersion:updateType:|");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_setDocumentUUID_(saveOperationState, v9, v8);
  v13 = objc_msgSend_supportURLWithDocumentUUID_(self, v12, v8);
  objc_msgSend_setURL_(self->_saveOperationState, v14, v13);
  v66 = a4;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v19 = objc_msgSend_URLByDeletingLastPathComponent(v13, v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v17, v18);
    v74 = 0;
    v22 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v20, v21, v19, 1, 0, &v74);
    v23 = v74;

    if ((v22 & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD6480();
    }

    v24 = objc_alloc(MEMORY[0x277D81318]);
    v73 = v23;
    v26 = objc_msgSend_initForSavingToURL_error_(v24, v25, v13, &v73);
    v27 = v73;

    objc_msgSend_setSafeSaveAssistant_(self->_saveOperationState, v28, v26);
    v31 = objc_msgSend_safeSaveAssistant(self->_saveOperationState, v29, v30);

    if (!v31 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD64A8();
    }

    v32 = v27;
  }

  else
  {
    v32 = 0;
  }

  if (UnsafePointer != -1)
  {
    sub_276BD64D0();
  }

  v33 = objc_msgSend_URL(self->_saveOperationState, v17, v18);

  if (v33)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276ABB114;
    aBlock[3] = &unk_27A6E69C8;
    v72 = &v75;
    aBlock[4] = self;
    v71 = v10;
    v34 = _Block_copy(aBlock);
    v37 = objc_msgSend_originalURL(self->_saveOperationState, v35, v36);

    v40 = self->_saveOperationState;
    if (v37)
    {
      v65 = v10;
      v41 = MEMORY[0x277CCA9E8];
      v42 = objc_msgSend_originalURL(v40, v38, v39);
      v69 = 0;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_276ABB1E0;
      v67[3] = &unk_27A6E69F0;
      v43 = v34;
      v67[4] = self;
      v68 = v43;
      v45 = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v41, v44, v42, 1, 0, self, &v69, v67);
      v46 = v69;

      if ((v45 & 1) == 0)
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD64F8();
        }

        v49 = objc_msgSend_safeSaveAssistant(self->_saveOperationState, v47, v48);
        v52 = objc_msgSend_writeURL(v49, v50, v51);
        v43[2](v43, v52);
      }

      v53 = v68;
      v10 = v65;
    }

    else
    {
      v46 = objc_msgSend_safeSaveAssistant(v40, v38, v39);
      v53 = objc_msgSend_writeURL(v46, v54, v55);
      (*(v34 + 2))(v34, v53);
    }
  }

  v56 = *(v76 + 24);
  if (v66 && (v76[3] & 1) == 0)
  {
    v57 = v32;
    *v66 = v32;
    v56 = *(v76 + 24);
  }

  _Block_object_dispose(&v75, 8);
  return v56 & 1;
}

- (BOOL)endSaveWithSuccess:(BOOL)a3 packageWriter:(id)a4 newURL:(id *)a5 writtenPackage:(id *)a6
{
  v8 = a3;
  v111[1] = *MEMORY[0x277D85DE8];
  v12 = a4;
  if (UnsafePointer != -1)
  {
    sub_276BD6520();
  }

  saveOperationState = self->_saveOperationState;
  if (!saveOperationState)
  {
    TSUSetCrashReporterInfo();
    v65 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSPSupportManager endSaveWithSuccess:packageWriter:newURL:writtenPackage:]", "[TSPSupportManager endSaveWithSuccess:packageWriter:newURL:writtenPackage:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm", 160);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v70, v67, v69, 160, 1, "You should not call this method before |-beginSaveWithDocumentUUID:isNewDocumentVersion:updateType:|");

    TSUCrashBreakpoint();
    abort();
  }

  v14 = &v106;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  if (v8)
  {
    v15 = objc_msgSend_didWriteSupportBundleSuccessfuly(saveOperationState, v10, v11);
    v14 = v107;
  }

  else
  {
    v15 = 0;
  }

  v109 = v15;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_276ABBAA4;
  v104 = sub_276ABBAB4;
  v105 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = sub_276ABBAA4;
  v98 = sub_276ABBAB4;
  v99 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = sub_276ABBAA4;
  v92 = sub_276ABBAB4;
  v93 = 0;
  if (*(v14 + 24) == 1)
  {
    if ((objc_msgSend_isSavingCurrentDocument(self->_saveOperationState, v10, v11) & 1) == 0)
    {
      v18 = objc_msgSend_originalDocumentUUID(self->_saveOperationState, v16, v17);
      v21 = objc_msgSend_documentUUID(self->_saveOperationState, v19, v20);
      isEqual = objc_msgSend_isEqual_(v18, v22, v21);

      if (isEqual)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPSupportManager endSaveWithSuccess:packageWriter:newURL:writtenPackage:]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 168, 0, "If we are not saving to the same document, we should have a different document UUID");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
      }
    }

    v110 = *MEMORY[0x277CCA110];
    v111[0] = MEMORY[0x277CBEC38];
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v111, &v110, 1);
    shouldUpdate = objc_msgSend_shouldUpdate(self->_saveOperationState, v32, v33);
    v37 = self->_saveOperationState;
    if (shouldUpdate)
    {
      if (!objc_msgSend_isSameDocumentUpdate(v37, v34, v35))
      {
        goto LABEL_15;
      }

      v40 = objc_msgSend_originalURL(self->_saveOperationState, v38, v39);
      if (!v40)
      {
        goto LABEL_15;
      }

      v41 = objc_msgSend_originalURL(self->_saveOperationState, v38, v39);
      v44 = objc_msgSend_URL(self->_saveOperationState, v42, v43);
      v46 = objc_msgSend_tsp_matchesURL_(v41, v45, v44);

      if ((v46 & 1) == 0)
      {
        v59 = MEMORY[0x277CCA9E8];
        v71 = objc_msgSend_originalURL(self->_saveOperationState, v38, v39);
        v62 = objc_msgSend_URL(self->_saveOperationState, v60, v61);
        v63 = v101;
        v87 = v101[5];
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = sub_276ABBABC;
        v80[3] = &unk_27A6E6A18;
        v83 = &v106;
        v80[4] = self;
        v81 = v31;
        v84 = &v100;
        v85 = &v94;
        v86 = &v88;
        v82 = v12;
        v51 = objc_msgSend_tsp_coordinateWritingItemAtURL_options_writingItemAtURL_options_filePresenter_error_byAccessor_(v59, v64, v71, 2, v62, 8, self, &v87, v80);
        objc_storeStrong(v63 + 5, v87);
      }

      else
      {
LABEL_15:
        v47 = MEMORY[0x277CCA9E8];
        v48 = objc_msgSend_URL(self->_saveOperationState, v38, v39);
        v49 = v101;
        obj = v101[5];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = sub_276ABBCE8;
        v72[3] = &unk_27A6E6A40;
        v75 = &v106;
        v72[4] = self;
        v73 = v31;
        v76 = &v100;
        v77 = &v94;
        v78 = &v88;
        v74 = v12;
        v51 = objc_msgSend_tsp_coordinateWritingItemAtURL_options_filePresenter_error_byAccessor_(v47, v50, v48, 0, self, &obj, v72);
        objc_storeStrong(v49 + 5, obj);
      }
    }

    else
    {
      v52 = objc_msgSend_safeSaveAssistant(v37, v34, v35);
      objc_msgSend_endSaveWithSuccess_toURL_addingAttributes_error_(v52, v53, 0, 0, 0, 0);

      v51 = 1;
    }

    v54 = v107[3] & v51;
    *(v107 + 24) = v54;
    if ((v54 & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD6534();
    }
  }

  if (v8 && (v107[3] & 1) == 0)
  {
    objc_msgSend_removeFilePresenter(self, v10, v11);
  }

  if (a5)
  {
    *a5 = objc_msgSend_copy(v95[5], v10, v11);
  }

  if (a6)
  {
    *a6 = v89[5];
  }

  if (objc_msgSend_shouldLeavePendingEndSave(self->_saveOperationState, v10, v11))
  {
    dispatch_group_leave(self->_pendingEndSaveGroup);
  }

  v55 = self->_saveOperationState;
  self->_saveOperationState = 0;

  v56 = *(v107 + 24);
  _Block_object_dispose(&v88, 8);

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v100, 8);

  _Block_object_dispose(&v106, 8);
  v57 = *MEMORY[0x277D85DE8];
  return v56 & 1;
}

- (id)supportURLWithDocumentUUID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = objc_msgSend_supportBundleURLForDocumentUUID_delegate_(v5, v7, v4, WeakRetained);

  return v8;
}

- (void)performReadUsingAccessor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (objc_msgSend_ignoreDocumentSupport(WeakRetained, v6, v7))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPSupportManager performReadUsingAccessor:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 252, 0, "We shouldn't be reading from the support package.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v8, v9);
  v20 = objc_msgSend_threadDictionary(v17, v18, v19);
  v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"TSPIsPerformingRead");
  v25 = objc_msgSend_BOOLValue(v22, v23, v24);

  if ((v25 & 1) == 0)
  {
    objc_msgSend_waitForPendingEndSaveGroup_(TSPObjectContext, v26, self->_pendingEndSaveGroup);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276ABC108;
  v29[3] = &unk_27A6E2EF8;
  v29[4] = self;
  v27 = v4;
  v30 = v27;
  objc_msgSend_performReadUsingAccessorImpl_(WeakRetained, v28, v29);
}

- (void)removeFilePresenter
{
  objc_msgSend_cancelAllOperations(self->_presentedItemQueue, a2, v2);

  objc_msgSend_setPresentedSupportURL_(self, v4, 0);
}

- (NSURL)presentedSupportURL
{
  objc_msgSend_lock(self->_presentedSupportURLLock, a2, v2);
  v6 = objc_msgSend_copy(self->_presentedSupportURL, v4, v5);
  objc_msgSend_unlock(self->_presentedSupportURLLock, v7, v8);

  return v6;
}

- (void)setPresentedSupportURL:(id)a3
{
  v28 = a3;
  objc_msgSend_lock(self->_presentedSupportURLLock, v4, v5);
  if ((objc_msgSend_isEqual_(self->_presentedSupportURL, v6, v28) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    isDocumentSupportTemporary = objc_msgSend_isDocumentSupportTemporary(WeakRetained, v10, v11);
    if ((isDocumentSupportTemporary & 1) == 0 && self->_presentedSupportURL)
    {
      objc_msgSend_tsp_removeFilePresenter_(MEMORY[0x277CCA9E8], v12, self);
    }

    v15 = objc_msgSend_copy(v28, v12, v13);
    presentedSupportURL = self->_presentedSupportURL;
    self->_presentedSupportURL = v15;

    if (v28)
    {
      v19 = isDocumentSupportTemporary;
    }

    else
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      if (objc_msgSend_ignoreDocumentSupport(WeakRetained, v17, v18))
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPSupportManager setPresentedSupportURL:]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 315, 0, "No need to register as the file presenter for the support package. Support should not be persisted.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }

      objc_msgSend_tsp_addFilePresenter_(MEMORY[0x277CCA9E8], v20, self);
    }
  }

  objc_msgSend_unlock(self->_presentedSupportURLLock, v7, v8);
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v14 = a3;
  objc_msgSend_lock(self->_presentedSupportURLLock, v4, v5);
  v8 = objc_msgSend_copy(v14, v6, v7);
  presentedSupportURL = self->_presentedSupportURL;
  self->_presentedSupportURL = v8;

  WeakRetained = objc_loadWeakRetained(&self->_context);
  objc_msgSend_didMoveSupportToURL_(WeakRetained, v11, v14);

  objc_msgSend_unlock(self->_presentedSupportURLLock, v12, v13);
}

+ (BOOL)isSupportAtURLValid:(id)a3 documentUUID:(id)a4 versionUUID:(id)a5 documentProperties:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!objc_msgSend_isNativeDirectoryFormatURL_(TSPObjectContext, v12, v9))
  {
    isEqual = 0;
    v15 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v26 = v15;
    *a6 = v15;
    goto LABEL_7;
  }

  v13 = [TSPDocumentProperties alloc];
  v28 = 0;
  v15 = objc_msgSend_initWithDocumentURL_error_(v13, v14, v9, &v28);
  v18 = v28;
  if (v15)
  {
    v19 = objc_msgSend_documentUUID(v15, v16, v17);
    if (objc_msgSend_isEqual_(v10, v20, v19))
    {
      v23 = objc_msgSend_versionUUID(v15, v21, v22);
      isEqual = objc_msgSend_isEqual_(v11, v24, v23);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6584();
    }

    isEqual = 0;
  }

  if (a6)
  {
    goto LABEL_6;
  }

LABEL_7:

  return isEqual;
}

- (BOOL)copyOrMoveSupportAtURL:(id)a3 originalDocumentProperties:(id)a4 toURL:(id)a5 isCopying:(BOOL)a6 newDocumentProperties:(id)a7 error:(id *)a8
{
  v10 = a6;
  v14 = a3;
  v41 = a4;
  v15 = a5;
  v17 = a7;
  if (!v14)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPSupportManager copyOrMoveSupportAtURL:originalDocumentProperties:toURL:isCopying:newDocumentProperties:error:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 365, 0, "invalid nil value for '%{public}s'", "originalURL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if (!v15)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPSupportManager copyOrMoveSupportAtURL:originalDocumentProperties:toURL:isCopying:newDocumentProperties:error:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportManager.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 366, 0, "invalid nil value for '%{public}s'", "URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276ABCC1C;
  aBlock[3] = &unk_27A6E6A68;
  v47 = &v50;
  aBlock[4] = self;
  v32 = v41;
  v45 = v32;
  v48 = a8;
  v49 = v10;
  v33 = v17;
  v46 = v33;
  v34 = _Block_copy(aBlock);
  v36 = v34;
  v37 = MEMORY[0x277CCA9E8];
  if (v10)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_276ABCE5C;
    v42[3] = &unk_27A6E6A90;
    v43 = v34;
    objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_writingItemAtURL_options_filePresenter_error_byAccessor_(v37, v38, v14, 1, 1, v15, 8, self, a8, v42);
  }

  else
  {
    objc_msgSend_tsp_coordinateWritingItemAtURL_options_writingItemAtURL_options_filePresenter_error_byAccessor_(MEMORY[0x277CCA9E8], v35, v14, 1, v15, 8, self, a8, v34);
  }

  v39 = *(v51 + 24);

  _Block_object_dispose(&v50, 8);
  return v39;
}

+ (id)defaultSupportDirectoryURL
{
  if (qword_280A52AA8 != -1)
  {
    sub_276BD65AC();
  }

  v3 = qword_280A52AA0;

  return v3;
}

+ (id)supportDirectoryURLWithDelegate:(id)a3 isUnique:(BOOL *)a4
{
  v6 = a3;
  v12 = 0;
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_supportDirectoryURLReturningIsBundleURL_(v6, v7, &v12);
    if (v10)
    {
      goto LABEL_7;
    }

    v12 = 0;
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_supportDirectoryURL(v6, v8, v9), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:
    v10 = objc_msgSend_defaultSupportDirectoryURL(a1, v8, v9);
  }

LABEL_7:
  if (a4)
  {
    *a4 = v12;
  }

  return v10;
}

+ (id)supportBundleURLForDocumentUUID:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v18 = 0;
  v8 = objc_msgSend_supportDirectoryURLWithDelegate_isUnique_(a1, v7, a4, &v18);
  v11 = v8;
  if (v8)
  {
    if (v18 == 1)
    {
      v12 = v8;
      goto LABEL_10;
    }

    if (v6)
    {
      v13 = objc_msgSend_UUIDString(v6, v9, v10);
      v15 = objc_msgSend_stringByAppendingPathExtension_(v13, v14, @"bundle");
      v12 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v11, v16, v15, 1);

      goto LABEL_10;
    }

    if (*MEMORY[0x277D81408] == -1)
    {
      v12 = 0;
      goto LABEL_10;
    }

    sub_276BD65E8();
  }

  else
  {
    if (*MEMORY[0x277D81408] == -1)
    {
      v12 = 0;
      goto LABEL_10;
    }

    sub_276BD6610();
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end