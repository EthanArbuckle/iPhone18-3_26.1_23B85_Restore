@interface TSTHiddenStateExtent
+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range;
+ (unint64_t)firstIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)firstIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)lastIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (unint64_t)lastIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange;
+ (void)swapIndexesWithIndexSet:(id)set index:(unint64_t)index withIndex:(unint64_t)withIndex;
- (BOOL)anyCollapsed;
- (BOOL)anyHidden;
- (BOOL)anyHiddenInRange:(_NSRange)range;
- (BOOL)anyHiddenInRange:(_NSRange)range forAction:(unsigned __int8)action;
- (BOOL)hasActiveFilters;
- (BOOL)hasFilterRulesWithTable:(id)table inBaseColumns:(id)columns;
- (BOOL)hasHiddenAtIndex:(unsigned int)index;
- (BOOL)hideAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action;
- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (BOOL)hideAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension;
- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension;
- (BOOL)needsFilterFormulaRewriteForImport;
- (BOOL)p_canUsePrePivotFilterSet;
- (BOOL)showAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)showAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action;
- (BOOL)showAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (BOOL)showAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action;
- (TSCECellRef)cellReferenceForIndex:(SEL)index;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)hiddenStateExtentUid;
- (TSKUIDStruct)ownerUID;
- (TSTHiddenStateExtent)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner;
- (TSTHiddenStateExtent)initWithHiddenStatesOwner:(id)owner forRows:(BOOL)rows;
- (TSTHiddenStatesOwner)hiddenStatesOwner;
- (TSTTableFilterSet)filterSet;
- (TSTTableInfo)tableInfo;
- (TSTTableModel)tableModel;
- (TSUViewColumnOrRowIndex)p_viewIndexForBaseIndex:(TSUModelColumnOrRowIndex)index;
- (id).cxx_construct;
- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState;
- (id)collapseSummaryGroupUIDs:(id)ds;
- (id)copyCollapsedStateToUpdatedGroupUids:(id)uids dimension:(int64_t)dimension;
- (id)duplicateFilterSet;
- (id)duplicateFilterSetInUidFormWithTable:(id)table;
- (id)expandSummaryGroupUIDs:(id)ds;
- (id)hiddenOrCollapsedIndexes;
- (id)indexesOfCollapsedInRange:(_NSRange)range;
- (id)indexesOfFilteredInRange:(_NSRange)range;
- (id)indexesOfHiddenInBaseRange:(_NSRange)range;
- (id)indexesOfHiddenInRange:(_NSRange)range;
- (id)indexesOfUserHiddenInRange:(_NSRange)range;
- (id)indexesOfUserVisibleInRange:(_NSRange)range;
- (id)indexesOfVisibleInRange:(_NSRange)range;
- (id)indexesOfVisibleIndexesInIndexes:(id)indexes;
- (id)linkedResolver;
- (id)mutableFilteredIndexes;
- (id)mutablePivotHiddenIndexes;
- (id)mutableUserHiddenIndexes;
- (id)p_baseHiddenIndexes;
- (id)p_calculateAverageThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord;
- (id)p_calculateTopOrBottomThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord isTop:(BOOL)top keyScale:(unsigned __int8)scale;
- (id)p_calculateUniqueThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord;
- (id)p_collapsedIndexes;
- (id)p_createThresholdCellValue:(id)value locale:(id)locale;
- (id)p_filteredIndexes;
- (id)p_hiddenIndexes;
- (id)p_summaryFilteredIndexes;
- (id)p_summaryHiddenIndexes;
- (id)p_summaryPivotHiddenIndexes;
- (id)p_userHiddenIndexes;
- (id)precedentsForFilterSet:(id)set calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD;
- (id)pruneCollapsedGroupsInDimension:(int64_t)dimension;
- (id)tableTranslator;
- (id)uniqueValuesForColumnUID:(const TSKUIDStruct *)d;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unsigned)findFirstVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end;
- (unsigned)findLastVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end;
- (unsigned)hidingActionForBaseIndex:(TSUModelColumnOrRowIndex)index;
- (unsigned)hidingActionForUid:(const TSKUIDStruct *)uid;
- (unsigned)hidingActionForViewIndex:(TSUViewColumnOrRowIndex)index;
- (unsigned)indexOfVisibleAfterAndIncludingIndex:(unsigned int)index;
- (unsigned)indexOfVisibleAfterIndex:(unsigned int)index;
- (unsigned)numberOfHidden;
- (unsigned)numberOfHiddenInBaseRange:(_NSRange)range;
- (unsigned)numberOfHiddenInRange:(_NSRange)range;
- (unsigned)numberOfUserHiddenInRange:(_NSRange)range;
- (unsigned)ownerKind;
- (void)clearAllCachedRowIndexes;
- (void)clearAllFiltered;
- (void)clearAllPivotHidden;
- (void)clearInvalidIndexes;
- (void)dealloc;
- (void)deleteBaseRange:(_NSRange)range withUids:(const void *)uids;
- (void)dirtyFilterState;
- (void)dirtyFilterStateForFooters;
- (void)dirtyFilterStateForHeaders;
- (void)dirtyFilterStateForRowRange:(_NSRange)range;
- (void)enableFilterSet:(BOOL)set;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)endOfGroupingChangesBatch;
- (void)filterSetUpdated;
- (void)hideAtViewIndexes:(id)indexes forAction:(unsigned __int8)action;
- (void)insertBaseRange:(_NSRange)range;
- (void)loadIndexesFromTable:(id)table;
- (void)moveBaseRangeFrom:(_NSRange)from toIndex:(TSUModelColumnOrRowIndex)index;
- (void)moveViewRangeOnlyFrom:(_NSRange)from toIndex:(TSUViewColumnOrRowIndex)index;
- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block;
- (void)p_addHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)p_calculateUniqueDistinctIndexWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord tableModel:(id)model rule:(id)rule;
- (void)p_hiddenStateChangedForBaseIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)p_registerAllFormulasReturningCoords:(void *)coords;
- (void)p_removeAllFormulaFromCalculationEngine;
- (void)p_removeHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)removeUid:(const TSKUIDStruct *)uid;
- (void)setFilterSet:(id)set;
- (void)setFilterSetType:(int)type;
- (void)setGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setHiddenStateExtentUid:(TSKUIDStruct)uid;
- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import;
- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import;
- (void)setupAfterUnarchive;
- (void)showAtViewIndexes:(id)indexes forAction:(unsigned __int8)action;
- (void)swapBaseIndex:(TSUModelColumnOrRowIndex)index withIndex:(TSUModelColumnOrRowIndex)withIndex;
- (void)syncUpHiddenStateFormulaOwnerUIDs;
- (void)unregisterFromCalcEngine;
- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d;
- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d;
- (void)willChangeGroupByTo:(id)to;
- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTHiddenStateExtent

+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  intersectingCopy = intersecting;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_221388330;
  v19 = sub_221388340;
  v20 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221388348;
  v14[3] = &unk_278462AA8;
  v14[4] = &v15;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(intersectingCopy, v11, location, length, 0, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

+ (unint64_t)firstIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  v11 = setCopy;
  if (range >= endRange)
  {
    range = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  if (objc_msgSend_containsIndex_(setCopy, v8, range, v9, v10))
  {
    while (1)
    {
      v15 = endRange - range;
      if (endRange - range < 2)
      {
        rangeCopy2 = range;
        goto LABEL_11;
      }

      v16 = v15 >> 1;
      v17 = objc_msgSend_countOfIndexesInRange_(v11, v12, range, v15 >> 1, v14);
      rangeCopy2 = range + (v15 >> 1);
      if (v17 != v16)
      {
        if (!v17)
        {
          rangeCopy2 = 0x7FFFFFFFFFFFFFFFLL;
          if (range != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

LABEL_11:
          if (objc_msgSend_containsIndex_(v11, v12, rangeCopy2, v13, v14))
          {
            range = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            range = rangeCopy2;
          }

          break;
        }

        endRange = rangeCopy2 + 1;
        rangeCopy2 = range;
      }

      range = rangeCopy2;
      if (rangeCopy2 >= endRange)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_14:

  return range;
}

+ (unint64_t)lastIndexNotInIndexSet:(id)set beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  if (range >= endRange)
  {
    rangeCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    do
    {
      v11 = range + ((endRange - range) >> 1);
      if (endRange == v11)
      {
        break;
      }

      v12 = objc_msgSend_countOfIndexesInRange_(setCopy, v7, range + ((endRange - range) >> 1), endRange - v11, v9);
      if (v12 == endRange - v11)
      {
        endRange = range + ((endRange - range) >> 1);
      }

      else
      {
        if (!v12)
        {
          rangeCopy = endRange - 1;
          range = v11;
          if (rangeCopy != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_14;
          }

          break;
        }

        range += (endRange - range) >> 1;
      }
    }

    while (range < endRange);
    if (objc_msgSend_containsIndex_(setCopy, v7, range, v8, v9))
    {
      rangeCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      rangeCopy = range;
    }
  }

LABEL_14:

  return rangeCopy;
}

+ (unint64_t)firstIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  indexSetCopy = indexSet;
  if (range >= endRange)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    for (i = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v10, setCopy, range, endRange); ; i = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, setCopy, v18, v23 + 1))
    {
      v14 = i;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v13, indexSetCopy, range, endRange);
      if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 == IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v15 = v14;
        break;
      }

      if (v14 <= IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v18 = IndexNotInIndexSet_beginRange_pastEndRange;
      }

      else
      {
        v18 = v14;
      }

      v19 = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v17, setCopy, range, endRange);
      v21 = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, indexSetCopy, range, endRange);
      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      endRange = v23 + 1;
      range = v18;
    }
  }

  return v15;
}

+ (unint64_t)lastIndexNotInIndexSet:(id)set orIndexSet:(id)indexSet beginRange:(unint64_t)range pastEndRange:(unint64_t)endRange
{
  setCopy = set;
  indexSetCopy = indexSet;
  if (range >= endRange)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    for (i = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v10, setCopy, range, endRange); ; i = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, setCopy, range, v18 + 1))
    {
      v14 = i;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v13, indexSetCopy, range, endRange);
      if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 == IndexNotInIndexSet_beginRange_pastEndRange)
      {
        v15 = v14;
        break;
      }

      if (IndexNotInIndexSet_beginRange_pastEndRange >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = IndexNotInIndexSet_beginRange_pastEndRange;
      }

      v19 = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v17, setCopy, range, endRange);
      v21 = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v20, indexSetCopy, range, endRange);
      if (v19 <= v21)
      {
        range = v21;
      }

      else
      {
        range = v19;
      }

      endRange = v18 + 1;
    }
  }

  return v15;
}

- (TSTHiddenStateExtent)initWithHiddenStatesOwner:(id)owner forRows:(BOOL)rows
{
  rowsCopy = rows;
  v22 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v20.receiver = self;
  v20.super_class = TSTHiddenStateExtent;
  v7 = [(TSTHiddenStateExtent *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_hiddenStatesOwner, ownerCopy);
    v21.__sig = objc_msgSend_baseTableUID(ownerCopy, v9, v10, v11, v12);
    *v21.__opaque = v13;
    if (rowsCopy)
    {
      v17 = 4;
    }

    else
    {
      v17 = 11;
    }

    v8->_hiddenStateExtentUid._lower = sub_2212C4930(&v21, v17, v14, v15, v16);
    v8->_hiddenStateExtentUid._upper = v18;
    v8->_forRows = rowsCopy;
    v8->_uniqueValuesLock._os_unfair_lock_opaque = 0;
    v8->_pendingComputedLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    pthread_mutexattr_init(&v21);
    pthread_mutexattr_settype(&v21, 0);
    pthread_mutex_init(&v8->_viewIndexesMutex, &v21);
  }

  return v8;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);

    if (v9)
    {
      v14 = objc_msgSend_tableInfo(self, v10, v11, v12, v13);
      v19 = objc_msgSend_groupByForRows(v14, v15, v16, v17, v18);
      v24 = objc_msgSend_groupByChangeDistributor(v19, v20, v21, v22, v23);
      objc_msgSend_removeReceiver_(v24, v25, self, v26, v27);

      v32 = objc_msgSend_tableInfo(self, v28, v29, v30, v31);
      v37 = objc_msgSend_groupByForColumns(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_groupByChangeDistributor(v37, v38, v39, v40, v41);
      objc_msgSend_removeReceiver_(v42, v43, self, v44, v45);

      v50 = objc_msgSend_tableInfo(self, v46, v47, v48, v49);
      v55 = objc_msgSend_cellWillChangeDistributor(v50, v51, v52, v53, v54);
      objc_msgSend_removeReceiver_(v55, v56, self, v57, v58);
    }
  }

  pthread_mutex_destroy(&self->_viewIndexesMutex);
  v59.receiver = self;
  v59.super_class = TSTHiddenStateExtent;
  [(TSTHiddenStateExtent *)&v59 dealloc];
}

- (TSTTableInfo)tableInfo
{
  v5 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableInfo(v5, v6, v7, v8, v9);

  return v10;
}

- (id)tableTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v7 = objc_msgSend_hiddenStates(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_translator(v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)p_canUsePrePivotFilterSet
{
  if (self->_forRows)
  {
    v5 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
    if (objc_msgSend_isAPivotDataModel(v5, v6, v7, v8, v9))
    {
      v14 = 0;
    }

    else
    {
      v15 = objc_msgSend_tableInfo(v5, v10, v11, v12, v13);
      v20 = v15;
      if (v15)
      {
        v14 = objc_msgSend_isAPivotTable(v15, v16, v17, v18, v19) - 1;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (void)setupAfterUnarchive
{
  v112 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
  v11 = v6;
  if (v6)
  {
    v12 = objc_msgSend_context(v6, v7, v8, v9, v10);
    v17 = objc_msgSend_documentRoot(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_documentLocale(v17, v18, v19, v20, v21);

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v23 = self->_thresholdCellValues;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v107, v111, 16);
    if (v28)
    {
      v29 = *v108;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v108 != v29)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend_setLocale_(*(*(&v107 + 1) + 8 * i), v25, v22, v26, v27);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v107, v111, 16);
      }

      while (v28);
    }

    if (!self->_filterSet)
    {
      if (objc_msgSend_p_canUsePrePivotFilterSet(self, v31, v32, v33, v34))
      {
        v35 = objc_msgSend_prePivotRowFilterSet(v11, v31, v32, v33, v34);
        v40 = objc_msgSend_context(v11, v36, v37, v38, v39);
        v44 = objc_msgSend_copyWithContext_(v35, v41, v40, v42, v43);
        filterSet = self->_filterSet;
        self->_filterSet = v44;
      }

      if (!self->_filterSet)
      {
        v46 = [TSTTableFilterSet alloc];
        v51 = objc_msgSend_context(v11, v47, v48, v49, v50);
        v53 = objc_msgSend_initWithFilterRules_type_context_(v46, v52, 0, 0, v51);
        v54 = self->_filterSet;
        self->_filterSet = v53;
      }
    }

    v59 = objc_msgSend_tableInfo(self, v31, v32, v33, v34);
    if (v59)
    {
      if (self->_columnUidsWithUniqueIndexes.__table_.__size_)
      {
        v60 = objc_msgSend_tableInfo(self, v55, v56, v57, v58);
        v65 = objc_msgSend_cellWillChangeDistributor(v60, v61, v62, v63, v64);
        objc_msgSend_addReceiverIfMissing_(v65, v66, self, v67, v68);
      }

      v69 = objc_msgSend_groupByForRows(v59, v55, v56, v57, v58);
      v74 = objc_msgSend_groupByChangeDistributor(v69, v70, v71, v72, v73);
      objc_msgSend_addReceiverIfMissing_(v74, v75, self, v76, v77);

      v82 = objc_msgSend_groupByForColumns(v59, v78, v79, v80, v81);
      v87 = objc_msgSend_groupByChangeDistributor(v82, v83, v84, v85, v86);
      objc_msgSend_addReceiverIfMissing_(v87, v88, self, v89, v90);
    }

    thresholdCellValues = self->_thresholdCellValues;
    v92 = objc_msgSend_hiddenStateFormulaOwnerForRows(v11, v55, v56, v57, v58);
    objc_msgSend_setThresholdCellValues_(v92, v93, thresholdCellValues, v94, v95);
  }

  else
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent setupAfterUnarchive]", v9, v10);
    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v99, v100);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v102, v97, v101, 418, 0, "invalid nil value for '%{public}s'", "tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105, v106);
  }
}

- (void)syncUpHiddenStateFormulaOwnerUIDs
{
  v20 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
  if (v20)
  {
    v10 = objc_msgSend_forRows(self, v6, v7, v8, v9);
    lower = self->_hiddenStateExtentUid._lower;
    upper = self->_hiddenStateExtentUid._upper;
    if (v10)
    {
      objc_msgSend_hiddenStateFormulaOwnerForRows(v20, v11, v12, v13, v14);
    }

    else
    {
      objc_msgSend_hiddenStateFormulaOwnerForColumns(v20, v11, v12, v13, v14);
    }
    v17 = ;
    objc_msgSend_setOwnerUID_(v17, v18, lower, upper, v19);
  }
}

- (void)setHiddenStateExtentUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  if (uid._lower != self->_hiddenStateExtentUid._lower || uid._upper != self->_hiddenStateExtentUid._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (objc_msgSend_duringSubOwnerUIDUpgrade(WeakRetained, v7, v8, v9, v10))
    {
    }

    else if (WeakRetained)
    {
      objc_msgSend_willModify(WeakRetained, v11, v12, v13, v14);
      objc_msgSend_unregisterFromCalcEngine(self, v15, v16, v17, v18);
      self->_hiddenStateExtentUid._lower = lower;
      self->_hiddenStateExtentUid._upper = upper;
      v19 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v30[0] = objc_msgSend_baseTableUID(v19, v20, v21, v22, v23);
      v30[1] = v24;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self, v24, WeakRetained, v30, v25);

      objc_msgSend_p_registerAllFormulas(self, v26, v27, v28, v29);
LABEL_8:
      objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self, v11, v12, v13, v14);

      return;
    }

    WeakRetained = 0;
    self->_hiddenStateExtentUid._lower = lower;
    self->_hiddenStateExtentUid._upper = upper;
    goto LABEL_8;
  }
}

- (void)willChangeGroupByTo:(id)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
    v14 = objc_msgSend_groupByForRows(v9, v10, v11, v12, v13);
    v19 = objc_msgSend_groupByChangeDistributor(v14, v15, v16, v17, v18);
    objc_msgSend_removeReceiver_(v19, v20, self, v21, v22);

    v27 = objc_msgSend_tableInfo(self, v23, v24, v25, v26);
    v32 = objc_msgSend_groupByForColumns(v27, v28, v29, v30, v31);
    v37 = objc_msgSend_groupByChangeDistributor(v32, v33, v34, v35, v36);
    objc_msgSend_removeReceiver_(v37, v38, self, v39, v40);
  }

  v41 = objc_msgSend_groupByChangeDistributor(toCopy, v5, v6, v7, v8);
  objc_msgSend_addReceiverIfMissing_(v41, v42, self, v43, v44);

  self->_invalidateViewGeometry = 1;
}

- (TSUViewColumnOrRowIndex)p_viewIndexForBaseIndex:(TSUModelColumnOrRowIndex)index
{
  v7 = objc_msgSend_tableTranslator(self, a2, *&index._index, v3, v4);
  if ((objc_msgSend_areMapsStale(v7, v8, v9, v10, v11) & 1) == 0)
  {
    if (objc_msgSend_forRows(self, v12, v13, v14, v15))
    {
      v23.var0 = objc_msgSend_viewRowIndexForBaseRowIndex_(v7, v17, index._index, v18, v19);
      v20 = TSUViewRowIndex::asColumnRowIndex(&v23);
    }

    else
    {
      v22.var0 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v7, v17, LOWORD(index._index), v18, v19);
      if (v22.var0 == 0x7FFF)
      {
        goto LABEL_3;
      }

      v20 = TSUViewColumnIndex::asColumnRowIndex(&v22);
    }

    v16._index = v20;
    goto LABEL_9;
  }

  self->_invalidateViewGeometry = 1;
LABEL_3:
  v16._index = 0x7FFFFFFF;
LABEL_9:

  return v16;
}

- (void)p_addHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  actionCopy = action;
  index = index._index;
  if (index._index == 0x7FFFFFFFLL)
  {
    LODWORD(v8) = viewIndex;
    if (viewIndex._index == 0x7FFFFFFF)
    {
      return;
    }
  }

  else
  {
    LODWORD(v8) = objc_msgSend_p_viewIndexForBaseIndex_(self, a2, index._index, *&viewIndex._index, action);
  }

  if (actionCopy <= 3)
  {
    if (actionCopy == 1)
    {
      goto LABEL_17;
    }

    if (actionCopy != 2)
    {
      goto LABEL_27;
    }

    if (!self->_baseFilteredIndexes)
    {
      v9 = objc_opt_new();
      baseFilteredIndexes = self->_baseFilteredIndexes;
      self->_baseFilteredIndexes = v9;
    }

    if (index == 0x7FFFFFFF)
    {
      if (v8 != 0x7FFFFFFF)
      {
        p_viewIndexesMutex = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        objc_msgSend_addIndex_(self->_summaryFilteredIndexes, v12, v8, v13, v14);
LABEL_37:
        objc_msgSend_addIndex_(self->_filteredIndexes, v15, v8, v16, v17);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v85, v8, v86, v87);
        pthread_mutex_unlock(p_viewIndexesMutex);
      }
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index, action);
      if (v8 != 0x7FFFFFFF)
      {
        p_viewIndexesMutex = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        goto LABEL_37;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v48 = objc_msgSend_tableModel(self, v88, v89, v90, v91);
    v181 = objc_msgSend_tableUID(v48, v92, v93, v94, v95);
    v182 = v96;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v96, &v181, v97, v98);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v99, v183, v100, v101);
    goto LABEL_56;
  }

  switch(actionCopy)
  {
    case 4:
      return;
    case 16:
      if (index == 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v31, v8, v32, v33);
        objc_msgSend_addIndex_(self->_summaryPivotHiddenIndexes, v34, v8, v35, v36);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      else
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index, action);
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v77, v78);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 576, 0, "Not allowing pivot-hidden for base indexes.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
      }

LABEL_26:
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
      v48 = objc_msgSend_tableModel(self, v44, v45, v46, v47);
      v181 = objc_msgSend_tableUID(v48, v49, v50, v51, v52);
      v182 = v53;
      objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v53, &v181, v54, v55);
      objc_msgSend_markCellRefAsDirty_(WeakRetained, v56, v183, v57, v58);
LABEL_56:

      return;
    case 8:
LABEL_17:
      if (!self->_baseUserHiddenIndexes)
      {
        v18 = objc_opt_new();
        baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
        self->_baseUserHiddenIndexes = v18;
      }

      if (index == 0x7FFFFFFF)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index, action);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 557, 0, "Not allowing user-hidden as view only");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      }

      else
      {
        objc_msgSend_addIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index, action);
      }

      if (v8 != 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_addIndex_(self->_userHiddenIndexes, v37, v8, v38, v39);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v40, v8, v41, v42);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      goto LABEL_26;
  }

