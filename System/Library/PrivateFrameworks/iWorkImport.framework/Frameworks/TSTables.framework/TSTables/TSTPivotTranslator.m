@interface TSTPivotTranslator
- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)a3;
- (BOOL)isSummaryColumn:(unsigned __int16)a3;
- (TSTPivotOwner)pivotOwner;
- (TSTPivotTranslator)initWithTableInfo:(id)a3;
- (TSUViewColumnIndex)numberOfGrandTotalColumns;
- (TSUViewRowIndex)numberOfFooterOrGrandTotalRows;
- (double)heightOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)aggregateFormulaOwner;
- (id)allColumnGroupUIDs;
- (id)allRowGroupUIDs;
- (id)cellRegionForTableStyleArea:(unint64_t)a3;
- (id)cellStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (id)coordinateMapper;
- (id)defaultCellStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)defaultTextStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5;
- (id)groupByForColumns;
- (id)groupByForRows;
- (id)groupBySet;
- (id)i_indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForColumnsContainedByGroupUIDs:(id)a3;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)indexesForRowsContainedByGroupUIDs:(id)a3;
- (id)indexesForSummaryColumns;
- (id)indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)a3;
- (id)metadataForColumnIndex:(TSUViewColumnIndex)a3;
- (id)peerCellRegionForCellRegion:(id)a3;
- (id)summaryCellVendor;
- (id)textStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4;
- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4;
- (int)getCell:(id)a3 atCellID:(TSUViewCellCoord)a4 suppressCellBorder:(BOOL)a5;
- (int)getDefaultCell:(id)a3 forCellUID:(const TSKUIDStructCoord *)a4;
- (int)getValue:(id *)a3 atCellID:(TSUViewCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5;
- (int)p_applyViewCellCoord:(TSUViewCellCoord)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5;
- (unint64_t)aggregateIndexForColumnIndex:(TSUViewColumnIndex)a3;
- (unint64_t)aggregateIndexForRowIndex:(TSUViewRowIndex)a3;
- (unint64_t)numberOfColumnLevels;
- (unint64_t)numberOfRowLevels;
- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)a3;
- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3;
- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)a3;
- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)a3;
- (unsigned)columnAggregateGroupSize;
- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)a3 outAggregateIndex:(unint64_t *)a4;
- (unsigned)groupLevelAtSummaryColumn:(TSUViewColumnIndex)a3;
- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)a3;
- (unsigned)maxColumnLevel;
- (unsigned)maxRowLevel;
- (unsigned)maxVisibleColumnLevel;
- (unsigned)maxVisibleRowLevel;
- (unsigned)p_columnRowTypeForColumnIndex:(TSUViewColumnIndex)a3;
- (unsigned)p_columnRowTypeForRowIndex:(TSUViewRowIndex)a3;
- (unsigned)rowAggregateGroupSize;
- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)a3 outAggregateIndex:(unint64_t *)a4;
- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7;
- (void)flushCachedIndexSets;
- (void)i_populateIndexesForLeadingColumns;
- (void)i_populateIndexesForLeadingSummaryColumns;
- (void)i_populateIndexesForSummaryColumns;
- (void)i_populatePivotCachedIndexSetsIfNeeded;
- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6;
- (void)p_applyViewRowIndex:(TSUViewRowIndex)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6;
- (void)resetViewMap;
- (void)resetViewMapAndNotify;
- (void)setHeight:(double)a3 ofRowAtIndex:(TSUViewRowIndex)a4;
- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4;
@end

@implementation TSTPivotTranslator

- (TSTPivotTranslator)initWithTableInfo:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TSTPivotTranslator;
  v9 = [(TSTCategoryTranslator *)&v25 initWithTableInfo:v4];
  if (v9)
  {
    v10 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v5, v6, v7, v8);
    cachedSummaryColumnIndexesAtLevels = v9->_cachedSummaryColumnIndexesAtLevels;
    v9->_cachedSummaryColumnIndexesAtLevels = v10;

    v16 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v12, v13, v14, v15);
    cachedLeadingColumnIndexesAtLevels = v9->_cachedLeadingColumnIndexesAtLevels;
    v9->_cachedLeadingColumnIndexesAtLevels = v16;

    v22 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v18, v19, v20, v21);
    cachedLeadingSummaryColumnIndexesAtLevels = v9->_cachedLeadingSummaryColumnIndexesAtLevels;
    v9->_cachedLeadingSummaryColumnIndexesAtLevels = v22;

    v9->_cachedPivotIndexSetsAreValid = 0;
    v9->_pivotCachedIndexesUnfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v9;
}

- (TSTPivotOwner)pivotOwner
{
  v5 = objc_msgSend_baseTableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pivotOwner(v5, v6, v7, v8, v9);

  return v10;
}

- (id)groupBySet
{
  v5 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBySet(v5, v6, v7, v8, v9);

  return v10;
}

