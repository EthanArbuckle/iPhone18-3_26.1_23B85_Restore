@interface TSCHPersistentChartMediator
- (TSCHPersistentChartMediator)initWithContext:(id)context andMediator:(id)mediator;
- (void)loadFromArchive:(const void *)archive;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCHPersistentChartMediator

- (TSCHPersistentChartMediator)initWithContext:(id)context andMediator:(id)mediator
{
  mediatorCopy = mediator;
  v20.receiver = self;
  v20.super_class = TSCHPersistentChartMediator;
  v8 = [(TSCHPersistentChartMediator *)&v20 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediator, mediator);
    v14 = objc_msgSend_mediator(v9, v10, v11, v12, v13);
    objc_msgSend_setObjectToNotify_(v14, v15, v16, v17, v18, v9);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v5, v6, v7, v8, v4))
  {
    v13 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHPersistentChartMediator(Archiving) loadFromArchive:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v20, v21, v22, v31, v18, 1594, 0, "Abstract. You must subclass this and handle archiving yourself.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v32 = objc_msgSend_mediator(self, v9, v10, v11, v12);
  objc_msgSend_setObjectToNotify_(v32, v27, v28, v29, v30, self);
}

- (void)saveToArchive:(void *)archive
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v5, v6, v7, v8, v4))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHPersistentChartMediator(Archiving) saveToArchive:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_UnityArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 1606, 0, "Abstract. You must subclass this and handle archiving yourself.");

    v28 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v28, v24, v25, v26, v27);
  }
}

@end