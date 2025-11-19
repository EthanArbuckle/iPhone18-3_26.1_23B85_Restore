@interface TSTGroupBySet
- (BOOL)hasRunningTotalAggregates;
- (BOOL)hasUnfilteredAt:(const TSKUIDStruct *)a3 forDimension:(int64_t)a4;
- (BOOL)hasValidRunningTotalFieldForAggregate:(id)a3;
- (BOOL)sawMissingCombination:(const TSUIndexSet *)a3;
- (TSKUIDStruct)columnGroupUidForColumnUid:(const TSKUIDStruct *)a3 outAggregateIndex:(unint64_t *)a4;
- (TSKUIDStruct)columnUIDForGroupingColumnName:(id)a3;
- (TSKUIDStruct)pivotDataTableUID;
- (TSKUIDStruct)pivotTableUID;
- (TSKUIDStruct)rowGroupUidForRowUid:(const TSKUIDStruct *)a3 outAggregateIndex:(unint64_t *)a4;
- (TSTGroupBy)groupByForRowGroups;
- (TSTGroupBySet)initWithPivotTableUID:(const TSKUIDStruct *)a3;
- (TSUIndexSet)pivotDataModelRowIndexesNeededForCell:(SEL)a3;
- (const)allColumnUids;
- (const)allRowUids;
- (const)baseColumnUids;
- (const)baseRowUids;
- (const)columnUidsForColumnGroupUid:(const TSKUIDStruct *)a3;
- (const)rowUidsForRowGroupUid:(const TSKUIDStruct *)a3;
- (id).cxx_construct;
- (id)aggregateForUidCoord:(const TSKUIDStructCoord *)a3;
- (id)categoryRefForUidCoord:(const TSKUIDStructCoord *)a3 outShowAsType:(unsigned __int8 *)a4;
- (id)columnNameForAggregateIndex:(unint64_t)a3 allowDuplicateNames:(BOOL)a4;
- (id)compactDescriptionForAggregateIndex:(unint64_t)a3 locale:(id)a4;
- (id)compactDescriptionForAggregateIndex:(unint64_t)a3 useShortLabel:(BOOL)a4 allowDuplicateNames:(BOOL)a5 locale:(id)a6;
- (id)description;
- (id)descriptionForAggregateIndex:(unint64_t)a3 locale:(id)a4;
- (id)descriptionForAggregateIndex:(unint64_t)a3 useShortLabel:(BOOL)a4 allowDuplicateNames:(BOOL)a5 locale:(id)a6;
- (id)descriptionForPivotBodyCellForUidCoord:(const TSKUIDStructCoord *)a3;
- (id)descriptionForPivotGroupCellForColumnUid:(const TSKUIDStruct *)a3 upToLevel:(unsigned __int8)a4;
- (id)descriptionForPivotGroupCellForRowUid:(const TSKUIDStruct *)a3 upToLevel:(unsigned __int8)a4;
- (id)duplicateFilterSet;
- (id)expandGroupUidsForFlattening:(id)a3 forDimension:(int64_t)a4;
- (id)filteringCategoryRefAt:(const TSKUIDStruct *)a3 forDimension:(int64_t)a4;
- (id)findExistingGroupNodeInGroupBy:(id)a3 usingValues:(const void *)a4 upToLevel:(unint64_t)a5 coerceForDateFields:(BOOL)a6;
- (id)firstAggregate;
- (id)getPivotDataBundleForUidCoord:(const TSKUIDStructCoord *)a3 upToLevel:(unsigned __int8)a4;
- (id)grandGrandTotalCategoryRefForAggregate:(id)a3;
- (id)grandTotalCategoryRefForColumn:(const TSKUIDStruct *)a3 forAggregate:(id)a4;
- (id)grandTotalCategoryRefForRow:(const TSKUIDStruct *)a3 forAggregate:(id)a4;
- (id)groupByForColumnLevel:(unsigned __int8)a3 rowLevel:(unsigned __int8)a4;
- (id)groupByForOwnerIndex:(unsigned __int16)a3 createIfMissing:(BOOL)a4;
- (id)groupByForUuidCoord:(const TSKUIDStructCoord *)a3;
- (id)groupNodeForUuidCoord:(const TSKUIDStructCoord *)a3;
- (id)groupValueTupleForUuidCoord:(const TSKUIDStructCoord *)a3 createIfMissing:(BOOL)a4;
- (id)groupingColumnForIndex:(unint64_t)a3;
- (id)groupingColumnsForOwnerIndex:(unsigned __int16)a3;
- (id)p_descriptionForPivotGroupValueTuple:(id)a3 upToLevel:(unsigned __int8)a4 locale:(id)a5;
- (id)percentParentDenominatorCategoryRefFor:(id)a3 inGroupBy:(id)a4 forAggregate:(id)a5 forShowAsType:(unsigned __int8)a6;
- (id)percentRunningDenominatorCategoryRefFor:(id)a3 inGroupBy:(id)a4 runningOnColumnUid:(const TSKUIDStruct *)a5 forAggregate:(id)a6;
- (id)restrictColumnIndexes:(id)a3 forAggrIndexLevel:(unsigned __int16)a4 forPivotTable:(id)a5;
- (id)restrictColumnIndexes:(id)a3 toColumnGroupLevel:(unsigned __int8)a4 forPivotTable:(id)a5;
- (id)restrictRowIndexes:(id)a3 forAggrIndexLevel:(unsigned __int16)a4 forPivotTable:(id)a5;
- (id)restrictRowIndexes:(id)a3 toRowGroupLevel:(unsigned __int8)a4 forPivotTable:(id)a5;
- (int)linkToCalcEngine:(id)a3;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (int64_t)groupingIndexForColumnUID:(const TSKUIDStruct *)a3;
- (unint64_t)aggregateIndexForColumnUid:(const TSKUIDStruct *)a3;
- (unint64_t)aggregateIndexForRowUid:(const TSKUIDStruct *)a3;
- (unint64_t)columnAggregateGroupSize;
- (unint64_t)rowAggregateGroupSize;
- (unsigned)aggregateIndexForAggName:(id)a3 locale:(id)a4;
- (unsigned)aggregateIndexForUidCoord:(const TSKUIDStructCoord *)a3;
- (unsigned)columnGroupLevelForColumnUID:(const TSKUIDStruct *)a3;
- (unsigned)maxGroupByIndex;
- (unsigned)ownerIndexForGroupingCombination:(const TSUIndexSet *)a3;
- (unsigned)rowGroupLevelForRowUID:(const TSKUIDStruct *)a3;
- (vector<TSTGroupNode)allGroupRoots;
- (vector<unsigned)groupColumnIndexesForOwnerIndex:(TSTGroupBySet *)self;
- (void)clearMissingCombinations;
- (void)getHidingIndexesForGrandTotalsForPivotTable:(id)a3 columns:(id)a4 rows:(id)a5;
- (void)getPivotHidingIndexesForGroupingColumn:(const TSKUIDStruct *)a3 columns:(id)a4 rows:(id)a5 forHiding:(BOOL)a6 forPivotTable:(id)a7;
- (void)p_resetAllGroupUids:(void *)a3 baseGroupUids:(void *)a4 summaryGroupUids:(void *)a5 forGroupBy:(id)a6 uptoLevel:(unsigned __int8)a7 isFlattening:(BOOL)a8;
- (void)resetGroupingList;
- (void)restoreFromPivotDataTable:(id)a3 columnGroupings:(id)a4 rowGroupings:(id)a5 aggregates:(id)a6 flatteningDimension:(int64_t)a7;
- (void)setHiddenStates:(id)a3;
- (void)setPivotRulesWithPivotDataTable:(id)a3 columnGroupings:(id)a4 rowGroupings:(id)a5 aggregates:(id)a6 flatteningDimension:(int64_t)a7;
@end

@implementation TSTGroupBySet

- (TSTGroupBySet)initWithPivotTableUID:(const TSKUIDStruct *)a3
{
  v8.receiver = self;
  v8.super_class = TSTGroupBySet;
  v4 = [(TSTGroupBySet *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pivotTableUID = *a3;
    v7 = 0;
    sub_221151CB8(&v4->_inUseGroupBys.__begin_, 0x44DuLL, &v7);
  }

  return v5;
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  self->_calcEngine = a3;
  self->_isRegisteredWithCalcEngine = 1;
  if (a3)
  {
    objc_msgSend_resetGroupingList(self, a2, a3, a4, v4);
  }

  return 0;
}

- (int)linkToCalcEngine:(id)a3
{
  self->_calcEngine = a3;
  self->_isRegisteredWithCalcEngine = 1;
  if (a3)
  {
    objc_msgSend_resetGroupingList(self, a2, a3, v3, v4);
  }

  return 0;
}

- (TSKUIDStruct)pivotDataTableUID
{
  v5 = sub_2212C4930(&self->_pivotTableUID._lower, 0x64, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = TSKUIDStruct::description(&self->_pivotTableUID);
  objc_msgSend_appendFormat_(v3, v5, @"TSTGroupBySet<%p> for pivot: %@\n", v6, v7, self, v4);

  begin = self->_inUseGroupBys.__begin_;
  var0 = self->_inUseGroupBys.var0;
  if (begin != var0)
  {
    v10 = 0;
    do
    {
      v11 = *begin;
      v16 = v11;
      if (v11)
      {
        v23._lower = objc_msgSend_ownerUID(v11, v12, v13, v14, v15);
        v23._upper = v17;
        v18 = TSKUIDStruct::description(&v23);
        objc_msgSend_appendFormat_(v3, v19, @"  GroupBy %d: %@\n", v20, v21, v10, v18);
      }

      v10 = (v10 + 1);

      ++begin;
    }

    while (begin != var0);
  }

  return v3;
}

- (void)setHiddenStates:(id)a3
{
  v24 = a3;
  if (self->_hiddenStates != v24)
  {
    objc_storeStrong(&self->_hiddenStates, a3);
    begin = self->_inUseGroupBys.__begin_;
    var0 = self->_inUseGroupBys.var0;
    while (begin != var0)
    {
      v7 = *begin;
      objc_msgSend_setHiddenStates_(v7, v8, v24, v9, v10);
      v15 = objc_msgSend_calcEngine(v7, v11, v12, v13, v14);

      if (v15)
      {
        objc_msgSend_resetGroupings(v7, v16, v17, v18, v19);
        objc_msgSend_didChangeGroupByStructure(v7, v20, v21, v22, v23);
      }

      ++begin;
    }
  }
}

- (BOOL)hasValidRunningTotalFieldForAggregate:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_showAsType(v4, v5, v6, v7, v8) == 6 || objc_msgSend_showAsType(v4, v9, v10, v11, v12) == 7) && (v13 = objc_msgSend_runningTotalGroupingColumnUid(v4, v9, v10, v11, v12), v13 | v14))
  {
    v18 = objc_msgSend_rowGroupings(self, v14, v15, v16, v17);
    v23 = objc_msgSend_runningTotalGroupingColumnUid(v4, v19, v20, v21, v22);
    v26 = objc_msgSend_groupingColumnForColumnUID_(v18, v24, v23, v24, v25);

    if (v26)
    {
      v31 = 1;
    }

    else
    {
      v32 = objc_msgSend_columnGroupings(self, v27, v28, v29, v30);
      v37 = objc_msgSend_runningTotalGroupingColumnUid(v4, v33, v34, v35, v36);
      v26 = objc_msgSend_groupingColumnForColumnUID_(v32, v38, v37, v38, v39);

      v31 = v26 != 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)restoreFromPivotDataTable:(id)a3 columnGroupings:(id)a4 rowGroupings:(id)a5 aggregates:(id)a6 flatteningDimension:(int64_t)a7
{
  v74 = a3;
  v72 = a4;
  v13 = a5;
  v14 = a6;
  objc_storeStrong(&self->_pivotDataTable, a3);
  objc_storeStrong(&self->_columnGroupings, a4);
  objc_storeStrong(&self->_rowGroupings, a5);
  objc_storeStrong(&self->_aggregates, a6);
  self->_flatteningDimension = a7;
  pivotDataTable = self->_pivotDataTable;
  if (!pivotDataTable)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBySet restoreFromPivotDataTable:columnGroupings:rowGroupings:aggregates:flatteningDimension:]", v17, v18, v72, v74);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 200, 0, "Pivot data model missing when restoring rules for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    pivotDataTable = self->_pivotDataTable;
  }

  v31 = objc_msgSend_categoryOwner(pivotDataTable, v15, v16, v17, v18, v72);
  self->_aggregateUidList.__end_ = self->_aggregateUidList.__begin_;
  sub_221159728(&self->_aggregateUidMap);
  v36 = objc_msgSend_count(self->_aggregates, v32, v33, v34, v35);
  v45 = objc_msgSend_asArray(self->_aggregates, v37, v38, v39, v40);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      v47 = objc_msgSend_objectAtIndex_(v45, v41, i, v43, v44);
      *&v76 = objc_msgSend_columnAggregateUid(v47, v48, v49, v50, v51);
      *(&v76 + 1) = v52;
      sub_221083454(&self->_aggregateUidList, &v76);
      *&v76 = objc_msgSend_columnAggregateUid(v47, v53, v54, v55, v56);
      *(&v76 + 1) = v57;
      *&v75 = i;
      *(&v75 + 1) = v47;
      sub_2211597C8(&self->_aggregateUidMap.__table_.__bucket_list_.__ptr_, &v76);
    }
  }

  v58 = 0;
  for (j = 0; j != 1101; ++j)
  {
    v76 = 0uLL;
    *&v75 = objc_msgSend_pivotDataTableUID(self, v41, v42, v43, v44);
    *(&v75 + 1) = v60;
    *&v76 = sub_2212C4930(&v75, (j + 205), v61, v62, v63);
    *(&v76 + 1) = v64;
    v67 = objc_msgSend_groupByByUid_(v31, v64, &v76, v65, v66);
    v71 = v67;
    if (v67)
    {
      objc_msgSend_setGroupBySet_(v67, v68, self, v69, v70);
      objc_storeStrong(&self->_inUseGroupBys.__begin_[v58], v71);
    }

    ++v58;
  }

  objc_msgSend_resetGroupingList(self, v41, v42, v43, v44);
}