LABEL_27:
  if (!self->_baseUserHiddenIndexes)
  {
    v59 = objc_opt_new();
    v60 = self->_baseUserHiddenIndexes;
    self->_baseUserHiddenIndexes = v59;
  }

  if (!self->_baseFilteredIndexes)
  {
    v61 = objc_opt_new();
    v62 = self->_baseFilteredIndexes;
    self->_baseFilteredIndexes = v61;
  }

  if ((actionCopy & 9) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index, action);
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v66, v67);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 615, 0, "Not allowing user-hidden as view only");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index, action);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_addIndex_(self->_userHiddenIndexes, v102, v8, v103, v104);
      objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v105, v8, v106, v107);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v108 = objc_loadWeakRetained(&self->_calcEngine);
    v113 = objc_msgSend_tableModel(self, v109, v110, v111, v112);
    v181 = objc_msgSend_tableUID(v113, v114, v115, v116, v117);
    v182 = v118;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v118, &v181, v119, v120);
    objc_msgSend_markCellRefAsDirty_(v108, v121, v183, v122, v123);
  }

  if ((actionCopy & 0x10) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v124, v8, v125, v126);
      objc_msgSend_addIndex_(self->_summaryPivotHiddenIndexes, v127, v8, v128, v129);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTHiddenStateExtent p_addHiddenIndex:viewIndex:forAction:]", *&viewIndex._index, action);
      v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v133, v134);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v136, v131, v135, 634, 0, "Not allowing pivot-hidden for base indexes.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v137, v138, v139, v140);
    }

    v141 = objc_loadWeakRetained(&self->_calcEngine);
    v146 = objc_msgSend_tableModel(self, v142, v143, v144, v145);
    v181 = objc_msgSend_tableUID(v146, v147, v148, v149, v150);
    v182 = v151;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v151, &v181, v152, v153);
    objc_msgSend_markCellRefAsDirty_(v141, v154, v183, v155, v156);
  }

  if ((actionCopy & 2) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      if (v8 != 0x7FFFFFFF)
      {
        v157 = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        objc_msgSend_addIndex_(self->_summaryFilteredIndexes, v158, v8, v159, v160);
LABEL_54:
        objc_msgSend_addIndex_(self->_filteredIndexes, v161, v8, v162, v163);
        objc_msgSend_addIndex_(self->_combinedHiddenIndexes, v164, v8, v165, v166);
        pthread_mutex_unlock(v157);
      }
    }

    else
    {
      objc_msgSend_addIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index, action);
      if (v8 != 0x7FFFFFFF)
      {
        v157 = &self->_viewIndexesMutex;
        pthread_mutex_lock(&self->_viewIndexesMutex);
        v8 = v8;
        goto LABEL_54;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v48 = objc_msgSend_tableModel(self, v167, v168, v169, v170);
    v181 = objc_msgSend_tableUID(v48, v171, v172, v173, v174);
    v182 = v175;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v175, &v181, v176, v177);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v178, v183, v179, v180);
    goto LABEL_56;
  }
}

- (void)p_removeHiddenIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  actionCopy = action;
  index = index._index;
  if (index._index == 0x7FFFFFFFLL)
  {
    v8 = viewIndex._index;
    if (viewIndex._index == 0x7FFFFFFF)
    {
      return;
    }
  }

  else
  {
    v8 = objc_msgSend_p_viewIndexForBaseIndex_(self, a2, index._index, *&viewIndex._index, action);
  }

  if (actionCopy > 3)
  {
    if (actionCopy == 4)
    {
      goto LABEL_42;
    }

    if (actionCopy == 16)
    {
      if (index == 0x7FFFFFFF)
      {
        pthread_mutex_lock(&self->_viewIndexesMutex);
        objc_msgSend_removeIndex_(self->_summaryPivotHiddenIndexes, v48, v8, v49, v50);
        pthread_mutex_unlock(&self->_viewIndexesMutex);
      }

      goto LABEL_21;
    }

    if (actionCopy != 8)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index, action);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_userHiddenIndexes, v31, v8, v32, v33);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

LABEL_21:
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v20 = objc_msgSend_tableModel(self, v34, v35, v36, v37);
    v125 = objc_msgSend_tableUID(v20, v38, v39, v40, v41);
    v126 = v42;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v42, &v125, v43, v44);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v45, v127, v46, v47);
LABEL_41:

    goto LABEL_42;
  }

  if (actionCopy == 1)
  {
    goto LABEL_17;
  }

  if (actionCopy == 2)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index, action);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_filteredIndexes, v9, v8, v10, v11);
      objc_msgSend_removeIndex_(self->_summaryFilteredIndexes, v12, v8, v13, v14);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v20 = objc_msgSend_tableModel(self, v16, v17, v18, v19);
    v125 = objc_msgSend_tableUID(v20, v21, v22, v23, v24);
    v126 = v25;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v25, &v125, v26, v27);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v28, v127, v29, v30);
    goto LABEL_41;
  }

LABEL_25:
  if ((actionCopy & 9) != 0)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index, action);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_userHiddenIndexes, v51, v8, v52, v53);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v54 = objc_loadWeakRetained(&self->_calcEngine);
    v59 = objc_msgSend_tableModel(self, v55, v56, v57, v58);
    v125 = objc_msgSend_tableUID(v59, v60, v61, v62, v63);
    v126 = v64;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v64, &v125, v65, v66);
    objc_msgSend_markCellRefAsDirty_(v54, v67, v127, v68, v69);
  }

  if ((actionCopy & 0x10) != 0)
  {
    if (index == 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_summaryPivotHiddenIndexes, v70, v8, v71, v72);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v73 = objc_loadWeakRetained(&self->_calcEngine);
    v78 = objc_msgSend_tableModel(self, v74, v75, v76, v77);
    v125 = objc_msgSend_tableUID(v78, v79, v80, v81, v82);
    v126 = v83;
    objc_msgSend_userHiddenChangedPrecedentForTableUID_(TSCEHauntedOwner, v83, &v125, v84, v85);
    objc_msgSend_markCellRefAsDirty_(v73, v86, v127, v87, v88);
  }

  if ((actionCopy & 2) != 0)
  {
    if (index != 0x7FFFFFFF)
    {
      objc_msgSend_removeIndex_(self->_baseFilteredIndexes, a2, index, *&viewIndex._index, action);
    }

    if (v8 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_filteredIndexes, v89, v8, v90, v91);
      objc_msgSend_removeIndex_(self->_summaryFilteredIndexes, v92, v8, v93, v94);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v20 = objc_msgSend_tableModel(self, v95, v96, v97, v98);
    v125 = objc_msgSend_tableUID(v20, v99, v100, v101, v102);
    v126 = v103;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v103, &v125, v104, v105);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v106, v127, v107, v108);
    goto LABEL_41;
  }

LABEL_42:
  if (index == 0x7FFFFFFF)
  {
    objc_msgSend_p_summaryFilteredIndexes(self, a2, *&index._index, *&viewIndex._index, action);

    objc_msgSend_p_summaryPivotHiddenIndexes(self, v109, v110, v111, v112);
    if ((objc_msgSend_containsIndex_(self->_summaryFilteredIndexes, v113, v8, v114, v115) & 1) == 0 && (objc_msgSend_containsIndex_(self->_summaryPivotHiddenIndexes, v116, v8, v117, v118) & 1) == 0)
    {
LABEL_49:
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_removeIndex_(self->_combinedHiddenIndexes, v122, v8, v123, v124);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  else if ((objc_msgSend_containsIndex_(self->_baseUserHiddenIndexes, a2, index, *&viewIndex._index, action) & 1) == 0 && (objc_msgSend_containsIndex_(self->_baseFilteredIndexes, v119, index, v120, v121) & 1) == 0 && v8 != 0x7FFFFFFF)
  {
    goto LABEL_49;
  }
}

- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action
{
  actionCopy = action;
  v11 = objc_msgSend_tableTranslator(self, a2, uid, action, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent hideAtUid:forAction:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 774, 0, "Can't show/hide at a uuid without a TSTTableTranslator to translate to an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  lower = uid->_lower;
  upper = uid->_upper;
  if (self->_forRows)
  {
    v27 = objc_msgSend_baseRowIndexForRowUID_(v11, v8, lower, upper, v10);
  }

  else
  {
    v28 = objc_msgSend_baseColumnIndexForColumnUID_(v11, v8, lower, upper, v10);
    if (v28 == 0x7FFF)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = v28;
    }
  }

  v29 = uid->_lower;
  v30 = uid->_upper;
  if (self->_forRows)
  {
    v31 = objc_msgSend_viewRowIndexForRowUID_(v11, v25, v29, v30, v26);
LABEL_13:
    v34 = objc_msgSend_hideAtUid_forIndex_forViewIndex_forAction_(self, v32, uid, v27, v31, actionCopy);
    goto LABEL_14;
  }

  v33 = objc_msgSend_viewColumnIndexForColumnUID_(v11, v25, v29, v30, v26);
  if (v33 != 0x7FFF)
  {
    v31 = v33;
    goto LABEL_13;
  }

  v34 = objc_msgSend_hideAtUid_forIndex_forViewIndex_forAction_(self, v32, uid, v27, 0x7FFFFFFFLL, actionCopy);
LABEL_14:
  v35 = v34;

  return v35;
}

- (BOOL)hideAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  v6 = action & 0xFB;
  if ((action & 0xFFFFFFFB) == 0)
  {
    return 0;
  }

  v12 = objc_msgSend_hidingActionForUid_(self, a2, uid, *&index._index, *&viewIndex._index);
  if ((v6 & ~v12) == 0)
  {
    return 0;
  }

  v17 = v12 | v6;
  if (index._index == 0x7FFFFFFF)
  {
    uidCopy2 = uid;
    p_summaryHiddenByUid = &self->_summaryHiddenByUid;
  }

  else
  {
    if (((v12 | v6) & 0x10) != 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTHiddenStateExtent hideAtUid:forIndex:forViewIndex:forAction:]", v14, v15);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 822, 0, "Pivot Hiding not allowed on base rows or columns.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      goto LABEL_11;
    }

    uidCopy2 = uid;
    p_summaryHiddenByUid = &self->_baseHiddenByUid;
  }

  *(sub_2213958D0(p_summaryHiddenByUid, uid) + 32) = v17;
LABEL_11:
  objc_msgSend_p_addHiddenIndex_viewIndex_forAction_(self, v19, index._index, viewIndex._index, v6);
  objc_msgSend_p_hiddenStateChangedForBaseIndex_viewIndex_forAction_(self, v31, index._index, viewIndex._index, v6);
  result = 1;
  if (index._index != 0x7FFFFFFF && (action & 0x10) != 0)
  {
    if (self->_forRows)
    {
      LODWORD(uidCopy2) = index;
      v36 = objc_msgSend_tableModel(self, v32, v33, v34, v35);
      objc_msgSend_setHidingState_atRowIndex_(v36, v37, v17 & 0xEB, &uidCopy2, v38);
    }

    else
    {
      LOWORD(uidCopy2) = index._index;
      if (LOWORD(index._index) == 0x7FFF)
      {
        return 1;
      }

      v36 = objc_msgSend_tableModel(self, v32, v33, v34, v35);
      objc_msgSend_setHidingState_atColumnIndex_(v36, v39, v17, &uidCopy2, v40);
    }

    return 1;
  }

  return result;
}

- (BOOL)showAtUid:(const TSKUIDStruct *)uid forAction:(unsigned __int8)action
{
  actionCopy = action;
  v11 = objc_msgSend_tableTranslator(self, a2, uid, action, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent showAtUid:forAction:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 864, 0, "Can't show/hide at a uuid without a TSTTableTranslator to translate to an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  lower = uid->_lower;
  upper = uid->_upper;
  if (self->_forRows)
  {
    v27 = objc_msgSend_baseRowIndexForRowUID_(v11, v8, lower, upper, v10);
  }

  else
  {
    v28 = objc_msgSend_baseColumnIndexForColumnUID_(v11, v8, lower, upper, v10);
    if (v28 == 0x7FFF)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = v28;
    }
  }

  v29 = uid->_lower;
  v30 = uid->_upper;
  if (self->_forRows)
  {
    v31 = objc_msgSend_viewRowIndexForRowUID_(v11, v25, v29, v30, v26);
LABEL_13:
    v34 = objc_msgSend_showAtUid_forIndex_forViewIndex_forAction_(self, v32, uid, v27, v31, actionCopy);
    goto LABEL_14;
  }

  v33 = objc_msgSend_viewColumnIndexForColumnUID_(v11, v25, v29, v30, v26);
  if (v33 != 0x7FFF)
  {
    v31 = v33;
    goto LABEL_13;
  }

  v34 = objc_msgSend_showAtUid_forIndex_forViewIndex_forAction_(self, v32, uid, v27, 0x7FFFFFFFLL, actionCopy);
LABEL_14:
  v35 = v34;

  return v35;
}

- (BOOL)showAtUid:(const TSKUIDStruct *)uid forIndex:(TSUModelColumnOrRowIndex)index forViewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  if (!action)
  {
    return 0;
  }

  actionCopy = action;
  v11 = objc_msgSend_hidingActionForUid_(self, a2, uid, *&index._index, *&viewIndex._index);
  v12 = v11;
  if (actionCopy != 255)
  {
    if ((v11 & actionCopy) != 0)
    {
      v13 = v11 & ~actionCopy;
      if (index._index == 0x7FFFFFFF)
      {
        if (v13)
        {
          uidCopy2 = uid;
          p_summaryHiddenByUid = &self->_summaryHiddenByUid;
LABEL_13:
          *(sub_2213958D0(p_summaryHiddenByUid, uid) + 32) = v13;
          goto LABEL_17;
        }

        p_baseHiddenByUid = &self->_summaryHiddenByUid;
      }

      else
      {
        if (v13)
        {
          uidCopy2 = uid;
          p_summaryHiddenByUid = &self->_baseHiddenByUid;
          goto LABEL_13;
        }

        p_baseHiddenByUid = &self->_baseHiddenByUid;
      }

      sub_2211F2EF4(p_baseHiddenByUid, uid);
      goto LABEL_17;
    }

    return 0;
  }

  v15 = 40;
  if (index._index == 0x7FFFFFFF)
  {
    v15 = 80;
  }

  sub_2211F2EF4((&self->super.isa + v15), uid);
  v13 = 0;
  if (!v12)
  {
    return 0;
  }

LABEL_17:
  objc_msgSend_p_removeHiddenIndex_viewIndex_forAction_(self, v16, index._index, viewIndex._index, actionCopy);
  objc_msgSend_p_hiddenStateChangedForBaseIndex_viewIndex_forAction_(self, v19, index._index, viewIndex._index, actionCopy);
  result = 1;
  if (index._index != 0x7FFFFFFF && (actionCopy & 0x14) != 0)
  {
    v24 = objc_msgSend_tableTranslator(self, v20, v21, v22, v23);
    v27 = v24;
    if (self->_forRows)
    {
      LODWORD(uidCopy2) = objc_msgSend_baseRowIndexForRowUID_(v24, v25, uid->_lower, uid->_upper, v26);
      if (uidCopy2 != 0x7FFFFFFF)
      {
        v32 = objc_msgSend_tableModel(self, v28, v29, v30, v31);
        objc_msgSend_setHidingState_atRowIndex_(v32, v33, v13 & 0xEB, &uidCopy2, v34);
LABEL_24:
      }
    }

    else
    {
      LOWORD(uidCopy2) = objc_msgSend_baseColumnIndexForColumnUID_(v24, v25, uid->_lower, uid->_upper, v26);
      if (uidCopy2 != 0x7FFF)
      {
        v32 = objc_msgSend_tableModel(self, v35, v36, v37, v38);
        objc_msgSend_setHidingState_atColumnIndex_(v32, v39, v13, &uidCopy2, v40);
        goto LABEL_24;
      }
    }

    return 1;
  }

  return result;
}

- (unsigned)hidingActionForUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
  if (v7)
  {
    v6 |= *(v7 + 32);
  }

  return v6;
}

- (void)removeUid:(const TSKUIDStruct *)uid
{
  sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, uid);

  sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, uid);
}

- (BOOL)anyHidden
{
  if (objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3, v4) || objc_msgSend_count(self->_baseUserHiddenIndexes, v6, v7, v8, v9))
  {
    return 1;
  }

  v16 = objc_msgSend_p_summaryHiddenIndexes(self, v10, v11, v12, v13);
  v14 = objc_msgSend_count(v16, v17, v18, v19, v20) != 0;

  return v14;
}

- (BOOL)anyCollapsed
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  if (objc_msgSend_count(self->_collapsedGroupUids, v7, v8, v9, v10))
  {
    if (objc_msgSend_forRows(self, v11, v12, v13, v14) && (objc_msgSend_isCategorized(v6, v15, v16, v17, v18) & 1) != 0)
    {
      isAPivotTable = 1;
    }

    else
    {
      isAPivotTable = objc_msgSend_isAPivotTable(v6, v15, v16, v17, v18);
    }
  }

  else
  {
    isAPivotTable = 0;
  }

  return isAPivotTable;
}

- (unsigned)numberOfHidden
{
  if (objc_msgSend_anyCollapsed(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_anyHidden(self, v6, v7, v8, v9);
    v15 = objc_msgSend_p_collapsedIndexes(self, v11, v12, v13, v14);
    v20 = v15;
    if (v10)
    {
      v21 = objc_msgSend_p_hiddenIndexes(self, v16, v17, v18, v19);
      objc_msgSend_addIndexes_(v20, v22, v21, v23, v24);

      v29 = objc_msgSend_count(v20, v25, v26, v27, v28);
    }

    else
    {
      v29 = objc_msgSend_count(v15, v16, v17, v18, v19);
    }

    LODWORD(v44) = v29;
  }

  else
  {
    v20 = objc_msgSend_p_baseHiddenIndexes(self, v6, v7, v8, v9);
    v34 = objc_msgSend_count(v20, v30, v31, v32, v33);
    v39 = objc_msgSend_p_summaryHiddenIndexes(self, v35, v36, v37, v38);
    v44 = objc_msgSend_count(v39, v40, v41, v42, v43) + v34;
  }

  return v44;
}

- (void)loadIndexesFromTable:(id)table
{
  tableCopy = table;
  v13 = objc_msgSend_tableTranslator(self, v5, v6, v7, v8);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  next = self->_baseHiddenByUid.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v15 = next[32];
      if (v15)
      {
        *v56 = *(next + 1);
        if ((v15 & 9) != 0)
        {
          sub_221083454(&v61, v56);
        }

        if ((v15 & 2) != 0)
        {
          sub_221083454(&v58, v56);
        }
      }

      next = *next;
    }

    while (next);
    if (v61 != v62)
    {
      if (self->_forRows)
      {
        objc_msgSend_mutableBaseRowIndexesForUIDs_(v13, v9, &v61, v11, v12);
      }

      else
      {
        objc_msgSend_mutableBaseColumnIndexesForUIDs_(v13, v9, &v61, v11, v12);
      }
      v16 = ;
      baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
      self->_baseUserHiddenIndexes = v16;

      objc_msgSend_count(self->_baseUserHiddenIndexes, v18, v19, v20, v21);
    }
  }

  if (v58 != v59)
  {
    if (self->_forRows)
    {
      objc_msgSend_mutableBaseRowIndexesForUIDs_(v13, v9, &v58, v11, v12);
    }

    else
    {
      objc_msgSend_mutableBaseColumnIndexesForUIDs_(v13, v9, &v58, v11, v12);
    }
    v22 = ;
    baseFilteredIndexes = self->_baseFilteredIndexes;
    self->_baseFilteredIndexes = v22;
  }

  v56[0] = 0;
  v56[1] = 0;
  v57 = 0;
  __p = 0;
  v54 = 0;
  v55 = 0;
  for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
  {
    v25 = i[32];
    if (v25)
    {
      v52 = *(i + 1);
      if ((v25 & 0x10) != 0)
      {
        sub_221083454(v56, &v52);
      }

      if ((v25 & 2) != 0)
      {
        sub_221083454(&__p, &v52);
      }
    }
  }

  if (self->_needsSummaryUidUpgrade)
  {
    objc_msgSend_willModifyForUpgrade(tableCopy, v9, v10, v11, v12);
    if (objc_msgSend_count(self->_summaryPivotHiddenIndexes, v26, v27, v28, v29))
    {
      summaryPivotHiddenIndexes = self->_summaryPivotHiddenIndexes;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_22138ADE0;
      v51[3] = &unk_27845E958;
      v51[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(summaryPivotHiddenIndexes, v30, v51, v32, v33);
    }

    if (objc_msgSend_count(self->_summaryFilteredIndexes, v30, v31, v32, v33))
    {
      summaryFilteredIndexes = self->_summaryFilteredIndexes;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_22138ADF0;
      v50[3] = &unk_27845E958;
      v50[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(summaryFilteredIndexes, v9, v50, v11, v12);
    }

    self->_needsSummaryUidUpgrade = 0;
  }

  else
  {
    if (v56[1] != v56[0])
    {
      if (self->_forRows)
      {
        objc_msgSend_viewRowIndexesForUIDs_(v13, v9, v56, v11, v12);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForUIDs_(v13, v9, v56, v11, v12);
      }
      v36 = ;
      v41 = objc_msgSend_mutableCopy(v36, v37, v38, v39, v40);
      v42 = self->_summaryPivotHiddenIndexes;
      self->_summaryPivotHiddenIndexes = v41;
    }

    if (v54 != __p)
    {
      if (self->_forRows)
      {
        objc_msgSend_viewRowIndexesForUIDs_(v13, v9, &__p, v11, v12);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForUIDs_(v13, v9, &__p, v11, v12);
      }
      v43 = ;
      v48 = objc_msgSend_mutableCopy(v43, v44, v45, v46, v47);
      v49 = self->_summaryFilteredIndexes;
      self->_summaryFilteredIndexes = v48;
    }
  }

  objc_msgSend_verifyIndexesAreConsistent(self, v9, v10, v11, v12);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }
}

