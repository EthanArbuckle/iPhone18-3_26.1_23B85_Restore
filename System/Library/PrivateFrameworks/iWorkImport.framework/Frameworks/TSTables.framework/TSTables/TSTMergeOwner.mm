@interface TSTMergeOwner
+ (vector<TSUCellRect,)mergeListFromModelMergeList:()vector<TSUCellRect;
- (BOOL)find:(TSUModelCellRect)a3;
- (BOOL)hasMergeRangeSpanningRowsForBaseCellRect:(TSUModelCellRect)a3;
- (BOOL)hasMergeRanges;
- (BOOL)hasMergeRangesIntersectingBaseCellRect:(const TSUModelCellRect *)a3;
- (BOOL)hasMergeRangesIntersectingBaseCellRegion:(id)a3;
- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)a3;
- (BOOL)hasRangeSpanningRowsForCellRegion:(id)a3;
- (BOOL)insertBaseMergeRange:(TSUModelCellRect)a3;
- (BOOL)insertBaseMergeRangeRemovingOverlaps:(TSUModelCellRect)a3;
- (BOOL)isEmpty;
- (BOOL)isValidMergeRange:(TSUModelCellRect)a3;
- (BOOL)mergeRangesPartiallyIntersectBaseCellRect:(TSUModelCellRect)a3;
- (BOOL)mergeRangesPartiallyIntersectBaseCellRegion:(id)a3;
- (TSCECalculationEngine)calculationEngine;
- (TSKUIDStruct)ownerUID;
- (TSTMergeChangeDistributor)mergeChangeDistributor;
- (TSTMergeOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forTableModel:(id)a5;
- (TSTMergeOwner)initWithTableModel:(id)a3;
- (TSTMergeOwner)initWithTableModel:(id)a3 ownerUID:(const TSKUIDStruct *)a4;
- (TSTTableModel)tableModel;
- (TSUModelCellCoord)mergeOriginForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)a3;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3;
- (TSUModelCellRect)p_growRangeFrom:(TSUModelCellRect)a3 toDesired:(TSUModelCellRect)a4;
- (TSUModelCellRect)rewroteFormula:(id)a3 atCoordinate:(TSUModelCellCoord)a4 withRewriteSpec:(id)a5 isUndo:(BOOL)a6;
- (id).cxx_construct;
- (id)allMergesAsString;
- (id)expandBaseCellRegionToCoverMergedCells:(id)a3;
- (id)linkedResolver;
- (id)mergeActionForBaseCellRegion:(id)a3;
- (id)mergeActionForBaseCellRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4;
- (id)mergeIndexesForBaseCellRegion:(id)a3;
- (id)mergeIndexesForRange:(TSUModelCellRect)a3;
- (id)mergedGridIndicesForDimension:(int64_t)a3;
- (id)p_growReturningInverseForAction:(id)a3 formulaReplacer:(id)a4;
- (id)p_shrinkMergesAtIndexes:(id)a3 intersectedByBaseRegion:(id)a4 formulaReplacer:(id)a5;
- (id)p_shrinkReturningInverseForAction:(id)a3 formulaReplacer:(id)a4;
- (id)performActionReturningInverse:(id)a3 formulaReplacer:(id)a4;
- (id)removeReturningInverseForBaseCellRegion:(id)a3;
- (id)shrinkReturningInverseForBaseCellRegion:(id)a3;
- (id)shrinkReturningInverseForBaseCellRegion:(id)a3 formulaReplacer:(id)a4;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (unint64_t)count;
- (vector<TSUModelCellRect,)allValidMergesForMergeList:()vector<TSUModelCellRect;
- (vector<TSUModelCellRect,)mergeRanges;
- (vector<TSUModelCellRect,)mergeRangesAndCrumbsIntersectingBaseCellRect:(TSTMergeOwner *)self;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTMergeOwner *)self;
- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTMergeOwner *)self;
- (void)clearAllMergeRanges;
- (void)commitRewritingTransaction;
- (void)enumerateMergeFormulasUsingBlock:(id)a3;
- (void)enumerateMergesIntersectingBaseCellRegion:(id)a3 usingBlock:(id)a4;
- (void)loadMergeCache;
- (void)openRewritingTransaction;
- (void)p_dirtyCellsForMerge:(const TSUModelCellRect *)a3;
- (void)p_enumerateMergesUsingBlock:(id)a3;
- (void)p_moveCellFromCellCoord:(TSUModelCellCoord)a3 toCellCoord:(TSUModelCellCoord)a4;
- (void)p_updateOriginMapWithSourceCellCoord:(TSUModelCellCoord)a3 destCellCoord:(TSUModelCellCoord)a4;
- (void)reloadMergeCacheForIndexes:(id)a3;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4;
- (void)removeBaseMergeRange:(TSUModelCellRect)a3;
- (void)resetMergeCache;
- (void)resetMergeOriginMap;
- (void)rewriteMergesForInsertedRange:(_NSRange)a3 uids:(const void *)a4 isRows:(BOOL)a5;
- (void)rewriteMergesForRemovedRange:(_NSRange)a3 uids:(const void *)a4 isRows:(BOOL)a5;
- (void)rollbackToMark:(unint64_t)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setOwnerUID:(TSKUIDStruct)a3;
- (void)unregisterFromCalcEngine;
@end

@implementation TSTMergeOwner

- (TSTMergeOwner)initWithTableModel:(id)a3 ownerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = TSTMergeOwner;
  v7 = [(TSTMergeOwner *)&v31 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_tableModel, v6);
    if (*a4 == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTMergeOwner initWithTableModel:ownerUID:]", v10, v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v15, v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 87, 0, "valid ownerUID is required");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    v8->_ownerUID = *a4;
    v23 = [TSTFormulaStore alloc];
    v26 = objc_msgSend_initWithOwnerUID_(v23, v24, a4->_lower, a4->_upper, v25);
    formulaStore = v8->_formulaStore;
    v8->_formulaStore = v26;

    v8->_mergeCacheLoaded = 0;
    v28 = objc_alloc_init(TSTCellRangeCache);
    mergeRangeCache = v8->_mergeRangeCache;
    v8->_mergeRangeCache = v28;
  }

  return v8;
}

- (TSTMergeOwner)initWithTableModel:(id)a3
{
  v4 = a3;
  *&v17 = objc_msgSend_tableUID(v4, v5, v6, v7, v8);
  *(&v17 + 1) = v9;
  v18[0] = sub_2212C4930(&v17, 5, v10, v11, v12);
  v18[1] = v13;
  v15 = objc_msgSend_initWithTableModel_ownerUID_(self, v13, v4, v18, v14);

  return v15;
}

- (TSTMergeChangeDistributor)mergeChangeDistributor
{
  mergeChangeDistributor = self->_mergeChangeDistributor;
  if (!mergeChangeDistributor)
  {
    v4 = objc_opt_new();
    v5 = self->_mergeChangeDistributor;
    self->_mergeChangeDistributor = v4;

    mergeChangeDistributor = self->_mergeChangeDistributor;
  }

  return mergeChangeDistributor;
}

- (void)rollbackToMark:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8, v9);

  objc_msgSend_rollbackToMark_(self->_formulaStore, v10, a3, v11, v12);

  objc_msgSend_resetMergeCache(self, v13, v14, v15, v16);
}

- (id)allMergesAsString
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  v11 = objc_msgSend_mergeRangeCache(self, v7, v8, v9, v10);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_221397900;
  v26[3] = &unk_2784611F8;
  v12 = v6;
  v27 = v12;
  objc_msgSend_enumerateCacheItemsUsingBlock_(v11, v13, v26, v14, v15);

  v20 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v16, v17, v18, v19);
  v24 = objc_msgSend_stringByTrimmingCharactersInSet_(v12, v21, v20, v22, v23);

  return v24;
}