- (void)setPivotRulesWithPivotDataTable:(id)a3 columnGroupings:(id)a4 rowGroupings:(id)a5 aggregates:(id)a6 flatteningDimension:(int64_t)a7
{
  v93 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  objc_storeStrong(&self->_pivotDataTable, a3);
  objc_storeStrong(&self->_columnGroupings, a4);
  objc_storeStrong(&self->_rowGroupings, a5);
  objc_storeStrong(&self->_aggregates, a6);
  self->_flatteningDimension = a7;
  objc_msgSend_clearMissingCombinations(self, v16, v17, v18, v19);
  pivotDataTable = self->_pivotDataTable;
  if (!pivotDataTable)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTGroupBySet setPivotRulesWithPivotDataTable:columnGroupings:rowGroupings:aggregates:flatteningDimension:]", v22, v23);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 244, 0, "Pivot data model missing when setting rules for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    pivotDataTable = self->_pivotDataTable;
  }

  v36 = objc_msgSend_categoryOwner(pivotDataTable, v20, v21, v22, v23);
  self->_aggregateUidList.__end_ = self->_aggregateUidList.__begin_;
  sub_221159728(&self->_aggregateUidMap);
  v45 = objc_msgSend_count(self->_aggregates, v37, v38, v39, v40);
  if (v45)
  {
    v46 = 0;
    do
    {
      v47 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v41, v46, v43, v44);
      *&v98 = objc_msgSend_columnAggregateUid(v47, v48, v49, v50, v51);
      *(&v98 + 1) = v52;
      sub_221083454(&self->_aggregateUidList, &v98);
      *&v98 = objc_msgSend_columnAggregateUid(v47, v53, v54, v55, v56);
      *(&v98 + 1) = v57;
      v96 = v46;
      v97 = v47;
      sub_2211597C8(&self->_aggregateUidMap.__table_.__bucket_list_.__ptr_, &v98);

      ++v46;
    }

    while (v45 != v46);
  }

  if (self->_calcEngine && (objc_msgSend_minion(v36, v41, v42, v43, v44), v58 = objc_claimAutoreleasedReturnValue(), v58, !v58))
  {
    v60 = [TSCEBulkCellChangeMinion alloc];
    v59 = objc_msgSend_initWithCalcEngine_(v60, v61, self->_calcEngine, v62, v63);
    objc_msgSend_setMinion_(v36, v64, v59, v65, v66);
  }

  else
  {
    v59 = 0;
  }

  v67 = objc_msgSend_numPracticalGroupBys(self, v41, v42, v43, v44);
  for (i = 0; i != 1101; ++i)
  {
    v69 = self->_inUseGroupBys.__begin_[i];
    v73 = v69;
    if (v69)
    {
      objc_msgSend_setGroupBySet_(v69, v70, 0, v71, v72);
      objc_msgSend_unregisterGroupBy_(v36, v74, v73, v75, v76);
      begin = self->_inUseGroupBys.__begin_;
      v78 = begin[i];
      begin[i] = 0;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2211527B4;
  block[3] = &unk_27845FB10;
  block[4] = self;
  v79 = v36;
  v95 = v79;
  dispatch_apply(v67, 0, block);
  objc_msgSend_resetGroupingList(self, v80, v81, v82, v83);
  hiddenStates = self->_hiddenStates;
  if (hiddenStates)
  {
    objc_msgSend_filterSetUpdated(hiddenStates, v84, v85, v86, v87);
  }

  if (v59)
  {
    objc_msgSend_setMinion_(v79, v84, 0, v86, v87);
    objc_msgSend_flushAllChanges(v59, v89, v90, v91, v92);
  }
}

- (void)resetGroupingList
{
  self->_allFlattenedUids.__end_ = self->_allFlattenedUids.__begin_;
  self->_baseFlattenedUids.__end_ = self->_baseFlattenedUids.__begin_;
  sub_221159A8C(&self->_groupAggregateUidFlatteningMap);
  sub_2210BE918(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_);
  flatteningDimension = self->_flatteningDimension;
  if (flatteningDimension == 1)
  {
    if (objc_msgSend_count(self->_aggregates, v3, v4, v5, v6) > 1)
    {
      v8 = 1;
      goto LABEL_9;
    }

    flatteningDimension = self->_flatteningDimension;
  }

  if (flatteningDimension || objc_msgSend_count(self->_aggregates, v3, v4, v5, v6) <= 1)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  self->_activeFlatteningDimension = v8;
  if (self->_inUseGroupBys.var0 != self->_inUseGroupBys.__begin_)
  {
    v25 = objc_msgSend_groupByForColumnGroups(self, v3, v4, v5, v6);
    v13 = objc_msgSend_count(self->_columnGroupings, v9, v10, v11, v12);
    objc_msgSend_p_resetAllGroupUids_baseGroupUids_summaryGroupUids_forGroupBy_uptoLevel_isFlattening_(self, v14, &self->_allColumnGroupUids, &self->_baseColumnGroupUids, &self->_summaryColumnGroupUids, v25, v13, self->_activeFlatteningDimension == 1);

    v26 = objc_msgSend_groupByForRowGroups(self, v15, v16, v17, v18);
    v23 = objc_msgSend_count(self->_rowGroupings, v19, v20, v21, v22);
    objc_msgSend_p_resetAllGroupUids_baseGroupUids_summaryGroupUids_forGroupBy_uptoLevel_isFlattening_(self, v24, &self->_allRowGroupUids, &self->_baseRowGroupUids, &self->_summaryRowGroupUids, v26, v23, self->_activeFlatteningDimension == 0);
  }
}

- (void)p_resetAllGroupUids:(void *)a3 baseGroupUids:(void *)a4 summaryGroupUids:(void *)a5 forGroupBy:(id)a6 uptoLevel:(unsigned __int8)a7 isFlattening:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a6;
  *(a3 + 1) = *a3;
  *(a4 + 1) = *a4;
  *(a5 + 1) = *a5;
  v34 = v14;
  objc_msgSend_initialGroupOrderForGroupBy_baseLevel_outAllUids_outBaseUids_outSummaryUids_(TSTPivotRowColumnOrder, v15, v14, v9, a3, a4, a5);
  if (v8)
  {
    v20 = objc_msgSend_count(self->_aggregates, v16, v17, v18, v19);
    v24 = *a3;
    v25 = *(a3 + 1);
    if (*a3 != v25)
    {
      v26 = 0;
      v27 = v20;
      do
      {
        __p = 0;
        v37 = 0;
        v38 = 0;
        if (v27)
        {
          v28 = 0;
          for (i = 0; i != v27; ++i)
          {
            *&v35 = sub_2211A8E7C(v24, i, v21, v22, v23);
            *(&v35 + 1) = v30;
            sub_221083454(&__p, &v35);
            v35 = *v24;
            v39 = __p + v28;
            v31 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, __p + v28);
            *(v31 + 2) = v35;
            v31[6] = i;
            v28 += 16;
          }
        }

        *&v35 = v24;
        v32 = (sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, v24) + 4);
        if (v32 != &__p)
        {
          sub_2210BD068(v32, __p, v37, (v37 - __p) >> 4);
        }

        sub_2210F0C88(&self->_allFlattenedUids.__begin_, self->_allFlattenedUids.__end_, __p, v37, (v37 - __p) >> 4);
        if (v26 < (*(a4 + 1) - *a4) >> 4)
        {
          v33 = (*a4 + 16 * v26);
          if (*v24 == *v33 && v24[1] == v33[1])
          {
            sub_2210F0C88(&self->_baseFlattenedUids.__begin_, self->_baseFlattenedUids.__end_, __p, v37, (v37 - __p) >> 4);
            ++v26;
          }
        }

        if (__p)
        {
          v37 = __p;
          operator delete(__p);
        }

        v24 += 2;
      }

      while (v24 != v25);
    }
  }
}

- (id)groupByForColumnLevel:(unsigned __int8)a3 rowLevel:(unsigned __int8)a4
{
  v5 = a4;
  v6 = a3;
  if (objc_msgSend_count(self->_columnGroupings, a2, a3, a4, v4) < a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 376, 0, "columnLevel exceeds columnGroupings.count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  if (objc_msgSend_count(self->_rowGroupings, v8, v9, v10, v11) < v5)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v25, v26);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 377, 0, "rowLevel exceeds rowGroupings.count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  if (!self->_inUseGroupBys.__begin_[v6])
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTGroupBySet groupByForColumnLevel:rowLevel:]", v25, v26);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 379, 0, "No groupBy set for columnLevel: %d", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = self->_inUseGroupBys.__begin_[objc_msgSend_count(self->_columnGroupings, v23, v24, v25, v26) - v6];

  return v49;
}

- (TSTGroupBy)groupByForRowGroups
{
  v5 = self->_inUseGroupBys.__begin_[objc_msgSend_count(self->_columnGroupings, a2, v2, v3, v4)];

  return v5;
}

- (unsigned)maxGroupByIndex
{
  v6 = objc_msgSend_count(self->_columnGroupings, a2, v2, v3, v4);
  v11 = objc_msgSend_count(self->_rowGroupings, v7, v8, v9, v10);
  if ((v11 + v6) < 2)
  {
    return 214;
  }

  v12 = v11 + v6 - 1;
  v13 = 2;
  do
  {
    v13 *= 2;
    --v12;
  }

  while (v12);
  return v13 + 213;
}