- (id)groupByForRows
{
  v5 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBySet(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_groupByForRowGroups(v10, v11, v12, v13, v14);

  return v15;
}

- (id)groupByForColumns
{
  v5 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBySet(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_groupByForColumnGroups(v10, v11, v12, v13, v14);

  return v15;
}

- (unint64_t)numberOfRowLevels
{
  v5 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBySet(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_rowGroupings(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_count(v15, v16, v17, v18, v19);

  return v20;
}

- (unint64_t)numberOfColumnLevels
{
  v5 = objc_msgSend_pivotOwner(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_groupBySet(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_columnGroupings(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_count(v15, v16, v17, v18, v19);

  return v20;
}

- (unsigned)maxRowLevel
{
  v5 = objc_msgSend_numberOfRowLevels(self, a2, v2, v3, v4);
  v6 = v5 - 1;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

- (unsigned)maxColumnLevel
{
  v5 = objc_msgSend_numberOfColumnLevels(self, a2, v2, v3, v4);
  v6 = v5 - 1;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

- (unsigned)maxVisibleRowLevel
{
  v6 = objc_msgSend_numberOfRowLevels(self, a2, v2, v3, v4);
  v11 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v7, v8, v9, v10);
  hasHiddenColumnsOrRows = objc_msgSend_hasHiddenColumnsOrRows(v11, v12, v13, v14, v15);

  if (hasHiddenColumnsOrRows)
  {
    v66.origin = objc_msgSend_bodyRange(self, v17, v18, v19, v20);
    v66.size = v21;
    v22 = MEMORY[0x277CCAB58];
    v23 = TSUCellRect::rows(&v66);
    v26 = objc_msgSend_indexSetWithIndexesInRange_(v22, v24, v23, v24, v25);
    v31 = objc_msgSend_indexesForSummaryRows(self->super.super._tableInfo, v27, v28, v29, v30);
    objc_msgSend_removeIndexes_(v26, v32, v31, v33, v34);

    v39 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v35, v36, v37, v38);
    v44 = objc_msgSend_hiddenRowIndexes(v39, v40, v41, v42, v43);

    objc_msgSend_removeIndexes_(v26, v45, v44, v46, v47);
    if (!objc_msgSend_count(v26, v48, v49, v50, v51))
    {
      do
      {
        v55 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v52, --v6, v53, v54);
        v59 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v55, v56, v44, v57, v58);

        v64 = objc_msgSend_count(v59, v60, v61, v62, v63);
      }

      while (!v64);
    }
  }

  return v6;
}

- (unsigned)maxVisibleColumnLevel
{
  v6 = objc_msgSend_numberOfColumnLevels(self, a2, v2, v3, v4);
  v11 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v7, v8, v9, v10);
  hasHiddenColumnsOrRows = objc_msgSend_hasHiddenColumnsOrRows(v11, v12, v13, v14, v15);

  if (hasHiddenColumnsOrRows)
  {
    v66.origin = objc_msgSend_bodyRange(self, v17, v18, v19, v20);
    v66.size = v21;
    v22 = MEMORY[0x277CCAB58];
    v23 = TSUCellRect::columns(&v66);
    v26 = objc_msgSend_indexSetWithIndexesInRange_(v22, v24, v23, v24, v25);
    v31 = objc_msgSend_indexesForSummaryColumns(self->super.super._tableInfo, v27, v28, v29, v30);
    objc_msgSend_removeIndexes_(v26, v32, v31, v33, v34);

    v39 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v35, v36, v37, v38);
    v44 = objc_msgSend_hiddenColumnIndexes(v39, v40, v41, v42, v43);

    objc_msgSend_removeIndexes_(v26, v45, v44, v46, v47);
    if (!objc_msgSend_count(v26, v48, v49, v50, v51))
    {
      do
      {
        v55 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v52, --v6, v53, v54);
        v59 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v55, v56, v44, v57, v58);

        v64 = objc_msgSend_count(v59, v60, v61, v62, v63);
      }

      while (!v64);
    }
  }

  return v6;
}

- (id)summaryCellVendor
{
  v5 = objc_msgSend_summaryModel(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_summaryCellVendor(v5, v6, v7, v8, v9);

  return v10;
}

- (id)aggregateFormulaOwner
{
  v5 = objc_msgSend_summaryModel(self->super.super._tableInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_aggregateFormulaOwner(v5, v6, v7, v8, v9);

  return v10;
}

- (void)resetViewMapAndNotify
{
  objc_msgSend_resetViewMap(self, a2, v2, v3, v4);
  v22 = objc_msgSend_threadCollector(MEMORY[0x277D80630], v6, v7, v8, v9);
  v14 = objc_msgSend_range(self->super.super._tableInfo, v10, v11, v12, v13);
  v16 = v15;
  v17 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, v15, 29, v14, v15, v14, v15);
  objc_msgSend_registerChange_details_forChangeSource_(v22, v18, 1, v17, self->super.super._tableInfo);
  v20 = objc_msgSend_changeDescriptorWithType_cellRange_strokeRange_(TSTChangeDescriptor, v19, 7, v14, v16, v14, v16);
  objc_msgSend_registerChange_details_forChangeSource_(v22, v21, 1, v20, self->super.super._tableInfo);
}

- (void)resetViewMap
{
  v6 = objc_msgSend_viewMap(self, a2, v2, v3, v4);
  v11 = objc_msgSend_baseMap(self, v7, v8, v9, v10);

  if (v6 == v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTPivotTranslator resetViewMap]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 234, 0, "view and base cannot be the same for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = self->super.super._tableInfo;
  v31 = objc_msgSend_baseTableModel(v26, v27, v28, v29, v30);
  if (objc_msgSend_isEmptyPivot(v26, v32, v33, v34, v35))
  {
    v40 = objc_msgSend_viewMap(self, v36, v37, v38, v39);
    v45 = objc_msgSend_baseMap(self, v41, v42, v43, v44);
    v50 = objc_msgSend_rowUIDs(v45, v46, v47, v48, v49);
    objc_msgSend_replaceRowsWithUids_(v40, v51, v50, v52, v53);

    v58 = objc_msgSend_viewMap(self, v54, v55, v56, v57);
    v63 = objc_msgSend_baseMap(self, v59, v60, v61, v62);
    v68 = objc_msgSend_columnUIDs(v63, v64, v65, v66, v67);
    objc_msgSend_replaceColumnsWithUids_(v58, v69, v68, v70, v71);
  }

  else
  {
    v72 = objc_msgSend_pivotOwner(v31, v36, v37, v38, v39);
    v58 = objc_msgSend_groupBySet(v72, v73, v74, v75, v76);

    v81 = objc_msgSend_pivotOrder(v26, v77, v78, v79, v80);
    v63 = v81;
    if (v81)
    {
      objc_msgSend_orderedUidsForDimension_(v81, v82, 0, v84, v85);
      objc_msgSend_orderedUidsForDimension_(v63, v86, 1, v87, v88);
    }

    else
    {
      v155 = 0;
      v156 = 0;
      v157 = 0;
      v152 = 0;
      v153 = 0;
      v154 = 0;
    }

    if (objc_msgSend_activeFlatteningDimension(v58, v82, v83, v84, v85))
    {
      v93 = objc_msgSend_viewMap(self, v89, v90, v91, v92);
      objc_msgSend_replaceRowsWithUids_(v93, v94, &v155, v95, v96);
    }

    else
    {
      v101 = objc_msgSend_numberOfHeaderRows(v31, v89, v90, v91, v92);
      __dst = 0;
      v151 = 0;
      __p = 0;
      sub_221086EBC(&__p, v155, v155 + 16 * v101, v101);
      v106 = (v156 - v155) >> 4;
      v107 = v106 - v101;
      if (v106 > v101)
      {
        v108 = 16 * v101;
        do
        {
          v109 = objc_msgSend_rowUidsForRowGroupUid_(v58, v102, v155 + v108, v104, v105);
          sub_2210F0C88(&__p, __dst, *v109, v109[1], (v109[1] - *v109) >> 4);
          v108 += 16;
          --v107;
        }

        while (v107);
      }

      v110 = objc_msgSend_viewMap(self, v102, v103, v104, v105);
      objc_msgSend_replaceRowsWithUids_(v110, v111, &__p, v112, v113);

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }

    if (objc_msgSend_activeFlatteningDimension(v58, v97, v98, v99, v100) == 1)
    {
      v118 = objc_msgSend_numberOfHeaderColumns(v31, v114, v115, v116, v117);
      __dst = 0;
      v151 = 0;
      __p = 0;
      sub_221086EBC(&__p, v152, v152 + 16 * v118, v118);
      v123 = (v153 - v152) >> 4;
      v124 = v123 - v118;
      if (v123 > v118)
      {
        v125 = 16 * v118;
        do
        {
          v126 = objc_msgSend_columnUidsForColumnGroupUid_(v58, v119, v152 + v125, v121, v122);
          sub_2210F0C88(&__p, __dst, *v126, v126[1], (v126[1] - *v126) >> 4);
          v125 += 16;
          --v124;
        }

        while (v124);
      }

      v127 = objc_msgSend_viewMap(self, v119, v120, v121, v122);
      objc_msgSend_replaceColumnsWithUids_(v127, v128, &__p, v129, v130);

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }

    else
    {
      v131 = objc_msgSend_viewMap(self, v114, v115, v116, v117);
      objc_msgSend_replaceColumnsWithUids_(v131, v132, &v152, v133, v134);
    }

    if (v152)
    {
      v153 = v152;
      operator delete(v152);
    }

    if (v155)
    {
      v156 = v155;
      operator delete(v155);
    }
  }

  v139 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v135, v136, v137, v138);
  objc_msgSend_invalidateViewGeometry(v139, v140, v141, v142, v143);

  objc_msgSend_flushCachedIndexSets(self, v144, v145, v146, v147);
  coordMapper = self->super.super._coordMapper;
  self->super.super._coordMapper = 0;
}

- (id)coordinateMapper
{
  coordMapper = self->super.super._coordMapper;
  if (!coordMapper)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->super.super._coordMapper)
    {
      v5 = [TSCECoordMapper alloc];
      v10 = objc_msgSend_tableUID(v4->super.super._tableInfo, v6, v7, v8, v9);
      v15 = objc_msgSend_indexesForSummaryColumns(v4, v11, v12, v13, v14, v10, v11);
      v20 = objc_msgSend_indexesForSummaryRows(v4, v16, v17, v18, v19);
      v22 = objc_msgSend_initWithTableUID_summaryColumns_summaryRows_labelRows_(v5, v21, &v95, v15, v20, 0);

      objc_msgSend_setChromeCoordsAreViewCoords_(v22, v23, 1, v24, v25);
      v30 = objc_msgSend_viewMap(v4, v26, v27, v28, v29);
      v35 = objc_msgSend_baseMap(v4, v31, v32, v33, v34);
      v40 = objc_msgSend_rowUIDs(v35, v36, v37, v38, v39);

      v46 = *v40;
      v45 = *(v40 + 8);
      if (v46 != v45)
      {
        v47 = 0;
        do
        {
          v48 = objc_msgSend_rowIndexForRowUID_(v30, v41, *v46, v46[1], v44);
          objc_msgSend_mapBaseRow_toViewRow_(v22, v49, v47, v48, v50);
          v47 = (v47 + 1);
          v46 += 2;
        }

        while (v46 != v45);
      }

      v51 = objc_msgSend_baseMap(v4, v41, v42, v43, v44);
      v56 = objc_msgSend_columnUIDs(v51, v52, v53, v54, v55);

      v61 = *v56;
      v62 = *(v56 + 8);
      if (v61 != v62)
      {
        v63 = 0;
        do
        {
          v64 = objc_msgSend_columnIndexForColumnUID_(v30, v57, *v61, v61[1], v60);
          objc_msgSend_mapBaseColumn_toViewColumn_(v22, v65, v63++, v64, v66);
          v61 += 2;
        }

        while (v61 != v62);
      }

      v67 = objc_msgSend_summaryMap(v4, v57, v58, v59, v60);
      v72 = v67;
      if (v67)
      {
        v73 = objc_msgSend_rowUIDs(v67, v68, v69, v70, v71);
        v78 = *v73;
        v79 = *(v73 + 8);
        if (*v73 != v79)
        {
          v80 = 0;
          do
          {
            v81 = objc_msgSend_rowIndexForRowUID_(v30, v74, *v78, v78[1], v77);
            objc_msgSend_mapSummaryRow_toViewRow_(v22, v82, v80, v81, v83);
            v80 = (v80 + 1);
            v78 += 2;
          }

          while (v78 != v79);
        }

        v84 = objc_msgSend_columnUIDs(v72, v74, v75, v76, v77);
        v87 = *v84;
        v88 = *(v84 + 8);
        if (*v84 != v88)
        {
          v89 = 0;
          do
          {
            v90 = objc_msgSend_columnIndexForColumnUID_(v30, v85, *v87, v87[1], v86);
            objc_msgSend_mapSummaryColumn_toViewColumn_(v22, v91, v89++, v90, v92);
            v87 += 2;
          }

          while (v87 != v88);
        }
      }

      v93 = self->super.super._coordMapper;
      self->super.super._coordMapper = v22;
    }

    objc_sync_exit(v4);

    coordMapper = self->super.super._coordMapper;
  }

  return coordMapper;
}

