@interface TNMutableChartFormulaStorage
- (TNMutableChartFormulaStorage)initWithChartFormulaStorage:(id)a3;
- (id)mutableFormulaListForType:(unint64_t)a3;
- (unint64_t)numberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5;
- (void)addFormula:(id)a3 withFormulaID:(TSUCellCoord)a4;
- (void)clearFormulaListForKey:(unint64_t)a3;
- (void)setDirection:(int)a3;
- (void)setFormulaList:(id)a3 forKey:(unint64_t)a4;
@end

@implementation TNMutableChartFormulaStorage

- (TNMutableChartFormulaStorage)initWithChartFormulaStorage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_direction(v4, v5, v6);
  v10 = objc_msgSend_scheme(v4, v8, v9);
  v14 = objc_msgSend_initWithDirection_scheme_(self, v11, v7, v10);
  if (v14)
  {
    v15 = objc_msgSend_formulaTypeEnumerator(v4, v12, v13);
    for (i = objc_msgSend_nextFormulaType(v15, v16, v17); i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend_nextFormulaType(v15, v25, v26))
    {
      v20 = objc_msgSend_formulaListForType_(v4, v18, i);
      v23 = objc_msgSend_mutableCopy(v20, v21, v22);
      objc_msgSend_setFormulaList_forKey_(v14, v24, v23, i);
    }
  }

  return v14;
}

- (void)setDirection:(int)a3
{
  self->super._direction = a3;
  self->super._cachedNumberOfGroupsValid = 0;
  self->super._cachedNumberOfGroups = 0;
}

- (void)clearFormulaListForKey:(unint64_t)a3
{
  v5 = objc_msgSend_mutableFormulaListForType_(self, a2, a3);
  objc_msgSend_removeAllObjects(v5, v3, v4);
}

- (id)mutableFormulaListForType:(unint64_t)a3
{
  storage = self->super._storage;
  v4 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3);
  v6 = objc_msgSend_objectForKey_(storage, v5, v4);

  return v6;
}

- (void)setFormulaList:(id)a3 forKey:(unint64_t)a4
{
  v10 = a3;
  storage = self->super._storage;
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a4);
  objc_msgSend_setObject_forKey_(storage, v9, v10, v8);
}

- (void)addFormula:(id)a3 withFormulaID:(TSUCellCoord)a4
{
  v26 = a3;
  v9 = objc_msgSend_mutableFormulaListForType_(self, v6, a4.column);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNMutableChartFormulaStorage addFormula:withFormulaID:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 784, 0, "invalid nil value for '%{public}s'", "list");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_count(v9, v7, v8);
  if (v17 <= LOWORD(a4.row))
  {
    if (v17 == LOWORD(a4.row))
    {
      objc_msgSend_addObject_(v9, v18, v26);
    }

    else if (v17 < LOWORD(a4.row))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TNMutableChartFormulaStorage addFormula:withFormulaID:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartFormulaStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 793, 0, "attempting to insert a formula beyond array range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v9, v18, LOWORD(a4.row), v26);
  }
}

- (unint64_t)numberOfGroupsWithCalcEngine:(id)a3 inEntity:(TSKUIDStruct)a4 shouldSkipHiddenData:(BOOL)a5
{
  self->super._cachedNumberOfGroups = 0;
  self->super._cachedNumberOfGroupsValid = 0;
  v6.receiver = self;
  v6.super_class = TNMutableChartFormulaStorage;
  return [(TNChartFormulaStorage *)&v6 numberOfGroupsWithCalcEngine:a3 inEntity:a4._lower shouldSkipHiddenData:a4._upper, a5];
}

@end