- (vector<unsigned)groupColumnIndexesForOwnerIndex:(TSTGroupBySet *)self
{
  v6 = a4;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v9 = objc_msgSend_count(self->_columnGroupings, a3, a4, v4, v5);
  result = objc_msgSend_count(self->_rowGroupings, v10, v11, v12, v13);
  if (v6 > 0xD6)
  {
    if (v6 <= 0x519)
    {
      if ((result + v9 - 1) >= 0)
      {
        v33 = v6 - 214;
        v34 = result + v9;
        do
        {
          --v34;
          if (v33)
          {
            v53 = v34;
            sub_2211531C0(&retstr->__begin_, &v53);
          }

          v33 >>= 1;
        }

        while (v34 > 0);
      }

      begin = retstr->__begin_;
      end = retstr->__end_;
      v37 = end - 1;
      if (retstr->__begin_ != end && v37 > begin)
      {
        v39 = begin + 1;
        do
        {
          v40 = *(v39 - 1);
          *(v39 - 1) = *v37;
          *v37-- = v40;
          v20 = v39++ >= v37;
        }

        while (!v20);
      }
    }
  }

  else
  {
    v19 = v6 - 205;
    v20 = v9 >= v19;
    v21 = v9 - v19;
    if (v20)
    {
      if (v21)
      {
        v41 = 0;
        if (v21 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v21;
        }

        v43 = retstr->__end_;
        do
        {
          cap = retstr->__cap_;
          if (v43 >= cap)
          {
            v45 = retstr->__begin_;
            v46 = v43 - retstr->__begin_;
            v47 = v46 >> 3;
            v48 = (v46 >> 3) + 1;
            if (v48 >> 61)
            {
              sub_22107C148();
            }

            v49 = cap - v45;
            if (v49 >> 2 > v48)
            {
              v48 = v49 >> 2;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v50 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v50 = v48;
            }

            if (v50)
            {
              sub_2210874C4(retstr, v50);
            }

            *(8 * v47) = v41;
            v43 = (8 * v47 + 8);
            memcpy(0, v45, v46);
            v51 = retstr->__begin_;
            retstr->__begin_ = 0;
            retstr->__end_ = v43;
            retstr->__cap_ = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            *v43++ = v41;
          }

          retstr->__end_ = v43;
          ++v41;
        }

        while (v42 != v41);
      }

      for (i = 0; ; ++i)
      {
        result = objc_msgSend_count(self->_rowGroupings, v15, v16, v17, v18);
        if (i >= result)
        {
          break;
        }

        v53 = v9;
        sub_2211531C0(&retstr->__begin_, &v53);
        ++v9;
      }
    }

    else
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBySet groupColumnIndexesForOwnerIndex:]", v17, v18);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 440, 0, "Exceeded our set of practical groupBys");

      return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }
  }

  return result;
}

- (id)groupingColumnsForOwnerIndex:(unsigned __int16)a3
{
  v3 = a3;
  v9 = objc_opt_new();
  columnGroupings = self->_columnGroupings;
  if (v3 == 205)
  {
    v11 = objc_msgSend_groupingColumns(columnGroupings, v5, v6, v7, v8);
    objc_msgSend_addObjectsFromArray_(v9, v12, v11, v13, v14);

    v19 = objc_msgSend_groupingColumns(self->_rowGroupings, v15, v16, v17, v18);
    objc_msgSend_addObjectsFromArray_(v9, v20, v19, v21, v22);
  }

  else
  {
    v23 = objc_msgSend_count(columnGroupings, v5, v6, v7, v8);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v24, v3, v25, v26);
    v31 = v57;
    if (v57 != v58)
    {
      do
      {
        v32 = *v31;
        v33 = *v31 - v23;
        if (*v31 >= v23)
        {
          v34 = objc_msgSend_groupingColumns(self->_rowGroupings, v27, v28, v29, v30);
          objc_msgSend_objectAtIndexedSubscript_(v34, v38, v33, v39, v40);
        }

        else
        {
          v34 = objc_msgSend_groupingColumns(self->_columnGroupings, v27, v28, v29, v30);
          objc_msgSend_objectAtIndexedSubscript_(v34, v35, v32, v36, v37);
        }
        v41 = ;

        if (v41)
        {
          objc_msgSend_addObject_(v9, v42, v41, v43, v44);
        }

        else
        {
          v45 = MEMORY[0x277D81150];
          v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTGroupBySet groupingColumnsForOwnerIndex:]", v43, v44);
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v48, v49);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 487, 0, "Expected to get a grouping column for index: %d", v32);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
        }

        ++v31;
      }

      while (v31 != v58);
      v31 = v57;
    }

    if (v31)
    {
      operator delete(v31);
    }
  }

  return v9;
}

- (int64_t)groupingIndexForColumnUID:(const TSKUIDStruct *)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = objc_msgSend_groupingColumns(self->_columnGroupings, a2, a3, v3, v4);
  v9 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v38, v43, 16);
  if (v14)
  {
    v15 = *v39;
LABEL_3:
    v16 = 0;
    v17 = v9;
    v9 += v14;
    while (1)
    {
      if (*v39 != v15)
      {
        objc_enumerationMutation(v7);
      }

      if (objc_msgSend_columnUid(*(*(&v38 + 1) + 8 * v16), v10, v11, v12, v13) == a3->_lower && v10 == a3->_upper)
      {
        break;
      }

      ++v17;
      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v38, v43, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v17;
    }
  }

  else
  {
LABEL_12:
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = objc_msgSend_groupingColumns(self->_rowGroupings, v19, v20, v21, v22, 0);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v34, v42, 16);
  if (v29)
  {
    v30 = *v35;
LABEL_16:
    v31 = 0;
    v17 = v9;
    v9 += v29;
    while (1)
    {
      if (*v35 != v30)
      {
        objc_enumerationMutation(v23);
      }

      if (objc_msgSend_columnUid(*(*(&v34 + 1) + 8 * v31), v25, v26, v27, v28) == a3->_lower && v25 == a3->_upper)
      {
        break;
      }

      ++v17;
      if (v29 == ++v31)
      {
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v34, v42, 16);
        if (v29)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v17;
}

- (id)groupingColumnForIndex:(unint64_t)a3
{
  v7 = objc_msgSend_count(self->_columnGroupings, a2, a3, v3, v4);
  v12 = a3 - v7;
  if (a3 < v7)
  {
    v13 = objc_msgSend_groupingColumns(self->_columnGroupings, v8, v9, v10, v11);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, a3, v15, v16);
LABEL_5:
    v25 = v17;

    goto LABEL_7;
  }

  if (v12 < objc_msgSend_count(self->_rowGroupings, v8, v9, v10, v11))
  {
    v13 = objc_msgSend_groupingColumns(self->_rowGroupings, v18, v19, v20, v21);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v13, v22, v12, v23, v24);
    goto LABEL_5;
  }

  v25 = 0;
LABEL_7:

  return v25;
}

- (unsigned)ownerIndexForGroupingCombination:(const TSUIndexSet *)a3
{
  v7 = objc_msgSend_count(self->_columnGroupings, a2, a3, v3, v4);
  v12 = objc_msgSend_count(self->_rowGroupings, v8, v9, v10, v11) + v7;
  v13 = TSUIndexSet::count(a3);
  if (v13 > v12)
  {
    return 0;
  }

  v19 = v13;
  v20 = v13 == v12 || v13 == 0;
  if (v20)
  {
    return 205;
  }

  v21 = objc_msgSend_numPracticalGroupBys(self, v14, v15, v16, v17);
  v25 = v21 + 204;
  if ((v21 + 204) < 0xCDu)
  {
    goto LABEL_27;
  }

  v18 = 0;
  v26 = 205;
  *&v27.f64[0] = 0x8000000080000000;
  *&v27.f64[1] = 0x8000000080000000;
  v36 = vnegq_f64(v27);
  do
  {
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v22, v26, v23, v24, v36);
    if (v19 <= (v39 - __p) >> 3)
    {
      *&v37 = -1;
      v37._singleRange = v36;
      v37._multipleRanges = 0;
      TSUIndexSet::operator=();
      v28 = v39;
      if (__p != v39)
      {
        v29 = __p + 8;
        while ((TSUIndexSet::containsIndex(&v37) & 1) != 0)
        {
          TSUIndexSet::removeIndex(&v37);
          if (!TSUIndexSet::count(&v37))
          {
            v18 = v26;
            break;
          }

          v20 = v29 == v28;
          v29 += 8;
          if (v20)
          {
            break;
          }
        }
      }

      TSUIndexSet::~TSUIndexSet(&v37);
      if (v18)
      {
        v30 = 1;
        goto LABEL_23;
      }

      v18 = 0;
    }

    v30 = 0;
LABEL_23:
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    ++v26;
  }

  while (((v26 <= v25) & ~v30) != 0);
  if (!v18)
  {
LABEL_27:
    v31 = v12 - 1;
    if ((v12 - 1) < 0)
    {
      return 214;
    }

    else
    {
      v32 = 0;
      v33 = 1;
      do
      {
        if (TSUIndexSet::containsIndex(a3))
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v32 += v34;
        v33 *= 2;
        --v31;
      }

      while (v31 != -1);
      return v32 + 214;
    }
  }

  return v18;
}

- (void)clearMissingCombinations
{
  end = self->_assertedOnMissingCombinations.__end_;
  begin = self->_assertedOnMissingCombinations.__begin_;
  while (end != begin)
  {
    TSUIndexSet::~TSUIndexSet(end - 1);
  }

  self->_assertedOnMissingCombinations.__end_ = begin;
}

- (BOOL)sawMissingCombination:(const TSUIndexSet *)a3
{
  begin = self->_assertedOnMissingCombinations.__begin_;
  end = self->_assertedOnMissingCombinations.__end_;
  while (1)
  {
    if (begin == end)
    {
      sub_221153A98(&self->_assertedOnMissingCombinations);
      return 0;
    }

    if (TSUIndexSet::operator==())
    {
      break;
    }

    ++begin;
  }

  return 1;
}

- (id)groupByForOwnerIndex:(unsigned __int16)a3 createIfMissing:(BOOL)a4
{
  v5 = a3;
  v6 = (a3 - 205);
  if (v6 >= 0x44D)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBySet groupByForOwnerIndex:createIfMissing:]", a4, v4);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 630, 0, "ownerIndex out of range: %d", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v12 = 0;
  }

  else
  {
    v7 = a4;
    v12 = self->_inUseGroupBys.__begin_[v6];
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = !v7;
    }

    if (!v13)
    {
      v14 = objc_msgSend_groupingColumnsForOwnerIndex_(self, v9, v5, v10, v11);
      v19 = objc_msgSend_categoryOwner(self->_pivotDataTable, v15, v16, v17, v18);
      v12 = objc_msgSend_registerGroupByForColumns_ownerIndex_hiddenStates_groupBySet_(v19, v20, v14, v5, self->_hiddenStates, self);
      objc_storeStrong(&self->_inUseGroupBys.__begin_[v6], v12);
      objc_msgSend_setAggregates_(v12, v21, self->_aggregates, v22, v23);
    }
  }

  return v12;
}

- (vector<TSTGroupNode)allGroupRoots
{
  v6 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  do
  {
    v7 = objc_msgSend_groupByForOwnerIndex_createIfMissing_(self, a3, (v6 + 205), 0, v3);
    v12 = objc_msgSend_topLevelGroupNode(v7, v8, v9, v10, v11);
    var1 = retstr->var1;
    var2 = retstr->var2;
    if (var1 >= var2)
    {
      v16 = var1 - retstr->var0;
      if ((v16 + 1) >> 61)
      {
        sub_22107C148();
      }

      v17 = var2 - retstr->var0;
      v18 = v17 >> 2;
      if (v17 >> 2 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v25 = retstr;
      if (v19)
      {
        sub_22107C1F0(retstr, v19);
      }

      v21 = 0;
      v22 = (8 * v16);
      v24 = 0;
      *v22 = v12;
      v23 = 8 * v16 + 8;
      sub_22107C098(retstr, &v21);
      v15 = retstr->var1;
      sub_22107C26C(&v21);
    }

    else
    {
      *var1 = v12;
      v15 = var1 + 1;
    }

    retstr->var1 = v15;

    ++v6;
  }

  while (v6 != 1101);
  return result;
}

- (unint64_t)columnAggregateGroupSize
{
  if (self->_activeFlatteningDimension == 1)
  {
    return objc_msgSend_count(self->_aggregates, a2, v2, v3, v4);
  }

  else
  {
    return 1;
  }
}

- (unint64_t)rowAggregateGroupSize
{
  if (self->_activeFlatteningDimension)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_count(self->_aggregates, a2, v2, v3, v4);
  }
}

- (const)allColumnUids
{
  v2 = 112;
  if (self->_activeFlatteningDimension == 1)
  {
    v2 = 256;
  }

  return self + v2;
}

- (const)allRowUids
{
  v2 = 184;
  if (!self->_activeFlatteningDimension)
  {
    v2 = 256;
  }

  return self + v2;
}

- (const)baseColumnUids
{
  v2 = 136;
  if (self->_activeFlatteningDimension == 1)
  {
    v2 = 280;
  }

  return self + v2;
}

- (const)baseRowUids
{
  v2 = 208;
  if (!self->_activeFlatteningDimension)
  {
    v2 = 280;
  }

  return self + v2;
}

- (const)columnUidsForColumnGroupUid:(const TSKUIDStruct *)a3
{
  if (self->_activeFlatteningDimension != 1)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupBySet columnUidsForColumnGroupUid:]", v6, v7, "[TSTGroupBySet columnUidsForColumnGroupUid:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", 711);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 711, 1, "Asking for flattened column aggregate uids while not flattening on columns");

    TSUCrashBreakpoint();
    abort();
  }

  return sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, a3) + 4;
}