- (unint64_t)tableStyleAreaForCellUID:(TSKUIDStructCoord *)a3
{
  row = a3->_row;
  v13[0] = a3->_column;
  v13[1] = row;
  v8 = objc_msgSend_viewCellCoordForCellUID_(self, a2, v13, v3, v4);
  if (v8 == 0x7FFFFFFF || (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_tableStyleAreaForCellID_(self, v7, v8, v9, v10);
  }
}

- (unint64_t)tableStyleAreaForCellID:(TSUViewCellCoord)a3
{
  if (objc_msgSend_isEmptyPivot(self->super.super._tableInfo, a2, *&a3, v3, v4))
  {
    baseTableModel = self->super.super._baseTableModel;
    v12 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v7, *&a3, v8, v9);

    return objc_msgSend_tableStyleAreaForBaseCellCoord_(baseTableModel, v11, v12, v13, v14);
  }

  else
  {
    v16 = objc_msgSend_p_columnRowTypeForColumnIndex_(self, v7, a3._coord.column, v8, v9);
    v20 = objc_msgSend_p_columnRowTypeForRowIndex_(self, v17, a3._coord.row, v18, v19);

    return MEMORY[0x2821F9670](TSTTableStyleNetwork, sel_styleAreaForColumnType_rowType_forAPivotTable_, v16, v20, 1);
  }
}

- (unsigned)p_columnRowTypeForColumnIndex:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_numberOfHeaderColumns(self, a2, *&a3.var0, v3, v4);
  var0 = a3.var0;
  if (v7 <= a3.var0)
  {
    v13 = objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(self, a3.var0, a3.var0, 0, v10);
    if (v13)
    {
      v15 = v13;
      v16 = v13;
      v17 = objc_msgSend_numberOfColumnLevels(self, v14, v8, v9, v10);
      if (v17 <= v15)
      {
        var0 = 0;
      }

      else
      {
        var0 = v16;
      }

      if (v17 <= v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      var0 = 0;
      v12 = 6;
    }
  }

  else
  {
    v12 = 1;
  }

  return sub_221132E08(v12, var0, v8, v9, v10);
}

- (unsigned)p_columnRowTypeForRowIndex:(TSUViewRowIndex)a3
{
  v7 = objc_msgSend_numberOfHeaderRows(self, a2, *&a3.var0, v3, v4);
  var0 = a3.var0;
  if (v7 <= a3.var0)
  {
    v13 = objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(self, a3.var0, a3.var0, 0, v10);
    if (v13)
    {
      v15 = v13;
      v16 = v13;
      v17 = objc_msgSend_numberOfRowLevels(self, v14, v8, v9, v10);
      if (v17 <= v15)
      {
        var0 = 0;
      }

      else
      {
        var0 = v16;
      }

      if (v17 <= v15)
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      var0 = 0;
      v12 = 6;
    }
  }

  else
  {
    v12 = 1;
  }

  return sub_221132E08(v12, var0, v8, v9, v10);
}

- (unint64_t)tableStyleAreaForRow:(TSUViewRowIndex)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPivotTranslator tableStyleAreaForRow:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 411, 0, "Unimplemented for pivot tables, because it doesn't make sense.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  return 1;
}

- (id)cellRegionForTableStyleArea:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 > 15)
    {
      if (a3 == 16)
      {
        v6 = objc_msgSend_indexesForSummaryColumnsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, a2, 1, 5, v4);
        v138.origin = objc_msgSend_bodyRange(self, v120, v121, v122, v123);
        v138.size = v124;
        v125 = TSUCellRect::rows(&v138);
        v14 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v126, v6, v125, v126);
        v18 = objc_msgSend_indexesForSummaryRows(self, v127, v128, v129, v130);
        v22 = objc_msgSend_regionBySubtractingRowIndexes_(v14, v131, v18, v132, v133);
        goto LABEL_17;
      }

      if (a3 != 17)
      {
        goto LABEL_14;
      }

      v64 = MEMORY[0x277CCAA78];
      v138.origin = objc_msgSend_headerColumnRange(self, a2, 17, v3, v4);
      v138.size = v65;
      v66 = TSUCellRect::columns(&v138);
      v69 = objc_msgSend_indexSetWithIndexesInRange_(v64, v67, v66, v67, v68);
      v73 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v70, 0, v71, v72);
      v6 = objc_msgSend_tsu_indexSetByAddingIndexes_(v69, v74, v73, v75, v76);

      v79 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v77, 1, 5, v78);
      v82 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v80, v6, v79, v81);
      v85 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v83, 2, 5, v84);
      v87 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v86, v85, 0, 1);
      v63 = objc_msgSend_regionBySubtractingRegion_(v82, v88, v87, v89, v90);
    }

    else
    {
      if (a3 != 4)
      {
        if (a3 == 15)
        {
          v6 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, a2, 1, 5, v4);
          v138.origin = objc_msgSend_bodyRange(self, v7, v8, v9, v10);
          v138.size = v11;
          v12 = TSUCellRect::columns(&v138);
          v14 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v13, v6, v12, v13);
          v18 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v15, 0, v16, v17);
          v22 = objc_msgSend_regionBySubtractingColumnIndexes_(v14, v19, v18, v20, v21);
LABEL_17:
          v63 = v22;

          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v6 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self->super.super._tableInfo, a2, 0, v3, v4);
      v138.origin = objc_msgSend_range(self, v113, v114, v115, v116);
      v138.size = v117;
      v118 = TSUCellRect::columns(&v138);
      v63 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v119, v6, v118, v119);
    }