- (void)clearInvalidIndexes
{
  if (self->_invalidateViewGeometry)
  {
    v21 = objc_msgSend_tableTranslator(self, a2, v2, v3, v4);
    if ((objc_msgSend_areMapsStale(v21, v6, v7, v8, v9) & 1) == 0)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      *&self->_invalidateViewGeometry = 0;
      userHiddenIndexes = self->_userHiddenIndexes;
      self->_userHiddenIndexes = 0;

      filteredIndexes = self->_filteredIndexes;
      self->_filteredIndexes = 0;

      combinedHiddenIndexes = self->_combinedHiddenIndexes;
      self->_combinedHiddenIndexes = 0;

      collapsedIndexes = self->_collapsedIndexes;
      self->_collapsedIndexes = 0;

      summaryFilteredIndexes = self->_summaryFilteredIndexes;
      self->_summaryFilteredIndexes = 0;

      summaryPivotHiddenIndexes = self->_summaryPivotHiddenIndexes;
      self->_summaryPivotHiddenIndexes = 0;

      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  if (self->_invalidateCollapsed)
  {
    v22 = objc_msgSend_tableTranslator(self, a2, v2, v3, v4);
    if ((objc_msgSend_areMapsStale(v22, v16, v17, v18, v19) & 1) == 0)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      self->_invalidateCollapsed = 0;
      v20 = self->_collapsedIndexes;
      self->_collapsedIndexes = 0;

      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }
}

- (id)p_collapsedIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_collapsedIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (v6)
  {
    goto LABEL_29;
  }

  if (!objc_msgSend_count(self->_collapsedGroupUids, v7, v8, v9, v10))
  {
    v71 = 0;
    goto LABEL_28;
  }

  v15 = objc_msgSend_tableInfo(self, v11, v12, v13, v14);
  if (objc_msgSend_isAPivotTable(v15, v16, v17, v18, v19))
  {
    v24 = objc_msgSend_pivotOwner(v15, v20, v21, v22, v23);
    v29 = objc_msgSend_groupBySet(v24, v25, v26, v27, v28);
    if (objc_msgSend_forRows(self, v30, v31, v32, v33))
    {
      v38 = objc_msgSend_pivotOwner(v15, v34, v35, v36, v37);
      v43 = objc_msgSend_groupBySet(v38, v39, v40, v41, v42);
      v48 = objc_msgSend_groupByForRowGroups(v43, v44, v45, v46, v47);

      v52 = objc_msgSend_rowUidsForGroupUids_(v48, v49, self->_collapsedGroupUids, v50, v51);
      v56 = objc_msgSend_childGroupUidsForGroupUids_(v48, v53, self->_collapsedGroupUids, v54, v55);
      objc_msgSend_addUuidsFromSet_(v52, v57, v56, v58, v59);
      v62 = objc_msgSend_expandGroupUidsForFlattening_forDimension_(v29, v60, v52, 0, v61);
      if (objc_msgSend_count(v62, v63, v64, v65, v66))
      {
        if (v62)
        {
          objc_msgSend_uuidsAsVector(v62, v67, v68, v69, v70);
        }

        else
        {
          __p = 0;
          v136 = 0;
          v137 = 0;
        }

        v132 = objc_msgSend_mutableRowIndexesForUIDs_(v15, v67, &__p, v69, v70);
        goto LABEL_23;
      }
    }

    else
    {
      v103 = objc_msgSend_pivotOwner(v15, v34, v35, v36, v37);
      v108 = objc_msgSend_groupBySet(v103, v104, v105, v106, v107);
      v48 = objc_msgSend_groupByForColumnGroups(v108, v109, v110, v111, v112);

      v52 = objc_msgSend_rowUidsForGroupUids_(v48, v113, self->_collapsedGroupUids, v114, v115);
      v56 = objc_msgSend_childGroupUidsForGroupUids_(v48, v116, self->_collapsedGroupUids, v117, v118);
      objc_msgSend_addUuidsFromSet_(v52, v119, v56, v120, v121);
      v62 = objc_msgSend_expandGroupUidsForFlattening_forDimension_(v29, v122, v52, 1, v123);
      if (objc_msgSend_count(v62, v124, v125, v126, v127))
      {
        if (v62)
        {
          objc_msgSend_uuidsAsVector(v62, v128, v129, v130, v131);
        }

        else
        {
          __p = 0;
          v136 = 0;
          v137 = 0;
        }

        v132 = objc_msgSend_mutableColumnIndexesForUIDs_(v15, v128, &__p, v130, v131);
LABEL_23:
        v71 = v132;
        if (__p)
        {
          v136 = __p;
          operator delete(__p);
        }

        goto LABEL_25;
      }
    }

    v71 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  if (objc_msgSend_isCategorized(v15, v20, v21, v22, v23) && objc_msgSend_forRows(self, v72, v73, v74, v75))
  {
    v24 = objc_msgSend_groupBy(v15, v76, v77, v78, v79);
    v29 = objc_msgSend_rowUidsForGroupUids_(v24, v80, self->_collapsedGroupUids, v81, v82);
    v48 = objc_msgSend_childGroupUidsForGroupUids_(v24, v83, self->_collapsedGroupUids, v84, v85);
    objc_msgSend_addUuidsFromSet_(v29, v86, v48, v87, v88);
    v52 = objc_msgSend_labelRowUidsForGroupUids_(v24, v89, v48, v90, v91);
    objc_msgSend_addUuidsFromSet_(v29, v92, v52, v93, v94);
    if (objc_msgSend_count(v29, v95, v96, v97, v98))
    {
      if (v29)
      {
        objc_msgSend_uuidsAsVector(v29, v99, v100, v101, v102);
      }

      else
      {
        __p = 0;
        v136 = 0;
        v137 = 0;
      }

      v71 = objc_msgSend_mutableRowIndexesForUIDs_(v15, v99, &__p, v101, v102);
      if (__p)
      {
        v136 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v71 = 0;
    }

    goto LABEL_26;
  }

  v71 = 0;
LABEL_27:

LABEL_28:
  v6 = v71;
  pthread_mutex_lock(&self->_viewIndexesMutex);
  objc_storeStrong(&self->_collapsedIndexes, v71);
  pthread_mutex_unlock(&self->_viewIndexesMutex);

  if (v6)
  {
LABEL_29:
    v133 = objc_msgSend_mutableCopy(v6, v7, v8, v9, v10);

    goto LABEL_30;
  }

  v133 = objc_opt_new();
LABEL_30:

  return v133;
}

- (id)p_hiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_combinedHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v6)
  {
    v11 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    v16 = objc_msgSend_p_baseHiddenIndexes(self, v12, v13, v14, v15);
    if (objc_msgSend_areMapsStale(v11, v17, v18, v19, v20))
    {
      v25 = 0;
    }

    else
    {
      if (objc_msgSend_count(v16, v21, v22, v23, v24))
      {
        if (objc_msgSend_forRows(self, v26, v27, v28, v29))
        {
          objc_msgSend_viewRowIndexesForBaseRowIndexes_(v11, v30, v16, v31, v32);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v11, v30, v16, v31, v32);
        }
        v33 = ;
        v25 = objc_msgSend_mutableCopy(v33, v34, v35, v36, v37);
      }

      else
      {
        v25 = 0;
      }

      v38 = objc_msgSend_p_summaryHiddenIndexes(self, v26, v27, v28, v29);
      if (objc_msgSend_count(v38, v39, v40, v41, v42))
      {
        if (v25)
        {
          objc_msgSend_addIndexes_(v25, v43, v38, v45, v46);
        }

        else
        {
          v25 = objc_msgSend_mutableCopy(v38, v43, v44, v45, v46);
        }
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_combinedHiddenIndexes, v25);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v6 = v25;
  }

  return v6;
}

- (id)p_filteredIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_filteredIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v6)
  {
    v11 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    v16 = v11;
    if (self->_baseFilteredIndexes && (objc_msgSend_areMapsStale(v11, v12, v13, v14, v15) & 1) == 0)
    {
      v22 = objc_msgSend_forRows(self, v17, v18, v19, v20);
      baseFilteredIndexes = self->_baseFilteredIndexes;
      if (v22)
      {
        objc_msgSend_viewRowIndexesForBaseRowIndexes_(v16, v23, baseFilteredIndexes, v24, v25);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v16, v23, baseFilteredIndexes, v24, v25);
      }
      v27 = ;
      v21 = objc_msgSend_mutableCopy(v27, v28, v29, v30, v31);

      v36 = objc_msgSend_p_summaryFilteredIndexes(self, v32, v33, v34, v35);
      if (objc_msgSend_count(v36, v37, v38, v39, v40))
      {
        if (v21)
        {
          objc_msgSend_addIndexes_(v21, v41, v36, v43, v44);
        }

        else
        {
          v21 = objc_msgSend_mutableCopy(v36, v41, v42, v43, v44);
        }
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_filteredIndexes, v21);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v21 = 0;
    }

    v6 = v21;
  }

  return v6;
}

- (id)p_summaryFilteredIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_summaryFilteredIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v6)
  {
    v15 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    if (!v15)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTHiddenStateExtent p_summaryFilteredIndexes]", v13, v14);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1298, 0, "invalid nil value for '%{public}s'", "translator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    if (objc_msgSend_areMapsStale(v15, v11, v12, v13, v14))
    {
      v31 = 0;
    }

    else
    {
      if (self->_summaryHiddenByUid.__table_.__size_)
      {
        __p = 0;
        v44 = 0;
        v45 = 0;
        for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
        {
          if ((i[2] & 2) != 0)
          {
            v42 = i[1];
            sub_221083454(&__p, &v42);
          }
        }

        if (objc_msgSend_forRows(self, v27, v28, v29, v30))
        {
          objc_msgSend_viewRowIndexesForUIDs_(v15, v33, &__p, v34, v35);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForUIDs_(v15, v33, &__p, v34, v35);
        }
        v36 = ;
        v31 = objc_msgSend_mutableCopy(v36, v37, v38, v39, v40);

        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v31 = objc_opt_new();
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_summaryFilteredIndexes, v31);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v6 = v31;
  }

  return v6;
}

- (id)p_userHiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_userHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v6)
  {
    v11 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    v16 = v11;
    if (self->_baseUserHiddenIndexes && (objc_msgSend_areMapsStale(v11, v12, v13, v14, v15) & 1) == 0)
    {
      v22 = objc_msgSend_forRows(self, v17, v18, v19, v20);
      baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
      if (v22)
      {
        objc_msgSend_viewRowIndexesForBaseRowIndexes_(v16, v23, baseUserHiddenIndexes, v24, v25);
      }

      else
      {
        objc_msgSend_viewColumnIndexesForBaseColumnIndexes_(v16, v23, baseUserHiddenIndexes, v24, v25);
      }
      v27 = ;
      v21 = objc_msgSend_mutableCopy(v27, v28, v29, v30, v31);

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_userHiddenIndexes, v21);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    else
    {
      v21 = 0;
    }

    v6 = v21;
  }

  return v6;
}

- (id)p_summaryPivotHiddenIndexes
{
  objc_msgSend_clearInvalidIndexes(self, a2, v2, v3, v4);
  pthread_mutex_lock(&self->_viewIndexesMutex);
  v6 = self->_summaryPivotHiddenIndexes;
  pthread_mutex_unlock(&self->_viewIndexesMutex);
  if (!v6)
  {
    v15 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    if (!v15)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTHiddenStateExtent p_summaryPivotHiddenIndexes]", v13, v14);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 1365, 0, "invalid nil value for '%{public}s'", "translator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    if (objc_msgSend_areMapsStale(v15, v11, v12, v13, v14))
    {
      v31 = 0;
    }

    else
    {
      if (self->_summaryHiddenByUid.__table_.__size_)
      {
        __p = 0;
        v44 = 0;
        v45 = 0;
        for (i = self->_summaryHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
        {
          if ((i[2] & 0x10) != 0)
          {
            v42 = i[1];
            sub_221083454(&__p, &v42);
          }
        }

        if (objc_msgSend_forRows(self, v27, v28, v29, v30))
        {
          objc_msgSend_viewRowIndexesForUIDs_(v15, v33, &__p, v34, v35);
        }

        else
        {
          objc_msgSend_viewColumnIndexesForUIDs_(v15, v33, &__p, v34, v35);
        }
        v36 = ;
        v31 = objc_msgSend_mutableCopy(v36, v37, v38, v39, v40);

        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }
      }

      else
      {
        v31 = objc_opt_new();
      }

      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_storeStrong(&self->_summaryPivotHiddenIndexes, v31);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }

    v6 = v31;
  }

  return v6;
}

- (BOOL)hideAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v6 = *&index._index;
  v12 = objc_msgSend_tableTranslator(self, a2, *&index._index, action, v4);
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent hideAtViewIndex:forAction:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1400, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_viewMap(v12, v8, v9, v10, v11);
  v28 = v24;
  v34 = 0;
  v35 = 0;
  if (self->_forRows)
  {
    v29 = objc_msgSend_rowUIDForRowIndex_(v24, v25, v6, v26, v27, v34, v35);
  }

  else
  {
    v29 = objc_msgSend_columnUIDForColumnIndex_(v24, v25, v6, v26, v27, v34, v35);
  }

  v34 = v29;
  v35 = v30;
  v32 = objc_msgSend_hideAtUid_forAction_(self, v30, &v34, actionCopy, v31);

  return v32;
}

- (BOOL)showAtViewIndex:(TSUViewColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v6 = *&index._index;
  v12 = objc_msgSend_tableTranslator(self, a2, *&index._index, action, v4);
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent showAtViewIndex:forAction:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1409, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_viewMap(v12, v8, v9, v10, v11);
  v28 = v24;
  v34 = 0;
  v35 = 0;
  if (self->_forRows)
  {
    v29 = objc_msgSend_rowUIDForRowIndex_(v24, v25, v6, v26, v27, v34, v35);
  }

  else
  {
    v29 = objc_msgSend_columnUIDForColumnIndex_(v24, v25, v6, v26, v27, v34, v35);
  }

  v34 = v29;
  v35 = v30;
  v32 = objc_msgSend_showAtUid_forAction_(self, v30, &v34, actionCopy, v31);

  return v32;
}

- (void)hideAtViewIndexes:(id)indexes forAction:(unsigned __int8)action
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22138BFF8;
  v5[3] = &unk_278463938;
  v5[4] = self;
  actionCopy = action;
  objc_msgSend_enumerateIndexesUsingBlock_(indexes, a2, v5, action, v4);
}

- (void)showAtViewIndexes:(id)indexes forAction:(unsigned __int8)action
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22138C088;
  v5[3] = &unk_278463938;
  v5[4] = self;
  actionCopy = action;
  objc_msgSend_enumerateIndexesUsingBlock_(indexes, a2, v5, action, v4);
}

- (BOOL)hideAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v11 = objc_msgSend_tableTranslator(self, a2, *&index._index, action, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent hideAtBaseIndex:forAction:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1430, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  self->_invalidateViewGeometry = 1;
  if (self->_forRows)
  {
    v30 = objc_msgSend_rowUIDForBaseRowIndex_(v11, v8, index._index, v9, v10);
    v31 = v23;
    v25 = objc_msgSend_hideAtUid_forAction_(self, v23, &v30, actionCopy, v24);
  }

  else
  {
    v30 = objc_msgSend_columnUIDForBaseColumnIndex_(v11, v8, LOWORD(index._index), v9, v10);
    v31 = v26;
    v25 = objc_msgSend_hideAtUid_forAction_(self, v26, &v30, actionCopy, v27);
  }

  v28 = v25;

  return v28;
}

- (BOOL)showAtBaseIndex:(TSUModelColumnOrRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  v11 = objc_msgSend_tableTranslator(self, a2, *&index._index, action, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTHiddenStateExtent showAtBaseIndex:forAction:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1444, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  self->_invalidateViewGeometry = 1;
  if (self->_forRows)
  {
    v30 = objc_msgSend_rowUIDForBaseRowIndex_(v11, v8, index._index, v9, v10);
    v31 = v23;
    v25 = objc_msgSend_showAtUid_forAction_(self, v23, &v30, actionCopy, v24);
  }

  else
  {
    v30 = objc_msgSend_columnUIDForBaseColumnIndex_(v11, v8, LOWORD(index._index), v9, v10);
    v31 = v26;
    v25 = objc_msgSend_showAtUid_forAction_(self, v26, &v30, actionCopy, v27);
  }

  v28 = v25;

  return v28;
}

- (void)clearAllFiltered
{
  __p = 0;
  v64 = 0;
  v65 = 0;
  for (i = self->_baseHiddenByUid.__table_.__first_node_.__next_; i; i = *i)
  {
    if (i[32])
    {
      v7 = (i[32] & 2) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      v62 = *(i + 1);
      sub_221083454(&__p, &v62);
    }
  }

  v8 = objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3, v4);
  if (v8 != (v64 - __p) >> 4)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent clearAllFiltered]", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1469, 0, "Expected counts to match.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  for (j = self->_summaryHiddenByUid.__table_.__first_node_.__next_; j; j = *j)
  {
    if (j[32])
    {
      v25 = (j[32] & 2) == 0;
    }

    else
    {
      v25 = 0;
    }

    if (!v25)
    {
      v62 = *(j + 1);
      sub_221083454(&__p, &v62);
    }
  }

  v26 = __p;
  v27 = v64;
  v28 = __p != v64;
  if (__p != v64)
  {
    do
    {
      v29 = sub_2210875C4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v26);
      if (v29)
      {
        v30 = *(v29 + 32);
        if ((v30 & 0xFFFFFFFD) != 0)
        {
          *&v62 = v26;
          *(sub_2213958D0(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v26) + 32) = v30 & 0xFD;
        }

        else
        {
          sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v26);
        }
      }

      v31 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v26);
      if (v31)
      {
        v32 = *(v31 + 32);
        if ((v32 & 0xFFFFFFFD) != 0)
        {
          *&v62 = v26;
          *(sub_2213958D0(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v26) + 32) = v32 & 0xFD;
        }

        else
        {
          sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v26);
        }
      }

      v26 += 2;
    }

    while (v26 != v27);
  }

  if (objc_msgSend_count(self->_baseFilteredIndexes, v9, v10, v11, v12))
  {
    objc_msgSend_removeAllIndexes(self->_baseFilteredIndexes, v33, v34, v35, v36);
    v28 = 1;
  }

  if (objc_msgSend_count(self->_summaryFilteredIndexes, v33, v34, v35, v36))
  {
    objc_msgSend_removeAllIndexes(self->_summaryFilteredIndexes, v37, v38, v39, v40);
  }

  else if (!v28)
  {
    goto LABEL_33;
  }

  self->_invalidateViewGeometry = 1;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v46 = objc_msgSend_tableModel(self, v42, v43, v44, v45);
  v61[0] = objc_msgSend_tableUID(v46, v47, v48, v49, v50);
  v61[1] = v51;
  objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v51, v61, v52, v53);
  objc_msgSend_markCellRefAsDirty_(WeakRetained, v54, &v62, v55, v56);

  objc_msgSend_verifyIndexesAreConsistent(self, v57, v58, v59, v60);
LABEL_33:
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }
}

- (void)clearAllPivotHidden
{
  if (objc_msgSend_count(self->_summaryPivotHiddenIndexes, a2, v2, v3, v4) || self->_summaryHiddenByUid.__table_.__size_)
  {
    objc_msgSend_removeAllIndexes(self->_summaryPivotHiddenIndexes, v6, v7, v8, v9);
    __p = 0;
    v39 = 0;
    v40 = 0;
    next = self->_summaryHiddenByUid.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        if (next[32])
        {
          v11 = (next[32] & 0x10) == 0;
        }

        else
        {
          v11 = 0;
        }

        if (!v11)
        {
          v37 = *(next + 1);
          sub_221083454(&__p, &v37);
        }

        next = *next;
      }

      while (next);
      v12 = __p;
      v13 = v39;
      if (__p != v39)
      {
        do
        {
          v14 = sub_2210875C4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v12);
          if (v14)
          {
            v15 = *(v14 + 32);
            if ((v15 & 0xFFFFFFEF) != 0)
            {
              *&v37 = v12;
              *(sub_2213958D0(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v12) + 32) = v15 & 0xEF;
            }

            else
            {
              sub_2211F2EF4(&self->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, v12);
            }
          }

          v12 += 2;
        }

        while (v12 != v13);
      }
    }

    self->_invalidateViewGeometry = 1;
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v21 = objc_msgSend_tableModel(self, v17, v18, v19, v20);
    v36[0] = objc_msgSend_tableUID(v21, v22, v23, v24, v25);
    v36[1] = v26;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v26, v36, v27, v28);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v29, &v37, v30, v31);

    objc_msgSend_verifyIndexesAreConsistent(self, v32, v33, v34, v35);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }
}

- (unsigned)hidingActionForViewIndex:(TSUViewColumnOrRowIndex)index
{
  v5 = *&index._index;
  if (objc_msgSend_anyHidden(self, a2, *&index._index, v3, v4))
  {
    v11 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
    v19 = objc_msgSend_viewMap(v11, v12, v13, v14, v15);
    if (!v11)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTHiddenStateExtent hidingActionForViewIndex:]", v17, v18);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 1594, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    v46 = 0;
    v47 = 0;
    if (self->_forRows)
    {
      v31 = objc_msgSend_rowUIDForRowIndex_(v19, v16, v5, v17, v18, v46, v47);
    }

    else
    {
      v31 = objc_msgSend_columnUIDForColumnIndex_(v19, v16, v5, v17, v18, v46, v47);
    }

    v46 = v31;
    v47 = v32;
    v35 = objc_msgSend_hidingActionForUid_(self, v32, &v46, v33, v34);
  }

  else
  {
    v35 = 0;
  }

  if (objc_msgSend_anyCollapsed(self, v7, v8, v9, v10))
  {
    v40 = objc_msgSend_p_collapsedIndexes(self, v36, v37, v38, v39);
    v44 = objc_msgSend_containsIndex_(v40, v41, v5, v42, v43);

    if (v44)
    {
      v35 |= 4u;
    }
  }

  return v35;
}

- (unsigned)hidingActionForBaseIndex:(TSUModelColumnOrRowIndex)index
{
  if (!objc_msgSend_anyHidden(self, a2, *&index._index, v3, v4))
  {
    return 0;
  }

  v14 = objc_msgSend_tableTranslator(self, v7, v8, v9, v10);
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTHiddenStateExtent hidingActionForBaseIndex:]", v12, v13);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 1615, 0, "Can't show/hide at an index without a TSTTableTranslator to translate to uuid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v32 = 0;
  v33 = 0;
  if (self->_forRows)
  {
    v26 = objc_msgSend_rowUIDForBaseRowIndex_(v14, v11, index._index, v12, v13, v32, v33);
  }

  else
  {
    v26 = objc_msgSend_columnUIDForBaseColumnIndex_(v14, v11, LOWORD(index._index), v12, v13, v32, v33);
  }

  v32 = v26;
  v33 = v27;
  v30 = objc_msgSend_hidingActionForUid_(self, v27, &v32, v28, v29);

  return v30;
}

- (id)indexesOfHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length, v3))
  {
    v11 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9, v10);
    if (objc_msgSend_anyHidden(self, v12, v13, v14, v15))
    {
      v20 = objc_msgSend_p_hiddenIndexes(self, v16, v17, v18, v19);
      objc_msgSend_addIndexes_(v11, v21, v20, v22, v23);
    }

    v24 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v16, v11, location, length);
LABEL_7:
    v30 = v24;

    if (v30)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (objc_msgSend_anyHidden(self, v7, v8, v9, v10))
  {
    v11 = objc_msgSend_p_hiddenIndexes(self, v25, v26, v27, v28);
    v24 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v29, v11, location, length);
    goto LABEL_7;
  }

LABEL_8:
  v30 = objc_opt_new();
LABEL_9:

  return v30;
}

- (id)indexesOfHiddenInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (!objc_msgSend_anyHidden(self, a2, range.location, range.length, v3) || (objc_msgSend_p_baseHiddenIndexes(self, v7, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v12, v11, location, length), v13 = objc_claimAutoreleasedReturnValue(), v11, !v13))
  {
    v13 = objc_opt_new();
  }

  return v13;
}

- (id)indexesOfUserHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_msgSend_p_userHiddenIndexes(self, a2, range.location, range.length, v3);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = objc_msgSend_p_userHiddenIndexes(self, v13, v14, v15, v16);
    v19 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v18, v17, location, length);
  }

  else
  {
    v19 = objc_opt_new();
  }

  return v19;
}

- (id)indexesOfFilteredInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_msgSend_p_filteredIndexes(self, a2, range.location, range.length, v3);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = objc_msgSend_p_filteredIndexes(self, v13, v14, v15, v16);
    v19 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v18, v17, location, length);
  }

  else
  {
    v19 = objc_opt_new();
  }

  return v19;
}

- (id)indexesOfCollapsedInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length, v3))
  {
    v11 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9, v10);
    v13 = objc_msgSend_mutableIndexSetByIntersecting_withRange_(TSTHiddenStateExtent, v12, v11, location, length);
  }

  else
  {
    v13 = objc_opt_new();
  }

  return v13;
}