- (TSTMergeOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forTableModel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18[0] = TSKUIDStruct::loadFromMessage();
  v18[1] = v10;
  v12 = objc_msgSend_initWithTableModel_ownerUID_(self, v10, v9, v18, v11);
  if (v12 && (*(a3 + 16) & 2) != 0)
  {
    v13 = [TSTFormulaStore alloc];
    if (*(a3 + 4))
    {
      v15 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v13, v14, &v12->_ownerUID, *(a3 + 4), v8);
    }

    else
    {
      v15 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v13, v14, &v12->_ownerUID, &TST::_FormulaStoreArchive_default_instance_, v8);
    }

    formulaStore = v12->_formulaStore;
    v12->_formulaStore = v15;
  }

  return v12;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v13 = a4;
  *(a3 + 4) |= 1u;
  v6 = *(a3 + 3);
  if (!v6)
  {
    v7 = *(a3 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x223DA0300](v7);
    *(a3 + 3) = v6;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v6);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(a3 + 4) |= 2u;
    v11 = *(a3 + 4);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v12);
      *(a3 + 4) = v11;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v8, v11, v13, v9);
  }
}

- (void)setOwnerUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v7, v8, v9, v10);

  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {

    objc_msgSend_setFormulaOwnerUID_(formulaStore, v11, lower, upper, v12);
  }
}

- (void)resetMergeOriginMap
{
  sub_2210BE918(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_);

  sub_2210BE918(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_);
}

- (id)mergeIndexesForRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTMergeOwner mergeIndexesForRange:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 209, 0, "The tableModel must be set on the mergeOwner before this API can be used.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_loadMergeCache(self, v5, v6, v7, v8, *&var0.origin, *&var0.size);
  if (TSUCellRect::isValid(&var0))
  {
    v22 = objc_msgSend_indexesForRange_(self->_mergeRangeCache, v20, *&var0.origin, *&var0.size, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)mergeIndexesForBaseCellRegion:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_221397E90;
  v24 = sub_221397EA0;
  v25 = 0;
  if (objc_msgSend_isValid(v4, v5, v6, v7, v8) && (objc_msgSend_isEmpty(v4, v9, v10, v11, v12) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_221397EA8;
    v19[3] = &unk_2784611A8;
    v19[4] = self;
    v19[5] = &v20;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v4, v14, v19, v15, v16);
    objc_autoreleasePoolPop(v13);
  }

  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (unint64_t)count
{
  objc_msgSend_loadMergeCache(self, a2, v2, v3, v4);
  mergeRangeCache = self->_mergeRangeCache;

  return objc_msgSend_count(mergeRangeCache, v6, v7, v8, v9);
}

- (BOOL)isEmpty
{
  objc_msgSend_loadMergeCache(self, a2, v2, v3, v4);
  mergeRangeCache = self->_mergeRangeCache;

  return objc_msgSend_isEmpty(mergeRangeCache, v6, v7, v8, v9);
}

- (void)p_updateOriginMapWithSourceCellCoord:(TSUModelCellCoord)a3 destCellCoord:(TSUModelCellCoord)a4
{
  v17 = a4;
  v18 = a3;
  if (a3._coord.row != a4._coord.row || ((*&a4 ^ *&a3) & 0x101FFFF00000000) != 0)
  {
    v5 = sub_221087F14(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &v18);
    if (v5)
    {
      v6 = v5;
      v16 = v5[3];
      v19 = &v16;
      v7 = sub_22139DE94(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &v16);
      v7[3] = v17;
      sub_2210CDD3C(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, v6);
      v19 = &v17;
      p_reverseOriginsMap = &self->_reverseOriginsMap;
      v9 = &v17;
    }

    else
    {
      v10 = sub_221087F14(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &v17);
      if (!v10)
      {
        v19 = &v18;
        v15 = sub_22139DE94(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, &v18);
        v15[3] = v17;
        v19 = &v17;
        v13 = sub_22139DE94(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &v17);
        v14 = v18;
        goto LABEL_8;
      }

      v11 = v10;
      v16 = v10[3];
      v19 = &v16;
      v12 = sub_22139DE94(&self->_reverseOriginsMap.__table_.__bucket_list_.__ptr_, &v16);
      v12[3] = v18;
      sub_2210CDD3C(&self->_mergeOriginsMap.__table_.__bucket_list_.__ptr_, v11);
      v19 = &v18;
      p_reverseOriginsMap = &self->_mergeOriginsMap;
      v9 = &v18;
    }

    v13 = sub_22139DE94(p_reverseOriginsMap, v9);
    v14 = v16;
LABEL_8:
    v13[3] = v14;
  }
}

- (void)p_moveCellFromCellCoord:(TSUModelCellCoord)a3 toCellCoord:(TSUModelCellCoord)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v42 = objc_msgSend_cellAtBaseCellCoord_(WeakRetained, v8, *&a3, v9, v10);

  if (v42)
  {
    v13 = objc_loadWeakRetained(&self->_tableModel);
    v18 = objc_msgSend_newCell(v13, v14, v15, v16, v17);

    objc_msgSend_clear(v18, v19, v20, v21, v22);
    objc_msgSend_copyJustStrokesToCell_(v42, v23, v18, v24, v25);
    objc_msgSend_clearStrokes(v42, v26, v27, v28, v29);
    v30 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v30, v31, v18, *&a3, 0, 0);

    v32 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(v32, v33, v42, *&a4, 0, 0);

    if (TSULogCat_IsCategoryEnabled() && objc_msgSend_hasFormula(v42, v34, v35, v36, v37))
    {
      objc_msgSend_formulaObject(v42, v38, v39, v40, v41);
    }
  }

  objc_msgSend_p_updateOriginMapWithSourceCellCoord_destCellCoord_(self, v11, *&a3, *&a4, v12);
}

