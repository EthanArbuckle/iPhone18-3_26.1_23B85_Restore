@interface TSPCopyArchiver
- (TSPProxyObjectMapping)proxyObjectMapping;
- (int64_t)targetType;
- (void)setStrongLazyReference:(id)a3 message:(void *)a4;
- (void)setStrongReference:(id)a3 message:(void *)a4;
@end

@implementation TSPCopyArchiver

- (int64_t)targetType
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCopyArchiver targetType]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCopyArchiver.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 18, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPCopyArchiver targetType]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)setStrongReference:(id)a3 message:(void *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxyObjectMapping);
  v9 = objc_msgSend_proxyForReferencedObject_(WeakRetained, v8, v6);

  if (v9)
  {
    v18.receiver = self;
    v18.super_class = TSPCopyArchiver;
    [(TSPArchiverBase *)&v18 setStrongReference:v9 message:a4];
  }

  else
  {
    if (!v6)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPCopyArchiver setStrongReference:message:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCopyArchiver.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 27, 0, "invalid nil value for '%{public}s'", "object");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }

    *(a4 + 4) |= 1u;
    *(a4 + 3) = 0;
  }
}

- (void)setStrongLazyReference:(id)a3 message:(void *)a4
{
  v6 = a3;
  v10 = objc_msgSend_objectIfLoaded(v6, v7, v8);
  if (v10)
  {
    objc_msgSend_setStrongReference_message_(self, v9, v10, a4);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSPCopyArchiver;
    [(TSPArchiverBase *)&v11 setStrongLazyReference:v6 message:a4];
  }
}

- (TSPProxyObjectMapping)proxyObjectMapping
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyObjectMapping);

  return WeakRetained;
}

@end