- (const)rowUidsForRowGroupUid:(const TSKUIDStruct *)a3
{
  if (self->_activeFlatteningDimension)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupBySet rowUidsForRowGroupUid:]", v6, v7, "[TSTGroupBySet rowUidsForRowGroupUid:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", 716);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 716, 1, "Asking for flattened row aggregate uids while not flattening on rows");

    TSUCrashBreakpoint();
    abort();
  }

  return sub_221159D74(&self->_groupAggregateUidFlatteningMap.__table_.__bucket_list_.__ptr_, a3) + 4;
}

- (BOOL)hasRunningTotalAggregates
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_asArray(self->_aggregates, a2, v2, v3, v4, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v11)
  {
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v5);
        }

        if ((objc_msgSend_showAsType(*(*(&v15 + 1) + 8 * i), v7, v8, v9, v10) & 0xFE) == 6)
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v15, v19, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (TSKUIDStruct)columnGroupUidForColumnUid:(const TSKUIDStruct *)a3 outAggregateIndex:(unint64_t *)a4
{
  if (self->_activeFlatteningDimension == 1)
  {
    v5 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, a3);
    a3 = v5 + 2;
    lower = v5[3]._lower;
  }

  else
  {
    lower = 0;
  }

  v7 = a3->_lower;
  upper = a3->_upper;
  if (a4)
  {
    *a4 = lower;
  }

  result._upper = upper;
  result._lower = v7;
  return result;
}

- (TSKUIDStruct)rowGroupUidForRowUid:(const TSKUIDStruct *)a3 outAggregateIndex:(unint64_t *)a4
{
  if (self->_activeFlatteningDimension)
  {
    lower = 0;
  }

  else
  {
    v6 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, a3);
    a3 = v6 + 2;
    lower = v6[3]._lower;
  }

  v7 = a3->_lower;
  upper = a3->_upper;
  if (a4)
  {
    *a4 = lower;
  }

  result._upper = upper;
  result._lower = v7;
  return result;
}

- (id)expandGroupUidsForFlattening:(id)a3 forDimension:(int64_t)a4
{
  v6 = a3;
  v11 = v6;
  if (self->_activeFlatteningDimension == a4)
  {
    v12 = objc_msgSend_count(self->_aggregates, v7, v8, v9, v10);
    v17 = objc_msgSend_mutableCopy(v11, v13, v14, v15, v16);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2211543D8;
    v23[3] = &unk_27845FB38;
    v25 = v12;
    v18 = v17;
    v24 = v18;
    objc_msgSend_foreachUuid_(v11, v19, v23, v20, v21);
  }

  else
  {
    v18 = v6;
  }

  return v18;
}

- (unint64_t)aggregateIndexForColumnUid:(const TSKUIDStruct *)a3
{
  if (self->_activeFlatteningDimension == 1)
  {
    return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, a3)[6];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)aggregateIndexForRowUid:(const TSKUIDStruct *)a3
{
  if (self->_activeFlatteningDimension)
  {
    return 0;
  }

  else
  {
    return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, a3)[6];
  }
}

- (unsigned)aggregateIndexForUidCoord:(const TSKUIDStructCoord *)a3
{
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension != 1)
    {
      LOWORD(v5) = 0;
      return v5;
    }

    column = a3->_column;
  }

  else
  {
    column = a3->_row;
  }

  v7 = column;
  v8 = &v7;
  return sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v7)[6];
}

- (id)aggregateForUidCoord:(const TSKUIDStructCoord *)a3
{
  v6 = objc_msgSend_aggregateIndexForUidCoord_(self, a2, a3, v3, v4);
  if (objc_msgSend_count(self->_aggregates, v7, v8, v9, v10) <= v6)
  {
    v19 = 0;
  }

  else
  {
    v15 = objc_msgSend_asArray(self->_aggregates, v11, v12, v13, v14);
    v19 = objc_msgSend_objectAtIndex_(v15, v16, v6, v17, v18);
  }

  return v19;
}

- (id)columnNameForAggregateIndex:(unint64_t)a3 allowDuplicateNames:(BOOL)a4
{
  v5 = a4;
  if (!self->_calcEngine)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBySet columnNameForAggregateIndex:allowDuplicateNames:]", a4, v4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 824, 0, "Re-constructing a non-empty pivot table without the calc engine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (objc_msgSend_count(self->_aggregates, a2, a3, a4, v4) <= a3)
  {
    v39 = 0;
  }

  else
  {
    v23 = objc_msgSend_asArray(self->_aggregates, v19, v20, v21, v22);
    v27 = objc_msgSend_objectAtIndex_(v23, v24, a3, v25, v26);

    v32 = objc_msgSend_columnUid(v27, v28, v29, v30, v31);
    v36 = objc_msgSend_columnIndexForColumnUID_(self->_pivotDataTable, v33, v32, v33, v34);
    v53 = v36;
    if (v5)
    {
      v39 = objc_msgSend_displayNameForColumnAtIndex_(self->_pivotDataTable, v35, v36, v37, v38);
    }

    else
    {
      v40 = objc_msgSend_calcEngine(self, v35, v36, v37, v38);
      v45 = objc_msgSend_namer(v40, v41, v42, v43, v44);
      v52[0] = objc_msgSend_pivotDataTableUID(self, v46, v47, v48, v49);
      v52[1] = v50;
      v39 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v45, v50, &v53, v52, 1);
    }
  }

  return v39;
}

- (id)descriptionForAggregateIndex:(unint64_t)a3 locale:(id)a4
{
  v4 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, a2, a3, 0, 0, a4);

  return v4;
}

- (id)descriptionForAggregateIndex:(unint64_t)a3 useShortLabel:(BOOL)a4 allowDuplicateNames:(BOOL)a5 locale:(id)a6
{
  v6 = a5;
  v7 = a4;
  v14 = a6;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBySet descriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 847, 0, "Requires a locale here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self->_aggregates, v10, v11, v12, v13) <= a3)
  {
    v38 = 0;
  }

  else
  {
    v29 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v26, a3, v27, v28);
    v34 = objc_msgSend_aggregateType(v29, v30, v31, v32, v33);
    if (v7)
    {
      objc_msgSend_localizedShortLabelForAggType_(v14, v35, v34, v36, v37);
    }

    else
    {
      objc_msgSend_localizedLabelForAggType_(v14, v35, v34, v36, v37);
    }
    v39 = ;
    v42 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v40, a3, v6, v41);
    v48 = sub_221131078(v14, v43);
    if (!v39)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = objc_msgSend_aggregateType(v29, v44, v45, v46, v47);
      v55 = sub_2211CCD30(v50, v51, v52, v53, v54);
      v39 = objc_msgSend_stringWithFormat_(v49, v56, @"<Invalid AggType>: %@", v57, v58, v55);

      v59 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTGroupBySet descriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v61, v62);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v68, v63, v67, 859, 0, "Expecting to have localized label for all correct aggregate types");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, v48, v46, v47, v39, v42);
  }

  return v38;
}

- (id)compactDescriptionForAggregateIndex:(unint64_t)a3 locale:(id)a4
{
  v4 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, a2, a3, 0, 0, a4);

  return v4;
}

- (id)compactDescriptionForAggregateIndex:(unint64_t)a3 useShortLabel:(BOOL)a4 allowDuplicateNames:(BOOL)a5 locale:(id)a6
{
  v6 = a5;
  v7 = a4;
  v14 = a6;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBySet compactDescriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 872, 0, "Requires a locale here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (objc_msgSend_count(self->_aggregates, v10, v11, v12, v13) <= a3)
  {
    v38 = 0;
  }

  else
  {
    v29 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v26, a3, v27, v28);
    v34 = objc_msgSend_aggregateType(v29, v30, v31, v32, v33);
    if (v7)
    {
      objc_msgSend_localizedShortLabelForAggType_(v14, v35, v34, v36, v37);
    }

    else
    {
      objc_msgSend_localizedLabelForAggType_(v14, v35, v34, v36, v37);
    }
    v39 = ;
    v42 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v40, a3, v6, v41);
    v48 = sub_221131094(v14, v43);
    if (!v39)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = objc_msgSend_aggregateType(v29, v44, v45, v46, v47);
      v55 = sub_2211CCD30(v50, v51, v52, v53, v54);
      v39 = objc_msgSend_stringWithFormat_(v49, v56, @"<Invalid AggType>: %@", v57, v58, v55);

      v59 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTGroupBySet compactDescriptionForAggregateIndex:useShortLabel:allowDuplicateNames:locale:]", v61, v62);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v68, v63, v67, 884, 0, "Expecting to have localized label for all correct aggregate types");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
    }

    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v44, v48, v46, v47, v42, v39);
  }

  return v38;
}

- (unsigned)aggregateIndexForAggName:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_aggregates(self, v8, v9, v10, v11);
  v17 = objc_msgSend_count(v12, v13, v14, v15, v16);

  if (v17)
  {
    v20 = 0;
    while (1)
    {
      v21 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v18, v20, 0, v19);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v22, v21, v23, v24))
      {
        break;
      }

      v26 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v25, v20, 0, 0, v7);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v27, v26, v28, v29))
      {

        break;
      }

      v31 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v30, v20, 0, 0, v7);
      v35 = objc_msgSend_localizedCaseInsensitiveCompare_(v6, v32, v31, v33, v34);

      if (!v35)
      {
        goto LABEL_10;
      }

      if (v17 == ++v20)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    if (v20 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_11:
    v20 = 0;
    while (1)
    {
      v36 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v18, v20, 1, 0, v7);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v37, v36, v38, v39))
      {
        break;
      }

      v41 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v40, v20, 1, 0, v7);
      v45 = objc_msgSend_localizedCaseInsensitiveCompare_(v6, v42, v41, v43, v44);

      if (!v45)
      {
        goto LABEL_17;
      }

      if (v17 == ++v20)
      {
        goto LABEL_18;
      }
    }

LABEL_17:
    if (v20 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_18:
    v20 = 0;
    while (1)
    {
      v47 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v18, v20, 1, v46);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v48, v47, v49, v50))
      {
        break;
      }

      v52 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v51, v20, 0, 1, v7);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v53, v52, v54, v55))
      {

        break;
      }

      v57 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v56, v20, 0, 1, v7);
      v61 = objc_msgSend_localizedCaseInsensitiveCompare_(v6, v58, v57, v59, v60);

      if (!v61)
      {
        goto LABEL_26;
      }

      if (v17 == ++v20)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    if (v20 != 0xFFFF)
    {
      goto LABEL_32;
    }

LABEL_27:
    v20 = 0;
    while (1)
    {
      v62 = objc_msgSend_descriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v18, v20, 1, 1, v7);
      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v6, v63, v62, v64, v65))
      {
        break;
      }

      v67 = objc_msgSend_compactDescriptionForAggregateIndex_useShortLabel_allowDuplicateNames_locale_(self, v66, v20, 1, 1, v7);
      v71 = objc_msgSend_localizedCaseInsensitiveCompare_(v6, v68, v67, v69, v70);

      if (!v71)
      {
        goto LABEL_32;
      }

      if (v17 == ++v20)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_31:
    LOWORD(v20) = -1;
  }

LABEL_32:

  return v20;
}

