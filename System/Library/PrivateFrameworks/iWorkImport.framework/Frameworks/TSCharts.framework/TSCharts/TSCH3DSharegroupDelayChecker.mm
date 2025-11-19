@interface TSCH3DSharegroupDelayChecker
- (TSCH3DSharegroupDelayChecker)initWithParent:(id)a3;
- (void)p_cancelCheckCondition;
- (void)p_checkCondition;
- (void)p_scheduleCheckConditionOnMainThread;
@end

@implementation TSCH3DSharegroupDelayChecker

- (TSCH3DSharegroupDelayChecker)initWithParent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCH3DSharegroupDelayChecker;
  v5 = [(TSCH3DSharegroupDelayChecker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, v4);
  }

  return v6;
}

- (void)p_scheduleCheckConditionOnMainThread
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSharegroupDelayChecker p_scheduleCheckConditionOnMainThread]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 142, 0, "should only get here on the main thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  MEMORY[0x2821F9670](self, sel_performSelector_withObject_afterDelay_, 4.0, v8, v9);
}

- (void)p_cancelCheckCondition
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DSharegroupDelayChecker p_cancelCheckCondition]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 157, 0, "should only get here on the main thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = MEMORY[0x277D82BB8];

  MEMORY[0x2821F9670](v24, sel_cancelPreviousPerformRequestsWithTarget_, v6, v7, v8);
}

- (void)p_checkCondition
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  objc_msgSend_willCheckCondition(WeakRetained, v2, v3, v4, v5);
}

@end