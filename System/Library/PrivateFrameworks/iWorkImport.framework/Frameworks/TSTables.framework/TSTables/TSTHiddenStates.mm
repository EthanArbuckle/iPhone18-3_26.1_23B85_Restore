@interface TSTHiddenStates
+ (id)mutableIndexSetByIntersecting:(id)a3 withRange:(_NSRange)a4;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)a3;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)a3 forAction:(unsigned __int8)a4;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)a3;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)a3 forAction:(unsigned __int8)a4;
- (BOOL)hasActiveFilters;
- (BOOL)hasHiddenColumnsOrRows;
- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)a3 forAction:(unsigned __int8)a4;
- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)a3 forAction:(unsigned __int8)a4;
- (BOOL)hideColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4;
- (BOOL)hideRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4;
- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)a3 dimension:(int64_t)a4;
- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)a3 dimension:(int64_t)a4;
- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)a3 forAction:(unsigned __int8)a4;
- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)a3 forAction:(unsigned __int8)a4;
- (BOOL)showColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4;
- (BOOL)showRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4;
- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)a3 toColumn:(unsigned __int16)a4;
- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)a3 toRow:(unsigned int)a4;
- (TSKUIDStruct)hiddenStateOwnerForColumnsUID;
- (TSKUIDStruct)hiddenStateOwnerForRowsUID;
- (TSTHiddenStates)initWithArchive:(const void *)a3 unarchiver:(id)a4 forHiddenStatesOwner:(id)a5;
- (TSTHiddenStates)initWithHiddenStatesOwner:(id)a3 shouldRegister:(BOOL)a4;
- (TSTHiddenStatesOwner)hiddenStatesOwner;
- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)a3;
- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)a3;
- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)a3;
- (id)applyCollapseExpandState:(id)a3 outUndoState:(id *)a4;
- (id)collapseSummaryColumnGroupUIDs:(id)a3;
- (id)collapseSummaryRowGroupUIDs:(id)a3;
- (id)duplicateFilterSetInUidFormWithTable:(id)a3;
- (id)expandSummaryColumnGroupUIDs:(id)a3;
- (id)expandSummaryRowGroupUIDs:(id)a3;
- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)a3;
- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)a3;
- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)a3;
- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)a3;
- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)a3;
- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)a3;
- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)a3;
- (id)indexesOfVisibleColumnsInCellRegion:(id)a3;
- (id)indexesOfVisibleColumnsInColumnRange:(id)a3;
- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)a3;
- (id)indexesOfVisibleRowsInCellRegion:(id)a3;
- (id)indexesOfVisibleRowsInRowRange:(id)a3;
- (id)translator;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)a3;
- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)a3;
- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)a3;
- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)a3;
- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)a3;
- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)a3;
- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)a3;
- (void)clearAllFiltered;
- (void)clearAllPivotHiddenAndInvalidate:(BOOL)a3;
- (void)copyFromHiddenStates:(id)a3 forRange:(TSUCellRect)a4 withContext:(id)a5 isWholeTableCopy:(BOOL)a6;
- (void)deleteColumnsFromBaseRange:(_NSRange)a3 columnUids:(const void *)a4;
- (void)deleteRowsFromBaseRange:(_NSRange)a3 rowUids:(const void *)a4;
- (void)dirtyFilterState;
- (void)dirtyFilterStateForHeaders;
- (void)enableFilterSet:(BOOL)a3;
- (void)encodeToArchive:(void *)a3 archiver:(id)a4;
- (void)filterSetUpdated;
- (void)hideColumnsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5;
- (void)hideRowsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5;
- (void)insertNewColumnsInBaseRange:(_NSRange)a3;
- (void)insertNewRowsInBaseRange:(_NSRange)a3;
- (void)invalidateAllCollapsed;
- (void)invalidateViewGeometry;
- (void)loadIndexesFromTable:(id)a3;
- (void)moveBaseColumnRange:(_NSRange)a3 toColumnIndex:(TSUModelColumnIndex)a4;
- (void)moveBaseRowRange:(_NSRange)a3 toRowIndex:(TSUModelRowIndex)a4;
- (void)moveViewColumnRange:(_NSRange)a3 toColumnIndex:(TSUViewColumnIndex)a4;
- (void)mutateFormulaFiltersWithTable:(id)a3 usingBlock:(id)a4;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4;
- (void)setColumnGroupUID:(const TSKUIDStruct *)a3 asCollapsed:(BOOL)a4;
- (void)setFilterSetForRows:(id)a3;
- (void)setFilterSetType:(int)a3;
- (void)setFormulaOwnerUIDsWithMap:(id)a3;
- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)a3;
- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)a3;
- (void)setRowGroupUID:(const TSKUIDStruct *)a3 asCollapsed:(BOOL)a4;
- (void)setTableModel:(id)a3;
- (void)showColumnsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5;
- (void)showRowsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5;
- (void)swapBaseRowAtIndex:(TSUModelRowIndex)a3 withRowAtIndex:(TSUModelRowIndex)a4;
- (void)syncUpHiddenStateFormulaOwnerUIDs;
- (void)unregisterFromCalcEngine;
- (void)willChangeGroupByTo:(id)a3;
@end

