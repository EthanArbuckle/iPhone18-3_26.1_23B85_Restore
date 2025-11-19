@interface TSTCategoryTranslator
+ (unint64_t)tableStyleAreaForCategoryLevel:(unsigned __int8)a3 isLabel:(BOOL)a4;
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)a3;
- (BOOL)checkMapsAndAssert:(BOOL)a3;
- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)a3;
- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)a3;
- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)a3;
- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)a3;
- (BOOL)hasMergeRangesIntersectingCellRegion:(id)a3;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)a3;
- (BOOL)hasSpillRangesIntersectingCellRegion:(id)a3;
- (BOOL)isLabelRow:(unsigned int)a3;
- (BOOL)isSummaryOrLabelRow:(unsigned int)a3;
- (BOOL)isSummaryRow:(unsigned int)a3;
- (BOOL)isValidMergeRange:(TSUViewCellRect)a3;
- (BOOL)mergeCellRange:(TSUViewCellRect)a3;
- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)a3;
- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)a3;
- (BOOL)unmergeCellRange:(TSUViewCellRect)a3;
- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTCategoryTranslator *)self;
- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTCategoryTranslator *)self;
- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)a3;
- (TSTCategoryTranslator)initWithTableInfo:(id)a3;
- (TSUCellCoord)baseCoordFromViewCoord:(TSUCellCoord)a3;
- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)a3;
- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)a3;
- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3;
- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUModelCellCoord)summaryCellCoordForCellUID:(const TSKUIDStructCoord *)a3;
- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)a3;
- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3;
- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3;
- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3;
- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)a3;
- (TSUViewCellCoord)cellIDForCellContainingRichTextStorage:(id)a3;
- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)a3;
- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3;
- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)a3;
- (TSUViewCellRect)bodyBoundingRangeForBaseLevel;
- (TSUViewCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)a3;
- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)a3;
- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)a3;
- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3;
- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3;
- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)a3;
- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3;
- (double)heightOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)aggregateFormulaOwner;
- (id)allRichTextStorages;
- (id)allRowGroupUIDs;
- (id)baseCellRegionForViewCellRect:(TSUViewCellRect)a3;
- (id)baseCellRegionForViewCellRegion:(id)a3;
- (id)baseColumnIndexesForViewColumnIndexes:(id)a3;
- (id)baseRowIndexesForViewRowIndexes:(id)a3;
- (id)baseShuffleMapForViewShuffleMap:(id)a3;
- (id)cellRegionForTableStyleArea:(unint64_t)a3;
- (id)cellStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4;
- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (id)chromeColumnIndexesForViewColumnIndexes:(id)a3;
- (id)chromeRowIndexesForViewRowIndexes:(id)a3;
- (id)columnWidths;
- (id)commentHostingAtCellID:(TSUViewCellCoord)a3;
- (id)commentHostingAtCellID:(TSUViewCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5;
- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)a3;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)expandCellRegionToCoverMergedCells:(id)a3;
- (id)formulaAtCellID:(TSUViewCellCoord)a3;
- (id)i_indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLabelRows;
- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingRows;
- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingSummaryRows;
- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForRowsContainedByGroupUIDs:(id)a3;
- (id)indexesForSummaryAndLabelRows;
- (id)indexesForSummaryRows;
- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)mergeActionForRegion:(id)a3;
- (id)mergeActionForRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4;
- (id)mergedGridIndicesForDimension:(int64_t)a3;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)a3;
- (id)metadataForRowIndex:(TSUViewRowIndex)a3;
- (id)p_defaultCellStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4;
- (id)p_defaultTextStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4;
- (id)populatedCategoryGroupLevelsInColumn:(TSUViewColumnIndex)a3;
- (id)regionForValueOrCommentCellsInRange:(TSUViewCellRect)a3;
- (id)removeReturningInverseForRegion:(id)a3;
- (id)rowHeights;
- (id)shrinkReturningInverseForRegion:(id)a3;
- (id)stringAtCellID:(TSUViewCellCoord)a3 optionalCell:(id)a4;
- (id)summaryCellVendor;
- (id)textStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (id)translatedCellRangeName:(const void *)a3 usedSymbolicName:(BOOL *)a4;
- (id)viewCellRegionForBaseCellRect:(TSUModelCellRect)a3;
- (id)viewCellRegionForBaseCellRegion:(id)a3;
- (id)viewColumnGridIndexesForBaseColumnGridIndexes:(id)a3;
- (id)viewColumnIndexesForBaseColumnIndexes:(id)a3;
- (id)viewColumnIndexesForChromeColumnIndexes:(id)a3;
- (id)viewRowIndexesForBaseRowIndexes:(id)a3;
- (id)viewRowIndexesForChromeRowIndexes:(id)a3;
- (int)getCell:(id)a3 atCellID:(TSUViewCellCoord)a4 suppressCellBorder:(BOOL)a5;
- (int)getDefaultCell:(id)a3 forCellUID:(const TSKUIDStructCoord *)a4;
- (int)getValue:(id *)a3 atCellID:(TSUViewCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5;
- (int)insertColumnsAtIndex:(TSUViewColumnIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6;
- (int)insertRowsAtIndex:(TSUViewRowIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6 unsetFilterHidingAction:(BOOL)a7;
- (int)p_applyViewCellCoord:(TSUViewCellCoord)a3 toSummaryUsingBlock:(id)a4 toLabelUsingBlock:(id)a5 toCategoryColumnUsingBlock:(id)a6 toBaseUsingBlock:(id)a7;
- (int)setCellStyle:(id)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4;
- (int)setCellStyle:(id)a3 ofRowAtIndex:(TSUViewRowIndex)a4;
- (int)setTextStyle:(id)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4;
- (int)setTextStyle:(id)a3 ofRowAtIndex:(TSUViewRowIndex)a4;
- (unint64_t)numberOfPopulatedCells;
- (unint64_t)numberOfRowLevels;
- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)a3;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)a3;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3;
- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)a3;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)a3;
- (unsigned)groupLevelAtLabelRow:(TSUViewRowIndex)a3;
- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)a3;
- (unsigned)maxVisibleRowLevel;
- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTCategoryTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTCategoryTranslator *)self;
- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTCategoryTranslator *)self;
- (void)addReceiverToGroupBy:(id)a3;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7;
- (void)didAddRowUID:(TSKUIDStruct)a3 toGroup:(id)a4;
- (void)didCreateGroup:(id)a3;
- (void)didRemoveGroup:(id)a3;
- (void)didRemoveRowUID:(TSKUIDStruct)a3 fromGroup:(id)a4;
- (void)endOfGroupingChangesBatch;
- (void)enumerateMergesIntersectingCellRegion:(id)a3 usingBlock:(id)a4;
- (void)flushCachedIndexSets;
- (void)i_populateCachedIndexSetsIfNeeded;
- (void)i_populateIndexesForLabelRows;
- (void)i_populateIndexesForLeadingRows;
- (void)i_populateIndexesForLeadingSummaryRows;
- (void)i_populateIndexesForSummaryAndLabelRows;
- (void)i_populateIndexesForSummaryRows;
- (void)moveColumnRange:(_NSRange)a3 toColumnIndex:(TSUViewColumnIndex)a4;
- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)a3 toCategoryColumnUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6;
- (void)p_applyViewRowIndex:(TSUViewRowIndex)a3 toSummaryUsingBlock:(id)a4 toLabelUsingBlock:(id)a5 toBaseUsingBlock:(id)a6 toBeyondBoundsUsingBlock:(id)a7;
- (void)p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7;
- (void)p_defaultStylesOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4 outCellStyle:(id *)a5 outTextStyle:(id *)a6;
- (void)postCommentNotificationForStorage:(id)a3 atViewCellCoord:(TSUViewCellCoord)a4 notificationKey:(id)a5;
- (void)removeColumnsAtIndex:(TSUViewColumnIndex)a3 count:(TSUViewColumnIndex)a4;
- (void)removeColumnsAtIndexes:(id)a3;
- (void)removeRowsAtIndex:(TSUViewRowIndex)a3 count:(TSUViewRowIndex)a4;
- (void)removeRowsAtIndexes:(id)a3;
- (void)resetViewMap;
- (void)resetViewMapAndNotify;
- (void)setHeight:(double)a3 ofRowAtIndex:(TSUViewRowIndex)a4;
- (void)setNumberOfHeaderColumns:(TSUViewColumnIndex)a3;
- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4;
- (void)startOfGroupingChangesBatch;
- (void)suspendChangeDescriptorNotificationsDuringBlock:(id)a3;
@end

@implementation TSTCategoryTranslator

- (TSTCategoryTranslator)initWithTableInfo:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = TSTCategoryTranslator;
  v9 = [(TSTTableTranslator *)&v39 initWithTableInfo:v4];
  if (v9)
  {
    v10 = objc_msgSend_groupBy(v4, v5, v6, v7, v8);
    objc_msgSend_addReceiverToGroupBy_(v9, v11, v10, v12, v13);

    v18 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v14, v15, v16, v17);
    cachedSummaryRowIndexesAtLevels = v9->_cachedSummaryRowIndexesAtLevels;
    v9->_cachedSummaryRowIndexesAtLevels = v18;

    v24 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v20, v21, v22, v23);
    cachedLabelRowIndexesAtLevels = v9->_cachedLabelRowIndexesAtLevels;
    v9->_cachedLabelRowIndexesAtLevels = v24;

    v30 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v26, v27, v28, v29);
    cachedLeadingRowIndexesAtLevels = v9->_cachedLeadingRowIndexesAtLevels;
    v9->_cachedLeadingRowIndexesAtLevels = v30;

    v36 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v32, v33, v34, v35);
    cachedLeadingSummaryRowIndexesAtLevels = v9->_cachedLeadingSummaryRowIndexesAtLevels;
    v9->_cachedLeadingSummaryRowIndexesAtLevels = v36;

    v9->_cachedIndexSetsAreValid = 0;
    v9->_cachedIndexesUnfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v9;
}

- (id)summaryCellVendor
{
  v5 = objc_msgSend_summaryModel(self->super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_summaryCellVendor(v5, v6, v7, v8, v9);

  return v10;
}

- (id)aggregateFormulaOwner
{
  v5 = objc_msgSend_summaryModel(self->super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_aggregateFormulaOwner(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)numberOfRowLevels
{
  v5 = objc_msgSend_groupBy(self->super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_numberOfLevels(v5, v6, v7, v8, v9);

  return v10;
}

- (unsigned)maxVisibleRowLevel
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator maxVisibleRowLevel]", v2, v3);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 160, 0, "Unimplemented!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  v17.receiver = self;
  v17.super_class = TSTCategoryTranslator;
  return [(TSTTableTranslator *)&v17 maxVisibleRowLevel];
}

- (TSUViewCellRect)bodyRangeForLowestLevelGroupEnclosingCellAtCellID:(TSUCellCoord)a3
{
  v6 = objc_msgSend_rowUIDForViewRowIndex_(self, a2, a3.row, v3, v4);
  v8 = v7;
  v12 = objc_msgSend_groupByForRows(self, v7, v9, v10, v11);
  v17 = objc_msgSend_maxRowLevel(self, v13, v14, v15, v16);
  v19 = objc_msgSend_groupNodeForRowUid_atLevel_(v12, v18, v6, v8, v17);
  v24 = objc_msgSend_groupValueTuple(v19, v20, v21, v22, v23);
  v27 = objc_msgSend_rowsForGroupValue_atLevel_(v12, v25, v24, v17, v26);
  v31 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(self, v28, v27, v29, v30);
  v36 = objc_msgSend_bodyRange(self, v32, v33, v34, v35);
  v39 = objc_msgSend_regionFromRange_(TSTCellRegion, v37, v36, v37, v38);
  v43 = objc_msgSend_regionByIntersectingRowIndices_(v39, v40, v31, v41, v42);
  v48 = objc_msgSend_boundingViewCellRect(v43, v44, v45, v46, v47);
  v50 = v49;

  v51 = v48;
  v52 = v50;
  result._rect.size = v52;
  result._rect.origin = v51;
  return result;
}

- (TSUViewCellRect)bodyBoundingRangeForBaseLevel
{
  v3 = [TSCECellTractRef alloc];
  v8 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_baseTableModel(v8, v9, v10, v11, v12);
  v47.origin = objc_msgSend_bodyRange(v13, v14, v15, v16, v17);
  v47.size = v18;
  v22 = objc_msgSend_tableInfo(self, v18, v19, v20, v21);
  v46._lower = objc_msgSend_tableUID(v22, v23, v24, v25, v26);
  v46._upper = v27;
  TSCERangeRef::TSCERangeRef(&v48, &v47, &v46);
  v31 = objc_msgSend_initWithRangeRef_(v3, v28, &v48, v29, v30);
  v35 = objc_msgSend_viewTractRefForBaseTractRef_(self, v32, v31, v33, v34);

  objc_msgSend_boundingRange(v35, v36, v37, v38, v39);
  TSUCellRectFromTSCERangeCoordinate();
  v41 = v40;
  v43 = v42;

  v44 = v41;
  v45 = v43;
  result._rect.size = v45;
  result._rect.origin = v44;
  return result;
}

- (void)startOfGroupingChangesBatch
{
  groupingsChangingLevel = self->_groupingsChangingLevel;
  self->_groupingsChangingLevel = groupingsChangingLevel + 1;
  if (groupingsChangingLevel == -1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator startOfGroupingChangesBatch]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 202, 0, "overflow in _groupingsChangingLevel");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
  }
}

- (void)endOfGroupingChangesBatch
{
  groupingsChangingLevel = self->_groupingsChangingLevel;
  if (groupingsChangingLevel)
  {
    v7 = groupingsChangingLevel - 1;
    self->_groupingsChangingLevel = v7;
    if (!v7)
    {
      if (self->_sawGroupingChangeNeedingReset)
      {
        objc_msgSend_resetViewMapAndNotify(self, a2, v2, v3, v4);
      }

      self->_sawGroupingChangeNeedingReset = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator endOfGroupingChangesBatch]", v3, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 216, 0, "endOfGroupingChangesBatch called without matching startOfGroupingChangesBatch - avoided underflow");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v15, v16, v17, v18);
  }
}

- (void)didCreateGroup:(id)a3
{
  if (objc_msgSend_withinGroupingChangesBatch(self, a2, a3, v3, v4))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {

    objc_msgSend_resetViewMapAndNotify(self, v6, v7, v8, v9);
  }
}

