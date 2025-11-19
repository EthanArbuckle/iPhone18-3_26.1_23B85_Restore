@interface TSTPivotOwner
+ (id)enclosingGroupNameForGroupCellValue:(id)a3;
- (BOOL)groupingColumnUidExists:(TSKUIDStruct)a3;
- (BOOL)p_commitSort;
- (BOOL)p_commitSortAsync;
- (BOOL)requiresUnwrapping:(TSUCellCoord)a3;
- (TSCECellTractRef)pivotSourceBodyTract;
- (TSCECellTractRef)pivotSourceHeaderTract;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5;
- (TSKUIDStruct)ownerUID;
- (TSKUIDStruct)pivotAggregateRuleChangeUID;
- (TSKUIDStruct)pivotDataRefreshUID;
- (TSKUIDStruct)pivotRowColumnRuleChangeUID;
- (TSKUIDStruct)pivotSourceTableUID;
- (TSKUIDStructTract)pivotSourceBodyUidTract;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortColumnsInMode:(SEL)a3 sortDirection:(unint64_t)a4 rowIndex:(int)a5 level:(unsigned int)a6 aggregateIndex:(unsigned __int8)a7 resetLabels:(unint64_t)a8;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortRowsInMode:(SEL)a3 sortDirection:(unint64_t)a4 columnIndex:(int)a5 level:(unsigned int)a6 aggregateIndex:(unsigned __int8)a7 resetLabels:(unint64_t)a8;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotColumnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotRowUIDs;
- (TSTFormula)pivotSourceBodyReferenceEmbeddedInFormula;
- (TSTPivotGroupingColumnOptionsMap)groupingColumnOptionsMapCopy;
- (TSTPivotOwner)initWithTableModel:(id)a3;
- (TSUModelColumnIndex)baseColumnIndexForGroupingAtColumnIndex:(unsigned __int16)a3;
- (TSUModelColumnIndex)baseColumnIndexForGroupingAtRowIndex:(unsigned int)a3;
- (id).cxx_construct;
- (id)enclosingGroupNameForColumnIndex:(unsigned __int16)a3 level:(unsigned __int8)a4;
- (id)enclosingGroupNameForRowIndex:(unsigned int)a3 level:(unsigned __int8)a4;
- (id)filterSetForPivotDataTable:(id)a3;
- (id)hiddenStatesForPivotDataTable:(id)a3;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingRows;
- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)lowestCategoryLevelAsLeadingColumnGroupName:(unsigned __int16)a3;
- (id)lowestCategoryLevelAsLeadingRowGroupName:(unsigned int)a3;
- (id)p_formulaForCellCoord:(TSKUIDStructCoord *)x2_0 runningTotalContext:(id)a4;
- (id)p_referenceNodeFromTractRef:(id)a3;
- (id)pivotOptionsForColumnGroupsAtLevel:(unsigned __int8)a3;
- (id)pivotOptionsForGroupingColumn:(id)a3;
- (id)pivotOptionsForRowGroupsAtLevel:(unsigned __int8)a3;
- (id)pivotSourceRangeName;
- (int)linkToCalcEngine:(id)a3 forTableModel:(id)a4;
- (int)registerWithCalcEngine:(id)a3 forTableModel:(id)a4 baseOwnerUID:(const TSKUIDStruct *)a5;
- (unsigned)columnGroupLevelForHeaderRow:(TSUViewRowIndex)a3;
- (unsigned)rowGroupLevelForHeaderColumn:(TSUViewColumnIndex)a3;
- (void)clearAllPivotHiddenAndFiltered:(BOOL)a3;
- (void)collapseExpandChanged:(id)a3 forState:(id)a4;
- (void)didChangeTableName:(id)a3 fromTableName:(id)a4 forTableUID:(TSKUIDStruct)a5;
- (void)documentLocaleDidChange;
- (void)filterSetUpdated;
- (void)handlePivotSorting:(BOOL)a3;
- (void)invalidateForCalcEngine:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_ensureHiddenStatesExistsWithPivotDataTable:(id)a3;
- (void)p_resetAllHiddenTotals;
- (void)p_resetHiddenGrandTotals;
- (void)p_resetHiddenTotalsForGroupingColumnUid:(const TSKUIDStruct *)a3 hideTotals:(BOOL)a4;
- (void)p_resetSortingStructures;
- (void)p_resetSummaryFormulasForRunningTotalsOnly:(BOOL)a3 preservingStyles:(BOOL)a4;
- (void)p_setEmptyPivotTableLabels;
- (void)p_setPivotHeaderCellsResettingPivotHidden:(BOOL)a3 preservingStyles:(BOOL)a4;
- (void)p_sortFullTable:(unint64_t)a3;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4;
- (void)resetBaseOwnerUID;
- (void)resetCellsForNewPivotOrder;
- (void)resetCellsForNewPivotRules;
- (void)rewriteForPaste;
- (void)saveToArchiver:(id)a3;
- (void)setFilterSet:(id)a3 forPivotDataTable:(id)a4;
- (void)setHidingGrandTotalColumns:(BOOL)a3;
- (void)setHidingGrandTotalRows:(BOOL)a3;
- (void)setPivotSourceBodyTract:(id)a3;
- (void)setPivotSourceBodyUidTract:(TSKUIDStructTract *)a3;
- (void)setPivotSourceHeaderTract:(id)a3;
- (void)setPivotSourceTableName:(id)a3;
- (void)setPivotSourceTableUID:(TSKUIDStruct)a3;
- (void)setupAfterUnarchiveForPivotTable:(const TSKUIDStruct *)a3 pivotDataTable:(id)a4;
- (void)sortColumnsByRowIndex:(unsigned int)a3 level:(unsigned __int8)a4 aggregateIndex:(unint64_t)a5 sortDirection:(int)a6;
- (void)sortRowsByColumnIndex:(unsigned int)a3 level:(unsigned __int8)a4 aggregateIndex:(unint64_t)a5 sortDirection:(int)a6;
- (void)unregisterFromCalcEngine;
- (void)upgradeSourceTractsForAbsoluteRefs;
- (void)upgradeSourceTractsForHostCellChange;
- (void)writeResultsForCalcEngine:(id)a3;
@end

@implementation TSTPivotOwner

- (TSTPivotOwner)initWithTableModel:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v64.receiver = self;
  v64.super_class = TSTPivotOwner;
  v10 = [(TSTPivotOwner *)&v64 initWithContext:v9];

  if (v10)
  {
    v10->_tableModel = v4;
    *&v63 = objc_msgSend_tableUID(v4, v11, v12, v13, v14);
    *(&v63 + 1) = v15;
    v10->_ownerUID._lower = sub_2212C4930(&v63, 0x11, v16, v17, v18);
    v10->_ownerUID._upper = v19;
    v20 = [TSTFormulaStore alloc];
    v23 = objc_msgSend_initWithOwnerUID_(v20, v21, v10->_ownerUID._lower, v10->_ownerUID._upper, v22);
    formulaStore = v10->_formulaStore;
    v10->_formulaStore = v23;

    objc_msgSend_setUsesOnlyFixedCoords_(v10->_formulaStore, v25, 1, v26, v27);
    v28 = [TSTGroupBySet alloc];
    *&v63 = objc_msgSend_tableUID(v4, v29, v30, v31, v32);
    *(&v63 + 1) = v33;
    v36 = objc_msgSend_initWithPivotTableUID_(v28, v33, &v63, v34, v35);
    groupBySet = v10->_groupBySet;
    v10->_groupBySet = v36;

    v38 = [TSTPivotGroupingColumnOptionsMap alloc];
    v43 = objc_msgSend_context(v4, v39, v40, v41, v42);
    v47 = objc_msgSend_initWithContext_(v38, v44, v43, v45, v46);
    groupingColumnOptionsMap = v10->_groupingColumnOptionsMap;
    v10->_groupingColumnOptionsMap = v47;

    v53 = objc_msgSend_calcEngine(v4, v49, v50, v51, v52);
    v58 = objc_msgSend_tableNameChangeDistributor(v53, v54, v55, v56, v57);
    objc_msgSend_addReceiver_(v58, v59, v10, v60, v61);
  }

  return v10;
}

- (void)resetBaseOwnerUID
{
  tableModel = self->_tableModel;
  if (tableModel)
  {
    *&v20 = objc_msgSend_tableUID(tableModel, a2, v2, v3, v4);
    *(&v20 + 1) = v7;
    self->_ownerUID._lower = sub_2212C4930(&v20, 0x11, v8, v9, v10);
    self->_ownerUID._upper = v11;
    v15 = objc_msgSend_tableUID(self->_tableModel, v11, v12, v13, v14);
    objc_msgSend_setPivotTableUID_(self->_groupBySet, v16, v15, v16, v17);
    objc_msgSend_setFormulaOwnerUID_(self->_formulaStore, v18, self->_ownerUID._lower, self->_ownerUID._upper, v19);
  }
}

- (int)registerWithCalcEngine:(id)a3 forTableModel:(id)a4 baseOwnerUID:(const TSKUIDStruct *)a5
{
  v8 = a3;
  v13 = a4;
  if (self->_calcEngine)
  {
    v14 = 1;
  }

  else
  {
    self->_calcEngine = v8;
    tableModel = self->_tableModel;
    if (!tableModel)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotOwner registerWithCalcEngine:forTableModel:baseOwnerUID:]", v11, v12);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 156, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
      tableModel = self->_tableModel;
    }

    v27 = objc_msgSend_tableInfo(tableModel, v9, v10, v11, v12);
    v32 = objc_msgSend_translator(v27, v28, v29, v30, v31);
    objc_msgSend_flushCachedIndexSets(v32, v33, v34, v35, v36);

    objc_msgSend_resetBaseOwnerUID(self, v37, v38, v39, v40);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_groupBySet, v41, v8, a5, v42);
    objc_msgSend_setCalcEngine_(self->_formulaStore, v43, v8, v44, v45);
    LOWORD(v78) = 17;
    v14 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(self->_calcEngine, v46, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, a5->_lower, a5->_upper, v78);
    if (!v14)
    {
      v51 = objc_msgSend_tableInfo(self->_tableModel, v47, v48, v49, v50);
      isAPivotTable = objc_msgSend_isAPivotTable(v51, v52, v53, v54, v55);

      if (isAPivotTable)
      {
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v81, 0, 1);
        v81.var1 = 1;
        v61 = objc_msgSend_emptyReferenceSetWrapper(v8, v57, v58, v59, v60);
        objc_msgSend_summaryModelIsCleanForSortPrecedentForTableUID_(TSCEHauntedOwner, v62, a5, v63, v64);
        objc_msgSend_insertCellRef_(v61, v65, v80, v66, v67);
        v80[0] = 0x300000000;
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v79, &v81);
        objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v8, v68, v80, &self->_ownerUID, v61, &v79);

        objc_msgSend_registerAllFormulaToCalculationEngine(self->_formulaStore, v69, v70, v71, v72);
      }
    }

    v73 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, v47, v48, v49, v50);
    objc_msgSend_addReceiverIfMissing_(v73, v74, self, v75, v76);
  }

  return v14;
}

- (int)linkToCalcEngine:(id)a3 forTableModel:(id)a4
{
  v6 = a3;
  v10 = a4;
  if (self->_calcEngine)
  {
    v11 = 0;
  }

  else
  {
    self->_calcEngine = v6;
    if (!self->_tableModel)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPivotOwner linkToCalcEngine:forTableModel:]", v8, v9);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 192, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    objc_msgSend_setCalcEngine_(self->_formulaStore, v7, v6, v8, v9);
    v27 = objc_msgSend_tableInfo(self->_tableModel, v23, v24, v25, v26);
    v32 = objc_msgSend_translator(v27, v28, v29, v30, v31);
    objc_msgSend_flushCachedIndexSets(v32, v33, v34, v35, v36);

    calcEngine = self->_calcEngine;
    lower = self->_ownerUID._lower;
    upper = self->_ownerUID._upper;
    v44 = objc_msgSend_tableUID(self->_tableModel, v40, v41, v42, v43);
    LOWORD(v66) = 17;
    v11 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v45, lower, upper, self, 0, v44, v45, v66);
    v50 = objc_msgSend_tableInfo(v10, v46, v47, v48, v49);
    isAPivotTable = objc_msgSend_isAPivotTable(v50, v51, v52, v53, v54);
    if (v11)
    {
      v56 = 0;
    }

    else
    {
      v56 = isAPivotTable;
    }

    if (v56 == 1)
    {
      v11 = objc_msgSend_linkToCalcEngine_(self->_groupBySet, v57, v6, v59, v60);
    }

    v61 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, v57, v58, v59, v60);
    objc_msgSend_addReceiverIfMissing_(v61, v62, self, v63, v64);
  }

  return v11;
}

- (void)unregisterFromCalcEngine
{
  v6 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, a2, v2, v3, v4);
  objc_msgSend_removeReceiver_(v6, v7, self, v8, v9);

  objc_msgSend_unregisterFromCalcEngine(self->_groupBySet, v10, v11, v12, v13);
  objc_msgSend_unregisterOwner_(self->_calcEngine, v14, self->_ownerUID._lower, self->_ownerUID._upper, v15);
  objc_msgSend_setCalcEngine_(self->_formulaStore, v16, 0, v17, v18);
  self->_calcEngine = 0;
}

- (TSCECellTractRef)pivotSourceBodyTract
{
  v9 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 1, v2, v3);
  if (!v9)
  {
    v25 = 0;
    goto LABEL_14;
  }

  calcEngine = self->_calcEngine;
  v39.coordinate = 0;
  v39._tableUID._lower = objc_msgSend_ownerUID(self, v5, v6, v7, v8);
  v39._tableUID._upper = v11;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v47, calcEngine, &v39);
  v16 = objc_msgSend_const_astNodeArray(v9, v12, v13, v14, v15);
  sub_2212BB9E8(&v39, v16, &v47, 0);
  TSCEASTStreamIterator::rewrite(&v39, v17, v18, v19, v20);
  if (v40 != 1)
  {
    v26 = [TSCECellTractRef alloc];
    v28 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v26, v27, &unk_2217E14BC, &unk_2217E14BC, &self->_pivotSourceTableUID);
LABEL_8:
    v25 = v28;
    goto LABEL_9;
  }

  v21 = v41;
  v25 = v21;
  if (!v21)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v37.origin = v29;
    v37.size = v30;
    TSCERangeRef::TSCERangeRef(&v38, &v37, &self->_pivotSourceTableUID);
    LOBYTE(v37.origin.row) = 15;
    TSCERangeRef::setPreserveFlags(&v38, &v37);
    v31 = [TSCECellTractRef alloc];
    v28 = objc_msgSend_initWithRangeRef_(v31, v32, &v38, v33, v34);
    goto LABEL_8;
  }

  objc_msgSend_setPreserveFlags_(v21, v22, 15, v23, v24);
LABEL_9:
  v39.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v39, v35);
LABEL_14:

  return v25;
}