@implementation TSTHiddenStates

+ (id)mutableIndexSetByIntersecting:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_221346628;
  v19 = sub_221346638;
  v20 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221346640;
  v14[3] = &unk_278462AA8;
  v14[4] = &v15;
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(v6, v11, location, length, 0, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (TSTHiddenStates)initWithHiddenStatesOwner:(id)a3 shouldRegister:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v27.receiver = self;
  v27.super_class = TSTHiddenStates;
  v7 = [(TSTHiddenStates *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_hiddenStatesOwner, v6);
    v9 = [TSTHiddenStateExtent alloc];
    v12 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v9, v10, v6, 1, v11);
    rowHiddenStateExtent = v8->_rowHiddenStateExtent;
    v8->_rowHiddenStateExtent = v12;

    v14 = [TSTHiddenStateExtent alloc];
    v17 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v14, v15, v6, 0, v16);
    columnHiddenStateExtent = v8->_columnHiddenStateExtent;
    v8->_columnHiddenStateExtent = v17;

    if (v4)
    {
      v26[0] = objc_msgSend_baseTableUID(v6, v19, v20, v21, v22);
      v26[1] = v23;
      objc_msgSend_registerHiddenStates_baseOwnerUID_(v6, v23, v8, v26, v24);
    }
  }

  return v8;
}

- (id)translator
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v7 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5, v6);

  if (objc_msgSend_isAPivotDataModel(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_identityTranslator(v7, v12, v13, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_tableInfo(v7, v12, v13, v14, v15);
    v16 = objc_msgSend_translator(v17, v18, v19, v20, v21);
  }

  return v16;
}

- (void)loadIndexesFromTable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    objc_msgSend_loadIndexesFromTable_(self->_rowHiddenStateExtent, v4, v4, v5, v6);
    objc_msgSend_loadIndexesFromTable_(self->_columnHiddenStateExtent, v7, v10, v8, v9);
    self->_loadedIndexesAfterUnarchive = 1;
    v4 = v10;
  }
}

- (TSTHiddenStates)initWithArchive:(const void *)a3 unarchiver:(id)a4 forHiddenStatesOwner:(id)a5
{
  v8 = a4;
  v9 = a5;
  shouldRegister = objc_msgSend_initWithHiddenStatesOwner_shouldRegister_(self, v10, v9, 0, v11);
  if (shouldRegister)
  {
    v13 = [TSTHiddenStateExtent alloc];
    if (*(a3 + 4))
    {
      v15 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v13, v14, *(a3 + 4), v8, v9);
    }

    else
    {
      v15 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v13, v14, &TST::_HiddenStateExtentArchive_default_instance_, v8, v9);
    }

    columnHiddenStateExtent = shouldRegister->_columnHiddenStateExtent;
    shouldRegister->_columnHiddenStateExtent = v15;

    v17 = [TSTHiddenStateExtent alloc];
    if (*(a3 + 5))
    {
      v19 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v17, v18, *(a3 + 5), v8, v9);
    }

    else
    {
      v19 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v17, v18, &TST::_HiddenStateExtentArchive_default_instance_, v8, v9);
    }

    rowHiddenStateExtent = shouldRegister->_rowHiddenStateExtent;
    shouldRegister->_rowHiddenStateExtent = v19;

    v21 = objc_storeWeak(&shouldRegister->_hiddenStatesOwner, v9);
    v29[0] = objc_msgSend_baseTableUID(v9, v22, v23, v24, v25);
    v29[1] = v26;
    objc_msgSend_registerHiddenStates_baseOwnerUID_(v9, v26, shouldRegister, v29, v27);
  }

  return shouldRegister;
}

