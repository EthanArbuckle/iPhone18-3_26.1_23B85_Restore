@interface TSCH3DContextSession
+ (void)performBlockWithContext:(id)a3 block:(id)a4;
@end

@implementation TSCH3DContextSession

+ (void)performBlockWithContext:(id)a3 block:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (!v25)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "+[TSCH3DContextSession performBlockWithContext:block:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DContextSession.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 19, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  objc_msgSend_performBlock_(v25, v5, v7, v8, v9, v6);
}

@end