LABEL_19:

    goto LABEL_22;
  }

  switch(a3)
  {
    case 1uLL:
      v91 = objc_msgSend_bodyRange(self, a2, 1, v3, v4);
      v94 = objc_msgSend_regionFromRange_(TSTCellRegion, v92, v91, v92, v93);
      v99 = objc_msgSend_indexesForSummaryColumns(self, v95, v96, v97, v98);
      v103 = objc_msgSend_regionBySubtractingColumnIndexes_(v94, v100, v99, v101, v102);

      v108 = objc_msgSend_indexesForSummaryRows(self, v104, v105, v106, v107);
      v63 = objc_msgSend_regionBySubtractingRowIndexes_(v103, v109, v108, v110, v111);

      goto LABEL_22;
    case 2uLL:
      v134 = objc_msgSend_headerRowRange(self, a2, 2, v3, v4);
      v112 = objc_msgSend_regionFromRange_(TSTCellRegion, v135, v134, v135, v136);
      goto LABEL_21;
    case 3uLL:
      v23 = MEMORY[0x277CCAA78];
      v138.origin = objc_msgSend_headerColumnRange(self, a2, 3, v3, v4);
      v138.size = v24;
      v25 = TSUCellRect::columns(&v138);
      v28 = objc_msgSend_indexSetWithIndexesInRange_(v23, v26, v25, v26, v27);
      v32 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self->super.super._tableInfo, v29, 0, v30, v31);
      v6 = objc_msgSend_tsu_indexSetByAddingIndexes_(v28, v33, v32, v34, v35);

      v138.origin = objc_msgSend_bodyRange(self, v36, v37, v38, v39);
      v138.size = v40;
      v41 = TSUCellRect::rows(&v138);
      v43 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v42, v6, v41, v42);
      v46 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v44, 2, 5, v45);
      v51 = objc_msgSend_numberOfColumns(self, v47, v48, v49, v50);
      v53 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v52, v46, 1, v51);
      v57 = objc_msgSend_regionBySubtractingRegion_(v43, v54, v53, v55, v56);

      v18 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(self->super.super._tableInfo, v58, 0, 1, v59);
      v63 = objc_msgSend_regionBySubtractingRowIndexes_(v57, v60, v18, v61, v62);

LABEL_18:
      goto LABEL_19;
  }

LABEL_14:
  v112 = objc_msgSend_invalidRegion(TSTCellRegion, a2, a3, v3, v4);
LABEL_21:
  v63 = v112;
LABEL_22:

  return v63;
}

- (TSUViewColumnIndex)numberOfGrandTotalColumns
{
  v5 = objc_msgSend_indexesForGrandTotalColumns(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (TSUViewRowIndex)numberOfFooterOrGrandTotalRows
{
  v5 = objc_msgSend_indexesForGrandTotalRows(self, a2, v2, v3, v4);
  v10.var0 = objc_msgSend_count(v5, v6, v7, v8, v9);

  return v10;
}

- (unsigned)cellValueTypeAtCellID:(TSUViewCellCoord)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133814;
  v6[3] = &unk_27845F908;
  v6[4] = self;
  v6[5] = &v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22113387C;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  v5[5] = &v7;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)p_applyViewRowIndex:(TSUViewRowIndex)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6
{
  v8 = *&a3.var0;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_viewMap(self, v13, v14, v15, v16);
  v21 = objc_msgSend_rowUIDForRowIndex_(v17, v18, v8, v19, v20);
  v23 = v22;
  v46[0] = v21;
  v46[1] = v22;

  if (!(v21 | v23))
  {
    goto LABEL_5;
  }

  v28 = objc_msgSend_baseMap(self, v24, v25, v26, v27);
  v45 = objc_msgSend_rowIndexForRowUID_(v28, v29, v21, v23, v30);

  if (v45 != 0x7FFFFFFF)
  {
    v11[2](v11, &v45, v46);
    goto LABEL_7;
  }

  v35 = objc_msgSend_groupByForRows(self, v31, v32, v33, v34);
  v36 = sub_2211A8DC8(v21, v23);
  v39 = objc_msgSend_groupNodeForGroupUid_(v35, v37, v36, v37, v38);

  if (v39)
  {
    v44 = objc_msgSend_groupLevel(v39, v40, v41, v42, v43);
    v10[2](v10, v44);
  }

  else
  {
LABEL_5:
    v12[2](v12);
  }

LABEL_7:
}

- (id)cellStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221133C28;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221133C8C;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133CF0;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221133EE8;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221133F4C;
  v7[3] = &unk_27845F980;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221133FB0;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewRowIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)p_applyViewColumnIndex:(TSUViewColumnIndex)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5 toBeyondBoundsUsingBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_viewMap(self, v13, v14, v15, v16);
  v21 = objc_msgSend_columnUIDForColumnIndex_(v17, v18, a3.var0, v19, v20);
  v23 = v22;
  v47[0] = v21;
  v47[1] = v22;

  if (!(v21 | v23))
  {
    goto LABEL_5;
  }

  v28 = objc_msgSend_baseMap(self, v24, v25, v26, v27);
  v31 = objc_msgSend_columnIndexForColumnUID_(v28, v29, v21, v23, v30);
  v46 = v31;

  if (v31 != 0x7FFF)
  {
    v11[2](v11, &v46, v47);
    goto LABEL_7;
  }

  v36 = objc_msgSend_groupByForColumns(self, v32, v33, v34, v35);
  v37 = sub_2211A8DC8(v21, v23);
  v40 = objc_msgSend_groupNodeForGroupUid_(v36, v38, v37, v38, v39);

  if (v40)
  {
    v45 = objc_msgSend_groupLevel(v40, v41, v42, v43, v44);
    v10[2](v10, v45);
  }

  else
  {
LABEL_5:
    v12[2](v12);
  }

LABEL_7:
}

- (id)cellStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221134354;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211343B8;
  v7[3] = &unk_27845F9A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22113441C;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewColumnIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)textStyleOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_221133C10;
  v13 = sub_221133C20;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221134614;
  v8[3] = &unk_27845F958;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221134678;
  v7[3] = &unk_27845F9A8;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211346DC;
  v6[3] = &unk_27845EC10;
  v6[4] = self;
  v6[5] = &v9;
  objc_msgSend_p_applyViewColumnIndex_toSummaryUsingBlock_toBaseUsingBlock_toBeyondBoundsUsingBlock_(self, a2, a3.var0, v8, v7, v6);
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (int)p_applyViewCellCoord:(TSUViewCellCoord)a3 toSummaryUsingBlock:(id)a4 toBaseUsingBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13 = objc_msgSend_viewMap(self, v9, v10, v11, v12);
  v84.origin = objc_msgSend_range(v13, v14, v15, v16, v17);
  v84.size = v18;
  v19 = *&a3 & 0xFFFF000000000000 | (a3._coord.column << 32);
  row = a3._coord.row;
  v21 = (v19 | a3._coord.row);
  LOBYTE(a3._coord.row) = TSUCellRect::contains(&v84, v21);

  if ((a3._coord.row & 1) == 0)
  {
    goto LABEL_24;
  }

  v26 = objc_msgSend_groupLevelAtSummaryRow_(self, v23, row, v24, v25);
  v30 = objc_msgSend_groupLevelAtSummaryColumn_(self, v27, a3._coord.column, v28, v29);
  v35 = v30;
  if (v26 != 255 || v30 != 255)
  {
    v84 = 0;
    v85 = 0u;
    v41 = objc_msgSend_viewMap(self, v31, v32, v33, v34);
    v45 = v41;
    if (v41)
    {
      objc_msgSend_cellUIDForCellID_(v41, v42, v19 | row, v43, v44);
    }

    else
    {
      v84 = 0;
      v85 = 0u;
    }

    if (v84 != 0uLL && v85 != 0)
    {
      v50 = objc_msgSend_summaryMap(self, v46, v47, v48, v49);
      v81 = v84;
      v82 = v85;
      v54 = objc_msgSend_cellIDForCellUID_(v50, v51, &v81, v52, v53);
      v83 = v54;

      if (v54 == 0x7FFFFFFF || (v54 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v69 = MEMORY[0x277D81150];
        v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTPivotTranslator p_applyViewCellCoord:toSummaryUsingBlock:toBaseUsingBlock:]", v56, v57);
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v72, v73);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 650, 0, "cell in summary row is in viewMap, but not in summaryMap");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
      }

      else if (v7)
      {
        v58 = v7[2](v7, &v83, &v84, v26, v35);
LABEL_22:
        v68 = v58;
        goto LABEL_25;
      }
    }