- (TSKUIDStruct)columnUIDForGroupingColumnName:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v9 = objc_msgSend_groupingColumns(self->_rowGroupings, v5, v6, v7, v8);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v99, v104, 16);
  if (v15)
  {
    v16 = *v100;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v100 != v16)
      {
        objc_enumerationMutation(v9);
      }

      v18 = *(*(&v99 + 1) + 8 * v17);
      v98 = 0;
      pivotDataTable = self->_pivotDataTable;
      v20 = objc_msgSend_columnUid(v18, v11, v12, v13, v14);
      v98 = objc_msgSend_columnIndexForColumnUID_(pivotDataTable, v21, v20, v21, v22);
      v27 = objc_msgSend_calcEngine(self, v23, v24, v25, v26);
      v32 = objc_msgSend_namer(v27, v28, v29, v30, v31);
      v96 = objc_msgSend_pivotDataTableUID(self, v33, v34, v35, v36);
      v97 = v37;
      v38 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v32, v37, &v98, &v96, 1);

      if (!objc_msgSend_localizedCaseInsensitiveCompare_(v38, v39, v4, v40, v41))
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v99, v104, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v87 = objc_msgSend_columnUid(v18, v42, v43, v44, v45);
    v56 = v88;

    if (v87)
    {
      goto LABEL_24;
    }

    if (v56)
    {
      v87 = 0;
      goto LABEL_24;
    }
  }

  else
  {
LABEL_9:
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v50 = objc_msgSend_groupingColumns(self->_columnGroupings, v46, v47, v48, v49, 0);
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v92, v103, 16);
  if (v56)
  {
    v57 = *v93;
    while (2)
    {
      v58 = 0;
      do
      {
        if (*v93 != v57)
        {
          objc_enumerationMutation(v50);
        }

        v59 = *(*(&v92 + 1) + 8 * v58);
        v98 = 0;
        v60 = self->_pivotDataTable;
        v61 = objc_msgSend_columnUid(v59, v52, v53, v54, v55);
        v98 = objc_msgSend_columnIndexForColumnUID_(v60, v62, v61, v62, v63);
        v68 = objc_msgSend_calcEngine(self, v64, v65, v66, v67);
        v73 = objc_msgSend_namer(v68, v69, v70, v71, v72);
        v96 = objc_msgSend_pivotDataTableUID(self, v74, v75, v76, v77);
        v97 = v78;
        v79 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v73, v78, &v98, &v96, 1);

        if (!objc_msgSend_localizedCaseInsensitiveCompare_(v79, v80, v4, v81, v82))
        {
          v87 = objc_msgSend_columnUid(v59, v83, v84, v85, v86);
          v56 = v89;

          goto LABEL_23;
        }

        ++v58;
      }

      while (v56 != v58);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v92, v103, 16);
      if (v56)
      {
        continue;
      }

      break;
    }
  }

  v87 = 0;
LABEL_23:

LABEL_24:
  v90 = v87;
  v91 = v56;
  result._upper = v91;
  result._lower = v90;
  return result;
}

- (unsigned)columnGroupLevelForColumnUID:(const TSKUIDStruct *)a3
{
  v5 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, a2, a3, 0, v3);
  v7 = v6;
  v11 = objc_msgSend_groupByForColumnGroups(self, v6, v8, v9, v10);
  v14 = objc_msgSend_groupNodeForGroupUid_(v11, v12, v5, v7, v13);

  if (v14)
  {
    v19 = objc_msgSend_groupLevel(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (unsigned)rowGroupLevelForRowUID:(const TSKUIDStruct *)a3
{
  v5 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, a2, a3, 0, v3);
  v7 = v6;
  v11 = objc_msgSend_groupByForRowGroups(self, v6, v8, v9, v10);
  v14 = objc_msgSend_groupNodeForGroupUid_(v11, v12, v5, v7, v13);

  if (v14)
  {
    v19 = objc_msgSend_groupLevel(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (id)categoryRefForUidCoord:(const TSKUIDStructCoord *)a3 outShowAsType:(unsigned __int8 *)a4
{
  column = a3->_column;
  row = a3->_row;
  v95 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (!activeFlatteningDimension)
  {
    v93[0] = &row;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row);
    row = *(v8 + 2);
    goto LABEL_5;
  }

  if (activeFlatteningDimension == 1)
  {
    v93[0] = &v95;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v95);
    v95 = *(v8 + 2);
LABEL_5:
    v9 = v8[6];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v90 = objc_msgSend_groupByForColumnGroups(self, a2, a3, a4, v4, a4);
  v89 = objc_msgSend_groupByForRowGroups(self, v10, v11, v12, v13);
  v16 = objc_msgSend_groupNodeForGroupUid_(v90, v14, v95._lower, v95._upper, v15);
  v19 = objc_msgSend_groupNodeForGroupUid_(v89, v17, row._lower, row._upper, v18);
  v24 = objc_msgSend_groupLevel(v16, v20, v21, v22, v23);
  v29 = objc_msgSend_groupLevel(v19, v25, v26, v27, v28);
  v88 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v30, v24, v29, v31);
  v36 = objc_msgSend_groupValueTuple(v16, v32, v33, v34, v35);
  v41 = objc_msgSend_groupValueTuple(v19, v37, v38, v39, v40);
  v44 = objc_msgSend_groupValueUidForTuple_appendingTuple_(TSTGroupValueTuple, v42, v36, v41, v43);
  v46 = v45;
  v93[0] = v44;
  v93[1] = v45;

  if (v9 >= objc_msgSend_count(self->_aggregates, v47, v48, v49, v50))
  {
    v59 = 0;
    goto LABEL_15;
  }

  v55 = objc_msgSend_asArray(self->_aggregates, v51, v52, v53, v54);
  v59 = objc_msgSend_objectAtIndex_(v55, v56, v9, v57, v58);

  if (!v59)
  {
LABEL_15:
    v69 = 0;
    v64 = v88;
    goto LABEL_16;
  }

  v64 = v88;
  v65 = objc_msgSend_showAsType(v59, v60, v61, v62, v63);
  *v87 = v65;
  if ((v65 & 0xFE) == 6 && (objc_msgSend_hasValidRunningTotalFieldForAggregate_(self, v66, v59, v67, v68) & 1) == 0)
  {
    *v87 = 0;
  }

  v69 = objc_msgSend_groupNodeForGroupUid_(v88, v66, v44, v46, v68);

  if (v69)
  {
    v70 = [TSCECategoryRef alloc];
    v92[0] = objc_msgSend_groupByUid(v88, v71, v72, v73, v74);
    v92[1] = v75;
    v91[0] = objc_msgSend_columnUid(v59, v75, v76, v77, v78);
    v91[1] = v79;
    v83 = objc_msgSend_aggregateType(v59, v79, v80, v81, v82);
    v69 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v70, v84, v92, v93, v91, v83, (v29 + v24));
  }

LABEL_16:

  return v69;
}

- (id)getPivotDataBundleForUidCoord:(const TSKUIDStructCoord *)a3 upToLevel:(unsigned __int8)a4
{
  v4 = a4;
  column = a3->_column;
  row = a3->_row;
  v137 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (!activeFlatteningDimension)
  {
    p_row = &row;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row);
    row = *(v8 + 2);
    goto LABEL_5;
  }

  if (activeFlatteningDimension == 1)
  {
    p_row = &v137;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v137);
    v137 = *(v8 + 2);
LABEL_5:
    v9 = *(v8 + 24);
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = objc_opt_new();
  objc_msgSend_setAggregateIndex_(v10, v11, v9, v12, v13);
  objc_msgSend_setAggregateType_(v10, v14, 0, v15, v16);
  objc_msgSend_setShowAsType_(v10, v17, 0, v18, v19);
  if (v137 == 0uLL)
  {
    v133 = 0;
  }

  else
  {
    v133 = objc_msgSend_groupByForColumnGroups(self, v20, v21, v22, v23);
  }

  if (row == 0uLL)
  {
    v132 = 0;
  }

  else
  {
    v132 = objc_msgSend_groupByForRowGroups(self, v20, v21, v22, v23);
  }

  v135 = objc_msgSend_groupNodeForGroupUid_(v133, v20, v137._lower, v137._upper, v23);
  v134 = objc_msgSend_groupNodeForGroupUid_(v132, v24, row._lower, row._upper, v25);
  if (v135)
  {
    v30 = objc_msgSend_groupLevel(v135, v26, v27, v28, v29);
  }

  else
  {
    v30 = 0;
  }

  v31 = v134;
  if (v134)
  {
    v31 = objc_msgSend_groupLevel(v134, v26, v27, v28, v29);
  }

  if (v30 >= v4)
  {
    v32 = v4;
  }

  else
  {
    v32 = v30;
  }

  if (!v135)
  {
    v32 = v30;
  }

  if (v31 >= v4)
  {
    v33 = v4;
  }

  else
  {
    v33 = v31;
  }

  if (!v134)
  {
    v33 = v31;
  }

  if (v4 == 255)
  {
    v34 = v31;
  }

  else
  {
    v34 = v33;
  }

  if (v4 == 255)
  {
    v35 = v30;
  }

  else
  {
    v35 = v32;
  }

  v36 = v132;
  v131 = v35;
  if (v133 && (v36 = v133, v132))
  {
    v37 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v26, v35, v34, v29);
  }

  else
  {
    v37 = v36;
  }

  v42 = v37;
  if (v135)
  {
    if (v134)
    {
      v43 = objc_msgSend_groupValueTuple(v135, v38, v39, v40, v41);
      v48 = objc_msgSend_groupValueTuple(v134, v44, v45, v46, v47);
      v51 = objc_msgSend_groupValueUidForTuple_appendingTuple_(TSTGroupValueTuple, v49, v43, v48, v50);
      v53 = v52;

      goto LABEL_44;
    }

    v43 = objc_msgSend_groupValueTuple(v135, v38, v39, v40, v41);
    v58 = objc_msgSend_groupValueUid(v43, v60, v61, v62, v63);
  }

  else
  {
    v43 = objc_msgSend_groupValueTuple(v134, v38, v39, v40, v41);
    v58 = objc_msgSend_groupValueUid(v43, v54, v55, v56, v57);
  }

  v51 = v58;
  v53 = v59;
LABEL_44:

  if (objc_msgSend_count(self->_aggregates, v64, v65, v66, v67) <= v9)
  {
    v76 = 0;
  }

  else
  {
    v72 = objc_msgSend_asArray(self->_aggregates, v68, v69, v70, v71);
    v76 = objc_msgSend_objectAtIndex_(v72, v73, v9, v74, v75);
  }

  v77 = objc_msgSend_groupNodeForGroupUid_(v42, v68, v51, v53, v71);
  v81 = v77;
  if (v76 && v77)
  {
    objc_msgSend_setAggregateIndex_(v10, v78, v9, v79, v80);
    v86 = objc_msgSend_aggregateType(v76, v82, v83, v84, v85);
    objc_msgSend_setAggregateType_(v10, v87, v86, v88, v89);
    v94 = objc_msgSend_showAsType(v76, v90, v91, v92, v93);
    objc_msgSend_setShowAsType_(v10, v95, v94, v96, v97);
    v100 = objc_msgSend_columnNameForAggregateIndex_allowDuplicateNames_(self, v98, v9, 0, v99);
    objc_msgSend_setAggregateFieldName_(v10, v101, v100, v102, v103);

    v108 = objc_msgSend_groupValueTuple(v81, v104, v105, v106, v107);
    v113 = objc_msgSend_numberOfLevels(v108, v109, v110, v111, v112);
    if ((v131 + v34) >= v113)
    {
      v117 = v113;
    }

    else
    {
      v117 = (v131 + v34);
    }

    if (v117)
    {
      for (i = 1; i <= v117; ++i)
      {
        v121 = objc_msgSend_groupValueAtLevel_(v108, v114, i, v115, v116);
        if (v121)
        {
          v126 = objc_msgSend_columnNameForCategoryLevel_shortForm_(v42, v119, i, 0, v120);
          if (v126)
          {
            v127 = objc_msgSend_tsceValue(v121, v122, v123, v124, v125);
            objc_msgSend_addDataField_withValue_(v10, v128, v126, v127, v129);
          }
        }
      }
    }
  }

  return v10;
}