- (void)didRemoveGroup:(id)a3
{
  if (objc_msgSend_withinGroupingChangesBatch(self, a2, a3, v3, v4))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {

    objc_msgSend_resetViewMapAndNotify(self, v6, v7, v8, v9);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)a3 toGroup:(id)a4
{
  v17 = a4;
  if (objc_msgSend_isLeaf(v17, v5, v6, v7, v8))
  {
    if (objc_msgSend_withinGroupingChangesBatch(self, v9, v10, v11, v12))
    {
      self->_sawGroupingChangeNeedingReset = 1;
    }

    else
    {
      objc_msgSend_resetViewMapAndNotify(self, v13, v14, v15, v16);
    }
  }
}

- (void)didRemoveRowUID:(TSKUIDStruct)a3 fromGroup:(id)a4
{
  v17 = a4;
  if (objc_msgSend_isLeaf(v17, v5, v6, v7, v8))
  {
    if (objc_msgSend_withinGroupingChangesBatch(self, v9, v10, v11, v12))
    {
      self->_sawGroupingChangeNeedingReset = 1;
    }

    else
    {
      objc_msgSend_resetViewMapAndNotify(self, v13, v14, v15, v16);
    }
  }
}

- (void)resetViewMap
{
  v6 = objc_msgSend_viewMap(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseMap(self, v7, v8, v9, v10);

  if (v6 == v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryTranslator resetViewMap]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 282, 0, "view and base cannot be the same while categorized");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = self->super._tableInfo;
  v31 = objc_msgSend_groupByForRows(self, v27, v28, v29, v30);
  v36 = objc_msgSend_categoryOrder(v26, v32, v33, v34, v35);
  v41 = v36;
  if (v36)
  {
    objc_msgSend_orderedRowUidsWithLabels(v36, v37, v38, v39, v40);
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
  }

  v46 = objc_msgSend_baseTableModel(v26, v42, v43, v44, v45);
  v51 = objc_msgSend_columnRowUIDMap(v46, v47, v48, v49, v50);
  v56 = objc_msgSend_columnUIDs(v51, v52, v53, v54, v55);
  __p = 0;
  v110 = 0;
  v111 = 0;
  sub_221086EBC(&__p, *v56, v56[1], (v56[1] - *v56) >> 4);

  sub_22129CE20(&__p, __p, "category column");
  objc_msgSend_flushCachedIndexSets(self, v57, v58, v59, v60);
  v65 = objc_msgSend_viewMap(self, v61, v62, v63, v64);
  objc_msgSend_replaceRowsWithUids_(v65, v66, &v112, v67, v68);

  v73 = objc_msgSend_viewMap(self, v69, v70, v71, v72);
  objc_msgSend_replaceColumnsWithUids_(v73, v74, &__p, v75, v76);

  coordMapper = self->super._coordMapper;
  self->super._coordMapper = 0;

  v86 = objc_msgSend_calcEngine(v26, v78, v79, v80, v81);
  if (v31)
  {
    objc_msgSend_rowOrderChangedPrecedent(v31, v82, v83, v84, v85);
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
  }

  objc_msgSend_markCellRefAsDirty_(v86, v82, &v106, v84, v85);

  v91 = objc_msgSend_groupBy(v26, v87, v88, v89, v90);
  v96 = objc_msgSend_inCalcEngineMode(v91, v92, v93, v94, v95);

  if ((v96 & 1) == 0)
  {
    v105 = objc_msgSend_calcEngine(v26, v97, v98, v99, v100);
    if (v31)
    {
      objc_msgSend_rowOrderChangedPrecedentIgnoringRecalc(v31, v101, v102, v103, v104);
    }

    else
    {
      v106 = 0;
      v107 = 0;
      v108 = 0;
    }

    objc_msgSend_markCellRefAsDirty_(v105, v101, &v106, v103, v104);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }
}

- (void)resetViewMapAndNotify
{
  v60 = *MEMORY[0x277D85DE8];
  if (self->_suspendNotify)
  {

    objc_msgSend_resetViewMap(self, a2, v2, v3, v4);
  }

  else
  {
    v6 = self->super._tableInfo;
    v11 = objc_msgSend_rowUIDs(v6, v7, v8, v9, v10);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    sub_221086EBC(&v56, *v11, v11[1], (v11[1] - *v11) >> 4);
    objc_msgSend_resetViewMap(self, v12, v13, v14, v15);
    v20 = objc_msgSend_rowUIDs(v6, v16, v17, v18, v19);
    __p = 0;
    v54 = 0;
    v55 = 0;
    sub_221086EBC(&__p, *v20, v20[1], (v20[1] - *v20) >> 4);
    v23 = objc_msgSend_changeDescriptorsForReorganizingFromRowUids_toRowUids_(v6, v21, &v56, &__p, v22);
    v28 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v24, v25, v26, v27);
    v33 = objc_msgSend_range(v6, v29, v30, v31, v32);
    v35 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v34, 47, v33, v34);
    objc_msgSend_registerChange_details_forChangeSource_(v28, v36, 1, v35, v6);

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = v23;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v49, v59, 16);
    if (v43)
    {
      v44 = *v50;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v50 != v44)
          {
            objc_enumerationMutation(v37);
          }

          v46 = *(*(&v49 + 1) + 8 * i);
          v47 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v39, v40, v41, v42, v49);
          objc_msgSend_registerChange_details_forChangeSource_(v47, v48, 1, v46, v6);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v49, v59, 16);
      }

      while (v43);
    }

    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    if (v56)
    {
      v57 = v56;
      operator delete(v56);
    }
  }
}

- (id)coordinateMapper
{
  coordMapper = self->super._coordMapper;
  if (!coordMapper)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->super._coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v10 = objc_msgSend_tableUID(v4->super._tableInfo, v6, v7, v8, v9);
      v15 = objc_msgSend_indexesForSummaryRows(v4, v11, v12, v13, v14, v10, v11);
      v20 = objc_msgSend_indexesForLabelRows(v4, v16, v17, v18, v19);
      v22 = objc_msgSend_initWithTableUID_summaryRows_labelRows_(v5, v21, &v78, v15, v20);

      v27 = objc_msgSend_viewMap(v4, v23, v24, v25, v26);
      v32 = objc_msgSend_baseMap(v4, v28, v29, v30, v31);
      v37 = objc_msgSend_rowUIDs(v32, v33, v34, v35, v36);

      v43 = *v37;
      v42 = *(v37 + 8);
      if (v43 != v42)
      {
        v44 = 0;
        do
        {
          v45 = objc_msgSend_rowIndexForRowUID_(v27, v38, *v43, v43[1], v41);
          objc_msgSend_mapBaseRow_toViewRow_(v22, v46, v44, v45, v47);
          v44 = (v44 + 1);
          v43 += 2;
        }

        while (v43 != v42);
      }

      v48 = objc_msgSend_summaryMap(v4, v38, v39, v40, v41);
      v53 = objc_msgSend_rowUIDs(v48, v49, v50, v51, v52);

      v58 = *v53;
      v59 = *(v53 + 8);
      if (*v53 != v59)
      {
        v60 = 0;
        do
        {
          v61 = objc_msgSend_rowIndexForRowUID_(v27, v54, *v58, v58[1], v57);
          if ((sub_2211A8E20(*v58, v58[1]) & 1) == 0)
          {
            objc_msgSend_mapSummaryRow_toViewRow_(v22, v54, v60, v61, v57);
            v60 = (v60 + 1);
          }

          v58 += 2;
        }

        while (v58 != v59);
      }

      v62 = objc_msgSend_summaryMap(v4, v54, v55, v56, v57);
      v67 = objc_msgSend_columnUIDs(v62, v63, v64, v65, v66);

      v70 = *v67;
      v71 = *(v67 + 8);
      if (v70 != v71)
      {
        v72 = 0;
        do
        {
          v73 = objc_msgSend_columnIndexForColumnUID_(v27, v68, *v70, v70[1], v69);
          objc_msgSend_mapSummaryColumn_toViewColumn_(v22, v74, v72++, v73, v75);
          v70 += 2;
        }

        while (v70 != v71);
      }

      v76 = self->super._coordMapper;
      self->super._coordMapper = v22;
    }

    objc_sync_exit(v4);

    coordMapper = self->super._coordMapper;
  }

  return coordMapper;
}

- (void)suspendChangeDescriptorNotificationsDuringBlock:(id)a3
{
  v18 = a3;
  if (self->_suspendNotify)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCategoryTranslator suspendChangeDescriptorNotificationsDuringBlock:]", v5, v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 377, 0, "not expecting multiple suspensions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  self->_suspendNotify = 1;
  v18[2]();
  self->_suspendNotify = 0;
}

+ (unint64_t)tableStyleAreaForCategoryLevel:(unsigned __int8)a3 isLabel:(BOOL)a4
{
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v5 = !a4;
      v6 = 5;
      v7 = 10;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v5 = !a4;
      v6 = 6;
      v7 = 11;
    }
  }

  else
  {
    switch(a3)
    {
      case 3u:
        v5 = !a4;
        v6 = 7;
        v7 = 12;
        break;
      case 4u:
        v5 = !a4;
        v6 = 8;
        v7 = 13;
        break;
      case 5u:
        v5 = !a4;
        v6 = 9;
        v7 = 14;
        break;
      default:
LABEL_15:
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCategoryTranslator tableStyleAreaForCategoryLevel:isLabel:]", a4, v4);
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v12, v13);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 403, 0, "Calling tableStyleAreaForCategoryLevel with an invalid level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
        return 0;
    }
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3
{
  row = a3->_row;
  column = a3->_column;
  v16 = row;
  v6 = sub_2211A8FF4(&column);
  if (v6 == 255)
  {
    v13 = a3->_row;
    column = a3->_column;
    v16 = v13;
    v14.receiver = self;
    v14.super_class = TSTCategoryTranslator;
    return [(TSTTableTranslator *)&v14 tableStyleAreaForCellUID:&column];
  }

  else
  {
    v7 = v6;
    v8 = a3->_row;
    column = a3->_column;
    v16 = v8;
    v9 = sub_2211A910C(&column);
    return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v10, v7, v9, v11);
  }
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)a3
{
  row = a3._coord.row;
  v8 = objc_msgSend_groupLevelAtSummaryRow_(self, a2, a3._coord.row, v3, v4);
  if (v8 == 255)
  {
    v14 = objc_msgSend_groupLevelAtLabelRow_(self, v9, row, v10, v11);
    if (v14 == 255)
    {
      v32.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v9, v15, v16, v11);
      v32.size = v18;
      coord = a3._coord;
      if (TSUCellRect::contains(&v32, coord))
      {
        return 2;
      }

      v32.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v20, v21, v22, v23);
      v32.size = v24;
      v25 = a3._coord;
      if (TSUCellRect::contains(&v32, v25))
      {
        return 4;
      }

      v32.origin = objc_msgSend_headerColumnRange(self->super._tableInfo, v26, v27, v28, v29);
      v32.size = v30;
      v31 = a3._coord;
      if (TSUCellRect::contains(&v32, v31))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    v12 = v14;
    v13 = 1;
  }

  else
  {
    v12 = v8;
    v13 = 0;
  }

  return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v9, v12, v13, v11);
}

- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)a3
{
  var0 = a3.var0;
  v7 = objc_msgSend_groupLevelAtSummaryRow_(self, a2, a3.var0, v3, v4);
  if (v7 != 255)
  {
    v11 = v7;
    v12 = 0;
LABEL_5:

    return objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v8, v11, v12, v10);
  }

  v13 = objc_msgSend_groupLevelAtLabelRow_(self, v8, var0, v9, v10);
  if (v13 != 255)
  {
    v11 = v13;
    v12 = 1;
    goto LABEL_5;
  }

  v16 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v8, var0, v14, v10);
  if (v16 == 0x7FFFFFFF)
  {
    return 1;
  }

  v19 = v16;
  baseTableModel = self->super._baseTableModel;

  return MEMORY[0x2821F9670](baseTableModel, sel_tableStyleAreaForRow_, v19, v17, v18);
}

- (id)cellRegionForTableStyleArea:(unint64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        v7 = objc_msgSend_footerRowRange(self, a2, 4, v3, v4);
        goto LABEL_11;
      }

      v64 = objc_msgSend_actualHeaderColumnRange(self, a2, 3, v3, v4);
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v7 = objc_msgSend_headerRowRange(self, a2, 2, v3, v4);
LABEL_11:
          v35 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, v7, v8, v9);
LABEL_12:
          v36 = v35;
          goto LABEL_21;
        }

        goto LABEL_26;
      }

      v64 = objc_msgSend_bodyRange(self, a2, 1, v3, v4);
    }

    v36 = objc_msgSend_regionFromRange_(TSTCellRegion, v65, v64, v65, v66);
    goto LABEL_20;
  }

  if (a3 - 5 < 5)
  {
    v37 = objc_msgSend_categoryLevelForTableStyleArea_(TSTSummaryModel, a2, a3, v3, v4);
    v42 = objc_msgSend_groupByForRows(self, v38, v39, v40, v41);
    v18 = objc_msgSend_rowUIDSetForCategoryLevel_(v42, v43, v37, v44, v45);

    v50 = objc_msgSend_viewMap(self, v46, v47, v48, v49);
    v26 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v50, v51, v18, 1, v52);

    v73.origin = objc_msgSend_range(self, v53, v54, v55, v56);
    v73.size = v57;
    v58 = TSUCellRect::columns(&v73);
    v34 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v59, v26, v58, v59);
    goto LABEL_14;
  }

  if (a3 - 10 < 5)
  {
    v10 = objc_msgSend_categoryLevelForTableStyleArea_(TSTSummaryModel, a2, a3, v3, v4);
    v15 = objc_msgSend_groupByForRows(self, v11, v12, v13, v14);
    v18 = objc_msgSend_labelRowUIDSetForCategoryLevel_labelRowVisibility_(v15, v16, v10, 0, v17);

    v23 = objc_msgSend_viewMap(self, v19, v20, v21, v22);
    v26 = objc_msgSend_mutableIndexesForUIDSet_isRows_(v23, v24, v18, 1, v25);

    v73.origin = objc_msgSend_range(self, v27, v28, v29, v30);
    v73.size = v31;
    v32 = TSUCellRect::columns(&v73);
    v34 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v33, v26, v32, v33);
LABEL_14:
    v36 = v34;

    goto LABEL_15;
  }

  if (a3 == 15)
  {
    v35 = objc_msgSend_invalidRegion(TSTCellRegion, a2, 15, v3, v4);
    goto LABEL_12;
  }

LABEL_26:
  v36 = objc_msgSend_invalidRegion(TSTCellRegion, a2, a3, v3, v4);
LABEL_15:
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
LABEL_20:
    v67 = objc_msgSend_indexesForSummaryAndLabelRows(self, v60, v61, v62, v63);
    v71 = objc_msgSend_regionBySubtractingRowIndexes_(v36, v68, v67, v69, v70);

    v36 = v71;
  }

LABEL_21:

  return v36;
}

- (void)setNumberOfHeaderColumns:(TSUViewColumnIndex)a3
{
  v7 = (a3.var0 - objc_msgSend_numberOfCategoryColumns(self, a2, *&a3.var0, v3, v4));
  baseTableModel = self->super._baseTableModel;

  objc_msgSend_setNumberOfHeaderColumns_(baseTableModel, v6, v7, v8, v9);
}