- (void)encodeToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v24._lower = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, v7, v8, v9, v10);
  v24._upper = v11;
  *(a3 + 4) |= 1u;
  v12 = *(a3 + 3);
  if (!v12)
  {
    v13 = *(a3 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(a3 + 3) = v12;
  }

  TSKUIDStruct::saveToMessage(&v24, v12);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  *(a3 + 4) |= 2u;
  v17 = *(a3 + 4);
  if (!v17)
  {
    v18 = *(a3 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v18);
    *(a3 + 4) = v17;
  }

  objc_msgSend_encodeToArchive_archiver_(columnHiddenStateExtent, v14, v17, v6, v15, v24._lower, v24._upper);
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  *(a3 + 4) |= 4u;
  v22 = *(a3 + 5);
  if (!v22)
  {
    v23 = *(a3 + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v23);
    *(a3 + 5) = v22;
  }

  objc_msgSend_encodeToArchive_archiver_(rowHiddenStateExtent, v19, v22, v6, v20);
}

- (BOOL)hideRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(rowHiddenStateExtent, v17, a3, v4, v18);
}

- (BOOL)showRowAtIndex:(unsigned int)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(rowHiddenStateExtent, v17, a3, v4, v18);
}

- (BOOL)hideColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(columnHiddenStateExtent, v17, v5, v4, v18);
}

- (BOOL)showColumnAtIndex:(unsigned __int16)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(columnHiddenStateExtent, v17, v5, v4, v18);
}

- (void)hideRowsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v36 = a3;
  if (objc_msgSend_count(v36, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v22, v36, v6, v23);
    if (v5)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, v36, 1, v34);
    }
  }
}

- (void)showRowsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v36 = a3;
  if (objc_msgSend_count(v36, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_showAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v22, v36, v6, v23);
    if (v5)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, v36, 1, v34);
    }
  }
}

- (void)hideColumnsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v36 = a3;
  if (objc_msgSend_count(v36, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v22, v36, v6, v23);
    if (v5)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, v36, 0, v34);
    }
  }
}

- (void)showColumnsAtIndexes:(id)a3 forAction:(unsigned __int8)a4 invalidate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v36 = a3;
  if (objc_msgSend_count(v36, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_showAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v22, v36, v6, v23);
    if (v5)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, v36, 0, v34);
    }
  }
}

- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_hideAtBaseIndex_forAction_, a3._row, v4, v17);
}

- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_showAtBaseIndex_forAction_, a3._row, v4, v17);
}

- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_hideAtBaseIndex_forAction_, a3._column, v4, v17);
}

- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_showAtBaseIndex_forAction_, a3._column, v4, v17);
}

- (void)clearAllPivotHiddenAndInvalidate:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  v64 = objc_msgSend_mutablePivotHiddenIndexes(self->_rowHiddenStateExtent, v14, v15, v16, v17);
  v22 = objc_msgSend_mutablePivotHiddenIndexes(self->_columnHiddenStateExtent, v18, v19, v20, v21);
  objc_msgSend_clearAllPivotHidden(self->_rowHiddenStateExtent, v23, v24, v25, v26);
  objc_msgSend_clearAllPivotHidden(self->_columnHiddenStateExtent, v27, v28, v29, v30);
  if (v3)
  {
    if (objc_msgSend_count(v64, v31, v32, v33, v34))
    {
      v39 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v44 = objc_msgSend_tableModel(v39, v40, v41, v42, v43);
      v49 = objc_msgSend_tableInfo(v44, v45, v46, v47, v48);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v50, v64, 1, v49);
    }

    if (objc_msgSend_count(v22, v35, v36, v37, v38))
    {
      v51 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v56 = objc_msgSend_tableModel(v51, v52, v53, v54, v55);
      v61 = objc_msgSend_tableInfo(v56, v57, v58, v59, v60);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v62, v22, 0, v61);
    }
  }
}