- (id)p_descriptionForPivotGroupValueTuple:(id)a3 upToLevel:(unsigned __int8)a4 locale:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v10 = v8;
  v11 = 0;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v122 = MEMORY[0x277CCACA8];
      v55 = sub_22113113C(v8, v9);
      v59 = objc_msgSend_groupValueAtLevel_(v7, v123, 1, v124, v125);
      v19 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v126, v59, v127, v128);
      v11 = objc_msgSend_stringWithFormat_(v122, v129, v55, v130, v131, v19);
      goto LABEL_15;
    }

    if (v6 != 2)
    {
      goto LABEL_16;
    }

    v54 = MEMORY[0x277CCACA8];
    v55 = sub_221131120(v8, v9);
    v59 = objc_msgSend_groupValueAtLevel_(v7, v56, 1, v57, v58);
    v19 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v60, v59, v61, v62);
    v136 = objc_msgSend_groupValueAtLevel_(v7, v63, 2, v64, v65);
    v26 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v66, v136, v67, v68);
    v11 = objc_msgSend_stringWithFormat_(v54, v69, v55, v70, v71, v19, v26);
  }

  else
  {
    if (v6 == 3)
    {
      v72 = MEMORY[0x277CCACA8];
      v55 = sub_221131104(v8, v9);
      v135 = objc_msgSend_groupValueAtLevel_(v7, v73, 1, v74, v75);
      v19 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v76, v135, v77, v78);
      v136 = objc_msgSend_groupValueAtLevel_(v7, v79, 2, v80, v81);
      v26 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v82, v136, v83, v84);
      v30 = objc_msgSend_groupValueAtLevel_(v7, v85, 3, v86, v87);
      v34 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v88, v30, v89, v90);
      v11 = objc_msgSend_stringWithFormat_(v72, v91, v55, v92, v93, v19, v26, v34);
    }

    else
    {
      if (v6 == 4)
      {
        v94 = MEMORY[0x277CCACA8];
        v134 = sub_2211310E8(v8, v9);
        v135 = objc_msgSend_groupValueAtLevel_(v7, v95, 1, v96, v97);
        v19 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v98, v135, v99, v100);
        v136 = objc_msgSend_groupValueAtLevel_(v7, v101, 2, v102, v103);
        v26 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v104, v136, v105, v106);
        v30 = objc_msgSend_groupValueAtLevel_(v7, v107, 3, v108, v109);
        v34 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v110, v30, v111, v112);
        v38 = objc_msgSend_groupValueAtLevel_(v7, v113, 4, v114, v115);
        v42 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v116, v38, v117, v118);
        v11 = objc_msgSend_stringWithFormat_(v94, v119, v134, v120, v121, v19, v26, v34, v42);
      }

      else
      {
        if (v6 != 5)
        {
          goto LABEL_16;
        }

        v12 = MEMORY[0x277CCACA8];
        sub_2211310CC(v8, v9);
        v134 = v133 = v10;
        v135 = objc_msgSend_groupValueAtLevel_(v7, v13, 1, v14, v15);
        v19 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v16, v135, v17, v18);
        v136 = objc_msgSend_groupValueAtLevel_(v7, v20, 2, v21, v22);
        v26 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v23, v136, v24, v25);
        v30 = objc_msgSend_groupValueAtLevel_(v7, v27, 3, v28, v29);
        v34 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v31, v30, v32, v33);
        v38 = objc_msgSend_groupValueAtLevel_(v7, v35, 4, v36, v37);
        v42 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v39, v38, v40, v41);
        v46 = objc_msgSend_groupValueAtLevel_(v7, v43, 5, v44, v45);
        v50 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v47, v46, v48, v49);
        v11 = objc_msgSend_stringWithFormat_(v12, v51, v134, v52, v53, v19, v26, v34, v42, v50);

        v10 = v133;
      }

      v55 = v134;
    }

    v59 = v135;
  }

LABEL_15:
LABEL_16:

  return v11;
}

- (id)descriptionForPivotGroupCellForColumnUid:(const TSKUIDStruct *)a3 upToLevel:(unsigned __int8)a4
{
  v5 = a4;
  v8 = objc_msgSend_groupByForColumnGroups(self, a2, a3, a4, v4);
  v13 = objc_msgSend_groupByForColumnGroups(self, v9, v10, v11, v12);
  v16 = objc_msgSend_groupNodeForGroupUid_(v13, v14, a3->_lower, a3->_upper, v15);

  v21 = objc_msgSend_groupLevel(v16, v17, v18, v19, v20);
  if (v21 >= v5)
  {
    v26 = v5;
  }

  else
  {
    v26 = v21;
  }

  if (v5 == 255)
  {
    v27 = v21;
  }

  else
  {
    v27 = v26;
  }

  v28 = objc_msgSend_groupValueTuple(v16, v22, v23, v24, v25);
  v33 = objc_msgSend_locale(v8, v29, v30, v31, v32);
  v35 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v34, v28, v27, v33);

  return v35;
}

- (id)descriptionForPivotGroupCellForRowUid:(const TSKUIDStruct *)a3 upToLevel:(unsigned __int8)a4
{
  v5 = a4;
  v8 = objc_msgSend_groupByForRowGroups(self, a2, a3, a4, v4);
  v11 = objc_msgSend_groupNodeForGroupUid_(v8, v9, a3->_lower, a3->_upper, v10);
  v16 = objc_msgSend_groupLevel(v11, v12, v13, v14, v15);
  if (v16 >= v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = v16;
  }

  if (v5 == 255)
  {
    v22 = v16;
  }

  else
  {
    v22 = v21;
  }

  v23 = objc_msgSend_groupValueTuple(v11, v17, v18, v19, v20);
  v28 = objc_msgSend_locale(v8, v24, v25, v26, v27);
  v30 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v29, v23, v22, v28);

  return v30;
}

- (id)descriptionForPivotBodyCellForUidCoord:(const TSKUIDStructCoord *)a3
{
  column = a3->_column;
  row = a3->_row;
  v93 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension != 1)
    {
      v9 = 0;
      goto LABEL_7;
    }

    p_row = &v93;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v93);
    v93 = *(v8 + 2);
  }

  else
  {
    p_row = &row;
    v8 = sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row);
    row = *(v8 + 2);
  }

  v9 = *(v8 + 24);
LABEL_7:
  if (v9 >= objc_msgSend_count(self->_aggregates, a2, a3, v3, v4) || (objc_msgSend_asArray(self->_aggregates, v10, v11, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndex_(v14, v15, v9, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v14, !v18))
  {
    v70 = 0;
    goto LABEL_21;
  }

  v90 = v18;
  v89 = objc_msgSend_groupByForColumnGroups(self, v19, v20, v21, v22);
  v88 = objc_msgSend_groupByForRowGroups(self, v23, v24, v25, v26);
  v29 = objc_msgSend_groupNodeForGroupUid_(v89, v27, v93._lower, v93._upper, v28);
  v32 = objc_msgSend_groupNodeForGroupUid_(v88, v30, row._lower, row._upper, v31);
  v37 = objc_msgSend_groupLevel(v29, v33, v34, v35, v36);
  v42 = objc_msgSend_groupLevel(v32, v38, v39, v40, v41);
  v91 = objc_msgSend_groupValueTuple(v29, v43, v44, v45, v46);
  v51 = objc_msgSend_groupValueTuple(v32, v47, v48, v49, v50);
  v56 = objc_msgSend_locale(v88, v52, v53, v54, v55);
  v58 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v57, v51, v42, v56);
  v60 = objc_msgSend_p_descriptionForPivotGroupValueTuple_upToLevel_locale_(self, v59, v91, v37, v56);
  v63 = v60;
  if (v58 && v60)
  {
    v64 = MEMORY[0x277CCACA8];
    v65 = sub_221131158(v56, v61);
    v69 = objc_msgSend_stringWithFormat_(v64, v66, v65, v67, v68, v63, v58);
  }

  else if (v58)
  {
    v71 = MEMORY[0x277CCACA8];
    v65 = sub_221131174(v56, v61);
    v69 = objc_msgSend_stringWithFormat_(v71, v72, v65, v73, v74, v58);
  }

  else
  {
    if (!v60)
    {
      v79 = 0;
      goto LABEL_18;
    }

    v75 = MEMORY[0x277CCACA8];
    v65 = sub_221131174(v56, v61);
    v69 = objc_msgSend_stringWithFormat_(v75, v76, v65, v77, v78, v63);
  }

  v79 = v69;

LABEL_18:
  v81 = objc_msgSend_descriptionForAggregateIndex_locale_(self, v61, v9, v56, v62);
  v70 = v81;
  if (v79)
  {
    v82 = MEMORY[0x277CCACA8];
    v83 = sub_221131094(v56, v80);
    v70 = objc_msgSend_stringWithFormat_(v82, v84, v83, v85, v86, v81, v79);
  }

LABEL_21:

  return v70;
}

- (TSUIndexSet)pivotDataModelRowIndexesNeededForCell:(SEL)a3
{
  TSUIndexSet::TSUIndexSet(retstr);
  v11 = objc_msgSend_groupByForColumnGroups(self, v7, v8, v9, v10);
  v16 = objc_msgSend_groupByForRowGroups(self, v12, v13, v14, v15);
  v19 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v17, a4, 0, v18);
  v21 = v20;
  v23 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v20, &a4->_row, 0, v22);
  v25 = v24;
  v27 = objc_msgSend_groupNodeForGroupUid_(v11, v24, v19, v21, v26);
  v30 = objc_msgSend_groupNodeForGroupUid_(v16, v28, v23, v25, v29);
  v35 = v30;
  if (v27)
  {
    objc_msgSend_pivotOnlyRowIndexes(v27, v31, v32, v33, v34);
    TSUIndexSet::addIndexes(retstr, &v47);
    TSUIndexSet::~TSUIndexSet(&v47);
    if (v35)
    {
      objc_msgSend_pivotOnlyRowIndexes(v35, v36, v37, v38, v39);
      TSUIndexSet::intersectWithIndexes(retstr, &v47);
LABEL_6:
      TSUIndexSet::~TSUIndexSet(&v47);
    }
  }

  else
  {
    if (v30)
    {
      objc_msgSend_pivotOnlyRowIndexes(v30, v31, v32, v33, v34);
      TSUIndexSet::addIndexes(retstr, &v47);
      goto LABEL_6;
    }

    v41 = objc_msgSend_topLevelGroupNode(v16, v31, v32, v33, v34);
    v46 = v41;
    if (v41)
    {
      objc_msgSend_pivotOnlyRowIndexes(v41, v42, v43, v44, v45);
      TSUIndexSet::addIndexes(retstr, &v47);
      TSUIndexSet::~TSUIndexSet(&v47);
    }
  }

  return result;
}

- (id)findExistingGroupNodeInGroupBy:(id)a3 usingValues:(const void *)a4 upToLevel:(unint64_t)a5 coerceForDateFields:(BOOL)a6
{
  v93 = a6;
  v7 = a3;
  if (v7)
  {
    v92 = v7;
    v8 = objc_opt_new();
    v13 = objc_msgSend_ownerIndex(v7, v9, v10, v11, v12);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v14, v13, v15, v16);
    v21 = objc_msgSend_ownerIndex(v7, v17, v18, v19, v20);
    v25 = objc_msgSend_groupingColumnsForOwnerIndex_(self, v22, v21, v23, v24);
    v30 = v25;
    v32 = __p;
    v31 = v98;
    if (__p != v98)
    {
      v33 = 0;
      v34 = 0;
      p_cache = TSCEFunction_XMATCH.cache;
      v91 = v25;
      do
      {
        v96 = v32[v34];
        if (objc_msgSend_count(v8, v26, v27, v28, v29) >= a5)
        {
          break;
        }

        v36 = sub_2210BE864(a4, &v96);
        if (!v36)
        {
          break;
        }

        v37 = v36[3];
        v42 = v37;
        if (v93 && objc_msgSend_valueType(v37, v38, v39, v40, v41) == 7)
        {
          v43 = objc_msgSend_objectAtIndexedSubscript_(v30, v38, v34, v40, v41);
          v48 = objc_msgSend_groupingType(v43, v44, v45, v46, v47);
          if (objc_msgSend_groupingTypeIsAnyDateType_(p_cache + 473, v49, v48, v50, v51))
          {
            v56 = objc_msgSend_tsceValue(v42, v52, v53, v54, v55);
            v61 = objc_msgSend_asStringValue(v56, v57, v58, v59, v60);

            v90 = v61;
            v66 = objc_msgSend_locale(v92, v62, v63, v64, v65);
            v71 = objc_msgSend_asString(v61, v67, v68, v69, v70);
            v72 = TSUCreateDateFromString();

            if (v72)
            {
              v73 = [TSCEDateCellValue alloc];
              v76 = objc_msgSend_initWithDate_locale_(v73, v74, v72, v66, v75);

              v42 = v76;
            }

            p_cache = (TSCEFunction_XMATCH + 16);
          }

          v30 = v91;
        }

        objc_msgSend_addObject_(v8, v38, v42, v40, v41);

        ++v34;
        ++v33;
      }

      while (&v32[v33] != v31);
    }

    v77 = [TSTGroupValueTuple alloc];
    v81 = objc_msgSend_initWithValueArray_(v77, v78, v8, v79, v80);
    v7 = v92;
    v86 = objc_msgSend_numberOfLevels(v81, v82, v83, v84, v85);
    v88 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(v92, v87, v81, v86, 0);

    if (__p)
    {
      v98 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v88 = 0;
  }

  return v88;
}

