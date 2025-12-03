@interface TSTHiddenStates
+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range;
- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action;
- (BOOL)hasActiveFilters;
- (BOOL)hasHiddenColumnsOrRows;
- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension;
- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension;
- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action;
- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action;
- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action;
- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action;
- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn;
- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow;
- (TSKUIDStruct)hiddenStateOwnerForColumnsUID;
- (TSKUIDStruct)hiddenStateOwnerForRowsUID;
- (TSTHiddenStates)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner;
- (TSTHiddenStates)initWithHiddenStatesOwner:(id)owner shouldRegister:(BOOL)register;
- (TSTHiddenStatesOwner)hiddenStatesOwner;
- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range;
- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState;
- (id)collapseSummaryColumnGroupUIDs:(id)ds;
- (id)collapseSummaryRowGroupUIDs:(id)ds;
- (id)duplicateFilterSetInUidFormWithTable:(id)table;
- (id)expandSummaryColumnGroupUIDs:(id)ds;
- (id)expandSummaryRowGroupUIDs:(id)ds;
- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range;
- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range;
- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleColumnsInCellRegion:(id)region;
- (id)indexesOfVisibleColumnsInColumnRange:(id)range;
- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)range;
- (id)indexesOfVisibleRowsInCellRegion:(id)region;
- (id)indexesOfVisibleRowsInRowRange:(id)range;
- (id)translator;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index;
- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)range;
- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)range;
- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)range;
- (void)clearAllFiltered;
- (void)clearAllPivotHiddenAndInvalidate:(BOOL)invalidate;
- (void)copyFromHiddenStates:(id)states forRange:(TSUCellRect)range withContext:(id)context isWholeTableCopy:(BOOL)copy;
- (void)deleteColumnsFromBaseRange:(_NSRange)range columnUids:(const void *)uids;
- (void)deleteRowsFromBaseRange:(_NSRange)range rowUids:(const void *)uids;
- (void)dirtyFilterState;
- (void)dirtyFilterStateForHeaders;
- (void)enableFilterSet:(BOOL)set;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)filterSetUpdated;
- (void)hideColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)hideRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)insertNewColumnsInBaseRange:(_NSRange)range;
- (void)insertNewRowsInBaseRange:(_NSRange)range;
- (void)invalidateAllCollapsed;
- (void)invalidateViewGeometry;
- (void)loadIndexesFromTable:(id)table;
- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index;
- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index;
- (void)moveViewColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index;
- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)setColumnGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setFilterSetForRows:(id)rows;
- (void)setFilterSetType:(int)type;
- (void)setFormulaOwnerUIDsWithMap:(id)map;
- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)d;
- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)d;
- (void)setRowGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed;
- (void)setTableModel:(id)model;
- (void)showColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)showRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate;
- (void)swapBaseRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex;
- (void)syncUpHiddenStateFormulaOwnerUIDs;
- (void)unregisterFromCalcEngine;
- (void)willChangeGroupByTo:(id)to;
@end

@implementation TSTHiddenStates