- (id)indexesOfVisibleInRange:(_NSRange)range
{
  v5 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length, v3);
  v9 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self, v6, v5, v7, v8);

  return v9;
}

- (id)indexesOfUserVisibleInRange:(_NSRange)range
{
  v5 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], a2, range.location, range.length, v3);
  v10 = objc_msgSend_p_userHiddenIndexes(self, v6, v7, v8, v9);
  if (objc_msgSend_count(v10, v11, v12, v13, v14))
  {
    objc_msgSend_removeIndexes_(v5, v15, v10, v16, v17);
  }

  return v5;
}

- (id)indexesOfVisibleIndexesInIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (((objc_msgSend_anyHidden(self, v5, v6, v7, v8) & 1) != 0 || objc_msgSend_anyCollapsed(self, v9, v10, v11, v12)) && objc_msgSend_count(indexesCopy, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_mutableCopy(indexesCopy, v13, v14, v15, v16);
    v22 = objc_msgSend_p_hiddenIndexes(self, v18, v19, v20, v21);
    if (objc_msgSend_count(v22, v23, v24, v25, v26))
    {
      objc_msgSend_removeIndexes_(v17, v27, v22, v29, v30);
    }

    if (objc_msgSend_anyCollapsed(self, v27, v28, v29, v30))
    {
      v35 = objc_msgSend_p_collapsedIndexes(self, v31, v32, v33, v34);
      objc_msgSend_removeIndexes_(v17, v36, v35, v37, v38);
    }
  }

  else
  {
    v17 = indexesCopy;
  }

  return v17;
}

- (unsigned)numberOfHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyCollapsed(self, a2, range.location, range.length, v3))
  {
    v11 = objc_msgSend_anyHidden(self, v7, v8, v9, v10);
    v16 = objc_msgSend_p_collapsedIndexes(self, v12, v13, v14, v15);
    v21 = v16;
    if (v11)
    {
      v22 = objc_msgSend_p_hiddenIndexes(self, v17, v18, v19, v20);
      objc_msgSend_addIndexes_(v21, v23, v22, v24, v25);

      v28 = objc_msgSend_countOfIndexesInRange_(v21, v26, location, length, v27);
    }

    else
    {
      v28 = objc_msgSend_countOfIndexesInRange_(v16, v17, location, length, v20);
    }
  }

  else
  {
    v21 = objc_msgSend_p_hiddenIndexes(self, v7, v8, v9, v10);
    v28 = objc_msgSend_countOfIndexesInRange_(v21, v29, location, length, v30);
  }

  v31 = v28;

  return v31;
}

- (unsigned)numberOfHiddenInBaseRange:(_NSRange)range
{
  v4 = objc_msgSend_indexesOfHiddenInBaseRange_(self, a2, range.location, range.length, v3);
  v9 = objc_msgSend_count(v4, v5, v6, v7, v8);

  return v9;
}

- (unsigned)numberOfUserHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_msgSend_p_userHiddenIndexes(self, a2, range.location, range.length, v3);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_p_userHiddenIndexes(self, v12, v13, v14, v15);
    v19 = objc_msgSend_countOfIndexesInRange_(v16, v17, location, length, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)anyHiddenInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (objc_msgSend_anyHidden(self, a2, range.location, range.length, v3))
  {
    v11 = objc_msgSend_p_hiddenIndexes(self, v7, v8, v9, v10);
    if (objc_msgSend_count(v11, v12, v13, v14, v15))
    {
      v18 = objc_msgSend_intersectsIndexesInRange_(v11, v16, location, length, v17);

      if (v18)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  if (!objc_msgSend_anyCollapsed(self, v7, v8, v9, v10))
  {
    return 0;
  }

  v24 = objc_msgSend_p_collapsedIndexes(self, v20, v21, v22, v23);
  v19 = objc_msgSend_intersectsIndexesInRange_(v24, v25, location, length, v26);

  return v19;
}

- (BOOL)anyHiddenInRange:(_NSRange)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  length = range.length;
  location = range.location;
  if (!objc_msgSend_anyHidden(self, a2, range.location, range.length, action))
  {
    return 0;
  }

  if (actionCopy <= 1)
  {
    if (!actionCopy)
    {
      return 0;
    }

    if (actionCopy == 1)
    {
LABEL_6:
      v12 = objc_msgSend_p_userHiddenIndexes(self, v8, v9, v10, v11);
      if (objc_msgSend_count(v12, v13, v14, v15, v16))
      {
        v21 = objc_msgSend_p_userHiddenIndexes(self, v17, v18, v19, v20);
        v24 = objc_msgSend_intersectsIndexesInRange_(v21, v22, location, length, v23);
LABEL_15:
        v37 = v24;

LABEL_32:
        return v37;
      }

      goto LABEL_16;
    }
  }

  else
  {
    switch(actionCopy)
    {
      case 2:
        v12 = objc_msgSend_p_filteredIndexes(self, v8, v9, v10, v11);
        if (objc_msgSend_count(v12, v38, v39, v40, v41))
        {
          v21 = objc_msgSend_p_filteredIndexes(self, v42, v43, v44, v45);
          v24 = objc_msgSend_intersectsIndexesInRange_(v21, v46, location, length, v47);
          goto LABEL_15;
        }

LABEL_16:
        v37 = 0;
        goto LABEL_32;
      case 4:
        if (objc_msgSend_anyCollapsed(self, v8, v9, v10, v11))
        {
          goto LABEL_31;
        }

        return 0;
      case 8:
        goto LABEL_6;
    }
  }

  if ((actionCopy & 9) != 0)
  {
    v25 = objc_msgSend_p_userHiddenIndexes(self, v8, v9, v10, v11);
    if (objc_msgSend_count(v25, v26, v27, v28, v29))
    {
      v34 = objc_msgSend_p_userHiddenIndexes(self, v30, v31, v32, v33);
      v37 = objc_msgSend_intersectsIndexesInRange_(v34, v35, location, length, v36);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if ((actionCopy & 2) != 0 && (v37 & 1) == 0)
  {
    v52 = objc_msgSend_p_filteredIndexes(self, v8, v9, v10, v11);
    if (objc_msgSend_count(v52, v53, v54, v55, v56))
    {
      v61 = objc_msgSend_p_filteredIndexes(self, v57, v58, v59, v60);
      v37 = objc_msgSend_intersectsIndexesInRange_(v61, v62, location, length, v63);
    }

    else
    {
      v37 = 0;
    }
  }

  if ((actionCopy & 4) != 0 && (v37 & 1) == 0)
  {
    if (objc_msgSend_anyCollapsed(self, v8, v9, v10, v11))
    {
LABEL_31:
      v12 = objc_msgSend_p_collapsedIndexes(self, v48, v49, v50, v51);
      v37 = objc_msgSend_intersectsIndexesInRange_(v12, v64, location, length, v65);
      goto LABEL_32;
    }

    return 0;
  }

  return v37;
}

- (BOOL)hasHiddenAtIndex:(unsigned int)index
{
  v7 = objc_msgSend_p_hiddenIndexes(self, a2, *&index, v3, v4);
  if (objc_msgSend_count(v7, v8, v9, v10, v11) && (objc_msgSend_containsIndex_(v7, v12, index, v14, v15) & 1) != 0)
  {
    v16 = 1;
  }

  else if (objc_msgSend_anyCollapsed(self, v12, v13, v14, v15))
  {
    v21 = objc_msgSend_p_collapsedIndexes(self, v17, v18, v19, v20);
    v16 = objc_msgSend_containsIndex_(v21, v22, index, v23, v24);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unsigned)findFirstVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end
{
  if (objc_msgSend_anyCollapsed(self, a2, *&begin, *&end, v4))
  {
    v12 = objc_msgSend_p_collapsedIndexes(self, v8, v9, v10, v11);
    v17 = objc_msgSend_p_hiddenIndexes(self, v13, v14, v15, v16);
    if (objc_msgSend_count(v17, v18, v19, v20, v21))
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_orIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, v12, v17, begin, end);
    }

    else
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, v12, begin, end);
    }

    IndexNotInIndexSet_beginRange_pastEndRange = IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange;
  }

  else
  {
    v12 = objc_msgSend_p_hiddenIndexes(self, v8, v9, v10, v11);
    IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_firstIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v24, v12, begin, end);
  }

  if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return IndexNotInIndexSet_beginRange_pastEndRange;
  }
}

- (unsigned)findLastVisibleIndexInBegin:(unsigned int)begin afterEnd:(unsigned int)end
{
  if (objc_msgSend_anyCollapsed(self, a2, *&begin, *&end, v4))
  {
    v12 = objc_msgSend_p_collapsedIndexes(self, v8, v9, v10, v11);
    v17 = objc_msgSend_p_hiddenIndexes(self, v13, v14, v15, v16);
    if (objc_msgSend_count(v17, v18, v19, v20, v21))
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_orIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, v12, v17, begin, end);
    }

    else
    {
      IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v22, v12, begin, end);
    }

    IndexNotInIndexSet_beginRange_pastEndRange = IndexNotInIndexSet_orIndexSet_beginRange_pastEndRange;
  }

  else
  {
    v12 = objc_msgSend_p_hiddenIndexes(self, v8, v9, v10, v11);
    IndexNotInIndexSet_beginRange_pastEndRange = objc_msgSend_lastIndexNotInIndexSet_beginRange_pastEndRange_(TSTHiddenStateExtent, v24, v12, begin, end);
  }

  if (IndexNotInIndexSet_beginRange_pastEndRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return IndexNotInIndexSet_beginRange_pastEndRange;
  }
}

- (unsigned)indexOfVisibleAfterIndex:(unsigned int)index
{
  v11 = objc_msgSend_tableTranslator(self, a2, *&index, v3, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent indexOfVisibleAfterIndex:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1876, 0, "Can't use this method without a TSTTableTranslator to provide tableSize");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v29.origin = objc_msgSend_range(v11, v7, v8, v9, v10);
  v29.size = v23;
  if (self->_forRows)
  {
    v24 = TSUCellRect::lastRow(&v29);
  }

  else
  {
    v24 = TSUCellRect::lastColumn(&v29);
  }

  if (v24 <= index)
  {
    FirstVisibleIndexInBegin_afterEnd = 0x7FFFFFFF;
  }

  else
  {
    FirstVisibleIndexInBegin_afterEnd = objc_msgSend_findFirstVisibleIndexInBegin_afterEnd_(self, v25, index + 1, v24 + 1, v26, *&v29.origin, *&v29.size);
  }

  return FirstVisibleIndexInBegin_afterEnd;
}

- (unsigned)indexOfVisibleAfterAndIncludingIndex:(unsigned int)index
{
  v5 = *&index;
  v11 = objc_msgSend_tableTranslator(self, a2, *&index, v3, v4);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTHiddenStateExtent indexOfVisibleAfterAndIncludingIndex:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 1891, 0, "Can't use this method without a TSTTableTranslator to provide tableSize");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v29.origin = objc_msgSend_range(v11, v7, v8, v9, v10);
  v29.size = v23;
  if (self->_forRows)
  {
    v24 = TSUCellRect::lastRow(&v29);
  }

  else
  {
    v24 = TSUCellRect::lastColumn(&v29);
  }

  if (v24 >= v5)
  {
    FirstVisibleIndexInBegin_afterEnd = objc_msgSend_findFirstVisibleIndexInBegin_afterEnd_(self, v25, v5, v24 + 1, v26, *&v29.origin, *&v29.size);
  }

  else
  {
    FirstVisibleIndexInBegin_afterEnd = 0x7FFFFFFF;
  }

  return FirstVisibleIndexInBegin_afterEnd;
}

- (void)insertBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseUserHiddenIndexes, a2, range.location, range.length, v3);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseFilteredIndexes, v7, location, length, v8);
  self->_invalidateViewGeometry = 1;

  objc_msgSend_clearAllCachedRowIndexes(self, v9, v10, v11, v12);
}

- (void)deleteBaseRange:(_NSRange)range withUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  v8 = -range.length;
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseUserHiddenIndexes, a2, range.location + range.length, -range.length, uids);
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_baseFilteredIndexes, v9, location + length, v8, v10);
  v15 = *uids;
  v16 = *(uids + 1);
  while (v15 != v16)
  {
    sub_2211F2EF4(&self->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, v15);
    v15 += 2;
  }

  self->_invalidateViewGeometry = 1;

  objc_msgSend_clearAllCachedRowIndexes(self, v11, v12, v13, v14);
}

- (void)moveBaseRangeFrom:(_NSRange)from toIndex:(TSUModelColumnOrRowIndex)index
{
  length = from.length;
  location = from.location;
  index = index._index;
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_baseUserHiddenIndexes, a2, from.location, from.length, index._index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_baseFilteredIndexes, v8, location, length, index);
  self->_invalidateViewGeometry = 1;
  objc_msgSend_clearAllCachedRowIndexes(self, v9, v10, v11, v12);
  objc_msgSend_dirtyFilterStateForHeaders(self, v13, v14, v15, v16);
  objc_msgSend_dirtyFilterStateForFooters(self, v17, v18, v19, v20);

  objc_msgSend_dirtyFilterStateForRowRange_(self, v21, index, length, v22);
}

- (void)moveViewRangeOnlyFrom:(_NSRange)from toIndex:(TSUViewColumnOrRowIndex)index
{
  length = from.length;
  location = from.location;
  index = index._index;
  pthread_mutex_lock(&self->_viewIndexesMutex);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_summaryFilteredIndexes, v8, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_summaryPivotHiddenIndexes, v9, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_userHiddenIndexes, v10, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_filteredIndexes, v11, location, length, index);
  objc_msgSend_tsu_moveIndexesInRange_toOffset_(self->_combinedHiddenIndexes, v12, location, length, index);

  pthread_mutex_unlock(&self->_viewIndexesMutex);
}

+ (void)swapIndexesWithIndexSet:(id)set index:(unint64_t)index withIndex:(unint64_t)withIndex
{
  setCopy = set;
  if (setCopy)
  {
    v10 = objc_msgSend_containsIndex_(setCopy, v7, index, v8, v9);
    v17 = objc_msgSend_containsIndex_(setCopy, v11, withIndex, v12, v13);
    if (v10 != v17)
    {
      objc_msgSend_removeIndex_(setCopy, v14, index, v15, v16);
      objc_msgSend_removeIndex_(setCopy, v18, withIndex, v19, v20);
      if (v10)
      {
        objc_msgSend_addIndex_(setCopy, v21, withIndex, v22, v23);
      }

      if (v17)
      {
        objc_msgSend_addIndex_(setCopy, v21, index, v22, v23);
      }
    }
  }
}

- (void)swapBaseIndex:(TSUModelColumnOrRowIndex)index withIndex:(TSUModelColumnOrRowIndex)withIndex
{
  index = index._index;
  v6 = withIndex._index;
  objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, a2, self->_baseUserHiddenIndexes, index._index, withIndex._index);
  objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v7, self->_baseFilteredIndexes, index, v6);
  v11 = objc_msgSend_p_viewIndexForBaseIndex_(self, v8, index, v9, v10);
  v15 = objc_msgSend_p_viewIndexForBaseIndex_(self, v12, v6, v13, v14);
  if (v11 != 0x7FFFFFFF)
  {
    v20 = v15;
    if (v15 != 0x7FFFFFFF)
    {
      pthread_mutex_lock(&self->_viewIndexesMutex);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v21, self->_userHiddenIndexes, v11, v20);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v22, self->_filteredIndexes, v11, v20);
      objc_msgSend_swapIndexesWithIndexSet_index_withIndex_(TSTHiddenStateExtent, v23, self->_combinedHiddenIndexes, v11, v20);
      pthread_mutex_unlock(&self->_viewIndexesMutex);
    }
  }

  objc_msgSend_clearAllCachedRowIndexes(self, v16, v17, v18, v19);
}

- (id)p_baseHiddenIndexes
{
  p_baseFilteredIndexes = &self->_baseFilteredIndexes;
  v7 = objc_msgSend_count(self->_baseFilteredIndexes, a2, v2, v3, v4);
  baseUserHiddenIndexes = self->_baseUserHiddenIndexes;
  p_baseUserHiddenIndexes = &self->_baseUserHiddenIndexes;
  v14 = objc_msgSend_count(baseUserHiddenIndexes, v10, v11, v12, v13);
  if (v7)
  {
    v19 = v14 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v7 | v14)
    {
      if (v7)
      {
        v24 = p_baseFilteredIndexes;
      }

      else
      {
        v24 = p_baseUserHiddenIndexes;
      }

      v20 = *v24;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = objc_msgSend_mutableCopy(*p_baseFilteredIndexes, v15, v16, v17, v18);
    objc_msgSend_addIndexes_(v20, v21, *p_baseUserHiddenIndexes, v22, v23);
  }

  return v20;
}

- (id)p_summaryHiddenIndexes
{
  v6 = objc_msgSend_p_summaryFilteredIndexes(self, a2, v2, v3, v4);
  v11 = objc_msgSend_p_summaryPivotHiddenIndexes(self, v7, v8, v9, v10);
  v16 = objc_msgSend_count(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_count(v11, v17, v18, v19, v20);
  if (v16 && v21)
  {
    v26 = objc_msgSend_mutableCopy(v6, v22, v23, v24, v25);
    objc_msgSend_addIndexes_(v26, v27, v11, v28, v29);
  }

  else if (v16 | v21)
  {
    if (v16)
    {
      v30 = objc_msgSend_mutableCopy(v6, v22, v23, v24, v25);
    }

    else
    {
      v30 = objc_msgSend_mutableCopy(v11, v22, v23, v24, v25);
    }

    v26 = v30;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)mutableUserHiddenIndexes
{
  v10 = objc_msgSend_p_userHiddenIndexes(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_p_userHiddenIndexes(self, v6, v7, v8, v9);
    v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

- (id)mutableFilteredIndexes
{
  v10 = objc_msgSend_p_filteredIndexes(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_p_filteredIndexes(self, v6, v7, v8, v9);
    v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_opt_new();
  }

  return v16;
}

- (id)hiddenOrCollapsedIndexes
{
  v6 = objc_msgSend_p_hiddenIndexes(self, a2, v2, v3, v4);
  if (objc_msgSend_anyCollapsed(self, v7, v8, v9, v10))
  {
    if (objc_msgSend_count(v6, v11, v12, v13, v14))
    {
      v19 = objc_msgSend_mutableCopy(v6, v15, v16, v17, v18);
      v24 = objc_msgSend_p_collapsedIndexes(self, v20, v21, v22, v23);
      objc_msgSend_addIndexes_(v19, v25, v24, v26, v27);
    }

    else
    {
      v19 = objc_msgSend_p_collapsedIndexes(self, v15, v16, v17, v18);
    }

    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v28 = v19;
    goto LABEL_9;
  }

  v19 = v6;
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v28 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v11, v12, v13, v14);
LABEL_9:
  v29 = v28;

  return v29;
}

- (id)mutablePivotHiddenIndexes
{
  v5 = objc_msgSend_p_summaryPivotHiddenIndexes(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_mutableCopy(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  return v12;
}

- (TSTHiddenStateExtent)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner
{
  unarchiverCopy = unarchiver;
  obj = owner;
  v12 = objc_msgSend_initWithHiddenStatesOwner_forRows_(self, v9, obj, *(archive + 44) == 1, v10);
  if (v12)
  {
    if (*(archive + 18))
    {
      v13 = *(archive + 18);
    }

    else
    {
      v13 = MEMORY[0x277D809E0];
    }

    v12->_hiddenStateExtentUid._lower = TSKUIDStruct::loadFromMessage(v13, v11);
    v12->_hiddenStateExtentUid._upper = v14;
    v109 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v14, v15, v16, v17);
    v18 = *(archive + 14);
    if (v18 < 1)
    {
      thresholdCellValues = v12->_thresholdCellValues;
      v12->_thresholdCellValues = 0;
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277CBEB18]);
      v23 = objc_msgSend_initWithCapacity_(v19, v20, 8, v21, v22);
      v24 = v12->_thresholdCellValues;
      v12->_thresholdCellValues = v23;

      v27 = 8;
      do
      {
        v28 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v25, *(*(archive + 8) + v27), v109, v26);
        objc_msgSend_addObject_(v12->_thresholdCellValues, v29, v28, v30, v31);

        v27 += 8;
        --v18;
      }

      while (v18);
    }

    v12->_needsToUpdateFilterSetForImport = *(archive + 180);
    v33 = *(archive + 8);
    if (v33 >= 1)
    {
      v34 = 8;
      do
      {
        v35 = *(*(archive + 5) + v34);
        *&v116 = 0;
        v116._singleRange._begin = 0;
        if (*(v35 + 24))
        {
          v36 = *(v35 + 24);
        }

        else
        {
          v36 = MEMORY[0x277D809E0];
        }

        *&v116 = TSKUIDStruct::loadFromMessage(v36, v25);
        v116._singleRange._begin = v25;
        v37 = *(v35 + 16);
        if ((v37 & 2) != 0)
        {
          v38 = *(v35 + 32);
          if ((v37 & 4) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v38 = 0;
          if ((v37 & 4) == 0)
          {
            goto LABEL_21;
          }
        }

        if (*(v35 + 33))
        {
          v39 = v38 | 2;
LABEL_23:
          v113._lower = &v116;
          *(sub_2213958D0(&v12->_baseHiddenByUid.__table_.__bucket_list_.__ptr_, &v116) + 32) = v39;
          goto LABEL_24;
        }

LABEL_21:
        if (v38)
        {
          v39 = 1;
          goto LABEL_23;
        }

LABEL_24:
        v34 += 8;
        --v33;
      }

      while (v33);
    }

    v40 = *(archive + 32);
    v108 = v12;
    if (v40 >= 1)
    {
      v41 = 8;
      while (1)
      {
        v42 = *(*(archive + 17) + v41);
        *&v116 = 0;
        v116._singleRange._begin = 0;
        if (*(v42 + 24))
        {
          v43 = *(v42 + 24);
        }

        else
        {
          v43 = MEMORY[0x277D809E0];
        }

        *&v116 = TSKUIDStruct::loadFromMessage(v43, v25);
        v116._singleRange._begin = v25;
        v44 = *(v42 + 16);
        if ((v44 & 2) != 0)
        {
          v45 = *(v42 + 32);
          if ((v44 & 4) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v45 = 0;
          if ((v44 & 4) == 0)
          {
            goto LABEL_36;
          }
        }

        if (*(v42 + 33))
        {
          v45 |= 2u;
        }

LABEL_36:
        if (v44 & 8) != 0 && (*(v42 + 34))
        {
          LOBYTE(v45) = v45 | 0x10;
LABEL_40:
          v113._lower = &v116;
          *(sub_2213958D0(&v12->_summaryHiddenByUid.__table_.__bucket_list_.__ptr_, &v116) + 32) = v45;
          goto LABEL_41;
        }

        if (v45)
        {
          goto LABEL_40;
        }

LABEL_41:
        v41 += 8;
        if (!--v40)
        {
          goto LABEL_47;
        }
      }
    }

    v46 = *(archive + 4);
    if ((v46 & 4) != 0)
    {
      sub_22126A778(*(archive + 20), &v116);
      v47 = TSUIndexSet::asNSIndexSet(&v116);
      v52 = objc_msgSend_mutableCopy(v47, v48, v49, v50, v51);
      summaryPivotHiddenIndexes = v12->_summaryPivotHiddenIndexes;
      v12->_summaryPivotHiddenIndexes = v52;

      v12->_needsSummaryUidUpgrade = 1;
      TSUIndexSet::~TSUIndexSet(&v116);
      v46 = *(archive + 4);
    }

    if ((v46 & 8) != 0)
    {
      sub_22126A778(*(archive + 21), &v116);
      v54 = TSUIndexSet::asNSIndexSet(&v116);
      v59 = objc_msgSend_mutableCopy(v54, v55, v56, v57, v58);
      summaryFilteredIndexes = v12->_summaryFilteredIndexes;
      v12->_summaryFilteredIndexes = v59;

      v12->_needsSummaryUidUpgrade = 1;
      TSUIndexSet::~TSUIndexSet(&v116);
    }

LABEL_47:
    v61 = *(archive + 20);
    if (v61 >= 1)
    {
      v62 = objc_opt_new();
      collapsedGroupUids = v12->_collapsedGroupUids;
      v12->_collapsedGroupUids = v62;

      v65 = 8;
      do
      {
        v66 = TSKUIDStruct::loadFromMessage(*(*(archive + 11) + v65), v64);
        objc_msgSend_addUUID_(v12->_collapsedGroupUids, v67, v66, v67, v68);
        v65 += 8;
        --v61;
      }

      while (v61);
    }

    if ((*(archive + 16) & 2) != 0)
    {
      v69 = *(archive + 19);
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = sub_22138EAC0;
      v114[3] = &unk_27845E018;
      v115 = v12;
      v70 = unarchiverCopy;
      v71 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v72, v69, v71, 0, v114);
    }

    v104 = unarchiverCopy;
    v107 = *(archive + 26);
    if (v107 >= 1)
    {
      v73 = objc_opt_new();
      uniqueValuesByColumnUid = v12->_uniqueValuesByColumnUid;
      v12->_uniqueValuesByColumnUid = v73;

      v76 = 0;
      archiveCopy = archive;
      do
      {
        v77 = *(*(archive + 14) + 8 * v76 + 8);
        v113._lower = 0;
        v113._upper = 0;
        if (*(v77 + 48))
        {
          v78 = *(v77 + 48);
        }

        else
        {
          v78 = MEMORY[0x277D809E0];
        }

        v113._lower = TSKUIDStruct::loadFromMessage(v78, v75);
        v113._upper = v79;
        v111 = TSKUIDStruct::NSUUIDValue(&v113);
        v110 = objc_opt_new();
        v87 = objc_msgSend_uniqueValueToRowUids(v110, v80, v81, v82, v83);
        v88 = *(v77 + 32);
        if (v88 >= 1)
        {
          for (i = 0; i != v88; ++i)
          {
            v90 = *(*(v77 + 40) + 8 * i + 8);
            v92 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v84, *(v90 + 48) & 0xFFFFFFFFFFFFFFFELL, v85, v86, v104);
            if (v92)
            {
              memset(&v116, 0, 24);
              v93 = *(v90 + 32);
              if (v93 >= 1)
              {
                v94 = 8;
                do
                {
                  v112 = 0uLL;
                  *&v112 = TSKUIDStruct::loadFromMessage(*(*(v90 + 40) + v94), v91);
                  *(&v112 + 1) = v95;
                  sub_221083454(&v116, &v112);
                  v94 += 8;
                  --v93;
                }

                while (v93);
              }

              v96 = [TSCEMutableUIDSet alloc];
              v100 = objc_msgSend_initWithUUIDVector_(v96, v97, &v116, v98, v99);
              objc_msgSend_setObject_forKey_(v87, v101, v100, v92, v102);

              if (*&v116)
              {
                v116._singleRange._begin = v116;
                operator delete(*&v116);
              }
            }
          }
        }

        v12 = v108;
        objc_msgSend_setObject_forKey_(v108->_uniqueValuesByColumnUid, v84, v110, v111, v86, v104);
        sub_2210C2B00(&v108->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, &v113);

        ++v76;
        archive = archiveCopy;
      }

      while (v76 != v107);
    }

    objc_storeWeak(&v12->_hiddenStatesOwner, obj);

    unarchiverCopy = v104;
  }

  return v12;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v161 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v6 = *(archive + 18);
  if (!v6)
  {
    v7 = *(archive + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0360](v7);
    *(archive + 18) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_hiddenStateExtentUid, v6);
  forRows = self->_forRows;
  *(archive + 4) |= 0x10u;
  *(archive + 44) = forRows;
  v17 = objc_msgSend_count(self->_thresholdCellValues, v9, v10, v11, v12);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = *(archive + 8);
      if (!v19)
      {
        goto LABEL_12;
      }

      v20 = *(archive + 14);
      v21 = *v19;
      if (v20 >= *v19)
      {
        break;
      }

      *(archive + 14) = v20 + 1;
      v22 = *&v19[2 * v20 + 2];
LABEL_14:
      v25 = objc_msgSend_objectAtIndex_(self->_thresholdCellValues, v13, v18, v15, v16, archiverCopy);
      objc_msgSend_encodeCellValueToArchive_(v25, v26, v22, v27, v28);

      if (v17 == ++v18)
      {
        goto LABEL_15;
      }
    }

    if (v21 == *(archive + 15))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
      v19 = *(archive + 8);
      v21 = *v19;
    }

    *v19 = v21 + 1;
    v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(archive + 6));
    v23 = *(archive + 14);
    v24 = *(archive + 8) + 8 * v23;
    *(archive + 14) = v23 + 1;
    *(v24 + 8) = v22;
    goto LABEL_14;
  }

