@interface TSCKDocumentRootICloudObserver
- (TSCKDocumentRootICloudObserver)initWithSuspendedCollaboration:(BOOL)a3 block:(id)a4;
- (void)invokeWithDocumentRoot:(id)a3 reason:(unint64_t)a4;
@end

@implementation TSCKDocumentRootICloudObserver

- (TSCKDocumentRootICloudObserver)initWithSuspendedCollaboration:(BOOL)a3 block:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = TSCKDocumentRootICloudObserver;
  v7 = [(TSCKDocumentRootICloudObserver *)&v15 init];
  v11 = v7;
  if (v7)
  {
    v7->_suspendedCollaboration = a3;
    v12 = objc_msgSend_copy(v6, v8, v9, v10);
    block = v11->_block;
    v11->_block = v12;

    v11->_identifer = atomic_fetch_add(&nextICloudObserverID, 1uLL) + 1;
  }

  return v11;
}

- (void)invokeWithDocumentRoot:(id)a3 reason:(unint64_t)a4
{
  v19 = a3;
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v5, v6, v7) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCKDocumentRootICloudObserver invokeWithDocumentRoot:reason:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKDocumentRoot.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 171, 0, "This operation must only be performed on the main thread.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v16, v17, v18);
  }

  (*(self->_block + 2))();
}

@end