- (id)grandGrandTotalCategoryRefForAggregate:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_groupByForColumnGroups(self, v5, v6, v7, v8);
  v10 = [TSCECategoryRef alloc];
  v34[0] = objc_msgSend_groupByUid(v9, v11, v12, v13, v14);
  v34[1] = v15;
  v33[0] = objc_msgSend_topLevelGroupUid(v9, v15, v16, v17, v18);
  v33[1] = v19;
  v23 = objc_msgSend_columnUid(v4, v19, v20, v21, v22);
  v28 = objc_msgSend_aggregateType(v4, v24, v25, v26, v27, v23, v24);
  v30 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v10, v29, v34, v33, &v32, v28, 0);

  return v30;
}

- (id)firstAggregate
{
  p_first_node = &self->_aggregateUidMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v3 = p_first_node[5].__next_;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (id)grandTotalCategoryRefForColumn:(const TSKUIDStruct *)a3 forAggregate:(id)a4
{
  v5 = a4;
  v43 = 0;
  v10 = objc_msgSend_groupByForColumnGroups(self, v6, v7, v8, v9, 0, 0, 0, 0);
  objc_msgSend_topLevelGroupUid(v10, v11, v12, v13, v14);
  TSKMakeUIDStructCoord();

  v21 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, v15, &v42, &v43, v16);
  if (v5)
  {
    v22 = objc_msgSend_columnUid(v5, v17, v18, v19, v20);
    objc_msgSend_setColumnUid_(v21, v23, v22, v23, v24);
    v29 = objc_msgSend_aggregateType(v5, v25, v26, v27, v28);
    objc_msgSend_setType_(v21, v30, v29, v31, v32);
  }

  else
  {
    v33 = objc_msgSend_firstAggregate(self, v17, v18, v19, v20);
    v5 = v33;
    if (v33)
    {
      v38 = objc_msgSend_columnUid(v33, v34, v35, v36, v37);
      objc_msgSend_setColumnUid_(v21, v39, v38, v39, v40);
    }

    objc_msgSend_setType_(v21, v34, 1, v36, v37);
  }

  return v21;
}

- (id)grandTotalCategoryRefForRow:(const TSKUIDStruct *)a3 forAggregate:(id)a4
{
  v5 = a4;
  v35 = 0;
  v10 = objc_msgSend_groupByForColumnGroups(self, v6, v7, v8, v9, 0, 0, 0, 0);
  objc_msgSend_topLevelGroupUid(v10, v11, v12, v13, v14);
  TSKMakeUIDStructCoord();

  v21 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, v15, &v34, &v35, v16);
  if (v5)
  {
    v22 = objc_msgSend_columnUid(v5, v17, v18, v19, v20);
    objc_msgSend_setColumnUid_(v21, v23, v22, v23, v24);
    v29 = objc_msgSend_aggregateType(v5, v25, v26, v27, v28);
    objc_msgSend_setType_(v21, v30, v29, v31, v32);
  }

  return v21;
}

- (id)percentParentDenominatorCategoryRefFor:(id)a3 inGroupBy:(id)a4 forAggregate:(id)a5 forShowAsType:(unsigned __int8)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v16 = a5;
  if ((v6 & 0xFE) != 4)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupBySet percentParentDenominatorCategoryRefFor:inGroupBy:forAggregate:forShowAsType:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 1409, 0, "Only expecting these two showAsTypes, got: %d", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_ownerIndex(v11, v12, v13, v14, v15);
  objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v29, v28, v30, v31);
  if (objc_msgSend_groupLevel(v10, v32, v33, v34, v35) < ((v68 - __p) >> 3))
  {
    v40 = objc_msgSend_groupLevel(v10, v36, v37, v38, v39);
    sub_2211576E4(&__p, v40);
  }

  v41 = objc_msgSend_count(self->_columnGroupings, v36, v37, v38, v39);
  v46 = v41;
  if (v6 != 4)
  {
    if (objc_msgSend_count(self->_rowGroupings, v42, v43, v44, v45))
    {
      v52 = __p;
      if (__p != v68)
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v54 = *v52++;
          v53 = v54;
          if (v48 <= v54)
          {
            v55 = v53;
          }

          else
          {
            v55 = v48;
          }

          if (v48 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v55 = v53;
          }

          if (v53 >= v46)
          {
            v48 = v55;
          }
        }

        while (v52 != v68);
        if (v48 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_31:
    v56 = 0;
    v57 = 0;
    v65 = 0;
    v66 = 0;
    goto LABEL_32;
  }

  if (!v41)
  {
    goto LABEL_31;
  }

  v47 = __p;
  if (__p == v68)
  {
    goto LABEL_31;
  }

  v48 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v50 = *v47++;
    v49 = v50;
    if (v48 <= v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = v48;
    }

    if (v48 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = v49;
    }

    if (v49 < v41)
    {
      v48 = v51;
    }
  }

  while (v47 != v68);
  if (v48 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

LABEL_37:
  v59 = objc_msgSend_groupingColumnForIndex_(self, v42, v48, v44, v45);
  v56 = v59;
  v65 = 0;
  v66 = 0;
  if (v59 && (v65 = objc_msgSend_columnUid(v59, v60, v61, v62, v63), v66 = v64, v65 | v64))
  {
    v57 = objc_msgSend_percentRunningDenominatorCategoryRefFor_inGroupBy_runningOnColumnUid_forAggregate_(self, v64, v10, v11, &v65, v16);
  }

  else
  {
    v57 = 0;
  }

LABEL_32:

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  return v57;
}

- (id)percentRunningDenominatorCategoryRefFor:(id)a3 inGroupBy:(id)a4 runningOnColumnUid:(const TSKUIDStruct *)a5 forAggregate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20 = objc_msgSend_groupingIndexForColumnUID_(self, v13, a5, v14, v15);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = 0;
  }

  else
  {
    v84 = v12;
    v85 = v11;
    v22 = objc_msgSend_groupValueTuple(v10, v16, v17, v18, v19);
    v27 = objc_msgSend_ownerIndex(v11, v23, v24, v25, v26);
    objc_msgSend_groupColumnIndexesForOwnerIndex_(self, v28, v27, v29, v30);
    if (objc_msgSend_groupLevel(v10, v31, v32, v33, v34) < (v93 - v92))
    {
      v39 = objc_msgSend_groupLevel(v10, v35, v36, v37, v38);
      sub_2211576E4(&v92, v39);
    }

    memset(v90, 0, sizeof(v90));
    v91 = 1065353216;
    v40 = v92;
    v41 = v93;
    if (v92 != v93)
    {
      v42 = 1;
      do
      {
        v88[0] = *v40;
        v43 = objc_msgSend_groupValueAtLevel_(v22, v35, v42, v37, v38);
        if (v43 && v88[0] != v20)
        {
          *&v89 = v88;
          v44 = sub_22115A450(v90, v88);
          objc_storeStrong(v44 + 3, v43);
        }

        ++v42;

        ++v40;
      }

      while (v40 != v41);
    }

    TSUIndexSet::TSUIndexSet(&v89);
    v48 = v92;
    v49 = v93;
    if (v92 == v93)
    {
      v50 = 0;
    }

    else
    {
      v50 = 0;
      do
      {
        v45 = *v48;
        if (*v48 == v20)
        {
          v50 = 1;
        }

        else
        {
          TSUIndexSet::addIndex(&v89);
        }

        ++v48;
      }

      while (v48 != v49);
    }

    v52 = objc_msgSend_ownerIndexForGroupingCombination_(self, v45, &v89, v46, v47);
    v12 = v84;
    if ((v50 & (v52 != 0)) != 0)
    {
      v11 = v85;
      v54 = objc_msgSend_groupByForOwnerIndex_createIfMissing_(self, v51, v52, 1, v53);
      v55 = TSUIndexSet::count(&v89);
      v57 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(self, v56, v54, v90, v55, 0);
      if (v57)
      {
        v58 = [TSCECategoryRef alloc];
        v88[0] = objc_msgSend_groupByUid(v54, v59, v60, v61, v62);
        v88[1] = v63;
        v87[0] = objc_msgSend_groupUid(v57, v63, v64, v65, v66);
        v87[1] = v67;
        v86[0] = objc_msgSend_columnUid(v84, v67, v68, v69, v70);
        v86[1] = v71;
        v75 = objc_msgSend_aggregateType(v84, v71, v72, v73, v74);
        v80 = objc_msgSend_groupLevel(v57, v76, v77, v78, v79);
        v82 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v58, v81, v88, v87, v86, v75, v80);
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      v82 = 0;
      v11 = v85;
    }

    v21 = v82;
    TSUIndexSet::~TSUIndexSet(&v89);
    sub_221087B80(v90);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }
  }

  return v21;
}

- (id)restrictColumnIndexes:(id)a3 toColumnGroupLevel:(unsigned __int8)a4 forPivotTable:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v8;
  if ((objc_msgSend_isAPivotTable(v9, v11, v12, v13, v14) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBySet restrictColumnIndexes:toColumnGroupLevel:forPivotTable:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1549, 0, "Only expected this call with pivotTableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = v10;
  if (v6 != 255)
  {
    if (v6 == 253)
    {
      LOBYTE(v6) = objc_msgSend_numberOfColumnLevels(v9, v15, v16, v17, v18);
    }

    v31 = objc_opt_new();
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = sub_221157CEC;
    v51 = &unk_27845FB60;
    v52 = v9;
    v53 = self;
    v55 = v6;
    v32 = v31;
    v54 = v32;
    objc_msgSend_enumerateIndexesUsingBlock_(v10, v33, &v48, v34, v35);
    v30 = v10;
    if (objc_msgSend_count(v32, v36, v37, v38, v39, v48, v49, v50, v51))
    {
      v30 = objc_msgSend_mutableCopy(v10, v40, v41, v42, v43);
      objc_msgSend_removeIndexes_(v30, v44, v32, v45, v46);
    }
  }

  return v30;
}

- (id)restrictRowIndexes:(id)a3 toRowGroupLevel:(unsigned __int8)a4 forPivotTable:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v14 = v8;
  v15 = v14;
  if (v6 != 255)
  {
    if (v6 == 253)
    {
      LOBYTE(v6) = objc_msgSend_numberOfRowLevels(v9, v10, v11, v12, v13);
    }

    v16 = objc_opt_new();
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = sub_221157EE0;
    v36 = &unk_27845FB60;
    v37 = v9;
    v38 = self;
    v40 = v6;
    v17 = v16;
    v39 = v17;
    objc_msgSend_enumerateIndexesUsingBlock_(v14, v18, &v33, v19, v20);
    v15 = v14;
    if (objc_msgSend_count(v17, v21, v22, v23, v24, v33, v34, v35, v36))
    {
      v15 = objc_msgSend_mutableCopy(v14, v25, v26, v27, v28);
      objc_msgSend_removeIndexes_(v15, v29, v17, v30, v31);
    }
  }

  return v15;
}

- (id)restrictColumnIndexes:(id)a3 forAggrIndexLevel:(unsigned __int16)a4 forPivotTable:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v14 = v8;
  v15 = v14;
  if (v6 != 0xFFFF)
  {
    v15 = v14;
    if (objc_msgSend_flatteningDimension(self, v10, v11, v12, v13) == 1)
    {
      v16 = objc_opt_new();
      v21 = objc_msgSend_translator(v9, v17, v18, v19, v20);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_2211580F8;
      v39[3] = &unk_27845FB88;
      v22 = v21;
      v40 = v22;
      v42 = v6;
      v23 = v16;
      v41 = v23;
      objc_msgSend_enumerateIndexesUsingBlock_(v14, v24, v39, v25, v26);
      v15 = v14;
      if (objc_msgSend_count(v23, v27, v28, v29, v30))
      {
        v15 = objc_msgSend_mutableCopy(v14, v31, v32, v33, v34);
        objc_msgSend_removeIndexes_(v15, v35, v23, v36, v37);
      }
    }
  }

  return v15;
}

