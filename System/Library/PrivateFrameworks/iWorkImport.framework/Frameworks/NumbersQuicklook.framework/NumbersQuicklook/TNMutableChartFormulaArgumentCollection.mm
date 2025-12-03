@interface TNMutableChartFormulaArgumentCollection
- (TNMutableChartFormulaArgumentCollection)initWithArray:(id)array;
- (void)addElement:(id)element;
- (void)insertElement:(id)element atIndex:(unint64_t)index;
@end

@implementation TNMutableChartFormulaArgumentCollection

- (TNMutableChartFormulaArgumentCollection)initWithArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNMutableChartFormulaArgumentCollection initWithArray:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaArgumentCollection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 240, 0, "invalid nil value for '%{public}s'", "array");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v19.receiver = self;
  v19.super_class = TNMutableChartFormulaArgumentCollection;
  v13 = [(TNChartFormulaArgumentCollection *)&v19 initWithArray:arrayCopy];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_initWithArray_(v14, v15, arrayCopy);
    array = v13->super._array;
    v13->super._array = v16;
  }

  return v13;
}

- (void)addElement:(id)element
{
  elementCopy = element;
  if (!objc_msgSend_isBadRef(elementCopy, v4, v5) || objc_msgSend_storeBadRef(self, v6, v7))
  {
    objc_msgSend_addObject_(self->super._array, v6, elementCopy);
  }
}

- (void)insertElement:(id)element atIndex:(unint64_t)index
{
  elementCopy = element;
  if (!objc_msgSend_isBadRef(elementCopy, v6, v7) || objc_msgSend_storeBadRef(self, v8, v9))
  {
    objc_msgSend_insertObject_atIndex_(self->super._array, v8, elementCopy, index);
  }
}

@end