- (void)setPivotSourceBodyTract:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v8 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::absColonTractRef(v7, &unk_2217E14B4, &v15);
    TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v15, v17, &v16);
    v12 = objc_msgSend_initWithCreator_(v8, v9, &v16, v10, v11);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v13, v12, 1, v14);
  }

  else
  {
    objc_msgSend_clearFormulaAtIndex_(self->_formulaStore, v4, 1, v5, v6);
  }
}

- (id)p_referenceNodeFromTractRef:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v35 = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
    v36 = v10;
    v12 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v10, &v35, self->_calcEngine, v11);
    v17 = objc_msgSend_columnRowUIDMap(v12, v13, v14, v15, v16);
    v21 = objc_msgSend_uidRectRefForCellTractRef_(v17, v18, v9, v19, v20);

    objc_msgSend_setCalcEngine_(v21, v22, self->_calcEngine, v23, v24);
    v25 = [TSTReferenceNode alloc];
    v30 = objc_msgSend_context(self, v26, v27, v28, v29);
    calcEngine = self->_calcEngine;
    v36 = 0;
    v37 = 0;
    v35 = 0x7FFF7FFFFFFFLL;
    v33 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v25, v32, v30, calcEngine, v21, &v35, 0, 0);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (TSTFormula)pivotSourceBodyReferenceEmbeddedInFormula
{
  v6 = objc_msgSend_pivotSourceBodyTract(self, a2, v2, v3, v4);
  if (v6)
  {
    v7 = [TSTFormula alloc];
    calcEngine = self->_calcEngine;
    v12 = objc_msgSend_p_referenceNodeFromTractRef_(self, v9, v6, v10, v11);
    v17 = objc_msgSend_tableInfo(self->_tableModel, v13, v14, v15, v16);
    v19 = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(v7, v18, calcEngine, v12, 0x7FFF7FFFFFFFLL, v17);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)pivotSourceRangeName
{
  v6 = objc_msgSend_pivotSourceBodyTract(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pivotSourceRangeNameWithTractRef_(self, v7, v6, v8, v9);

  return v10;
}

- (TSCECellTractRef)pivotSourceHeaderTract
{
  v9 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2, v3);
  if (!v9)
  {
    goto LABEL_9;
  }

  calcEngine = self->_calcEngine;
  v32.coordinate = 0;
  v32._tableUID._lower = objc_msgSend_ownerUID(self, v5, v6, v7, v8);
  v32._tableUID._upper = v11;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v40, calcEngine, &v32);
  v16 = objc_msgSend_const_astNodeArray(v9, v12, v13, v14, v15);
  sub_2212BB9E8(&v32, v16, &v40, 1);
  TSCEASTStreamIterator::rewrite(&v32, v17, v18, v19, v20);
  v21 = v33;
  if (v33 == 1)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v30.origin = v22;
    v30.size = v23;
    TSCERangeRef::TSCERangeRef(&v31, &v30, &self->_pivotSourceTableUID);
    LOBYTE(v30.origin.row) = 15;
    TSCERangeRef::setPreserveFlags(&v31, &v30);
    v24 = [TSCECellTractRef alloc];
    calcEngine = objc_msgSend_initWithRangeRef_(v24, v25, &v31, v26, v27);
  }

  v32.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v32, v28);
  if ((v21 & 1) == 0)
  {
LABEL_9:
    calcEngine = 0;
  }

  return calcEngine;
}

- (void)setPivotSourceHeaderTract:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    if ((objc_msgSend_spansAllColumns(v4, v5, v6, v7, v8) & 1) == 0)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTPivotOwner setPivotSourceHeaderTract:]", v12, v13);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 346, 0, "pivot source header range expected to span all columns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    if ((objc_msgSend_spansAllColumns(v9, v10, v11, v12, v13) & 1) == 0)
    {
      objc_msgSend_setSpansAllColumns_(v9, v25, 1, v26, v27);
    }

    v28 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::absColonTractRef(v9, &unk_2217E14B4, &v35);
    TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v35, v37, &v36);
    v32 = objc_msgSend_initWithCreator_(v28, v29, &v36, v30, v31);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v33, v32, 2, v34);
  }

  else
  {
    objc_msgSend_clearFormulaAtIndex_(self->_formulaStore, v5, 2, v7, v8);
  }
}

- (TSKUIDStructTract)pivotSourceBodyUidTract
{
  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  v11 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a3, 1, v3, v4);
  if (v11)
  {
    calcEngine = self->_calcEngine;
    v65.coordinate = 0;
    v65._tableUID._lower = objc_msgSend_ownerUID(self, v7, v8, v9, v10);
    v65._tableUID._upper = v13;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v73, calcEngine, &v65);
    v18 = objc_msgSend_const_astNodeArray(v11, v14, v15, v16, v17);
    sub_2212BB9E8(&v65, v18, &v73, 0);
    TSCEASTStreamIterator::rewrite(&v65, v19, v20, v21, v22);
    if (v66 == 1)
    {
      v23 = v67;
      if (v23)
      {
        v27 = v23;
        objc_msgSend_setPreserveFlags_(v23, v24, 15, v25, v26);
      }

      else
      {
        TSUCellRectFromTSCERangeCoordinate();
        v62.origin = v34;
        v62.size = v35;
        TSCERangeRef::TSCERangeRef(v64, &v62, &self->_pivotSourceTableUID);
        LOBYTE(v62.origin.row) = 15;
        TSCERangeRef::setPreserveFlags(v64, &v62);
        v36 = [TSCECellTractRef alloc];
        v27 = objc_msgSend_initWithRangeRef_(v36, v37, v64, v38, v39);
      }

      v40 = objc_msgSend_tableModel(self, v28, v29, v30, v31);
      v45 = objc_msgSend_calcEngine(v40, v41, v42, v43, v44);
      v62.origin = objc_msgSend_tableUID(v27, v46, v47, v48, v49);
      v62.size = v50;
      if (v27)
      {
        objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v27, v50, v45, &v62, v51);
      }

      else
      {
        memset(v64, 0, sizeof(v64));
      }

      v52 = *v64;
      retstr->_colIdList.__begin_ = *v64;
      v58 = *&v64[8];
      *&retstr->_colIdList.__end_ = *&v64[8];
      *v64 = 0;
      *&v64[8] = 0;
      v53 = *&v64[40];
      *&retstr->_rowIdList.__begin_ = *&v64[24];
      retstr->_rowIdList.__cap_ = v53;
      memset(&v64[16], 0, 32);

      if (v70 != v71 || v68 != v69)
      {
        v62.origin = 0;
        v62.size = 0;
        v63 = 0;
        sub_221086EBC(&v62, v52, v58, (v58 - v52) >> 4);
        __p = 0;
        v60 = 0;
        v61 = 0;
        begin = retstr->_rowIdList.__begin_;
        sub_221086EBC(&__p, begin, retstr->_rowIdList.__end_, retstr->_rowIdList.__end_ - begin);
        sub_2210F0C88(&v62, *&v62.size, v70, v71, (v71 - v70) >> 4);
        sub_2210F0C88(&__p, v60, v68, v69, (v69 - v68) >> 4);
        sub_2210BBBE8(v64, &v62, &__p);
        if (retstr->_colIdList.__begin_)
        {
          operator delete(retstr->_colIdList.__begin_);
          retstr->_colIdList.__begin_ = 0;
          retstr->_colIdList.__end_ = 0;
          retstr->_colIdList.__cap_ = 0;
        }

        *&retstr->_colIdList.__begin_ = *v64;
        retstr->_colIdList.__cap_ = *&v64[16];
        memset(v64, 0, 24);
        if (begin)
        {
          retstr->_rowIdList.__end_ = begin;
          operator delete(begin);
          v55 = *v64;
        }

        else
        {
          v55 = 0;
        }

        *&retstr->_rowIdList.__begin_ = *&v64[24];
        retstr->_rowIdList.__cap_ = *&v64[40];
        memset(&v64[24], 0, 24);
        if (v55)
        {
          *&v64[8] = v55;
          operator delete(v55);
        }

        if (__p)
        {
          v60 = __p;
          operator delete(__p);
        }

        if (v62.origin)
        {
          v62.size = v62.origin;
          operator delete(*&v62.origin);
        }
      }
    }

    else
    {
      sub_2210BBBE8(v64, &v70, &v68);
      v32 = *&v64[16];
      *&retstr->_colIdList.__begin_ = *v64;
      retstr->_colIdList.__cap_ = v32;
      v33 = *&v64[40];
      *&retstr->_rowIdList.__begin_ = *&v64[24];
      retstr->_rowIdList.__cap_ = v33;
    }

    v65.coordinate = &unk_2834A3EA8;

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v65, v56);
  }

  return result;
}

- (void)setPivotSourceBodyUidTract:(TSKUIDStructTract *)a3
{
  if (a3->_colIdList.__begin_ == a3->_colIdList.__end_ && a3->_rowIdList.__begin_ == a3->_rowIdList.__end_)
  {

    objc_msgSend_setPivotSourceBodyTract_(self, a2, 0, v3, v4);
  }

  else
  {
    v23.var0 = objc_msgSend_pivotSourceTableUID(self, a2, a3, v3, v4);
    v23.var1 = v7;
    v9 = objc_msgSend_createFormulaForUIDTract_tableUID_(TSTFormulaStore, v7, a3, &v23, v8);
    calcEngine = self->_calcEngine;
    v22.coordinate = 0;
    v22._tableUID._lower = objc_msgSend_ownerUID(self, v11, v12, v13, v14);
    v22._tableUID._upper = v15;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v23, calcEngine, &v22);
    v19 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v9, v16, &v23, v17, v18);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v20, v19, 1, v21);
  }
}

- (void)upgradeSourceTractsForHostCellChange
{
  v9 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2, v3);
  if (v9)
  {
    objc_msgSend_willModifyForUpgrade(self, v5, v6, v7, v8);
    calcEngine = self->_calcEngine;
    v76.coordinate = 0;
    v76._tableUID._lower = objc_msgSend_ownerUID(self, v11, v12, v13, v14);
    v76._tableUID._upper = v15;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v84, calcEngine, &v76);
    v20 = objc_msgSend_const_astNodeArray(v9, v16, v17, v18, v19);
    sub_2212BB9E8(&v76, v20, &v84, 1);
    TSCEASTStreamIterator::rewrite(&v76, v21, v22, v23, v24);
    if (v77 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v74.origin = v25;
      v74.size = v26;
      TSCERangeRef::TSCERangeRef(&v75, &v74, &self->_pivotSourceTableUID);
      LOBYTE(v74.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v75, &v74);
      v27 = [TSCECellTractRef alloc];
      v31 = objc_msgSend_initWithRangeRef_(v27, v28, &v75, v29, v30);
      objc_msgSend_setPreserveFlags_(v31, v32, 15, v33, v34);
      objc_msgSend_setPivotSourceHeaderTract_(self, v35, v31, v36, v37);
    }

    v76.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v82 = __p;
      operator delete(__p);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v76, v38);
  }

  v43 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v5, 1, v7, v8);
  if (v43)
  {
    objc_msgSend_willModifyForUpgrade(self, v39, v40, v41, v42);
    v44 = self->_calcEngine;
    v49 = objc_msgSend_ownerUID(self, v45, v46, v47, v48);
    v76.coordinate = 0;
    v76._tableUID._lower = v49;
    v76._tableUID._upper = v50;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v84, v44, &v76);
    v55 = objc_msgSend_const_astNodeArray(v43, v51, v52, v53, v54);
    sub_2212BB9E8(&v76, v55, &v84, 1);
    TSCEASTStreamIterator::rewrite(&v76, v56, v57, v58, v59);
    if (v77 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v74.origin = v60;
      v74.size = v61;
      TSCERangeRef::TSCERangeRef(&v75, &v74, &self->_pivotSourceTableUID);
      LOBYTE(v74.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v75, &v74);
      v62 = [TSCECellTractRef alloc];
      v66 = objc_msgSend_initWithRangeRef_(v62, v63, &v75, v64, v65);
      objc_msgSend_setPreserveFlags_(v66, v67, 15, v68, v69);
      objc_msgSend_setPivotSourceBodyTract_(self, v70, v66, v71, v72);
    }

    v76.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v82 = __p;
      operator delete(__p);
    }

    if (v79)
    {
      v80 = v79;
      operator delete(v79);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v76, v73);
  }
}

- (void)upgradeSourceTractsForAbsoluteRefs
{
  v9 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2, v3);
  if (v9)
  {
    objc_msgSend_willModifyForUpgrade(self, v5, v6, v7, v8);
    v13 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v10, 2, v11, v12);
    calcEngine = self->_calcEngine;
    v84.coordinate = v13;
    v84._tableUID._lower = objc_msgSend_ownerUID(self, v15, v16, v17, v18);
    v84._tableUID._upper = v19;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v92, calcEngine, &v84);
    v24 = objc_msgSend_const_astNodeArray(v9, v20, v21, v22, v23);
    sub_2212BB9E8(&v84, v24, &v92, 1);
    TSCEASTStreamIterator::rewrite(&v84, v25, v26, v27, v28);
    if (v85 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v82.origin = v29;
      v82.size = v30;
      TSCERangeRef::TSCERangeRef(&v83, &v82, &self->_pivotSourceTableUID);
      LOBYTE(v82.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v83, &v82);
      v31 = [TSCECellTractRef alloc];
      v35 = objc_msgSend_initWithRangeRef_(v31, v32, &v83, v33, v34);
      objc_msgSend_setPreserveFlags_(v35, v36, 15, v37, v38);
      objc_msgSend_setPivotSourceHeaderTract_(self, v39, v35, v40, v41);
    }

    v84.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v90 = __p;
      operator delete(__p);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v84, v42);
  }

  v47 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v5, 1, v7, v8);
  if (v47)
  {
    objc_msgSend_willModifyForUpgrade(self, v43, v44, v45, v46);
    v51 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v48, 1, v49, v50);
    v52 = self->_calcEngine;
    v57 = objc_msgSend_ownerUID(self, v53, v54, v55, v56);
    v84.coordinate = v51;
    v84._tableUID._lower = v57;
    v84._tableUID._upper = v58;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v92, v52, &v84);
    v63 = objc_msgSend_const_astNodeArray(v47, v59, v60, v61, v62);
    sub_2212BB9E8(&v84, v63, &v92, 0);
    TSCEASTStreamIterator::rewrite(&v84, v64, v65, v66, v67);
    if (v85 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v82.origin = v68;
      v82.size = v69;
      TSCERangeRef::TSCERangeRef(&v83, &v82, &self->_pivotSourceTableUID);
      LOBYTE(v82.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v83, &v82);
      v70 = [TSCECellTractRef alloc];
      v74 = objc_msgSend_initWithRangeRef_(v70, v71, &v83, v72, v73);
      objc_msgSend_setPreserveFlags_(v74, v75, 15, v76, v77);
      objc_msgSend_setPivotSourceBodyTract_(self, v78, v74, v79, v80);
    }

    v84.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v90 = __p;
      operator delete(__p);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v84, v81);
  }
}

