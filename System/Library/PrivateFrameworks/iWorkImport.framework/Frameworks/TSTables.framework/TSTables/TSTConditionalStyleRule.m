@interface TSTConditionalStyleRule
+ (id)conditionalStyleRuleWithRule:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForInspector:(id)a3;
- (TSTCellStyle)cellStyle;
- (TSTConditionalStyleRule)initWithPredicate:(id)a3 cellStyle:(id)a4 textStyle:(id)a5;
- (TSTFormulaPredicate)predicate;
- (TSWPParagraphStyle)textStyle;
- (id)copyByClearingUids:(id)a3 containingTableUID:(const TSKUIDStruct *)a4;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)a3;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)a3 rewriteBlock:(id)a4;
- (id)copyByRewritingWithSpec:(id)a3 inOwner:(id)a4 inCellCoordinate:(TSUCellCoord)a5;
- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)a3;
- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)a3;
- (id)copyToUidFormForTableInfo:(id)a3 inCellCoordinate:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5;
- (id)copyWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)predicateType;
- (void)setCellStyle:(id)a3 textStyle:(id)a4;
@end

@implementation TSTConditionalStyleRule

+ (id)conditionalStyleRuleWithRule:(id)a3
{
  v3 = a3;
  v4 = [TSTConditionalStyleRule alloc];
  v9 = objc_msgSend_predicate(v3, v5, v6, v7, v8);
  v14 = objc_msgSend_cellStyle(v3, v10, v11, v12, v13);
  v19 = objc_msgSend_textStyle(v3, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v4, v20, v9, v14, v19);

  return v21;
}

- (TSTConditionalStyleRule)initWithPredicate:(id)a3 cellStyle:(id)a4 textStyle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSTConditionalStyleRule;
  v12 = [(TSTConditionalStyleRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicate, a3);
    objc_storeStrong(&v13->_cellStyle, a4);
    objc_storeStrong(&v13->_textStyle, a5);
  }

  return v13;
}

- (unsigned)predicateType
{
  predicate = self->_predicate;
  if (!predicate)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConditionalStyleRule predicateType]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleRule.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 49, 0, "invalid nil value for '%{public}s'", "_predicate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    predicate = self->_predicate;
  }

  return objc_msgSend_predicateType(predicate, a2, v2, v3, v4);
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_copy(self->_predicate, v6, v7, v8, v9);
  v14 = objc_msgSend_copyWithContext_(self->_cellStyle, v11, v4, v12, v13);
  v18 = objc_msgSend_copyWithContext_(self->_textStyle, v15, v4, v16, v17);
  v20 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v5, v19, v10, v14, v18);

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_copy(self->_predicate, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(self->_cellStyle, v10, v11, v12, v13);
  v19 = objc_msgSend_copy(self->_textStyle, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v4, v20, v9, v14, v19);

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isEqual_(self->_predicate, v5, v4[1], v6, v7) & 1) != 0 && objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_cellStyle, v8, v4[3], 1, v9))
  {
    isEqualToStyle_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_textStyle, v10, v4[2], 1, v11);
  }

  else
  {
    isEqualToStyle_ignoreObjectUUID = 0;
  }

  return isEqualToStyle_ignoreObjectUUID;
}

- (BOOL)isEqualForInspector:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isEqualForInspector_atHostCoordinate_(self->_predicate, v5, v4[1], 0, v6) & 1) != 0 && objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_cellStyle, v7, v4[3], 1, v8))
  {
    isEqualToStyle_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_textStyle, v9, v4[2], 1, v10);
  }

  else
  {
    isEqualToStyle_ignoreObjectUUID = 0;
  }

  return isEqualToStyle_ignoreObjectUUID;
}

- (TSTCellStyle)cellStyle
{
  v5 = objc_msgSend_copy(self->_cellStyle, a2, v2, v3, v4);

  return v5;
}

- (TSWPParagraphStyle)textStyle
{
  v5 = objc_msgSend_copy(self->_textStyle, a2, v2, v3, v4);

  return v5;
}

- (void)setCellStyle:(id)a3 textStyle:(id)a4
{
  v6 = a3;
  v10 = a4;
  if (*&self->_textStyle != 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConditionalStyleRule setCellStyle:textStyle:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleRule.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 116, 0, "Can't replace styles!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  cellStyle = self->_cellStyle;
  self->_cellStyle = v6;
  v24 = v6;

  textStyle = self->_textStyle;
  self->_textStyle = v10;
}

- (TSTFormulaPredicate)predicate
{
  v5 = objc_msgSend_copy(self->_predicate, a2, v2, v3, v4);

  return v5;
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5
{
  v6 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(self->_predicate, a2, a3, a4, a5);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)a3 rewriteContext:(TSCEFormulaRewriteContext *)a4 error:(BOOL *)a5
{
  v12 = 0;
  v7 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(self->_predicate, a2, a3, a4, &v12);
  if (v12 == 1)
  {
    v8 = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v9 = objc_alloc(objc_opt_class());
    v8 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v9, v10, v7, self->_cellStyle, self->_textStyle);
  }

  return v8;
}

- (id)copyByRewritingWithSpec:(id)a3 inOwner:(id)a4 inCellCoordinate:(TSUCellCoord)a5
{
  v8 = a3;
  v9 = a4;
  v11 = objc_msgSend_copyByConvertingBaseToChrome_inOwner_inCellCoordinate_(self->_predicate, v10, v8, v9, *&a5);
  v13 = objc_msgSend_copyByRewritingWithSpec_inOwner_inCellCoordinate_(v11, v12, v8, v9, *&a5);
  v15 = objc_msgSend_copyByConvertingChromeToBase_inOwner_inCellCoordinate_(v13, v14, v8, v9, *&a5);
  v16 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v16, v17, v15, self->_cellStyle, self->_textStyle);

  return v18;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)a3
{
  v6 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(self->_predicate, a2, *&a3, v3, v4);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)a3
{
  predicate = self->_predicate;
  tableUID = a3->_tableUID;
  v6 = objc_msgSend_copyByUpgradingToLinkedRefForTable_hostCell_(predicate, a2, &tableUID, *&a3->coordinate, v3);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)a3
{
  predicate = self->_predicate;
  tableUID = a3->_tableUID;
  v6 = objc_msgSend_copyByUpdatingLinkedTable_hostCell_(predicate, a2, &tableUID, *&a3->coordinate, v3);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyToUidFormForTableInfo:(id)a3 inCellCoordinate:(TSUCellCoord)a4 preserveHostCell:(BOOL)a5
{
  v6 = objc_msgSend_copyToUidFormForConditionalStylesWithTableInfo_containingCell_preserveHostCell_(self->_predicate, a2, a3, *&a4, a5);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)a3 rewriteBlock:(id)a4
{
  v6 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self->_predicate, a2, a3, a4, v4);
  if (v6 == self->_predicate)
  {
    v9 = self;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);
  }

  v10 = v9;

  return v10;
}

- (id)copyByClearingUids:(id)a3 containingTableUID:(const TSKUIDStruct *)a4
{
  v6 = objc_msgSend_copyByClearingUids_containingTableUID_(self->_predicate, a2, a3, a4, v4);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

@end