@interface TSTTableFilterRule
+ (id)getPredArgDataFromCell:(id)cell;
+ (id)ruleWhereValuesInTable:(id)table inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell;
+ (id)ruleWithFormulaPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCell:(id)cell;
- (BOOL)matchesRow:(unsigned int)row withFormulaTableUID:(const TSKUIDStruct *)d withCalculationEngine:(id)engine;
- (BOOL)needsFormulaRewriteForImport;
- (TSTTableFilterRule)initWithFormulaPredicate:(id)predicate;
- (TSUModelColumnIndex)baseColumnIndexForFilterRuleInTableModel:(id)model;
- (id)copyByRewritingFromTableModel:(id)model toTableModel:(id)tableModel;
- (id)copyByRewritingToGeometricFormWithTableInfo:(id)info containsBadRef:(BOOL *)ref;
- (id)copyByRewritingToUidFormWithTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)initFromPrePivotArchive:(const void *)archive;
- (id)initRuleWhereValuesInTable:(id)table andDataList:(id)list inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTTableFilterRule

+ (id)ruleWithFormulaPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithFormulaPredicate_(v4, v5, predicateCopy, v6, v7);

  return v8;
}

- (TSTTableFilterRule)initWithFormulaPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = TSTTableFilterRule;
  v6 = [(TSTTableFilterRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

+ (id)getPredArgDataFromCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_valueType(cellCopy, v4, v5, v6, v7) == 8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSTTableFilterRule getPredArgDataFromCell:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 51, 0, "Expected a cell without an error to make a quick filter rule.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v25 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v8, cellCopy, v9, v10);
  if (!v25)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSTTableFilterRule getPredArgDataFromCell:]", v23, v24);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 53, 0, "invalid nil value for '%{public}s'", "predArgData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  return v25;
}

- (id)initRuleWhereValuesInTable:(id)table andDataList:(id)list inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell
{
  v43[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  listCopy = list;
  cellCopy = cell;
  v42.receiver = self;
  v42.super_class = TSTTableFilterRule;
  v17 = [(TSTTableFilterRule *)&v42 init];
  if (v17)
  {
    v18 = objc_msgSend_filteringTableUID(tableCopy, v13, v14, v15, v16);
    v20 = v19;
    v27 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v19, v21, v22, v23);
    if (!listCopy)
    {
      v28 = objc_msgSend_getPredArgDataFromCell_(TSTTableFilterRule, v24, cellCopy, v25, v26);
      v43[0] = v28;
      listCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v43, 1, v30);
    }

    v31 = [TSTFormulaPredArg alloc];
    v35 = objc_msgSend_initWithDataList_(v31, v32, listCopy, v33, v34);
    v36 = [TSTFormulaPredicate alloc];
    v41[0] = column._column << 32;
    v41[1] = v18;
    v41[2] = v20;
    v38 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v36, v37, 54, v35, 0, 0, 0, v41, v27);
    predicate = v17->_predicate;
    v17->_predicate = v38;
  }

  return v17;
}

+ (id)ruleWhereValuesInTable:(id)table inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell
{
  tableCopy = table;
  cellCopy = cell;
  v9 = [TSTTableFilterRule alloc];
  inited = objc_msgSend_initRuleWhereValuesInTable_andDataList_inBaseColumn_matchCell_(v9, v10, tableCopy, 0, column._column, cellCopy);

  return inited;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_copyWithZone_(self->_predicate, a2, zone, v3, v4);
  v10 = objc_msgSend_allocWithZone_(TSTTableFilterRule, v7, zone, v8, v9);
  v14 = objc_msgSend_initWithFormulaPredicate_(v10, v11, v6, v12, v13);

  return v14;
}

- (id)copyByRewritingToUidFormWithTableInfo:(id)info
{
  v5 = objc_msgSend_copyToUidFormForHiddenRowsWithTableInfo_(self->_predicate, a2, info, v3, v4);
  v6 = [TSTTableFilterRule alloc];
  v10 = objc_msgSend_initWithFormulaPredicate_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)copyByRewritingToGeometricFormWithTableInfo:(id)info containsBadRef:(BOOL *)ref
{
  v5 = objc_msgSend_copyToGeometricFormForHiddenRowsWithTableInfo_containsBadRef_(self->_predicate, a2, info, ref, v4);
  v6 = [TSTTableFilterRule alloc];
  v10 = objc_msgSend_initWithFormulaPredicate_(v6, v7, v5, v8, v9);

  return v10;
}