- (unint64_t)tableAreaForCellID:(TSUViewCellCoord)a3
{
  v7 = objc_msgSend_numberOfHeaderColumns(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_numberOfHeaderRows(self, v8, v9, v10, v11);
  objc_msgSend_numberOfFooterRows(self, v13, v14, v15, v16);
  objc_msgSend_numberOfRows(self, v17, v18, v19, v20);

  return (MEMORY[0x2821F9670])(TSTTableInfo, sel_tableAreaForCellID_inTableWithHeaderColumns_headerRows_footerRows_totalRows_, a3, v7, v12);
}

- (id)translatedCellRangeName:(const void *)a3 usedSymbolicName:(BOOL *)a4
{
  if (TSCERangeRef::isSpanningAllColumns(a3) && (v10 = *a3, v10 == *(a3 + 2)) && objc_msgSend_isSummaryRow_(self, v7, v10, v8, v9))
  {
    v15 = objc_msgSend_viewMap(self, v11, v12, v13, v14);
    v19 = objc_msgSend_rowUIDForRowIndex_(v15, v16, *a3, v17, v18);
    v21 = v20;

    v26 = objc_msgSend_groupByForRows(self, v22, v23, v24, v25);
    v29 = objc_msgSend_groupNodeForGroupUid_(v26, v27, v19, v21, v28);

    v33 = objc_msgSend_groupValueHierarchyForChart_(v29, v30, 0, v31, v32);
    *a4 = 1;
    v38 = objc_msgSend_displayString(v33, v34, v35, v36, v37);
  }

  else
  {
    isSpanningAllRows = TSCERangeRef::isSpanningAllRows(a3);
    if (!isSpanningAllRows || ((*(a3 + 1) | *a3) & 0xFFFF00000000) != 0)
    {
      v38 = 0;
      goto LABEL_10;
    }

    *a4 = 1;
    v29 = sub_2214AAEA8(isSpanningAllRows, v40, v41, v42, v43);
    v38 = objc_msgSend_localizedStringForKey_value_table_(v29, v44, @"Category Column", &stru_2834BADA0, @"TSTables");
  }

LABEL_10:

  return v38;
}

- (TSUModelRowIndex)baseRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10._row = objc_msgSend_baseRowIndexForViewRowIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUModelRowIndex)baseRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10._row = objc_msgSend_baseRowIndexForChromeRowIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUModelColumnIndex)baseColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10._column = objc_msgSend_baseColumnIndexForViewColumnIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUModelColumnIndex)baseColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10._column = objc_msgSend_baseColumnIndexForChromeColumnIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUViewRowIndex)viewRowIndexForBaseRowIndex:(TSUModelRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3._row, v3, v4);
  v10.var0 = objc_msgSend_viewRowIndexForBaseRowIndex_(v6, v7, a3._row, v8, v9);

  return v10;
}

- (TSUChromeRowIndex)chromeRowIndexForBaseRowIndex:(TSUModelRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3._row, v3, v4);
  v10.var0 = objc_msgSend_chromeRowIndexForBaseRowIndex_(v6, v7, a3._row, v8, v9);

  return v10;
}

- (TSUChromeColumnIndex)chromeColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3._column, v3, v4);
  v10.var0 = objc_msgSend_chromeColumnIndexForBaseColumnIndex_(v6, v7, a3._column, v8, v9);

  return v10;
}

- (TSUViewColumnIndex)viewColumnIndexForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3._column, v3, v4);
  v10.var0 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v6, v7, a3._column, v8, v9);

  return v10;
}

- (TSUChromeRowIndex)chromeRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10.var0 = objc_msgSend_chromeRowIndexForViewRowIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUChromeColumnIndex)chromeColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10.var0 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUViewRowIndex)viewRowIndexForChromeRowIndex:(TSUChromeRowIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10.var0 = objc_msgSend_viewRowIndexForChromeRowIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (TSUViewColumnIndex)viewColumnIndexForChromeColumnIndex:(TSUChromeColumnIndex)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3.var0, v3, v4);
  v10.var0 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(v6, v7, a3.var0, v8, v9);

  return v10;
}

- (id)baseColumnIndexesForViewColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_baseColumnIndexesForViewColumnIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)baseRowIndexesForViewRowIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_baseRowIndexesForViewRowIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)viewColumnIndexesForBaseColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)viewRowIndexesForBaseRowIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewRowIndexesForBaseRowIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)chromeColumnIndexesForViewColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_chromeColumnIndexesForViewColumnIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)chromeRowIndexesForViewRowIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_chromeRowIndexesForViewRowIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)viewRowIndexesForChromeRowIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewRowIndexesForChromeRowIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)viewColumnIndexesForChromeColumnIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_coordinateMapper(self, v5, v6, v7, v8);
  v13 = objc_msgSend_viewColumnIndexesForChromeColumnIndexes_(v9, v10, v4, v11, v12);

  return v13;
}

- (TSKUIDStruct)columnUIDForBaseColumnIndex:(TSUModelColumnIndex)a3
{
  v6 = objc_msgSend_baseMap(self, a2, *&a3._column, v3, v4);
  v10 = objc_msgSend_columnUIDForColumnIndex_(v6, v7, a3._column, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSUModelCellCoord)baseCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_baseCellCoordForViewCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (TSUModelCellCoord)baseCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_baseCellCoordForChromeCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (TSUViewCellCoord)viewCellCoordForBaseCellCoord:(TSUModelCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_viewCellCoordForBaseCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (TSUChromeCellCoord)chromeCellCoordForBaseCellCoord:(TSUModelCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (TSUChromeCellCoord)chromeCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_chromeCellCoordForViewCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (TSUViewCellCoord)viewCellCoordForChromeCellCoord:(TSUChromeCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_viewCellCoordForChromeCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForViewCellRef:(TSTCategoryTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_chromeCellRefForViewCellRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)chromeCellRefForBaseCellRef:(TSTCategoryTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_chromeCellRefForBaseCellRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForBaseCellRef:(TSTCategoryTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_viewCellRefForBaseCellRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)viewCellRefForChromeCellRef:(TSTCategoryTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_viewCellRefForChromeCellRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->var0.coordinate = 0;
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
  }

  return result;
}

- (RefTypeHolder<TSCECellRef,)baseCellRefForViewCellRef:(TSTCategoryTranslator *)self
{
  v8 = objc_msgSend_coordinateMapper(self, a3, a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_baseCellRefForViewCellRef_(v8, v9, a4, v10, v11);
  }

  else
  {
    retstr->_ref.coordinate = 0;
    retstr->_ref._tableUID._lower = 0;
    retstr->_ref._tableUID._upper = 0;
  }

  return result;
}

- (id)viewColumnGridIndexesForBaseColumnGridIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_numberOfCategoryColumns(self->super._tableInfo, v5, v6, v7, v8);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(v4, v10, 0, v9, v11);

  return v4;
}

- (TSUViewCellCoord)viewCellCoordForSummaryCellCoord:(TSUModelCellCoord)a3
{
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_summaryMap(self, a2, *&a3, v3, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDForCellID_(v7, v8, *&a3, v9, v10);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v24))))))
  {
    v16 = objc_msgSend_viewMap(self, v12, v13, v14, v15);
    v22[0] = v23;
    v22[1] = v24;
    v20 = objc_msgSend_cellIDForCellUID_(v16, v17, v22, v18, v19);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return v20;
}

- (TSUModelCellCoord)baseCellCoordForCellUID:(TSKUIDStructCoord *)a3
{
  v6 = objc_msgSend_baseMap(self, a2, a3, v3, v4);
  row = a3->_row;
  v13[0] = a3->_column;
  v13[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v6, v8, v13, v9, v10);

  return v11;
}

- (TSUModelCellCoord)summaryCellCoordForViewCellCoord:(TSUViewCellCoord)a3
{
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_viewMap(self, a2, *&a3, v3, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDForCellID_(v7, v8, *&a3, v9, v10);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v24))))))
  {
    v16 = objc_msgSend_summaryMap(self, v12, v13, v14, v15);
    v22[0] = v23;
    v22[1] = v24;
    v20 = objc_msgSend_cellIDForCellUID_(v16, v17, v22, v18, v19);
  }

  else
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return v20;
}

- (TSUModelRowIndex)summaryRowIndexForViewRowIndex:(TSUViewRowIndex)a3
{
  v5 = *&a3.var0;
  v7 = objc_msgSend_viewMap(self, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v5, v9, v10);
  v13 = v12;

  if (v11 | v13)
  {
    v18 = objc_msgSend_summaryMap(self, v14, v15, v16, v17);
    v21._row = objc_msgSend_rowIndexForRowUID_(v18, v19, v11, v13, v20);
  }

  else
  {
    return 0x7FFFFFFF;
  }

  return v21;
}

- (TSUModelColumnIndex)summaryColumnIndexForViewColumnIndex:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_viewMap(self, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_columnUIDForColumnIndex_(v7, v8, a3.var0, v9, v10);
  v13 = v12;

  if (v11 | v13)
  {
    v18 = objc_msgSend_summaryMap(self, v14, v15, v16, v17);
    v21._column = objc_msgSend_columnIndexForColumnUID_(v18, v19, v11, v13, v20);
  }

  else
  {
    return 0x7FFF;
  }

  return v21;
}

- (TSKUIDStructCoord)cellUIDForSummaryCellCoord:(SEL)a3
{
  v8 = objc_msgSend_summaryMap(self, a3, *&a4, v4, v5);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDForCellID_(v8, v9, *&a4, v10, v11);
  }

  else
  {
    retstr->_column = 0u;
    retstr->_row = 0u;
  }

  return result;
}

- (id)baseCellRegionForViewCellRect:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  origin = a3._rect.origin;
  v7 = objc_msgSend_viewMap(self, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v7, v8, origin, size, v9);
  }

  else
  {
    *__p = 0u;
    v23 = 0u;
    *v21 = 0u;
  }

  v15 = objc_msgSend_baseMap(self, v11, v12, v13, v14);
  v19 = objc_msgSend_cellRegionForUIDRange_(v15, v16, v21, v17, v18);

  if (__p[1])
  {
    *&v23 = __p[1];
    operator delete(__p[1]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  return v19;
}

- (id)baseCellRegionForViewCellRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_viewMap(self, v5, v6, v7, v8);
  v14 = objc_msgSend_baseMap(self, v10, v11, v12, v13);

  if (v9 == v14)
  {
    v28 = v4;
  }

  else
  {
    v19 = objc_msgSend_gatherer(TSTCellRegionGatherer, v15, v16, v17, v18);
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_2214B3730;
    v33 = &unk_278462B70;
    v34 = self;
    v20 = v19;
    v35 = v20;
    objc_msgSend_enumerateCellRangesUsingBlock_(v4, v21, &v30, v22, v23);
    v28 = objc_msgSend_gatheredCellRegion(v20, v24, v25, v26, v27, v30, v31, v32, v33, v34);
  }

  return v28;
}

- (id)viewCellRegionForBaseCellRect:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v7 = objc_msgSend_baseMap(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v7, v8, origin, size, v9);
  }

  else
  {
    *__p = 0u;
    v23 = 0u;
    *v21 = 0u;
  }

  v15 = objc_msgSend_viewMap(self, v11, v12, v13, v14);
  v19 = objc_msgSend_cellRegionForUIDRange_(v15, v16, v21, v17, v18);

  if (__p[1])
  {
    *&v23 = __p[1];
    operator delete(__p[1]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  return v19;
}

- (id)viewCellRegionForBaseCellRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_viewMap(self, v5, v6, v7, v8);
  v14 = objc_msgSend_baseMap(self, v10, v11, v12, v13);

  if (v9 == v14)
  {
    v18 = v4;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_2214B3AB0;
    v25 = sub_2214B3AC0;
    v26 = objc_alloc_init(TSTCellRegion);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2214B3AC8;
    v20[3] = &unk_27845F7D8;
    v20[4] = self;
    v20[5] = &v21;
    objc_msgSend_enumerateCellRangesUsingBlock_(v4, v15, v20, v16, v17);
    v18 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  return v18;
}

- (id)baseShuffleMapForViewShuffleMap:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_sourceIndexes(v4, v5, v6, v7, v8);
    v14 = objc_msgSend_baseRowIndexesForViewRowIndexes_(self, v11, v10, v12, v13);
    v15 = objc_alloc(MEMORY[0x277D806D0]);
    Index = objc_msgSend_firstIndex(v14, v16, v17, v18, v19);
    v25 = objc_msgSend_lastIndex(v14, v21, v22, v23, v24);
    started = objc_msgSend_initWithStartIndex_endIndex_(v15, v26, Index, v25, v27);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2214B3D58;
    v34[3] = &unk_278460FD0;
    v34[4] = self;
    v29 = started;
    v35 = v29;
    objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v9, v30, v34, v31, v32);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B3F44;
  v8[3] = &unk_278466030;
  v8[4] = self;
  v8[5] = &v9;
  v6[6] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B4060;
  v7[3] = &unk_278466058;
  v7[4] = self;
  v7[5] = &v9;
  v5[5] = &v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4154;
  v6[3] = &unk_278466080;
  v6[4] = self;
  v6[5] = &v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214B4254;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v8, v7, v6, v5);
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (int)setCellStyle:(id)a3 ofRowAtIndex:(TSUViewRowIndex)a4
{
  v6 = a3;
  v10 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, a4.var0, v8, v9);
  if (v10 == 0x7FFFFFFF)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator setCellStyle:ofRowAtIndex:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 870, 0, "Categories: cannot set cell style for that row");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_setCellStyle_ofRowAtIndex_(self->super._baseTableModel, v11, v6, v10, v13);
  }

  return v25;
}

- (int)setTextStyle:(id)a3 ofRowAtIndex:(TSUViewRowIndex)a4
{
  v6 = a3;
  v10 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v7, a4.var0, v8, v9);
  if (v10 == 0x7FFFFFFF)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator setTextStyle:ofRowAtIndex:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 881, 0, "Categories: cannot set text style for that row");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_setTextStyle_ofRowAtIndex_(self->super._baseTableModel, v11, v6, v10, v13);
  }

  return v25;
}

- (id)p_defaultCellStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, a3, a4, v4);

  return objc_msgSend_defaultCellStyleForTableStyleArea_(baseTableModel, v6, isLabel, v8, v9);
}

- (id)p_defaultTextStyleOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, a3, a4, v4);

  return objc_msgSend_defaultTextStyleForTableStyleArea_(baseTableModel, v6, isLabel, v8, v9);
}

- (void)p_defaultStylesOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4 outCellStyle:(id *)a5 outTextStyle:(id *)a6
{
  baseTableModel = self->super._baseTableModel;
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, a3, a4, a5);

  objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(baseTableModel, v9, isLabel, a5, a6);
}

- (void)p_defaultStyleHandlesOfSummaryOrLabelRowAtLevel:(unsigned __int8)a3 isLabel:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7
{
  isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, a2, a3, a4, a5);
  if (a6)
  {
    *a6 = objc_msgSend_cellStyleHandleForKey_(a5, v10, isLabel, v11, v12);
  }

  if (a7)
  {
    *a7 = objc_msgSend_textStyleHandleForKey_(a5, v10, isLabel, v11, v12);
  }
}

- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B4834;
  v9[3] = &unk_27845F958;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B488C;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B48E4;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4948;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v10;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toLabelUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B4B80;
  v9[3] = &unk_27845F958;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B4BD8;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B4C30;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B4C94;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v10;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toLabelUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (int)setCellStyle:(id)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4
{
  v6 = a3;
  v10 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v7, a4.var0, v8, v9);
  if (v10 == 0x7FFF)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator setCellStyle:ofColumnAtIndex:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 970, 0, "Categories: setting cell style on unknown column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_setCellStyle_ofColumnAtIndex_(self->super._baseTableModel, v11, v6, v10, v13);
  }

  return v25;
}

- (int)setTextStyle:(id)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4
{
  v6 = a3;
  v10 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v7, a4.var0, v8, v9);
  if (v10 == 0x7FFF)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator setTextStyle:ofColumnAtIndex:]", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 981, 0, "Categories: setting text style on unknown column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_setTextStyle_ofColumnAtIndex_(self->super._baseTableModel, v11, v6, v10, v13);
  }

  return v25;
}

- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2214B3AB0;
  v13 = sub_2214B3AC0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B50B8;
  v8[3] = &unk_27845EC10;
  v8[4] = self;
  v8[5] = &v9;
  v6[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5114;
  v7[3] = &unk_2784660A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B5178;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  objc_msgSend_p_applyViewColumnIndex_toCategoryColumnUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2214B3AB0;
  v13 = sub_2214B3AC0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B5364;
  v8[3] = &unk_27845EC10;
  v8[4] = self;
  v8[5] = &v9;
  v6[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B53C0;
  v7[3] = &unk_2784660A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B5424;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  objc_msgSend_p_applyViewColumnIndex_toCategoryColumnUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2214B3AB0;
  v16 = sub_2214B3AC0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B5668;
  v11[3] = &unk_2784660D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214B56C4;
  v10[3] = &unk_2784660F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B5720;
  v9[3] = &unk_278466080;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5814;
  v7[3] = &unk_278466120;
  v7[4] = self;
  v7[5] = &v12;
  v8 = a4;
  v7[6] = a5;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v11, v10, v9, v7);
  v5 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2214B3AB0;
  v16 = sub_2214B3AC0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B5A5C;
  v11[3] = &unk_2784660D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214B5AB8;
  v10[3] = &unk_2784660F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B5B14;
  v9[3] = &unk_278466080;
  v9[4] = self;
  v9[5] = &v12;
  v9[6] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B5C08;
  v7[3] = &unk_278466120;
  v7[4] = self;
  v7[5] = &v12;
  v8 = a4;
  v7[6] = a5;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v11, v10, v9, v7);
  v5 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (id)cellStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4
{
  row = a3->_row;
  column = a3->_column;
  v37 = row;
  v10 = objc_msgSend_viewCellCoordForCellUID_(self, a2, &column, a4, v4);
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v28 = objc_msgSend_cellStyleAtCellID_isDefault_(self, v9, v10, a4, v12);
    goto LABEL_20;
  }

  v14 = objc_msgSend_summaryCellVendor(self, v9, v10, v11, v12);
  v18 = objc_msgSend_cellAtCellUID_(v14, v15, a3, v16, v17);

  v23 = objc_msgSend_cellStyle(v18, v19, v20, v21, v22);

  if (v23)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v28 = objc_msgSend_cellStyle(v18, v24, v25, v26, v27);
    goto LABEL_19;
  }

  v29 = a3->_row;
  column = a3->_column;
  v37 = v29;
  v30 = sub_2211A8FF4(&column);
  if (v30 != 255)
  {
    v31 = a3->_row;
    column = a3->_column;
    v37 = v31;
    if (sub_2211A910C(&column))
    {
      objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v32, v30, 1, v33);
    }

    else
    {
      objc_msgSend_p_defaultCellStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v32, v30, 0, v33);
    }
    v28 = ;
    if (!a4)
    {
      goto LABEL_19;
    }

    v34 = 1;
    goto LABEL_18;
  }

  v28 = 0;
  if (a4)
  {
    v34 = 0;
LABEL_18:
    *a4 = v34;
  }

LABEL_19:

LABEL_20:

  return v28;
}

- (id)textStyleAtCellUID:(const TSKUIDStructCoord *)a3 isDefault:(BOOL *)a4
{
  row = a3->_row;
  column = a3->_column;
  v38 = row;
  v10 = objc_msgSend_viewCellCoordForCellUID_(self, a2, &column, a4, v4);
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v29 = objc_msgSend_textStyleAtCellID_isDefault_(self, v9, v10, a4, v12);
    goto LABEL_14;
  }

  v14 = objc_msgSend_summaryCellVendor(self, v9, v10, v11, v12);
  v18 = objc_msgSend_cellAtCellUID_(v14, v15, a3, v16, v17);

  v23 = objc_msgSend_textStyle(v18, v19, v20, v21, v22);

  if (v23)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v28 = objc_msgSend_textStyle(v18, v24, v25, v26, v27);
  }

  else
  {
    v30 = a3->_row;
    column = a3->_column;
    v38 = v30;
    v31 = sub_2211A8FF4(&column);
    if (v31 == 255)
    {
      v29 = 0;
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_13;
    }

    v32 = a3->_row;
    column = a3->_column;
    v38 = v32;
    v33 = sub_2211A910C(&column);
    v28 = objc_msgSend_p_defaultTextStyleOfSummaryOrLabelRowAtLevel_isLabel_(self, v34, v31, v33, v35);
  }

  v29 = v28;
LABEL_13:

LABEL_14:

  return v29;
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B6140;
  v9[3] = &unk_2784660D0;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B61C8;
  v8[3] = &unk_278466148;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B62E4;
  v7[3] = &unk_278466080;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B6410;
  v6[3] = &unk_278466170;
  v6[4] = self;
  v6[5] = &v10;
  v6[6] = a4;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (id)textStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2214B3AB0;
  v14 = sub_2214B3AC0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214B6650;
  v9[3] = &unk_2784660D0;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214B66D8;
  v8[3] = &unk_278466148;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214B67F4;
  v7[3] = &unk_278466080;
  v7[4] = self;
  v7[5] = &v10;
  v7[6] = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214B6920;
  v6[3] = &unk_278466170;
  v6[4] = self;
  v6[5] = &v10;
  v6[6] = a4;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v9, v8, v7, v6);
  v4 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_2214B3AB0;
  v28 = sub_2214B3AC0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2214B3AB0;
  v22 = sub_2214B3AC0;
  v23 = 0;
  tableInfo = self->super._tableInfo;
  baseTableModel = self->super._baseTableModel;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2214B6C10;
  v17[3] = &unk_278466198;
  v17[6] = self;
  v17[7] = a5;
  v17[4] = &v24;
  v17[5] = &v18;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2214B6C84;
  v16[3] = &unk_2784661C0;
  v16[6] = self;
  v16[7] = a5;
  v16[4] = &v24;
  v16[5] = &v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2214B6CF8;
  v13[3] = &unk_2784661E8;
  v14 = a6 != 0;
  v13[7] = tableInfo;
  v13[8] = a5;
  v13[5] = &v24;
  v13[6] = &v18;
  v15 = a7 != 0;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214B6ED8;
  v11[3] = &unk_278466210;
  v12 = a4;
  v11[6] = baseTableModel;
  v11[7] = a5;
  v11[4] = &v24;
  v11[5] = &v18;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v17, v16, v13, v11);
  if (a6)
  {
    *a6 = v25[5];
  }

  if (a7)
  {
    *a7 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

- (id)conditionalStyleSetAtCellID:(TSUViewCellCoord)a3
{
  v7 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, v3, v4);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCategoryTranslator conditionalStyleSetAtCellID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1291, 0, "Categories: cannot get conditional style for that cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_conditionalStyleSetAtBaseCellCoord_(self->super._baseTableModel, v6, v7, v8, v9);
  }

  return v10;
}

- (id)metadataForRowIndex:(TSUViewRowIndex)a3
{
  v5 = *&a3.var0;
  v7 = objc_msgSend_hiddenStates(self->super._tableInfo, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_hidingActionForRowAtIndex_(v7, v8, v5, v9, v10);

  v15 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v12, v5, v13, v14);
  if (v15 == 0x7FFFFFFF)
  {
    v19 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v16, v5, v17, v18);
    if (v19 == 0x7FFFFFFF)
    {
      v24 = 0;
    }

    else
    {
      v25 = v19;
      v26 = objc_msgSend_summaryModel(self->super._tableInfo, v20, v21, v22, v23);
      v24 = objc_msgSend_metadataForRowIndex_hidingAction_(v26, v27, v25, v11, v28);
    }
  }

  else
  {
    v24 = objc_msgSend_metadataForRowIndex_hidingAction_(self->super._baseTableModel, v16, v15, v11, v18);
  }

  return v24;
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_hiddenStates(self->super._tableInfo, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_hidingActionForColumnAtIndex_(v7, v8, a3.var0, v9, v10);

  v15 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v12, a3.var0, v13, v14);
  if (v15 == 0x7FFF)
  {
    v18 = 0;
  }

  else
  {
    v18 = objc_msgSend_metadataForColumnIndex_hidingAction_(self->super._baseTableModel, v16, v15, v11, v17);
  }

  return v18;
}

- (id)stringAtCellID:(TSUViewCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  v11 = v6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2214B3AB0;
  v24 = sub_2214B3AC0;
  v25 = 0;
  if (v6)
  {
    v12 = objc_msgSend_formattedValue(v6, v7, v8, v9, v10);
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2214B7458;
    v19[3] = &unk_278466238;
    v19[5] = &v20;
    v19[6] = a3;
    v19[4] = self;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2214B751C;
    v18[3] = &unk_278466148;
    v18[5] = &v20;
    v18[6] = a3;
    v18[4] = self;
    v16 = &v20;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2214B75A4;
    v17[3] = &unk_278466260;
    v17[4] = &v20;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2214B75D0;
    v14[3] = &unk_278466288;
    v14[4] = self;
    v15 = 0;
    objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, v7, *&a3, v19, v18, v17, v14);
    v12 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (id)regionForValueOrCommentCellsInRange:(TSUViewCellRect)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator regionForValueOrCommentCellsInRange:]", *&a3._rect.size, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 1362, 0, "Categories: cannot resolve region for cell rect");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (int)getCell:(id)a3 atCellID:(TSUViewCellCoord)a4 suppressCellBorder:(BOOL)a5
{
  v8 = a3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214B78C4;
  v20[3] = &unk_2784662B0;
  v20[4] = self;
  v21 = v8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2214B7F98;
  v18[3] = &unk_2784662D8;
  v18[4] = self;
  v19 = v21;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214B828C;
  v15[3] = &unk_278466300;
  v15[4] = self;
  v17 = a4;
  v16 = v19;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2214B8344;
  v12[3] = &unk_278466328;
  v12[4] = self;
  v13 = v16;
  v14 = a5;
  v9 = v16;
  a4._coord.row = objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, v10, *&a4, v20, v18, v15, v12);

  return a4._coord.row;
}

- (int)getValue:(id *)a3 atCellID:(TSUViewCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5
{
  v5 = a5;
  if (objc_msgSend_isSummaryRow_(self, a2, *&a4, *&a4, a5))
  {
    v13 = objc_msgSend_coordinateMapper(self, v9, v10, v11, v12);
    v17 = objc_msgSend_summaryCellCoordForViewCellCoord_(v13, v14, *&a4, v15, v16);

    v22 = objc_msgSend_summaryModel(self, v18, v19, v20, v21);
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v22, v23, a3, v17, v5);

    return RichTextAttributesIfPlainText;
  }

  else
  {
    v27 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&a4, v11, v12);
    baseTableModel = self->super._baseTableModel;

    return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v26, a3, v27, v5);
  }
}

- (int)getDefaultCell:(id)a3 forCellUID:(const TSKUIDStructCoord *)a4
{
  v6 = a3;
  row = a4->_row;
  column = a4->_column;
  v34 = row;
  v12 = sub_2211A8FF4(&column);
  if (v12 == 255)
  {
    v21 = objc_msgSend_viewMap(self, v8, v9, v10, v11);
    v22 = a4->_row;
    column = a4->_column;
    v34 = v22;
    v26 = objc_msgSend_cellIDForCellUID_(v21, v23, &column, v24, v25);

    v30 = v26 == 0x7FFFFFFF || (v26 & 0xFFFF00000000) == 0x7FFF00000000;
    v31 = !v30;
    if (!v30)
    {
      DefaultCell_forCellID = objc_msgSend_getDefaultCell_forCellID_(self, v28, v6, v26, v29);
    }

    if (v31)
    {
      DefaultCell_forTableStyleArea = DefaultCell_forCellID;
    }

    else
    {
      DefaultCell_forTableStyleArea = 2;
    }
  }

  else
  {
    v13 = a4->_row;
    column = a4->_column;
    v34 = v13;
    v14 = sub_2211A910C(&column);
    isLabel = objc_msgSend_tableStyleAreaForCategoryLevel_isLabel_(TSTCategoryTranslator, v15, v12, v14, v16);
    DefaultCell_forTableStyleArea = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v18, v6, isLabel, v19);
  }

  return DefaultCell_forTableStyleArea;
}

- (BOOL)hasFormulaAtCellUID:(const TSKUIDStructCoord *)a3
{
  row = a3->_row;
  v24[0] = a3->_column;
  v24[1] = row;
  v9 = objc_msgSend_viewCellCoordForCellUID_(self, a2, v24, v3, v4);
  if (v9 != 0x7FFFFFFF && (v9 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    return objc_msgSend_hasFormulaAtCellID_(self, v8, v9, v10, v11);
  }

  v13 = objc_msgSend_summaryCellVendor(self, v8, v9, v10, v11);
  v17 = objc_msgSend_cellAtCellUID_(v13, v14, a3, v15, v16);

  hasFormula = objc_msgSend_hasFormula(v17, v18, v19, v20, v21);
  return hasFormula;
}

- (int)p_applyViewCellCoord:(TSUViewCellCoord)a3 toSummaryUsingBlock:(id)a4 toLabelUsingBlock:(id)a5 toCategoryColumnUsingBlock:(id)a6 toBaseUsingBlock:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20 = objc_msgSend_viewMap(self, v16, v17, v18, v19);
  v71.origin = objc_msgSend_range(v20, v21, v22, v23, v24);
  v71.size = v25;
  coord = a3._coord;
  if ((TSUCellRect::contains(&v71, coord) & 1) == 0)
  {
    goto LABEL_27;
  }

  v33 = objc_msgSend_groupLevelAtSummaryRow_(self, v27, a3._coord.row, v28, v29);
  if (v33 != 255)
  {
    v71 = 0;
    v72 = 0u;
    if (v20)
    {
      objc_msgSend_cellUIDForCellID_(v20, v30, *&a3, v31, v32);
      if (v71 != 0uLL && v72 != 0)
      {
        v37 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v34, *&a3, v35, v36);
        *&v69[0] = v37;
        if (!sub_2211A8E4C(v72, *(&v72 + 1)))
        {
          v41 = MEMORY[0x277D81150];
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSTCategoryTranslator p_applyViewCellCoord:toSummaryUsingBlock:toLabelUsingBlock:toCategoryColumnUsingBlock:toBaseUsingBlock:]", v39, v40, *&v69[0]);
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v44, v45);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 1544, 0, "summary row does not have a valid summary row uid");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
        }

        v52 = 1;
        if (v12 && v37 != 0x7FFFFFFFLL && (v37 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v53 = v12[2](v12, v69, &v71, v33);
LABEL_26:
          v52 = v53;
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    v52 = 1;
    goto LABEL_28;
  }

  v57 = objc_msgSend_groupLevelAtLabelRow_(self, v30, a3._coord.row, v31, v32);
  if (v57 == 255)
  {
    if (a3._coord.column)
    {
      v71 = 0;
      v72 = 0u;
      if (v20)
      {
        objc_msgSend_cellUIDForCellID_(v20, v54, *&a3, v55, v56);
        if (v71 != 0uLL && v72 != 0)
        {
          v63 = objc_msgSend_baseMap(self, v59, v60, v61, v62);
          v69[0] = v71;
          v69[1] = v72;
          v67 = objc_msgSend_cellIDForCellUID_(v63, v64, v69, v65, v66);
          v70 = v67;

          v52 = 1;
          if (v15 && v67 != 0x7FFFFFFFLL && (v67 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v53 = v15[2](v15, &v70, &v71);
            goto LABEL_26;
          }

          goto LABEL_28;
        }
      }
    }

    else if (v14)
    {
      v53 = v14[2](v14, a3._coord.row);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v71.origin = objc_msgSend_columnUIDForColumnIndex_(v20, v54, a3._coord.column, v55, v56);
  v71.size = v58;
  v52 = 1;
  if (v13 && *&v71.origin | *&v58)
  {
    v53 = v13[2](v13, v57, &v71);
    goto LABEL_26;
  }

LABEL_28:

  return v52;
}

- (void)p_applyViewRowIndex:(TSUViewRowIndex)a3 toSummaryUsingBlock:(id)a4 toLabelUsingBlock:(id)a5 toBaseUsingBlock:(id)a6 toBeyondBoundsUsingBlock:(id)a7
{
  v10 = *&a3.var0;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20 = objc_msgSend_viewMap(self, v16, v17, v18, v19);
  v24 = objc_msgSend_rowUIDForRowIndex_(v20, v21, v10, v22, v23);
  v26 = v25;
  v50[0] = v24;
  v50[1] = v25;

  if (!(v24 | v26))
  {
    goto LABEL_6;
  }

  v31 = objc_msgSend_baseMap(self, v27, v28, v29, v30);
  v49 = objc_msgSend_rowIndexForRowUID_(v31, v32, v24, v26, v33);

  if (v49 != 0x7FFFFFFF)
  {
    v14[2](v14, &v49, v50);
    goto LABEL_10;
  }

  v38 = objc_msgSend_groupByForRows(self, v34, v35, v36, v37);
  v39 = sub_2211A8DC8(v24, v26);
  v42 = objc_msgSend_groupNodeForGroupUid_(v38, v40, v39, v40, v41);

  if (v42)
  {
    if (sub_2211A8E20(v24, v26))
    {
      v47 = objc_msgSend_groupLevel(v42, v43, v44, v45, v46) + 1;
      v48 = v13;
    }

    else
    {
      v47 = objc_msgSend_groupLevel(v42, v43, v44, v45, v46);
      v48 = v12;
    }

    v48[2](v48, v47);
  }

  else
  {
LABEL_6:
    v15[2](v15);
  }

LABEL_10:
}

- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)a3 toCategoryColumnUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v16 = a6;
  v17 = v10;
  if (a3.var0)
  {
    v17 = v16;
    if (a3.var0 != 0x7FFF)
    {
      v18 = objc_msgSend_viewMap(self, v12, v13, v14, v15);
      v22 = objc_msgSend_columnUIDForColumnIndex_(v18, v19, a3.var0, v20, v21);
      v24 = v23;
      v47 = v22;
      v48 = v23;

      if (v22 | v24)
      {
        v29 = objc_msgSend_baseMap(self, v25, v26, v27, v28, v47, v48);
        v32 = objc_msgSend_columnIndexForColumnUID_(v29, v30, v22, v24, v31);

        if (v32 != 0x7FFF)
        {
          v11[2](v11, v32, &v47);
          goto LABEL_8;
        }

        v36 = MEMORY[0x277D81150];
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCategoryTranslator p_applyViewColumnIndex:toCategoryColumnUsingBlock:toBaseUsingBlock:toBeyondBoundsUsingBlock:]", v34, v35);
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v39, v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1636, 0, "Categories: this column is not is not in the base table");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
      }

      v17 = v16;
    }
  }

  v17[2]();