LABEL_15:
  needsToUpdateFilterSetForImport = self->_needsToUpdateFilterSetForImport;
  v30 = *(archive + 4);
  *(archive + 4) = v30 | 0x20;
  *(archive + 180) = needsToUpdateFilterSetForImport;
  filterSet = self->_filterSet;
  if (filterSet)
  {
    *(archive + 4) = v30 | 0x22;
    v32 = *(archive + 19);
    if (!v32)
    {
      v33 = *(archive + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x223DA0390](v33);
      *(archive + 19) = v32;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v13, filterSet, v32, v16, archiverCopy);
  }

  archiveCopy = archive;
  selfCopy = self;
  next = self->_baseHiddenByUid.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v36 = next[32];
      if ((v36 & 0xEB) != 0)
      {
        break;
      }

LABEL_38:
      next = *next;
      if (!next)
      {
        goto LABEL_39;
      }
    }

    v37 = archiveCopy[5];
    if (!v37)
    {
      goto LABEL_28;
    }

    v38 = *(archiveCopy + 8);
    v39 = *v37;
    if (v38 < *v37)
    {
      *(archiveCopy + 8) = v38 + 1;
      v40 = *&v37[2 * v38 + 2];
LABEL_30:
      *&__p = *(next + 1);
      *(v40 + 16) |= 1u;
      v43 = *(v40 + 24);
      if (!v43)
      {
        v44 = *(v40 + 8);
        if (v44)
        {
          v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
        }

        v43 = MEMORY[0x223DA0360](v44);
        *(v40 + 24) = v43;
      }

      TSKUIDStruct::saveToMessage(&__p, v43);
      if ((v36 & 9) != 0)
      {
        *(v40 + 16) |= 2u;
        *(v40 + 32) = 1;
      }

      if ((v36 & 2) != 0)
      {
        *(v40 + 16) |= 4u;
        *(v40 + 33) = 1;
      }

      goto LABEL_38;
    }

    if (v39 == *(archiveCopy + 9))
    {
LABEL_28:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 3));
      v37 = archiveCopy[5];
      v39 = *v37;
    }

    *v37 = v39 + 1;
    v40 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive_RowOrColumnState>(archiveCopy[3]);
    v41 = *(archiveCopy + 8);
    v42 = archiveCopy[5] + 8 * v41;
    *(archiveCopy + 8) = v41 + 1;
    *(v42 + 8) = v40;
    goto LABEL_30;
  }

LABEL_39:
  p_isa = &selfCopy->super.isa;
  v46 = selfCopy->_summaryHiddenByUid.__table_.__first_node_.__next_;
  if (v46)
  {
    while (1)
    {
      v47 = v46[32];
      if (v47)
      {
        break;
      }

LABEL_58:
      v46 = *v46;
      if (!v46)
      {
        goto LABEL_59;
      }
    }

    v48 = archiveCopy[17];
    if (!v48)
    {
      goto LABEL_46;
    }

    v49 = *(archiveCopy + 32);
    v50 = *v48;
    if (v49 < *v48)
    {
      *(archiveCopy + 32) = v49 + 1;
      v51 = *&v48[2 * v49 + 2];
LABEL_48:
      *&__p = *(v46 + 1);
      *(v51 + 16) |= 1u;
      v54 = *(v51 + 24);
      if (!v54)
      {
        v55 = *(v51 + 8);
        if (v55)
        {
          v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
        }

        v54 = MEMORY[0x223DA0360](v55);
        *(v51 + 24) = v54;
      }

      TSKUIDStruct::saveToMessage(&__p, v54);
      if ((v47 & 9) != 0)
      {
        *(v51 + 16) |= 2u;
        *(v51 + 32) = 1;
      }

      if ((v47 & 2) != 0)
      {
        *(v51 + 16) |= 4u;
        *(v51 + 33) = 1;
      }

      if ((v47 & 0x10) != 0)
      {
        *(v51 + 16) |= 8u;
        *(v51 + 34) = 1;
      }

      goto LABEL_58;
    }

    if (v50 == *(archiveCopy + 33))
    {
LABEL_46:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 15));
      v48 = archiveCopy[17];
      v50 = *v48;
    }

    *v48 = v50 + 1;
    v51 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive_RowOrColumnState>(archiveCopy[15]);
    v52 = *(archiveCopy + 32);
    v53 = archiveCopy[17] + 8 * v52;
    *(archiveCopy + 32) = v52 + 1;
    *(v53 + 8) = v51;
    goto LABEL_48;
  }

LABEL_59:
  if (objc_msgSend_count(selfCopy->_collapsedGroupUids, v13, v14, v15, v16, archiverCopy))
  {
    collapsedGroupUids = selfCopy->_collapsedGroupUids;
    if (collapsedGroupUids)
    {
      objc_msgSend_uuidsAsVector(collapsedGroupUids, v56, v57, v58, v59);
      v61 = __p;
      begin = __p._singleRange._begin;
      if (*&__p != __p._singleRange._begin)
      {
        while (1)
        {
          v63 = archiveCopy[11];
          if (!v63)
          {
            goto LABEL_67;
          }

          v64 = *(archiveCopy + 20);
          v65 = *v63;
          if (v64 >= *v63)
          {
            break;
          }

          *(archiveCopy + 20) = v64 + 1;
          v66 = *&v63[2 * v64 + 2];
LABEL_69:
          TSKUIDStruct::saveToMessage(v61++, v66);
          if (v61 == begin)
          {
            v61 = __p;
            goto LABEL_71;
          }
        }

        if (v65 == *(archiveCopy + 21))
        {
LABEL_67:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 9));
          v63 = archiveCopy[11];
          v65 = *v63;
        }

        *v63 = v65 + 1;
        v66 = MEMORY[0x223DA0360](archiveCopy[9]);
        v67 = *(archiveCopy + 20);
        v68 = archiveCopy[11] + 8 * v67;
        *(archiveCopy + 20) = v67 + 1;
        *(v68 + 8) = v66;
        goto LABEL_69;
      }

LABEL_71:
      if (v61)
      {
        __p._singleRange._begin = v61;
        operator delete(v61);
      }
    }
  }

  v140 = objc_msgSend_p_summaryPivotHiddenIndexes(selfCopy, v56, v57, v58, v59);
  if (objc_msgSend_count(v140, v69, v70, v71, v72))
  {
    MEMORY[0x223D9F7A0](&__p, v140);
    *(archiveCopy + 4) |= 4u;
    if (!archiveCopy[20])
    {
      v77 = archiveCopy[1];
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      archiveCopy[20] = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v77);
    }

    sub_22126A644();
    TSUIndexSet::~TSUIndexSet(&__p);
  }

  v141 = objc_msgSend_p_summaryFilteredIndexes(selfCopy, v73, v74, v75, v76);
  if (objc_msgSend_count(v141, v78, v79, v80, v81))
  {
    MEMORY[0x223D9F7A0](&__p, v141);
    *(archiveCopy + 4) |= 8u;
    if (!archiveCopy[21])
    {
      v86 = archiveCopy[1];
      if (v86)
      {
        v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
      }

      archiveCopy[21] = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v86);
    }

    sub_22126A644();
    TSUIndexSet::~TSUIndexSet(&__p);
  }

  objc_msgSend_uniqueValuesLock(selfCopy, v82, v83, v84, v85);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = selfCopy->_uniqueValuesByColumnUid;
  v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v154, v160, 16);
  if (v144)
  {
    v143 = *v155;
    do
    {
      for (i = 0; i != v144; ++i)
      {
        if (*v155 != v143)
        {
          objc_enumerationMutation(obj);
        }

        v91 = *(*(&v154 + 1) + 8 * i);
        v92 = archiveCopy[14];
        if (!v92)
        {
          goto LABEL_95;
        }

        v93 = *(archiveCopy + 26);
        v94 = *v92;
        if (v93 < *v92)
        {
          *(archiveCopy + 26) = v93 + 1;
          v95 = *&v92[2 * v93 + 2];
          goto LABEL_97;
        }

        if (v94 == *(archiveCopy + 27))
        {
LABEL_95:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archiveCopy + 12));
          v92 = archiveCopy[14];
          v94 = *v92;
        }

        *v92 = v94 + 1;
        v95 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive>(archiveCopy[12]);
        v96 = *(archiveCopy + 26);
        v97 = archiveCopy[14] + 8 * v96;
        *(archiveCopy + 26) = v96 + 1;
        *(v97 + 8) = v95;
LABEL_97:
        v146 = objc_msgSend_objectForKey_(p_isa[35], v88, v91, v89, v90);
        v147 = objc_msgSend_uniqueValueToRowUids(v146, v98, v99, v100, v101);
        sub_221395B0C(v153, v91);
        *(v95 + 16) |= 1u;
        v102 = *(v95 + 48);
        if (!v102)
        {
          v103 = *(v95 + 8);
          if (v103)
          {
            v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
          }

          v102 = MEMORY[0x223DA0360](v103);
          *(v95 + 48) = v102;
        }

        TSP::UUIDData::saveToMessage(v153, v102);
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v104 = v147;
        v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v149, v159, 16);
        if (v109)
        {
          v110 = *v150;
          do
          {
            for (j = 0; j != v109; ++j)
            {
              if (*v150 != v110)
              {
                objc_enumerationMutation(v104);
              }

              v112 = *(*(&v149 + 1) + 8 * j);
              v113 = objc_msgSend_objectForKey_(v104, v106, v112, v107, v108);
              if (objc_msgSend_count(v113, v114, v115, v116, v117))
              {
                v122 = *(v95 + 40);
                if (!v122)
                {
                  goto LABEL_112;
                }

                v123 = *(v95 + 32);
                v124 = *v122;
                if (v123 < *v122)
                {
                  *(v95 + 32) = v123 + 1;
                  v125 = *&v122[2 * v123 + 2];
LABEL_114:
                  v128 = objc_msgSend_tsp_protobufString(v112, v118, v119, v120, v121);
                  if (v128)
                  {
                    v129 = v128;
                  }

                  else
                  {
                    v129 = "";
                  }

                  sub_22138F538(v125, v129);
                  if (v113)
                  {
                    objc_msgSend_uuidsAsVector(v113, v130, v131, v132, v133);
                  }

                  else
                  {
                    memset(&__p, 0, 24);
                  }

                  sub_22123ACF4(&__p, (v125 + 24));
                  if (*&__p)
                  {
                    __p._singleRange._begin = __p;
                    operator delete(*&__p);
                  }

                  goto LABEL_122;
                }

                if (v124 == *(v95 + 36))
                {
LABEL_112:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v95 + 24));
                  v122 = *(v95 + 40);
                  v124 = *v122;
                }

                *v122 = v124 + 1;
                v125 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive_UniqueIndexEntryArchive>(*(v95 + 24));
                v126 = *(v95 + 32);
                v127 = *(v95 + 40) + 8 * v126;
                *(v95 + 32) = v126 + 1;
                *(v127 + 8) = v125;
                goto LABEL_114;
              }

LABEL_122:
            }

            p_isa = &selfCopy->super.isa;
            v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v106, &v149, v159, 16);
          }

          while (v109);
        }
      }

      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v88, &v154, v160, 16);
    }

    while (v144);
  }

  objc_msgSend_uniqueValuesUnlock(p_isa, v134, v135, v136, v137);
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  lower = self->_hiddenStateExtentUid._lower;
  upper = self->_hiddenStateExtentUid._upper;
  v9 = d->_lower;
  v10 = d->_upper;
  v17 = objc_msgSend_ownerKind(self, v11, v12, v13, v14);
  LODWORD(v9) = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engineCopy, v15, lower, upper, self, 0, v9, v10, v17);
  objc_storeWeak(&self->_calcEngine, engineCopy);

  return v9;
}

- (void)unregisterFromCalcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v4, self->_hiddenStateExtentUid._lower, self->_hiddenStateExtentUid._upper, v5);

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = sub_221119F90(map, &self->_hiddenStateExtentUid._lower);
  if (v7)
  {
    self->_hiddenStateExtentUid = v7[2];
  }

  filterSet = self->_filterSet;
  if (filterSet)
  {
    objc_msgSend_willModify(filterSet, v8, v9, v10, v11);
    memset(&v37, 0, sizeof(v37));
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v38, engineCopy, &v37);
    v20 = objc_msgSend_ruleCount(self->_filterSet, v13, v14, v15, v16);
    if (v20)
    {
      v21 = 0;
      do
      {
        v22 = objc_msgSend_ruleAtAbsoluteIndex_(self->_filterSet, v17, v21, v18, v19);
        LOBYTE(v37.coordinate.row) = 0;
        v27 = objc_msgSend_predicate(v22, v23, v24, v25, v26, *&v37.coordinate);
        objc_msgSend_remapOwnerUIDsWithMap_rewriteContext_error_(v27, v28, map, &v38, &v37);

        ++v21;
      }

      while (v20 != v21);
    }

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    IsRegistered = objc_msgSend_ownerIsRegistered_(WeakRetained, v30, self->_hiddenStateExtentUid._lower, self->_hiddenStateExtentUid._upper, v31);

    if (IsRegistered)
    {
      objc_msgSend_filterSetUpdated(self, v33, v34, v35, v36);
    }
  }
}

- (void)p_removeAllFormulaFromCalculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_removeAllFormulasFromOwner_(WeakRetained, v4, &self->_hiddenStateExtentUid, v5, v6);

  v7 = objc_loadWeakRetained(&self->_calcEngine);
  v12 = objc_msgSend_tableModel(self, v8, v9, v10, v11);
  v23[0] = objc_msgSend_tableUID(v12, v13, v14, v15, v16);
  v23[1] = v17;
  objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v17, v23, v18, v19);
  objc_msgSend_markCellRefAsDirty_(v7, v20, v24, v21, v22);
}

- (id)precedentsForFilterSet:(id)set calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD
{
  setCopy = set;
  engineCopy = engine;
  v18 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v10, v11, v12, v13);
  for (i = 0; i < objc_msgSend_ruleCount(setCopy, v14, v15, v16, v17); ++i)
  {
    v23 = objc_msgSend_ruleAtAbsoluteIndex_(setCopy, v20, i, v21, v22);
    v32 = objc_msgSend_formula(v23, v24, v25, v26, v27);
    if (v32 && v18)
    {
      v33 = objc_msgSend_referenceSet(v18, v28, v29, v30, v31);
      v110 = *iD;
      v111 = *d;
      objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v32, v34, v33, engineCopy, &v110, 1, 1);
    }

    if (objc_msgSend_needsThreshold(v23, v28, v29, v30, v31))
    {
      v110 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v35, 2, i, v38);
      v111 = *d;
      objc_msgSend_insertCellRef_(v18, v39, &v110, v40, v41);
    }

    v42 = objc_msgSend_predicate(v23, v35, v36, v37, v38);
    v47 = objc_msgSend_predicateType(v42, v43, v44, v45, v46);

    if (v47 <= 0x34)
    {
      if (((1 << v47) & 0x10000000018000) != 0)
      {
        v52 = objc_msgSend_tableModel(self, v48, v49, v50, v51);
        v114 = objc_msgSend_tableUID(v52, v53, v54, v55, v56);
        v115 = v57;
        objc_msgSend_uniqueDistinctPrecedentForTableUID_(TSCEHauntedOwner, v57, &v114, v58, v59);

        objc_msgSend_insertCellRef_(v18, v60, &v110, v61, v62);
      }

      else if (((1 << v47) & 0xC000000000000) != 0)
      {
        v63 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v48, d->_lower, d->_upper, engineCopy);
        v68 = objc_msgSend_pivotDataModel(v63, v64, v65, v66, v67);
        v73 = v68;
        if (v68)
        {
          v114 = objc_msgSend_tableUID(v68, v69, v70, v71, v72);
          v115 = v74;
          objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v74, &v114, v75, v76);
          objc_msgSend_insertCellRef_(v18, v77, &v110, v78, v79);
        }
      }
    }

    if (objc_msgSend_needsFormulaRewriteForImport(setCopy, v48, v49, v50, v51))
    {
      if (objc_msgSend_needsFormulaRewriteForImport(v23, v80, v81, v82, v83))
      {
        v88 = objc_msgSend_tableModel(self, v84, v85, v86, v87);
        v92 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v23, v89, v88, v90, v91);

        v97 = objc_msgSend_tableModel(self, v93, v94, v95, v96);
        v102 = objc_msgSend_tableUID(v97, v98, v99, v100, v101);
        v110 = (v92 << 32) | 0x7FFFFFFF;
        v111._lower = v110;
        v111._upper = v102;
        v112 = v103;
        v113 = 0;

        objc_msgSend_insertSpanningRangeRef_(v18, v104, &v110, v105, v106);
      }
    }
  }

  return v18;
}