+ (id)mutableIndexSetByIntersecting:(id)intersecting withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  intersectingCopy = intersecting;
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
  objc_msgSend_enumerateRangesInRange_options_usingBlock_(intersectingCopy, v11, location, length, 0, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (TSTHiddenStates)initWithHiddenStatesOwner:(id)owner shouldRegister:(BOOL)register
{
  registerCopy = register;
  ownerCopy = owner;
  v27.receiver = self;
  v27.super_class = TSTHiddenStates;
  v7 = [(TSTHiddenStates *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_hiddenStatesOwner, ownerCopy);
    v9 = [TSTHiddenStateExtent alloc];
    v12 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v9, v10, ownerCopy, 1, v11);
    rowHiddenStateExtent = v8->_rowHiddenStateExtent;
    v8->_rowHiddenStateExtent = v12;

    v14 = [TSTHiddenStateExtent alloc];
    v17 = objc_msgSend_initWithHiddenStatesOwner_forRows_(v14, v15, ownerCopy, 0, v16);
    columnHiddenStateExtent = v8->_columnHiddenStateExtent;
    v8->_columnHiddenStateExtent = v17;

    if (registerCopy)
    {
      v26[0] = objc_msgSend_baseTableUID(ownerCopy, v19, v20, v21, v22);
      v26[1] = v23;
      objc_msgSend_registerHiddenStates_baseOwnerUID_(ownerCopy, v23, v8, v26, v24);
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

- (void)loadIndexesFromTable:(id)table
{
  tableCopy = table;
  if (tableCopy)
  {
    v10 = tableCopy;
    objc_msgSend_loadIndexesFromTable_(self->_rowHiddenStateExtent, tableCopy, tableCopy, v5, v6);
    objc_msgSend_loadIndexesFromTable_(self->_columnHiddenStateExtent, v7, v10, v8, v9);
    self->_loadedIndexesAfterUnarchive = 1;
    tableCopy = v10;
  }
}

- (TSTHiddenStates)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forHiddenStatesOwner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  shouldRegister = objc_msgSend_initWithHiddenStatesOwner_shouldRegister_(self, v10, ownerCopy, 0, v11);
  if (shouldRegister)
  {
    v13 = [TSTHiddenStateExtent alloc];
    if (*(archive + 4))
    {
      v15 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v13, v14, *(archive + 4), unarchiverCopy, ownerCopy);
    }

    else
    {
      v15 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v13, v14, &TST::_HiddenStateExtentArchive_default_instance_, unarchiverCopy, ownerCopy);
    }

    columnHiddenStateExtent = shouldRegister->_columnHiddenStateExtent;
    shouldRegister->_columnHiddenStateExtent = v15;

    v17 = [TSTHiddenStateExtent alloc];
    if (*(archive + 5))
    {
      v19 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v17, v18, *(archive + 5), unarchiverCopy, ownerCopy);
    }

    else
    {
      v19 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v17, v18, &TST::_HiddenStateExtentArchive_default_instance_, unarchiverCopy, ownerCopy);
    }

    rowHiddenStateExtent = shouldRegister->_rowHiddenStateExtent;
    shouldRegister->_rowHiddenStateExtent = v19;

    v21 = objc_storeWeak(&shouldRegister->_hiddenStatesOwner, ownerCopy);
    v29[0] = objc_msgSend_baseTableUID(ownerCopy, v22, v23, v24, v25);
    v29[1] = v26;
    objc_msgSend_registerHiddenStates_baseOwnerUID_(ownerCopy, v26, shouldRegister, v29, v27);
  }

  return shouldRegister;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v24._lower = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, v7, v8, v9, v10);
  v24._upper = v11;
  *(archive + 4) |= 1u;
  v12 = *(archive + 3);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(archive + 3) = v12;
  }

  TSKUIDStruct::saveToMessage(&v24, v12);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  *(archive + 4) |= 2u;
  v17 = *(archive + 4);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v18);
    *(archive + 4) = v17;
  }

  objc_msgSend_encodeToArchive_archiver_(columnHiddenStateExtent, v14, v17, archiverCopy, v15, v24._lower, v24._upper);
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  *(archive + 4) |= 4u;
  v22 = *(archive + 5);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive>(v23);
    *(archive + 5) = v22;
  }

  objc_msgSend_encodeToArchive_archiver_(rowHiddenStateExtent, v19, v22, archiverCopy, v20);
}

- (BOOL)hideRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(rowHiddenStateExtent, v17, index, actionCopy, v18);
}

- (BOOL)showRowAtIndex:(unsigned int)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(rowHiddenStateExtent, v17, index, actionCopy, v18);
}

- (BOOL)hideColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_hideAtViewIndex_forAction_(columnHiddenStateExtent, v17, indexCopy, actionCopy, v18);
}

- (BOOL)showColumnAtIndex:(unsigned __int16)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  indexCopy = index;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return objc_msgSend_showAtViewIndex_forAction_(columnHiddenStateExtent, v17, indexCopy, actionCopy, v18);
}

- (void)hideRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v22, indexesCopy, actionCopy, v23);
    if (invalidateCopy)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, indexesCopy, 1, v34);
    }
  }
}