LABEL_8:
}

- (BOOL)hasFormulaAtCellID:(TSUViewCellCoord)a3
{
  v8 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, v3, v4);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v16 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v7, *&a3, v9, v10);
    hasFormulaAtCellCoord = 0;
    if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v18 = objc_msgSend_summaryModel(self, v12, v13, v14, v15);
      hasFormulaAtCellCoord = objc_msgSend_hasFormulaAtCellCoord_(v18, v19, v16, v20, v21);
    }

    return hasFormulaAtCellCoord;
  }

  else
  {
    baseTableModel = self->super._baseTableModel;

    return MEMORY[0x2821F9670](baseTableModel, sel_hasFormulaAtBaseCellCoord_, v8, v9, v10);
  }
}

- (id)formulaAtCellID:(TSUViewCellCoord)a3
{
  v8 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, v3, v4);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v16 = objc_msgSend_summaryCellCoordForViewCellCoord_(self, v7, *&a3, v9, v10);
    v11 = 0;
    if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v17 = objc_msgSend_summaryModel(self, v12, v13, v14, v15);
      v11 = objc_msgSend_formulaAtCellCoord_(v17, v18, v16, v19, v20);
    }
  }

  else
  {
    v11 = objc_msgSend_formulaAtBaseCellCoord_(self->super._baseTableModel, v7, v8, v9, v10);
  }

  return v11;
}

- (double)heightOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  v6 = *&a3.var0;
  v8 = objc_msgSend_viewMap(self, a2, *&a3.var0, a4, v4);
  v12 = objc_msgSend_rowUIDForRowIndex_(v8, v9, v6, v10, v11);
  v14 = v13;

  v19 = objc_msgSend_baseMap(self, v15, v16, v17, v18);
  v22 = objc_msgSend_rowIndexForRowUID_(v19, v20, v12, v14, v21);

  if (v22 == 0x7FFFFFFF)
  {
    if (sub_2211A8E20(v12, v14))
    {
      v25 = sub_2211A8DC8(v12, v14);
      v27 = v26;
      v31 = objc_msgSend_groupByForRows(self, v26, v28, v29, v30);
      v34 = objc_msgSend_groupNodeForGroupUid_(v31, v32, v25, v27, v33);

      if (v34)
      {
        v39 = objc_msgSend_summaryModel(self, v35, v36, v37, v38);
        v44 = objc_msgSend_groupLevel(v34, v40, v41, v42, v43);
        objc_msgSend_labelRowHeightAtCategoryLevel_(v39, v45, (v44 + 1), v46, v47);
LABEL_12:
        v81 = v48;

LABEL_14:
        if (a4)
        {
          *a4 = v81 == 0.0;
        }

        return v81;
      }
    }

    else
    {
      if (!sub_2211A8E4C(v12, v14))
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTCategoryTranslator heightOfRowAtIndex:isDefault:]", v53, v54);
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v58, v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v60, 1695, 0, "uid must be label or summary");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
      }

      v66 = objc_msgSend_groupByForRows(self, v51, v52, v53, v54);
      v34 = objc_msgSend_groupNodeForGroupUid_(v66, v67, v12, v14, v68);

      if (v34)
      {
        v39 = objc_msgSend_summaryModel(self, v69, v70, v71, v72);
        v77 = objc_msgSend_groupLevel(v34, v73, v74, v75, v76);
        objc_msgSend_summaryRowHeightAtCategoryLevel_(v39, v78, v77, v79, v80);
        goto LABEL_12;
      }
    }

    v81 = 0.0;
    goto LABEL_14;
  }

  baseTableModel = self->super._baseTableModel;

  objc_msgSend_heightOfRowAtIndex_isDefault_(baseTableModel, v23, v22, a4, v24);
  return result;
}

- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v7 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, a3.var0, a4, v4);
  if (v7 == 0x7FFF)
  {
    v12 = objc_msgSend_summaryModel(self->super._tableInfo, v8, v9, v10, v11);
    objc_msgSend_categoryColumnWidth(v12, v13, v14, v15, v16);
    v18 = v17;

    return v18;
  }

  else
  {
    v20 = v7;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_widthOfColumnAtIndex_isDefault_(baseTableModel, v8, v20, a4, v11);
  }

  return result;
}

- (id)rowHeights
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator rowHeights]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 1725, 0, "Categories: cannot get row heights.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (id)columnWidths
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator columnWidths]", v2, v3);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v7, v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v9, 1731, 0, "Categories: cannot get column widths.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13, v14);
  return 0;
}

- (void)setHeight:(double)a3 ofRowAtIndex:(TSUViewRowIndex)a4
{
  v8 = objc_msgSend_baseRowIndexForViewRowIndex_(self, a2, a4.var0, v4, v5);
  if (v8 == 0x7FFFFFFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCategoryTranslator setHeight:ofRowAtIndex:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1742, 0, "Categories: cannot set height of this row");

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v19, v20, v21, v22);
  }

  else
  {
    v24 = v8;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_setHeight_ofRowAtIndex_(baseTableModel, v9, v24, v10, v11, a3);
  }
}

- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4
{
  v8 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, a2, a4.var0, v4, v5);
  if (v8 == 0x7FFF)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCategoryTranslator setWidth:ofColumnAtIndex:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1753, 0, "Categories: cannot set width of this column");

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v19, v20, v21, v22);
  }

  else
  {
    v24 = v8;
    baseTableModel = self->super._baseTableModel;

    objc_msgSend_setWidth_ofColumnAtIndex_(baseTableModel, v9, v24, v10, v11, a3);
  }
}

- (void)removeRowsAtIndex:(TSUViewRowIndex)a3 count:(TSUViewRowIndex)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator removeRowsAtIndex:count:]", *&a4.var0, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 1758, 0, "Categories: row removal method is not supported.");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)removeColumnsAtIndex:(TSUViewColumnIndex)a3 count:(TSUViewColumnIndex)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryTranslator removeColumnsAtIndex:count:]", *&a4.var0, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 1762, 0, "Categories: column removal method is not supported.");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (void)postCommentNotificationForStorage:(id)a3 atViewCellCoord:(TSUViewCellCoord)a4 notificationKey:(id)a5
{
  v26 = a3;
  v8 = a5;
  v13 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&a4, v10, v11);
  if (v13 == 0x7FFFFFFF || (v13 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryTranslator postCommentNotificationForStorage:atViewCellCoord:notificationKey:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1772, 0, "Categories: cannot post notification for comment/cell/key");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_postCommentNotificationForStorage_baseCellCoord_notificationKey_(self->super._baseTableModel, v12, v26, v13, v8);
  }
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)a3 forCommentStorage:(id)a4 updateCommentMaps:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v13 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&a3, v10, v11);
  if (v13 == 0x7FFFFFFF || (v13 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryTranslator commentHostingAtCellID:forCommentStorage:updateCommentMaps:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1782, 0, "Categories: cannot resolve comment for cell/storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_commentHostingAtBaseCellCoord_forCommentStorage_updateCommentMaps_(self->super._baseTableModel, v12, v13, v8, v5);
  }

  return v16;
}

- (id)commentHostingAtCellID:(TSUViewCellCoord)a3
{
  v7 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, v3, v4);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCategoryTranslator commentHostingAtCellID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 1793, 0, "Categories: cannot resolve comment for cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_commentHostingAtBaseCellCoord_(self->super._baseTableModel, v6, v7, v8, v9);
  }

  return v10;
}

- (void)removeRowsAtIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_viewMap(self, v5, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v9, v10, v4, v11, v12);
  }

  else
  {
    __p = 0;
    v86 = 0;
    v87 = 0;
  }

  v18 = __p;
  if (v86 != __p)
  {
    v19 = objc_msgSend_summaryModel(self->super._tableInfo, v14, v15, v16, v17);
    objc_msgSend_removeCategoryColumnCellsForRows_(v19, v20, &__p, v21, v22);

    v27 = objc_msgSend_calcEngine(self->super._tableInfo, v23, v24, v25, v26);
    objc_msgSend_beginBatchingGroupCellDirtying(v27, v28, v29, v30, v31);
    v36 = objc_msgSend_groupByForRows(self, v32, v33, v34, v35);
    objc_msgSend_startOfGroupingChangesBatch(v36, v37, v38, v39, v40);
    v45 = objc_msgSend_categoryOwner(self->super._tableInfo, v41, v42, v43, v44);
    v84[0] = objc_msgSend_tableUID(self->super._tableInfo, v46, v47, v48, v49);
    v84[1] = v50;
    objc_msgSend_willRemoveRows_tableUID_(v45, v50, &__p, v84, v51);

    v56 = objc_msgSend_categoryOrder(self->super._tableInfo, v52, v53, v54, v55);
    objc_msgSend_removeRowUids_(v56, v57, &__p, v58, v59);

    v64 = objc_msgSend_baseMap(self, v60, v61, v62, v63);
    v68 = objc_msgSend_rowIndexesForUIDs_(v64, v65, &__p, v66, v67);

    objc_msgSend_removeRowsAtBaseIndexes_(self->super._baseTableModel, v69, v68, v70, v71);
    objc_msgSend_endOfGroupingChangesBatch(v36, v72, v73, v74, v75);
    objc_msgSend_endBatchingGroupCellDirtying(v27, v76, v77, v78, v79);
    objc_msgSend_resetViewMap(self, v80, v81, v82, v83);

    v18 = __p;
  }

  if (v18)
  {
    v86 = v18;
    operator delete(v18);
  }
}

- (void)removeColumnsAtIndexes:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_viewMap(self, v5, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v9, v10, v4, v11, v12);
  }

  else
  {
    __p = 0;
    v62 = 0;
    v63 = 0;
  }

  v18 = __p;
  if (v62 != __p)
  {
    v19 = objc_msgSend_baseMap(self, v14, v15, v16, v17);
    v23 = objc_msgSend_columnIndexesForUIDs_(v19, v20, &__p, v21, v22);

    v28 = objc_msgSend_summaryMap(self, v24, v25, v26, v27);
    v32 = objc_msgSend_columnIndexesForUIDs_(v28, v29, &__p, v30, v31);

    objc_msgSend_removeColumnsAtBaseIndexes_(self->super._baseTableModel, v33, v23, v34, v35);
    v40 = objc_msgSend_summaryModel(self, v36, v37, v38, v39);
    objc_msgSend_removeColumnsAtSummaryIndexes_(v40, v41, v32, v42, v43);

    objc_msgSend_resetViewMap(self, v44, v45, v46, v47);
    v52 = objc_msgSend_groupByForRows(self, v48, v49, v50, v51);
    objc_msgSend_rebuildAllAggFormulas(v52, v53, v54, v55, v56);
    objc_msgSend_didChangeGroupByStructure(v52, v57, v58, v59, v60);

    v18 = __p;
  }

  if (v18)
  {
    v62 = v18;
    operator delete(v18);
  }
}

- (void)moveColumnRange:(_NSRange)a3 toColumnIndex:(TSUViewColumnIndex)a4
{
  length = a3.length;
  location = a3.location;
  v8 = objc_msgSend_viewMap(self, a2, a3.location, a3.length, *&a4.var0);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_columnUIDsForColumnRange_(v8, v9, location, length, v10);
  }

  else
  {
    __p = 0;
    v80 = 0;
    v81 = 0;
  }

  v16 = objc_msgSend_viewMap(self, v12, v13, v14, v15);
  v17 = location <= a4.var0;
  v21 = objc_msgSend_columnUIDForColumnIndex_(v16, v18, (a4.var0 - v17), v19, v20);
  v23 = v22;

  v28 = objc_msgSend_baseMap(self, v24, v25, v26, v27);
  v32 = objc_msgSend_columnRangeForUIDs_(v28, v29, &__p, v30, v31);
  v34 = v33;

  v39 = objc_msgSend_baseMap(self, v35, v36, v37, v38);
  LODWORD(v21) = objc_msgSend_columnIndexForColumnUID_(v39, v40, v21, v23, v41);

  v45 = v21 + v17;
  if (v21 == 0x7FFF)
  {
    v45 = 0x7FFF;
  }

  if (v32 == 0x7FFFFFFFFFFFFFFFLL || v45 == 0x7FFF)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTCategoryTranslator moveColumnRange:toColumnIndex:]", v43, v44);
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v71, v72);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v74, v69, v73, 1873, 0, "Categories: could not move column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
  }

  else
  {
    objc_msgSend_moveBaseColumnRange_toColumnIndex_(self->super._baseTableModel, v42, v32, v34, v45);
    objc_msgSend_resetViewMapAndNotify(self, v46, v47, v48, v49);
    v54 = objc_msgSend_tableInfo(self, v50, v51, v52, v53);
    v59 = objc_msgSend_groupBy(v54, v55, v56, v57, v58);

    objc_msgSend_rebuildAllAggFormulas(v59, v60, v61, v62, v63);
    objc_msgSend_didChangeGroupByStructure(v59, v64, v65, v66, v67);
  }

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }
}