- (void)p_registerAllFormulasReturningCoords:(void *)coords
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v10 = objc_msgSend_filterSet(self, v6, v7, v8, v9);
    v261 = v10;
    v15 = objc_msgSend_ruleCount(v10, v11, v12, v13, v14);
    if (!v10)
    {
      goto LABEL_50;
    }

    v20 = v15;
    if (!v15)
    {
      goto LABEL_50;
    }

    v262 = objc_msgSend_tableInfo(self, v16, v17, v18, v19);
    v21 = [TSCEBulkCellChangeMinion alloc];
    v22 = objc_loadWeakRetained(&self->_calcEngine);
    v264 = objc_msgSend_initWithCalcEngine_(v21, v23, v22, v24, v25);

    coordsCopy = coords;
    if (!objc_msgSend_isAPivotTable(v262, v26, v27, v28, v29))
    {
      v132 = v261;
      v259 = objc_msgSend_tableModel(self, v30, v31, v32, v33);
      v278.origin = objc_msgSend_bodyRange(v259, v133, v134, v135, v136);
      v278.size = v137;
      v138 = TSUCellRect::lastRow(&v278);
      v268.origin = objc_msgSend_footerRowRange(v259, v139, v140, v141, v142);
      v268.size = v143;
      v144 = TSUCellRect::lastRow(&v268);
      v148 = 0;
      if (v144 == 0x7FFFFFFF)
      {
        v149 = v138;
      }

      else
      {
        v149 = v144;
      }

      do
      {
        v267 = 0;
        v267 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v145, v148, v146, v147);
        v150 = objc_loadWeakRetained(&self->_calcEngine);
        v152 = objc_msgSend_precedentsForFilterSet_calcEngine_hostOwnerUID_hostCellID_(self, v151, v261, v150, &self->_hiddenStateExtentUid, &v267);

        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v274, 0, 1);
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v266, &v274);
        objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v264, v153, &v267, &self->_hiddenStateExtentUid, v152, &v266);

        if (coords)
        {
          TSCECellCoordSet::addCellCoord(coords, &v267);
        }

        v148 = (v148 + 1);
      }

      while (v148 <= v149);
      v154 = 0;
      do
      {
        v155 = objc_msgSend_ruleAtAbsoluteIndex_(v132, v145, v154, v146, v147);
        if (objc_msgSend_needsThreshold(v155, v156, v157, v158, v159))
        {
          v164 = objc_msgSend_formula(v155, v160, v161, v162, v163);
          v267 = 0;
          v267 = objc_msgSend_filterFormulaCoordinateForType_columnOrRowIndex_(TSTHiddenStates, v165, 2, v154, v166);
          v171 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v167, v168, v169, v170);
          v172 = objc_loadWeakRetained(&self->_calcEngine);
          v177 = objc_msgSend_emptyReferenceSetWrapper(v172, v173, v174, v175, v176);

          if (v177)
          {
            if (v164)
            {
              v182 = objc_msgSend_referenceSet(v177, v178, v179, v180, v181);
              v183 = objc_loadWeakRetained(&self->_calcEngine);
              *&v274.var0 = v171;
              v274.var6 = self->_hiddenStateExtentUid;
              objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v164, v184, v182, v183, &v274, 1, 1);

              v132 = v261;
            }

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v274, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v265, &v274);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v264, v185, &v267, &self->_hiddenStateExtentUid, v177, &v265);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v267);
            }
          }
        }

        ++v154;
      }

      while (v20 != v154);
      goto LABEL_49;
    }

    if (objc_msgSend_ruleCount(v261, v30, v31, v32, v33) >= 2)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v35, v36);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 2443, 0, "Expecting at most one filter rule on a pivotTable");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }

    v48 = objc_msgSend_ruleAtAbsoluteIndex_(v261, v34, 0, v35, v36);
    v53 = objc_msgSend_predicate(v48, v49, v50, v51, v52);

    v259 = v53;
    v62 = objc_msgSend_predicateType(v53, v54, v55, v56, v57);
    if (self->_forRows)
    {
      v63 = objc_msgSend_numberOfHeaderRows(v262, v58, v59, v60, v61);
      v68 = objc_msgSend_numberOfRows(v262, v64, v65, v66, v67);
      v73 = objc_msgSend_groupByRootUid(TSCECategoryRef, v69, v70, v71, v72);
      v76 = objc_msgSend_rowIndexForRowUID_(v262, v74, v73, v74, v75);
      if (v76)
      {
        v81 = v68 - 1;
        if (v76 != 0x7FFFFFFF && v76 - 1 < v81)
        {
          v81 = v76 - 1;
        }

        v82 = objc_msgSend_pivotOwner(v262, v77, v78, v79, v80);
        v260 = objc_msgSend_groupBySet(v82, v83, v84, v85, v86);

        if (v62 != 50)
        {
          v90 = MEMORY[0x277D81150];
          v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v88, v89);
          v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v93, v94);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v96, v91, v95, 2461, 0, "Only support PivotSourceFiltered filter for pivotTable");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
        }

        if (v63 <= v81)
        {
          v101 = v262;
          do
          {
            v268.origin = 0;
            v268.origin = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v87, v63, v88, v89);
            v278.origin = 0;
            v278.size = 0;
            v278.origin = objc_msgSend_rowUIDForRowIndex_(v101, v102, v63, v103, v104);
            v278.size = v105;
            v107 = objc_msgSend_filteringCategoryRefAt_forDimension_(v260, v105, &v278, 0, v106);
            v108 = objc_loadWeakRetained(&self->_calcEngine);
            v113 = objc_msgSend_emptyReferenceSetWrapper(v108, v109, v110, v111, v112);

            v118 = objc_msgSend_referenceSet(v113, v114, v115, v116, v117);
            TSCEReferenceSet::insertRef(v118, v107);
            v101 = v262;
            v119 = [TSCEFormulaObject alloc];
            TSCEFormulaCreationMagic::categoryRef(v107, &v275);
            TSCEFormulaCreationMagic::ISBLANK(&v275, v279, &v276);
            TSCEFormulaCreationMagic::NOT(&v276, v280, &v277);
            v123 = objc_msgSend_initWithCreator_(v119, v120, &v277, v121, v122);

            v128 = objc_msgSend_referenceSet(v113, v124, v125, v126, v127);
            v129 = objc_loadWeakRetained(&self->_calcEngine);
            *&v274.var0 = v268.origin;
            v274.var6 = self->_hiddenStateExtentUid;
            objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v123, v130, v128, v129, &v274, 0, 1);

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v274, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v273, &v274);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v264, v131, &v268, &self->_hiddenStateExtentUid, v113, &v273);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v268.origin);
            }

            v63 = (v63 + 1);
          }

          while (v63 <= v81);
        }

LABEL_48:
      }
    }

    else
    {
      v186 = objc_msgSend_numberOfHeaderColumns(v262, v58, v59, v60, v61);
      v191 = objc_msgSend_numberOfColumns(v262, v187, v188, v189, v190);
      v196 = objc_msgSend_groupByRootUid(TSCECategoryRef, v192, v193, v194, v195);
      v199 = objc_msgSend_columnIndexForColumnUID_(v262, v197, v196, v197, v198);
      if (v199)
      {
        v204 = v191 - 1;
        if (v199 != 0x7FFF && v199 - 1 < v204)
        {
          v204 = v199 - 1;
        }

        v205 = objc_msgSend_pivotOwner(v262, v200, v201, v202, v203);
        v260 = objc_msgSend_groupBySet(v205, v206, v207, v208, v209);

        if (v62 != 51)
        {
          v213 = MEMORY[0x277D81150];
          v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, "[TSTHiddenStateExtent p_registerAllFormulasReturningCoords:]", v211, v212);
          v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v215, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v216, v217);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v213, v219, v214, v218, 2498, 0, "Only support PivotSourceFiltered filter for pivotTable");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
        }

        if (v186 <= v204)
        {
          v224 = v262;
          do
          {
            v268.origin = 0;
            v268.origin = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v210, v186, v211, v212);
            v278.origin = 0;
            v278.size = 0;
            v278.origin = objc_msgSend_columnUIDForColumnIndex_(v224, v225, v186, v226, v227);
            v278.size = v228;
            v230 = objc_msgSend_filteringCategoryRefAt_forDimension_(v260, v228, &v278, 1, v229);
            v231 = objc_loadWeakRetained(&self->_calcEngine);
            v236 = objc_msgSend_emptyReferenceSetWrapper(v231, v232, v233, v234, v235);

            v241 = objc_msgSend_referenceSet(v236, v237, v238, v239, v240);
            TSCEReferenceSet::insertRef(v241, v230);
            v224 = v262;
            v242 = [TSCEFormulaObject alloc];
            TSCEFormulaCreationMagic::categoryRef(v230, &v270);
            TSCEFormulaCreationMagic::ISBLANK(&v270, v281, &v271);
            TSCEFormulaCreationMagic::NOT(&v271, v282, &v272);
            v246 = objc_msgSend_initWithCreator_(v242, v243, &v272, v244, v245);

            v251 = objc_msgSend_referenceSet(v236, v247, v248, v249, v250);
            v252 = objc_loadWeakRetained(&self->_calcEngine);
            *&v274.var0 = v268.origin;
            v274.var6 = self->_hiddenStateExtentUid;
            objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v246, v253, v251, v252, &v274, 0, 1);

            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v274, 0, 1);
            TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v269, &v274);
            objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v264, v254, &v268, &self->_hiddenStateExtentUid, v236, &v269);

            if (coordsCopy)
            {
              TSCECellCoordSet::addCellCoord(coordsCopy, &v268.origin);
            }

            v186 = (v186 + 1);
          }

          while (v186 <= v204);
        }

        goto LABEL_48;
      }
    }

LABEL_49:

    objc_msgSend_flushAllChanges(v264, v255, v256, v257, v258);
    v10 = v261;
LABEL_50:
  }
}

- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension
{
  if (!objc_msgSend_anyCollapsed(self, a2, collapsed, dimension, v4))
  {
    return 0;
  }

  v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  v17 = v12;
  if (dimension)
  {
    objc_msgSend_groupByForColumns(v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_groupByForRows(v12, v13, v14, v15, v16);
  }
  v19 = ;

  v26 = objc_msgSend_groupNodeForGroupUid_(v19, v20, collapsed->_lower, collapsed->_upper, v21);
  if (v26)
  {
    do
    {
      collapsedGroupUids = self->_collapsedGroupUids;
      v28 = objc_msgSend_groupUid(v26, v22, v23, v24, v25);
      v18 = objc_msgSend_containsUuid_(collapsedGroupUids, v29, v28, v29, v30);
      v35 = objc_msgSend_parentNode(v26, v31, v32, v33, v34);

      if (v35)
      {
        v36 = v18;
      }

      else
      {
        v36 = 1;
      }

      v26 = v35;
    }

    while ((v36 & 1) == 0);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension
{
  if (!objc_msgSend_anyCollapsed(self, a2, visible, dimension, v4))
  {
    return 0;
  }

  v12 = objc_msgSend_tableInfo(self, v8, v9, v10, v11);
  v17 = v12;
  if (dimension)
  {
    objc_msgSend_groupByForColumns(v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_groupByForRows(v12, v13, v14, v15, v16);
  }
  v19 = ;

  v22 = objc_msgSend_groupNodeForGroupUid_(v19, v20, visible->_lower, visible->_upper, v21);
  v27 = v22;
  if (v22 && (v28 = self->_collapsedGroupUids, v29 = objc_msgSend_groupUid(v22, v23, v24, v25, v26), objc_msgSend_containsUuid_(v28, v30, v29, v30, v31)))
  {
    v36 = objc_msgSend_parentNode(v27, v32, v33, v34, v35);

    if (v36)
    {
      v27 = v36;
      do
      {
        collapsedGroupUids = self->_collapsedGroupUids;
        v42 = objc_msgSend_groupUid(v27, v37, v38, v39, v40);
        v49 = objc_msgSend_containsUuid_(collapsedGroupUids, v43, v42, v43, v44);
        if (v49)
        {
          break;
        }

        v50 = objc_msgSend_parentNode(v27, v45, v46, v47, v48);

        v27 = v50;
      }

      while (v50);
      v18 = v49 ^ 1;
    }

    else
    {
      v27 = 0;
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedGroupUids = self->_collapsedGroupUids;
  if (collapsed)
  {
    if (!collapsedGroupUids)
    {
      v8 = objc_opt_new();
      v9 = self->_collapsedGroupUids;
      self->_collapsedGroupUids = v8;

      collapsedGroupUids = self->_collapsedGroupUids;
    }

    objc_msgSend_addUUID_(collapsedGroupUids, a2, d->_lower, d->_upper, v4);
  }

  else
  {
    objc_msgSend_removeUUID_(collapsedGroupUids, a2, d->_lower, d->_upper, v4);
  }

  self->_invalidateCollapsed = 1;
}

- (id)collapseSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6, v7, v8))
  {
    v16 = objc_msgSend_p_collapsedIndexes(self, v9, v10, v11, v12);
    collapsedGroupUids = self->_collapsedGroupUids;
    if (!collapsedGroupUids)
    {
      v18 = objc_opt_new();
      v19 = self->_collapsedGroupUids;
      self->_collapsedGroupUids = v18;

      collapsedGroupUids = self->_collapsedGroupUids;
    }

    objc_msgSend_addUuidsFromSet_(collapsedGroupUids, v13, dsCopy, v14, v15);
    self->_invalidateCollapsed = 1;
    v24 = objc_msgSend_p_collapsedIndexes(self, v20, v21, v22, v23);
    v29 = objc_msgSend_count(v24, v25, v26, v27, v28);
    if (v29 <= objc_msgSend_count(v16, v30, v31, v32, v33))
    {
    }

    else
    {
      v34 = v24;
      objc_msgSend_removeIndexes_(v34, v35, v16, v36, v37);

      if (v34)
      {
        goto LABEL_9;
      }
    }
  }

  v34 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v9, v10, v11, v12);
LABEL_9:

  return v34;
}

- (id)expandSummaryGroupUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_p_collapsedIndexes(self, v9, v10, v11, v12);
    objc_msgSend_removeUuidsFromSet_(self->_collapsedGroupUids, v14, dsCopy, v15, v16);
    self->_invalidateCollapsed = 1;
    v21 = objc_msgSend_p_collapsedIndexes(self, v17, v18, v19, v20);
    v26 = objc_msgSend_count(v13, v22, v23, v24, v25);
    if (v26 <= objc_msgSend_count(v21, v27, v28, v29, v30))
    {
    }

    else
    {
      v31 = v13;
      objc_msgSend_removeIndexes_(v31, v32, v21, v33, v34);

      if (v31)
      {
        goto LABEL_7;
      }
    }
  }

  v31 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v9, v10, v11, v12);
LABEL_7:

  return v31;
}

- (id)copyCollapsedStateToUpdatedGroupUids:(id)uids dimension:(int64_t)dimension
{
  uidsCopy = uids;
  if (objc_msgSend_count(self->_collapsedGroupUids, v7, v8, v9, v10) && (collapsedGroupUids = self->_collapsedGroupUids, objc_msgSend_previousGroupNodeUids(uidsCopy, v11, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(collapsedGroupUids) = objc_msgSend_intersectsSet_(collapsedGroupUids, v17, v16, v18, v19), v16, collapsedGroupUids))
  {
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v26 = objc_msgSend_updatedGroupNodeUids(uidsCopy, v22, v23, v24, v25);
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = sub_221390F58;
    v39 = &unk_278463960;
    v40 = uidsCopy;
    selfCopy = self;
    v27 = v20;
    v42 = v27;
    v28 = v21;
    v43 = v28;
    objc_msgSend_foreachUuid_(v26, v29, &v36, v30, v31);
    v32 = [TSTExpandCollapseState alloc];
    v34 = objc_msgSend_initWithCollapsed_expanded_dimension_(v32, v33, v27, v28, dimension, v36, v37, v38, v39);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState
{
  stateCopy = state;
  v15 = objc_msgSend_p_collapsedIndexes(self, v7, v8, v9, v10);
  if (!self->_collapsedGroupUids)
  {
    v16 = objc_opt_new();
    collapsedGroupUids = self->_collapsedGroupUids;
    self->_collapsedGroupUids = v16;
  }

  v18 = objc_msgSend_uidsExpanded(stateCopy, v11, v12, v13, v14);
  v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

  if (v23)
  {
    v28 = self->_collapsedGroupUids;
    v29 = objc_msgSend_uidsExpanded(stateCopy, v24, v25, v26, v27);
    v23 = objc_msgSend_removeUuidsFromSetReturningRemoved_(v28, v30, v29, v31, v32);

    self->_invalidateCollapsed = 1;
  }

  v33 = objc_msgSend_uidsCollapsed(stateCopy, v24, v25, v26, v27);
  v38 = objc_msgSend_count(v33, v34, v35, v36, v37);

  if (v38)
  {
    v43 = self->_collapsedGroupUids;
    v44 = objc_msgSend_uidsCollapsed(stateCopy, v39, v40, v41, v42);
    v38 = objc_msgSend_addUuidsFromSetReturningAdded_(v43, v45, v44, v46, v47);

    self->_invalidateCollapsed = 1;
  }

  if (undoState)
  {
    v48 = [TSTExpandCollapseState alloc];
    v53 = objc_msgSend_dimension(stateCopy, v49, v50, v51, v52);
    *undoState = objc_msgSend_initWithCollapsed_expanded_dimension_(v48, v54, v23, v38, v53);
  }

  v55 = objc_msgSend_p_collapsedIndexes(self, v39, v40, v41, v42);
  v56 = objc_opt_new();
  v60 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v15, v57, v55, v58, v59);
  objc_msgSend_addIndexes_(v56, v61, v60, v62, v63);

  v67 = objc_msgSend_tsu_indexSetByExcludingIndexes_(v55, v64, v15, v65, v66);
  objc_msgSend_addIndexes_(v56, v68, v67, v69, v70);

  return v56;
}

- (id)pruneCollapsedGroupsInDimension:(int64_t)dimension
{
  v7 = objc_msgSend_tableInfo(self, a2, dimension, v3, v4);
  v12 = v7;
  if (dimension == 1)
  {
    v13 = objc_msgSend_groupByForColumns(v7, v8, v9, v10, v11);
    v18 = objc_msgSend_maxColumnLevel(v12, v14, v15, v16, v17);
  }

  else
  {
    v13 = objc_msgSend_groupByForRows(v7, v8, v9, v10, v11);
    v18 = objc_msgSend_maxRowLevel(v12, v19, v20, v21, v22);
  }

  v23 = v18;
  v24 = objc_opt_new();
  objc_msgSend_addUuidsFromSet_(v24, v25, self->_collapsedGroupUids, v26, v27);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_221391434;
  v37[3] = &unk_27845FA48;
  v28 = v24;
  v38 = v28;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(v13, v29, 1, v23, v37);
  v30 = [TSTExpandCollapseState alloc];
  v32 = objc_msgSend_initWithCollapsed_expanded_dimension_(v30, v31, 0, v28, dimension);
  v35 = objc_msgSend_applyCollapseExpandState_outUndoState_(self, v33, v32, 0, v34);

  return v35;
}

- (id)p_calculateAverageThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord
{
  engineCopy = engine;
  row = coord->row;
  v8 = *&coord->column;
  v13 = objc_msgSend_filterSet(self, v9, v10, v11, v12);
  v17 = objc_msgSend_ruleAtAbsoluteIndex_(v13, v14, row, v15, v16);

  v22 = objc_msgSend_tableModel(self, v18, v19, v20, v21);
  v26 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v17, v23, v22, v24, v25);
  v34[0] = objc_msgSend_tableUID(v22, v27, v28, v29, v30);
  v34[1] = v31;
  v32 = sub_221256390(engineCopy, row | (v8 << 32), &self->_hiddenStateExtentUid, (v26 << 32) | 0x7FFFFFFF, (v26 << 32) | 0x7FFFFFFF, v34);

  return v32;
}

- (id)p_calculateUniqueThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord
{
  engineCopy = engine;
  row = coord->row;
  v8 = *&coord->column;
  v12 = objc_msgSend_ruleAtAbsoluteIndex_(self->_filterSet, v9, row, v10, v11);
  v17 = objc_msgSend_tableModel(self, v13, v14, v15, v16);
  v21 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v12, v18, v17, v19, v20);

  v26 = objc_msgSend_tableModel(self, v22, v23, v24, v25);
  v34[0] = objc_msgSend_tableUID(v26, v27, v28, v29, v30);
  v34[1] = v31;

  v32 = sub_22125668C(engineCopy, row | (v8 << 32), &self->_hiddenStateExtentUid, (v21 << 32) | 0x7FFFFFFF, (v21 << 32) | 0x7FFFFFFF, v34);

  return v32;
}

- (id)p_calculateTopOrBottomThresholdWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord isTop:(BOOL)top keyScale:(unsigned __int8)scale
{
  scaleCopy = scale;
  topCopy = top;
  engineCopy = engine;
  row = coord->row;
  v12 = *&coord->column;
  v17 = objc_msgSend_filterSet(self, v13, v14, v15, v16);
  v21 = objc_msgSend_ruleAtAbsoluteIndex_(v17, v18, row, v19, v20);

  v26 = objc_msgSend_tableModel(self, v22, v23, v24, v25);
  v30 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v21, v27, v26, v28, v29);
  v107[0] = objc_msgSend_tableUID(v26, v31, v32, v33, v34);
  v107[1] = v35;
  v43 = objc_msgSend_nilValue(TSCENilValue, v35, v36, v37, v38);
  v44 = v30;
  v45 = ((v30 << 32) | 0x7FFFFFFF);
  if (scaleCopy == 9)
  {
    v58 = row | (v12 << 32);
    v59 = sub_221256DB8(engineCopy, v58, &self->_hiddenStateExtentUid, ((v44 << 32) | 0x7FFFFFFF), (v44 << 32) | 0x7FFFFFFF, v107);
    if ((objc_msgSend_isNil(v59, v60, v61, v62, v63) & 1) == 0)
    {
      v68 = objc_msgSend_predicate(v21, v64, v65, v66, v67);
      objc_msgSend_numberParam1(v68, v69, v70, v71, v72);
      v74 = v73;

      v79 = objc_msgSend_number(v59, v75, v76, v77, v78);
      v106._decimal.w[0] = objc_msgSend_decimalRepresentation(v79, v80, v81, v82, v83);
      v106._decimal.w[1] = v84;
      TSUDecimal::doubleValue(&v106);
      v86 = floor(v74 / 100.0 * v85);

      if (v86 >= 1.0)
      {
        v91 = sub_221256984(engineCopy, v58, &self->_hiddenStateExtentUid, v45, v45, v107, topCopy, 0);
      }

      else
      {
        v87 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v91 = objc_msgSend_initWithDecimal_(v87, v88, &v106, v89, v90);
      }

      v104 = v91;

      v43 = v104;
    }
  }

  else if (scaleCopy == 10)
  {
    v46 = objc_msgSend_predicate(v21, v39, v40, v41, v42);
    objc_msgSend_numberParam1(v46, v47, v48, v49, v50);
    v52 = v51;

    if (v52 >= 1.0)
    {
      v57 = sub_221256984(engineCopy, row | (v12 << 32), &self->_hiddenStateExtentUid, v45, v45, v107, topCopy, 1);
    }

    else
    {
      v53 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v57 = objc_msgSend_initWithDecimal_(v53, v54, &v106, v55, v56);
    }

    v103 = v57;

    v43 = v103;
  }

  else
  {
    v92 = MEMORY[0x277D81150];
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTHiddenStateExtent p_calculateTopOrBottomThresholdWithCalcEngine:formulaCoord:isTop:keyScale:]", v41, v42);
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v95, v96);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v98, v93, v97, 2880, 0, "Unexpected key scale found: %d", scaleCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v100, v101, v102);
  }

  return v43;
}