- (void)showRowsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_showAtViewIndexes_forAction_(self->_rowHiddenStateExtent, v22, indexesCopy, actionCopy, v23);
    if (invalidateCopy)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, indexesCopy, 1, v34);
    }
  }
}

- (void)hideColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_hideAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v22, indexesCopy, actionCopy, v23);
    if (invalidateCopy)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, indexesCopy, 0, v34);
    }
  }
}

- (void)showColumnsAtIndexes:(id)indexes forAction:(unsigned __int8)action invalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  actionCopy = action;
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v8, v9, v10, v11))
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    v17 = objc_msgSend_tableModel(WeakRetained, v13, v14, v15, v16);
    objc_msgSend_willModify(v17, v18, v19, v20, v21);

    objc_msgSend_showAtViewIndexes_forAction_(self->_columnHiddenStateExtent, v22, indexesCopy, actionCopy, v23);
    if (invalidateCopy)
    {
      v24 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
      v29 = objc_msgSend_tableModel(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_tableInfo(v29, v30, v31, v32, v33);
      objc_msgSend_invalidateForChangingIndexes_isRow_forTable_(TSTHiddenStates, v35, indexesCopy, 0, v34);
    }
  }
}

- (BOOL)hideBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_hideAtBaseIndex_forAction_, index._row, actionCopy, v17);
}

- (BOOL)showBaseRowAtIndex:(TSUModelRowIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  return MEMORY[0x2821F9670](rowHiddenStateExtent, sel_showAtBaseIndex_forAction_, index._row, actionCopy, v17);
}

- (BOOL)hideBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_hideAtBaseIndex_forAction_, index._column, actionCopy, v17);
}

- (BOOL)showBaseColumnAtIndex:(TSUModelColumnIndex)index forAction:(unsigned __int8)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  return MEMORY[0x2821F9670](columnHiddenStateExtent, sel_showAtBaseIndex_forAction_, index._column, actionCopy, v17);
}

- (void)clearAllPivotHiddenAndInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  v64 = objc_msgSend_mutablePivotHiddenIndexes(self->_rowHiddenStateExtent, v14, v15, v16, v17);
  v22 = objc_msgSend_mutablePivotHiddenIndexes(self->_columnHiddenStateExtent, v18, v19, v20, v21);
  objc_msgSend_clearAllPivotHidden(self->_rowHiddenStateExtent, v23, v24, v25, v26);
  objc_msgSend_clearAllPivotHidden(self->_columnHiddenStateExtent, v27, v28, v29, v30);
  if (invalidateCopy)
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

- (id)indexesOfHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfUserHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfFilteredRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfFilteredInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfFilteredColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v7 = objc_msgSend_indexesOfFilteredInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfVisibleInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInCellRegion:(id)region
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
  objc_msgSend_enumerateRowRangesUsingBlock_(region, a2, v7, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)indexesOfUserVisibleRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfUserVisibleInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleRowsInRowRange:(id)range
{
  v5 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_rowHiddenStateExtent, a2, range, v3, v4);

  return v5;
}

- (id)indexesOfCollapsedRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  v7 = objc_msgSend_indexesOfCollapsedInRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfCollapsedColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v7 = objc_msgSend_indexesOfCollapsedInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (unsigned)numberOfHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_numberOfHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (unsigned)numberOfUserHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_numberOfUserHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenRowsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  rangeCopy = range;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v6 = TSUCellRect::rows(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_forAction_(rowHiddenStateExtent, v7, v6, v7, actionCopy);
}

- (id)indexesOfHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v7 = objc_msgSend_indexesOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfUserHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v7 = objc_msgSend_indexesOfUserHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  v7 = objc_msgSend_indexesOfVisibleInRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (id)indexesOfVisibleColumnsInCellRegion:(id)region
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
  objc_msgSend_enumerateColumnRangesUsingBlock_(region, a2, v7, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)indexesOfVisibleColumnsInColumnRange:(id)range
{
  v5 = objc_msgSend_indexesOfVisibleIndexesInIndexes_(self->_columnHiddenStateExtent, a2, range, v3, v4);

  return v5;
}

