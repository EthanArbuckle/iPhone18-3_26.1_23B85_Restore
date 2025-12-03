@interface TSPObjectReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)class;
- (TSPObjectReferenceWrapper)init;
- (TSPObjectReferenceWrapper)initWithReferencedObject:(id)object;
@end

@implementation TSPObjectReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)class
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSPObjectReferenceWrapper allowUnarchivingObjectClass:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceWrapper.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 12, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "+[TSPObjectReferenceWrapper allowUnarchivingObjectClass:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (TSPObjectReferenceWrapper)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectReferenceWrapper init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectReferenceWrapper.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 17, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPObjectReferenceWrapper init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPObjectReferenceWrapper)initWithReferencedObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = TSPObjectReferenceWrapper;
  v6 = [(TSPObjectReferenceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

@end