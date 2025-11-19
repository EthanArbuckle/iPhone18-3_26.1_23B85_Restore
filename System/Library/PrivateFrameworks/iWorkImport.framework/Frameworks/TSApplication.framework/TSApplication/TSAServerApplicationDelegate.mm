@interface TSAServerApplicationDelegate
+ (TSAServerApplicationDelegate)sharedDelegate;
- (TSAServerApplicationDelegate)init;
- (id)createBaseApplicationDelegate;
@end

@implementation TSAServerApplicationDelegate

+ (TSAServerApplicationDelegate)sharedDelegate
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, v2, v3);
  v8 = objc_msgSend_delegate(v4, v5, v6, v7);

  return v8;
}

- (TSAServerApplicationDelegate)init
{
  v11.receiver = self;
  v11.super_class = TSAServerApplicationDelegate;
  v2 = [(TSAServerApplicationDelegate *)&v11 init];
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_createBaseApplicationDelegate(v2, v3, v4, v5);
    objc_msgSend_setBaseApplicationDelegate_(v6, v8, v7, v9);
  }

  return v6;
}

- (id)createBaseApplicationDelegate
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAServerApplicationDelegate createBaseApplicationDelegate]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAServerApplicationDelegate.m", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 43, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAServerApplicationDelegate createBaseApplicationDelegate]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v22, v15, v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

@end