- (id)p_shrinkMergesAtIndexes:(id)a3 intersectedByBaseRegion:(id)a4 formulaReplacer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_msgSend_count(v8, v11, v12, v13, v14))
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x4812000000;
    v60 = sub_221398600;
    v61 = sub_221398624;
    v62 = &unk_22188E88F;
    memset(v63, 0, sizeof(v63));
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_221398650;
    v56[3] = &unk_278463AC8;
    v56[4] = self;
    v56[5] = &v57;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v9, v15, v56, v16, v17);
    v18 = [TSTMergeAction alloc];
    v21 = objc_msgSend_initWithType_uidRanges_(v18, v19, 4, (v58 + 6), v20);
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x9812000000;
    v54[3] = sub_2213987B4;
    v54[4] = nullsub_57;
    v54[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
    v53.coordinate = 0;
    v53._tableUID._lower = objc_msgSend_ownerUID(self, v23, v24, v25, v26);
    v53._tableUID._upper = v27;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v55, WeakRetained, &v53);

    v28 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v28, v29, v30, v31, v32);

    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = sub_221398804;
    v47 = &unk_278463AF0;
    v48 = self;
    v52 = v54;
    v33 = v21;
    v49 = v33;
    v50 = v9;
    v51 = v10;
    objc_msgSend_enumerateIndexesUsingBlock_(v8, v34, &v44, v35, v36);
    if (objc_msgSend_hasMergeFormulas(v33, v37, v38, v39, v40, v44, v45, v46, v47, v48))
    {
      v41 = v33;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    _Block_object_dispose(v54, 8);
    _Block_object_dispose(&v57, 8);
    v54[0] = v63;
    sub_2210BC30C(v54);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (id)mergeActionForBaseCellRegion:(id)a3
{
  v4 = objc_msgSend_mergeActionForBaseCellRegion_nonOriginPartialsOnly_(self, a2, a3, 0, v3);

  return v4;
}

- (id)mergeActionForBaseCellRegion:(id)a3 nonOriginPartialsOnly:(BOOL)a4
{
  v6 = a3;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4812000000;
  v49 = sub_221398600;
  v50 = sub_221398624;
  v51 = &unk_22188E88F;
  memset(v52, 0, sizeof(v52));
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_221398DF4;
  v45[3] = &unk_278463AC8;
  v45[4] = self;
  v45[5] = &v46;
  objc_msgSend_enumerateModelCellRectsUsingBlock_(v6, v7, v45, v8, v9);
  v10 = [TSTMergeAction alloc];
  v13 = objc_msgSend_initWithType_uidRanges_(v10, v11, 4, (v47 + 6), v12);
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  if (WeakRetained)
  {
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x9812000000;
    v43[3] = sub_2213987B4;
    v43[4] = nullsub_57;
    v43[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v15 = objc_loadWeakRetained(&self->_calculationEngine);
    v42.coordinate = 0;
    v42._tableUID._lower = objc_msgSend_ownerUID(self, v16, v17, v18, v19);
    v42._tableUID._upper = v20;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v44, v15, &v42);

    v24 = objc_msgSend_mergeIndexesForBaseCellRegion_(self, v21, v6, v22, v23);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_221398F30;
    v37[3] = &unk_278463B18;
    v37[4] = self;
    v41 = a4;
    v38 = v6;
    v40 = v43;
    v39 = v13;
    objc_msgSend_enumerateIndexesUsingBlock_(v24, v25, v37, v26, v27);

    _Block_object_dispose(v43, 8);
  }

  v28 = v13;
  v33 = objc_msgSend_mergeFormulas(v28, v29, v30, v31, v32);
  if (v33[1] == *v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v13;
  }

  v35 = v34;

  _Block_object_dispose(&v46, 8);
  v43[0] = v52;
  sub_2210BC30C(v43);

  return v35;
}

- (BOOL)isValidMergeRange:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  if (TSUCellRect::isValid(&var0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTMergeOwner isValidMergeRange:]", v8, v9);
      v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v3, 420, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    }

    v20 = objc_msgSend_tableModel(self, v6, v7, v8, v9);
    v25 = objc_msgSend_tableInfo(v20, v21, v22, v23, v24);
    hasActiveFilters = objc_msgSend_hasActiveFilters(v25, v26, v27, v28, v29);
    if (hasActiveFilters)
    {
      if (var0.size.numberOfRows <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = objc_msgSend_tableInfo(v20, v30, v31, v32, v33);
      if ((objc_msgSend_isCategorized(v3, v36, v37, v38, v39) & 1) == 0 || var0.size.numberOfRows < 2)
      {

LABEL_15:
LABEL_16:
        v63.origin = objc_msgSend_tableAreaForBaseCellCoord_(v20, v42, *&var0.origin, v43, v44);
        v45 = TSUCellRect::bottomRight(&var0);
        v62 = objc_msgSend_tableAreaForBaseCellCoord_(v20, v46, v45, v47, v48);
        sub_2210F73F8(&v63);
        sub_2210F73F8(&v62);
        if (*&v63.origin == v62)
        {
          v53 = objc_msgSend_tableInfo(v20, v49, v50, v51, v52);
          v58 = objc_msgSend_hiddenStates(v53, v54, v55, v56, v57);

          v35 = (var0.size.numberOfRows < 2 || !objc_msgSend_numberOfHiddenRowsInBaseCellRange_(v58, v59, *&var0.origin, *&var0.size, v60)) && ((var0.size.numberOfColumns & 0xFFFE) == 0 || !objc_msgSend_numberOfHiddenColumnsInBaseCellRange_(v58, v59, *&var0.origin, *&var0.size, v60));
          goto LABEL_25;
        }

LABEL_22:
        v35 = 0;
LABEL_25:

        return v35;
      }
    }

    v63.origin = objc_msgSend_bodyRowRange(v20, v30, v31, v32, v33);
    v63.size = v40;
    v41 = TSUCellRect::intersects(&v63, &var0);
    if ((hasActiveFilters & 1) == 0)
    {
    }

    if (v41)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  return 0;
}

- (void)reloadMergeCacheForIndexes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  if (WeakRetained && self->_formulaStore && self->_mergeRangeCache)
  {

    if (v4)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2213993A8;
      v9[3] = &unk_27845E958;
      v9[4] = self;
      objc_msgSend_enumerateIndexesUsingBlock_(v4, v6, v9, v7, v8);
    }
  }

  else
  {
  }
}

- (void)resetMergeCache
{
  self->_mergeCacheLoaded = 0;
  objc_msgSend_clear(self->_mergeRangeCache, a2, v2, v3, v4);

  objc_msgSend_loadMergeCache(self, v6, v7, v8, v9);
}

- (void)loadMergeCache
{
  if (!self->_mergeCacheLoaded)
  {
    formulaStore = self->_formulaStore;
    if (formulaStore)
    {
      self->_mergeCacheLoaded = 1;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_221399540;
      v6[3] = &unk_278460990;
      v6[4] = self;
      objc_msgSend_foreach_(formulaStore, a2, v6, v2, v3);
    }
  }
}

- (void)p_dirtyCellsForMerge:(const TSUModelCellRect *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_tableModel);

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_tableModel);
      v13 = objc_msgSend_calcEngine(v8, v9, v10, v11, v12);
      v14 = j__TSUCellRectToTSCERangeCoordinate(*&a3->var0.origin, *&a3->var0.size);
      v16 = v15;
      v17 = objc_loadWeakRetained(&self->_tableModel);
      v42[0] = objc_msgSend_tableUID(v17, v18, v19, v20, v21);
      v42[1] = v22;
      v23 = objc_loadWeakRetained(&self->_tableModel);
      v28 = objc_msgSend_headerRowRange(v23, v24, v25, v26, v27);
      v30 = j__TSUCellRectToTSCERangeCoordinate(v28, v29);
      v32 = v31;
      v33 = objc_loadWeakRetained(&self->_tableModel);
      v38 = objc_msgSend_headerColumnRange(v33, v34, v35, v36, v37);
      v40 = j__TSUCellRectToTSCERangeCoordinate(v38, v39);
      objc_msgSend_dirtyCellsForMergingRange_forTable_headerRowRange_headerColumnRange_(v13, v41, v14, v16, v42, v30, v32, v40, v41);
    }
  }
}

- (BOOL)insertBaseMergeRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v68 = a3;
  isValidMergeRange = objc_msgSend_isValidMergeRange_(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (WeakRetained)
  {
    if (!isValidMergeRange)
    {
      return isValidMergeRange;
    }

    goto LABEL_5;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTMergeOwner insertBaseMergeRange:]", v11, v12);
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v16, v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 504, 0, "invalid nil value for '%{public}s'", "_tableModel");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  if (isValidMergeRange)
  {
LABEL_5:
    objc_msgSend_loadMergeCache(self, v9, v10, v11, v12);
    Index = objc_msgSend_reserveNextIndex(self->_formulaStore, v24, v25, v26, v27);
    formulaStore = self->_formulaStore;
    v30 = objc_loadWeakRetained(&self->_tableModel);
    v67[0] = objc_msgSend_tableUID(v30, v31, v32, v33, v34);
    v67[1] = v35;
    v36 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v35, origin, size, Index, v67);

    v37 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v37, v38, v39, v40, v41);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v42, v36, Index, v43);
    v48 = objc_msgSend_mergeRangeCache(self, v44, v45, v46, v47);
    objc_msgSend_setCellRange_atIndex_(v48, v49, origin, size, Index);

    v52 = objc_msgSend_mergeIndexesForRange_(self, v50, origin, size, v51);
    objc_msgSend_reloadMergeCacheForIndexes_(self, v53, v52, v54, v55);
    objc_msgSend_p_dirtyCellsForMerge_(self, v56, &v68, v57, v58);
    v63 = objc_msgSend_mergeChangeDistributor(self, v59, v60, v61, v62);
    objc_msgSend_didMergeRange_(v63, v64, *&v68.var0.origin, *&v68.var0.size, v65);
  }

  return isValidMergeRange;
}

- (BOOL)insertBaseMergeRangeRemovingOverlaps:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  var0 = a3.var0;
  isValidMergeRange = objc_msgSend_isValidMergeRange_(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  if (isValidMergeRange)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(self, v7, origin, size, v8);
    if (v32 == v33)
    {
      objc_msgSend_insertBaseMergeRange_(self, v32, *&var0.origin, *&var0.size, v10);
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = &v30;
      __p = 0;
      v27 = 0;
      sub_2211E5AD4(&__p, v32, v33, (v33 - v32) >> 4);
      v13 = v32;
      v14 = v33;
      while (v13 != v14)
      {
        objc_msgSend_removeBaseMergeRange_(self, v11, *v13, v13[1], v12);
        sub_2212E4518(&v29, v13);
        v13 += 2;
      }

      sub_2212E4518(&v29, &var0);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (v31)
      {
        do
        {
          v22 = *(v29 + 28);
          sub_2212E4768(&v29, &v22);
          v21 = 0uLL;
          if (v23 == v24)
          {
            v21 = v22;
          }

          else
          {
            *&v21 = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
            *(&v21 + 1) = v15;
          }

          if (TSUCellRect::isValid(&v21) && (DWORD2(v21) * HIDWORD(v21)) >= 2)
          {
            sub_221083454(&v23, &v21);
          }
        }

        while (v31);
        v18 = v23;
        v19 = v24;
        if (v23 != v24)
        {
          do
          {
            objc_msgSend_insertBaseMergeRange_(self, v16, *v18, v18[1], v17, v21);
            v18 += 2;
          }

          while (v18 != v19);
          v18 = v23;
        }

        if (v18)
        {
          v24 = v18;
          operator delete(v18);
        }
      }

      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      sub_2210BC9F8(&v29, v30);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }

  return isValidMergeRange;
}

