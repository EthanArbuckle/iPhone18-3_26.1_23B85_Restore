@interface TSSSpec
- (BOOL)isEqual:(id)equal;
- (NSString)operationPropertyName;
- (TSSSpec)specWithCurrentProperty:(id)property;
- (id)getUnsetSpec;
- (id)initUnsetSpec;
- (unint64_t)hash;
@end

@implementation TSSSpec

- (id)initUnsetSpec
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSSSpec initUnsetSpec]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSSpec.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 23, 0, "Abstract method not overridden by %{public}@", v7);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSSSpec initUnsetSpec]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  objc_exception_throw(v19);
}

- (TSSSpec)specWithCurrentProperty:(id)property
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithCurrentProperty_(v4, v5, property);

  return v6;
}

- (id)getUnsetSpec
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSSSpec getUnsetSpec]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSSpec.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 32, 0, "Abstract method not overridden by %{public}@", v7);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSSSpec getUnsetSpec]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  objc_exception_throw(v19);
}

- (NSString)operationPropertyName
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSSSpec operationPropertyName]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSSpec.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 49, 0, "Abstract method not overridden by %{public}@", v7);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSSSpec operationPropertyName]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  objc_exception_throw(v19);
}

- (BOOL)isEqual:(id)equal
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSSSpec isEqual:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSSpec.m");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 54, 0, "Abstract method not overridden by %{public}@", v8);
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSSSpec isEqual:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v19, v13, v18, 0);
  objc_exception_throw(v20);
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSSSpec;
  return [(TSSSpec *)&v3 hash];
}

@end