- (void)p_ensureHiddenStatesExistsWithPivotDataTable:(id)a3
{
  v40 = a3;
  v8 = objc_msgSend_hiddenStates(self->_groupBySet, v4, v5, v6, v7);

  if (!v8)
  {
    v13 = objc_msgSend_hiddenStatesOwner(v40, v9, v10, v11, v12);
    v18 = objc_msgSend_hiddenStates(v13, v14, v15, v16, v17);
    objc_msgSend_setHiddenStates_(self->_groupBySet, v19, v18, v20, v21);

    v26 = objc_msgSend_hiddenStates(self->_groupBySet, v22, v23, v24, v25);

    if (!v26)
    {
      v27 = [TSTHiddenStates alloc];
      v32 = objc_msgSend_hiddenStatesOwner(v40, v28, v29, v30, v31);
      v36 = objc_msgSend_initWithHiddenStatesOwner_(v27, v33, v32, v34, v35);
      objc_msgSend_setHiddenStates_(self->_groupBySet, v37, v36, v38, v39);
    }
  }
}

- (id)hiddenStatesForPivotDataTable:(id)a3
{
  v4 = a3;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v5, v4, v6, v7);
  v12 = objc_msgSend_hiddenStates(self->_groupBySet, v8, v9, v10, v11);

  return v12;
}

- (id)filterSetForPivotDataTable:(id)a3
{
  v4 = a3;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v5, v4, v6, v7);
  v12 = objc_msgSend_hiddenStates(self->_groupBySet, v8, v9, v10, v11);
  v17 = objc_msgSend_filterSetForRows(v12, v13, v14, v15, v16);

  return v17;
}

- (void)setFilterSet:(id)a3 forPivotDataTable:(id)a4
{
  v36 = a3;
  v6 = a4;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v7, v6, v8, v9);
  v14 = objc_msgSend_hiddenStates(self->_groupBySet, v10, v11, v12, v13);
  objc_msgSend_setFilterSetForRows_(v14, v15, v36, v16, v17);

  v22 = objc_msgSend_hiddenStates(self->_groupBySet, v18, v19, v20, v21);
  objc_msgSend_filterSetUpdated(v22, v23, v24, v25, v26);

  if (!v36 || !objc_msgSend_ruleCount(v36, v27, v28, v29, v30) || (objc_msgSend_isEnabled(v36, v27, v28, v29, v30) & 1) == 0)
  {
    v31 = objc_msgSend_hiddenStates(self->_groupBySet, v27, v28, v29, v30);
    objc_msgSend_clearAllFiltered(v31, v32, v33, v34, v35);
  }
}

- (void)filterSetUpdated
{
  v9 = objc_msgSend_hiddenStates(self->_groupBySet, a2, v2, v3, v4);
  objc_msgSend_filterSetUpdated(v9, v5, v6, v7, v8);
}

- (void)setPivotSourceTableUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower, a3._upper, v3);
  self->_pivotSourceTableUID._lower = lower;
  self->_pivotSourceTableUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (lower | upper)
  {
    v13 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v7, 0, 0x100000001, 0);
    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v11, v13, 0, v12);
  }

  else
  {

    objc_msgSend_clearFormulaAtIndex_(formulaStore, v7, 0, v8, v9);
  }
}

- (void)setPivotSourceTableName:(id)a3
{
  v14 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  v12 = objc_msgSend_copy(v14, v8, v9, v10, v11);
  pivotSourceTableName = self->_pivotSourceTableName;
  self->_pivotSourceTableName = v12;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4
{
  v6 = a4;
  v53 = 0;
  v54 = 0;
  v51.var0 = objc_msgSend_pivotSourceTableUID(self, v7, v8, v9, v10);
  v51.var1 = v11;
  v12 = sub_221119F90(a3, &v51);
  if (v12)
  {
    v15 = v12[4];
    v16 = v12[5];
    v53 = v15;
    v54 = v16;
    if (v15 | v16)
    {
      objc_msgSend_setPivotSourceTableUID_(self, v13, v15, v16, v14);
      v19 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v17, &v53, v6, v18);
      v24 = v19;
      if (v19)
      {
        v25 = objc_msgSend_tableName(v19, v20, v21, v22, v23);
        objc_msgSend_setPivotSourceTableName_(self, v26, v25, v27, v28);
      }

      v52 = 0;
      v33 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v20, 1, v22, v23);
      if (v33)
      {
        v50.coordinate = 0;
        v50._tableUID._lower = objc_msgSend_ownerUID(self, v29, v30, v31, v32);
        v50._tableUID._upper = v34;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v51, v6, &v50);
        v38 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v33, v35, a3, &v51, &v52);
        if ((v52 & 1) == 0)
        {
          objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v36, v38, 1, v37);
        }
      }

      v52 = 0;
      v39 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v29, 2, v31, v32);

      if (v39)
      {
        v44 = objc_msgSend_ownerUID(self, v40, v41, v42, v43);
        v50.coordinate = 0;
        v50._tableUID._lower = v44;
        v50._tableUID._upper = v45;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v51, v6, &v50);
        v49 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v39, v46, a3, &v51, &v52);
        if ((v52 & 1) == 0)
        {
          objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v47, v49, 2, v48);
        }
      }
    }
  }
}

- (TSTPivotGroupingColumnOptionsMap)groupingColumnOptionsMapCopy
{
  v5 = objc_msgSend_copy(self->_groupingColumnOptionsMap, a2, v2, v3, v4);

  return v5;
}

- (id)pivotOptionsForGroupingColumn:(id)a3
{
  v4 = a3;
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  v10 = objc_msgSend_groupingColumnUid(v4, v6, v7, v8, v9);
  v13 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v11, v10, v11, v12);

  return v13;
}

- (id)pivotOptionsForColumnGroupsAtLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_columnGroupings(self, a2, a3, v3, v4);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);
  v13 = v5 - 1;

  if (v13 >= v12)
  {
    v26 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v14, v15, v16, v17);
  }

  else
  {
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    v19 = objc_msgSend_columnGroupings(self, v14, v15, v16, v17);
    objc_msgSend_groupingColumnUidList(v19, v20, v21, v22, v23);
    v26 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v24, __p[2 * v13], __p[2 * v13 + 1], v25);
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v26;
}

- (id)pivotOptionsForRowGroupsAtLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_rowGroupings(self, a2, a3, v3, v4);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);
  v13 = v5 - 1;

  if (v13 >= v12)
  {
    v26 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v14, v15, v16, v17);
  }

  else
  {
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    v19 = objc_msgSend_rowGroupings(self, v14, v15, v16, v17);
    objc_msgSend_groupingColumnUidList(v19, v20, v21, v22, v23);
    v26 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v24, __p[2 * v13], __p[2 * v13 + 1], v25);
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v26;
}

- (BOOL)groupingColumnUidExists:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  columnGroupings = self->_columnGroupings;
  if (columnGroupings)
  {
    objc_msgSend_groupingColumnUidList(columnGroupings, a2, a3._lower, a3._upper, v3);
    if (v16 != v17)
    {
      v8 = v16;
      do
      {
        v9 = *v8 == lower && v8[1] == upper;
        v10 = v9;
        if (v9)
        {
          break;
        }

        v8 += 2;
      }

      while (v8 != v17);
      if (v16)
      {
        v17 = v16;
        operator delete(v16);
        if ((v10 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

      return 1;
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }

LABEL_19:
  rowGroupings = self->_rowGroupings;
  if (!rowGroupings)
  {
    return 0;
  }

  objc_msgSend_groupingColumnUidList(rowGroupings, a2, a3._lower, a3._upper, v3);
  if (v16 == v17)
  {
    v11 = 0;
    if (!v16)
    {
      return v11;
    }

LABEL_34:
    operator delete(v16);
    return v11;
  }

  v13 = v16;
  do
  {
    v14 = *v13 == lower && v13[1] == upper;
    v11 = v14;
    if (v14)
    {
      break;
    }

    v13 += 2;
  }

  while (v13 != v17);
  if (v16)
  {
    goto LABEL_34;
  }

  return v11;
}

- (void)setHidingGrandTotalColumns:(BOOL)a3
{
  if (self->_isHidingGrandTotalColumns != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_isHidingGrandTotalColumns = a3;

    objc_msgSend_p_resetHiddenGrandTotals(self, v7, v8, v9, v10);
  }
}

- (void)setHidingGrandTotalRows:(BOOL)a3
{
  if (self->_isHidingGrandTotalRows != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    self->_isHidingGrandTotalRows = a3;

    objc_msgSend_p_resetHiddenGrandTotals(self, v7, v8, v9, v10);
  }
}

- (void)p_resetSummaryFormulasForRunningTotalsOnly:(BOOL)a3 preservingStyles:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  hasRunningTotalAggregates = objc_msgSend_hasRunningTotalAggregates(self->_groupBySet, a2, a3, a4, v4);
  v13 = hasRunningTotalAggregates;
  if (!v6 || hasRunningTotalAggregates)
  {
    v162 = objc_msgSend_tableInfo(self->_tableModel, v9, v10, v11, v12);
    v18 = objc_msgSend_pivotDataModel(v162, v14, v15, v16, v17);
    v23 = objc_msgSend_categoryOwner(v18, v19, v20, v21, v22);
    v161 = objc_msgSend_minion(v23, v24, v25, v26, v27);

    v32 = objc_msgSend_rowUIDs(v162, v28, v29, v30, v31);
    v37 = objc_msgSend_columnUIDs(v162, v33, v34, v35, v36);
    v158 = objc_msgSend_numberOfHeaderRows(v162, v38, v39, v40, v41);
    v157 = v32;
    v46 = objc_msgSend_numberOfHeaderColumns(v162, v42, v43, v44, v45);
    v47 = [TSTRunningTotalContext alloc];
    v52 = objc_msgSend_groupBySet(self, v48, v49, v50, v51);
    v156 = v37;
    v160 = v6;
    v159 = objc_msgSend_initWithGroupBySet_(v47, v53, v52, v54, v55);

    v60 = objc_msgSend_count(self->_aggregates, v56, v57, v58, v59);
    memset(v179, 0, 24);
    sub_22132D398(v179, 0x64uLL, 0);
    v68 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v61, v62, v63, v64);
    v155 = __PAIR64__(v13, v46);
    v69 = 0;
    if (v60)
    {
      for (i = 0; i != v60; ++i)
      {
        *(v179[0] + (i >> 6)) &= ~(1 << i);
        v71 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v65, i, v66, v67, v155);
        if ((objc_msgSend_showAsType(v71, v72, v73, v74, v75) & 0xFE) == 6)
        {
          v80 = objc_msgSend_runningTotalGroupingColumnUid(v71, v76, v77, v78, v79);
          if (v80 | v81)
          {
            v175[0] = objc_msgSend_runningTotalGroupingColumnUid(v71, v81, v82, v83, v84);
            v175[1] = v85;
            if (v68)
            {
              objc_msgSend_groupingColumnLevelsForColumn_(v68, v85, v175, v86, v87);
              v88 = v176;
              v89 = v177;
            }

            else
            {
              v89 = 0;
              v88 = 0;
              v176 = 0;
              v177 = 0;
              v178 = 0;
            }

            if ((v89 - v88) >= 2)
            {
              *(v179[0] + (i >> 6)) |= 1 << i;
              v69 = 1;
            }

            if (v88)
            {
              v177 = v88;
              operator delete(v88);
            }
          }
        }
      }
    }

    v90 = v162;
    v91 = [TSTPivotCellSetter alloc];
    v93 = objc_msgSend_initWithPivotTable_minion_preservingStyles_(v91, v92, v162, v161, v5);
    v94 = ((v157[1] - *v157) >> 4) - 1;
    v95 = ((v157[1] - *v157) >> 4) - v158;
    v96 = v95 >> 8;
    if (((v157[1] - *v157) >> 4) != v158)
    {
      ++v96;
    }

    if (v95 <= 0x100)
    {
      v97 = 1;
    }

    else
    {
      v97 = v96;
    }

    if ((v155 & 0x100000000) != 0)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97;
    }

    v99 = v93;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_22132D504;
    block[3] = &unk_2834A5288;
    v170 = v158;
    v171 = v94;
    v172 = v155;
    v167 = v157;
    v168 = v156;
    v166 = v98;
    block[4] = self;
    v173 = v69 & 1;
    sub_2213355A8(__p, v179);
    __p[3] = v60;
    v100 = v159;
    v164 = v100;
    v101 = v160;
    v174 = v160;
    v102 = v99;
    v165 = v102;
    dispatch_apply(v98, 0, block);
    objc_msgSend_blockUntilCompleted(v102, v103, v104, v105, v106);
    v111 = objc_msgSend_madeChange(v102, v107, v108, v109, v110);
    v116 = objc_msgSend_filterSet(v162, v112, v113, v114, v115);
    isEnabled = objc_msgSend_isEnabled(v116, v117, v118, v119, v120);

    if (isEnabled)
    {
      v126 = objc_msgSend_hiddenStates(v162, v122, v123, v124, v125);
      v127 = [TSTTableFilterSet alloc];
      v132 = objc_msgSend_context(v162, v128, v129, v130, v131);
      v135 = objc_msgSend_initWithNotBlankRowGroupsWithContext_withPivotTable_(v127, v133, v132, v162, v134);

      objc_msgSend_setFilterSetForRows_(v126, v136, v135, v137, v138);
      v139 = [TSTTableFilterSet alloc];
      v144 = objc_msgSend_context(v162, v140, v141, v142, v143);
      v147 = objc_msgSend_initWithNotBlankColumnGroupsWithContext_withPivotTable_(v139, v145, v144, v162, v146);

      objc_msgSend_setFilterSetForColumns_(v126, v148, v147, v149, v150);
      objc_msgSend_filterSetUpdated(v162, v151, v152, v153, v154);

      v90 = v162;
      v101 = v160;
    }

    if ((v111 & v101) == 1)
    {
      self->_shouldSkipNextAsyncSort = 1;
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v179[0])
    {
      operator delete(v179[0]);
    }
  }
}

- (void)p_setEmptyPivotTableLabels
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3, v4))
  {
    v54 = objc_msgSend_newCell(self->_tableModel, v6, v7, v8, v9);
    v14 = objc_msgSend_tableInfo(self->_tableModel, v10, v11, v12, v13);
    v19 = objc_msgSend_documentRoot(v14, v15, v16, v17, v18);
    v24 = objc_msgSend_documentLocale(v19, v20, v21, v22, v23);

    v26 = objc_msgSend_localizedStringForKey_value_table_(v24, v25, @"Columns", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v54, v27, v26, v28, v29);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v30, v54, 0x100000000, 0, 1);
    v32 = objc_msgSend_localizedStringForKey_value_table_(v24, v31, @"Rows", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v54, v33, v32, v34, v35);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v36, v54, 1, 0, 1);
    v38 = objc_msgSend_localizedStringForKey_value_table_(v24, v37, @"Values", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v54, v39, v38, v40, v41);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v42, v54, 0x100000001, 0, 1);
  }

  else
  {
    v43 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTPivotOwner p_setEmptyPivotTableLabels]", v8, v9);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v55, v47, 1066, 0, "These labels are only for empty pivots");

    v53 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v53, v49, v50, v51, v52);
  }
}