- (void)removeBaseMergeRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v7 = objc_msgSend_mergeIndexesForRange_(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  if (objc_msgSend_count(v7, v8, v9, v10, v11) != 1)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTMergeOwner removeBaseMergeRange:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 577, 0, "Unexpectedly not just removing one range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v27, v28, v29, v30);

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_221399D28;
  v41[3] = &unk_27845E958;
  v41[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v7, v31, v41, v32, v33);
  v38 = objc_msgSend_mergeChangeDistributor(self, v34, v35, v36, v37);
  objc_msgSend_didUnmergeRange_(v38, v39, origin, size, v40);
}

- (id)performActionReturningInverse:(id)a3 formulaReplacer:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_verify(v6, v8, v9, v10, v11);
  if (!v6)
  {
    v25 = 0;
    objc_msgSend_verify(0, v12, v13, v14, v15);
    goto LABEL_9;
  }

  v16 = objc_msgSend_type(v6, v12, v13, v14, v15);
  if (v16 == 3)
  {
    v20 = objc_msgSend_p_shrinkReturningInverseForAction_formulaReplacer_(self, v17, v6, v7, v19);
    goto LABEL_7;
  }

  if (v16 == 4)
  {
    v20 = objc_msgSend_p_growReturningInverseForAction_formulaReplacer_(self, v17, v6, v7, v19);
LABEL_7:
    v25 = v20;
    objc_msgSend_verify(v20, v21, v22, v23, v24);
    goto LABEL_9;
  }

  v26 = MEMORY[0x277D81150];
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTMergeOwner performActionReturningInverse:formulaReplacer:]", v18, v19);
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v29, v30);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 597, 0, "Invalid merge action");

  v25 = 0;
  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  objc_msgSend_verify(0, v37, v38, v39, v40);
LABEL_9:

  return v25;
}

- (id)removeReturningInverseForBaseCellRegion:(id)a3
{
  v4 = a3;
  if (!objc_msgSend_count(self, v5, v6, v7, v8))
  {
    goto LABEL_12;
  }

  v9 = objc_opt_new();
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_22139A36C;
  v72[3] = &unk_278463B40;
  v72[4] = self;
  v10 = v9;
  v73 = v10;
  objc_msgSend_enumerateModelCellRectsUsingBlock_(v4, v11, v72, v12, v13);
  v65 = 0;
  v66 = &v65;
  v67 = 0x4812000000;
  v68 = sub_221398600;
  v69 = sub_221398624;
  v70 = &unk_22188E88F;
  memset(v71, 0, sizeof(v71));
  v58 = 0;
  v59 = &v58;
  v60 = 0x4812000000;
  v61 = sub_22139A380;
  v62 = sub_22139A3A4;
  v63 = &unk_22188E88F;
  memset(v64, 0, sizeof(v64));
  v49 = 0;
  v50 = &v49;
  v51 = 0x4812000000;
  v52 = sub_22139A3D0;
  v53 = sub_22139A3F4;
  v54 = &unk_22188E88F;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x9812000000;
  v47[3] = sub_2213987B4;
  v47[4] = nullsub_57;
  v47[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v46.coordinate = 0;
  v46._tableUID._lower = objc_msgSend_ownerUID(self, v15, v16, v17, v18);
  v46._tableUID._upper = v19;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v48, WeakRetained, &v46);

  v20 = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(v20, v21, v22, v23, v24);

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_22139A40C;
  v45[3] = &unk_278463B68;
  v45[4] = self;
  v45[5] = v47;
  v45[6] = &v65;
  v45[7] = &v58;
  v45[8] = &v49;
  objc_msgSend_enumerateIndexesUsingBlock_(v10, v25, v45, v26, v27);
  v29 = v59[6];
  v28 = v59[7];
  if (v28 != v29)
  {
    v30 = [TSTMergeAction alloc];
    self = objc_msgSend_initWithType_uidRanges_(v30, v31, 4, (v66 + 6), v32);
    v36 = v59[6];
    v37 = v59[7];
    while (v36 != v37)
    {
      v38 = *v36;
      objc_msgSend_addFormula_(self, v39, v38, v40, v41);

      ++v36;
    }

    v42 = v50[6];
    v43 = v50[7];
    while (v42 != v43)
    {
      objc_msgSend_addFormulaIndex_(self, v33, *v42++, v34, v35);
    }
  }

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v58, 8);
  v47[0] = v64;
  sub_22107C2C0(v47);
  _Block_object_dispose(&v65, 8);
  v47[0] = v71;
  sub_2210BC30C(v47);

  if (v28 == v29)
  {
LABEL_12:
    self = 0;
  }

  return self;
}

- (id)shrinkReturningInverseForBaseCellRegion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v8 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_formulaReplacer_(self, v6, v4, WeakRetained, v7);

  return v8;
}

- (id)shrinkReturningInverseForBaseCellRegion:(id)a3 formulaReplacer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10, v11);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTMergeOwner shrinkReturningInverseForBaseCellRegion:formulaReplacer:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 686, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_loadWeakRetained(&self->_calculationEngine);

  if (v28)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22139A954;
    v36[3] = &unk_278463B40;
    v36[4] = self;
    v29 = v12;
    v37 = v29;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v6, v30, v36, v31, v32);
    v34 = objc_msgSend_p_shrinkMergesAtIndexes_intersectedByBaseRegion_formulaReplacer_(self, v33, v29, v6, v7);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)p_shrinkReturningInverseForAction:(id)a3 formulaReplacer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_invalidRegion(TSTCellRegion, v8, v9, v10, v11);
  v13 = v6;
  v18 = objc_msgSend_uidRanges(v13, v14, v15, v16, v17);
  v21 = *v18;
  v22 = v18[1];
  if (*v18 == v22)
  {
    v36 = v12;
  }

  else
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_tableModel);
      v28 = objc_msgSend_columnRowUIDMap(WeakRetained, v24, v25, v26, v27);
      v32 = objc_msgSend_cellRegionForUIDRange_(v28, v29, v21, v30, v31);
      v36 = objc_msgSend_regionByAddingRegion_(v12, v33, v32, v34, v35);

      v21 += 48;
      v12 = v36;
    }

    while (v21 != v22);
  }

  v37 = objc_msgSend_shrinkReturningInverseForBaseCellRegion_formulaReplacer_(self, v19, v36, v7, v20);

  return v37;
}

- (TSUModelCellRect)p_growRangeFrom:(TSUModelCellRect)a3 toDesired:(TSUModelCellRect)a4
{
  var0 = a3.var0;
  v58 = a4.var0;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTMergeOwner p_growRangeFrom:toDesired:]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 715, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  origin = 0x7FFF7FFFFFFFLL;
  if (TSUCellRect::isValid(&v58))
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_221397E90;
    v56 = sub_221397EA0;
    v21 = objc_loadWeakRetained(&self->_tableModel);
    v57 = objc_msgSend_regionForValueOrCommentCellsInBaseCellRect_(v21, v22, *&v58.origin, *&v58.size, v23);

    v28 = objc_msgSend_mergeRangeCache(self, v24, v25, v26, v27);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22139AE64;
    v49[3] = &unk_278463B90;
    v50 = var0;
    v51 = v58;
    v49[4] = &v52;
    objc_msgSend_enumerateCacheItemsIntersectingBaseCellRect_usingBlock_(v28, v29, *&v58.origin, *&v58.size, v49);

    if (TSUCellRect::isValid(&var0))
    {
      v33 = objc_msgSend_regionBySubtractingModelCellRect_(v53[5], v30, *&var0.origin, 0x100000001, v32);
      v34 = v53[5];
      v53[5] = v33;

      v39 = v53[5];
      if (v39)
      {
LABEL_10:
        objc_msgSend_modelCellRanges(v39, v35, v36, v37, v38);
        goto LABEL_16;
      }

      __p.origin = 0;
      __p.size = 0;
      v48 = 0;
    }

    else
    {
      if (v58.size.numberOfColumns * v58.size.numberOfRows < 2)
      {
        __p.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self, v30, *&v58.origin, v31, v32);
        __p.size = v43;
        if (TSUCellRect::isValid(&__p))
        {
          size = 0;
        }

        else
        {
          origin = v58.origin;
          size = v58.size;
        }

LABEL_18:
        _Block_object_dispose(&v52, 8);

        goto LABEL_19;
      }

      v41 = objc_msgSend_regionBySubtractingModelCellRect_(v53[5], v30, *&v58.origin, 0x100000001, v32);
      v42 = v53[5];
      v53[5] = v41;

      v39 = v53[5];
      if (v39)
      {
        goto LABEL_10;
      }

      __p.origin = 0;
      __p.size = 0;
      v48 = 0;
    }