- (unsigned)numberOfHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_numberOfHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range
{
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (BOOL)anyHiddenColumnsInCellRange:(TSUCellRect)range forAction:(unsigned __int8)action
{
  actionCopy = action;
  rangeCopy = range;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v6 = TSUCellRect::columns(&rangeCopy);
  return objc_msgSend_anyHiddenInRange_forAction_(columnHiddenStateExtent, v7, v6, v7, actionCopy);
}

- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_indexOfVisibleBeforeIndex_(self->_columnHiddenStateExtent, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_indexOfVisibleBeforeAndIncludingIndex_(self->_columnHiddenStateExtent, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_indexOfVisibleAfterIndex_(self->_columnHiddenStateExtent, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v5 = objc_msgSend_indexOfVisibleAfterAndIncludingIndex_(self->_columnHiddenStateExtent, a2, index, v3, v4);
  if (v5 == 0x7FFFFFFF)
  {
    return 0x7FFF;
  }

  else
  {
    return v5;
  }
}

- (TSUModelColumnIndex)numberOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5, v6);
}

- (id)indexesOfHiddenColumnsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  columnHiddenStateExtent = self->_columnHiddenStateExtent;
  v4 = TSUCellRect::columns(&var0);
  v7 = objc_msgSend_indexesOfHiddenInBaseRange_(columnHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (TSUModelRowIndex)numberOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (TSUModelRowIndex)numberOfUserHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  return objc_msgSend_numberOfUserHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);
}

- (id)indexesOfHiddenRowsInBaseCellRange:(TSUModelCellRect)range
{
  var0 = range.var0;
  rowHiddenStateExtent = self->_rowHiddenStateExtent;
  v4 = TSUCellRect::rows(&var0);
  v7 = objc_msgSend_indexesOfHiddenInBaseRange_(rowHiddenStateExtent, v5, v4, v5, v6);

  return v7;
}

- (TSCERangeRef)referenceToHiddenStateFromRow:(SEL)row toRow:(unsigned int)toRow
{
  toRowCopy = toRow;
  v8 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, row, *&toRow, *&a5, v5);
  retstr->range._topLeft = toRowCopy;
  retstr->range._bottomRight = v8;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (TSCERangeRef)referenceToHiddenStateFromColumn:(SEL)column toColumn:(unsigned __int16)toColumn
{
  toColumnCopy = toColumn;
  v8 = a5;
  result = objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, column, toColumn, a5, v5);
  retstr->range._topLeft = toColumnCopy;
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

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v9 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_rowHiddenStateExtent, v7, engineCopy, d, v8);
  v12 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_columnHiddenStateExtent, v10, engineCopy, d, v11);
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

- (void)setTableModel:(id)model
{
  modelCopy = model;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_setTableModel_(WeakRetained, v5, modelCopy, v6, v7);

  objc_msgSend_setupAfterUnarchive(self->_rowHiddenStateExtent, v8, v9, v10, v11);
  objc_msgSend_setupAfterUnarchive(self->_columnHiddenStateExtent, v12, v13, v14, v15);
  if (modelCopy)
  {
    objc_msgSend_loadIndexesFromTable_(self, v16, modelCopy, v17, v18);
    objc_msgSend_upgradeHiddenStates(modelCopy, v19, v20, v21, v22);
  }
}

- (void)willChangeGroupByTo:(id)to
{
  toCopy = to;
  objc_msgSend_willChangeGroupByTo_(self->_rowHiddenStateExtent, v4, toCopy, v5, v6);
  objc_msgSend_willChangeGroupByTo_(self->_columnHiddenStateExtent, v7, toCopy, v8, v9);
}

- (void)setFormulaOwnerUIDsWithMap:(id)map
{
  mapCopy = map;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v5, self, v6, v7);

  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(mapCopy, v8, v9, v10, v11);
  objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v13, HiddenStateForRowsOwnerUID, v13, v14);
  HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(mapCopy, v15, v16, v17, v18);
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

- (void)setHiddenStateOwnerForRowsUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (d._lower != objc_msgSend_hiddenStateExtentUid(self->_rowHiddenStateExtent, a2, d._lower, d._upper, v3) || upper != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v9, self, v10, v11);

    objc_msgSend_setHiddenStateExtentUid_(self->_rowHiddenStateExtent, v12, lower, upper, v13);
    v18 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v18, v14, self, v15, v16);
  }
}

- (void)setHiddenStateOwnerForColumnsUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (d._lower != objc_msgSend_hiddenStateExtentUid(self->_columnHiddenStateExtent, a2, d._lower, d._upper, v3) || upper != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_willChangeExtentUids_(WeakRetained, v9, self, v10, v11);

    objc_msgSend_setHiddenStateExtentUid_(self->_columnHiddenStateExtent, v12, lower, upper, v13);
    v18 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
    objc_msgSend_didChangeExtentUids_(v18, v14, self, v15, v16);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_willChangeExtentUids_(WeakRetained, v7, self, v8, v9);

  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_rowHiddenStateExtent, v10, map, engineCopy, v11);
  objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self->_columnHiddenStateExtent, v12, map, engineCopy, v13);
  v14 = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  objc_msgSend_didChangeExtentUids_(v14, v15, self, v16, v17);
}

- (BOOL)isGroupOrParentsCollapsed:(const TSKUIDStruct *)collapsed dimension:(int64_t)dimension
{
  v5 = 8;
  if (dimension == 1)
  {
    v5 = 16;
  }

  return objc_msgSend_isGroupOrParentsCollapsed_dimension_(*(&self->super.isa + v5), a2, collapsed, dimension, v4);
}

- (BOOL)isGroupCollapsedAndVisible:(const TSKUIDStruct *)visible dimension:(int64_t)dimension
{
  v5 = 8;
  if (dimension == 1)
  {
    v5 = 16;
  }

  return objc_msgSend_isGroupCollapsedAndVisible_dimension_(*(&self->super.isa + v5), a2, visible, dimension, v4);
}

- (void)setRowGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_setGroupUID_asCollapsed_, d, collapsedCopy, v17);
}

- (void)setColumnGroupUID:(const TSKUIDStruct *)d asCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_setGroupUID_asCollapsed_, d, collapsedCopy, v17);
}

- (id)collapseSummaryRowGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_collapseSummaryGroupUIDs_(self->_rowHiddenStateExtent, v15, dsCopy, v16, v17);

  return v18;
}

- (id)expandSummaryRowGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_expandSummaryGroupUIDs_(self->_rowHiddenStateExtent, v15, dsCopy, v16, v17);

  return v18;
}

- (id)collapseSummaryColumnGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_collapseSummaryGroupUIDs_(self->_columnHiddenStateExtent, v15, dsCopy, v16, v17);

  return v18;
}

- (id)expandSummaryColumnGroupUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  v18 = objc_msgSend_expandSummaryGroupUIDs_(self->_columnHiddenStateExtent, v15, dsCopy, v16, v17);

  return v18;
}

- (id)applyCollapseExpandState:(id)state outUndoState:(id *)undoState
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  v21 = objc_msgSend_dimension(stateCopy, v17, v18, v19, v20);
  v24 = 8;
  if (v21 == 1)
  {
    v24 = 16;
  }

  v25 = objc_msgSend_applyCollapseExpandState_outUndoState_(*(&self->super.isa + v24), v22, stateCopy, undoState, v23);

  return v25;
}

- (void)setFilterSetForRows:(id)rows
{
  rowsCopy = rows;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v9 = objc_msgSend_tableModel(WeakRetained, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  objc_msgSend_setFilterSet_(self->_rowHiddenStateExtent, v14, rowsCopy, v15, v16);
}

- (id)duplicateFilterSetInUidFormWithTable:(id)table
{
  v5 = objc_msgSend_duplicateFilterSetInUidFormWithTable_(self->_rowHiddenStateExtent, a2, table, v3, v4);

  return v5;
}

- (void)mutateFormulaFiltersWithTable:(id)table usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  objc_msgSend_mutateFormulaFiltersWithTable_usingBlock_(self->_rowHiddenStateExtent, v17, tableCopy, blockCopy, v18);
}