- (id)p_createThresholdCellValue:(id)value locale:(id)locale
{
  valueCopy = value;
  localeCopy = locale;
  v13 = objc_msgSend_deepType_(valueCopy, v7, 0, v8, v9);
  if (v13 > 4u)
  {
    if (v13 == 5)
    {
      v39 = [TSCENumberValue alloc];
      v44 = objc_msgSend_number(valueCopy, v40, v41, v42, v43);
      v49 = objc_msgSend_rawDecimalValue(v44, v45, v46, v47, v48);
      v54 = objc_msgSend_number(valueCopy, v50, v51, v52, v53);
      v59 = objc_msgSend_unit(v54, v55, v56, v57, v58);
      v19 = objc_msgSend_initWithDecimal_baseUnit_(v39, v60, v49, v59, v61);

      v62 = [TSCENumberCellValue alloc];
      v22 = objc_msgSend_initWithNumberValue_locale_(v62, v63, v19, localeCopy, v64);
      goto LABEL_10;
    }

    if (v13 != 9)
    {
LABEL_8:
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTHiddenStateExtent p_createThresholdCellValue:locale:]", v11, v12);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v31, v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 2906, 0, "Unexpected threshold value type found: %d", v13);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      v27 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v23 = [TSCENilCellValue alloc];
    v27 = objc_msgSend_initWithLocale_(v23, v24, localeCopy, v25, v26);
    goto LABEL_11;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  if (v13 != 3)
  {
    goto LABEL_8;
  }

  v14 = [TSCEDateCellValue alloc];
  v19 = objc_msgSend_date(valueCopy, v15, v16, v17, v18);
  v22 = objc_msgSend_initWithDate_locale_(v14, v20, v19, localeCopy, v21);
LABEL_10:
  v27 = v22;

LABEL_11:

  return v27;
}

- (void)p_calculateUniqueDistinctIndexWithCalcEngine:(id)engine formulaCoord:(const TSUCellCoord *)coord tableModel:(id)model rule:(id)rule
{
  v109 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  modelCopy = model;
  ruleCopy = rule;
  v14 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(ruleCopy, v11, modelCopy, v12, v13);
  v19 = objc_msgSend_columnRowUIDMap(modelCopy, v15, v16, v17, v18);
  v107._lower = objc_msgSend_columnUIDForColumnIndex_(v19, v20, v14, v21, v22);
  v107._upper = v23;

  v102 = TSKUIDStruct::NSUUIDValue(&v107);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v101 = selfCopy;
  objc_msgSend_uniqueValuesLock(selfCopy, v25, v26, v27, v28);
  uniqueValuesByColumnUid = selfCopy->_uniqueValuesByColumnUid;
  if (!uniqueValuesByColumnUid)
  {
    v33 = objc_opt_new();
    v34 = selfCopy->_uniqueValuesByColumnUid;
    selfCopy->_uniqueValuesByColumnUid = v33;

    uniqueValuesByColumnUid = selfCopy->_uniqueValuesByColumnUid;
  }

  v35 = objc_msgSend_objectForKey_(uniqueValuesByColumnUid, v29, v102, v30, v31);
  v36 = v35 == 0;

  if (v36)
  {
    v97 = objc_msgSend_p_calculateUniqueThresholdWithCalcEngine_formulaCoord_(v101, v37, engineCopy, coord, v40);
    if (!v97)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTHiddenStateExtent p_calculateUniqueDistinctIndexWithCalcEngine:formulaCoord:tableModel:rule:]", v42, v43);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v47, v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 2928, 0, "invalid nil value for '%{public}s'", "uniqueKeyToRowIndexes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    v98 = objc_opt_new();
    v59 = objc_msgSend_mutableCopy(v97, v55, v56, v57, v58);
    objc_msgSend_setUniqueValueToRowIndexes_(v98, v60, v59, v61, v62);

    v67 = objc_msgSend_uniqueValueToRowUids(v98, v63, v64, v65, v66);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v68 = v97;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v103, v108, 16);
    if (v73)
    {
      v74 = *v104;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v104 != v74)
          {
            objc_enumerationMutation(v68);
          }

          v76 = *(*(&v103 + 1) + 8 * i);
          v77 = objc_msgSend_objectForKey_(v68, v70, v76, v71, v72);
          v82 = objc_msgSend_columnRowUIDMap(modelCopy, v78, v79, v80, v81);
          v85 = objc_msgSend_UIDSetForIndexes_isRows_(v82, v83, v77, 1, v84);

          objc_msgSend_setObject_forKey_(v67, v86, v85, v76, v87);
        }

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v103, v108, 16);
      }

      while (v73);
    }

    v92 = v101;
    if (!v101->_columnUidsWithUniqueIndexes.__table_.__size_)
    {
      v93 = objc_msgSend_cellWillChangeDistributor(modelCopy, v88, v89, v90, v91);
      objc_msgSend_addReceiver_(v93, v94, v101, v95, v96);

      v92 = v101;
    }

    objc_msgSend_setObject_forKey_(v92->_uniqueValuesByColumnUid, v88, v98, v102, v91);
    sub_2210C2B00(&v92->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, &v107);
  }

  objc_msgSend_uniqueValuesUnlock(v101, v37, v38, v39, v40);
  objc_sync_exit(v101);
}

- (unsigned)ownerKind
{
  if (self->_forRows)
  {
    return 4;
  }

  else
  {
    return 11;
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_hiddenStateExtentUid._upper;
  lower = self->_hiddenStateExtentUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  v376[0] = at;
  engineCopy = engine;
  if ((objc_msgSend_shouldAbortRecalculation(engineCopy, v5, v6, v7, v8) & 1) == 0)
  {
    v14 = objc_msgSend_filterCoordTypeForFilterCoordinate_(TSTHiddenStates, v9, v376, v10, v11);
    v346 = objc_msgSend_columnOrRowIndexForFilterCoordinate_(TSTHiddenStates, v15, v376, v16, v17);
    v22 = objc_msgSend_hiddenStatesOwner(self, v18, v19, v20, v21);
    v347 = objc_msgSend_hiddenStates(v22, v23, v24, v25, v26);

    if (self->_forRows)
    {
      objc_msgSend_filterSetForRows(v347, v27, v28, v29, v30);
    }

    else
    {
      objc_msgSend_filterSetForColumns(v347, v27, v28, v29, v30);
    }
    v350 = ;
    v35 = objc_msgSend_tableTranslator(self, v31, v32, v33, v34);
    v348 = objc_msgSend_tableModel(self, v36, v37, v38, v39);
    if (objc_msgSend_needsFormulaRewriteForImport(v350, v40, v41, v42, v43))
    {
      obj = v348;
      objc_sync_enter(obj);
      if (objc_msgSend_needsFormulaRewriteForImport(v350, v48, v49, v50, v51))
      {
        v354 = v35;
        v56 = objc_msgSend_context(obj, v52, v53, v54, v55);
        v345 = v14;
        v60 = objc_msgSend_copyWithContext_(v350, v57, v56, v58, v59);

        for (i = 0; i < objc_msgSend_ruleCount(v60, v61, v62, v63, v64); ++i)
        {
          v69 = objc_msgSend_ruleAtAbsoluteIndex_(v60, v66, i, v67, v68);
          v73 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v69, v70, obj, v71, v72);
          v372 = 0;
          v373 = &v372;
          v374 = 0x2020000000;
          v375 = 0;
          v368 = 0;
          v369 = &v368;
          v370 = 0x2020000000;
          v371 = 0;
          v364 = 0;
          v365 = &v364;
          v366 = 0x2020000000;
          v367 = 1;
          v360 = 0;
          v361 = &v360;
          v362 = 0x2020000000;
          v363 = 0;
          v78 = objc_msgSend_bodyRowRange(v35, v74, v75, v76, v77);
          v80 = v79;
          v84 = objc_msgSend_tableInfo(self, v79, v81, v82, v83);
          v86 = v84;
          v87 = v78;
          v359[0] = MEMORY[0x277D85DD0];
          v359[1] = 3221225472;
          v88 = (v78 & 0xFFFF00000000) != 0x7FFF00000000 && v78 == 0x7FFFFFFFLL;
          v359[2] = sub_2213932AC;
          v359[3] = &unk_278463988;
          if (v88)
          {
            v87 = 0;
          }

          v359[4] = &v368;
          v359[5] = &v360;
          v359[6] = &v364;
          v359[7] = &v372;
          objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v84, v85, v87 | (v73 << 32), v80 & 0xFFFFFFFF00000000 | 1, 2, 0x400000, v359);

          v35 = v354;
          if ((v373[3] & 1) == 0 && *(v369 + 24) == 1 && *(v365 + 24) == 1)
          {
            hiddenStateExtentUid = self->_hiddenStateExtentUid;
            v93 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v89, v90, v91, v92);
            v98 = objc_msgSend_predicate(v69, v94, v95, v96, v97);
            v356 = v93;
            v357 = hiddenStateExtentUid;
            objc_msgSend_rewriteNumberToDurationForSageImport_durationUnitLargest_(v98, v99, &v356, *(v361 + 24), v100);

            self->_needsToUpdateFilterSetForImport = 1;
          }

          _Block_object_dispose(&v360, 8);
          _Block_object_dispose(&v364, 8);
          _Block_object_dispose(&v368, 8);
          _Block_object_dispose(&v372, 8);
        }

        objc_msgSend_setNeedsFormulaRewriteForImport_(v60, v66, 0, v67, v68);
        if (self->_rewrittenFilterSet)
        {
          v104 = MEMORY[0x277D81150];
          v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v102, v103);
          v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v107, v108);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v110, v105, v109, 3049, 0, "should have nil _rewrittenFilterSet");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
        }

        objc_storeStrong(&self->_rewrittenFilterSet, v60);
        __dmb(0xBu);
        objc_msgSend_setNeedsFormulaRewriteForImport_(v350, v115, 0, v116, v117);

        v35 = v354;
        v14 = v345;
      }

      objc_sync_exit(obj);
    }

    rewrittenFilterSet = self->_rewrittenFilterSet;
    if (rewrittenFilterSet)
    {
      v122 = rewrittenFilterSet;
    }

    else
    {
      v123 = objc_msgSend_context(v348, v44, v45, v46, v47);
      v122 = objc_msgSend_copyWithContext_(v350, v124, v123, v125, v126);
    }

    if (v14 != 4)
    {
      if (v14 != 2)
      {
        v225 = objc_msgSend_viewRowIndexForBaseRowIndex_(v35, v119, v346, v120, v121);
        v230 = objc_msgSend_headerRowRange(v35, v226, v227, v228, v229);
        if (v231 >> 32 && v231)
        {
          v235 = v230 & 0xFFFF00000000;
          if (v230 == 0x7FFFFFFF && v235 != 0x7FFF00000000)
          {
            goto LABEL_106;
          }

          v236 = v230 != 0x7FFFFFFF || v235 == 0x7FFF00000000;
          v237 = !v236;
          if (v225 >= v230 || v237)
          {
            v238 = v230 + HIDWORD(v231) - 1;
            if (v230 == 0x7FFFFFFF)
            {
              v238 = 0x7FFFFFFF;
            }

            if (v238 >= v225)
            {
              goto LABEL_106;
            }
          }
        }

        v239 = objc_msgSend_footerRowRange(v35, v231, v232, v233, v234);
        if (v240 >> 32 && v240)
        {
          v241 = v239 & 0xFFFF00000000;
          if (v239 == 0x7FFFFFFF && v241 != 0x7FFF00000000)
          {
            goto LABEL_106;
          }

          v242 = v239 != 0x7FFFFFFF || v241 == 0x7FFF00000000;
          v243 = !v242;
          if (v225 >= v239 || v243)
          {
            v244 = v239 + HIDWORD(v240) - 1;
            if (v239 == 0x7FFFFFFF)
            {
              v244 = 0x7FFFFFFF;
            }

            if (v244 >= v225)
            {
              goto LABEL_106;
            }
          }
        }

        if (objc_msgSend_rowIsShown_withHiddenStateExtent_withCalcEngine_(v122, v240, v346, self, engineCopy))
        {
LABEL_106:
          selfCopy2 = self;
          os_unfair_lock_lock(&self->_pendingComputedLock);
          TSUIndexSet::addIndex(&self->_pendingColumnsOrRowsShown);
        }

        else
        {
          selfCopy2 = self;
          os_unfair_lock_lock(&self->_pendingComputedLock);
          TSUIndexSet::addIndex(&self->_pendingColumnsOrRowsHidden);
        }

        os_unfair_lock_unlock(&selfCopy2->_pendingComputedLock);
        goto LABEL_156;
      }

      obja = self->_thresholdCellValues;
      if (!self->_thresholdCellValues)
      {
        selfCopy3 = self;
        objc_sync_enter(selfCopy3);
        thresholdCellValues = self->_thresholdCellValues;
        if (!thresholdCellValues)
        {
          objc_msgSend_clearAllCachedRowIndexes(selfCopy3, v131, v132, v133, v134);
          v136 = objc_alloc(MEMORY[0x277CBEB18]);
          v140 = objc_msgSend_initWithCapacity_(v136, v137, 8, v138, v139);
          v141 = [TSCENilCellValue alloc];
          v146 = objc_msgSend_objectLocale(v348, v142, v143, v144, v145);
          v150 = objc_msgSend_initWithLocale_(v141, v147, v146, v148, v149);

          v154 = 8;
          do
          {
            objc_msgSend_addObject_(v140, v151, v150, v152, v153);
            --v154;
          }

          while (v154);
          objc_storeStrong(&self->_thresholdCellValues, v140);
          v155 = self->_thresholdCellValues;
          v160 = objc_msgSend_hiddenStateFormulaOwnerForRows(v348, v156, v157, v158, v159);
          objc_msgSend_setThresholdCellValues_(v160, v161, v155, v162, v163);

          thresholdCellValues = self->_thresholdCellValues;
        }

        v164 = thresholdCellValues;

        objc_sync_exit(selfCopy3);
        obja = v164;
      }

      v165 = objc_msgSend_ruleAtAbsoluteIndex_(v122, v127, v346, v128, v129);
      v170 = objc_msgSend_predicate(v165, v166, v167, v168, v169);
      v175 = v170;
      if (!v170)
      {
        goto LABEL_155;
      }

      v176 = objc_msgSend_predicateType(v170, v171, v172, v173, v174);
      if (v176 > 45)
      {
        if (v176 > 48)
        {
          if (v176 == 49)
          {
LABEL_135:
            v299 = objc_msgSend_qualifier1(v175, v177, v178, v179, v180);
            objc_msgSend_p_calculateTopOrBottomThresholdWithCalcEngine_formulaCoord_isTop_keyScale_(self, v300, engineCopy, v376, 0, v299);
            v289 = LABEL_144:;
            goto LABEL_145;
          }

          if (v176 == 52)
          {
            goto LABEL_132;
          }

LABEL_146:
          v311 = MEMORY[0x277D81150];
          v312 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v177, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v179, v180);
          v316 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v313, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v314, v315);
          v321 = objc_msgSend_predicateType(v175, v317, v318, v319, v320);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v311, v322, v312, v316, 3121, 0, "Unexpected predicate type found when calculating threshold: %d", v321);

          v294 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v323, v324, v325, v326);
          goto LABEL_147;
        }

        if ((v176 - 46) < 2)
        {
LABEL_127:
          v289 = objc_msgSend_p_calculateAverageThresholdWithCalcEngine_formulaCoord_(self, v177, engineCopy, v376, v180);
LABEL_145:
          v305 = 1;
          v294 = v289;
          v306 = objc_msgSend_nativeType(v289, v290, v291, v292, v293);
          goto LABEL_148;
        }

        if (v176 != 48)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v176 <= 29)
        {
          if ((v176 - 11) >= 2)
          {
            if ((v176 - 15) >= 2)
            {
              goto LABEL_146;
            }

LABEL_132:
            v294 = 0;
            objc_msgSend_p_calculateUniqueDistinctIndexWithCalcEngine_formulaCoord_tableModel_rule_(self, v177, engineCopy, v376, v348, v165);
LABEL_147:
            v305 = 0;
            v306 = objc_msgSend_nativeType(0, v295, v296, v297, v298);
LABEL_148:
            if (v306 == 6)
            {
              v327 = objc_msgSend_asReferenceValue(v294, v307, v308, v309, v310);
              v372 = objc_msgSend_tableUID(v348, v328, v329, v330, v331);
              v373 = v332;
              v333 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v332, engineCopy, &v372, v376[0], 0);
              v336 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v327, v334, v333, 0, v335);

              if (!v305)
              {
                goto LABEL_154;
              }
            }

            else
            {
              v336 = v294;
              if (!v305)
              {
LABEL_154:

LABEL_155:
                goto LABEL_156;
              }
            }

            v337 = objc_msgSend_objectLocale(v348, v307, v308, v309, v310);
            v340 = objc_msgSend_p_createThresholdCellValue_locale_(self, v338, v336, v337, v339);

            if (v340)
            {
              selfCopy4 = self;
              objc_sync_enter(selfCopy4);
              objc_msgSend_replaceObjectAtIndex_withObject_(obja, v342, v346, v340, v343);
              objc_sync_exit(selfCopy4);
            }

            goto LABEL_154;
          }

          goto LABEL_127;
        }

        if (v176 != 30)
        {
          if (v176 == 31)
          {
            goto LABEL_135;
          }

          goto LABEL_146;
        }
      }

      v303 = objc_msgSend_qualifier1(v175, v177, v178, v179, v180);
      objc_msgSend_p_calculateTopOrBottomThresholdWithCalcEngine_formulaCoord_isTop_keyScale_(self, v304, engineCopy, v376, 1, v303);
      goto LABEL_144;
    }

    v181 = objc_msgSend_ruleAtAbsoluteIndex_(v122, v119, 0, v120, v121);
    v186 = objc_msgSend_predicate(v181, v182, v183, v184, v185);

    v195 = objc_msgSend_predicateType(v186, v187, v188, v189, v190);
    if ((v195 & 0xFE) != 0x32)
    {
      v196 = MEMORY[0x277D81150];
      v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v193, v194);
      v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v199, v200);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v196, v202, v197, v201, 3144, 0, "Only grandTotal predicates are supported for view indexes, not predType %d", v195);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v203, v204, v205, v206);
    }

    if (self->_forRows)
    {
      v207 = objc_msgSend_headerRowRange(v35, v191, v192, v193, v194);
      if (v208 >> 32 && v208)
      {
        v212 = v207 & 0xFFFF00000000;
        if (v207 == 0x7FFFFFFF && v212 != 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        v213 = v207 != 0x7FFFFFFF || v212 == 0x7FFF00000000;
        v214 = !v213;
        if (v346 >= v207 || v214)
        {
          v215 = v207 + HIDWORD(v208) - 1;
          if (v207 == 0x7FFFFFFF)
          {
            v215 = 0x7FFFFFFF;
          }

          if (v215 >= v346)
          {
            goto LABEL_139;
          }
        }
      }

      v216 = objc_msgSend_footerRowRange(v35, v208, v209, v210, v211);
      if (v217 >> 32 && v217)
      {
        v221 = v216 & 0xFFFF00000000;
        if (v216 == 0x7FFFFFFF && v221 != 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        v222 = v216 != 0x7FFFFFFF || v221 == 0x7FFF00000000;
        v223 = !v222;
        if (v346 >= v216 || v223)
        {
          v224 = v216 + HIDWORD(v217) - 1;
          if (v216 == 0x7FFFFFFF)
          {
            v224 = 0x7FFFFFFF;
          }

          if (v224 >= v346)
          {
            goto LABEL_139;
          }
        }
      }
    }

    else
    {
      v246 = objc_msgSend_headerColumnRange(v35, v191, v192, v193, v194);
      if (v217 >> 32 && v217)
      {
        if (v246 != 0x7FFFFFFF && (v246 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          goto LABEL_139;
        }

        if (WORD2(v246) <= v346)
        {
          v247 = WORD2(v246) == 0x7FFF || v217 == 0;
          v248 = v247 ? 0x7FFF : v217 + WORD2(v246) - 1;
          if (v248 >= v346)
          {
            goto LABEL_139;
          }
        }
      }
    }

    if (!objc_msgSend_isEnabled(v122, v217, v218, v219, v220))
    {
LABEL_139:
      p_pendingComputedLock = &self->_pendingComputedLock;
      os_unfair_lock_lock(&self->_pendingComputedLock);
      TSUIndexSet::addIndex(&self->_pendingViewColumnsOrRowsShown);
LABEL_140:
      os_unfair_lock_unlock(p_pendingComputedLock);

LABEL_156:
      v13 = 0;
      v12 = options.var0 & 0x5F;
      goto LABEL_157;
    }

    v253 = objc_msgSend_tableInfo(self, v249, v250, v251, v252);
    if ((objc_msgSend_isAPivotTable(v253, v254, v255, v256, v257) & 1) == 0)
    {
      v262 = MEMORY[0x277D81150];
      v263 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v258, "[TSTHiddenStateExtent evaluateFormulaAt:withCalcEngine:recalcOptions:]", v260, v261);
      v267 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v264, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v265, v266);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v262, v268, v263, v267, 3159, 0, "Only expect this on pivot tables, atm.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v269, v270, v271, v272);
    }

    v273 = objc_msgSend_tableModel(self, v258, v259, v260, v261);
    v278 = objc_msgSend_pivotOwner(v273, v274, v275, v276, v277);
    v283 = objc_msgSend_groupBySet(v278, v279, v280, v281, v282);

    v372 = 0;
    v373 = 0;
    if (v195 == 51)
    {
      v288 = objc_msgSend_columnUIDForColumnIndex_(v253, v284, v346, v285, v286);
      v287 = 1;
    }

    else
    {
      v287 = 0;
      if (v195 != 50)
      {
        goto LABEL_138;
      }

      v288 = objc_msgSend_rowUIDForRowIndex_(v253, v284, v346, 0, v286);
      v287 = 0;
    }

    v372 = v288;
    v373 = v284;
LABEL_138:
    hasUnfilteredAt_forDimension = objc_msgSend_hasUnfilteredAt_forDimension_(v283, v284, &v372, v287, v286);

    if ((hasUnfilteredAt_forDimension & 1) == 0)
    {
      p_pendingComputedLock = &self->_pendingComputedLock;
      os_unfair_lock_lock(&self->_pendingComputedLock);
      TSUIndexSet::addIndex(&self->_pendingViewColumnsOrRowsHidden);
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v12 = options.var0 & 0x5F | 0x20;
  v13 = 0x80;
LABEL_157:

  return (v13 | v12);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  v10 = objc_msgSend_tableInfo(self, a2, engine, v3, v4);
  if (self->_rewrittenFilterSet)
  {
    v11 = objc_msgSend_tableInfo(self, v6, v7, v8, v9);
    objc_msgSend_setFilterSet_(v11, v12, self->_rewrittenFilterSet, v13, v14);

    rewrittenFilterSet = self->_rewrittenFilterSet;
    self->_rewrittenFilterSet = 0;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x5012000000;
  v62 = sub_2213938A8;
  v63 = sub_2213938CC;
  v64 = &unk_22188E88F;
  TSUIndexSet::TSUIndexSet(&v65);
  if (TSUIndexSet::count(&self->_pendingColumnsOrRowsShown) || TSUIndexSet::count(&self->_pendingColumnsOrRowsHidden) || TSUIndexSet::count(&self->_pendingViewColumnsOrRowsShown) || TSUIndexSet::count(&self->_pendingViewColumnsOrRowsHidden))
  {
    v20 = objc_msgSend_tableModel(self, v16, v17, v18, v19);
    objc_msgSend_willModify(v20, v21, v22, v23, v24);
  }

  v58 = objc_msgSend_translator(v10, v16, v17, v18, v19);
  TSUIndexSet::enumerateIndexesUsingBlock();
  TSUIndexSet::enumerateIndexesUsingBlock();
  v57 = MEMORY[0x277D85DD0];
  v25 = v58;
  TSUIndexSet::enumerateIndexesUsingBlock();
  v56 = MEMORY[0x277D85DD0];
  TSUIndexSet::enumerateIndexesUsingBlock();
  if (self->_forRows)
  {
    v30 = objc_msgSend_numberOfColumns(v10, v26, v27, v28, v29);
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = sub_221393AEC;
    v53 = &unk_278463A00;
    v55 = v30;
    selfCopy = self;
  }

  else
  {
    v31 = objc_msgSend_numberOfRows(v10, v26, v27, v28, v29);
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = sub_221393B3C;
    v47 = &unk_278463A00;
    v49 = v31;
    selfCopy2 = self;
  }

  TSUIndexSet::enumerateRangesUsingBlock();
  if (objc_msgSend_isAPivotTable(v10, v32, v33, v34, v35, v44, v45, v46, v47, selfCopy2, v49, v50, v51, v52, v53, selfCopy, v55, v56, 3221225472, sub_221393A88, &unk_2784639D8, self, &v59, v57, 3221225472, sub_2213939E0, &unk_2784639B0) && TSUIndexSet::count((v60 + 6)))
  {
    v40 = objc_msgSend_pivotOwner(v10, v36, v37, v38, v39);
    v41 = TSUIndexSet::asNSIndexSet((v60 + 6));
    objc_msgSend_filteringChanged_forDimension_(v40, v42, v41, !self->_forRows, v43);
  }

  os_unfair_lock_lock(&self->_pendingComputedLock);
  TSUIndexSet::removeAllIndexes(&self->_pendingColumnsOrRowsShown);
  TSUIndexSet::removeAllIndexes(&self->_pendingColumnsOrRowsHidden);
  TSUIndexSet::removeAllIndexes(&self->_pendingViewColumnsOrRowsShown);
  TSUIndexSet::removeAllIndexes(&self->_pendingViewColumnsOrRowsHidden);
  os_unfair_lock_unlock(&self->_pendingComputedLock);

  _Block_object_dispose(&v59, 8);
  TSUIndexSet::~TSUIndexSet(&v65);
}

- (void)setFilterSet:(id)set
{
  setCopy = set;
  if (objc_msgSend_containsFilterRulesInUIDForm(setCopy, v5, v6, v7, v8))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTHiddenStateExtent setFilterSet:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStateExtent.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 3531, 0, "filterset should be in geometric form");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  objc_storeStrong(&self->_filterSet, set);
  if (objc_msgSend_p_canUsePrePivotFilterSet(self, v23, v24, v25, v26))
  {
    v31 = objc_msgSend_tableModel(self, v27, v28, v29, v30);
    objc_msgSend_willModify(v31, v32, v33, v34, v35);
    filterSet = self->_filterSet;
    v41 = objc_msgSend_objectLocale(filterSet, v37, v38, v39, v40);
    v45 = objc_msgSend_downgradeFilterSetForBackwardCompatWithLocale_(filterSet, v42, v41, v43, v44);
    objc_msgSend_setPrePivotRowFilterSet_(v31, v46, v45, v47, v48);
  }
}

- (TSTTableFilterSet)filterSet
{
  filterSet = self->_filterSet;
  if (!filterSet)
  {
    if (objc_msgSend_p_canUsePrePivotFilterSet(self, a2, v2, v3, v4))
    {
      v11 = objc_msgSend_tableModel(self, v7, v8, v9, v10);
      v16 = objc_msgSend_prePivotRowFilterSet(v11, v12, v13, v14, v15);
      v21 = objc_msgSend_tableModel(self, v17, v18, v19, v20);
      v26 = objc_msgSend_context(v21, v22, v23, v24, v25);
      v30 = objc_msgSend_copyWithContext_(v16, v27, v26, v28, v29);
      v31 = self->_filterSet;
      self->_filterSet = v30;
    }

    filterSet = self->_filterSet;
    if (!filterSet)
    {
      v32 = objc_msgSend_tableModel(self, v7, v8, v9, v10);
      WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

      if (WeakRetained && v32)
      {
        v34 = [TSTTableFilterSet alloc];
        v39 = objc_msgSend_context(v32, v35, v36, v37, v38);
        v41 = objc_msgSend_initWithFilterRules_type_context_(v34, v40, 0, 0, v39);
        objc_msgSend_setFilterSet_(self, v42, v41, v43, v44);
      }

      filterSet = self->_filterSet;
    }
  }

  return filterSet;
}

- (void)setNeedsToUpdateFilterSetForImport:(BOOL)import
{
  importCopy = import;
  self->_needsToUpdateFilterSetForImport = import;
  v7 = objc_msgSend_forRows(self, a2, import, v3, v4);
  v12 = objc_msgSend_tableModel(self, v8, v9, v10, v11);
  v21 = v12;
  if (v7)
  {
    objc_msgSend_hiddenStateFormulaOwnerForRows(v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_hiddenStateFormulaOwnerForColumns(v12, v13, v14, v15, v16);
  }
  v17 = ;
  objc_msgSend_setNeedsToUpdateFilterSetForImport_(v17, v18, importCopy, v19, v20);
}

- (id)duplicateFilterSet
{
  v6 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  v11 = objc_msgSend_tableModel(self, v7, v8, v9, v10);
  v16 = objc_msgSend_context(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_copyWithContext_(v6, v17, v16, v18, v19);

  return v20;
}

- (id)duplicateFilterSetInUidFormWithTable:(id)table
{
  tableCopy = table;
  v9 = objc_msgSend_filterSet(self, v5, v6, v7, v8);
  v14 = objc_msgSend_context(tableCopy, v10, v11, v12, v13);
  v17 = objc_msgSend_copyByRewritingFilterRulesToUidFormWithContext_withTableInfo_(v9, v15, v14, tableCopy, v16);

  return v17;
}

- (BOOL)needsFilterFormulaRewriteForImport
{
  v5 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  v10 = objc_msgSend_needsFormulaRewriteForImport(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setNeedsFilterFormulaRewriteForImport:(BOOL)import
{
  importCopy = import;
  v9 = objc_msgSend_filterSet(self, a2, import, v3, v4);
  objc_msgSend_setNeedsFormulaRewriteForImport_(v9, v6, importCopy, v7, v8);
}

- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  selfCopy = self;
  v12 = objc_msgSend_filterSet(self, v8, v9, v10, v11);
  v21 = objc_msgSend_baseTableModel(tableCopy, v13, v14, v15, v16);
  for (i = 0; i < objc_msgSend_ruleCount(v12, v17, v18, v19, v20); ++i)
  {
    v27 = objc_msgSend_ruleAtAbsoluteIndex_(v12, v23, i, v25, v26);
    v32 = objc_msgSend_predicate(v27, v28, v29, v30, v31);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_221394330;
    v38[3] = &unk_278463A28;
    v41 = blockCopy;
    v33 = v27;
    v39 = v33;
    v40 = v21;
    objc_msgSend_rewriteFormulaWithBlock_(v32, v34, v38, v35, v36);
  }

  objc_msgSend_filterSetUpdated(selfCopy, v23, v24, v25, v26);
}

- (void)enableFilterSet:(BOOL)set
{
  setCopy = set;
  v22 = objc_msgSend_filterSet(self, a2, set, v3, v4);
  if (objc_msgSend_isEnabled(v22, v7, v8, v9, v10) != setCopy)
  {
    objc_msgSend_setIsEnabled_(v22, v11, setCopy, v12, v13);
    if (setCopy)
    {
      objc_msgSend_p_removeAllFormulaFromCalculationEngine(self, v14, v15, v16, v17);
      objc_msgSend_p_registerAllFormulas(self, v18, v19, v20, v21);
    }

    else
    {
      objc_msgSend_dirtyFilterState(self, v14, v15, v16, v17);
    }
  }
}

- (void)setFilterSetType:(int)type
{
  v5 = *&type;
  v7 = objc_msgSend_filterSet(self, a2, *&type, v3, v4);
  objc_msgSend_setFilterSetType_(v7, v8, v5, v9, v10);

  objc_msgSend_filterSetUpdated(self, v11, v12, v13, v14);
}

- (BOOL)hasActiveFilters
{
  v5 = objc_msgSend_filterSet(self, a2, v2, v3, v4);
  v10 = v5;
  v15 = v5 && objc_msgSend_isEnabled(v5, v6, v7, v8, v9) && objc_msgSend_ruleCount(v10, v11, v12, v13, v14) != 0;

  return v15;
}

- (void)filterSetUpdated
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_calcEngine);
    v8 = v4;
    if (v4)
    {
      objc_msgSend_allFormulaCoordsInOwner_(v4, v5, &self->_hiddenStateExtentUid, v6, v7);
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    v25._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v25._rowsPerColumn.__tree_.__size_ = 0;
    v25._rectRepresentation.origin = 0;
    v25._rectRepresentation.size = 0;
    v25._rowsPerColumn.__tree_.__begin_node_ = &v25._rowsPerColumn.__tree_.__end_node_;
    objc_msgSend_p_registerAllFormulasReturningCoords_(self, v9, &v25, v10, v11);
    TSCECellCoordSet::removeCellCoords(&v26, &v25);
    if (!TSCECellCoordSet::isEmpty(&v26))
    {
      v24._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v24._coordsForOwnerUid.__tree_.__size_ = 0;
      v24._coordsForOwnerUid.__tree_.__begin_node_ = &v24._coordsForOwnerUid.__tree_.__end_node_;
      TSCECellRefSet::addCellRefs(&v24, &self->_hiddenStateExtentUid, &v26);
      v16 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_removeFormulasAt_(v16, v17, &v24, v18, v19);

      sub_22107C800(&v24, v24._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }

    objc_msgSend_clearInvalidIndexes(self, v12, v13, v14, v15);
    objc_msgSend_dirtyFilterState(self, v20, v21, v22, v23);
    sub_22107C860(&v25._rowsPerColumn, v25._rowsPerColumn.__tree_.__end_node_.__left_);
    sub_22107C860(&v26._rowsPerColumn, v26._rowsPerColumn.__tree_.__end_node_.__left_);
  }
}

- (void)dirtyFilterStateForRowRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v7 = objc_msgSend_tableInfo(self, a2, range.location, range.length, v3);
    isAPivotTable = objc_msgSend_isAPivotTable(v7, v8, v9, v10, v11);

    v16 = (location + length - 1);
    if (isAPivotTable)
    {
      v27 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v13, location, v14, v15);
      v28 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v17, v16, v18, v19);
    }

    else
    {
      v27 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v13, location, v14, v15);
      v28 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v24, v16, v25, v26);
    }

    hiddenStateExtentUid = self->_hiddenStateExtentUid;
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markRangeRefAsDirty_(WeakRetained, v21, &v27, v22, v23);
  }
}