LABEL_16:
    origin = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
    size = v44;
    if (__p.origin)
    {
      __p.size = __p.origin;
      operator delete(*&__p.origin);
    }

    goto LABEL_18;
  }

  size = 0;
LABEL_19:
  v45 = origin;
  v46 = size;
  result.var0.size = v46;
  result.var0.origin = v45;
  return result;
}

- (id)p_growReturningInverseForAction:(id)a3 formulaReplacer:(id)a4
{
  v6 = a3;
  v226 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  v228 = v6;
  if (!WeakRetained)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTMergeOwner p_growReturningInverseForAction:formulaReplacer:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 753, 0, "invalid nil value for '%{public}s'", "_tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(v22, v23, v24, v25, v26);

  v31 = objc_msgSend_invalidRegion(TSTCellRegion, v27, v28, v29, v30);
  v32 = v6;
  v37 = objc_msgSend_uidRanges(v32, v33, v34, v35, v36);
  v42 = *v37;
  v43 = v37[1];
  if (*v37 == v43)
  {
    v57 = v31;
  }

  else
  {
    do
    {
      v44 = objc_loadWeakRetained(&self->_tableModel);
      v49 = objc_msgSend_columnRowUIDMap(v44, v45, v46, v47, v48);
      v53 = objc_msgSend_cellRegionForUIDRange_(v49, v50, v42, v51, v52);
      v57 = objc_msgSend_regionByAddingRegion_(v31, v54, v53, v55, v56);

      v42 += 48;
      v31 = v57;
    }

    while (v42 != v43);
  }

  v245 = 0;
  v246 = 0;
  v247 = 0;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v58 = objc_msgSend_invalidRegion(TSTCellRegion, v38, v39, v40, v41);
  v59 = objc_loadWeakRetained(&self->_calculationEngine);
  v229 = v57;
  __p.coordinate = 0;
  __p._tableUID._lower = objc_msgSend_ownerUID(self, v60, v61, v62, v63);
  __p._tableUID._upper = v64;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v241, v59, &__p);

  v65 = v6;
  v70 = *objc_msgSend_mergeFormulaIndexes(v65, v66, v67, v68, v69);
  v71 = v6;
  v76 = objc_msgSend_mergeFormulas(v71, v72, v73, v74, v75);
  v80 = *v76;
  v227 = *(v76 + 8);
  if (*v76 != v227)
  {
    v81 = v70;
    do
    {
      v82 = *v80;
      v240 = 0x7FFFFFFFFFFFFFFFLL;
      v239 = xmmword_2217E18E0;
      v83 = v228;
      v230 = v82;
      if (v81 != *(objc_msgSend_mergeFormulaIndexes(v83, v84, v85, v86, v87) + 8))
      {
        v88 = *v81++;
        v240 = v88;
      }

      v89 = objc_loadWeakRetained(&self->_tableModel);
      v90 = sub_221387F30(v82, v89);

      v238 = 0uLL;
      if (objc_msgSend_isValid(v90, v91, v92, v93, v94))
      {
        *&v238 = objc_msgSend_boundingModelCellRect(v90, v95, v96, v97, v98);
        *(&v238 + 1) = v95;
      }

      else
      {
        v238 = xmmword_2217E18E0;
      }

      v99 = objc_msgSend_regionBySubtractingRegion_(v90, v95, v229, v97, v98);
      v103 = objc_msgSend_mergeIndexesForBaseCellRegion_(self, v100, v99, v101, v102);
      if (objc_msgSend_count(v103, v104, v105, v106, v107) == 1)
      {
        v237.origin = 0;
        v237.size = 0;
        mergeRangeCache = self->_mergeRangeCache;
        Index = objc_msgSend_firstIndex(v103, v108, v109, v110, v111);
        v237.origin = objc_msgSend_cellRangeAtIndex_(mergeRangeCache, v114, Index, v115, v116);
        v237.size = v117;
        v119 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v117, v238, *(&v238 + 1), v118);
        v123 = objc_msgSend_regionBySubtractingModelCellRegion_(v119, v120, v90, v121, v122);

        TSUModelCellRect::operator|=();
        if (!objc_msgSend_isValid(v123, v124, v125, v126, v127))
        {
          goto LABEL_22;
        }

        if (v123)
        {
          objc_msgSend_modelCellRanges(v123, v128, v129, v130, v131);
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        v132 = TSUModelCellRect::intersectsAll();
        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v132)
        {
LABEL_22:
          v239 = v237;
          v240 = objc_msgSend_firstIndex(v103, v128, v129, v130, v131);
        }
      }

      if ((objc_msgSend_isEmpty(v99, v108, v109, v110, v111) & 1) != 0 || TSUCellRect::isValid(&v239))
      {
        v237.origin = 0;
        v237.size = 0;
        v134 = self;
        v135 = objc_msgSend_p_growRangeFrom_toDesired_(self, v133, *&v239.origin, *&v239.size, v238, *(&v238 + 1));
        v136 = v81;
        v237.origin = v135;
        v237.size = v137;
        v139 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v137, v135, v137, v138);
        v140 = v58;
        v143 = objc_msgSend_regionBySubtractingModelCellRect_(v139, v141, *&v239.origin, *&v239.size, v142);

        if (TSUCellRect::isValid(&v237) && (v237.origin.row != v239.origin.row || ((*&v239.origin ^ *&v237.origin) & 0x101FFFF00000000) != 0 || *&v237.size != *&v239.size) && ((objc_msgSend_isEmpty(v229, v144, v145, v146, v147) & 1) != 0 || objc_msgSend_intersectsModelCellRect_(v229, v148, *&v237.origin, *&v237.size, v149)) && objc_msgSend_isValidMergeRange_(v134, v148, *&v237.origin, *&v237.size, v149) && (objc_msgSend_mergeIndexesForBaseCellRegion_(v134, v150, v143, v151, v152), v153 = objc_claimAutoreleasedReturnValue(), v158 = objc_msgSend_count(v153, v154, v155, v156, v157), v153, !v158))
        {
          if (TSUCellRect::isValid(&v239))
          {
            objc_msgSend_clearFormulaAtIndex_formulaReplacer_(v134->_formulaStore, v159, v240, v226, v162);
            objc_msgSend_removeCellRangeAtIndex_(v134->_mergeRangeCache, v163, v240, v164, v165);
          }

          else if (v240 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v240 = objc_msgSend_reserveNextIndex(v134->_formulaStore, v159, v160, v161, v162);
          }

          v58 = objc_msgSend_regionByAddingRegion_(v140, v159, v143, v161, v162);

          formulaStore = v134->_formulaStore;
          size = v237.size;
          origin = v237.origin;
          v222 = v240;
          v167 = objc_loadWeakRetained(&v134->_tableModel);
          __p.coordinate = objc_msgSend_tableUID(v167, v168, v169, v170, v171);
          __p._tableUID._lower = v172;
          v225 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v172, origin, size, v222, &__p);

          v81 = v136;
          __p.coordinate = objc_msgSend_coordFromIndex_(TSTFormulaStore, v173, v240, v174, v175);
          TSCEFormulaRewriteContext::setContainingCellCoord(&v241, &__p.coordinate);
          v179 = objc_msgSend_copyByRewritingReferencesToUidForm_(v225, v176, &v241, v177, v178);
          self = v134;
          v180 = v246;
          if (v246 >= v247)
          {
            v182 = v246 - v245;
            if ((v182 + 1) >> 61)
            {
              sub_22107C148();
            }

            v183 = (v247 - v245) >> 2;
            if (v183 <= v182 + 1)
            {
              v183 = v182 + 1;
            }

            if (v247 - v245 >= 0x7FFFFFFFFFFFFFF8)
            {
              v184 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v184 = v183;
            }

            v234 = &v245;
            if (v184)
            {
              sub_22107C1F0(&v245, v184);
            }

            __p.coordinate = 0;
            __p._tableUID._lower = 8 * v182;
            v233 = 0;
            *__p._tableUID._lower = v179;
            __p._tableUID._upper = 8 * v182 + 8;
            sub_22107C098(&v245, &__p);
            v181 = v246;
            sub_22107C26C(&__p);
          }

          else
          {
            *v246 = v179;
            v181 = v180 + 1;
          }

          v246 = v181;
          sub_2211531C0(&v242, &v240);
          objc_msgSend_setFormulaObject_atIndex_formulaReplacer_(v134->_formulaStore, v185, v225, v240, v226);
          v190 = objc_msgSend_mergeRangeCache(v134, v186, v187, v188, v189);
          objc_msgSend_setCellRange_atIndex_(v190, v191, *&v237.origin, *&v237.size, v240);

          if (TSUCellRect::isValid(&v239) && (v239.origin.row != v237.origin.row || ((*&v237.origin ^ *&v239.origin) & 0x101FFFF00000000) != 0))
          {
            objc_msgSend_p_moveCellFromCellCoord_toCellCoord_(v134, v192, *&v239.origin, *&v237.origin, v193);
          }

          v194 = objc_loadWeakRetained(&v134->_tableModel);
          *&__p.coordinate.row = v237;
          objc_msgSend_clearSpillCellsInRange_(v194, v195, &__p, v196, v197);

          objc_msgSend_p_dirtyCellsForMerge_(v134, v198, &v237, v199, v200);
          v205 = objc_msgSend_mergeChangeDistributor(v134, v201, v202, v203, v204);
          objc_msgSend_didMergeRange_(v205, v206, *&v237.origin, *&v237.size, v207);
        }

        else
        {
          if (TSULogCat_IsCategoryEnabled())
          {
            TSUCellRect::isValid(&v239);
          }

          v58 = v140;
          v81 = v136;
          self = v134;
        }
      }

      else if (TSULogCat_IsCategoryEnabled())
      {
        TSUCellRect::isValid(&v239);
      }

      ++v80;
    }

    while (v80 != v227);
  }

  if (v246 == v245)
  {
    v215 = 0;
    v208 = v228;
  }

  else
  {
    __p.coordinate = 0;
    __p._tableUID._lower = &__p;
    __p._tableUID._upper = 0x4812000000;
    v233 = sub_221398600;
    v234 = sub_221398624;
    v235 = &unk_22188E88F;
    memset(v236, 0, 24);
    v231[0] = MEMORY[0x277D85DD0];
    v231[1] = 3221225472;
    v231[2] = sub_22139B9F0;
    v231[3] = &unk_278463AC8;
    v231[4] = self;
    v231[5] = &__p;
    v208 = v228;
    objc_msgSend_enumerateModelCellRectsUsingBlock_(v58, v77, v231, v78, v79);
    v209 = [TSTMergeAction alloc];
    v215 = objc_msgSend_initWithType_uidRanges_(v209, v210, 3, __p._tableUID._lower + 48, v211);
    v216 = v245;
    if (v246 != v245)
    {
      v217 = 0;
      do
      {
        objc_msgSend_addFormula_(v215, v212, v216[v217], v213, v214);
        objc_msgSend_addFormulaIndex_(v215, v218, v242[v217++], v219, v220);
        v216 = v245;
      }

      while (v217 < v246 - v245);
    }

    _Block_object_dispose(&__p, 8);
    v239.origin = v236;
    sub_2210BC30C(&v239);
  }

  if (v242)
  {
    v243 = v242;
    operator delete(v242);
  }

  v241.var0 = &v245;
  sub_22107C2C0(&v241);

  return v215;
}