- (void)clearAllFiltered
{
  v93 = objc_msgSend_mutableFilteredIndexes(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  v10 = objc_msgSend_mutableFilteredIndexes(self->_columnHiddenStateExtent, v6, v7, v8, v9);
  if (objc_msgSend_count(v93, v11, v12, v13, v14) || objc_msgSend_count(v10, v15, v16, v17, v18))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v24 = objc_msgSend_tableModel(WeakRetained, v20, v21, v22, v23);
    objc_msgSend_willModify(v24, v25, v26, v27, v28);

    objc_msgSend_clearAllFiltered(self->_rowHiddenStateExtent, v29, v30, v31, v32);
    objc_msgSend_clearAllFiltered(self->_columnHiddenStateExtent, v33, v34, v35, v36);
    if (objc_msgSend_count(v93, v37, v38, v39, v40))
    {
      v45 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v50 = objc_msgSend_tableModel(v45, v46, v47, v48, v49);
      v55 = objc_msgSend_tableInfo(v50, v51, v52, v53, v54);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v56, v93, 1, v55);
    }

    if (objc_msgSend_count(v10, v41, v42, v43, v44))
    {
      v57 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v62 = objc_msgSend_tableModel(v57, v58, v59, v60, v61);
      v67 = objc_msgSend_tableInfo(v62, v63, v64, v65, v66);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v68, v10, 0, v67);
    }

    v69 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v74 = objc_msgSend_tableModel(v69, v70, v71, v72, v73);
    v79 = objc_msgSend_tableInfo(v74, v75, v76, v77, v78);

    if (objc_msgSend_isAPivotTable(v79, v80, v81, v82, v83))
    {
      v88 = objc_msgSend_pivotOwner(v79, v84, v85, v86, v87);
      objc_msgSend_filteringChanged_forDimension_(v88, v89, v93, 0, v90);
      objc_msgSend_filteringChanged_forDimension_(v88, v91, v10, 1, v92);
    }
  }
}

- (void)invalidateAllCollapsed
{
  objc_msgSend_invalidateAllCollapsed(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_invalidateAllCollapsed(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (void)invalidateViewGeometry
{
  objc_msgSend_invalidateViewGeometry(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_invalidateViewGeometry(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfFilteredInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v9);
  v7 = objc_msgSend_indexesOfFilteredInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfVisibleInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInCellRegion:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_221346628;
  v12 = sub_221346638;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221347C5C;
  v7[3] = &unk_27845F7B0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend_enumerateRowRangesUsingBlock_(a3, a2, v7, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfUserVisibleInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInRowRange:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_rowHiddenStateExtent, a2, a3, v3, v4);

  return v5;
}

- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v9);
  v7 = objc_msgSend_indexesOfCollapsedInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v9);
  v7 = objc_msgSend_indexesOfCollapsedInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)a3
{
  v8 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v8);
  return objc_msgSend_numberOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)a3
{
  v8 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v8);
  return objc_msgSend_numberOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)a3
{
  v8 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&v8);
  return objc_msgSend_anyHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  v9 = a3;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v6 = TSUCellRect::rows(&v9);
  return objc_msgSend_anyHiddenInRange_forAction_(rowHiddenStateExtent, v7, v6, v7, v4);
}

- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v9);
  v7 = objc_msgSend_indexesOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v9);
  v7 = objc_msgSend_indexesOfUserHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)a3
{
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v9);
  v7 = objc_msgSend_indexesOfVisibleInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleColumnsInCellRegion:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_221346628;
  v12 = sub_221346638;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2213481C8;
  v7[3] = &unk_27845F7B0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend_enumerateColumnRangesUsingBlock_(a3, a2, v7, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)indexesOfVisibleColumnsInColumnRange:(id)a3
{
  v5 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_columnHiddenStateExtent, a2, a3, v3, v4);

  return v5;
}

- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)a3
{
  v8 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v8);
  return objc_msgSend_numberOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)a3
{
  v8 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&v8);
  return objc_msgSend_anyHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)a3 forAction:(unsigned __int8)a4
{
  v4 = a4;
  v9 = a3;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v6 = TSUCellRect::columns(&v9);
  return objc_msgSend_anyHiddenInRange_forAction_(columnHiddenStateExtent, v7, v6, v7, v4);
}

- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_indexOfVisibleBeforeIndex_(self->_columnHiddenStateExtent, a2, a3, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_indexOfVisibleBeforeAndIncludingIndex_(self->_columnHiddenStateExtent, a2, a3, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_indexOfVisibleAfterIndex_(self->_columnHiddenStateExtent, a2, a3, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)a3
{
  v5 = objc_msgSend_indexOfVisibleAfterAndIncludingIndex_(self->_columnHiddenStateExtent, a2, a3, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  v7 = objc_msgSend_indexesOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfUserHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  v7 = objc_msgSend_indexesOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)a3 toRow:(unsigned int)a4
{
  v7 = a4;
  v8 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a3, *&a4, *&a5, v5);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v8;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)a3 toColumn:(unsigned __int16)a4
{
  v7 = a4;
  v8 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a3, a4, a5, v5);
  retstr->range._topLeft = v7;
  retstr->range._bottomRight = v8;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (void)syncUpHiddenStateFormulaOwnerUIDs
{
  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  v9 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_rowHiddenStateExtent, v7, v6, a4, v8);
  v12 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_columnHiddenStateExtent, v10, v6, a4, v11);
  objc_msgSend_syncUpHiddenStateFormulaOwnerUIDs(self, v13, v14, v15, v16);
  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  return v17;
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_unregisterFromCalcEngine(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_unregisterFromCalcEngine(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (void)setTableModel:(id)a3
{
  v23 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_setTableModel_(WeakRetained, v5, v23, v6, v7);

  objc_msgSend_setupAfterUnarchive(self->_rowHiddenStateExtent, v8, v9, v10, v11);
  objc_msgSend_setupAfterUnarchive(self->_columnHiddenStateExtent, v12, v13, v14, v15);
  if (v23)
  {
    objc_msgSend_loadIndexesFromTable_(self, v16, v23, v17, v18);
    objc_msgSend_upgradeHiddenStates(v23, v19, v20, v21, v22);
  }
}

- (void)willChangeGroupByTo:(id)a3
{
  v10 = a3;
  objc_msgSend_willChangeGroupByTo_(self->_rowHiddenStateExtent, v4, v10, v5, v6);
  objc_msgSend_willChangeGroupByTo_(self->_columnHiddenStateExtent, v7, v10, v8, v9);
}

- (void)setFormulaOwnerUIDsWithMap:(id)a3
{
  v26 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v5, self, v6, v7);

  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(v26, v8, v9, v10, v11);
  objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v13, HiddenStateForRowsOwnerUID, v13, v14);
  HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(v26, v15, v16, v17, v18);
  objc_msgSend_setHiddenStateExtentUid_(self->_columnHiddenStateExtent, v20, HiddenStateForColumnsOwnerUID, v20, v21);
  v22 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_didChangeExtentUids_(v22, v23, self, v24, v25);
}

- (TSKUIDStruct)hiddenStateOwnerForRowsUID
{
  v5 = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)hiddenStateOwnerForColumnsUID
{
  v5 = objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a2, v2, v3, v4);
  result._upper = v6;
  result._lower = v5;
  return result;
}

- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  if (a3._lower != objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a2, a3._lower, a3._upper, v3) || upper != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v9, self, v10, v11);

    objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v12, lower, upper, v13);
    v18 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v18, v14, self, v15, v16);
  }
}

- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  if (a3._lower != objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a2, a3._lower, a3._upper, v3) || upper != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v9, self, v10, v11);

    objc_msgSend_setHiddenStateExtentUid_(self->_columnHiddenStateExtent, v12, lower, upper, v13);
    v18 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v18, v14, self, v15, v16);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4
{
  v18 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v7, self, v8, v9);

  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_rowHiddenStateExtent, v10, a3, v18, v11);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_columnHiddenStateExtent, v12, a3, v18, v13);
  v14 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_didChangeExtentUids_(v14, v15, self, v16, v17);
}

- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)a3 dimension:(int64_t)a4
{
  v5 = 8;
  if (a4 == 1)
  {
    v5 = 16;
  }

  return objc_msgSend_isGroupOrParentsCollapsed_dimension_(*(&self->super.isa + v5), a2, a3, a4, v4);
}

- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)a3 dimension:(int64_t)a4
{
  v5 = 8;
  if (a4 == 1)
  {
    v5 = 16;
  }

  return objc_msgSend_isGroupCollapsedAndVisible_dimension_(*(&self->super.isa + v5), a2, a3, a4, v4);
}

- (void)setRowGroupUID:(const TSKUIDStruct *)a3 asCollapsed:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_setGroupUID_asCollapsed_, a3, v4, v17);
}

- (void)setColumnGroupUID:(const TSKUIDStruct *)a3 asCollapsed:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_setGroupUID_asCollapsed_, a3, v4, v17);
}

- (id)collapseSummaryRowGroupUIDs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_collapseSummaryGroupUIDs_(self->_rowHiddenStateExtent, v15, v4, v16, v17);

  return v18;
}