- (void)dirtyFilterStateForHeaders
{
  if (self->_forRows)
  {
    v6 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
    v21.origin = objc_msgSend_headerRowRange(v6, v7, v8, v9, v10);
    v21.size = v11;

    v12 = TSUCellRect::rows(&v21);
  }

  else
  {
    v15 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
    v21.origin = objc_msgSend_headerColumnRange(v15, v16, v17, v18, v19);
    v21.size = v20;

    v12 = TSUCellRect::columns(&v21);
  }

  objc_msgSend_dirtyFilterStateForRowRange_(self, v13, v12, v13, v14, *&v21.origin, *&v21.size);
}

- (void)dirtyFilterStateForFooters
{
  if (self->_forRows)
  {
    v6 = objc_msgSend_tableModel(self, a2, v2, v3, v4);
    v15.origin = objc_msgSend_footerRowRange(v6, v7, v8, v9, v10);
    v15.size = v11;

    v12 = TSUCellRect::rows(&v15);
    objc_msgSend_dirtyFilterStateForRowRange_(self, v13, v12, v13, v14, *&v15.origin, *&v15.size);
  }
}

- (void)dirtyFilterState
{
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  if (objc_msgSend_isAPivotTable(v6, v7, v8, v9, v10))
  {
    v25.origin = objc_msgSend_range(v6, v11, v12, v13, v14);
    v25.size = v15;
    if (self->_forRows)
    {
      goto LABEL_5;
    }

LABEL_6:
    v22 = TSUCellRect::columns(&v25);
    goto LABEL_7;
  }

  v16 = objc_msgSend_tableModel(self, v11, v12, v13, v14);
  v25.origin = objc_msgSend_range(v16, v17, v18, v19, v20);
  v25.size = v21;

  if (!self->_forRows)
  {
    goto LABEL_6;
  }

LABEL_5:
  v22 = TSUCellRect::rows(&v25);
LABEL_7:
  objc_msgSend_dirtyFilterStateForRowRange_(self, v23, v22, v23, v24, *&v25.origin, *&v25.size);
}

- (BOOL)hasFilterRulesWithTable:(id)table inBaseColumns:(id)columns
{
  tableCopy = table;
  columnsCopy = columns;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v12 = objc_msgSend_filterSet(self, v8, v9, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221394AEC;
  v17[3] = &unk_278463A50;
  v13 = columnsCopy;
  v18 = v13;
  v19 = &v20;
  objc_msgSend_enumerateFiltersInTable_usingBlock_(v12, v14, tableCopy, v17, v15);

  LOBYTE(columnsCopy) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return columnsCopy;
}

- (TSCECellRef)cellReferenceForIndex:(SEL)index
{
  retstr->coordinate = a4._index;
  retstr->_tableUID = *&self[1].coordinate.row;
  return self;
}

- (void)p_hiddenStateChangedForBaseIndex:(TSUModelColumnOrRowIndex)index viewIndex:(TSUViewColumnOrRowIndex)viewIndex forAction:(unsigned __int8)action
{
  v6 = *&viewIndex._index;
  v7 = *&index._index;
  if (index._index != 0x7FFFFFFF)
  {
    objc_msgSend_cellReferenceForIndex_(self, a2, index._index, *&viewIndex._index, action);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markCellRefAsDirty_(WeakRetained, v10, &v31, v11, v12);
  }

  if ((action & 2) != 0)
  {
    v13 = objc_msgSend_tableInfo(self, a2, *&index._index, *&viewIndex._index, action);
    isAPivotTable = objc_msgSend_isAPivotTable(v13, v14, v15, v16, v17);

    if (isAPivotTable)
    {
      if (v6 == 0x7FFFFFFF)
      {
        return;
      }

      v22 = objc_msgSend_filterFormulaCoordForViewColumnRow_(TSTHiddenStates, v19, v6, v20, v21);
      v32 = 0;
      v33 = 0;
      v31 = v22;
      v23 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_markCellRefAsDirty_(v23, v24, &v31, v25, v26);
    }

    else
    {
      if (v7 == 0x7FFFFFFF)
      {
        return;
      }

      v27 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v19, v7, v20, v21);
      v32 = 0;
      v33 = 0;
      v31 = v27;
      v23 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_markCellRefAsDirty_(v23, v28, &v31, v29, v30);
    }
  }
}

- (void)willApplyCell:(id)cell baseCellCoord:(TSUModelCellCoord)coord tableUID:(const TSKUIDStruct *)d
{
  cellCopy = cell;
  if (cellCopy)
  {
    v12 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
    v17 = objc_msgSend_baseTableModel(v12, v13, v14, v15, v16);

    v95 = 0;
    LODWORD(v12) = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_skipPendingWrites_(v17, v18, &v95, *&coord, 0, 1);
    v23 = v95;
    if (v12 || (objc_msgSend_locale(cellCopy, v19, v20, v21, v22), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_asStringWithLocale_(v23, v26, v25, v27, v28), v24 = objc_claimAutoreleasedReturnValue(), v25, !v24))
    {
      v24 = &stru_2834BADA0;
    }

    v94[0] = objc_msgSend_columnUIDForColumnIndex_(v17, v19, coord._coord.column, v21, v22);
    v94[1] = v29;
    objc_msgSend_uniqueValuesLock(self, v29, v30, v31, v32);
    v36 = objc_msgSend_uniqueValuesForColumnUID_(self, v33, v94, v34, v35);
    v41 = v36;
    if (v36)
    {
      v91 = v23;
      v42 = objc_msgSend_uniqueValueToRowUids(v36, v37, v38, v39, v40);
      v47 = objc_msgSend_formattedValue(cellCopy, v43, v44, v45, v46);
      if (v47)
      {
        v51 = v47;
        isEqualToString = objc_msgSend_isEqualToString_(v47, v48, v24, v49, v50);
      }

      else
      {
        v51 = &stru_2834BADA0;
        isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v48, v24, v49, v50);
      }

      if ((isEqualToString & 1) == 0)
      {
        v56 = objc_msgSend_rowUIDForRowIndex_(v17, v53, *&coord, v54, v55);
        v58 = v57;
        v90 = objc_msgSend_objectForKey_(v42, v57, v24, v59, v60);
        objc_msgSend_removeUUID_(v90, v61, v56, v58, v62);
        if (!objc_msgSend_count(v90, v63, v64, v65, v66))
        {
          objc_msgSend_removeObjectForKey_(v42, v67, v24, v68, v69);
        }

        v72 = objc_msgSend_objectForKey_(v42, v67, v51, v68, v69);
        if (!v72)
        {
          v72 = objc_opt_new();
          objc_msgSend_setObject_forKey_(v42, v73, v72, v51, v74);
        }

        objc_msgSend_addUUID_(v72, v70, v56, v58, v71);
        objc_msgSend_clearRowIndexesCache(v41, v75, v76, v77, v78);
        WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
        v92[0] = objc_msgSend_tableUID(v17, v80, v81, v82, v83);
        v92[1] = v84;
        objc_msgSend_uniqueDistinctPrecedentForTableUID_(TSCEHauntedOwner, v84, v92, v85, v86);
        objc_msgSend_markCellRefAsDirty_(WeakRetained, v87, v93, v88, v89);
      }

      v23 = v91;
    }

    objc_msgSend_uniqueValuesUnlock(self, v37, v38, v39, v40);
  }
}

- (void)willApplyBaseCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221395068;
  v5[3] = &unk_278463A78;
  v5[4] = self;
  v5[5] = d;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(map, a2, v5, d, v4);
}

- (void)willApplyConcurrentCellMap:(id)map tableUID:(const TSKUIDStruct *)d
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213950F0;
  v5[3] = &unk_278463AA0;
  v5[4] = self;
  v5[5] = d;
  objc_msgSend_enumerateSeriallyUsingBlock_(map, a2, v5, d, v4);
}

- (void)willRemoveRows:(const void *)rows tableUID:(const TSKUIDStruct *)d
{
  v76 = *MEMORY[0x277D85DE8];
  objc_msgSend_uniqueValuesLock(self, a2, rows, d, v4);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  selfCopy = self;
  obj = self->_uniqueValuesByColumnUid;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v69, v75, 16);
  if (v8)
  {
    v57 = *v70;
    do
    {
      v59 = v8;
      for (i = 0; i != v59; ++i)
      {
        if (*v70 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v13 = objc_msgSend_objectForKey_(selfCopy->_uniqueValuesByColumnUid, v9, *(*(&v69 + 1) + 8 * i), v10, v11);
        v18 = objc_msgSend_uniqueValueToRowUids(v13, v14, v15, v16, v17);
        v60 = v13;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v19 = v18;
        v21 = 0;
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v65, v74, 16);
        if (v25)
        {
          v26 = *v66;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v66 != v26)
              {
                objc_enumerationMutation(v19);
              }

              v28 = *(*(&v65 + 1) + 8 * j);
              v29 = objc_msgSend_objectForKey_(v19, v22, v28, v23, v24);
              objc_msgSend_removeUuidsFromVector_(v29, v30, rows, v31, v32);
              if (!objc_msgSend_count(v29, v33, v34, v35, v36))
              {
                if (!v21)
                {
                  v21 = objc_opt_new();
                }

                objc_msgSend_addObject_(v21, v37, v28, v38, v39);
              }
            }

            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v65, v74, 16);
          }

          while (v25);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v40 = v21;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v61, v73, 16);
        if (v45)
        {
          v46 = *v62;
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v62 != v46)
              {
                objc_enumerationMutation(v40);
              }

              objc_msgSend_removeObjectForKey_(v19, v42, *(*(&v61 + 1) + 8 * k), v43, v44);
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v61, v73, 16);
          }

          while (v45);
        }

        objc_msgSend_clearRowIndexesCache(v60, v48, v49, v50, v51);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v69, v75, 16);
    }

    while (v8);
  }

  objc_msgSend_uniqueValuesUnlock(selfCopy, v52, v53, v54, v55);
}

- (id)uniqueValuesForColumnUID:(const TSKUIDStruct *)d
{
  if (*d == 0 || !sub_2210875C4(&self->_columnUidsWithUniqueIndexes.__table_.__bucket_list_.__ptr_, d))
  {
    v10 = 0;
  }

  else
  {
    uniqueValuesByColumnUid = self->_uniqueValuesByColumnUid;
    v6 = TSKUIDStruct::NSUUIDValue(d);
    v10 = objc_msgSend_objectForKey_(uniqueValuesByColumnUid, v7, v6, v8, v9);
  }

  return v10;
}

- (void)clearAllCachedRowIndexes
{
  v28 = *MEMORY[0x277D85DE8];
  objc_msgSend_uniqueValuesLock(self, a2, v2, v3, v4);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_uniqueValuesByColumnUid;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_objectForKey_(self->_uniqueValuesByColumnUid, v8, *(*(&v23 + 1) + 8 * v13), v9, v10, v23);
        objc_msgSend_clearRowIndexesCache(v14, v15, v16, v17, v18);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v23, v27, 16);
    }

    while (v11);
  }

  objc_msgSend_uniqueValuesUnlock(self, v19, v20, v21, v22);
}

- (void)endOfGroupingChangesBatch
{
  if (self->_invalidateViewGeometry)
  {
    self->_invalidateViewGeometry = 1;
  }

  else
  {
    v10 = objc_msgSend_tableTranslator(self, a2, v2, v3, v4);
    self->_invalidateViewGeometry = objc_msgSend_areMapsStale(v10, v6, v7, v8, v9);
  }
}

- (TSTHiddenStatesOwner)hiddenStatesOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);

  return WeakRetained;
}

- (TSKUIDStruct)hiddenStateExtentUid
{
  upper = self->_hiddenStateExtentUid._upper;
  lower = self->_hiddenStateExtentUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *&self->_baseHiddenByUid.__table_.__first_node_.__next_ = 0u;
  self->_baseHiddenByUid.__table_.__bucket_list_ = 0u;
  self->_baseHiddenByUid.__table_.__max_load_factor_ = 1.0;
  self->_summaryHiddenByUid.__table_.__bucket_list_ = 0u;
  *&self->_summaryHiddenByUid.__table_.__first_node_.__next_ = 0u;
  self->_summaryHiddenByUid.__table_.__max_load_factor_ = 1.0;
  self->_columnUidsWithUniqueIndexes.__table_.__bucket_list_ = 0u;
  *&self->_columnUidsWithUniqueIndexes.__table_.__first_node_.__next_ = 0u;
  self->_columnUidsWithUniqueIndexes.__table_.__max_load_factor_ = 1.0;
  TSUIndexSet::TSUIndexSet(&self->_pendingColumnsOrRowsShown);
  TSUIndexSet::TSUIndexSet(&self->_pendingColumnsOrRowsHidden);
  TSUIndexSet::TSUIndexSet(&self->_pendingViewColumnsOrRowsShown);
  TSUIndexSet::TSUIndexSet(&self->_pendingViewColumnsOrRowsHidden);
  self->_cellRangesToInvalidate.__begin_ = 0;
  self->_cellRangesToInvalidate.__end_ = 0;
  self->_cellRangesToInvalidate.__cap_ = 0;
  return self;
}

@end