LABEL_24:
    v68 = 1;
    goto LABEL_25;
  }

  v84 = 0;
  v85 = 0u;
  v36 = objc_msgSend_viewMap(self, v31, v32, v33, v34);
  v40 = v36;
  if (v36)
  {
    objc_msgSend_cellUIDForCellID_(v36, v37, v19 | row, v38, v39);
  }

  else
  {
    v84 = 0;
    v85 = 0u;
  }

  if (v84 == 0uLL || v85 == 0)
  {
    goto LABEL_24;
  }

  v63 = objc_msgSend_baseMap(self, v59, v60, v61, v62);
  v81 = v84;
  v82 = v85;
  v67 = objc_msgSend_cellIDForCellUID_(v63, v64, &v81, v65, v66);
  v83 = v67;

  v68 = 1;
  if (v8 && v67 != 0x7FFFFFFFLL && (v67 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v58 = v8[2](v8, &v83, &v84);
    goto LABEL_22;
  }

LABEL_25:

  return v68;
}

- (id)defaultCellStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v6 = a4;
  baseTableModel = self->super.super._baseTableModel;
  v10 = objc_msgSend_tableStyleAreaForCellID_(self, a2, *&a3, a4, a5);
  v17 = objc_msgSend_defaultCellStyleForTableStyleArea_(baseTableModel, v11, v10, v12, v13);
  v24 = 3;
  if (v6)
  {
    v19 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v14, *&a3, v15, v16);
    if (v19 != 0x7FFFFFFF && (v19 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v20 = objc_msgSend_defaultCellStyleForBaseCellCoord_useSoftDefault_outSource_(self->super.super._baseTableModel, v18, v19, 1, &v24);
      v21 = v20;
      if (v24 != 3)
      {
        v22 = v20;

        v17 = v22;
      }
    }
  }

  if (a5)
  {
    *a5 = v24;
  }

  return v17;
}

- (id)defaultTextStyleForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 outSource:(unint64_t *)a5
{
  v6 = a4;
  baseTableModel = self->super.super._baseTableModel;
  v10 = objc_msgSend_tableStyleAreaForCellID_(self, a2, *&a3, a4, a5);
  v17 = objc_msgSend_defaultTextStyleForTableStyleArea_(baseTableModel, v11, v10, v12, v13);
  v24 = 3;
  if (v6)
  {
    v19 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v14, *&a3, v15, v16);
    if (v19 != 0x7FFFFFFF && (v19 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v20 = objc_msgSend_defaultTextStyleForBaseCellCoord_useSoftDefault_outSource_(self->super.super._baseTableModel, v18, v19, 1, &v24);
      v21 = v20;
      if (v24 != 3)
      {
        v22 = v20;

        v17 = v22;
      }
    }
  }

  if (a5)
  {
    *a5 = v24;
  }

  return v17;
}

- (void)defaultStyleHandlesForCellID:(TSUViewCellCoord)a3 useSoftDefault:(BOOL)a4 styleDefaultsCache:(id)a5 outCellStyleHandle:(id *)a6 outTextStyleHandle:(id *)a7
{
  v10 = a4;
  v14 = objc_msgSend_baseCellCoordForViewCellCoord_(self, a2, *&a3, a4, a5);
  if (v14 == 0x7FFFFFFF || (v14 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v21 = objc_msgSend_tableStyleAreaForCellID_(self, v13, *&a3, v15, v16);
    if (a6)
    {
      *a6 = objc_msgSend_cellStyleHandleForKey_(a5, v18, v21, v19, v20);
    }

    if (a7)
    {
      *a7 = objc_msgSend_textStyleHandleForKey_(a5, v18, v21, v19, v20);
    }
  }

  else
  {
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_defaultStyleHandlesAtBaseCellCoord_useSoftDefault_styleDefaultsCache_outCellStyleHandle_outTextStyleHandle_(baseTableModel, v13, v14, v10, a5, a6, a7);
  }
}

- (id)cellStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4
{
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_221133C10;
  v20 = sub_221133C20;
  v21 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(self, a2, *&a3, 1, &v22);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = v22 == 3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221134F60;
  v11[3] = &unk_27845F9D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v16;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221135008;
  v10[3] = &unk_27845F9F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v16;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, v7, *&a3, v11, v10);
  if (a4)
  {
    *a4 = *(v13 + 24);
  }

  v8 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)textStyleAtCellID:(TSUViewCellCoord)a3 isDefault:(BOOL *)a4
{
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_221133C10;
  v20 = sub_221133C20;
  v21 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(self, a2, *&a3, 1, &v22);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = v22 == 3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22113525C;
  v11[3] = &unk_27845F9D0;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v16;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221135304;
  v10[3] = &unk_27845F9F8;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v16;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, v7, *&a3, v11, v10);
  if (a4)
  {
    *a4 = *(v13 + 24);
  }

  v8 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)metadataForColumnIndex:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_hiddenStates(self->super.super._tableInfo, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_hidingActionForColumnAtIndex_(v7, v8, a3.var0, v9, v10);

  v15 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v12, a3.var0, v13, v14);
  if (v15 == 0x7FFF)
  {
    v19 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v16, a3.var0, v17, v18);
    if (v19 == 0x7FFF)
    {
      v24 = 0;
    }

    else
    {
      v25 = v19;
      v26 = objc_msgSend_summaryModel(self->super.super._tableInfo, v20, v21, v22, v23);
      v24 = objc_msgSend_metadataForColumnIndex_hidingAction_(v26, v27, v25, v11, v28);
    }
  }

  else
  {
    v24 = objc_msgSend_metadataForColumnIndex_hidingAction_(self->super.super._baseTableModel, v16, v15, v11, v18);
  }

  return v24;
}

- (int)getCell:(id)a3 atCellID:(TSUViewCellCoord)a4 suppressCellBorder:(BOOL)a5
{
  v7 = a3;
  v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  if ((objc_msgSend_isSummaryRow_(self, v13, *&a4, v14, v15) & 1) != 0 || (objc_msgSend_indexesForSummaryColumns(self, v16, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend_containsIndex_(v20, v21, a4._coord.column, v22, v23), v20, v24))
  {
    v25 = objc_msgSend_coordinateMapper(self, v16, v17, v18, v19);
    v29 = objc_msgSend_summaryCellCoordForViewCellCoord_(v25, v26, *&a4, v27, v28);

    v34 = objc_msgSend_summaryModel(v12, v30, v31, v32, v33);
    Cell_atCellCoord = objc_msgSend_getCell_atCellCoord_(v34, v35, v7, v29, v36);
  }

  else
  {
    if (v12)
    {
      objc_msgSend_cellUIDForCellID_(v12, v16, *&a4, v18, v19);
    }

    else
    {
      memset(v47, 0, sizeof(v47));
    }

    v38 = objc_msgSend_baseCellCoordForCellUID_(self, v16, v47, v18, v19);
    v34 = objc_msgSend_baseTableModel(v12, v39, v40, v41, v42);
    Cell_atCellCoord = objc_msgSend_getCell_atBaseCellCoord_(v34, v43, v7, v38, v44);
  }

  v45 = Cell_atCellCoord;

  return v45;
}

- (int)getValue:(id *)a3 atCellID:(TSUViewCellCoord)a4 fetchRichTextAttributesIfPlainText:(BOOL)a5
{
  v5 = a5;
  if ((objc_msgSend_isSummaryRow_(self, a2, *&a4, *&a4, a5) & 1) != 0 || (objc_msgSend_indexesForSummaryColumns(self, v9, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_containsIndex_(v13, v14, a4._coord.column, v15, v16), v13, v17))
  {
    v18 = objc_msgSend_coordinateMapper(self, v9, v10, v11, v12);
    v22 = objc_msgSend_summaryCellCoordForViewCellCoord_(v18, v19, *&a4, v20, v21);

    v27 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
    v32 = objc_msgSend_summaryModel(v27, v28, v29, v30, v31);
    RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v32, v33, a3, v22, v5);

    return RichTextAttributesIfPlainText;
  }

  else
  {
    v37 = objc_msgSend_baseCellCoordForViewCellCoord_(self, v9, *&a4, v11, v12);
    baseTableModel = self->super.super._baseTableModel;

    return objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(baseTableModel, v36, a3, v37, v5);
  }
}

- (int)getDefaultCell:(id)a3 forCellUID:(const TSKUIDStructCoord *)a4
{
  v6 = a3;
  row = a4->_row;
  v15[0] = a4->_column;
  v15[1] = row;
  v11 = objc_msgSend_tableStyleAreaForCellUID_(self, v8, v15, v9, v10);
  LODWORD(self) = objc_msgSend_getDefaultCell_forTableStyleArea_(self, v12, v6, v11, v13);

  return self;
}

- (double)heightOfRowAtIndex:(TSUViewRowIndex)a3 isDefault:(BOOL *)a4
{
  if (objc_msgSend_isSummaryRow_(self, a2, *&a3.var0, a4, v4))
  {
    v11 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v8, a3.var0, v9, v10);
    v16 = objc_msgSend_summaryModel(self->super.super._tableInfo, v12, v13, v14, v15);
    objc_msgSend_heightOfRowAtIndex_isDefault_(v16, v17, v11, a4, v18);
    v20 = v19;

    return v20;
  }

  else
  {
    v23 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v8, a3.var0, v9, v10);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_heightOfRowAtIndex_isDefault_(baseTableModel, v22, v23, a4, v24);
  }

  return result;
}