- (id)copyByRewritingFromTableModel:(id)model toTableModel:(id)tableModel
{
  modelCopy = model;
  tableModelCopy = tableModel;
  v11 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(self, v8, modelCopy, v9, v10);
  v16 = objc_msgSend_columnRowUIDMap(modelCopy, v12, v13, v14, v15);
  v20 = objc_msgSend_columnUIDForColumnIndex_(v16, v17, v11, v18, v19);
  v22 = v21;

  if (v20 | v22 && (objc_msgSend_columnRowUIDMap(tableModelCopy, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_columnIndexForColumnUID_(v27, v28, v20, v22, v29), v27, v30 != 0x7FFF))
  {
    v35 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(self->_predicate, v31, v30 - v11, v32, v33);
    v36 = [TSTTableFilterRule alloc];
    v34 = objc_msgSend_initWithFormulaPredicate_(v36, v37, v35, v38, v39);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = objc_msgSend_predicate(self, v5, v6, v7, v8);
    v15 = objc_msgSend_predicate(v9, v11, v12, v13, v14);
    isEqual = objc_msgSend_isEqual_(v10, v16, v15, v17, v18);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)needsFormulaRewriteForImport
{
  if (self->_doesNotNeedFormulaRewriteForImport)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = objc_msgSend_predicateType(self->_predicate, a2, v2, v3, v4);
    v5 = 0x22E0u >> v6;
    if (v6 > 0xD)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)matchesRow:(unsigned int)row withFormulaTableUID:(const TSKUIDStruct *)d withCalculationEngine:(id)engine
{
  v6 = *&row;
  engineCopy = engine;
  predicate = self->_predicate;
  v13 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v10, v6, v11, v12);
  LOBYTE(d) = objc_msgSend_evaluateAtCellID_onOwnerUID_calcEngine_(predicate, v14, v13, d, engineCopy);

  return d;
}

- (TSUModelColumnIndex)baseColumnIndexForFilterRuleInTableModel:(id)model
{
  modelCopy = model;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1000;
  v9 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v5, v6, v7, v8);
  v18 = objc_msgSend_calcEngine(modelCopy, v10, v11, v12, v13);
  if (!v18)
  {
    v19 = objc_msgSend_tableInfo(modelCopy, v14, v15, v16, v17);
    v24 = objc_msgSend_documentRoot(v19, v20, v21, v22, v23);
    v18 = objc_msgSend_calculationEngine(v24, v25, v26, v27, v28);
  }

  v29 = objc_msgSend_emptyReferenceSetWrapper(v18, v14, v15, v16, v17);
  v34 = v29;
  if (v18 && v29)
  {
    v35 = objc_msgSend_formula(self->_predicate, v30, v31, v32, v33);
    v40 = objc_msgSend_referenceSet(v34, v36, v37, v38, v39);
    v60 = v9 & 0xFFFF00000000;
    v61 = objc_msgSend_tableUID(modelCopy, v41, v42, v43, v44);
    v62 = v45;
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v35, v45, v40, v18, &v60, 1, 0);
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_22143354C;
  v56[3] = &unk_2784652A0;
  v46 = modelCopy;
  v57 = v46;
  v58 = &v64;
  v59 = &v60;
  objc_msgSend_foreachCellRef_(v34, v47, v56, v48, v49);
  if ((v61[3] & 1) == 0)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_2214335CC;
    v55[3] = &unk_2784652C8;
    v55[4] = &v64;
    objc_msgSend_foreachSpanningRangeRef_(v34, v50, v55, v51, v52);
  }

  v53._column = *(v65 + 12);

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  return v53;
}

- (BOOL)matchesCell:(id)cell
{
  cellCopy = cell;
  if ((objc_msgSend_predicateType(self->_predicate, v5, v6, v7, v8) - 55) >= 0xFEu)
  {
    if (objc_msgSend_predArg1Type(self->_predicate, v9, v10, v11, v12) != 11)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableFilterRule matchesCell:]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 231, 0, "Unexpected predicate argument type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    v28 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v14, cellCopy, v15, v16);
    v33 = objc_msgSend_dataList1(self->_predicate, v29, v30, v31, v32);
    v13 = objc_msgSend_containsObject_(v33, v34, v28, v35, v36);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  predicate = self->_predicate;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  v11 = archiverCopy;
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v10);
    *(archive + 3) = v9;
    archiverCopy = v11;
  }

  objc_msgSend_encodeToPrePivotArchive_archiver_(predicate, archiverCopy, v9, archiverCopy, v7);
  *(archive + 4) |= 2u;
  *(archive + 32) = 0;
}

- (id)initFromPrePivotArchive:(const void *)archive
{
  v13.receiver = self;
  v13.super_class = TSTTableFilterRule;
  v4 = [(TSTTableFilterRule *)&v13 init];
  if (v4 && ((v5 = [TSTFormulaPredicate alloc], *(archive + 3)) ? (v9 = objc_msgSend_initFromPrePivotArchive_(v5, v6, *(archive + 3), v7, v8)) : (v9 = objc_msgSend_initFromPrePivotArchive_(v5, v6, &TST::_FormulaPredicatePrePivotArchive_default_instance_, v7, v8)), predicate = v4->_predicate, v4->_predicate = v9, predicate, !v4->_predicate))
  {
    v11 = 0;
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  predicate = self->_predicate;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  v11 = archiverCopy;
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v10);
    *(archive + 3) = v9;
    archiverCopy = v11;
  }

  objc_msgSend_encodeToArchive_archiver_(predicate, archiverCopy, v9, archiverCopy, v7);
}

- (id)initFromArchive:(const void *)archive
{
  v13.receiver = self;
  v13.super_class = TSTTableFilterRule;
  v4 = [(TSTTableFilterRule *)&v13 init];
  if (v4 && ((v5 = [TSTFormulaPredicate alloc], *(archive + 3)) ? (v9 = objc_msgSend_initFromArchive_(v5, v6, *(archive + 3), v7, v8)) : (v9 = objc_msgSend_initFromArchive_(v5, v6, &TST::_FormulaPredicateArchive_default_instance_, v7, v8)), predicate = v4->_predicate, v4->_predicate = v9, predicate, !v4->_predicate))
  {
    v11 = 0;
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

@end