- (BOOL)find:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  v7 = objc_msgSend_mergeIndexesForRange_(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  if (objc_msgSend_count(v7, v8, v9, v10, v11))
  {
    for (i = objc_msgSend_firstIndex(v7, v12, v13, v14, v15); ; i = objc_msgSend_indexGreaterThanIndex_(v7, v29, i, v30, v31))
    {
      v21 = i != 0x7FFFFFFFFFFFFFFFLL;
      if (i == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v22 = objc_msgSend_mergeRangeCache(self, v16, v17, v18, v19);
      v26 = objc_msgSend_cellRangeAtIndex_(v22, v23, i, v24, v25);
      v28 = v27;

      if (origin.row == v26 && ((v26 ^ *&origin) & 0x101FFFF00000000) == 0 && size == v28)
      {
        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)p_enumerateMergesUsingBlock:(id)a3
{
  v16 = a3;
  objc_msgSend_loadMergeCache(self, v4, v5, v6, v7);
  v12 = objc_msgSend_mergeRangeCache(self, v8, v9, v10, v11);
  objc_msgSend_enumerateCacheItemsUsingBlock_(v12, v13, v16, v14, v15);
}

- (void)enumerateMergesIntersectingBaseCellRegion:(id)a3 usingBlock:(id)a4
{
  v18 = a3;
  v6 = a4;
  objc_msgSend_loadMergeCache(self, v7, v8, v9, v10);
  v15 = objc_msgSend_mergeRangeCache(self, v11, v12, v13, v14);
  objc_msgSend_enumerateCacheItemsIntersectingBaseCellRegion_usingBlock_(v15, v16, v18, v6, v17);
}

- (void)enumerateMergeFormulasUsingBlock:(id)a3
{
  v4 = a3;
  formulaStore = self->_formulaStore;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22139BDB8;
  v10[3] = &unk_278463BB8;
  v11 = v4;
  v6 = v4;
  objc_msgSend_foreach_(formulaStore, v7, v10, v8, v9);
}

- (id)mergedGridIndicesForDimension:(int64_t)a3
{
  objc_msgSend_loadMergeCache(self, a2, a3, v3, v4);
  v11 = objc_msgSend_mergeRangeCache(self, v7, v8, v9, v10);
  v15 = objc_msgSend_mergedGridIndicesForDimension_(v11, v12, a3, v13, v14);

  return v15;
}

- (vector<TSUModelCellRect,)allValidMergesForMergeList:()vector<TSUModelCellRect
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v5 = *a4;
  v6 = *(a4 + 1);
  if (*a4 != v6)
  {
    v7 = self;
    do
    {
      self = objc_msgSend_isValidMergeRange_(v7, a3, *v5, v5[1], v4);
      if (self)
      {
        self = TSUCellRect::isSingleCell(v5);
        if ((self & 1) == 0)
        {
          sub_221083454(retstr, v5);
        }
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  return self;
}

+ (vector<TSUCellRect,)mergeListFromModelMergeList:()vector<TSUCellRect
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    v7 = 0;
    do
    {
      cap = retstr->__cap_;
      if (v7 >= cap)
      {
        v9 = v7 - retstr->__begin_;
        if ((v9 + 1) >> 60)
        {
          sub_22107C148();
        }

        v10 = cap - retstr->__begin_;
        v11 = v10 >> 3;
        if (v10 >> 3 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_221086F74(retstr, v12);
        }

        *(16 * v9) = *v4;
        v7 = (16 * v9 + 16);
        v13 = retstr->__end_ - retstr->__begin_;
        v14 = (16 * v9 - v13);
        memcpy(v14, retstr->__begin_, v13);
        result = retstr->__begin_;
        retstr->__begin_ = v14;
        retstr->__end_ = v7;
        retstr->__cap_ = 0;
        if (result)
        {
          operator delete(result);
        }
      }

      else
      {
        *v7++ = *v4;
      }

      retstr->__end_ = v7;
      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

- (void)clearAllMergeRanges
{
  if ((objc_msgSend_isEmpty(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = objc_msgSend_tableModel(self, v6, v7, v8, v9);
    objc_msgSend_willModify(v10, v11, v12, v13, v14);

    objc_msgSend_mergeRanges(self, v15, v16, v17, v18);
    v21 = v22;
    if (v22 != v23)
    {
      do
      {
        objc_msgSend_removeBaseMergeRange_(self, v19, *v21, v21[1], v20);
        v21 += 2;
      }

      while (v21 != v23);
      v21 = v22;
    }

    if (v21)
    {
      operator delete(v21);
    }
  }
}

- (vector<TSUModelCellRect,)mergeRanges
{
  objc_msgSend_loadMergeCache(self, a3, v3, v4, v5);
  v11 = objc_msgSend_mergeRangeCache(self, v7, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend_mergeRanges(v11, v12, v13, v14, v15);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v12, &__p, v14, v15);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRect:(TSTMergeOwner *)self
{
  size = a4.var0.size;
  origin = a4.var0.origin;
  objc_msgSend_loadMergeCache(self, a3, *&a4.var0.origin, *&a4.var0.size, v4);
  v12 = objc_msgSend_mergeRangeCache(self, v8, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v12, v13, origin, size, v15);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v13, &__p, v14, v15);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingBaseCellRegion:(TSTMergeOwner *)self
{
  v5 = a4;
  objc_msgSend_loadMergeCache(self, v6, v7, v8, v9);
  v14 = objc_msgSend_mergeRangeCache(self, v10, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v14, v15, v5, v16, v17);
  }

  else
  {
    __p = 0;
    v21 = 0;
    v22 = 0;
  }

  objc_msgSend_allValidMergesForMergeList_(self, v15, &__p, v16, v17);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSUModelCellRect,)mergeRangesAndCrumbsIntersectingBaseCellRect:(TSTMergeOwner *)self
{
  size = a4.var0.size;
  origin = a4.var0.origin;
  objc_msgSend_loadMergeCache(self, a3, *&a4.var0.origin, *&a4.var0.size, v4);
  v13 = objc_msgSend_mergeRangeCache(self, v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_includeCrumbs_(v13, v14, origin, size, 1);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)hasMergeRanges
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (objc_msgSend_count(self, a2, v2, v3, v4))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22139C470;
    v11[3] = &unk_278461220;
    v11[4] = &v12;
    objc_msgSend_p_enumerateMergesUsingBlock_(self, v6, v11, v7, v8);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (BOOL)hasMergeRangesIntersectingBaseCellRect:(const TSUModelCellRect *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (objc_msgSend_hasMergeRanges(self, a2, a3, v3, v4))
  {
    v9 = objc_msgSend_regionFromModelCellRect_(TSTCellRegion, v7, *&a3->var0.origin, *&a3->var0.size, v8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22139C5CC;
    v14[3] = &unk_278461220;
    v14[4] = &v15;
    objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(self, v10, v9, v14, v11);
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v12;
}

- (BOOL)hasMergeRangesIntersectingBaseCellRegion:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (objc_msgSend_hasMergeRanges(self, v5, v6, v7, v8))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22139C6CC;
    v13[3] = &unk_278461220;
    v13[4] = &v14;
    objc_msgSend_enumerateMergesIntersectingBaseCellRegion_usingBlock_(self, v9, v4, v13, v10);
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(TSUModelCellCoord)a3
{
  objc_msgSend_loadMergeCache(self, a2, *&a3, v3, v4);
  mergeRangeCache = self->_mergeRangeCache;

  v11 = objc_msgSend_mergedRangeForBaseCellCoord_(mergeRangeCache, v7, *&a3, v8, v9);
  result.var0.size = v12;
  result.var0.origin = v11;
  return result;
}

- (TSUModelCellCoord)mergeOriginForBaseCellCoord:(TSUModelCellCoord)a3
{
  v5 = a3;
  if ((objc_msgSend_isEmpty(self, a2, *&a3, v3, v4) & 1) == 0)
  {
    v12.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self, v7, v5, v8, v9);
    v12.size = v10;
    if (TSUCellRect::isValid(&v12))
    {
      return v12.origin;
    }
  }

  return v5;
}

- (BOOL)mergeRangesPartiallyIntersectBaseCellRect:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  objc_msgSend_loadMergeCache(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v11 = objc_msgSend_mergeRangeCache(self, v7, v8, v9, v10);
  LOBYTE(size.numberOfColumns) = objc_msgSend_partiallyIntersectsBaseCellRect_(v11, v12, origin, *&size, v13);

  return size.numberOfColumns;
}

- (BOOL)mergeRangesPartiallyIntersectBaseCellRegion:(id)a3
{
  v4 = a3;
  objc_msgSend_loadMergeCache(self, v5, v6, v7, v8);
  v13 = objc_msgSend_mergeRangeCache(self, v9, v10, v11, v12);
  v17 = objc_msgSend_partiallyIntersectsBaseCellRegion_(v13, v14, v4, v15, v16);

  return v17;
}

- (BOOL)hasMergeRangeSpanningRowsForBaseCellRect:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  if (!TSUCellRect::isValid(&var0))
  {
    return 0;
  }

  objc_msgSend_loadMergeCache(self, v4, v5, v6, v7);
  v12 = objc_msgSend_mergeRangeCache(self, v8, v9, v10, v11);
  hasRangeSpanningRowsForCellRect = objc_msgSend_hasRangeSpanningRowsForCellRect_(v12, v13, *&var0.origin, *&var0.size, v14);

  return hasRangeSpanningRowsForCellRect;
}

- (TSUModelCellRect)expandBaseCellRectToCoverMergedCells:(TSUModelCellRect)a3
{
  var0 = a3.var0;
  if (TSUCellRect::isValid(&var0))
  {
    objc_msgSend_loadMergeCache(self, v4, v5, v6, v7);
    v12 = objc_msgSend_mergeRangeCache(self, v8, v9, v10, v11);
    origin = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v12, v13, *&var0.origin, *&var0.size, v14);
    size = v16;
  }

  else
  {
    origin = var0.origin;
    size = var0.size;
  }

  v18 = origin;
  v19 = size;
  result.var0.size = v19;
  result.var0.origin = v18;
  return result;
}

- (id)expandBaseCellRegionToCoverMergedCells:(id)a3
{
  v4 = a3;
  objc_msgSend_loadMergeCache(self, v5, v6, v7, v8);
  v13 = objc_msgSend_mergeRangeCache(self, v9, v10, v11, v12);
  v17 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v13, v14, v4, v15, v16);

  return v17;
}

- (BOOL)hasRangeSpanningRowsForCellRange:(TSUModelCellRect)a3
{
  size = a3.var0.size;
  origin = a3.var0.origin;
  objc_msgSend_loadMergeCache(self, a2, *&a3.var0.origin, *&a3.var0.size, v3);
  v11 = objc_msgSend_mergeRangeCache(self, v7, v8, v9, v10);
  LOBYTE(size.numberOfColumns) = objc_msgSend_hasRangeSpanningRowsForCellRange_(v11, v12, origin, *&size, v13);

  return size.numberOfColumns;
}

- (BOOL)hasRangeSpanningRowsForCellRegion:(id)a3
{
  v4 = a3;
  objc_msgSend_loadMergeCache(self, v5, v6, v7, v8);
  v13 = objc_msgSend_mergeRangeCache(self, v9, v10, v11, v12);
  hasRangeSpanningRowsForCellRegion = objc_msgSend_hasRangeSpanningRowsForCellRegion_(v13, v14, v4, v15, v16);

  return hasRangeSpanningRowsForCellRegion;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4
{
  v6 = a4;
  v7 = sub_221119F90(a3, &self->_ownerUID._lower);
  if (v7)
  {
    objc_msgSend_setOwnerUID_(self, v8, v7[4], v7[5], v11);
  }

  v12 = objc_msgSend_tableModel(self, v8, v9, v10, v11);
  objc_msgSend_willModify(v12, v13, v14, v15, v16);

  v21 = objc_msgSend_formulaStore(self, v17, v18, v19, v20);
  v26 = objc_msgSend_tableModel(self, v22, v23, v24, v25);
  v34[0] = objc_msgSend_tableUID(v26, v27, v28, v29, v30);
  v34[1] = v31;
  objc_msgSend_remapRangeFormulasToOwnerUID_(v21, v31, v34, v32, v33);
}

- (void)openRewritingTransaction
{
  v9 = objc_msgSend_mergeRangeCache(self, a2, v2, v3, v4);
  objc_msgSend_openRewritingTransaction(v9, v5, v6, v7, v8);
}

- (void)commitRewritingTransaction
{
  v9 = objc_msgSend_mergeRangeCache(self, a2, v2, v3, v4);
  objc_msgSend_commitRewritingTransaction(v9, v5, v6, v7, v8);
}

- (TSUModelCellRect)rewroteFormula:(id)a3 atCoordinate:(TSUModelCellCoord)a4 withRewriteSpec:(id)a5 isUndo:(BOOL)a6
{
  v44 = a4;
  v7 = a3;
  v42 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v8, v7, &v44, v9);
  v43 = v10;
  v13 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v10, &v44, v11, v12);
  v18 = objc_msgSend_mergeRangeCache(self, v14, v15, v16, v17);
  v41[0] = objc_msgSend_cellRangeAtIndex_(v18, v19, v13, v20, v21);
  v41[1] = v22;

  v23 = sub_2211E55F8(&v42, v41);
  v25 = v24;
  if ((objc_msgSend_isValidMergeRange_(self, v24, v42, v43, v26) & 1) == 0)
  {
    v31 = objc_msgSend_mergeRangeCache(self, v27, v28, v29, v30);
    objc_msgSend_removeCellRangeAtIndex_(v31, v32, v13, v33, v34);
  }

  v35 = objc_msgSend_mergeIndexesForRange_(self, v27, v23, v25, v30);
  objc_msgSend_reloadMergeCacheForIndexes_(self, v36, v35, v37, v38);

  v39 = v23;
  v40 = v25;
  result.var0.size = v40;
  result.var0.origin = v39;
  return result;
}

- (void)rewriteMergesForRemovedRange:(_NSRange)a3 uids:(const void *)a4 isRows:(BOOL)a5
{
  v5 = a5;
  if (a5)
  {
    if (a3.location >= 0xF423F)
    {
      location = 999999;
    }

    else
    {
      location = a3.location;
    }

    v9 = sub_22139D0D0(location, (1000000 - a3.location), a3.location, a3.length, a4);
  }

  else
  {
    if (a3.location >= 0x3E7)
    {
      v12 = 999;
    }

    else
    {
      v12 = a3.location;
    }

    v9 = sub_22139D234(v12, (1000 - a3.location), a3.location, a3.length, a4);
  }

  v13 = objc_msgSend_mergeIndexesForRange_(self, v10, v9, v10, v11);
  if (objc_msgSend_count(v13, v14, v15, v16, v17))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTMergeOwner rewriteMergesForRemovedRange:uids:isRows:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1154, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v33 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v33, v34, v35, v36, v37);
    v38 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModify(v38, v39, v40, v41, v42);

    v43 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_beginSuppressingWillModifyCalls(v43, v44, v45, v46, v47);

    v48 = [TSTFormulaRewriteSpec alloc];
    v74[0] = objc_msgSend_tableUID(v33, v49, v50, v51, v52);
    v74[1] = v53;
    v54 = objc_msgSend_initForRemoveRowsOrColumnsFromTable_rowColumnUuids_areRows_(v48, v53, v74, a4, v5);
    objc_msgSend_setCanBeNested_(v54, v55, 0, v56, v57);
    v58 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModifyTable_uidResolver_calcEngine_(v54, v59, v33, v33, v58);

    v60 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_didModifyTable_calcEngine_(v54, v61, v33, v60, v62);

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_22139D3A4;
    v72[3] = &unk_27845DE60;
    v72[4] = self;
    v63 = v54;
    v73 = v63;
    objc_msgSend_enumerateIndexesUsingBlock_(v13, v64, v72, v65, v66);
    v67 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_endSuppressingWillModifyCalls(v67, v68, v69, v70, v71);
  }
}

- (void)rewriteMergesForInsertedRange:(_NSRange)a3 uids:(const void *)a4 isRows:(BOOL)a5
{
  v5 = a5;
  if (a5)
  {
    if (a3.location >= 0xF423F)
    {
      location = 999999;
    }

    else
    {
      location = a3.location;
    }

    v9 = sub_22139D0D0(location, (1000000 - a3.location), a3.location, a3.length, a4);
  }

  else
  {
    if (a3.location >= 0x3E7)
    {
      v12 = 999;
    }

    else
    {
      v12 = a3.location;
    }

    v9 = sub_22139D234(v12, (1000 - a3.location), a3.location, a3.length, a4);
  }

  v13 = objc_msgSend_mergeIndexesForRange_(self, v10, v9, v10, v11);
  if (objc_msgSend_count(v13, v14, v15, v16, v17))
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (!WeakRetained)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTMergeOwner rewriteMergesForInsertedRange:uids:isRows:]", v20, v21);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeOwner.mm", v25, v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 1222, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    }

    v33 = objc_loadWeakRetained(&self->_tableModel);
    objc_msgSend_willModify(v33, v34, v35, v36, v37);
    v38 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_willModify(v38, v39, v40, v41, v42);

    v43 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_beginSuppressingWillModifyCalls(v43, v44, v45, v46, v47);

    v48 = [TSTFormulaRewriteSpec alloc];
    v82 = objc_msgSend_tableUID(v33, v49, v50, v51, v52);
    v83 = v53;
    v54 = objc_msgSend_initForInsertingRowsOrColumnsIntoTable_rowColumnUuids_areRows_(v48, v53, &v82, a4, v5);
    objc_msgSend_setCanBeNested_(v54, v55, 0, v56, v57);
    v62 = objc_msgSend_calcEngine(v33, v58, v59, v60, v61);
    objc_msgSend_willModifyTable_uidResolver_calcEngine_(v54, v63, v33, v33, v62);

    objc_msgSend_didModifyTable_(v54, v64, v33, v65, v66);
    v82 = 0;
    v83 = &v82;
    v84 = 0x4812000000;
    v85 = sub_22139D8AC;
    v86 = sub_22139D8D0;
    v87 = &unk_22188E88F;
    v89 = 0;
    v90 = 0;
    __p = 0;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_22139D8E8;
    v79[3] = &unk_278463BE0;
    v79[4] = self;
    v67 = v54;
    v80 = v67;
    v81 = &v82;
    objc_msgSend_enumerateIndexesUsingBlock_(v13, v68, v79, v69, v70);
    v72 = v83[6];
    v73 = v83[7];
    while (v72 != v73)
    {
      objc_msgSend_setCellRange_atIndex_(self->_mergeRangeCache, v71, *v72, v72[1], v72[2]);
      v72 += 3;
    }

    v74 = objc_loadWeakRetained(&self->_calculationEngine);
    objc_msgSend_endSuppressingWillModifyCalls(v74, v75, v76, v77, v78);

    _Block_object_dispose(&v82, 8);
    if (__p)
    {
      v89 = __p;
      operator delete(__p);
    }
  }
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  v6 = a3;
  objc_storeWeak(&self->_calculationEngine, v6);
  objc_msgSend_setCalcEngine_(self->_formulaStore, v7, v6, v8, v9);
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v12 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(WeakRetained, v11, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, a4->_lower, a4->_upper, 5);

  if (self->_formulaStore)
  {
    memset(v34, 0, sizeof(v34));
    v35 = 1065353216;
    v33 = xmmword_2217E18D0;
    v17 = objc_msgSend_tableModel(self, v13, v14, v15, v16);
    v22 = objc_msgSend_tableUID(v17, v18, v19, v20, v21);
    v24 = v23;
    v36 = &v33;
    v25 = sub_221230440(v34, &v33);
    v25[4] = v22;
    v25[5] = v24;

    objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(self, v26, v34, v6, v27);
    if (!v12)
    {
      objc_msgSend_registerAllFormulaToCalculationEngine(self->_formulaStore, v28, v29, v30, v31);
    }

    sub_2210BDEC0(v34);
  }

  objc_msgSend_resetMergeCache(self, v13, v14, v15, v16);

  return v12;
}

- (void)unregisterFromCalcEngine
{
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    objc_msgSend_setCalcEngine_(formulaStore, a2, 0, v2, v3);
  }

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v7, self->_ownerUID._lower, self->_ownerUID._upper, v8);

  objc_storeWeak(&self->_calculationEngine, 0);
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end