- (double)widthOfColumnAtIndex:(TSUViewColumnIndex)a3 isDefault:(BOOL *)a4
{
  v8 = objc_msgSend_indexesForSummaryColumns(self, a2, *&a3.var0, a4, v4);
  v12 = objc_msgSend_containsIndex_(v8, v9, a3.var0, v10, v11);

  if (v12)
  {
    v16 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v13, a3.var0, v14, v15);
    v21 = objc_msgSend_summaryModel(self->super.super._tableInfo, v17, v18, v19, v20);
    objc_msgSend_widthOfColumnAtIndex_isDefault_(v21, v22, v16, a4, v23);
    v25 = v24;

    return v25;
  }

  else
  {
    v28 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v13, a3.var0, v14, v15);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_widthOfColumnAtIndex_isDefault_(baseTableModel, v27, v28, a4, v29);
  }

  return result;
}

- (void)setHeight:(double)a3 ofRowAtIndex:(TSUViewRowIndex)a4
{
  if (objc_msgSend_isSummaryRow_(self, a2, *&a4.var0, v4, v5))
  {
    v12 = objc_msgSend_summaryRowIndexForViewRowIndex_(self, v9, a4.var0, v10, v11);
    v30 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
    v21 = objc_msgSend_summaryModel(v30, v17, v18, v19, v20);
    objc_msgSend_setHeight_ofRowAtIndex_(v21, v22, v12, v23, v24, a3);
  }

  else
  {
    v26 = objc_msgSend_baseRowIndexForViewRowIndex_(self, v9, a4.var0, v10, v11);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_setHeight_ofRowAtIndex_(baseTableModel, v25, v26, v27, v28, a3);
  }
}

- (void)setWidth:(double)a3 ofColumnAtIndex:(TSUViewColumnIndex)a4
{
  v34 = objc_msgSend_indexesForSummaryColumns(self, a2, *&a4.var0, v4, v5);
  v12 = objc_msgSend_containsIndex_(v34, v9, a4.var0, v10, v11);

  if (v12)
  {
    v16 = objc_msgSend_summaryColumnIndexForViewColumnIndex_(self, v13, a4.var0, v14, v15);
    v35 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
    v25 = objc_msgSend_summaryModel(v35, v21, v22, v23, v24);
    objc_msgSend_setWidth_ofColumnAtIndex_(v25, v26, v16, v27, v28, a3);
  }

  else
  {
    v30 = objc_msgSend_baseColumnIndexForViewColumnIndex_(self, v13, a4.var0, v14, v15);
    baseTableModel = self->super.super._baseTableModel;

    objc_msgSend_setWidth_ofColumnAtIndex_(baseTableModel, v29, v30, v31, v32, a3);
  }
}

- (BOOL)cellExistsAtCellID:(TSUViewCellCoord)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221135CA4;
  v6[3] = &unk_27845F908;
  v6[4] = self;
  v6[5] = &v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221135D0C;
  v5[3] = &unk_27845F930;
  v5[4] = self;
  v5[5] = &v7;
  objc_msgSend_p_applyViewCellCoord_toSummaryUsingBlock_toBaseUsingBlock_(self, a2, *&a3, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)peerCellRegionForCellRegion:(id)a3
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x5812000000;
  v41 = sub_221135F98;
  v42 = sub_221135FA4;
  v43 = &unk_22188E88F;
  v47[0] = 0;
  v47[1] = 0;
  v44 = 0;
  v45 = 0;
  v46 = v47;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_221135FB0;
  v37[3] = &unk_27845FA20;
  v37[4] = self;
  v37[5] = &v38;
  objc_msgSend_enumerateCellIDsUsingBlock_(a3, a2, v37, v3, v4);
  v10 = objc_msgSend_hiddenStates(self->super.super._tableInfo, v6, v7, v8, v9);
  v15 = objc_msgSend_hiddenColumnIndexes(v10, v11, v12, v13, v14);
  if (objc_msgSend_count(v15, v16, v17, v18, v19))
  {
    v24 = v39;
    MEMORY[0x223D9F7A0](&v36, v15);
    TSCECellCoordSet::removeCoordsForColumns((v24 + 6), &v36);
    TSUIndexSet::~TSUIndexSet(&v36);
  }

  v25 = objc_msgSend_hiddenRowIndexes(v10, v20, v21, v22, v23);
  if (objc_msgSend_count(v25, v26, v27, v28, v29))
  {
    v33 = v39;
    MEMORY[0x223D9F7A0](&v36, v25);
    TSCECellCoordSet::removeCoordsForRows((v33 + 6), &v36);
    TSUIndexSet::~TSUIndexSet(&v36);
  }

  v34 = objc_msgSend_regionFromCellCoordSet_(TSTCellRegion, v30, (v39 + 6), v31, v32);

  _Block_object_dispose(&v38, 8);
  sub_22107C860(&v46, v47[0]);

  return v34;
}

- (unsigned)groupLevelAtSummaryRow:(TSUViewRowIndex)a3
{
  if (!objc_msgSend_isSummaryRow_(self, a2, *&a3.var0, v3, v4))
  {
    return -1;
  }

  return objc_msgSend_rowGroupLevelAtRow_outAggregateIndex_(self, v7, a3.var0, 0, v8);
}

- (unsigned)groupLevelAtSummaryColumn:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_indexesForSummaryColumns(self, a2, *&a3.var0, v3, v4);
  v11 = objc_msgSend_containsIndex_(v7, v8, a3.var0, v9, v10);

  if (!v11)
  {
    return -1;
  }

  return objc_msgSend_columnGroupLevelAtColumn_outAggregateIndex_(self, v12, a3.var0, 0, v13);
}

- (id)allRowGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v8 = objc_msgSend_groupByForRows(self, v4, v5, v6, v7);
  v13 = objc_msgSend_maxRowLevel(self, v9, v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2211364A4;
  v17[3] = &unk_27845FA48;
  v14 = v3;
  v18 = v14;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v8, v15, 1, v13, v17);

  return v14;
}

- (id)allColumnGroupUIDs
{
  v3 = objc_alloc_init(TSCEMutableUIDSet);
  v8 = objc_msgSend_groupByForColumns(self, v4, v5, v6, v7);
  v13 = objc_msgSend_maxColumnLevel(self, v9, v10, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22113662C;
  v17[3] = &unk_27845FA48;
  v14 = v3;
  v18 = v14;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v8, v15, 1, v13, v17);

  return v14;
}

- (id)indexesForRowsContainedByGroupUIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v14 = objc_msgSend_groupByForRows(self, v10, v11, v12, v13);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 5;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = sub_221136854;
  v33 = &unk_27845FA70;
  v15 = v14;
  v34 = v15;
  v35 = self;
  v37 = &v38;
  v16 = v9;
  v36 = v16;
  objc_msgSend_foreachUuid_(v4, v17, &v30, v18, v19);
  v23 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(self, v20, *(v39 + 24), v21, v22, v30, v31, v32, v33);
  objc_msgSend_removeIndexes_(v16, v24, v23, v25, v26);

  v27 = v36;
  v28 = v16;

  _Block_object_dispose(&v38, 8);

  return v28;
}

- (id)indexesForColumnsContainedByGroupUIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7, v8);
  v14 = objc_msgSend_groupByForColumns(self, v10, v11, v12, v13);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 5;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = sub_221136BEC;
  v33 = &unk_27845FA70;
  v15 = v14;
  v34 = v15;
  v35 = self;
  v37 = &v38;
  v16 = v9;
  v36 = v16;
  objc_msgSend_foreachUuid_(v4, v17, &v30, v18, v19);
  v23 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(self, v20, *(v39 + 24), v21, v22, v30, v31, v32, v33);
  objc_msgSend_removeIndexes_(v16, v24, v23, v25, v26);

  v27 = v36;
  v28 = v16;

  _Block_object_dispose(&v38, 8);

  return v28;
}

- (unsigned)rowGroupLevelAtRow:(TSUViewRowIndex)a3 outAggregateIndex:(unint64_t *)a4
{
  v6 = *&a3.var0;
  v7 = self;
  v8 = objc_msgSend_viewMap(self, a2, *&a3.var0, a4, v4);
  v31 = objc_msgSend_rowUIDForRowIndex_(v8, v9, v6, v10, v11);
  v32 = v12;

  v17 = objc_msgSend_groupBySet(v7, v13, v14, v15, v16, v31, v32);
  v20 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(v17, v18, &v31, a4, v19);
  v22 = v21;

  v27 = objc_msgSend_groupByForRows(v7, v23, v24, v25, v26);
  LOBYTE(v7) = objc_msgSend_groupLevelForGroupUid_(v27, v28, v20, v22, v29);

  return v7;
}

- (unsigned)columnGroupLevelAtColumn:(TSUViewColumnIndex)a3 outAggregateIndex:(unint64_t *)a4
{
  v7 = self;
  v8 = objc_msgSend_viewMap(self, a2, *&a3.var0, a4, v4);
  v31 = objc_msgSend_columnUIDForColumnIndex_(v8, v9, a3.var0, v10, v11);
  v32 = v12;

  v17 = objc_msgSend_groupBySet(v7, v13, v14, v15, v16, v31, v32);
  v20 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(v17, v18, &v31, a4, v19);
  v22 = v21;

  v27 = objc_msgSend_groupByForColumns(v7, v23, v24, v25, v26);
  LOBYTE(v7) = objc_msgSend_groupLevelForGroupUid_(v27, v28, v20, v22, v29);

  return v7;
}

- (unint64_t)aggregateIndexForColumnIndex:(TSUViewColumnIndex)a3
{
  v7 = objc_msgSend_groupBySet(self, a2, *&a3.var0, v3, v4);
  active = objc_msgSend_activeFlatteningDimension(v7, v8, v9, v10, v11);

  if (active != 1 || objc_msgSend_numberOfHeaderColumns(self, v13, v14, v15, v16) > a3.var0)
  {
    return 0;
  }

  v22 = objc_msgSend_numberOfHeaderColumns(self, v17, v18, v19, v20);
  v27 = objc_msgSend_groupBySet(self, v23, v24, v25, v26);
  v32 = objc_msgSend_aggregates(v27, v28, v29, v30, v31);
  v21 = (a3.var0 - v22) % objc_msgSend_count(v32, v33, v34, v35, v36);

  return v21;
}

- (unint64_t)aggregateIndexForRowIndex:(TSUViewRowIndex)a3
{
  v7 = objc_msgSend_groupBySet(self, a2, *&a3.var0, v3, v4);
  active = objc_msgSend_activeFlatteningDimension(v7, v8, v9, v10, v11);

  if (active || objc_msgSend_numberOfHeaderRows(self, v13, v14, v15, v16) > a3.var0)
  {
    return 0;
  }

  v23 = objc_msgSend_numberOfHeaderRows(self, v17, v18, v19, v20);
  v28 = objc_msgSend_groupBySet(self, v24, v25, v26, v27);
  v33 = objc_msgSend_aggregates(v28, v29, v30, v31, v32);
  v21 = (a3.var0 - v23) % objc_msgSend_count(v33, v34, v35, v36, v37);

  return v21;
}

- (void)flushCachedIndexSets
{
  self->_cachedPivotIndexSetsAreValid = 0;
  os_unfair_lock_lock(&self->_pivotCachedIndexesUnfairLock);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;
  self->_cachedIndexesForSummaryColumns = 0;

  objc_msgSend_removeAllObjects(self->_cachedSummaryColumnIndexesAtLevels, v4, v5, v6, v7);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;
  self->_cachedIndexesForLeadingColumns = 0;

  objc_msgSend_removeAllObjects(self->_cachedLeadingColumnIndexesAtLevels, v9, v10, v11, v12);
  objc_msgSend_removeAllObjects(self->_cachedLeadingSummaryColumnIndexesAtLevels, v13, v14, v15, v16);
  os_unfair_lock_unlock(&self->_pivotCachedIndexesUnfairLock);
  v17.receiver = self;
  v17.super_class = TSTPivotTranslator;
  [(TSTCategoryTranslator *)&v17 flushCachedIndexSets];
}

- (id)indexesForSummaryColumns
{
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;

  return cachedIndexesForSummaryColumns;
}

- (BOOL)isSummaryColumn:(unsigned __int16)a3
{
  v5 = a3;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;

  return objc_msgSend_containsIndex_(cachedIndexesForSummaryColumns, v7, v5, v8, v9);
}

- (id)indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedSummaryColumnIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForSummaryColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = objc_msgSend_i_indexesForSummaryColumnsAtGroupLevel_(self, v3, v7, v4, v5);
    cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
    v13 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v10, v7, v11, v12);
    objc_msgSend_setObject_forKey_(cachedSummaryColumnIndexesAtLevels, v14, v8, v13, v15);

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
  cachedIndexesForSummaryColumns = self->_cachedIndexesForSummaryColumns;
  self->_cachedIndexesForSummaryColumns = v6;
}

- (id)i_indexesForSummaryColumnsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  if (objc_msgSend_numberOfColumnLevels(self, v5, v6, v7, v8) <= v3)
  {
    v36 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v9, v10, v11, v12);
  }

  else
  {
    v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v9, v10, v11, v12);
    if (objc_msgSend_numberOfColumnLevels(self, v14, v15, v16, v17) > v3)
    {
      v22 = objc_msgSend_viewMap(self, v18, v19, v20, v21);
      v27 = objc_msgSend_columnAggregateGroupSize(self, v23, v24, v25, v26);
      v32 = objc_msgSend_groupByForColumns(self->super.super._tableInfo, v28, v29, v30, v31);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_2211375AC;
      v38[3] = &unk_27845FA98;
      v33 = v22;
      v39 = v33;
      v40 = v13;
      v41 = v27;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v32, v34, v3, v38, v35);
    }

    v36 = objc_msgSend_copy(v13, v18, v19, v20, v21);
  }

  return v36;
}

- (id)indexesForLeadingColumns
{
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, v2, v3, v4);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;

  return cachedIndexesForLeadingColumns;
}

- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedLeadingColumnIndexesAtLevels = self->_cachedLeadingColumnIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedLeadingColumnIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForLeadingColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v31 = objc_opt_new();
  for (i = 0; objc_msgSend_maxColumnLevel(self, v3, v4, v5, v6) >= i; ++i)
  {
    v12 = objc_msgSend_i_indexesForLeadingColumnsAtGroupLevel_(self, v8, i, v10, v11);
    cachedLeadingColumnIndexesAtLevels = self->_cachedLeadingColumnIndexesAtLevels;
    v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v14, i, v15, v16);
    objc_msgSend_setObject_forKey_(cachedLeadingColumnIndexesAtLevels, v18, v12, v17, v19);

    objc_msgSend_addIndexes_(v31, v20, v12, v21, v22);
  }

  v23 = objc_msgSend_copy(v31, v8, v9, v10, v11);
  cachedIndexesForLeadingColumns = self->_cachedIndexesForLeadingColumns;
  self->_cachedIndexesForLeadingColumns = v23;

  v28 = objc_msgSend_i_indexesForLeadingColumnsAtGroupLevel_(self, v25, 255, v26, v27);
  objc_msgSend_setObject_forKey_(self->_cachedLeadingColumnIndexesAtLevels, v29, v28, &unk_28350EB78, v30);
}

- (id)i_indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  if (v3 == 255)
  {
    v24 = MEMORY[0x277CCAB58];
    v39.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v5, v6, v7, v8);
    v39.size = v25;
    v26 = TSUCellRect::columns(&v39);
    v14 = objc_msgSend_indexSetWithIndexesInRange_(v24, v27, v26, v27, v28);
    v29 = MEMORY[0x277CCAA78];
    Index = objc_msgSend_firstIndex(v14, v30, v31, v32, v33);
    v23 = objc_msgSend_indexSetWithIndex_(v29, v35, Index, v36, v37);
  }

  else
  {
    v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
    v14 = objc_msgSend_pivotOwner(v9, v10, v11, v12, v13);

    v18 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v14, v15, v3, v16, v17);
    v23 = objc_msgSend_copy(v18, v19, v20, v21, v22);
  }

  return v23;
}

- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  objc_msgSend_i_populatePivotCachedIndexSetsIfNeeded(self, a2, a3, v3, v4);
  cachedLeadingSummaryColumnIndexesAtLevels = self->_cachedLeadingSummaryColumnIndexesAtLevels;
  v11 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v8, v5, v9, v10);
  v15 = objc_msgSend_objectForKey_(cachedLeadingSummaryColumnIndexesAtLevels, v12, v11, v13, v14);

  return v15;
}

- (void)i_populateIndexesForLeadingSummaryColumns
{
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  objc_msgSend_maxColumnLevel(self, v3, v4, v5, v6);
  v10 = 0;
  do
  {
    v11 = objc_msgSend_i_indexesForLeadingSummaryColumnsAtGroupLevel_(self, v7, v10, v8, v9);
    cachedLeadingSummaryColumnIndexesAtLevels = self->_cachedLeadingSummaryColumnIndexesAtLevels;
    v16 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v13, v10, v14, v15);
    objc_msgSend_setObject_forKey_(cachedLeadingSummaryColumnIndexesAtLevels, v17, v11, v16, v18);

    ++v10;
  }

  while (objc_msgSend_maxColumnLevel(self, v19, v20, v21, v22) >= v10);
}

- (id)i_indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_pivotCachedIndexesUnfairLock);
  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  v14 = objc_msgSend_pivotOwner(v9, v10, v11, v12, v13);

  if (v3 == 255)
  {
    v28 = MEMORY[0x277CCAA78];
    v89.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v15, v16, v17, v18);
    v89.size = v29;
    v30 = TSUCellRect::columns(&v89);
    v33 = objc_msgSend_indexSetWithIndexesInRange_(v28, v31, v30, v31, v32);
    v34 = MEMORY[0x277CCAA78];
    Index = objc_msgSend_firstIndex(v33, v35, v36, v37, v38);
    v43 = objc_msgSend_indexSetWithIndex_(v34, v40, Index, v41, v42);
  }

  else
  {
    if (objc_msgSend_maxColumnLevel(self, v15, v16, v17, v18) < v3)
    {
      v23 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v19, v20, v21, v22);
LABEL_7:
      v43 = v23;
      v49 = objc_msgSend_copy(v23, v24, v25, v26, v27);
      goto LABEL_12;
    }

    v44 = objc_msgSend_tableModel(v14, v19, v20, v21, v22);

    if (v44)
    {
      v23 = objc_msgSend_indexesForLeadingSummaryColumnsAtGroupLevel_(v14, v45, v3, v47, v48);
      goto LABEL_7;
    }

    v50 = MEMORY[0x277CCAB58];
    v89.origin = objc_msgSend_bodyColumnRange(self->super.super._tableInfo, v45, v46, v47, v48);
    v89.size = v51;
    v52 = TSUCellRect::columns(&v89);
    v33 = objc_msgSend_indexSetWithIndexesInRange_(v50, v53, v52, v53, v54);
    v62 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v55, v56, v57, v58);
    LOBYTE(v63) = 0;
    do
    {
      cachedSummaryColumnIndexesAtLevels = self->_cachedSummaryColumnIndexesAtLevels;
      v65 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v59, v3, v60, v61);
      v69 = objc_msgSend_objectForKey_(cachedSummaryColumnIndexesAtLevels, v66, v65, v67, v68);
      objc_msgSend_removeIndexes_(v33, v70, v69, v71, v72);

      v63 = (v63 + 1);
    }

    while (v63 <= v3);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = sub_221137E18;
    v87[3] = &unk_27845E1D0;
    v73 = v62;
    v88 = v73;
    objc_msgSend_enumerateRangesUsingBlock_(v33, v74, v87, v75, v76);
    v43 = objc_msgSend_copy(v73, v77, v78, v79, v80);
  }

  v49 = objc_msgSend_copy(v43, v81, v82, v83, v84);
LABEL_12:
  v85 = v49;

  return v85;
}

- (id)i_indexesForSummaryRowsAtGroupLevel:(unsigned __int8)a3
{
  v5 = a3;
  if (objc_msgSend_numberOfRowLevels(self, a2, a3, v3, v4) <= a3)
  {
    v34 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v7, v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
    if (objc_msgSend_numberOfRowLevels(self, v12, v13, v14, v15) > v5)
    {
      v20 = objc_msgSend_viewMap(self, v16, v17, v18, v19);
      v25 = objc_msgSend_rowAggregateGroupSize(self, v21, v22, v23, v24);
      v30 = objc_msgSend_groupByForRows(self->super.super._tableInfo, v26, v27, v28, v29);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_221137FC8;
      v36[3] = &unk_27845FA98;
      v31 = v20;
      v37 = v31;
      v38 = v11;
      v39 = v25;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v30, v32, v5, v36, v33);
    }

    v34 = objc_msgSend_copy(v11, v16, v17, v18, v19);
  }

  return v34;
}

- (void)i_populatePivotCachedIndexSetsIfNeeded
{
  if (!self->_cachedPivotIndexSetsAreValid)
  {
    os_unfair_lock_lock(&self->_pivotCachedIndexesUnfairLock);
    if (!self->_cachedPivotIndexSetsAreValid)
    {
      objc_msgSend_i_populateIndexesForSummaryColumns(self, v3, v4, v5, v6);
      objc_msgSend_i_populateIndexesForLeadingColumns(self, v7, v8, v9, v10);
      objc_msgSend_i_populateIndexesForLeadingSummaryColumns(self, v11, v12, v13, v14);
      self->_cachedPivotIndexSetsAreValid = 1;
    }

    os_unfair_lock_unlock(&self->_pivotCachedIndexesUnfairLock);
  }
}

- (unsigned)rowAggregateGroupSize
{
  v5 = objc_msgSend_groupBySet(self, a2, v2, v3, v4);
  if (objc_msgSend_activeFlatteningDimension(v5, v6, v7, v8, v9))
  {
    v14 = 1;
  }

  else
  {
    v15 = objc_msgSend_aggregates(v5, v10, v11, v12, v13);
    v14 = objc_msgSend_count(v15, v16, v17, v18, v19);
  }

  return v14;
}

- (unsigned)columnAggregateGroupSize
{
  v5 = objc_msgSend_groupBySet(self, a2, v2, v3, v4);
  if (objc_msgSend_activeFlatteningDimension(v5, v6, v7, v8, v9) == 1)
  {
    v14 = objc_msgSend_aggregates(v5, v10, v11, v12, v13);
    v19 = objc_msgSend_count(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

@end