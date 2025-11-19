@interface TSCKApplicationPropertiesProvider
- (NSString)cloudKitContainerIdentifier;
@end

@implementation TSCKApplicationPropertiesProvider

- (NSString)cloudKitContainerIdentifier
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCKApplicationPropertiesProvider cloudKitContainerIdentifier]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/collaborationkit/TSCKApplicationPropertiesProvider.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 12, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSCKApplicationPropertiesProvider cloudKitContainerIdentifier]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

@end