- (TSUViewCellCoord)cellIDForCellContainingRichTextStorage:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_baseCellCoordForCellContainingRichTextStorage_(self->super._baseTableModel, v5, v4, v6, v7);
  if (v9 == 0x7FFFFFFF || (v9 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCategoryTranslator cellIDForCellContainingRichTextStorage:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1894, 0, "Categories: cannot resolve cell for this rich text storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
    v24 = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v24 = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v8, v9, v10, v11);
  }

  return v24;
}

- (BOOL)hasSpillRangesIntersectingCellRegion:(id)a3
{
  v6 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, a3, v3, v4);
  if (objc_msgSend_isValid(v6, v7, v8, v9, v10))
  {
    hasSpillRangesIntersectingCellRegion = objc_msgSend_hasSpillRangesIntersectingCellRegion_(self->super._baseTableModel, v11, v6, v12, v13);
  }

  else
  {
    hasSpillRangesIntersectingCellRegion = 0;
  }

  return hasSpillRangesIntersectingCellRegion;
}

- (BOOL)mergeCellRange:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  v6 = objc_msgSend_baseCellRegionForViewCellRect_(self, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  if (objc_msgSend_isRectangle(v6, v7, v8, v9, v10) && objc_msgSend_cellCount(v6, v11, v12, v13, v14) == size.numberOfRows * size.numberOfColumns)
  {
    v16 = objc_msgSend_mergeOwner(self->super._baseTableModel, v11, v15, v13, v14);
    v21 = objc_msgSend_boundingModelCellRect(v6, v17, v18, v19, v20);
    inserted = objc_msgSend_insertBaseMergeRangeRemovingOverlaps_(v16, v22, v21, v22, v23);
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCategoryTranslator mergeCellRange:]", v13, v14);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 1919, 0, "attempting to merge a disjoint cell region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    inserted = 0;
  }

  return inserted;
}

- (BOOL)unmergeCellRange:(TSUViewCellRect)a3
{
  v5 = objc_msgSend_baseCellRegionForViewCellRect_(self, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  isRectangle = objc_msgSend_isRectangle(v5, v6, v7, v8, v9);
  if (isRectangle)
  {
    v15 = objc_msgSend_mergeOwner(self->super._baseTableModel, v10, v11, v12, v13);
    v20 = objc_msgSend_boundingModelCellRect(v5, v16, v17, v18, v19);
    objc_msgSend_removeBaseMergeRange_(v15, v21, v20, v21, v22);
  }

  return isRectangle;
}

- (TSUViewCellRect)mergeRangeAtCellID:(TSUViewCellCoord)a3
{
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3, v3, v4);
  v15 = 0x7FFF7FFFFFFFLL;
  if ((objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v12, *&a3, v13, v14);
  v20 = 0;
  if (v17 == 0x7FFFFFFF || (v17 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_9;
  }

  v47.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v7, v16, v17, v18, v19);
  v47.size = v21;
  if (!TSUCellRect::isValid(&v47))
  {
LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v24 = objc_msgSend_viewCellRegionForBaseCellRect_(self, v22, *&v47.origin, *&v47.size, v23);
  if ((objc_msgSend_isRectangle(v24, v25, v26, v27, v28) & 1) == 0)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTCategoryTranslator mergeRangeAtCellID:]", v31, v32);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1949, 0, "found a disjoint merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  v15 = objc_msgSend_boundingViewCellRect(v24, v29, v30, v31, v32);
  v20 = v44;

LABEL_9:
  v45 = v15;
  v46 = v20;
  result._rect.size = v46;
  result._rect.origin = v45;
  return result;
}

- (TSUViewCellCoord)mergeOriginForCellID:(TSUViewCellCoord)a3
{
  v5 = a3;
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3, v3, v4);
  if (objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v12, *&v5, v13, v14);
    if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v19 = objc_msgSend_mergeOriginForBaseCellCoord_(v7, v15, v16, v17, v18);
      v5 = objc_msgSend_viewCellCoordForBaseCellCoord_(self, v20, v19, v21, v22);
    }
  }

  return v5;
}

- (BOOL)mergeRangesPartiallyIntersectCellRange:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  origin = a3._rect.origin;
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  if (objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17, v18))
    {
      v22 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v7, v19, v14, v20, v21);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)mergeRangesPartiallyIntersectCellRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7, v8);
  if (objc_msgSend_hasMergeRanges(v9, v10, v11, v12, v13))
  {
    v17 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v14, v4, v15, v16);
    if (objc_msgSend_isValid(v17, v18, v19, v20, v21))
    {
      v25 = objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v9, v22, v17, v23, v24);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)hasMergeRangeSpanningRowsForCellRange:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  origin = a3._rect.origin;
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  if (objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17, v18))
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_2214BAA1C;
      v24[3] = &unk_2784611A8;
      v25 = v7;
      v26 = &v27;
      objc_msgSend_enumerateModelCellRectsUsingBlock_(v14, v19, v24, v20, v21);
      v22 = *(v28 + 24);

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)hasMergeRangesIntersectingCellRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7, v8);
  if (objc_msgSend_hasMergeRanges(v9, v10, v11, v12, v13))
  {
    v17 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v14, v4, v15, v16);
    if (objc_msgSend_isValid(v17, v18, v19, v20, v21))
    {
      hasMergeRangesIntersectingBaseCellRegion = objc_msgSend_hasMergeRangesIntersectingBaseCellRegion_(v9, v22, v17, v23, v24);
    }

    else
    {
      hasMergeRangesIntersectingBaseCellRegion = 0;
    }
  }

  else
  {
    hasMergeRangesIntersectingBaseCellRegion = 0;
  }

  return hasMergeRangesIntersectingBaseCellRegion;
}

- (id)mergedGridIndicesForDimension:(int64_t)a3
{
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, a3, v3, v4);
  v11 = objc_msgSend_mergedGridIndicesForDimension_(v7, v8, a3, v9, v10);

  if (a3)
  {
    v16 = objc_msgSend_viewColumnGridIndexesForBaseColumnGridIndexes_(self, v12, v11, v14, v15);

    v11 = v16;
  }

  else
  {
    v47.origin = objc_msgSend_bodyRowRange(self->super._baseTableModel, v12, v13, v14, v15);
    v47.size = v17;
    v18 = TSUCellRect::rows(&v47);
    if (objc_msgSend_containsIndexesInRange_(v11, v19, v18, v19, v20))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTCategoryTranslator mergedGridIndicesForDimension:]", v23, v24);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 2047, 0, "should not be any merged row grid indexes in the body range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    }

    v47.origin = objc_msgSend_footerRowRange(self->super._baseTableModel, v21, v22, v23, v24);
    v47.size = v36;
    v37 = TSUCellRect::rows(&v47);
    v47.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v38, v39, v40, v41);
    v47.size = v42;
    v43 = TSUCellRect::rows(&v47);
    objc_msgSend_shiftIndexesStartingAtIndex_by_(v11, v44, v37, v43 - v37, v45);
  }

  return v11;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  origin = a3._rect.origin;
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  if (objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17, v18))
    {
      hasRangeSpanningRowsForCellRegion = objc_msgSend_hasRangeSpanningRowsForCellRegion_(v7, v19, v14, v20, v21);
    }

    else
    {
      hasRangeSpanningRowsForCellRegion = 0;
    }
  }

  else
  {
    hasRangeSpanningRowsForCellRegion = 0;
  }

  return hasRangeSpanningRowsForCellRegion;
}

- (TSUViewCellRect)expandCellRangeToCoverMergedCells:(TSUViewCellRect)a3
{
  size = a3._rect.size;
  origin = a3._rect.origin;
  v36 = a3;
  v7 = objc_msgSend_mergeOwner(self->super._baseTableModel, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  if (objc_msgSend_hasMergeRanges(v7, v8, v9, v10, v11))
  {
    v14 = objc_msgSend_baseCellRegionForViewCellRect_(self, v12, origin, size, v13);
    if (objc_msgSend_isValid(v14, v15, v16, v17, v18))
    {
      v22 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v7, v19, v14, v20, v21);
      v26 = objc_msgSend_viewCellRegionForBaseCellRegion_(self, v23, v22, v24, v25);
      v35[0] = objc_msgSend_boundingViewCellRect(v26, v27, v28, v29, v30);
      v35[1] = v31;
      origin = sub_2211E55F8(v35, &v36._rect.origin);
      size = v32;
    }
  }

  v33 = origin;
  v34 = size;
  result._rect.size = v34;
  result._rect.origin = v33;
  return result;
}

- (id)expandCellRegionToCoverMergedCells:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mergeOwner(self->super._baseTableModel, v5, v6, v7, v8);
  if (objc_msgSend_hasMergeRanges(v9, v10, v11, v12, v13))
  {
    v17 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v14, v4, v15, v16);
    if (objc_msgSend_isValid(v17, v18, v19, v20, v21))
    {
      v25 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v9, v22, v17, v23, v24);
      v29 = objc_msgSend_viewCellRegionForBaseCellRegion_(self, v26, v25, v27, v28);
      v34 = objc_msgSend_cellCount(v4, v30, v31, v32, v33);
      if (v34 != objc_msgSend_cellCount(v17, v35, v36, v37, v38))
      {
        v42 = objc_msgSend_regionByAddingViewCellRegion_(v29, v39, v4, v40, v41);

        v29 = v42;
      }
    }

    else
    {
      v29 = v4;
    }
  }

  else
  {
    v29 = v4;
  }

  return v29;
}

