@interface TNChartFormulaArgumentEnumerator
- (TNChartFormulaArgumentEnumerator)initWithEnumerator:(id)a3;
- (id)nextElement;
@end

@implementation TNChartFormulaArgumentEnumerator

- (TNChartFormulaArgumentEnumerator)initWithEnumerator:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNChartFormulaArgumentEnumerator initWithEnumerator:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 278, 0, "invalid nil value for '%{public}s'", "enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17.receiver = self;
  v17.super_class = TNChartFormulaArgumentEnumerator;
  v14 = [(TNChartFormulaArgumentEnumerator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_underlyingEnumerator, a3);
  }

  return v15;
}

- (id)nextElement
{
  objc_opt_class();
  v5 = objc_msgSend_nextObject(self->_underlyingEnumerator, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

@end