- (void)resetCellsForNewPivotRules
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3, v4))
  {

    MEMORY[0x2821F9670](self, sel_p_setEmptyPivotTableLabels, v7, v8, v9);
  }

  else
  {
    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v6, 1, 0, v9);

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v10, 0, 0, v11);
  }
}

- (void)resetCellsForNewPivotOrder
{
  objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, a2, 1, 1, v2);

  objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v4, 1, 1, v5);
}

- (void)documentLocaleDidChange
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3, v4))
  {

    MEMORY[0x2821F9670](self, sel_p_setEmptyPivotTableLabels, v7, v8, v9);
  }

  else
  {

    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v6, 0, 1, v9);
  }
}

- (void)rewriteForPaste
{
  if ((objc_msgSend_isEmptyPivot(self, a2, v2, v3, v4) & 1) == 0)
  {

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v6, 0, 1, v7);
  }
}

- (void)clearAllPivotHiddenAndFiltered:(BOOL)a3
{
  v5 = a3;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v19 = objc_msgSend_hiddenStates(v6, v7, v8, v9, v10);

  if (v5)
  {
    objc_msgSend_clearAllFiltered(v19, v11, v12, v13, v14);
  }

  objc_msgSend_clearAllPivotHiddenAndInvalidate_(v19, v11, 1, v13, v14);
  objc_msgSend_invalidateAllCollapsed(v19, v15, v16, v17, v18);
}

- (void)p_resetHiddenGrandTotals
{
  if (self->_isHidingGrandTotalColumns)
  {
    v36 = objc_msgSend_columnGroupings(self, a2, v2, v3, v4);
    v10 = objc_msgSend_count(v36, v6, v7, v8, v9) != 0;
  }

  else
  {
    v10 = 0;
  }

  if (self->_isHidingGrandTotalRows)
  {
    v37 = objc_msgSend_rowGroupings(self, a2, v2, v3, v4);
    v15 = objc_msgSend_count(v37, v11, v12, v13, v14) != 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3, v4);
  v38 = objc_msgSend_hiddenStates(v16, v17, v18, v19, v20);

  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v27 = objc_msgSend_groupBySet(self, v23, v24, v25, v26);
  v32 = objc_msgSend_tableInfo(self->_tableModel, v28, v29, v30, v31);
  objc_msgSend_getHidingIndexesForGrandTotalsForPivotTable_columns_rows_(v27, v33, v32, v22, v21);

  if (v10)
  {
    objc_msgSend_hideColumnsAtIndexes_forAction_invalidate_(v38, v34, v22, 16, 1);
  }

  else
  {
    objc_msgSend_showColumnsAtIndexes_forAction_invalidate_(v38, v34, v22, 16, 1);
  }

  if (v15)
  {
    objc_msgSend_hideRowsAtIndexes_forAction_invalidate_(v38, v35, v21, 16, 1);
  }

  else
  {
    objc_msgSend_showRowsAtIndexes_forAction_invalidate_(v38, v35, v21, 16, 1);
  }
}

- (void)p_resetHiddenTotalsForGroupingColumnUid:(const TSKUIDStruct *)a3 hideTotals:(BOOL)a4
{
  v5 = a4;
  v8 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, a4, v4);
  v29 = objc_msgSend_hiddenStates(v8, v9, v10, v11, v12);

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v19 = objc_msgSend_groupBySet(self, v15, v16, v17, v18);
  v24 = objc_msgSend_tableInfo(self->_tableModel, v20, v21, v22, v23);
  objc_msgSend_getPivotHidingIndexesForGroupingColumn_columns_rows_forHiding_forPivotTable_(v19, v25, a3, v14, v13, v5, v24);

  if (v5)
  {
    objc_msgSend_hideRowsAtIndexes_forAction_invalidate_(v29, v26, v13, 16, 1);
    objc_msgSend_hideColumnsAtIndexes_forAction_invalidate_(v29, v27, v14, 16, 1);
  }

  else
  {
    objc_msgSend_showRowsAtIndexes_forAction_invalidate_(v29, v26, v13, 16, 1);
    objc_msgSend_showColumnsAtIndexes_forAction_invalidate_(v29, v28, v14, 16, 1);
  }
}

+ (id)enclosingGroupNameForGroupCellValue:(id)a3
{
  v3 = a3;
  if (objc_msgSend_valueType(v3, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_displayString(v3, v8, v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend_locale(v3, v8, v9, v10, v11);
    v12 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v14, v13, v15, v16);
  }

  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = &stru_2834BADA0;
  }

  v18 = v17;

  return v17;
}

- (id)enclosingGroupNameForColumnIndex:(unsigned __int16)a3 level:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, a4, v4);
  v34 = objc_msgSend_columnUIDForColumnIndex_(v8, v9, v6, v10, v11);
  v35 = v12;

  v15 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self->_groupBySet, v13, &v34, 0, v14);
  v17 = v16;
  v21 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v16, v18, v19, v20, v34, v35);
  v24 = objc_msgSend_groupNodeForGroupUid_(v21, v22, v15, v17, v23);

  v28 = objc_msgSend_groupValueAtLevel_(v24, v25, v5, v26, v27);
  v32 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v29, v28, v30, v31);

  return v32;
}

- (id)enclosingGroupNameForRowIndex:(unsigned int)a3 level:(unsigned __int8)a4
{
  v5 = a4;
  v6 = *&a3;
  v8 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3, a4, v4);
  v34 = objc_msgSend_rowUIDForRowIndex_(v8, v9, v6, v10, v11);
  v35 = v12;

  v15 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self->_groupBySet, v13, &v34, 0, v14);
  v17 = v16;
  v21 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v16, v18, v19, v20, v34, v35);
  v24 = objc_msgSend_groupNodeForGroupUid_(v21, v22, v15, v17, v23);

  v28 = objc_msgSend_groupValueAtLevel_(v24, v25, v5, v26, v27);
  v32 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v29, v28, v30, v31);

  return v32;
}

- (BOOL)requiresUnwrapping:(TSUCellCoord)a3
{
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3, v3, v4);
  v12 = objc_msgSend_numberOfHeaderRows(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_tableInfo(self->_tableModel, v13, v14, v15, v16);
  v22 = objc_msgSend_numberOfHeaderColumns(v17, v18, v19, v20, v21);

  v27 = v12 - 1 == a3.row && a3.column >= v22;
  if (!v27 || objc_msgSend_count(self->_aggregates, v23, v24, v25, v26) != 1 || !objc_msgSend_count(self->_columnGroupings, v28, v29, v30, v31))
  {
    return 0;
  }

  return objc_msgSend_hasHeaderRowForAggregateNames(self, v32, v33, v34, v35);
}

- (unsigned)columnGroupLevelForHeaderRow:(TSUViewRowIndex)a3
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3.var0, v3, v4);
  if (objc_msgSend_numberOfHeaderRows(v6, v7, v8, v9, v10) > a3.var0)
  {
    v11 = LOBYTE(a3.var0) + 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (unsigned)rowGroupLevelForHeaderColumn:(TSUViewColumnIndex)a3
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3.var0, v3, v4);
  if (objc_msgSend_numberOfHeaderColumns(v6, v7, v8, v9, v10) > a3.var0)
  {
    v11 = LOBYTE(a3.var0) + 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (void)p_setPivotHeaderCellsResettingPivotHidden:(BOOL)a3 preservingStyles:(BOOL)a4
{
  v396 = a4;
  v361 = a3;
  v369 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, a4, v4);
  v379 = objc_msgSend_translator(v369, v6, v7, v8, v9);
  v383 = objc_msgSend_count(self->_columnGroupings, v10, v11, v12, v13);
  v18 = objc_msgSend_count(self->_rowGroupings, v14, v15, v16, v17);
  v23 = objc_msgSend_count(self->_aggregates, v19, v20, v21, v22);
  active = objc_msgSend_activeFlatteningDimension(self->_groupBySet, v24, v25, v26, v27);
  v387 = objc_msgSend_activeFlatteningDimension(self->_groupBySet, v28, v29, v30, v31);
  v372 = objc_msgSend_hasHeaderColumnForAggregateNames(self, v32, v33, v34, v35) && (!active || (objc_msgSend_hasHeaderRowForAggregateNames(self, v36, v37, v38, v39) & 1) == 0) && v23 != 0;
  v360 = v23 != 0;
  v368 = objc_msgSend_numberOfHeaderRows(v369, v36, v37, v38, v39);
  v375 = objc_msgSend_numberOfHeaderColumns(v369, v40, v41, v42, v43);
  v48 = objc_msgSend_documentRoot(v369, v44, v45, v46, v47);
  v53 = objc_msgSend_documentLocale(v48, v49, v50, v51, v52);

  v370 = v53;
  v382 = objc_msgSend_localizedStringForKey_value_table_(v53, v54, @"Grand Total", &stru_2834BADA0, @"TSTables");
  v55 = [TSTPivotCellSetter alloc];
  v399 = objc_msgSend_initWithPivotTable_minion_preservingStyles_(v55, v56, v369, 0, v396);
  v384 = objc_opt_new();
  v395 = v23;
  if (v23)
  {
    v61 = 0;
    do
    {
      v62 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v57, v61, v59, v60);
      v67 = objc_msgSend_aggregateType(v62, v63, v64, v65, v66);
      v71 = objc_msgSend_localizedShortLabelForAggType_(v370, v68, v67, v69, v70);
      v76 = objc_msgSend_pivotDataModel(v369, v72, v73, v74, v75);
      v81 = objc_msgSend_columnUid(v62, v77, v78, v79, v80);
      v84 = objc_msgSend_columnIndexForColumnUID_(v76, v82, v81, v82, v83);

      v88 = objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(v369, v85, v84, v86, v87);
      v90 = sub_221131094(v370, v89);
      v94 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v91, v90, v92, v93, v88, v71);
      objc_msgSend_addObject_(v384, v95, v94, v96, v97);

      ++v61;
    }

    while (v395 != v61);
  }

  v98 = objc_msgSend_columnRowUIDMap(v369, v57, v58, v59, v60);
  v397 = objc_msgSend_columnUIDs(v98, v99, v100, v101, v102);

  v107 = objc_msgSend_columnRowUIDMap(v369, v103, v104, v105, v106);
  v398 = objc_msgSend_rowUIDs(v107, v108, v109, v110, v111);

  if (v375)
  {
    for (i = 0; i != v375; ++i)
    {
      if (v368)
      {
        v117 = 0;
        do
        {
          v403 = 0u;
          v404 = 0u;
          TSKMakeUIDStructCoord();
          v401 = v403;
          v402 = v404;
          objc_msgSend_setStringValue_atUidCoord_(v399, v118, 0, &v401, v119);
          v117 += 16;
        }

        while (16 * v368 != v117);
      }
    }
  }

  v380 = self;
  v367 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v112, v113, v114, v115);
  if (v18)
  {
    v124 = 0;
    v125 = 0;
    do
    {
      v403 = 0u;
      v404 = 0u;
      TSKMakeUIDStructCoord();
      v130 = objc_msgSend_tableModel(v380, v126, v127, v128, v129);
      v135 = objc_msgSend_tableInfo(v130, v131, v132, v133, v134);
      v139 = objc_msgSend_pivotHeaderColumnDisplayNameAtIndex_(v135, v136, v125, v137, v138);

      v143 = objc_msgSend_groupingColumnAtCategoryLevel_(v367, v140, ++v125, v141, v142);
      v148 = objc_msgSend_groupingType(v143, v144, v145, v146, v147);

      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v149, v148, v150, v151))
      {
        v154 = sub_221131094(v370, v152);
        v155 = MEMORY[0x277CCACA8];
        v158 = objc_msgSend_shortStringForGroupingType_locale_(TSTGroupingColumn, v156, v148, v370, v157);
        v162 = objc_msgSend_stringWithFormat_(v155, v159, v154, v160, v161, v139, v158);

        v139 = v162;
      }

      v401 = v403;
      v402 = v404;
      objc_msgSend_setStringValue_atUidCoord_(v399, v152, v139, &v401, v153);

      v124 += 16;
    }

    while (v18 != v125);
  }

  v366 = objc_msgSend_groupByForColumnGroups(v380->_groupBySet, v120, v121, v122, v123);
  v167 = v395;
  if (v383)
  {
    v168 = 0;
    v169 = 0;
    do
    {
      v403 = 0u;
      v404 = 0u;
      TSKMakeUIDStructCoord();
      v174 = objc_msgSend_tableModel(v380, v170, v171, v172, v173);
      v179 = objc_msgSend_tableInfo(v174, v175, v176, v177, v178);
      v183 = objc_msgSend_pivotHeaderRowDisplayNameAtIndex_(v179, v180, v169, v181, v182);

      v187 = objc_msgSend_groupingColumnAtCategoryLevel_(v366, v184, ++v169, v185, v186);
      v192 = objc_msgSend_groupingType(v187, v188, v189, v190, v191);

      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v193, v192, v194, v195))
      {
        v198 = sub_221131094(v370, v196);
        v199 = MEMORY[0x277CCACA8];
        v202 = objc_msgSend_shortStringForGroupingType_locale_(TSTGroupingColumn, v200, v192, v370, v201);
        v206 = objc_msgSend_stringWithFormat_(v199, v203, v198, v204, v205, v183, v202);

        v183 = v206;
        v167 = v395;
      }

      v401 = v403;
      v402 = v404;
      objc_msgSend_setStringValue_atUidCoord_(v399, v196, v183, &v401, v197);

      v168 += 16;
    }

    while (v383 != v169);
  }

  v207 = v380;
  if (objc_msgSend_hasHeaderColumnForAggregateNames(v380, v163, v164, v165, v166))
  {
    hasHeaderRowForAggregateNames = objc_msgSend_hasHeaderRowForAggregateNames(v380, v208, v209, v210, v211);
    v213 = active ? 0 : hasHeaderRowForAggregateNames;
    if (v213 == 1)
    {
      v403 = 0u;
      v404 = 0u;
      TSKMakeUIDStructCoord();
      v215 = objc_msgSend_localizedStringForKey_value_table_(v370, v214, @"Values", &stru_2834BADA0, @"TSTables");
      v401 = v403;
      v402 = v404;
      objc_msgSend_setStringValue_atUidCoord_(v399, v216, v215, &v401, v217);
    }
  }

  if (active)
  {
    v218 = 1;
  }

  else
  {
    v218 = v167;
  }

  v364 = v218;
  v371 = objc_msgSend_columnIndexForColumnUID_(v369, v208, *"aggre names col", *"mes col", v211);
  v359 = objc_msgSend_rowIndexForRowUID_(v369, v219, *"aggre names row", *"mes row", v220);
  v362 = (v398[1] - *v398) >> 4;
  if (v368 < v362)
  {
    v225 = v18;
    v226 = v368;
    while (1)
    {
      v400 = *(*v398 + 16 * v226);
      v227 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(v207->_groupBySet, v221, &v400, 0, v224);
      v234 = objc_msgSend_groupNodeForGroupUid_(v367, v228, v227, v228, v229);
      if (!v234)
      {
        v235 = MEMORY[0x277D81150];
        v236 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v230, "[TSTPivotOwner p_setPivotHeaderCellsResettingPivotHidden:preservingStyles:]", v232, v233);
        v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v237, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v238, v239);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v235, v241, v236, v240, 1354, 0, "Row group not found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v242, v243, v244, v245);
      }

      v376 = objc_msgSend_groupLevel(v234, v230, v231, v232, v233);
      v249 = v226;
      if (v375)
      {
        break;
      }