- (id)shrinkReturningInverseForRegion:(id)a3
{
  v6 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, a3, v3, v4);
  if (objc_msgSend_isValid(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_mergeOwner(self->super._baseTableModel, v11, v12, v13, v14);
    v19 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_(v15, v16, v6, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)removeReturningInverseForRegion:(id)a3
{
  v6 = objc_msgSend_baseCellRegionForViewCellRegion_(self, a2, a3, v3, v4);
  if (objc_msgSend_isValid(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_mergeOwner(self->super._baseTableModel, v11, v12, v13, v14);
    v19 = objc_msgSend_removeReturningInverseForBaseCellRegion_(v15, v16, v6, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)mergeActionForRegion:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_baseTableModel(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mergeOwner(v9, v10, v11, v12, v13);
  isEmpty = objc_msgSend_isEmpty(v14, v15, v16, v17, v18);

  if (isEmpty)
  {
    v23 = 0;
  }

  else
  {
    v24 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v20, v4, v21, v22);
    if (objc_msgSend_isValid(v24, v25, v26, v27, v28))
    {
      v33 = objc_msgSend_mergeOwner(self->super._baseTableModel, v29, v30, v31, v32);
      v23 = objc_msgSend_mergeActionForBaseCellRegion_(v33, v34, v24, v35, v36);
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)mergeActionForRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_msgSend_baseTableModel(self, v7, v8, v9, v10);
  v16 = objc_msgSend_mergeOwner(v11, v12, v13, v14, v15);
  isEmpty = objc_msgSend_isEmpty(v16, v17, v18, v19, v20);

  if (isEmpty)
  {
    v25 = 0;
  }

  else
  {
    v26 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v22, v6, v23, v24);
    if (objc_msgSend_isValid(v26, v27, v28, v29, v30))
    {
      v35 = objc_msgSend_mergeOwner(self->super._baseTableModel, v31, v32, v33, v34);
      v25 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(v35, v36, v26, v4, v37);
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (void)enumerateMergesIntersectingCellRegion:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_mergeOwner(self->super._baseTableModel, v8, v9, v10, v11);
  if (objc_msgSend_hasMergeRanges(v12, v13, v14, v15, v16))
  {
    v20 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v17, v6, v18, v19);
    if (objc_msgSend_isValid(v20, v21, v22, v23, v24))
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_2214BB50C;
      v27[3] = &unk_278466350;
      v27[4] = self;
      v28 = v7;
      objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(v12, v25, v20, v27, v26);
    }
  }
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingRange:(TSTCategoryTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v9 = objc_msgSend_mergeOwner(self->super._baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size, v4);
  if (objc_msgSend_hasMergeRanges(v9, v10, v11, v12, v13))
  {
    v16 = objc_msgSend_baseCellRegionForViewCellRect_(self, v14, origin, size, v15);
    if (objc_msgSend_isValid(v16, v17, v18, v19, v20))
    {
      if (v9)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v9, v21, v16, v22, v23);
      }

      else
      {
        __p = 0;
      }

      TSUViewCellRectVectorFromModelCellRectVector();
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesIntersectingCellRegion:(TSTCategoryTranslator *)self
{
  v6 = a4;
  v11 = objc_msgSend_mergeOwner(self->super._baseTableModel, v7, v8, v9, v10);
  if (objc_msgSend_hasMergeRanges(v11, v12, v13, v14, v15))
  {
    v19 = objc_msgSend_baseCellRegionForViewCellRegion_(self, v16, v6, v17, v18);
    if (objc_msgSend_isValid(v19, v20, v21, v22, v23))
    {
      if (v11)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v11, v24, v19, v25, v26);
      }

      else
      {
        __p = 0;
      }

      TSUViewCellRectVectorFromModelCellRectVector();
      if (__p)
      {
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (vector<TSUViewCellRect,)mergeRangesAndCrumbsIntersectingRange:(TSTCategoryTranslator *)self
{
  size = a4._rect.size;
  origin = a4._rect.origin;
  v9 = objc_msgSend_mergeOwner(self->super._baseTableModel, a3, *&a4._rect.origin, *&a4._rect.size, v4);
  if (objc_msgSend_hasMergeRanges(v9, v10, v11, v12, v13))
  {
    v16 = objc_msgSend_baseCellRegionForViewCellRect_(self, v14, origin, size, v15);
    if (objc_msgSend_isValid(v16, v17, v18, v19, v20))
    {
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x4812000000;
      v28[3] = sub_2214BBD54;
      v28[4] = sub_2214BBD78;
      v28[5] = &unk_22188E88F;
      v30 = 0;
      v31 = 0;
      __p = 0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_2214BBD90;
      v25[3] = &unk_2784611A8;
      v26 = v9;
      v27 = v28;
      objc_msgSend_enumerateModelCellRectsUsingBlock_(v16, v21, v25, v22, v23);
      TSUViewCellRectVectorFromModelCellRectVector();

      _Block_object_dispose(v28, 8);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)isValidMergeRange:(TSUViewCellRect)a3
{
  rect = a3._rect;
  v40.origin = objc_msgSend_bodyRowRange(self->super._tableInfo, a2, *&a3._rect.origin, *&a3._rect.size, v3);
  v40.size = v5;
  v6 = TSUCellRect::rows(&v40);
  v8 = v7;
  v43.location = TSUCellRect::rows(&rect);
  v43.length = v9;
  v42.location = v6;
  v42.length = v8;
  if (NSIntersectionRange(v42, v43).length && rect.size.numberOfRows > 1)
  {
    return 0;
  }

  v10 = TSUCellRect::firstColumn(&rect);
  if (v10 == objc_msgSend_categoryColumnIndex(self->super._tableInfo, v11, v12, v13, v14))
  {
    return 0;
  }

  v18 = objc_msgSend_baseCellRegionForViewCellRect_(self, v15, *&rect.origin, *&rect.size, v16);
  if (objc_msgSend_isValid(v18, v19, v20, v21, v22) && objc_msgSend_isRectangle(v18, v23, v24, v25, v26))
  {
    v31 = objc_msgSend_mergeOwner(self->super._baseTableModel, v27, v28, v29, v30);
    v36 = objc_msgSend_boundingModelCellRect(v18, v32, v33, v34, v35);
    isValidMergeRange = objc_msgSend_isValidMergeRange_(v31, v37, v36, v37, v38);
  }

  else
  {
    isValidMergeRange = 0;
  }

  return isValidMergeRange;
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214BC210;
  v8[3] = &unk_2784663A0;
  v8[4] = self;
  v8[5] = &v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2214BC2E4;
  v7[3] = &unk_2784663C8;
  v7[4] = self;
  v7[5] = &v9;
  v5[5] = &v9;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214BC42C;
  v6[3] = &unk_2784663F0;
  v6[4] = self;
  v6[5] = &v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214BC524;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toLabelUsingBlock_toCategoryColumnUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v8, v7, v6, v5);
  v3 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (TSUModelCellCoord)summaryCellCoordForCellUID:(const TSKUIDStructCoord *)a3
{
  v6 = objc_msgSend_summaryMap(self, a2, a3, v3, v4);
  row = a3->_row;
  v13[0] = a3->_column;
  v13[1] = row;
  v11 = objc_msgSend_cellIDForCellUID_(v6, v8, v13, v9, v10);

  return v11;
}

- (TSUCellCoord)baseCoordFromViewCoord:(TSUCellCoord)a3
{
  v6 = objc_msgSend_coordinateMapper(self, a2, *&a3, v3, v4);
  v10 = objc_msgSend_baseCellCoordForViewCellCoord_(v6, v7, *&a3, v8, v9);

  return v10;
}

- (BOOL)hasCommentAtCellID:(TSUViewCellCoord)a3
{
  v6 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, v3, v4);
  baseTableModel = self->super._baseTableModel;

  return MEMORY[0x2821F9670](baseTableModel, sel_hasCommentAtBaseCellCoord_, v6, v7, v8);
}

- (int)insertColumnsAtIndex:(TSUViewColumnIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6
{
  v14 = a5;
  if (a6 == 1)
  {
    goto LABEL_8;
  }

  if (a6 == 3)
  {
    v80.origin = objc_msgSend_headerColumnRange(self->super._tableInfo, v10, v11, v12, v13);
    v80.size = v15;
    v16 = TSUCellRect::columns(&v80);
    if (a3.var0 >= v16 && a3.var0 - v16 < v10)
    {
      goto LABEL_8;
    }

    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator insertColumnsAtIndex:uids:metadatas:tableArea:]", v12, v13);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 2341, 0, "Categories: destination column is not in the header");
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryTranslator insertColumnsAtIndex:uids:metadatas:tableArea:]", v12, v13);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v18, v22, 2343, 0, "Categories: table area should be body");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
LABEL_8:
  if (objc_msgSend_numberOfColumns(self, v10, v11, v12, v13) == a3.var0)
  {
    v37 = objc_msgSend_numberOfColumns(self->super._baseTableModel, v33, v34, v35, v36);
    v42 = objc_msgSend_summaryModel(self->super._tableInfo, v38, v39, v40, v41);
    v47 = objc_msgSend_numberOfColumns(v42, v43, v44, v45, v46);
  }

  else
  {
    v37 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v33, a3.var0, v35, v36);
    v47 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v49, a3.var0, v50, v51);
  }

  inserted = objc_msgSend_insertColumnsAtIndex_uids_metadatas_tableArea_(self->super._baseTableModel, v48, v37, a4, v14, a6);
  v57 = objc_msgSend_summaryModel(self, v53, v54, v55, v56);
  v60 = objc_msgSend_insertColumnsAtIndex_metadatas_(v57, v58, v47, v14, v59);

  if (objc_msgSend_withinGroupingChangesBatch(self, v61, v62, v63, v64))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {
    objc_msgSend_resetViewMap(self, v65, v66, v67, v68);
  }

  v69 = objc_msgSend_groupByForRows(self, v65, v66, v67, v68);
  objc_msgSend_rebuildAllAggFormulas(v69, v70, v71, v72, v73);
  objc_msgSend_didChangeGroupByStructure(v69, v74, v75, v76, v77);
  if (inserted)
  {
    v78 = inserted;
  }

  else
  {
    v78 = v60;
  }

  return v78;
}

- (int)insertRowsAtIndex:(TSUViewRowIndex)a3 uids:(const void *)a4 metadatas:(id)a5 tableArea:(unint64_t)a6 unsetFilterHidingAction:(BOOL)a7
{
  v7 = a7;
  v10 = *&a3.var0;
  v16 = a5;
  if (a6 == 1)
  {
    goto LABEL_12;
  }

  if (a6 != 4)
  {
    if (a6 == 2)
    {
      v96.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v12, v13, v14, v15);
      v96.size = v17;
      v18 = TSUCellRect::rows(&v96);
      if (v10 < v18 || (v23 = v10, v10 - v18 >= v19))
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v21, v22);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v27, v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 2376, 0, "Categories: destination row is not in the actual header");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
        v23 = v10;
      }

      goto LABEL_13;
    }

    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v14, v15);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v60, v61);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v63, v58, v62, 2382, 0, "Categories: table area should be body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
LABEL_12:
    v68 = objc_msgSend_numberOfRows(self->super._baseTableModel, v12, v13, v14, v15);
    v23 = v68 - objc_msgSend_numberOfFooterRows(self->super._baseTableModel, v69, v70, v71, v72);
    goto LABEL_13;
  }

  v96.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v12, v13, v14, v15);
  v96.size = v35;
  v36 = TSUCellRect::rows(&v96);
  if (v10 < v36 || v10 - v36 >= v37)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTCategoryTranslator insertRowsAtIndex:uids:metadatas:tableArea:unsetFilterHidingAction:]", v39, v40);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryTranslator.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 2379, 0, "Categories: destination row is not in the footer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }

  v52 = objc_msgSend_numberOfRows(self->super._baseTableModel, v37, v38, v39, v40);
  v23 = v52 + v10 - objc_msgSend_numberOfRows(self->super._tableInfo, v53, v54, v55, v56);
LABEL_13:
  v73 = objc_msgSend_viewMap(self, v19, v20, v21, v22);
  v96.origin = objc_msgSend_rowUIDForRowIndex_(v73, v74, v10, v75, v76);
  v96.size = v77;

  v82 = objc_msgSend_categoryOrder(self->super._tableInfo, v78, v79, v80, v81);
  objc_msgSend_insertRowUids_beforeUid_(v82, v83, a4, &v96, v84);

  inserted = objc_msgSend_insertRowsAtIndex_uids_metadatas_tableArea_unsetFilterHidingAction_(self->super._baseTableModel, v85, v23, a4, v16, a6, v7);
  if (objc_msgSend_withinGroupingChangesBatch(self, v87, v88, v89, v90))
  {
    self->_sawGroupingChangeNeedingReset = 1;
  }

  else
  {
    objc_msgSend_resetViewMap(self, v91, v92, v93, v94);
  }

  return inserted;
}

- (unint64_t)numberOfPopulatedCells
{
  v6 = objc_msgSend_numberOfPopulatedCells(self->super._baseTableModel, a2, v2, v3, v4);
  v11 = objc_msgSend_summaryModel(self->super._tableInfo, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfPopulatedCells(v11, v12, v13, v14, v15);

  return v16 + v6;
}

- (id)allRichTextStorages
{
  v6 = objc_msgSend_allRichTextStorages(self->super._baseTableModel, a2, v2, v3, v4);
  v11 = objc_msgSend_summaryModel(self->super._tableInfo, v7, v8, v9, v10);
  v16 = objc_msgSend_allRichTextStorages(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_setByAddingObjectsFromSet_(v6, v17, v16, v18, v19);

  return v20;
}

- (id)populatedCategoryGroupLevelsInColumn:(TSUViewColumnIndex)a3
{
  objc_msgSend_columnUIDForViewColumnIndex_(self, a2, a3.var0, v3, v4);
  v10 = objc_msgSend_maxRowLevel(self, v6, v7, v8, v9);
  v19 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14);
  if (v10)
  {
    for (i = 1; i <= v10; ++i)
    {
      v21 = objc_msgSend_summaryCellVendor(self, v15, v16, v17, v18);
      sub_2211A8F64(i, 0, v34);
      v25 = objc_msgSend_cellAtCellUID_(v21, v22, v34, v23, v24);

      if (objc_msgSend_hasFormula(v25, v26, v27, v28, v29))
      {
        objc_msgSend_addIndex_(v19, v30, i, v31, v32);
      }
    }
  }

  return v19;
}

- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)a3
{
  v5 = *&a3.var0;
  if (!objc_msgSend_isSummaryRow_(self, a2, *&a3.var0, v3, v4))
  {
    return -1;
  }

  v11 = objc_msgSend_viewMap(self, v7, v8, v9, v10);
  v15 = objc_msgSend_rowUIDForRowIndex_(v11, v12, v5, v13, v14);
  v17 = v16;

  v22 = objc_msgSend_groupByForRows(self, v18, v19, v20, v21);

  return objc_msgSend_groupLevelForGroupUid_(v22, v23, v15, v17, v24);
}

- (unsigned)groupLevelAtLabelRow:(TSUViewRowIndex)a3
{
  v5 = *&a3.var0;
  if (!objc_msgSend_isLabelRow_(self, a2, *&a3.var0, v3, v4))
  {
    return -1;
  }

  v11 = objc_msgSend_viewMap(self, v7, v8, v9, v10);
  v15 = objc_msgSend_rowUIDForRowIndex_(v11, v12, v5, v13, v14);
  v17 = v16;

  if (!sub_2211A8E20(v15, v17))
  {
    return -1;
  }

  v22 = objc_msgSend_groupByForRows(self, v18, v19, v20, v21);
  v23 = sub_2211A8DC8(v15, v17);
  v26 = objc_msgSend_groupLevelForGroupUid_(v22, v24, v23, v24, v25);
  if (((v26 + 1) & 0x100) != 0)
  {
    return -1;
  }

  else
  {
    return v26 + 1;
  }
}

- (id)allRowGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v8 = objc_msgSend_groupByForRows(self, v4, v5, v6, v7);
  v13 = objc_msgSend_minRowLevel(self, v9, v10, v11, v12);
  v18 = objc_msgSend_maxRowLevel(self, v14, v15, v16, v17);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2214BD1DC;
  v22[3] = &unk_27845FA48;
  v19 = v3;
  v23 = v19;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v8, v20, v13, v18, v22);

  return v19;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v14 = objc_msgSend_groupByForRows(self, v10, v11, v12, v13);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2214BD384;
  v23[3] = &unk_27845D948;
  v24 = v14;
  v25 = self;
  v15 = v9;
  v26 = v15;
  v16 = v14;
  objc_msgSend_foreachUuid_(v4, v17, v23, v18, v19);
  v20 = v26;
  v21 = v15;

  return v15;
}

- (void)addReceiverToGroupBy:(id)a3
{
  v9 = objc_msgSend_groupByChangeDistributor(a3, a2, a3, v3, v4);
  objc_msgSend_addReceiverIfMissing_(v9, v6, self, v7, v8);
}

- (void)flushCachedIndexSets
{
  self->_cachedIndexSetsAreValid = 0;
  os_unfair_lock_lock(&self->_cachedIndexesUnfairLock);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;
  self->_cachedIndexesForSummaryRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedSummaryRowIndexesAtLevels, v4, v5, v6, v7);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;
  self->_cachedIndexesForLabelRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLabelRowIndexesAtLevels, v9, v10, v11, v12);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;
  self->_cachedIndexesForSummaryAndLabelRows = 0;

  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;
  self->_cachedIndexesForLeadingRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingRowIndexesAtLevels, v15, v16, v17, v18);
  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;
  self->_cachedIndexesForLeadingSummaryRows = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingSummaryRowIndexesAtLevels, v20, v21, v22, v23);
  os_unfair_lock_unlock(&self->_cachedIndexesUnfairLock);
  v24.receiver = self;
  v24.super_class = TSTCategoryTranslator;
  [(TSTTableTranslator *)&v24 flushCachedIndexSets];
}

- (id)indexesForSummaryRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;

  return cachedIndexesForSummaryRows;
}

- (id)indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForSummaryRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = objc_msgSend_i_indexesForSummaryRowsAtGroupLevel_(self, v3, v7, v4, v5);
    cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
    v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v10, v7, v11, v12);
    objc_msgSend_setObject_forKey_(cachedSummaryRowIndexesAtLevels, v14, v8, v13, v15);

    if (v6)
    {
      v19 = objc_msgSend_tsu_indexSetByAddingIndexes_(v6, v16, v8, v17, v18);

      v6 = v19;
    }

    else
    {
      v6 = v8;
    }

    v20 = v7++;
  }

  while (v20 < 5);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;
  self->_cachedIndexesForSummaryRows = v6;
}

- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  if (v3 && objc_msgSend_numberOfRowLevels(self, v9, v10, v11, v12) >= v3)
  {
    v14 = objc_msgSend_viewMap(self, v9, v10, v11, v12);
    v19 = objc_msgSend_groupByForRows(self->super._tableInfo, v15, v16, v17, v18);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_2214BD950;
    v28 = &unk_278466418;
    v20 = v14;
    v29 = v20;
    v30 = v13;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v19, v21, v3, &v25, v22);
  }

  v23 = objc_msgSend_copy(v13, v9, v10, v11, v12, v25, v26, v27, v28);

  return v23;
}

- (id)indexesForLabelRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;

  return cachedIndexesForLabelRows;
}

- (id)indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedLabelRowIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForLabelRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = objc_msgSend_i_indexesForLabelRowsAtGroupLevel_(self, v3, v7, v4, v5);
    cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
    v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v10, v7, v11, v12);
    objc_msgSend_setObject_forKey_(cachedLabelRowIndexesAtLevels, v14, v8, v13, v15);

    if (v6)
    {
      v19 = objc_msgSend_tsu_indexSetByAddingIndexes_(v6, v16, v8, v17, v18);

      v6 = v19;
    }

    else
    {
      v6 = v8;
    }

    v20 = v7++;
  }

  while (v20 < 5);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;
  self->_cachedIndexesForLabelRows = v6;
}

- (id)i_indexesForLabelRowsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v9 = objc_msgSend_groupByForRows(self->super._tableInfo, v5, v6, v7, v8);
  v14 = objc_msgSend_summaryModel(self->super._tableInfo, v10, v11, v12, v13);
  v18 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v14, v15, v3, v16, v17);
  v21 = objc_msgSend_labelRowUIDSetForCategoryLevel_labelRowVisibility_(v9, v19, v3, v18, v20);

  v30 = objc_msgSend_viewMap(self, v22, v23, v24, v25);
  if (v21)
  {
    objc_msgSend_uuidsAsVector(v21, v26, v27, v28, v29);
  }

  else
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
  }

  v31 = objc_msgSend_rowIndexesForUIDs_(v30, v26, &__p, v28, v29);
  v36 = v31;
  if (v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v32, v33, v34, v35);
  }

  v38 = v37;

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v38;
}

- (BOOL)isSummaryRow:(unsigned int)a3
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&a3, v3, v4);
  cachedIndexesForSummaryRows = self->_cachedIndexesForSummaryRows;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryRows, v7, a3, v8, v9);
}