- (id)restrictRowIndexes:(id)a3 forAggrIndexLevel:(unsigned __int16)a4 forPivotTable:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v14 = v8;
  v15 = v14;
  if (v6 != 0xFFFF)
  {
    v15 = v14;
    if (!objc_msgSend_flatteningDimension(self, v10, v11, v12, v13))
    {
      v16 = objc_opt_new();
      v21 = objc_msgSend_translator(v9, v17, v18, v19, v20);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_22115830C;
      v39[3] = &unk_27845FB88;
      v22 = v21;
      v40 = v22;
      v42 = v6;
      v23 = v16;
      v41 = v23;
      objc_msgSend_enumerateIndexesUsingBlock_(v14, v24, v39, v25, v26);
      v15 = v14;
      if (objc_msgSend_count(v23, v27, v28, v29, v30))
      {
        v15 = objc_msgSend_mutableCopy(v14, v31, v32, v33, v34);
        objc_msgSend_removeIndexes_(v15, v35, v23, v36, v37);
      }
    }
  }

  return v15;
}

- (BOOL)hasUnfilteredAt:(const TSKUIDStruct *)a3 forDimension:(int64_t)a4
{
  if (a4)
  {
    v7 = objc_msgSend_groupByForColumnGroups(self, a2, a3, a4, v4);
    v10 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v8, a3, 0, v9);
  }

  else
  {
    v7 = objc_msgSend_groupByForRowGroups(self, a2, a3, 0, v4);
    v10 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v13, a3, 0, v14);
  }

  v15 = objc_msgSend_groupNodeForGroupUid_(v7, v11, v10, v11, v12);
  v20 = v15;
  if (v15)
  {
    hasUnfilteredRows = objc_msgSend_hasUnfilteredRows(v15, v16, v17, v18, v19);
  }

  else
  {
    hasUnfilteredRows = 0;
  }

  return hasUnfilteredRows;
}

- (id)filteringCategoryRefAt:(const TSKUIDStruct *)a3 forDimension:(int64_t)a4
{
  if (a4)
  {
    v7 = objc_msgSend_groupByForColumnGroups(self, a2, a3, a4, v4);
    v10 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v8, a3, 0, v9);
  }

  else
  {
    v7 = objc_msgSend_groupByForRowGroups(self, a2, a3, 0, v4);
    v10 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v13, a3, 0, v14);
  }

  v19 = objc_msgSend_groupNodeForGroupUid_(v7, v11, v10, v11, v12);
  if (v19)
  {
    v20 = objc_msgSend_anyAggregator(v7, v15, v16, v17, v18, 0, 0);
    v25 = v20;
    if (v20)
    {
      v28[0] = objc_msgSend_columnUid(v20, v21, v22, v23, v24);
      v28[1] = v21;
    }

    v26 = objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v19, v21, 1, 0, v28);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)getPivotHidingIndexesForGroupingColumn:(const TSKUIDStruct *)a3 columns:(id)a4 rows:(id)a5 forHiding:(BOOL)a6 forPivotTable:(id)a7
{
  v8 = a6;
  v88 = *MEMORY[0x277D85DE8];
  v72 = a4;
  v73 = a5;
  v16 = a7;
  if (*a3 == 0)
  {
    goto LABEL_40;
  }

  v70 = v16;
  v17 = objc_msgSend_groupingColumns(self->_columnGroupings, v12, v13, v14, v15);
  v71 = objc_msgSend_groupingColumns(self->_rowGroupings, v18, v19, v20, v21);
  v69 = v8;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v22 = v17;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v82, v87, 16);
  if (v28)
  {
    v29 = *v83;
    v30 = 1;
LABEL_4:
    v31 = 0;
    v32 = v30;
    v30 += v28;
    while (1)
    {
      if (*v83 != v29)
      {
        objc_enumerationMutation(v22);
      }

      if (objc_msgSend_groupingColumnUid(*(*(&v82 + 1) + 8 * v31), v24, v25, v26, v27) == a3->_lower && v24 == a3->_upper)
      {
        break;
      }

      ++v32;
      if (v28 == ++v31)
      {
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v82, v87, 16);
        if (v28)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }
    }

    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }

    v49 = 1;
  }

  else
  {
LABEL_13:

LABEL_15:
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v38 = v71;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v78, v86, 16);
    if (!v44)
    {
      goto LABEL_38;
    }

    v45 = *v79;
    v46 = 1;
LABEL_17:
    v47 = 0;
    v32 = v46;
    v46 += v44;
    while (1)
    {
      if (*v79 != v45)
      {
        objc_enumerationMutation(v38);
      }

      if (objc_msgSend_groupingColumnUid(*(*(&v78 + 1) + 8 * v47), v40, v41, v42, v43) == a3->_lower && v40 == a3->_upper)
      {
        break;
      }

      ++v32;
      if (v44 == ++v47)
      {
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v78, v86, 16);
        if (v44)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }
    }

    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_39;
    }

    v49 = 0;
  }

  v54 = objc_msgSend_count(self->_aggregates, v34, v35, v36, v37);
  if (v69)
  {
    v38 = objc_msgSend_hiddenStates(v70, v50, v51, v52, v53);
    if (!v49)
    {
LABEL_32:
      if (objc_msgSend_count(self->_rowGroupings, v50, v51, v52, v53) <= v32)
      {
        goto LABEL_38;
      }

      v59 = objc_msgSend_groupByForRowGroups(self, v55, v56, v57, v58);
      v60 = v74;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = sub_221158B64;
      v74[3] = &unk_27845FBB0;
      v74[4] = v70;
      v75 = v69;
      v74[5] = v38;
      v74[6] = v73;
      v74[7] = self;
      v74[8] = v54;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v59, v61, v32, v74, v62);
      goto LABEL_37;
    }
  }

  else
  {
    v38 = 0;
    if (!v49)
    {
      goto LABEL_32;
    }
  }

  if (objc_msgSend_count(self->_columnGroupings, v50, v51, v52, v53) <= v32)
  {
    goto LABEL_38;
  }

  v59 = objc_msgSend_groupByForColumnGroups(self, v63, v64, v65, v66);
  v60 = v76;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_221158A6C;
  v76[3] = &unk_27845FBB0;
  v76[4] = v70;
  v77 = v69;
  v76[5] = v38;
  v76[6] = v72;
  v76[7] = self;
  v76[8] = v54;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v59, v67, v32, v76, v68);
LABEL_37:

LABEL_38:
LABEL_39:

  v16 = v70;
LABEL_40:
}

- (void)getHidingIndexesForGrandTotalsForPivotTable:(id)a3 columns:(id)a4 rows:(id)a5
{
  v46 = a3;
  v8 = a4;
  v13 = a5;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension == 1)
  {
    v15 = self->_aggregateUidList.__end_ - self->_aggregateUidList.__begin_;
  }

  else
  {
    v15 = 1;
  }

  if (activeFlatteningDimension)
  {
    v16 = 1;
  }

  else
  {
    v16 = self->_aggregateUidList.__end_ - self->_aggregateUidList.__begin_;
  }

  v17 = objc_msgSend_groupByForColumnGroups(self, v9, v10, v11, v12);
  v22 = objc_msgSend_topLevelGroupUid(v17, v18, v19, v20, v21);
  v24 = v23;

  v31 = objc_msgSend_columnIndexForColumnUID_(v46, v25, v22, v24, v26);
  if (v31 != 0x7FFF && v15)
  {
    do
    {
      objc_msgSend_addIndex_(v8, v27, v31++, v29, v30);
      --v15;
    }

    while (v15);
  }

  v32 = objc_msgSend_groupByForRowGroups(self, v27, v28, v29, v30);
  v37 = objc_msgSend_topLevelGroupUid(v32, v33, v34, v35, v36);
  v39 = v38;

  v45 = objc_msgSend_rowIndexForRowUID_(v46, v40, v37, v39, v41);
  if (v45 != 0x7FFFFFFF && v16)
  {
    do
    {
      objc_msgSend_addIndex_(v13, v42, v45++, v43, v44);
      --v16;
    }

    while (v16);
  }
}

- (id)groupByForUuidCoord:(const TSKUIDStructCoord *)a3
{
  column = a3->_column;
  row = a3->_row;
  v35 = column;
  activeFlatteningDimension = self->_activeFlatteningDimension;
  if (activeFlatteningDimension)
  {
    if (activeFlatteningDimension == 1)
    {
      p_row = &v35;
      v35 = *(sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &v35) + 2);
    }
  }

  else
  {
    p_row = &row;
    row = *(sub_221159B34(&self->_groupAggregateUidUnflatteningMap.__table_.__bucket_list_.__ptr_, &row) + 2);
  }

  v8 = objc_msgSend_groupByForColumnGroups(self, a2, a3, v3, v4, row);
  v11 = objc_msgSend_groupNodeForGroupUid_(v8, v9, v35._lower, v35._upper, v10);

  v16 = objc_msgSend_groupByForRowGroups(self, v12, v13, v14, v15);
  v19 = objc_msgSend_groupNodeForGroupUid_(v16, v17, row._lower, row._upper, v18);

  v24 = objc_msgSend_groupLevel(v11, v20, v21, v22, v23);
  v29 = objc_msgSend_groupLevel(v19, v25, v26, v27, v28);
  v32 = objc_msgSend_groupByForColumnLevel_rowLevel_(self, v30, v24, v29, v31);

  return v32;
}

- (id)groupNodeForUuidCoord:(const TSKUIDStructCoord *)a3
{
  v32 = 0;
  v5 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self, a2, a3, &v32, v3);
  if (objc_msgSend_isValid(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_groupByUid(v5, v10, v11, v12, v13);
    v16 = v15;
    v20 = objc_msgSend_calcEngine(self, v15, v17, v18, v19);
    v22 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v21, v14, v16, v20);

    v27 = objc_msgSend_absoluteGroupUid(v5, v23, v24, v25, v26);
    v30 = objc_msgSend_groupNodeForGroupUid_(v22, v28, v27, v28, v29);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)groupValueTupleForUuidCoord:(const TSKUIDStructCoord *)a3 createIfMissing:(BOOL)a4
{
  v5 = a4;
  v8 = objc_msgSend_groupNodeForUuidCoord_(self, a2, a3, a4, v4);
  v13 = v8;
  if (v8)
  {
    v14 = objc_msgSend_groupValueTuple(v8, v9, v10, v11, v12);
    goto LABEL_17;
  }

  if (!v5)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v18 = objc_msgSend_groupByForUuidCoord_(self, v9, a3, v11, v12);
  if (v18)
  {
    v19 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self, v15, &a3->_row, 0, v17);
    v21 = v20;
    v25 = objc_msgSend_groupByForRowGroups(self, v20, v22, v23, v24);
    v28 = objc_msgSend_groupNodeForGroupUid_(v25, v26, v19, v21, v27);

    v31 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self, v29, a3, 0, v30);
    v33 = v32;
    v37 = objc_msgSend_groupByForColumnGroups(self, v32, v34, v35, v36);
    v40 = objc_msgSend_groupNodeForGroupUid_(v37, v38, v31, v33, v39);

    if (!(v28 | v40))
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTGroupBySet groupValueTupleForUuidCoord:createIfMissing:]", v43, v44);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v48, v49);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 1881, 0, "Couldn't locate rowGroupNode or columnGroupNode");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (v40)
    {
      if (v28)
      {
        v67 = objc_msgSend_groupValueTuple(v28, v41, v42, v43, v44);
        v72 = objc_msgSend_groupValueTuple(v40, v68, v69, v70, v71);
        v14 = objc_msgSend_groupValueTupleByAppendingTuple_(v72, v73, v67, v74, v75);

        goto LABEL_15;
      }

      v76 = objc_msgSend_groupValueTuple(v40, v41, v42, v43, v44);
    }

    else
    {
      v76 = objc_msgSend_groupValueTuple(v28, v41, v42, v43, v44);
    }

    v14 = v76;
    goto LABEL_15;
  }

  v56 = MEMORY[0x277D81150];
  v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBySet groupValueTupleForUuidCoord:createIfMissing:]", v16, v17);
  v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBySet.mm", v59, v60);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 1894, 0, "Need a groupBy for this coordinate - why didn't you help?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
  v14 = 0;
LABEL_16:

LABEL_17:

  return v14;
}

- (id)duplicateFilterSet
{
  filterSet = self->_filterSet;
  v6 = objc_msgSend_context(filterSet, a2, v2, v3, v4);
  v10 = objc_msgSend_copyWithContext_(filterSet, v7, v6, v8, v9);

  return v10;
}

- (TSKUIDStruct)pivotTableUID
{
  upper = self->_pivotTableUID._upper;
  lower = self->_pivotTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 84) = 1065353216;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 94) = 1065353216;
  *(self + 50) = 0;
  *(self + 51) = 0;
  *(self + 49) = 0;
  return self;
}

@end