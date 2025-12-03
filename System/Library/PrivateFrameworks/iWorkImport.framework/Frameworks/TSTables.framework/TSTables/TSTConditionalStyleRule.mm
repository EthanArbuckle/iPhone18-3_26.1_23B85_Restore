@interface TSTConditionalStyleRule
+ (id)conditionalStyleRuleWithRule:(id)rule;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForInspector:(id)inspector;
- (TSTCellStyle)cellStyle;
- (TSTConditionalStyleRule)initWithPredicate:(id)predicate cellStyle:(id)style textStyle:(id)textStyle;
- (TSTFormulaPredicate)predicate;
- (TSWPParagraphStyle)textStyle;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block;
- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)ref;
- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)ref;
- (id)copyToUidFormForTableInfo:(id)info inCellCoordinate:(TSUCellCoord)coordinate preserveHostCell:(BOOL)cell;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)predicateType;
- (void)setCellStyle:(id)style textStyle:(id)textStyle;
@end

@implementation TSTConditionalStyleRule

+ (id)conditionalStyleRuleWithRule:(id)rule
{
  ruleCopy = rule;
  v4 = [TSTConditionalStyleRule alloc];
  v9 = objc_msgSend_predicate(ruleCopy, v5, v6, v7, v8);
  v14 = objc_msgSend_cellStyle(ruleCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_textStyle(ruleCopy, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v4, v20, v9, v14, v19);

  return v21;
}

- (TSTConditionalStyleRule)initWithPredicate:(id)predicate cellStyle:(id)style textStyle:(id)textStyle
{
  predicateCopy = predicate;
  styleCopy = style;
  textStyleCopy = textStyle;
  v15.receiver = self;
  v15.super_class = TSTConditionalStyleRule;
  v12 = [(TSTConditionalStyleRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_predicate, predicate);
    objc_storeStrong(&v13->_cellStyle, style);
    objc_storeStrong(&v13->_textStyle, textStyle);
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

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_copy(self->_predicate, v6, v7, v8, v9);
  v14 = objc_msgSend_copyWithContext_(self->_cellStyle, v11, contextCopy, v12, v13);
  v18 = objc_msgSend_copyWithContext_(self->_textStyle, v15, contextCopy, v16, v17);
  v20 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v5, v19, v10, v14, v18);

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_copy(self->_predicate, v5, v6, v7, v8);
  v14 = objc_msgSend_copy(self->_cellStyle, v10, v11, v12, v13);
  v19 = objc_msgSend_copy(self->_textStyle, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v4, v20, v9, v14, v19);

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ((objc_msgSend_isEqual_(self->_predicate, v5, equalCopy[1], v6, v7) & 1) != 0 && objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_cellStyle, v8, equalCopy[3], 1, v9))
  {
    isEqualToStyle_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_textStyle, v10, equalCopy[2], 1, v11);
  }

  else
  {
    isEqualToStyle_ignoreObjectUUID = 0;
  }

  return isEqualToStyle_ignoreObjectUUID;
}

- (BOOL)isEqualForInspector:(id)inspector
{
  inspectorCopy = inspector;
  if ((objc_msgSend_isEqualForInspector_atHostCoordinate_(self->_predicate, v5, inspectorCopy[1], 0, v6) & 1) != 0 && objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_cellStyle, v7, inspectorCopy[3], 1, v8))
  {
    isEqualToStyle_ignoreObjectUUID = objc_msgSend_isEqualToStyle_ignoreObjectUUID_(self->_textStyle, v9, inspectorCopy[2], 1, v10);
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

- (void)setCellStyle:(id)style textStyle:(id)textStyle
{
  styleCopy = style;
  textStyleCopy = textStyle;
  if (*&self->_textStyle != 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConditionalStyleRule setCellStyle:textStyle:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleRule.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 116, 0, "Can't replace styles!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  cellStyle = self->_cellStyle;
  self->_cellStyle = styleCopy;
  v24 = styleCopy;

  textStyle = self->_textStyle;
  self->_textStyle = textStyleCopy;
}

- (TSTFormulaPredicate)predicate
{
  v5 = objc_msgSend_copy(self->_predicate, a2, v2, v3, v4);

  return v5;
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v6 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(self->_predicate, a2, map, context, error);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v12 = 0;
  v7 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(self->_predicate, a2, map, context, &v12);
  if (v12 == 1)
  {
    v8 = 0;
    if (error)
    {
      *error = 1;
    }
  }

  else
  {
    v9 = objc_alloc(objc_opt_class());
    v8 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v9, v10, v7, self->_cellStyle, self->_textStyle);
  }

  return v8;
}

- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  specCopy = spec;
  ownerCopy = owner;
  v11 = objc_msgSend_copyByConvertingBaseToChrome_inOwner_inCellCoordinate_(self->_predicate, v10, specCopy, ownerCopy, *&coordinate);
  v13 = objc_msgSend_copyByRewritingWithSpec_inOwner_inCellCoordinate_(v11, v12, specCopy, ownerCopy, *&coordinate);
  v15 = objc_msgSend_copyByConvertingChromeToBase_inOwner_inCellCoordinate_(v13, v14, specCopy, ownerCopy, *&coordinate);
  v16 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v16, v17, v15, self->_cellStyle, self->_textStyle);

  return v18;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset
{
  v6 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(self->_predicate, a2, *&offset, v3, v4);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)ref
{
  predicate = self->_predicate;
  tableUID = ref->_tableUID;
  v6 = objc_msgSend_copyByUpgradingToLinkedRefForTable_hostCell_(predicate, a2, &tableUID, *&ref->coordinate, v3);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)ref
{
  predicate = self->_predicate;
  tableUID = ref->_tableUID;
  v6 = objc_msgSend_copyByUpdatingLinkedTable_hostCell_(predicate, a2, &tableUID, *&ref->coordinate, v3);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyToUidFormForTableInfo:(id)info inCellCoordinate:(TSUCellCoord)coordinate preserveHostCell:(BOOL)cell
{
  v6 = objc_msgSend_copyToUidFormForConditionalStylesWithTableInfo_containingCell_preserveHostCell_(self->_predicate, a2, info, *&coordinate, cell);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block
{
  v6 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self->_predicate, a2, context, block, v4);
  if (v6 == self->_predicate)
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    selfCopy = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);
  }

  v10 = selfCopy;

  return v10;
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_copyByClearingUids_containingTableUID_(self->_predicate, a2, uids, d, v4);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v7, v8, v6, self->_cellStyle, self->_textStyle);

  return v9;
}

@end