- (id)expandSummaryRowGroupUIDs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_expandSummaryGroupUIDs_(self->_rowHiddenStateExtent, v15, v4, v16, v17);

  return v18;
}

- (id)collapseSummaryColumnGroupUIDs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_collapseSummaryGroupUIDs_(self->_columnHiddenStateExtent, v15, v4, v16, v17);

  return v18;
}

- (id)expandSummaryColumnGroupUIDs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_expandSummaryGroupUIDs_(self->_columnHiddenStateExtent, v15, v4, v16, v17);

  return v18;
}

- (id)applyCollapseExpandState:(id)a3 outUndoState:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  v21 = objc_msgSend_dimension(v6, v17, v18, v19, v20);
  v24 = 8;
  if (v21 == 1)
  {
    v24 = 16;
  }

  v25 = objc_msgSend_applyCollapseExpandState_outUndoState_(*(&self->super.isa + v24), v22, v6, a4, v23);

  return v25;
}

- (void)setFilterSetForRows:(id)a3
{
  v17 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  objc_msgSend_setFilterSet_(self->_rowHiddenStateExtent, v14, v17, v15, v16);
}

- (id)duplicateFilterSetInUidFormWithTable:(id)a3
{
  v5 = objc_msgSend_duplicateFilterSetInUidFormWithTable_(self->_rowHiddenStateExtent, a2, a3, v3, v4);

  return v5;
}

- (void)mutateFormulaFiltersWithTable:(id)a3 usingBlock:(id)a4
{
  v19 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  objc_msgSend_mutateFormulaFiltersWithTable_usingBlock_(self->_rowHiddenStateExtent, v17, v19, v6, v18);
}

- (void)enableFilterSet:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  if (!v3)
  {
    objc_msgSend_clearAllFiltered(self, v15, v16, v17, v18);
  }

  objc_msgSend_enableFilterSet_(self->_rowHiddenStateExtent, v15, v3, v17, v18);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_enableFilterSet_(columnHiddenStateExtent, v19, v3, v20, v21);
}

- (void)setFilterSetType:(int)a3
{
  v3 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  objc_msgSend_setFilterSetType_(self->_rowHiddenStateExtent, v15, v3, v16, v17);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_setFilterSetType_(columnHiddenStateExtent, v18, v3, v19, v20);
}

- (BOOL)hasActiveFilters
{
  if (objc_msgSend_hasActiveFilters(self->_rowHiddenStateExtent, a2, v2, v3, v4))
  {
    return 1;
  }

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_hasActiveFilters(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (void)filterSetUpdated
{
  objc_msgSend_filterSetUpdated(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_filterSetUpdated(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (void)dirtyFilterState
{
  objc_msgSend_dirtyFilterState(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_dirtyFilterState(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (void)dirtyFilterStateForHeaders
{
  objc_msgSend_dirtyFilterStateForHeaders(self->_rowHiddenStateExtent, a2, v2, v3, v4);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_dirtyFilterStateForHeaders(columnHiddenStateExtent, v6, v7, v8, v9);
}

- (BOOL)hasHiddenColumnsOrRows
{
  if (objc_msgSend_anyCollapsed(self->_rowHiddenStateExtent, a2, v2, v3, v4) & 1) != 0 || (objc_msgSend_anyCollapsed(self->_columnHiddenStateExtent, v6, v7, v8, v9) & 1) != 0 || (objc_msgSend_anyHidden(self->_rowHiddenStateExtent, v10, v11, v12, v13))
  {
    return 1;
  }

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_anyHidden(columnHiddenStateExtent, v14, v15, v16, v17);
}

- (void)insertNewRowsInBaseRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14, v15);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_insertBaseRange_, location, length, v16);
}

- (void)insertNewColumnsInBaseRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14, v15);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_insertBaseRange_, location, length, v16);
}

- (void)deleteRowsFromBaseRange:(_NSRange)a3 rowUids:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length, a4);
}

- (void)deleteColumnsFromBaseRange:(_NSRange)a3 columnUids:(const void *)a4
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length, a4);
}

- (void)moveViewColumnRange:(_NSRange)a3 toColumnIndex:(TSUViewColumnIndex)a4
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveViewRangeOnlyFrom_toIndex_, location, length, a4.var0);
}

- (void)moveBaseRowRange:(_NSRange)a3 toRowIndex:(TSUModelRowIndex)a4
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length, a4._row);
}

- (void)moveBaseColumnRange:(_NSRange)a3 toColumnIndex:(TSUModelColumnIndex)a4
{
  length = a3.length;
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length, a4._column);
}