LABEL_79:

      v226 = v249 + v364;
      v207 = v380;
      v167 = v395;
      if (v249 + v364 >= v362)
      {
        goto LABEL_80;
      }
    }

    v250 = 0;
    v251 = v364 + v226;
    v391 = v234;
    while (1)
    {
      v385 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v379, v246, (v250 + 1), v247, v248);
      groupingColumnOptionsMap = v380->_groupingColumnOptionsMap;
      v256 = objc_msgSend_ruleAtIndex_(v380->_rowGroupings, v253, v250, v254, v255);
      v261 = objc_msgSend_groupingColumnUid(v256, v257, v258, v259, v260);
      v264 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v262, v261, v262, v263);

      v381 = v264;
      v269 = objc_msgSend_repeatLabels(v264, v265, v266, v267, v268);
      if (v251 > v249)
      {
        break;
      }

LABEL_78:

      v250 = (v250 + 1);
      v234 = v391;
      if (v250 >= v375)
      {
        goto LABEL_79;
      }
    }

    v270 = 0;
    v271 = v372;
    if (v250 != v371)
    {
      v271 = 0;
    }

    v393 = v271;
    if (v225 == v376)
    {
      v272 = v269;
    }

    else
    {
      v272 = 0;
    }

    while (1)
    {
      v403 = 0u;
      v404 = 0u;
      TSKMakeUIDStructCoord();
      if (v225 <= v250)
      {
        if (v393)
        {
          v278 = !v270 || active == 0;
          v279 = v278;
          if (v395 > v270 && v279)
          {
            v280 = objc_msgSend_objectAtIndex_(v384, v273, v270, v274, v275);
            goto LABEL_68;
          }
        }
      }

      else if ((v272 & 1) != 0 || !v270 && objc_msgSend_containsIndex_(v385, v273, v249, v274, v275))
      {
        v276 = objc_msgSend_groupValueAtLevel_(v391, v273, (v250 + 1), v274, v275);
        v277 = 0;
        goto LABEL_70;
      }

      if (!v270)
      {
        if (v250 | v376)
        {
          if (v250 == (v376 - 1))
          {
            objc_msgSend_groupValueAtLevel_(v391, v273, v376, v274, v275);
            v276 = v277 = 0;
            v281 = v225 != v376;
            if (v276)
            {
              goto LABEL_75;
            }

LABEL_71:
            if (v281)
            {
              goto LABEL_75;
            }

            v401 = v403;
            v402 = v404;
            objc_msgSend_setStringValue_atUidCoord_(v399, v273, v277, &v401, v281);
LABEL_76:

            goto LABEL_77;
          }
        }

        else if (v225)
        {
          v280 = v382;
LABEL_68:
          v277 = v280;
LABEL_69:
          v276 = 0;
LABEL_70:
          v281 = 0;
          if (!v276)
          {
            goto LABEL_71;
          }

LABEL_75:
          v401 = v403;
          v402 = v404;
          objc_msgSend_applyCellValue_atUidCoord_appendTotalForPivotsFlag_(v399, v273, v276, &v401, v281);

          goto LABEL_76;
        }
      }

      if (v396)
      {
        v277 = 0;
        goto LABEL_69;
      }

      v401 = v403;
      v402 = v404;
      objc_msgSend_setStringValue_atUidCoord_(v399, v273, 0, &v401, v275);
LABEL_77:
      if (v251 <= ++v270 + v249)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_80:
  if (v387 == 1)
  {
    v282 = v167;
  }

  else
  {
    v282 = 1;
  }

  v365 = v282;
  v283 = objc_msgSend_hiddenStates(v369, v221, v222, v223, v224);
  v374 = objc_msgSend_hiddenColumnIndexes(v283, v284, v285, v286, v287);
  v288 = v375;

  v363 = ((v397[2] - *v397) >> 4);
  if (v363 > v375)
  {
    v373 = v360 & ~v372;
    v389 = 0x7FFF;
    while (1)
    {
      v400 = *(*v397 + 16 * v288);
      v293 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(v207->_groupBySet, v289, &v400, 0, v292);
      v392 = objc_msgSend_groupNodeForGroupUid_(v366, v294, v293, v294, v295);
      if (!v392)
      {
        v300 = MEMORY[0x277D81150];
        v301 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v296, "[TSTPivotOwner p_setPivotHeaderCellsResettingPivotHidden:preservingStyles:]", v298, v299);
        v305 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v302, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v303, v304);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v300, v306, v301, v305, 1443, 0, "Column group not found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v307, v308, v309, v310);
      }

      v377 = objc_msgSend_groupLevel(v392, v296, v297, v298, v299);
      v314 = v288;
      if (v368)
      {
        break;
      }

LABEL_143:

      v288 += v365;
      if (v363 <= v288)
      {
        goto LABEL_144;
      }
    }

    v315 = 0;
    v316 = v365 + v288;
    while (1)
    {
      v317 = v315 + 1;
      v386 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v379, v311, (v315 + 1), v312, v313);
      v318 = v207->_groupingColumnOptionsMap;
      v322 = objc_msgSend_ruleAtIndex_(v207->_columnGroupings, v319, v315, v320, v321);
      v327 = objc_msgSend_groupingColumnUid(v322, v323, v324, v325, v326);
      v330 = objc_msgSend_pivotOptionsForUID_(v318, v328, v327, v328, v329);

      v378 = v330;
      v335 = objc_msgSend_repeatLabels(v330, v331, v332, v333, v334);
      if (v316 > v314)
      {
        break;
      }

LABEL_142:

      ++v315;
      v207 = v380;
      v314 = v288;
      if (v317 == v368)
      {
        goto LABEL_143;
      }
    }

    v336 = v373;
    if (v315 != v359)
    {
      v336 = 0;
    }

    v394 = v336;
    if (v377 == v383)
    {
      v337 = v335;
    }

    else
    {
      v337 = 0;
    }

    if (v377)
    {
      v338 = 0;
    }

    else
    {
      v338 = v315 == 0;
    }

    v339 = v338;
    v390 = v339;
    v340 = v288;
    while (1)
    {
      v403 = 0u;
      v404 = 0u;
      TSKMakeUIDStructCoord();
      if (v315 >= v383)
      {
        if (v394)
        {
          v346 = v340 == v288 || v387 == 1;
          v347 = v346;
          if (v395 > (v340 - v288) && v347)
          {
            if (v389 == 0x7FFF && v395 <= 1)
            {
              if (objc_msgSend_containsIndex_(v374, v341, v288, v342, v343))
              {
                v348 = 0x7FFF;
              }

              else
              {
                v348 = v288;
              }

              v389 = v348;
            }

            if (v395 > 1 || v288 == v389)
            {
              v349 = objc_msgSend_objectAtIndex_(v384, v341, (v340 - v288), v342, v343);
              goto LABEL_129;
            }
          }
        }
      }

      else if ((v337 & 1) != 0 || v340 == v288 && objc_msgSend_containsIndex_(v386, v341, v288, v342, v343))
      {
        v344 = objc_msgSend_groupValueAtLevel_(v392, v341, (v315 + 1), v342, v343);
        v345 = 0;
        goto LABEL_134;
      }

      if (v340 == v288)
      {
        if (v390)
        {
          if (v383)
          {
            v349 = v382;
LABEL_129:
            v350 = v349;
            v345 = 0;
            v344 = 0;
            goto LABEL_135;
          }
        }

        else if (v315 == v377 - 1)
        {
          v350 = 0;
          v351 = objc_msgSend_groupValueAtLevel_(v392, v341, v377, v342, v343);
          v345 = v377 != v383;
          v344 = v351;
          goto LABEL_135;
        }
      }

      if (v396)
      {
        v345 = 0;
        v344 = 0;
LABEL_134:
        v350 = 0;
LABEL_135:
        if (v344 || v345)
        {
          v401 = v403;
          v402 = v404;
          objc_msgSend_applyCellValue_atUidCoord_appendTotalForPivotsFlag_(v399, v341, v344, &v401, v345);
        }

        else
        {
          v401 = v403;
          v402 = v404;
          objc_msgSend_setStringValue_atUidCoord_(v399, v341, v350, &v401, v345);
        }

        goto LABEL_141;
      }

      v401 = v403;
      v402 = v404;
      objc_msgSend_setStringValue_atUidCoord_(v399, v341, 0, &v401, v343);
LABEL_141:
      if (v316 <= ++v340)
      {
        goto LABEL_142;
      }
    }
  }

LABEL_144:
  objc_msgSend_blockUntilCompleted(v399, v289, v290, v291, v292);
  if (v361)
  {
    objc_msgSend_clearAllPivotHiddenAndFiltered_(v207, v352, 0, v353, v354);
    objc_msgSend_p_resetAllHiddenTotals(v207, v355, v356, v357, v358);
  }
}

- (void)p_resetAllHiddenTotals
{
  objc_msgSend_p_resetHiddenGrandTotals(self, a2, v2, v3, v4);
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22132F798;
  v10[3] = &unk_278462DC8;
  v10[4] = self;
  objc_msgSend_enumerateOptionsUsingBlock_(groupingColumnOptionsMap, v7, v10, v8, v9);
}

- (id)lowestCategoryLevelAsLeadingRowGroupName:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3, v3, v4);
  v12 = objc_msgSend_translator(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v13, v14, v15, v16);
  v48[0] = objc_msgSend_rowUIDForRowIndex_(v7, v18, v5, v19, v20);
  v48[1] = v21;
  v23 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self->_groupBySet, v21, v48, 0, v22);
  v26 = objc_msgSend_groupNodeForGroupUid_(v17, v24, v23, v24, v25);
  v34 = objc_msgSend_groupLevel(v26, v27, v28, v29, v30);
  v35 = v34 - 1;
  if (v34 == 1)
  {
    goto LABEL_7;
  }

  v46 = v17;
  v47 = v7;
  v36 = -1;
  while (1)
  {
    v37 = v35;
    v38 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v12, v31, v35, v32, v33, v46, v47);
    v42 = objc_msgSend_containsIndex_(v38, v39, v5, v40, v41);

    if ((v42 & 1) == 0)
    {
      break;
    }

    v35 = v37 - 1;
    v36 = v37;
    if (v37 == 1)
    {
      v36 = 1;
      v17 = v46;
      v7 = v47;
      goto LABEL_9;
    }
  }

  v17 = v46;
  v7 = v47;
  if (v36 == 0xFF)
  {
LABEL_7:
    v36 = v34;
  }

  if (v36)
  {
LABEL_9:
    v43 = objc_msgSend_enclosingGroupNameForRowIndex_level_(self, v31, v5, v36, v33);
  }

  else
  {
    v43 = objc_msgSend_rowNameForCellID_restrictToBodyRange_(v7, v31, v5, 1, v33);
  }

  v44 = v43;

  return v44;
}

- (id)lowestCategoryLevelAsLeadingColumnGroupName:(unsigned __int16)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v12 = objc_msgSend_translator(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v13, v14, v15, v16);
  v48[0] = objc_msgSend_columnUIDForColumnIndex_(v7, v18, v5, v19, v20);
  v48[1] = v21;
  v23 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self->_groupBySet, v21, v48, 0, v22);
  v26 = objc_msgSend_groupNodeForGroupUid_(v17, v24, v23, v24, v25);
  v34 = objc_msgSend_groupLevel(v26, v27, v28, v29, v30);
  v35 = v34 - 1;
  if (v34 == 1)
  {
    goto LABEL_7;
  }

  v46 = v17;
  v47 = v7;
  v36 = -1;
  while (1)
  {
    v37 = v35;
    v38 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v12, v31, v35, v32, v33, v46, v47);
    v42 = objc_msgSend_containsIndex_(v38, v39, v5, v40, v41);

    if ((v42 & 1) == 0)
    {
      break;
    }

    v35 = v37 - 1;
    v36 = v37;
    if (v37 == 1)
    {
      v36 = 1;
      v17 = v46;
      v7 = v47;
      goto LABEL_9;
    }
  }

  v17 = v46;
  v7 = v47;
  if (v36 == 0xFF)
  {
LABEL_7:
    v36 = v34;
  }

  if (v36)
  {
LABEL_9:
    v43 = objc_msgSend_enclosingGroupNameForColumnIndex_level_(self, v31, v5, v36, v33);
  }

  else
  {
    v43 = objc_msgSend_columnNameForColumnIndex_(v7, v31, v5, v32, v33);
  }

  v44 = v43;

  return v44;
}

