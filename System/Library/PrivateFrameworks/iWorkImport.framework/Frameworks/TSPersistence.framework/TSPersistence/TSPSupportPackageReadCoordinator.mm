@interface TSPSupportPackageReadCoordinator
- (BOOL)endReading;
- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy;
- (void)setDocumentPackageReadCoordinator:(id)coordinator;
@end

@implementation TSPSupportPackageReadCoordinator

- (TSPSupportPackageReadCoordinator)initWithContext:(id)context package:(id)package packageURL:(id)l finalizeHandlerQueue:(id)queue areExternalDataReferencesAllowed:(BOOL)allowed skipDocumentUpgrade:(BOOL)upgrade documentLoadValidationPolicy:(id)policy
{
  contextCopy = context;
  packageCopy = package;
  lCopy = l;
  queueCopy = queue;
  policyCopy = policy;
  v16 = MEMORY[0x277D81150];
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPSupportPackageReadCoordinator initWithContext:package:packageURL:finalizeHandlerQueue:areExternalDataReferencesAllowed:skipDocumentUpgrade:documentLoadValidationPolicy:]");
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v18, v20, 1410, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%s: %s", "Do not call method", "[TSPSupportPackageReadCoordinator initWithContext:package:packageURL:finalizeHandlerQueue:areExternalDataReferencesAllowed:skipDocumentUpgrade:documentLoadValidationPolicy:]", contextCopy, self);
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (void)setDocumentPackageReadCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (self->_documentPackageReadCoordinator)
  {
    TSUSetCrashReporterInfo();
    v5 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPSupportPackageReadCoordinator setDocumentPackageReadCoordinator:]", "[TSPSupportPackageReadCoordinator setDocumentPackageReadCoordinator:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm", 1424);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 1424, 1, "Document package read coordinator is already set.");

    TSUCrashBreakpoint();
    abort();
  }

  self->_documentPackageReadCoordinator = coordinatorCopy;
}

- (BOOL)endReading
{
  v6.receiver = self;
  v6.super_class = TSPSupportPackageReadCoordinator;
  endReading = [(TSPPackageReadCoordinator *)&v6 endReading];
  if (endReading)
  {
    objc_msgSend_tsp_enumerateObjectsUsingBlock_(self->super._objects, v3, &unk_2885C4660);
  }

  return endReading;
}

@end