- (void)swapBaseRowAtIndex:(TSUModelRowIndex)a3 withRowAtIndex:(TSUModelRowIndex)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_swapBaseIndex_withIndex_, a3._row, a4._row, v17);
}

- (void)copyFromHiddenStates:(id)a3 forRange:(TSUCellRect)a4 withContext:(id)a5 isWholeTableCopy:(BOOL)a6
{
  size = a4.size;
  origin = a4.origin;
  v93 = a3;
  v11 = a5;
  if (v93)
  {
    v92 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    v26 = origin.row == 0x7FFFFFFF;
    v91 = *&origin & 0xFFFF00000000;
    if (v26 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
    {
      row = 0;
    }

    else
    {
      row = origin.row;
    }

    if (!HIDWORD(*&size))
    {
      v26 = 1;
    }

    if (v26)
    {
      v28 = 0x7FFFFFFF;
    }

    else
    {
      v28 = origin.row + size.numberOfRows - 1;
    }

    for (; row <= v28; row = (row + 1))
    {
      v62 = objc_msgSend_hidingActionForRowAtIndex_(v93, v22, row, v24, v25, v91);
      v63 = v62;
      if (v62)
      {
        if ((v62 & 0x16) == 0 || a6) && ((objc_msgSend_sharedTableConfiguration(TSTConfiguration, v22, v23, v24, v25), v64 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_supportsCategorization(v64, v65, v66, v67, v68), (v63 & 4) == 0) ? (v70 = 1) : (v70 = v69), v64, (v70))
        {
          v73 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v22, v71, v72, v25);
          if (objc_msgSend_supportsPivotTables(v73, v74, v75, v76, v77))
          {
          }

          else
          {

            v63 = (v63 & 0x14) != 0 ? 1 : v63;
          }
        }

        else
        {
          v63 = 1;
        }

        if ((objc_msgSend_hideRowAtIndex_forAction_(self, v22, (row - origin.row), v63, v25) & 1) == 0)
        {
          v78 = MEMORY[0x277D81150];
          v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTHiddenStates copyFromHiddenStates:forRange:withContext:isWholeTableCopy:]", v24, v25);
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStates.mm", v81, v82);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 946, 0, "Failed to hide row during copy.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
        }
      }
    }

    if (origin.row != 0x7FFFFFFF && v91 == 0x7FFF00000000)
    {
      column = 0;
    }

    else
    {
      column = origin.column;
    }

    if (size.numberOfColumns)
    {
      v31 = origin.column == 0x7FFF;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v32 = 0x7FFF;
    }

    else
    {
      v32 = LOWORD(size.numberOfColumns) + origin.column - 1;
    }

    for (; column <= v32; ++column)
    {
      v33 = objc_msgSend_hidingActionForColumnAtIndex_(v93, v22, column, v24, v25, v91);
      v34 = v33;
      if (v33)
      {
        if ((v33 & 0x16) == 0 || a6)
        {
          v36 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v22, v23, v24, v25);
          if (objc_msgSend_supportsPivotTables(v36, v37, v38, v39, v40))
          {
          }

          else
          {

            v34 = (v34 & 0x14) != 0 ? 1 : v34;
          }

          v35 = objc_msgSend_hideColumnAtIndex_forAction_(self, v41, (column - origin.column), v34, v42);
        }

        else
        {
          v35 = objc_msgSend_hideColumnAtIndex_forAction_(self, v22, (column - origin.column), 1, v25);
        }

        if ((v35 & 1) == 0)
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTHiddenStates copyFromHiddenStates:forRange:withContext:isWholeTableCopy:]", v24, v25);
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStates.mm", v46, v47);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 958, 0, "Failed to hide column during copy.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
        }
      }
    }

    if (a6)
    {
      v54 = objc_msgSend_filterSetForRows(v93, v22, v23, v24, v25);
      v58 = objc_msgSend_copyWithContext_(v54, v55, v92, v56, v57);
    }

    else
    {
      v89 = [TSTTableFilterSet alloc];
      v58 = objc_msgSend_initWithFilterRules_type_context_(v89, v90, 0, 0, v92);
    }

    objc_msgSend_setFilterSetForRows_(self, v59, v58, v60, v61, v91);

    v11 = v92;
  }
}

- (TSTHiddenStatesOwner)hiddenStatesOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);

  return WeakRetained;
}

@end