- (TSUModelColumnIndex)baseColumnIndexForGroupingAtColumnIndex:(unsigned __int16)a3
{
  v5 = a3;
  v7 = objc_msgSend_rowGroupings(self, a2, a3, v3, v4);
  v11 = objc_msgSend_ruleAtIndex_(v7, v8, v5, v9, v10);

  v16 = objc_msgSend_tableInfo(self->_tableModel, v12, v13, v14, v15);
  v21 = objc_msgSend_pivotDataModel(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_columnUid(v11, v22, v23, v24, v25);
  LOWORD(v16) = objc_msgSend_columnIndexForColumnUID_(v21, v27, v26, v27, v28);

  return v16;
}

- (TSUModelColumnIndex)baseColumnIndexForGroupingAtRowIndex:(unsigned int)a3
{
  v7 = objc_msgSend_columnGroupings(self, a2, *&a3, v3, v4);
  v11 = objc_msgSend_ruleAtIndex_(v7, v8, a3, v9, v10);

  v16 = objc_msgSend_tableInfo(self->_tableModel, v12, v13, v14, v15);
  v21 = objc_msgSend_pivotDataModel(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_columnUid(v11, v22, v23, v24, v25);
  LOWORD(v16) = objc_msgSend_columnIndexForColumnUID_(v21, v27, v26, v27, v28);

  return v16;
}

- (id)p_formulaForCellCoord:(TSKUIDStructCoord *)x2_0 runningTotalContext:(id)a4
{
  v6 = a4;
  v224[0] = 0;
  v9 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self->_groupBySet, v7, x2_0, v224, v8);
  v13 = objc_msgSend_aggregateForUidCoord_(self->_groupBySet, v10, x2_0, v11, v12);
  v179 = objc_msgSend_tableInfo(self->_tableModel, v14, v15, v16, v17);
  if (objc_msgSend_isValid(v9, v18, v19, v20, v21))
  {
    v26 = 0;
    if (v224[0] <= 5u)
    {
      if (v224[0] > 2u)
      {
        v27 = v179;
        if (v224[0] - 4 >= 2)
        {
          if (v224[0] != 3)
          {
            goto LABEL_42;
          }

          v28 = objc_msgSend_grandTotalCategoryRefForRow_forAggregate_(self->_groupBySet, v22, &x2_0->_row, v13, v25);
          v126 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v9, &v215);
          TSCEFormulaCreationMagic::categoryRef(v28, &v214);
          TSCEFormulaCreationMagic::operator/(&v215, &v214, &v216);
          v26 = objc_msgSend_initWithCreator_(v126, v127, &v216, v128, v129);

          v33 = v215;
        }

        else
        {
          v28 = objc_msgSend_groupByForUuidCoord_(self->_groupBySet, v22, x2_0, v24, v25);
          v33 = objc_msgSend_groupNodeForUuidCoord_(self->_groupBySet, v61, x2_0, v62, v63);
          v68 = objc_msgSend_groupBySet(self, v64, v65, v66, v67);
          v70 = objc_msgSend_percentParentDenominatorCategoryRefFor_inGroupBy_forAggregate_forShowAsType_(v68, v69, v33, v28, v13, v224[0]);

          if ((objc_msgSend_isValid(v70, v71, v72, v73, v74) & 1) == 0)
          {
            v75 = v9;

            v70 = v75;
          }

          v76 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v9, &v212);
          TSCEFormulaCreationMagic::categoryRef(v70, &v211);
          TSCEFormulaCreationMagic::operator/(&v212, &v211, &v213);
          v26 = objc_msgSend_initWithCreator_(v76, v77, &v213, v78, v79);
        }
      }

      else
      {
        v27 = v179;
        if (!v224[0])
        {
          v130 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v9, &v223);
          v26 = objc_msgSend_initWithCreator_(v130, v131, &v223, v132, v133);

          goto LABEL_42;
        }

        if (v224[0] == 1)
        {
          v28 = objc_msgSend_grandGrandTotalCategoryRefForAggregate_(self->_groupBySet, v22, v13, v24, v25);
          v134 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v9, &v221);
          TSCEFormulaCreationMagic::categoryRef(v28, &v220);
          TSCEFormulaCreationMagic::operator/(&v221, &v220, &v222);
          v26 = objc_msgSend_initWithCreator_(v134, v135, &v222, v136, v137);

          v33 = v221;
        }

        else
        {
          v28 = objc_msgSend_grandTotalCategoryRefForColumn_forAggregate_(self->_groupBySet, v22, x2_0, v13, v25);
          v29 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v9, &v218);
          TSCEFormulaCreationMagic::categoryRef(v28, &v217);
          TSCEFormulaCreationMagic::operator/(&v218, &v217, &v219);
          v26 = objc_msgSend_initWithCreator_(v29, v30, &v219, v31, v32);

          v33 = v218;
        }
      }

      goto LABEL_41;
    }

    if (v224[0] - 6 >= 2)
    {
      if (v224[0] != 8)
      {
        v27 = v179;
        if (v224[0] != 255)
        {
          goto LABEL_42;
        }

        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTPivotOwner p_formulaForCellCoord:runningTotalContext:]", v24, v25);
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v53, v54);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 1743, 0, "Invalid ShowAs Type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
        goto LABEL_18;
      }

      v27 = v179;
      v144 = objc_msgSend_grandTotalCategoryRefForColumn_forAggregate_(self->_groupBySet, v22, x2_0, v13, v25);
      v147 = objc_msgSend_grandTotalCategoryRefForRow_forAggregate_(self->_groupBySet, v145, &x2_0->_row, v13, v146);
      v151 = objc_msgSend_grandGrandTotalCategoryRefForAggregate_(self->_groupBySet, v148, v13, v149, v150);
      v152 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v9, &v186);
      TSCEFormulaCreationMagic::categoryRef(v151, &v185);
      TSCEFormulaCreationMagic::operator*(&v186, &v185, &v187);
      TSCEFormulaCreationMagic::parens(&v187, v226, &v188);
      TSCEFormulaCreationMagic::categoryRef(v147, &v182);
      TSCEFormulaCreationMagic::categoryRef(v144, &v181);
      TSCEFormulaCreationMagic::operator*(&v182, &v181, &v183);
      TSCEFormulaCreationMagic::parens(&v183, v227, &v184);
      TSCEFormulaCreationMagic::operator/(&v188, &v184, &v189);
      v26 = objc_msgSend_initWithCreator_(v152, v153, &v189, v154, v155);

      goto LABEL_42;
    }

    v210[0] = objc_msgSend_runningTotalGroupingColumnUid(v13, v22, v23, v24, v25);
    v210[1] = v80;
    v83 = objc_msgSend_aggregateIndexForUidCoord_(self->_groupBySet, v80, x2_0, v81, v82);
    if (objc_msgSend_isMissingRunningTotalFieldForAggIndex_(v6, v84, v83, v85, v86))
    {
      objc_msgSend_setType_(v9, v87, 240, v88, v89);
    }

    v93 = v9;
    v178 = v93;
    if (v224[0] == 7)
    {
      v177 = objc_msgSend_groupByForUuidCoord_(self->_groupBySet, v90, x2_0, v91, v92);
      v97 = objc_msgSend_groupNodeForUuidCoord_(self->_groupBySet, v94, x2_0, v95, v96);
      v102 = objc_msgSend_groupBySet(self, v98, v99, v100, v101);
      v104 = objc_msgSend_percentRunningDenominatorCategoryRefFor_inGroupBy_runningOnColumnUid_forAggregate_(v102, v103, v97, v177, v210, v13);

      v178 = v93;
      if (objc_msgSend_isValid(v104, v105, v106, v107, v108))
      {
        v178 = v104;
      }
    }

    v208 = 0u;
    v209 = 0u;
    v27 = v179;
    if (!v6 || (objc_msgSend_getPreviousUidCoordForAggIndex_fromNewUidCoord_addNewUidCoordEvenIfNotFound_(v6, v90, v83, x2_0, 1), v208 == 0) || v209 == 0)
    {
      if (v224[0] == 6)
      {
        v122 = [TSCEFormulaObject alloc];
        TSCEFormulaCreationMagic::categoryRef(v93, &v195);
        v119 = &v195;
        v26 = objc_msgSend_initWithCreator_(v122, v123, &v195, v124, v125);
        goto LABEL_48;
      }

      v156 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v93, &v192);
      TSCEFormulaCreationMagic::categoryRef(v178, &v191);
      TSCEFormulaCreationMagic::operator/(&v192, &v191, &v193);
      TSUDecimal::operator=();
      v230._decimal.w[0] = v198;
      TSCEFormulaCreationMagic::number(v197, v230, v157, v158, &v190);
      v159.var0 = &v190;
      TSCEFormulaCreationMagic::IFERROR(&v193, v159, v228, &v194);
      v26 = objc_msgSend_initWithCreator_(v156, v160, &v194, v161, v162);

      v119 = &v192;
      v120 = &v191;
      v121 = v193;
    }

    else if (v224[0] == 6)
    {
      v109 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v93, &v206);
      v114 = objc_msgSend_tableUID(v179, v110, v111, v112, v113);
      TSCEFormulaCreationMagic::viewCellRef(v114, v115, v208, *(&v208 + 1), v209, *(&v209 + 1), 255, 255, &v205, 0xFFFF);
      TSCEFormulaCreationMagic::operator+(&v206, &v205, &v207);
      v26 = objc_msgSend_initWithCreator_(v109, v116, &v207, v117, v118);
      v119 = &v206;
      v120 = &v205;
      v121 = v207;
    }

    else
    {
      v164 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v93, &v201);
      TSCEFormulaCreationMagic::categoryRef(v178, &v200);
      TSCEFormulaCreationMagic::operator/(&v201, &v200, &v202);
      TSUDecimal::operator=();
      v231._decimal.w[0] = v198;
      TSCEFormulaCreationMagic::number(v197, v231, v165, v166, &v199);
      v167.var0 = &v199;
      TSCEFormulaCreationMagic::IFERROR(&v202, v167, v229, &v203);
      v172 = objc_msgSend_tableUID(v179, v168, v169, v170, v171);
      TSCEFormulaCreationMagic::viewCellRef(v172, v173, v208, *(&v208 + 1), v209, *(&v209 + 1), 255, 255, &v196, 0xFFFF);
      TSCEFormulaCreationMagic::operator+(&v203, &v196, &v204);
      v26 = objc_msgSend_initWithCreator_(v164, v174, &v204, v175, v176);

      v119 = &v201;
      v120 = &v200;
      v121 = v202;
    }

LABEL_48:
    v163 = v224[0];

    if (v163 != 7)
    {
      goto LABEL_42;
    }

LABEL_41:
    v138 = objc_msgSend_translationFlags(v26, v46, v47, v48, v49);
    v142 = objc_msgSend_copyBySettingTranslationFlags_(v26, v139, v138 | 8u, v140, v141);

    v26 = v142;
    goto LABEL_42;
  }

  if ((v224[0] & 0xFE) != 6)
  {
    v26 = 0;
    v27 = v179;
    goto LABEL_42;
  }

  v34 = objc_msgSend_aggregateIndexForUidCoord_(self->_groupBySet, v22, x2_0, v24, v25);
  v208 = 0u;
  v209 = 0u;
  v27 = v179;
  if (!v6 || (objc_msgSend_getPreviousUidCoordForAggIndex_fromNewUidCoord_addNewUidCoordEvenIfNotFound_(v6, v35, v34, x2_0, 0), v208 == 0) || v209 == 0)
  {
LABEL_18:
    v26 = 0;
    goto LABEL_42;
  }

  v36 = [TSCEFormulaObject alloc];
  v41 = objc_msgSend_tableUID(v179, v37, v38, v39, v40);
  TSCEFormulaCreationMagic::viewCellRef(v41, v42, v208, *(&v208 + 1), v209, *(&v209 + 1), 255, 255, &v180, 0xFFFF);
  v26 = objc_msgSend_initWithCreator_(v36, v43, &v180, v44, v45);

  if (v224[0] == 7)
  {
    goto LABEL_41;
  }

LABEL_42:

  return v26;
}

- (void)p_resetSortingStructures
{
  self->_sortedRowUids.__end_ = self->_sortedRowUids.__begin_;
  self->_sortedColumnUids.__end_ = self->_sortedColumnUids.__begin_;
  self->_resetHeaderLabelsAfterSort = 0;
}

