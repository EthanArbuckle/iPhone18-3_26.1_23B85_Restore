@interface TSCKDocumentRoot
- (BOOL)hasICloudConflict;
- (BOOL)hasICloudTeardownObserver;
- (BOOL)shouldDropOperationHistoryWithDocumentRevision:(id)a3;
- (TSCKDocumentRoot)initWithContext:(id)a3;
- (TSCKDocumentRootDelegate)tsck_delegate;
- (id)additionalDocumentSupportPropertiesForWrite;
- (id)boostPrimaryThreadQualityOfService;
- (id)currentAuthorPrivateIDs;
- (id)currentAuthorShareParticipantID;
- (void)backgroundDocumentDidLoad;
- (void)dealloc;
- (void)documentDidLoadWithCommandDispatcher:(id)a3 commandExecutor:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)notifyICloudTeardownObserversWithReason:(unint64_t)a3;
- (void)removeICloudTeardownObserver:(int64_t)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)willClose;
@end

@implementation TSCKDocumentRoot

- (TSCKDocumentRootDelegate)tsck_delegate
{
  v4 = objc_msgSend_delegate(self, a2, v2, v3);
  v5 = TSUCheckedProtocolCast();

  return v5;
}

- (TSCKDocumentRoot)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSCKDocumentRoot;
  return [(TSCKDocumentRoot *)&v4 initWithContext:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v2 dealloc];
}

- (id)currentAuthorPrivateIDs
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCKDocumentRoot currentAuthorPrivateIDs]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 519, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCKDocumentRoot currentAuthorPrivateIDs]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (id)currentAuthorShareParticipantID
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCKDocumentRoot currentAuthorShareParticipantID]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 523, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCKDocumentRoot currentAuthorShareParticipantID]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)backgroundDocumentDidLoad
{
  v2.receiver = self;
  v2.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v2 backgroundDocumentDidLoad];
}

- (void)documentDidLoadWithCommandDispatcher:(id)a3 commandExecutor:(id)a4
{
  v4.receiver = self;
  v4.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v4 documentDidLoadWithCommandDispatcher:a3 commandExecutor:a4];
}

- (void)willClose
{
  if (*MEMORY[0x277D81418] != -1)
  {
    sub_276637EA0();
  }

  v3.receiver = self;
  v3.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v3 willClose];
}

- (id)boostPrimaryThreadQualityOfService
{
  v4 = objc_msgSend_accessController(self, a2, v2, v3);
  v8 = objc_msgSend_boostPrimaryThreadQualityOfService(v4, v5, v6, v7);

  return v8;
}

- (BOOL)shouldDropOperationHistoryWithDocumentRevision:(id)a3
{
  v4 = a3;
  if (objc_msgSend_shouldDropCachedCollaborationData(self, v5, v6, v7))
  {
    LOBYTE(v11) = 1;
  }

  else if (v4)
  {
    v12 = objc_msgSend_context(self, v8, v9, v10);
    v16 = objc_msgSend_documentRevision(v12, v13, v14, v15);
    v11 = objc_msgSend_isEqual_(v16, v17, v4, v18) ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v4.receiver = self;
  v4.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v4 loadFromArchive:a3 unarchiver:a4];
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v4.receiver = self;
  v4.super_class = TSCKDocumentRoot;
  [(TSCKDocumentRoot *)&v4 saveToArchive:a3 archiver:a4];
}

- (id)additionalDocumentSupportPropertiesForWrite
{
  v13.receiver = self;
  v13.super_class = TSCKDocumentRoot;
  v2 = [(TSCKDocumentRoot *)&v13 additionalDocumentSupportPropertiesForWrite];
  v6 = objc_msgSend_mutableCopy(v2, v3, v4, v5);
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v7, 3, v8);
  }

  v11 = v10;

  return v11;
}

- (void)removeICloudTeardownObserver:(int64_t)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, a3, v3) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCKDocumentRoot removeICloudTeardownObserver:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1626, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v15, v16, v17);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = objc_msgSend_reverseObjectEnumerator(self->_iCloudTeardownStack, v6, v7, v8, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v35, 16);
  if (v23)
  {
    v24 = 0;
    v25 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v31 + 1) + 8 * i);
        if (v24 || objc_msgSend_identifer(*(*(&v31 + 1) + 8 * i), v20, v21, v22) != a3)
        {
          objc_msgSend_suspendedCollaboration(v27, v20, v21, v22);
        }

        else
        {
          v24 = v27;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v31, v35, 16);
    }

    while (v23);

    if (v24)
    {
      objc_msgSend_removeObject_(self->_iCloudTeardownStack, v28, v24, v29);
    }
  }

  else
  {

    v24 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)notifyICloudTeardownObserversWithReason:(unint64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, a3, v3) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCKDocumentRoot notifyICloudTeardownObserversWithReason:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1655, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v15, v16, v17);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = objc_msgSend_copy(self->_iCloudTeardownStack, v6, v7, v8, 0);
  v22 = objc_msgSend_reverseObjectEnumerator(v18, v19, v20, v21);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v29, v33, 16);
  if (v25)
  {
    v26 = *v30;
    do
    {
      v27 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_invokeWithDocumentRoot_reason_(*(*(&v29 + 1) + 8 * v27++), v24, self, a3);
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v29, v33, 16);
    }

    while (v25);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasICloudTeardownObserver
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCKDocumentRoot hasICloudTeardownObserver]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1664, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16);
  }

  return objc_msgSend_count(self->_iCloudTeardownStack, v5, v6, v7) != 0;
}

- (BOOL)hasICloudConflict
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCKDocumentRoot hasICloudConflict]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 1669, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSCKDocumentRoot hasICloudConflict]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

@end