- (BOOL)isLabelRow:(unsigned int)a3
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&a3, v3, v4);
  cachedIndexesForLabelRows = self->_cachedIndexesForLabelRows;

  return objc_msgSend_containsIndex_(cachedIndexesForLabelRows, v7, a3, v8, v9);
}

- (BOOL)isSummaryOrLabelRow:(unsigned int)a3
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, *&a3, v3, v4);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryAndLabelRows, v7, a3, v8, v9);
}

- (id)indexesForSummaryAndLabelRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;

  return cachedIndexesForSummaryAndLabelRows;
}

- (void)i_populateIndexesForSummaryAndLabelRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v6 = objc_msgSend_tsu_indexSetByAddingIndexes_(self->_cachedIndexesForSummaryRows, v3, self->_cachedIndexesForLabelRows, v4, v5);
  cachedIndexesForSummaryAndLabelRows = self->_cachedIndexesForSummaryAndLabelRows;
  self->_cachedIndexesForSummaryAndLabelRows = v6;
}

- (id)indexesForLeadingRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;

  return cachedIndexesForLeadingRows;
}

- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedLeadingRowIndexesAtLevels = self->_cachedLeadingRowIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedLeadingRowIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForLeadingRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v31 = objc_opt_new();
  for (i = 0; objc_msgSend_maxRowLevel(self, v3, v4, v5, v6) >= i; ++i)
  {
    v12 = objc_msgSend_i_indexesForLeadingRowsAtGroupLevel_(self, v8, i, v10, v11);
    cachedLeadingRowIndexesAtLevels = self->_cachedLeadingRowIndexesAtLevels;
    v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v14, i, v15, v16);
    objc_msgSend_setObject_forKey_(cachedLeadingRowIndexesAtLevels, v18, v12, v17, v19);

    objc_msgSend_addIndexes_(v31, v20, v12, v21, v22);
  }

  v23 = objc_msgSend_copy(v31, v8, v9, v10, v11);
  cachedIndexesForLeadingRows = self->_cachedIndexesForLeadingRows;
  self->_cachedIndexesForLeadingRows = v23;

  v28 = objc_msgSend_i_indexesForLeadingRowsAtGroupLevel_(self, v25, 255, v26, v27);
  objc_msgSend_setObject_forKey_(self->_cachedLeadingRowIndexesAtLevels, v29, v28, &unk_28350EB90, v30);
}

- (id)i_indexesForLeadingRowsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v9 = objc_msgSend_pivotOwner(self->super._tableInfo, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    v15 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v9, v10, v3, v12, v13);
    v20 = objc_msgSend_copy(v15, v16, v17, v18, v19);

    v21 = 0;
  }

  else
  {
    v22 = MEMORY[0x277CCAB58];
    v73.origin = objc_msgSend_bodyRowRange(self->super._tableInfo, v10, v11, v12, v13);
    v73.size = v23;
    v24 = TSUCellRect::rows(&v73);
    v27 = objc_msgSend_indexSetWithIndexesInRange_(v22, v25, v24, v25, v26);
    v36 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v28, v29, v30, v31);
    if (v3 == 255)
    {
      Index = objc_msgSend_firstIndex(v27, v32, v33, v34, v35);
      objc_msgSend_addIndex_(v36, v66, Index, v67, v68);
    }

    else if (objc_msgSend_maxRowLevel(self, v32, v33, v34, v35) >= v3)
    {
      v70 = v36;
      v40 = 0;
      do
      {
        cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
        v42 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v37, v40, v38, v39, v70);
        v46 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v43, v42, v44, v45);
        objc_msgSend_removeIndexes_(v27, v47, v46, v48, v49);

        cachedLabelRowIndexesAtLevels = self->_cachedLabelRowIndexesAtLevels;
        v54 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v51, v40, v52, v53);
        v58 = objc_msgSend_objectForKey_(cachedLabelRowIndexesAtLevels, v55, v54, v56, v57);
        objc_msgSend_removeIndexes_(v27, v59, v58, v60, v61);

        ++v40;
      }

      while (v3 >= v40);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_2214BE3D8;
      v71[3] = &unk_27845E1D0;
      v36 = v70;
      v72 = v70;
      objc_msgSend_enumerateRangesUsingBlock_(v27, v62, v71, v63, v64);
    }

    v20 = v36;

    v21 = v20;
  }

  return v20;
}

- (id)indexesForLeadingSummaryRows
{
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;

  return cachedIndexesForLeadingSummaryRows;
}

- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populateCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedLeadingSummaryRowIndexesAtLevels = self->_cachedLeadingSummaryRowIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedLeadingSummaryRowIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForLeadingSummaryRows
{
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v7 = 0;
  v8 = 0;
  while (objc_msgSend_maxRowLevel(self, v3, v4, v5, v6) >= v7)
  {
    v12 = objc_msgSend_i_indexesForLeadingSummaryRowsAtGroupLevel_(self, v9, v7, v10, v11);
    cachedLeadingSummaryRowIndexesAtLevels = self->_cachedLeadingSummaryRowIndexesAtLevels;
    v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v14, v7, v15, v16);
    objc_msgSend_setObject_forKey_(cachedLeadingSummaryRowIndexesAtLevels, v18, v12, v17, v19);

    if (v8)
    {
      v23 = objc_msgSend_tsu_indexSetByAddingIndexes_(v8, v20, v12, v21, v22);

      v8 = v23;
    }

    else
    {
      v8 = v12;
    }

    ++v7;
  }

  cachedIndexesForLeadingSummaryRows = self->_cachedIndexesForLeadingSummaryRows;
  self->_cachedIndexesForLeadingSummaryRows = v8;
}

- (id)i_indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_cachedIndexesUnfairLock);
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  cachedSummaryRowIndexesAtLevels = self->_cachedSummaryRowIndexesAtLevels;
  v14 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v11, v3, v12, v13);
  v18 = objc_msgSend_objectForKey_(cachedSummaryRowIndexesAtLevels, v15, v14, v16, v17);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2214BE734;
  v29[3] = &unk_27845E1D0;
  v19 = v9;
  v30 = v19;
  objc_msgSend_enumerateRangesUsingBlock_(v18, v20, v29, v21, v22);
  v27 = objc_msgSend_copy(v19, v23, v24, v25, v26);

  return v27;
}

- (void)i_populateCachedIndexSetsIfNeeded
{
  if (!self->_cachedIndexSetsAreValid)
  {
    os_unfair_lock_lock(&self->_cachedIndexesUnfairLock);
    if (!self->_cachedIndexSetsAreValid)
    {
      objc_msgSend_i_populateIndexesForSummaryRows(self, v3, v4, v5, v6);
      objc_msgSend_i_populateIndexesForLabelRows(self, v7, v8, v9, v10);
      objc_msgSend_i_populateIndexesForSummaryAndLabelRows(self, v11, v12, v13, v14);
      objc_msgSend_i_populateIndexesForLeadingRows(self, v15, v16, v17, v18);
      objc_msgSend_i_populateIndexesForLeadingSummaryRows(self, v19, v20, v21, v22);
      self->_cachedIndexSetsAreValid = 1;
    }

    os_unfair_lock_unlock(&self->_cachedIndexesUnfairLock);
  }
}

- (BOOL)checkMapsAndAssert:(BOOL)a3
{
  v6 = objc_msgSend_baseMap(self, a2, a3, v3, v4);
  isEmpty = objc_msgSend_isEmpty(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_summaryMap(self, v12, v13, v14, v15);
  v21 = objc_msgSend_isEmpty(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_viewMap(self, v22, v23, v24, v25);
  v31 = objc_msgSend_isEmpty(v26, v27, v28, v29, v30);

  v32 = [TSCEUIDSet alloc];
  v37 = objc_msgSend_baseMap(self, v33, v34, v35, v36);
  v42 = objc_msgSend_rowUIDs(v37, v38, v39, v40, v41);
  v242 = objc_msgSend_initWithUUIDVector_(v32, v43, v42, v44, v45);

  v46 = [TSCEUIDSet alloc];
  v51 = objc_msgSend_viewMap(self, v47, v48, v49, v50);
  v56 = objc_msgSend_rowUIDs(v51, v52, v53, v54, v55);
  v243 = objc_msgSend_initWithUUIDVector_(v46, v57, v56, v58, v59);

  v60 = [TSCEUIDSet alloc];
  v65 = objc_msgSend_summaryMap(self, v61, v62, v63, v64);
  v70 = objc_msgSend_rowUIDs(v65, v66, v67, v68, v69);
  v241 = objc_msgSend_initWithUUIDVector_(v60, v71, v70, v72, v73);

  v74 = objc_opt_new();
  v79 = objc_msgSend_groupByForRows(self, v75, v76, v77, v78, v74);
  v240 = objc_msgSend_labelRowUIDSet(v79, v80, v81, v82, v83);

  v88 = objc_msgSend_groupByForRows(self, v84, v85, v86, v87);
  v89 = isEmpty;
  v94 = objc_msgSend_maxRowLevel(self, v90, v91, v92, v93);
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = sub_2214BF044;
  v262[3] = &unk_27845FA48;
  v95 = v74;
  v263 = v95;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v88, v96, 1, v94, v262);

  v101 = objc_msgSend_allRowGroupUIDs(self->super._tableInfo, v97, v98, v99, v100);
  v105 = objc_msgSend_setByUnionWithSet_(v242, v102, v101, v103, v104);
  v110 = objc_msgSend_baseMap(self, v106, v107, v108, v109);
  v257.origin = objc_msgSend_headerRowRange(self->super._baseTableModel, v111, v112, v113, v114);
  v257.size = v115;
  v116 = TSUCellRect::rows(&v257);
  if (v110)
  {
    objc_msgSend_rowUIDsForRowRange_(v110, v117, v116, v117, v118);
  }

  else
  {
    v259 = 0;
    v260 = 0;
    v261 = 0;
  }

  v123 = objc_msgSend_viewMap(self, v119, v120, v121, v122);
  v255.origin = objc_msgSend_headerRowRange(self->super._tableInfo, v124, v125, v126, v127);
  v255.size = v128;
  v129 = TSUCellRect::rows(&v255);
  if (v123)
  {
    objc_msgSend_rowUIDsForRowRange_(v123, v130, v129, v130, v131);
  }

  else
  {
    v257.origin = 0;
    v257.size = 0;
    v258 = 0;
  }

  v136 = objc_msgSend_baseMap(self, v132, v133, v134, v135);
  v253.origin = objc_msgSend_footerRowRange(self->super._baseTableModel, v137, v138, v139, v140);
  v253.size = v141;
  v142 = TSUCellRect::rows(&v253);
  if (v136)
  {
    objc_msgSend_rowUIDsForRowRange_(v136, v143, v142, v143, v144);
  }

  else
  {
    v255.origin = 0;
    v255.size = 0;
    v256 = 0;
  }

  v149 = objc_msgSend_viewMap(self, v145, v146, v147, v148);
  v251.origin = objc_msgSend_footerRowRange(self->super._tableInfo, v150, v151, v152, v153);
  v251.size = v154;
  v155 = TSUCellRect::rows(&v251);
  if (v149)
  {
    objc_msgSend_rowUIDsForRowRange_(v149, v156, v155, v156, v157);
  }

  else
  {
    v253.origin = 0;
    v253.size = 0;
    v254 = 0;
  }

  v162 = objc_msgSend_mutableCopy(v105, v158, v159, v160, v161);
  objc_msgSend_addUuidsFromSet_(v162, v163, v240, v164, v165);
  objc_msgSend_addUuidsFromVector_(v162, v166, &v259, v167, v168);
  objc_msgSend_addUuidsFromVector_(v162, v169, &v255, v170, v171);
  isSubsetOf = objc_msgSend_isSubsetOf_(v105, v172, v243, v173, v174);
  isEqual = objc_msgSend_isEqual_(v241, v176, v95, v177, v178);
  v183 = v259;
  origin = v257.origin;
  if (v260 - v259 == *&v257.size - *&v257.origin)
  {
    v185 = isEqual & ((v31 | v21 | v89) ^ 1) & isSubsetOf;
    while (v183 != v260)
    {
      if (*v183 != *origin || v183[1] != origin[1])
      {
        goto LABEL_22;
      }

      v183 += 2;
      origin += 2;
    }
  }

  else
  {
LABEL_22:
    v185 = 0;
  }

  v187 = v255.origin;
  v188 = v253.origin;
  if (*&v255.size - *&v255.origin == *&v253.size - *&v253.origin)
  {
    while (v187 != *&v255.size)
    {
      if (*v187 != *v188 || v187[1] != v188[1])
      {
        goto LABEL_31;
      }

      v187 += 2;
      v188 += 2;
    }
  }

  else
  {
LABEL_31:
    v185 = 0;
  }

  v190 = objc_msgSend_isEqual_(v162, v180, v243, v181, v182);
  v195 = objc_msgSend_baseMap(self, v191, v192, v193, v194);
  v200 = objc_msgSend_columnUIDs(v195, v196, v197, v198, v199);
  v251.origin = 0;
  v251.size = 0;
  v252 = 0;
  sub_221086EBC(&v251, *v200, v200[1], (v200[1] - *v200) >> 4);

  v205 = objc_msgSend_viewMap(self, v201, v202, v203, v204);
  v210 = objc_msgSend_columnUIDs(v205, v206, v207, v208, v209);
  v248 = 0;
  v249 = 0;
  v250 = 0;
  sub_221086EBC(&v248, *v210, v210[1], (v210[1] - *v210) >> 4);

  strcpy(&v247, "category column");
  __p = 0;
  v245 = 0;
  v246 = 0;
  sub_221086EBC(&__p, *&v251.origin, *&v251.size, (*&v251.size - *&v251.origin) >> 4);
  sub_22129CE20(&__p, __p, &v247);
  v211 = v248;
  v212 = __p;
  if (v249 - v248 == v245 - __p)
  {
    v213 = v190 & v185;
    while (v211 != v249)
    {
      if (*v211 != *v212 || v211[1] != v212[1])
      {
        goto LABEL_41;
      }

      v211 += 2;
      v212 += 2;
    }
  }

  else
  {
LABEL_41:
    v213 = 0;
  }

  v215 = [TSCEUIDSet alloc];
  v220 = objc_msgSend_summaryMap(self, v216, v217, v218, v219);
  v225 = objc_msgSend_columnUIDs(v220, v221, v222, v223, v224);
  v229 = objc_msgSend_initWithUUIDVector_(v215, v226, v225, v227, v228);

  v230 = [TSCEUIDSet alloc];
  v234 = objc_msgSend_initWithUUIDVector_(v230, v231, &__p, v232, v233);
  v238 = objc_msgSend_isEqual_(v229, v235, v234, v236, v237);

  if (__p)
  {
    v245 = __p;
    operator delete(__p);
  }

  if (v248)
  {
    v249 = v248;
    operator delete(v248);
  }

  if (v251.origin)
  {
    v251.size = v251.origin;
    operator delete(*&v251.origin);
  }

  if (v253.origin)
  {
    v253.size = v253.origin;
    operator delete(*&v253.origin);
  }

  if (v255.origin)
  {
    v255.size = v255.origin;
    operator delete(*&v255.origin);
  }

  if (v257.origin)
  {
    v257.size = v257.origin;
    operator delete(*&v257.origin);
  }

  if (v259)
  {
    v260 = v259;
    operator delete(v259);
  }

  return v238 & v213;
}

@end