- (void)enableFilterSet:(BOOL)set
{
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v10 = objc_msgSend_tableModel(WeakRetained, v6, v7, v8, v9);
  objc_msgSend_willModify(v10, v11, v12, v13, v14);

  if (!setCopy)
  {
    objc_msgSend_clearAllFiltered(self, v15, v16, v17, v18);
  }

  objc_msgSend_enableFilterSet_(self->_rowHiddenStateExtent, v15, setCopy, v17, v18);
  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  objc_msgSend_enableFilterSet_(columnHiddenStateExtent, v19, setCopy, v20, v21);
}

- (void)setFilterSetType:(int)type
{
  v3 = *&type;
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

- (void)insertNewRowsInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14, v15);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_insertBaseRange_, location, length, v16);
}

- (void)insertNewColumnsInBaseRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9, v10);
  objc_msgSend_willModify(v11, v12, v13, v14, v15);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_insertBaseRange_, location, length, v16);
}

- (void)deleteRowsFromBaseRange:(_NSRange)range rowUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length, uids);
}

- (void)deleteColumnsFromBaseRange:(_NSRange)range columnUids:(const void *)uids
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_deleteBaseRange_withUids_, location, length, uids);
}

- (void)moveViewColumnRange:(_NSRange)range toColumnIndex:(TSUViewColumnIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveViewRangeOnlyFrom_toIndex_, location, length, index.var0);
}

- (void)moveBaseRowRange:(_NSRange)range toRowIndex:(TSUModelRowIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length, index._row);
}

- (void)moveBaseColumnRange:(_NSRange)range toColumnIndex:(TSUModelColumnIndex)index
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v13 = objc_msgSend_tableModel(WeakRetained, v9, v10, v11, v12);
  objc_msgSend_willModify(v13, v14, v15, v16, v17);

  columnHiddenStateExtent = self->_columnHiddenStateExtent;

  MEMORY[0x2821F9670](columnHiddenStateExtent, sel_moveBaseRangeFrom_toIndex_, location, length, index._column);
}

- (void)swapBaseRowAtIndex:(TSUModelRowIndex)index withRowAtIndex:(TSUModelRowIndex)atIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);
  v12 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  rowHiddenStateExtent = self->_rowHiddenStateExtent;

  MEMORY[0x2821F9670](rowHiddenStateExtent, sel_swapBaseIndex_withIndex_, index._row, atIndex._row, v17);
}

- (void)copyFromHiddenStates:(id)states forRange:(TSUCellRect)range withContext:(id)context isWholeTableCopy:(BOOL)copy
{
  size = range.size;
  origin = range.origin;
  statesCopy = states;
  contextCopy = context;
  if (statesCopy)
  {
    v92 = contextCopy;
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
      v62 = objc_msgSend_hidingActionForRowAtIndex_(statesCopy, v22, row, v24, v25, v91);
      v63 = v62;
      if (v62)
      {
        if ((v62 & 0x16) == 0 || copy) && ((objc_msgSend_sharedTableConfiguration(TSTConfiguration, v22, v23, v24, v25), v64 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_supportsCategorization(v64, v65, v66, v67, v68), (v63 & 4) == 0) ? (v70 = 1) : (v70 = v69), v64, (v70))
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
      v33 = objc_msgSend_hidingActionForColumnAtIndex_(statesCopy, v22, column, v24, v25, v91);
      v34 = v33;
      if (v33)
      {
        if ((v33 & 0x16) == 0 || copy)
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

    if (copy)
    {
      v54 = objc_msgSend_filterSetForRows(statesCopy, v22, v23, v24, v25);
      v58 = objc_msgSend_copyWithContext_(v54, v55, v92, v56, v57);
    }

    else
    {
      v89 = [TSTTableFilterSet alloc];
      v58 = objc_msgSend_initWithFilterRules_type_context_(v89, v90, 0, 0, v92);
    }

    objc_msgSend_setFilterSetForRows_(self, v59, v58, v60, v61, v91);

    contextCopy = v92;
  }
}

- (TSTHiddenStatesOwner)hiddenStatesOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_hiddenStatesOwner);

  return WeakRetained;
}

@end