- (void)sortRowsByColumnIndex:(unsigned int)a3 level:(unsigned __int8)a4 aggregateIndex:(unint64_t)a5 sortDirection:(int)a6
{
  v6 = *&a6;
  v8 = a4;
  v9 = *&a3;
  self->_autoImplicitSort = 0;
  self->_shouldSkipNextAsyncSort = 0;
  objc_msgSend_p_resetSortingStructures(self, a2, *&a3, a4, a5);
  v18 = 0;
  if (v8 == 252)
  {
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v11, 4, v6, v9, v8, a5, &v18);
  }

  else
  {
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v11, 3, v6, v9, v8, a5, &v18);
  }

  v14 = __p;
  v15 = v17;
  if (__p == v17)
  {
    objc_msgSend_p_resetSortingStructures(self, __p, v17, v12, v13);
  }

  else
  {
    if (&self->_sortedRowUids != &__p)
    {
      sub_2210BD068(&self->_sortedRowUids.__begin_, __p, v17, (v17 - __p) >> 4);
    }

    self->_resetHeaderLabelsAfterSort = 1;
    objc_msgSend_p_commitSort(self, v14, v15, v12, v13);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

- (void)sortColumnsByRowIndex:(unsigned int)a3 level:(unsigned __int8)a4 aggregateIndex:(unint64_t)a5 sortDirection:(int)a6
{
  v6 = *&a6;
  v8 = a4;
  v9 = *&a3;
  self->_autoImplicitSort = 0;
  self->_shouldSkipNextAsyncSort = 0;
  objc_msgSend_p_resetSortingStructures(self, a2, *&a3, a4, a5);
  v18 = 0;
  if (v8 == 252)
  {
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v11, 4, v6, v9, v8, a5, &v18);
  }

  else
  {
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v11, 3, v6, v9, v8, a5, &v18);
  }

  v14 = __p;
  v15 = v17;
  if (__p == v17)
  {
    objc_msgSend_p_resetSortingStructures(self, __p, v17, v12, v13);
  }

  else
  {
    if (&self->_sortedColumnUids != &__p)
    {
      sub_2210BD068(&self->_sortedColumnUids.__begin_, __p, v17, (v17 - __p) >> 4);
    }

    self->_resetHeaderLabelsAfterSort = 1;
    objc_msgSend_p_commitSort(self, v14, v15, v12, v13);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

- (void)handlePivotSorting:(BOOL)a3
{
  self->_autoImplicitSort = a3;
  self->_shouldSkipNextAsyncSort = 0;
  if (self->_autoImplicitSort)
  {
    objc_msgSend_p_sortFullTable_(self, a2, 0, v3, v4);

    objc_msgSend_p_commitSort(self, v7, v8, v9, v10);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortRowsInMode:(SEL)a3 sortDirection:(unint64_t)a4 columnIndex:(int)a5 level:(unsigned int)a6 aggregateIndex:(unsigned __int8)a7 resetLabels:(unint64_t)a8
{
  v123[6] = *MEMORY[0x277D85DE8];
  v115 = 0;
  v116 = &v115;
  v117 = 0x4812000000;
  v118 = sub_2213313E8;
  v119 = sub_22133140C;
  v120 = 0u;
  v121 = 0u;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v17 = a4 < 3;
  v86 = objc_msgSend_tableInfo(self->_tableModel, a3, a4, *&a5, *&a6);
  v84 = a6;
  v85 = a5;
  v81 = a9;
  v82 = a4;
  v83 = a7;
  v25 = objc_msgSend_count(self->_aggregates, v18, v19, v20, v21);
  v110[0] = 0;
  v110[1] = 0;
  v109 = v110;
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v27 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v22, i, v23, v24);
      v100.origin = objc_msgSend_columnAggregateUid(v27, v28, v29, v30, v31);
      v100.size = v32;
      v122 = &v100;
      *(sub_221335730(&v109, &v100.origin) + 48) = i;
    }
  }

  v33 = objc_opt_new();
  v123[0] = v33;
  v34 = objc_opt_new();
  v123[1] = v34;
  v35 = objc_opt_new();
  v123[2] = v35;
  v36 = objc_opt_new();
  v123[3] = v36;
  v37 = objc_opt_new();
  v123[4] = v37;
  v38 = objc_opt_new();
  v123[5] = v38;
  v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v123, 6, v40);

  v41 = MEMORY[0x277CCAA78];
  v100.origin = objc_msgSend_bodyRowRange(v86, v42, v43, v44, v45);
  v100.size = v46;
  v47 = TSUCellRect::rows(&v100);
  v50 = objc_msgSend_indexSetWithIndexesInRange_(v41, v48, v47, v48, v49);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3321888768;
  v103[2] = sub_221331424;
  v103[3] = &unk_2834A52C0;
  v51 = v86;
  v104 = v51;
  v105 = self;
  v108 = v17;
  sub_2213357CC(v107, &v109);
  v107[3] = a8;
  v52 = v80;
  v106 = v52;
  objc_msgSend_enumerateIndexesUsingBlock_(v50, v53, v103, v54, v55);
  v100.origin = 0;
  v100.size = &v100;
  v101 = 0x2020000000;
  v102 = 0;
  v60 = objc_msgSend_groupingColumns(self->_rowGroupings, v56, v57, v58, v59);
  v65 = objc_msgSend_groupBySet(self, v61, v62, v63, v64);
  v70 = objc_msgSend_groupByForRowGroups(v65, v66, v67, v68, v69);

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3321888768;
  v87[2] = sub_221331648;
  v87[3] = &unk_2834A5330;
  v96 = v84;
  v97 = v85;
  v87[4] = self;
  v94 = a8;
  v98 = v17;
  sub_2213357CC(v95, &v109);
  v71 = v51;
  v88 = v71;
  v95[3] = v82;
  v99 = v83;
  v72 = v52;
  v89 = v72;
  v91 = &v100;
  v73 = v70;
  v90 = v73;
  v92 = &v115;
  v93 = &v111;
  objc_msgSend_enumerateObjectsUsingBlock_(v60, v74, v87, v75, v76);
  if (*(*&v100.size + 24) == 1)
  {
    v77 = v116[6];
    v78 = v116[7];
  }

  else
  {
    v78 = v116[6];
    v116[7] = v78;
    v77 = v78;
  }

  *v81 = *(v112 + 24);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v77, v78, (v78 - v77) >> 4);

  sub_2210BC9F8(v95, v95[1]);
  _Block_object_dispose(&v100, 8);

  sub_2210BC9F8(v107, v107[1]);
  sub_2210BC9F8(&v109, v110[0]);

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  result = *(&v120 + 1);
  if (*(&v120 + 1))
  {
    *&v121 = *(&v120 + 1);
    operator delete(*(&v120 + 1));
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortColumnsInMode:(SEL)a3 sortDirection:(unint64_t)a4 rowIndex:(int)a5 level:(unsigned int)a6 aggregateIndex:(unsigned __int8)a7 resetLabels:(unint64_t)a8
{
  v123[6] = *MEMORY[0x277D85DE8];
  v115 = 0;
  v116 = &v115;
  v117 = 0x4812000000;
  v118 = sub_2213313E8;
  v119 = sub_22133140C;
  v120 = 0u;
  v121 = 0u;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v17 = a4 < 3;
  v86 = objc_msgSend_tableInfo(self->_tableModel, a3, a4, *&a5, *&a6);
  v84 = a6;
  v85 = a5;
  v81 = a9;
  v82 = a4;
  v83 = a7;
  v25 = objc_msgSend_count(self->_aggregates, v18, v19, v20, v21);
  v110[0] = 0;
  v110[1] = 0;
  v109 = v110;
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v27 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v22, i, v23, v24);
      v100.origin = objc_msgSend_columnAggregateUid(v27, v28, v29, v30, v31);
      v100.size = v32;
      v122 = &v100;
      *(sub_221335730(&v109, &v100.origin) + 48) = i;
    }
  }

  v33 = objc_opt_new();
  v123[0] = v33;
  v34 = objc_opt_new();
  v123[1] = v34;
  v35 = objc_opt_new();
  v123[2] = v35;
  v36 = objc_opt_new();
  v123[3] = v36;
  v37 = objc_opt_new();
  v123[4] = v37;
  v38 = objc_opt_new();
  v123[5] = v38;
  v80 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v123, 6, v40);

  v41 = MEMORY[0x277CCAA78];
  v100.origin = objc_msgSend_bodyColumnRange(v86, v42, v43, v44, v45);
  v100.size = v46;
  v47 = TSUCellRect::columns(&v100);
  v50 = objc_msgSend_indexSetWithIndexesInRange_(v41, v48, v47, v48, v49);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3321888768;
  v103[2] = sub_2213322BC;
  v103[3] = &unk_2834A52C0;
  v51 = v86;
  v104 = v51;
  v105 = self;
  v108 = v17;
  sub_2213357CC(v107, &v109);
  v107[3] = a8;
  v52 = v80;
  v106 = v52;
  objc_msgSend_enumerateIndexesUsingBlock_(v50, v53, v103, v54, v55);
  v100.origin = 0;
  v100.size = &v100;
  v101 = 0x2020000000;
  v102 = 0;
  v60 = objc_msgSend_groupingColumns(self->_columnGroupings, v56, v57, v58, v59);
  v65 = objc_msgSend_groupBySet(self, v61, v62, v63, v64);
  v70 = objc_msgSend_groupByForColumnGroups(v65, v66, v67, v68, v69);

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3321888768;
  v87[2] = sub_2213324CC;
  v87[3] = &unk_2834A5330;
  v96 = v84;
  v97 = v85;
  v87[4] = self;
  v94 = a8;
  v98 = v17;
  sub_2213357CC(v95, &v109);
  v71 = v51;
  v88 = v71;
  v95[3] = v82;
  v99 = v83;
  v72 = v52;
  v89 = v72;
  v91 = &v100;
  v73 = v70;
  v90 = v73;
  v92 = &v115;
  v93 = &v111;
  objc_msgSend_enumerateObjectsUsingBlock_(v60, v74, v87, v75, v76);
  if (*(*&v100.size + 24) == 1)
  {
    v77 = v116[6];
    v78 = v116[7];
  }

  else
  {
    v78 = v116[6];
    v116[7] = v78;
    v77 = v78;
  }

  *v81 = *(v112 + 24);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v77, v78, (v78 - v77) >> 4);

  sub_2210BC9F8(v95, v95[1]);
  _Block_object_dispose(&v100, 8);

  sub_2210BC9F8(v107, v107[1]);
  sub_2210BC9F8(&v109, v110[0]);

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  result = *(&v120 + 1);
  if (*(&v120 + 1))
  {
    *&v121 = *(&v120 + 1);
    operator delete(*(&v120 + 1));
  }

  return result;
}

- (void)p_sortFullTable:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPivotOwner p_sortFullTable:]", v3, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 2172, 0, "Full table sort is only appropriate for implicit sort modes.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  v37 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  if (objc_msgSend_isAPivotTable(v37, v18, v19, v20, v21) && (objc_msgSend_isEmptyPivot(v37, v22, v23, v24, v25) & 1) == 0)
  {
    v41 = 0;
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v26, a3, 0, 0x7FFFLL, 255, 0, &v41);
    v27 = v39;
    v28 = v40;
    v38 = 0;
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v29, a3, 0, 0x7FFFLL, 255, 0, &v38);
    v30 = v39;
    v31 = v40;
    v32 = self;
    objc_sync_enter(v32);
    objc_msgSend_p_resetSortingStructures(v32, v33, v34, v35, v36);
    v32->_resetHeaderLabelsAfterSort = (v41 | v38) & 1;
    sub_2210BD068(&v32->_sortedRowUids.__begin_, v27, v28, (v28 - v27) >> 4);
    sub_2210BD068(&v32->_sortedColumnUids.__begin_, v30, v31, (v31 - v30) >> 4);
    objc_sync_exit(v32);

    if (v27)
    {
      operator delete(v27);
    }

    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
  }
}

- (BOOL)p_commitSortAsync
{
  if (self->_autoImplicitSort)
  {

    return objc_msgSend_p_commitSort(self, a2, v2, v3, v4);
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    objc_msgSend_p_resetSortingStructures(v6, v7, v8, v9, v10);
    objc_sync_exit(v6);

    return 0;
  }
}

- (BOOL)p_commitSort
{
  v2 = self;
  objc_sync_enter(v2);
  v7 = objc_msgSend_tableInfo(v2->_tableModel, v3, v4, v5, v6);
  v12 = objc_msgSend_pivotOrder(v7, v8, v9, v10, v11);
  v16 = v12;
  p_sortedRowUids = &v2->_sortedRowUids;
  begin = v2->_sortedRowUids.__begin_;
  end = v2->_sortedRowUids.__end_;
  v20 = v2->_sortedColumnUids.__begin_;
  v21 = v2->_sortedColumnUids.__end_;
  v22 = begin == end && v20 == v21;
  v23 = !v22;
  if (v22)
  {
    objc_msgSend_setOrderUsingViewOrderForDimension_(v12, v13, 0, v14, v15);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v16, v69, 1, v70, v71);
  }

  else
  {
    if (begin != end)
    {
      objc_msgSend_setTemporaryOrder_forDimension_(v12, v13, p_sortedRowUids, 0, v15);
    }

    if (v20 != v21)
    {
      objc_msgSend_setTemporaryOrder_forDimension_(v16, v13, &v2->_sortedColumnUids, 1, v15);
    }

    v24 = objc_msgSend_translator(v7, v13, p_sortedRowUids, v14, v15);
    objc_msgSend_resetViewMap(v24, v25, v26, v27, v28);

    if (v2->_resetHeaderLabelsAfterSort)
    {
      objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(v2, v29, 0, 1, v30);
    }

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(v2, v29, 1, 1, v30);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v16, v31, 0, v32, v33);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v16, v34, 1, v35, v36);
    objc_msgSend_filterSetUpdated(v7, v37, v38, v39, v40);
    v45 = objc_msgSend_translator(v7, v41, v42, v43, v44);
    objc_msgSend_resetViewMapAndNotify(v45, v46, v47, v48, v49);

    v54 = objc_msgSend_calcEngine(v2->_tableModel, v50, v51, v52, v53);
    v73[0] = objc_msgSend_tableUID(v2->_tableModel, v55, v56, v57, v58);
    v73[1] = v59;
    objc_msgSend_pivotSortChangedPrecedentForTableUID_(TSCEHauntedOwner, v59, v73, v60, v61);
    objc_msgSend_markCellRefAsDirty_(v54, v62, v74, v63, v64);
  }

  objc_msgSend_p_resetSortingStructures(v2, v65, v66, v67, v68);

  objc_sync_exit(v2);
  return v23;
}

- (id)indexesForLeadingRows
{
  v6 = objc_msgSend_count(self->_rowGroupings, a2, v2, v3, v4);
  v10 = objc_opt_new();
  if (v6)
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(self, v7, v11, v8, v9);
      objc_msgSend_addIndexes_(v10, v13, v12, v14, v15);

      ++v11;
    }

    while (v11 < v6);
  }

  return v10;
}

- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v12 = objc_msgSend_groupByForRows(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_count(self->_rowGroupings, v13, v14, v15, v16);
  v73 = 0;
  v74 = &v73;
  v75 = 0x4812000000;
  v76 = sub_2213313E8;
  v77 = sub_22133140C;
  *__p = 0u;
  v79 = 0u;
  v22 = objc_msgSend_tableInfo(self->_tableModel, v18, v19, v20, v21);
  v27 = objc_msgSend_hiddenStates(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_tableInfo(self->_tableModel, v28, v29, v30, v31);
  v37 = objc_msgSend_translator(v32, v33, v34, v35, v36);
  v42 = objc_msgSend_viewMap(v37, v38, v39, v40, v41);

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_22133333C;
  v68[3] = &unk_278462DF0;
  v43 = v42;
  v69 = v43;
  v72 = v17;
  v44 = v27;
  v70 = v44;
  v71 = &v73;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v12, v45, v5, v68, v46);
  v51 = objc_msgSend_tableInfo(self->_tableModel, v47, v48, v49, v50);
  v56 = objc_msgSend_translator(v51, v52, v53, v54, v55);
  v60 = objc_msgSend_viewRowIndexesForUIDs_(v56, v57, (v74 + 6), v58, v59);

  if (v60)
  {
    v65 = v60;
  }

  else
  {
    v65 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v61, v62, v63, v64);
  }

  v66 = v65;

  _Block_object_dispose(&v73, 8);
  if (__p[1])
  {
    *&v79 = __p[1];
    operator delete(__p[1]);
  }

  return v66;
}

- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v12 = objc_msgSend_groupByForRows(v7, v8, v9, v10, v11);

  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = sub_2213313E8;
  v41 = sub_22133140C;
  *__p = 0u;
  v43 = 0u;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2213335E8;
  v36[3] = &unk_278462E18;
  v36[4] = &v37;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v12, v13, v5, v36, v14);
  v19 = objc_msgSend_tableInfo(self->_tableModel, v15, v16, v17, v18);
  v24 = objc_msgSend_translator(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_viewRowIndexesForUIDs_(v24, v25, (v38 + 6), v26, v27);

  if (v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v29, v30, v31, v32);
  }

  v34 = v33;

  _Block_object_dispose(&v37, 8);
  if (__p[1])
  {
    *&v43 = __p[1];
    operator delete(__p[1]);
  }

  return v34;
}

- (id)indexesForLeadingColumns
{
  v6 = objc_msgSend_count(self->_columnGroupings, a2, v2, v3, v4);
  v10 = objc_opt_new();
  if (v6)
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(self, v7, v11, v8, v9);
      objc_msgSend_addIndexes_(v10, v13, v12, v14, v15);

      ++v11;
    }

    while (v11 < v6);
  }

  return v10;
}

- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v12 = objc_msgSend_groupByForColumns(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_count(self->_columnGroupings, v13, v14, v15, v16);
  v73 = 0;
  v74 = &v73;
  v75 = 0x4812000000;
  v76 = sub_2213313E8;
  v77 = sub_22133140C;
  *__p = 0u;
  v79 = 0u;
  v22 = objc_msgSend_tableInfo(self->_tableModel, v18, v19, v20, v21);
  v27 = objc_msgSend_hiddenStates(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_tableInfo(self->_tableModel, v28, v29, v30, v31);
  v37 = objc_msgSend_translator(v32, v33, v34, v35, v36);
  v42 = objc_msgSend_viewMap(v37, v38, v39, v40, v41);

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_2213339FC;
  v68[3] = &unk_278462DF0;
  v43 = v42;
  v69 = v43;
  v72 = v17;
  v44 = v27;
  v70 = v44;
  v71 = &v73;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v12, v45, v5, v68, v46);
  v51 = objc_msgSend_tableInfo(self->_tableModel, v47, v48, v49, v50);
  v56 = objc_msgSend_translator(v51, v52, v53, v54, v55);
  v60 = objc_msgSend_viewColumnIndexesForUIDs_(v56, v57, (v74 + 6), v58, v59);

  if (v60)
  {
    v65 = v60;
  }

  else
  {
    v65 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v61, v62, v63, v64);
  }

  v66 = v65;

  _Block_object_dispose(&v73, 8);
  if (__p[1])
  {
    *&v79 = __p[1];
    operator delete(__p[1]);
  }

  return v66;
}

- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  v12 = objc_msgSend_groupByForColumns(v7, v8, v9, v10, v11);

  v37 = 0;
  v38 = &v37;
  v39 = 0x4812000000;
  v40 = sub_2213313E8;
  v41 = sub_22133140C;
  *__p = 0u;
  v43 = 0u;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_221333CA8;
  v36[3] = &unk_278462E18;
  v36[4] = &v37;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v12, v13, v5, v36, v14);
  v19 = objc_msgSend_tableInfo(self->_tableModel, v15, v16, v17, v18);
  v24 = objc_msgSend_translator(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_viewColumnIndexesForUIDs_(v24, v25, (v38 + 6), v26, v27);

  if (v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v29, v30, v31, v32);
  }

  v34 = v33;

  _Block_object_dispose(&v37, 8);
  if (__p[1])
  {
    *&v43 = __p[1];
    operator delete(__p[1]);
  }

  return v34;
}

- (void)collapseExpandChanged:(id)a3 forState:(id)a4
{
  v39 = a3;
  if (objc_msgSend_count(v39, v5, v6, v7, v8))
  {
    objc_msgSend_willModify(self, v9, v10, v11, v12);
    v17 = objc_msgSend_tableInfo(self->_tableModel, v13, v14, v15, v16);
    v22 = objc_msgSend_translator(v17, v18, v19, v20, v21);
    objc_msgSend_flushCachedIndexSets(v22, v23, v24, v25, v26);

    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v27, 1, 1, v28);
  }

  else
  {
    v29 = objc_msgSend_tableInfo(self->_tableModel, v9, v10, v11, v12);
    v34 = objc_msgSend_translator(v29, v30, v31, v32, v33);
    objc_msgSend_flushCachedIndexSets(v34, v35, v36, v37, v38);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[282], v6, v7);

  v9 = [TSTGroupingColumnList alloc];
  if (*(v8 + 40))
  {
    v13 = objc_msgSend_initWithArchive_(v9, v10, *(v8 + 40), v11, v12);
  }

  else
  {
    v13 = objc_msgSend_initWithArchive_(v9, v10, &TST::_GroupColumnListArchive_default_instance_, v11, v12);
  }

  rowGroupings = self->_rowGroupings;
  self->_rowGroupings = v13;

  v15 = [TSTGroupingColumnList alloc];
  if (*(v8 + 48))
  {
    v19 = objc_msgSend_initWithArchive_(v15, v16, *(v8 + 48), v17, v18);
  }

  else
  {
    v19 = objc_msgSend_initWithArchive_(v15, v16, &TST::_GroupColumnListArchive_default_instance_, v17, v18);
  }

  columnGroupings = self->_columnGroupings;
  self->_columnGroupings = v19;

  v21 = [TSTColumnAggregateList alloc];
  if (*(v8 + 56))
  {
    v25 = objc_msgSend_initWithArchive_(v21, v22, *(v8 + 56), v23, v24);
  }

  else
  {
    v25 = objc_msgSend_initWithArchive_(v21, v22, &TST::_ColumnAggregateListArchive_default_instance_, v23, v24);
  }

  aggregates = self->_aggregates;
  self->_aggregates = v25;

  self->_flatteningDimension = *(v8 + 120);
  v31 = *(v8 + 16);
  if ((v31 & 2) != 0)
  {
    self->_ownerUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 32), v27);
    self->_ownerUID._upper = v27;
    v31 = *(v8 + 16);
  }

  if ((v31 & 0x2000) != 0)
  {
    v32 = *(v8 + 124);
  }

  else
  {
    v32 = 0;
  }

  self->_isEmptyPivot = v32;
  if ((v31 & 0x20) != 0)
  {
    self->_pivotSourceTableUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 64), v27);
    self->_pivotSourceTableUID._upper = v27;
    v31 = *(v8 + 16);
  }

  if (v31)
  {
    v33 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v27, *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL, v29, v30);
    pivotSourceTableName = self->_pivotSourceTableName;
    self->_pivotSourceTableName = v33;

    v31 = *(v8 + 16);
  }

  if ((v31 & 0x100) != 0)
  {
    self->_pivotDataRefreshUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 88), v27);
    self->_pivotDataRefreshUID._upper = v27;
    v31 = *(v8 + 16);
  }

  if ((v31 & 0x800) != 0)
  {
    self->_pivotDataRefreshTimestamp = *(v8 + 112);
  }

  if ((v31 & 0x200) != 0)
  {
    self->_pivotRowColumnRuleChangeUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 96), v27);
    self->_pivotRowColumnRuleChangeUID._upper = v27;
    v31 = *(v8 + 16);
  }

  if ((v31 & 0x400) != 0)
  {
    self->_pivotAggregateRuleChangeUID._lower = TSKUIDStruct::loadFromMessage(*(v8 + 104), v27);
    self->_pivotAggregateRuleChangeUID._upper = v27;
    v31 = *(v8 + 16);
  }

  if ((v31 & 0x40) != 0)
  {
    v46 = *(v8 + 72);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_2213341FC;
    v58[3] = &unk_278462E40;
    v58[4] = self;
    v47 = v4;
    v48 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v47, v49, v46, v48, 0, v58);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v27, v28, v29, v30);
    v35 = [TSTPivotGroupingColumnOptionsMap alloc];
    v40 = objc_msgSend_context(self, v36, v37, v38, v39);
    v44 = objc_msgSend_initWithContext_(v35, v41, v40, v42, v43);
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    self->_groupingColumnOptionsMap = v44;
  }

  v50 = *(v8 + 16);
  if ((v50 & 0x8000) == 0)
  {
    if ((v50 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    self->_isHidingGrandTotalRows = *(v8 + 125);
    if ((v50 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  self->_isHidingGrandTotalColumns = *(v8 + 126);
  if ((v50 & 0x4000) != 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  if ((v50 & 0x80) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v51 = [TSTFormulaStore alloc];
  if (*(v8 + 80))
  {
    v53 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v51, v52, &self->_ownerUID, *(v8 + 80), v4);
  }

  else
  {
    v53 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v51, v52, &self->_ownerUID, &TST::_FormulaStoreArchive_default_instance_, v4);
  }

  formulaStore = self->_formulaStore;
  self->_formulaStore = v53;

  objc_msgSend_setUsesOnlyFixedCoords_(self->_formulaStore, v55, 1, v56, v57);
LABEL_40:
}

- (void)setupAfterUnarchiveForPivotTable:(const TSKUIDStruct *)a3 pivotDataTable:(id)a4
{
  v30 = a4;
  if (v30)
  {
    v6 = [TSTGroupBySet alloc];
    v10 = objc_msgSend_initWithPivotTableUID_(v6, v7, a3, v8, v9);
    groupBySet = self->_groupBySet;
    self->_groupBySet = v10;

    objc_msgSend_restoreFromPivotDataTable_columnGroupings_rowGroupings_aggregates_flatteningDimension_(self->_groupBySet, v12, v30, self->_columnGroupings, self->_rowGroupings, self->_aggregates, self->_flatteningDimension);
    v17 = objc_msgSend_hiddenStatesOwner(v30, v13, v14, v15, v16);
    v22 = objc_msgSend_hiddenStates(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_filterSetForRows(v22, v23, v24, v25, v26);

    if (v27)
    {
      objc_msgSend_setFilterSet_forPivotDataTable_(self, v28, v27, v30, v29);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v57 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v57, v4, sub_221335B78, off_2812E4498[282], v5);

  rowGroupings = self->_rowGroupings;
  *(v6 + 16) |= 4u;
  v10 = *(v6 + 40);
  if (!v10)
  {
    v11 = *(v6 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v11);
    *(v6 + 40) = v10;
  }

  objc_msgSend_encodeToArchive_archiver_(rowGroupings, v7, v10, v57, v8);
  columnGroupings = self->_columnGroupings;
  *(v6 + 16) |= 8u;
  v15 = *(v6 + 48);
  if (!v15)
  {
    v16 = *(v6 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v16);
    *(v6 + 48) = v15;
  }

  objc_msgSend_encodeToArchive_archiver_(columnGroupings, v12, v15, v57, v13);
  aggregates = self->_aggregates;
  *(v6 + 16) |= 0x10u;
  v20 = *(v6 + 56);
  if (!v20)
  {
    v21 = *(v6 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateListArchive>(v21);
    *(v6 + 56) = v20;
  }

  objc_msgSend_encodeToArchive_archiver_(aggregates, v17, v20, v57, v18);
  if (objc_msgSend_count(self->_aggregates, v22, v23, v24, v25) >= 0xB)
  {
    objc_msgSend_requiresDocumentVersion_(v57, v26, 0xD000000000002, v27, v28);
  }

  v29 = *(v6 + 16);
  *(v6 + 120) = self->_flatteningDimension;
  *(v6 + 16) = v29 | 0x1002;
  v30 = *(v6 + 32);
  if (!v30)
  {
    v31 = *(v6 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x223DA0360](v31);
    *(v6 + 32) = v30;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v30);
  v32 = *(v6 + 16);
  *(v6 + 124) = self->_isEmptyPivot;
  *(v6 + 126) = self->_isHidingGrandTotalColumns;
  *(v6 + 125) = self->_isHidingGrandTotalRows;
  *(v6 + 16) = v32 | 0xE020;
  v33 = *(v6 + 64);
  if (!v33)
  {
    v34 = *(v6 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x223DA0360](v34);
    *(v6 + 64) = v33;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotSourceTableUID, v33);
  v39 = objc_msgSend_tsp_protobufString(self->_pivotSourceTableName, v35, v36, v37, v38);
  sub_22133476C(v6, v39);
  *(v6 + 16) |= 0x100u;
  v40 = *(v6 + 88);
  if (!v40)
  {
    v41 = *(v6 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0360](v41);
    *(v6 + 88) = v40;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotDataRefreshUID, v40);
  v42 = *(v6 + 16);
  *(v6 + 112) = self->_pivotDataRefreshTimestamp;
  *(v6 + 16) = v42 | 0xA00;
  v43 = *(v6 + 96);
  if (!v43)
  {
    v44 = *(v6 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0360](v44);
    *(v6 + 96) = v43;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotRowColumnRuleChangeUID, v43);
  *(v6 + 16) |= 0x400u;
  v45 = *(v6 + 104);
  if (!v45)
  {
    v46 = *(v6 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x223DA0360](v46);
    *(v6 + 104) = v45;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotAggregateRuleChangeUID, v45);
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  *(v6 + 16) |= 0x40u;
  v50 = *(v6 + 72);
  if (!v50)
  {
    v51 = *(v6 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x223DA0390](v51);
    *(v6 + 72) = v50;
  }

  objc_msgSend_setStrongReference_message_(v57, v47, groupingColumnOptionsMap, v50, v48);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(v6 + 16) |= 0x80u;
    v55 = *(v6 + 80);
    if (!v55)
    {
      v56 = *(v6 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v56);
      *(v6 + 80) = v55;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v52, v55, v57, v53);
  }
}

- (void)invalidateForCalcEngine:(id)a3
{
  if (self->_invalidateAfterAsyncSort)
  {
    v24 = objc_msgSend_threadCollector(MEMORY[0x277D80630], a2, a3, v3, v4);
    v10 = objc_msgSend_tableInfo(self->_tableModel, v6, v7, v8, v9);
    v15 = objc_msgSend_range(v10, v11, v12, v13, v14);
    v17 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v16, 14, v15, v16);

    v22 = objc_msgSend_tableInfo(self->_tableModel, v18, v19, v20, v21);
    objc_msgSend_registerChange_details_forChangeSource_(v24, v23, 1, v17, v22);

    self->_invalidateAfterAsyncSort = 0;
  }
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)a3 withCalcEngine:(id)a4 recalcOptions:(TSCERecalculationState)a5
{
  v37 = a3;
  v8 = objc_msgSend_tableInfo(self->_tableModel, a2, *&a3, a4, *&a5.var0);
  if (objc_msgSend_isAPivotTable(v8, v9, v10, v11, v12))
  {
    isEmptyPivot = objc_msgSend_isEmptyPivot(self, v13, v14, v15, v16);

    if ((isEmptyPivot & 1) == 0)
    {
      if ((*&a3 & 0x101FFFFFFFFFFFFLL) == 0x300000000)
      {
        if (self->_autoImplicitSort)
        {
          objc_msgSend_p_sortFullTable_(self, v18, 1, v19, v20);
        }
      }

      else if (objc_msgSend_indexFromCoord_(TSTFormulaStore, v18, &v37, v19, v20) >= 3)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTPivotOwner evaluateFormulaAt:withCalcEngine:recalcOptions:]", v23, v24);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v28, v29);
        v31 = NSStringFromTSUCellCoord();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v26, v30, 2560, 0, "Unexpected formulaCoord seen in TSTPivotOwner: %@", v31);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
      }
    }
  }

  else
  {
  }

  return a5;
}

- (void)writeResultsForCalcEngine:(id)a3
{
  v19 = objc_msgSend_tableInfo(self->_tableModel, a2, a3, v3, v4);
  if (objc_msgSend_isAPivotTable(v19, v6, v7, v8, v9))
  {
    isEmptyPivot = objc_msgSend_isEmptyPivot(self, v10, v11, v12, v13);

    if ((isEmptyPivot & 1) == 0)
    {
      self->_invalidateAfterAsyncSort = objc_msgSend_p_commitSortAsync(self, v15, v16, v17, v18);
    }
  }

  else
  {
  }
}

- (void)didChangeTableName:(id)a3 fromTableName:(id)a4 forTableUID:(TSKUIDStruct)a5
{
  upper = a5._upper;
  lower = a5._lower;
  v13 = a3;
  v12 = a4;
  if (*&self->_pivotSourceTableUID == __PAIR128__(upper, lower))
  {
    objc_msgSend_setPivotSourceTableName_(self, v9, v13, v10, v11);
  }
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotRowUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_pivotRowUIDs.__begin_, self->_pivotRowUIDs.__end_, self->_pivotRowUIDs.__end_ - self->_pivotRowUIDs.__begin_);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotColumnUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_pivotColumnUIDs.__begin_, self->_pivotColumnUIDs.__end_, self->_pivotColumnUIDs.__end_ - self->_pivotColumnUIDs.__begin_);
}

- (TSKUIDStruct)pivotSourceTableUID
{
  p_pivotSourceTableUID = &self->_pivotSourceTableUID;
  lower = self->_pivotSourceTableUID._lower;
  upper = p_pivotSourceTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotDataRefreshUID
{
  p_pivotDataRefreshUID = &self->_pivotDataRefreshUID;
  lower = self->_pivotDataRefreshUID._lower;
  upper = p_pivotDataRefreshUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotRowColumnRuleChangeUID
{
  p_pivotRowColumnRuleChangeUID = &self->_pivotRowColumnRuleChangeUID;
  lower = self->_pivotRowColumnRuleChangeUID._lower;
  upper = p_pivotRowColumnRuleChangeUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotAggregateRuleChangeUID
{
  p_pivotAggregateRuleChangeUID = &self->_pivotAggregateRuleChangeUID;
  lower = self->_pivotAggregateRuleChangeUID._lower;
  upper = p_pivotAggregateRuleChangeUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

@end