@interface TSCEReferencesToDirty
- (BOOL)flushDirtyReferencesForSeconds:(double)a3;
- (BOOL)hasDirtyingToPerformForOwnerId:(unsigned __int16)a3;
- (BOOL)hasPrecedentCountUpdatesPending;
- (BOOL)isEmptyForDirtying;
- (TSCEReferencesToDirty)initWithCalcEngine:(id)a3;
- (id).cxx_construct;
- (unint64_t)numberOfInProgressCalcCellRef;
- (void)_flushCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushDependentOnlyCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushDirtyOwnerIdsWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushInternalCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushRangeRefsWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushUpdatePrecedentsCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)addInProgressCalcCellRefs:(const void *)a3;
- (void)clearInProgressCalcCellRefs;
- (void)commonInit;
- (void)dirtyAllCellsInOwner:(const TSKUIDStruct *)a3;
- (void)dirtyAllCellsInOwnerId:(unsigned __int16)a3;
- (void)dirtyCellRef:(const TSCECellRef *)a3;
- (void)dirtyCellRefs:(const void *)a3;
- (void)dirtyCellRefsInReferenceSet:(id)a3;
- (void)dirtyCoords:(const void *)a3 inOwnerId:(unsigned __int16)a4;
- (void)dirtyInternalCellRef:(const TSCEInternalCellReference *)a3;
- (void)dirtyInternalCellRefs:(const void *)a3;
- (void)dirtyInternalCellRefsVector:(const void *)a3;
- (void)dirtyInternalRangeRef:(const TSCEInternalRangeReference *)a3;
- (void)dirtyOnlyDependentsOfCellRef:(const TSCECellRef *)a3;
- (void)dirtyRangeRef:(const TSCERangeRef *)a3;
- (void)flushCellDirtier;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setCalculationEngine:(id)a3;
- (void)setShouldCleanGraphForConsistencyViolation:(BOOL)a3;
- (void)setShouldPerformDetectAndRepairConsistencyViolations:(BOOL)a3;
- (void)updatePrecedentCountForCellRef:(const TSCEInternalCellReference *)a3;
- (void)willClose;
@end

@implementation TSCEReferencesToDirty

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = TSCEReferencesToDirty;
  [(TSCEReferencesToDirty *)&v3 commonInit];
  self->_dirtyingMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
}

- (TSCEReferencesToDirty)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v23.receiver = self;
  v23.super_class = TSCEReferencesToDirty;
  v10 = [(TSCEReferencesToDirty *)&v23 initWithContext:v9];

  if (v10)
  {
    v10->_calcEngine = v4;
    if (v4)
    {
      v11 = [TSCECellDirtier alloc];
      v16 = objc_msgSend_dependencyTracker(v10->_calcEngine, v12, v13, v14, v15);
      v20 = objc_msgSend_initWithDependencyTracker_(v11, v17, v16, v18, v19);
      cellRefDirtier = v10->_cellRefDirtier;
      v10->_cellRefDirtier = v20;
    }
  }

  return v10;
}

- (void)willClose
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  cellRefDirtier = self->_cellRefDirtier;
  self->_cellRefDirtier = 0;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)setCalculationEngine:(id)a3
{
  v4 = a3;
  v30 = v4;
  if (v4)
  {
    self->_calcEngine = v4;
    v8 = [TSCECellDirtier alloc];
    v13 = objc_msgSend_dependencyTracker(self->_calcEngine, v9, v10, v11, v12);
    v17 = objc_msgSend_initWithDependencyTracker_(v8, v14, v13, v15, v16);
    cellRefDirtier = self->_cellRefDirtier;
    self->_cellRefDirtier = v17;
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEReferencesToDirty setCalculationEngine:]", v6, v7);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 126, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    self->_calcEngine = 0;
  }
}

- (void)setShouldPerformDetectAndRepairConsistencyViolations:(BOOL)a3
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  self->_shouldPerformDetectAndRepairConsistencyViolations = a3;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)setShouldCleanGraphForConsistencyViolation:(BOOL)a3
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  self->_shouldCleanGraphForConsistencyViolation = a3;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (BOOL)isEmptyForDirtying
{
  if (os_unfair_lock_trylock(&self->_dirtyingMutex))
  {
    v7 = sub_2212E0280(&self->_toDirtyInternalCellRefs) && TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs) && sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs) && !TSUIndexSet::count(&self->_toDirtyOwnerIds) && self->_toDirtyRangeRefs.__begin_ == self->_toDirtyRangeRefs.__end_ && TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs) && objc_msgSend_isDoneDirtying(self->_cellRefDirtier, v3, v4, v5, v6) && !self->_shouldCleanGraphForConsistencyViolation && !self->_shouldPerformDetectAndRepairConsistencyViolations;
    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }

  else
  {
    return 0;
  }

  return v7;
}

- (void)dirtyAllCellsInOwner:(const TSKUIDStruct *)a3
{
  v7 = objc_msgSend_dependencyTracker(self->_calcEngine, a2, a3, v3, v4);
  v26 = v7;
  if (v7)
  {
    v11 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v7, v8, a3, v9, v10);
    objc_msgSend_dirtyAllCellsInOwnerId_(self, v12, v11, v13, v14);
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEReferencesToDirty dirtyAllCellsInOwner:]", v9, v10);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 168, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

- (void)dirtyAllCellsInOwnerId:(unsigned __int16)a3
{
  if (a3 != 0xFFFF)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSUIndexSet::addIndex(&self->_toDirtyOwnerIds);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRef:(const TSCECellRef *)a3
{
  if ((*&a3->coordinate & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && *&a3->_tableUID != 0)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRef(&self->_toDirtyCellRefs, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRef:(const TSCEInternalCellReference *)a3
{
  if (a3->tableID != -1 && (*&a3->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFCE8(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyOnlyDependentsOfCellRef:(const TSCECellRef *)a3
{
  v5 = *&a3->coordinate == 0x7FFFFFFF || (*&a3->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v5 && *&a3->_tableUID != 0)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRef(&self->_toDirtyDependentsOnlyCellRefs, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCoords:(const void *)a3 inOwnerId:(unsigned __int16)a4
{
  if (!TSCECellCoordSet::isEmpty(a3))
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFD38(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a4, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRefs:(const void *)a3
{
  if ((TSCECellRefSet::isEmpty(a3) & 1) == 0)
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRefs(&self->_toDirtyCellRefs, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRefs:(const void *)a3
{
  if (!sub_2212E0280(a3))
  {
    objc_msgSend_willModify(self, v5, v6, v7, v8);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRefsVector:(const void *)a3
{
  if (*(a3 + 1) != *a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v8 = *a3;
    for (i = *(a3 + 1); v8 != i; v8 += 12)
    {
      sub_2212DFCE8(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v8);
    }

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRefsInReferenceSet:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v13 = objc_msgSend_referenceSet(v8, v9, v10, v11, v12);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2211CA91C;
    v14[3] = &unk_27845F540;
    v14[4] = self;
    TSCEReferenceSet::foreachInternalCellRef(v13, v14);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)updatePrecedentCountForCellRef:(const TSCEInternalCellReference *)a3
{
  if (a3->tableID != -1 && (*&a3->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFCE8(&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, a3);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (BOOL)hasPrecedentCountUpdatesPending
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  v3 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return !v3;
}

- (void)dirtyRangeRef:(const TSCERangeRef *)a3
{
  v10 = objc_msgSend_dependencyTracker(self->_calcEngine, a2, a3, v3, v4);
  if (v10)
  {
    if (TSCERangeRef::isValid(a3))
    {
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      objc_msgSend_internalRangeReferenceForRangeRef_(v10, v11, a3, v12, v13);
      objc_msgSend_dirtyInternalRangeRef_(self, v14, v28, v15, v16);
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEReferencesToDirty dirtyRangeRef:]", v8, v9);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 291, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }
}

- (void)dirtyInternalRangeRef:(const TSCEInternalRangeReference *)a3
{
  if (a3->var1 != -1)
  {
    bottomRight = a3->var0._bottomRight;
    v7 = *&a3->var0._topLeft == 0x7FFFFFFF || (*&a3->var0._topLeft & 0xFFFF00000000) == 0x7FFF00000000;
    v8 = v7 || bottomRight.row == 0x7FFFFFFF;
    if (!v8 && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(*&a3->var0._topLeft) <= bottomRight.column && *&a3->var0._topLeft <= bottomRight.row)
    {
      objc_msgSend_willModify(self, a2, a3, v3, v4);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      sub_2211CAC20(&self->_toDirtyRangeRefs, a3);

      os_unfair_lock_unlock(&self->_dirtyingMutex);
    }
  }
}

- (BOOL)hasDirtyingToPerformForOwnerId:(unsigned __int16)a3
{
  if (a3 == 0xFFFF)
  {
    return 0;
  }

  v3 = a3;
  os_unfair_lock_lock(&self->_dirtyingMutex);
  if (TSUIndexSet::containsIndex(&self->_toDirtyOwnerIds) & 1) != 0 || (sub_2212E0070(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v3))
  {
    v5 = 1;
  }

  else
  {
    begin = self->_toDirtyRangeRefs.__begin_;
    end = self->_toDirtyRangeRefs.__end_;
    if (begin == end)
    {
      v5 = 0;
    }

    else
    {
      v9 = begin + 1;
      do
      {
        var1 = v9[-1].var1;
        v5 = var1 == v3;
      }

      while (var1 != v3 && v9++ != end);
    }
  }

  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return v5;
}

- (void)_flushDirtyOwnerIdsWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v13 = a4;
  if (v8)
  {
    objc_msgSend_willModify(self, v9, v10, v11, v12);
    while (1)
    {
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (!TSUIndexSet::count(&self->_toDirtyOwnerIds))
      {
        break;
      }

      Index = TSUIndexSet::firstIndex(&self->_toDirtyOwnerIds);
      TSUIndexSet::removeIndex(&self->_toDirtyOwnerIds);
      v15 = TSUIndexSet::count(&self->_toDirtyOwnerIds);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
      if (Index != 0xFFFFLL)
      {
        objc_msgSend_allCellRefsInOwner_(v8, v16, Index, v18, v19);
        os_unfair_lock_lock(&self->_dirtyingMutex);
        sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v21);
        os_unfair_lock_unlock(&self->_dirtyingMutex);
        sub_221122744(v21);
      }

      if (v13 && v15)
      {
        objc_msgSend_timeIntervalSinceNow(v13, v16, v17, v18, v19);
        if (-v20 > a5)
        {
          break;
        }
      }

      else if (!v15)
      {
        break;
      }
    }
  }
}

- (void)_flushCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    os_unfair_lock_lock(&self->_dirtyingMutex);
    isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    if ((isEmpty & 1) == 0)
    {
      objc_msgSend_willModify(self, v10, v11, v12, v13);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_2211CB094;
      v14[3] = &unk_278460D28;
      v15 = v7;
      v16 = self;
      TSCECellRefSet::enumerateOwnersUsingBlock(&self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__begin_node_, v14);
      TSCECellRefSet::clear(&self->_toDirtyCellRefs);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
    }
  }
}

- (void)_flushDependentOnlyCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    os_unfair_lock_lock(&self->_dirtyingMutex);
    isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    if ((isEmpty & 1) == 0)
    {
      objc_msgSend_willModify(self, v10, v11, v12, v13);
      v18 = objc_msgSend_calcEngine(v7, v14, v15, v16, v17);
      objc_msgSend_beginBatchingGroupCellDirtying(v18, v19, v20, v21, v22);

      os_unfair_lock_lock(&self->_dirtyingMutex);
      TSCECellRefSet::TSCECellRefSet(&v38, &self->_toDirtyDependentsOnlyCellRefs);
      TSCECellRefSet::clear(&self->_toDirtyDependentsOnlyCellRefs);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = sub_2211CB2B0;
      v36 = &unk_278460D78;
      v23 = v7;
      v37 = v23;
      TSCECellRefSet::enumerateOwnersUsingBlock(&v38, &v33);
      v28 = objc_msgSend_calcEngine(v23, v24, v25, v26, v27, v33, v34, v35, v36);
      objc_msgSend_endBatchingGroupCellDirtying(v28, v29, v30, v31, v32);

      sub_22107C800(&v38, v38._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }
}

- (void)_flushRangeRefsWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    os_unfair_lock_lock(&self->_dirtyingMutex);
    if (&v21 != &self->_toDirtyRangeRefs)
    {
      sub_2211CCB20(&v21, self->_toDirtyRangeRefs.__begin_, self->_toDirtyRangeRefs.__end_, 0xCCCCCCCCCCCCCCCDLL * ((self->_toDirtyRangeRefs.__end_ - self->_toDirtyRangeRefs.__begin_) >> 2));
    }

    self->_toDirtyRangeRefs.__end_ = self->_toDirtyRangeRefs.__begin_;
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    v13 = v21;
    v14 = v22;
    if (v21 != v22)
    {
      for (i = 1; ; ++i)
      {
        objc_msgSend_markIntRangeRefAsDirty_(v8, v10, v13, v11, v12);
        if (v9)
        {
          objc_msgSend_timeIntervalSinceNow(v9, v10, v16, v11, v12);
          v13 = (v13 + 20);
          if (-v17 > a5 || v13 == v14)
          {
LABEL_15:
            v13 = v21;
            v19 = v22;
            goto LABEL_17;
          }
        }

        else
        {
          v13 = (v13 + 20);
          if (v13 == v14)
          {
            goto LABEL_15;
          }
        }
      }
    }

    i = 0;
    v19 = v21;
LABEL_17:
    if (i < 0xCCCCCCCCCCCCCCCDLL * ((v19 - v13) >> 2))
    {
      v20 = (v13 + 20 * i);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      for (; v20 != v22; v20 = (v20 + 20))
      {
        sub_2211CAC20(&self->_toDirtyRangeRefs, v20);
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v13 = v21;
    }

    if (v13)
    {
      v22 = v13;
      operator delete(v13);
    }
  }
}

- (void)_flushInternalCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a4;
  if (a3)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x5812000000;
    v45 = sub_2211CB9B8;
    v46 = sub_2211CB9C4;
    v47 = &unk_22188E88F;
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    do
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (v8)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_2211CB9CC;
        v33[3] = &unk_278460DA0;
        v33[4] = &v42;
        v33[5] = &v34;
        sub_2212DFEC0(&self->_toDirtyInternalCellRefs, v33);
        sub_2212DFE4C(&self->_toDirtyInternalCellRefs, (v43 + 6));
        v9 = sub_2212E0280(&self->_toDirtyInternalCellRefs);
        *(v39 + 24) = v9;
      }

      else
      {
        sub_2212DFCA0((v43 + 6), &self->_toDirtyInternalCellRefs);
        v10 = sub_2212E0238(&self->_toDirtyInternalCellRefs);
        v35[3] = v10;
        sub_2212E0194(&self->_toDirtyInternalCellRefs);
        *(v39 + 24) = 1;
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v25 = 0;
      v26 = &v25;
      v27 = 0x5812000000;
      v28 = sub_2211CB9B8;
      v29 = sub_2211CB9C4;
      v30 = &unk_22188E88F;
      memset(v31, 0, sizeof(v31));
      v32 = 1065353216;
      v11 = v43;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2211CBA30;
      v20[3] = &unk_278460DC8;
      v20[4] = self;
      v24 = a5;
      v12 = v8;
      v21 = v12;
      v22 = &v25;
      v23 = &v38;
      sub_2212DFEC0((v11 + 6), v20);
      v13 = sub_2212E0238((v26 + 6));
      if (v13 < v35[3])
      {
        sub_2212DFE4C((v43 + 6), (v26 + 6));
        os_unfair_lock_lock(&self->_dirtyingMutex);
        sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, (v43 + 6));
        os_unfair_lock_unlock(&self->_dirtyingMutex);
      }

      v18 = v39;
      if (v8)
      {
        if ((v39[3] & 1) == 0)
        {
          objc_msgSend_timeIntervalSinceNow(v12, v14, v15, v16, v17);
          v18 = v39;
          if (-v19 > a5)
          {
            *(v39 + 24) = 1;
          }
        }
      }

      if ((v18[3] & 1) == 0)
      {
        sub_2212E0194(v43 + 6);
      }

      _Block_object_dispose(&v25, 8);
      sub_221122744(v31);
      _Block_object_dispose(&v34, 8);
    }

    while ((v39[3] & 1) == 0);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    sub_221122744(v48);
  }
}

- (void)_flushUpdatePrecedentsCellRefSetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x5812000000;
    v28 = sub_2211CB9B8;
    v29 = sub_2211CB9C4;
    v30 = &unk_22188E88F;
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    while (1)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (v9)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_2211CBD14;
        v20[3] = &unk_278460DA0;
        v20[4] = &v25;
        v20[5] = &v21;
        sub_2212DFEC0(&self->_toUpdateDirtyPrecedentCountCellRefs, v20);
        sub_2212DFE4C(&self->_toUpdateDirtyPrecedentCountCellRefs, (v26 + 6));
        v10 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
      }

      else
      {
        sub_2212DFCA0((v26 + 6), &self->_toUpdateDirtyPrecedentCountCellRefs);
        v11 = sub_2212E0238(&self->_toUpdateDirtyPrecedentCountCellRefs);
        v22[3] = v11;
        sub_2212E0194(&self->_toUpdateDirtyPrecedentCountCellRefs);
        v10 = 1;
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      objc_msgSend_updateNumberOfDirtyPrecedents_(v8, v12, (v26 + 6), v13, v14);
      if (v9 == 0 || v10)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(v9, v15, v16, v17, v18);
        if (-v19 > a5)
        {
LABEL_11:
          _Block_object_dispose(&v21, 8);
          _Block_object_dispose(&v25, 8);
          sub_221122744(v31);
          break;
        }
      }

      sub_2212E0194(v26 + 6);
      _Block_object_dispose(&v21, 8);
    }
  }
}

- (BOOL)flushDirtyReferencesForSeconds:(double)a3
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  isDoneDirtying = objc_msgSend_isDoneDirtying(self->_cellRefDirtier, v5, v6, v7, v8);
  shouldCleanGraphForConsistencyViolation = self->_shouldCleanGraphForConsistencyViolation;
  shouldPerformDetectAndRepairConsistencyViolations = self->_shouldPerformDetectAndRepairConsistencyViolations;
  v10 = TSUIndexSet::count(&self->_toDirtyOwnerIds);
  isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs);
  v53 = TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs);
  v12 = !sub_2212E0280(&self->_toDirtyInternalCellRefs);
  begin = self->_toDirtyRangeRefs.__begin_;
  end = self->_toDirtyRangeRefs.__end_;
  v15 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
  v16 = v15;
  self->_shouldPerformDetectAndRepairConsistencyViolations = 0;
  v17 = !v15;
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  if (isDoneDirtying)
  {
    v22 = v10 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22 || isEmpty == 0;
  if (v23 || v12 || begin != end || (v17 & 1) != 0 || shouldPerformDetectAndRepairConsistencyViolations || shouldCleanGraphForConsistencyViolation)
  {
    v25 = objc_msgSend_dependencyTracker(self->_calcEngine, v18, v19, v20, v21);
    objc_msgSend_willModify(self, v26, v27, v28, v29);
    if (!v25)
    {
      isEmptyForDirtying = 0;
LABEL_44:

      return isEmptyForDirtying;
    }

    if (!(isDoneDirtying & 1 | (!shouldPerformDetectAndRepairConsistencyViolations && !shouldCleanGraphForConsistencyViolation)))
    {
      objc_msgSend_dirtyCellsNow(self->_cellRefDirtier, v30, v31, v32, v33);
    }

    if (shouldPerformDetectAndRepairConsistencyViolations)
    {
      if (!v16)
      {
        objc_msgSend__flushUpdatePrecedentsCellRefSetWithDepTracker_startTime_timeout_(self, v30, v25, 0, v33, 0.0);
      }

      objc_msgSend_detectAndRepairConsistencyViolations(v25, v30, v31, v32, v33);
      v38 = objc_msgSend_shouldCleanGraphForConsistencyViolation(self, v34, v35, v36, v37);
      v17 = 0;
      self->_debugOnly_DidDetectAndRepairConsistencyViolations = 1;
      if ((v38 & 1) == 0)
      {
LABEL_25:
        if (a3 <= 0.0)
        {
          v46 = 0;
        }

        else
        {
          v46 = objc_opt_new();
        }

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = sub_2211CC1D0;
        v57[3] = &unk_278460DF0;
        v47 = v46;
        v58 = v47;
        v59 = a3;
        v56 = MEMORY[0x223DA1C10](v57);
        if ((isDoneDirtying & 1) == 0 && (objc_msgSend_dirtyCellsForSeconds_fromStartTime_(self->_cellRefDirtier, v48, v47, v50, v51, a3) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (v17)
        {
          objc_msgSend__flushUpdatePrecedentsCellRefSetWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
          if (sub_2212E0238(&self->_toUpdateDirtyPrecedentCountCellRefs))
          {
            goto LABEL_43;
          }
        }

        if (v10)
        {
          objc_msgSend__flushDirtyOwnerIdsWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
          if (v56[2]())
          {
            goto LABEL_43;
          }
        }

        if ((isEmpty & 1) == 0)
        {
          objc_msgSend__flushCellRefSetWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
          if (v56[2]())
          {
            goto LABEL_43;
          }
        }

        if ((v53 & 1) == 0)
        {
          objc_msgSend__flushDependentOnlyCellRefSetWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
          if (v56[2]())
          {
            goto LABEL_43;
          }
        }

        if (begin == end)
        {
          if (!v12)
          {
LABEL_43:
            isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(self, v48, v49, v50, v51);

            goto LABEL_44;
          }
        }

        else
        {
          objc_msgSend__flushRangeRefsWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
          if (v56[2]() & 1 | !v12)
          {
            goto LABEL_43;
          }
        }

        objc_msgSend__flushInternalCellRefSetWithDepTracker_startTime_timeout_(self, v48, v25, v47, v51, a3);
        goto LABEL_43;
      }
    }

    else if (!shouldCleanGraphForConsistencyViolation)
    {
      goto LABEL_25;
    }

    objc_msgSend_allDirtyCellRefs(v25, v30, v31, v32, v33);
    objc_msgSend_markEverythingClean(v25, v39, v40, v41, v42);
    objc_msgSend_setShouldCleanGraphForConsistencyViolation_(self, v43, 0, v44, v45);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v60);
    v12 = sub_2212E0280(&self->_toDirtyInternalCellRefs);
    self->_debugOnly_DidCleanGraphForConsistencyViolation = 1;
    sub_221122744(v60);
    goto LABEL_25;
  }

  return 1;
}

- (void)flushCellDirtier
{
  if ((objc_msgSend_isDoneDirtying(self->_cellRefDirtier, a2, v2, v3, v4) & 1) == 0)
  {
    cellRefDirtier = self->_cellRefDirtier;

    objc_msgSend_dirtyCellsNow(cellRefDirtier, v6, v7, v8, v9);
  }
}

- (void)addInProgressCalcCellRefs:(const void *)a3
{
  if (*a3 != *(a3 + 1))
  {
    objc_msgSend_willModify(self, a2, a3, v3, v4);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v8 = *a3;
    for (i = *(a3 + 1); v8 != i; v8 += 12)
    {
      sub_2212DFCE8(&self->_calcCellsInProgress._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v8);
    }

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (unint64_t)numberOfInProgressCalcCellRef
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  v3 = sub_2212E0238(&self->_calcCellsInProgress);
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return v3;
}

- (void)clearInProgressCalcCellRefs
{
  objc_msgSend_willModify(self, a2, v2, v3, v4);
  os_unfair_lock_lock(&self->_dirtyingMutex);
  sub_2212E0194(&self->_calcCellsInProgress);

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E2AC8[38], v6, v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    sub_22126A778(*(v8 + 48), &v17);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v17);
    v9 = *(v8 + 16);
  }

  if ((v9 & 2) != 0)
  {
    sub_2212E0790(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, *(v8 + 56));
    v9 = *(v8 + 16);
  }

  if ((v9 & 0x10) != 0)
  {
    sub_2212E0790(&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, *(v8 + 80));
    v9 = *(v8 + 16);
  }

  if ((v9 & 4) != 0)
  {
    v10 = *(v8 + 64);
    memset(&v17, 0, sizeof(v17));
    v18 = 1065353216;
    sub_2212E0790(&v17, v10);
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v11, 2, v12, v13);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v17);
    sub_221122744(&v17);
    v9 = *(v8 + 16);
  }

  if ((v9 & 8) != 0)
  {
    v14 = *(v8 + 72);
    memset(&v17, 0, sizeof(v17));
    v18 = 1065353216;
    sub_2212E0790(&v17, v14);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v17);
    sub_221122744(&v17);
  }

  v15 = *(v8 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      memset(&v17, 0, 20);
      sub_2212F4E1C(*(*(v8 + 40) + v16), &v17);
      sub_2211CAC20(&self->_toDirtyRangeRefs, &v17);
      v16 += 8;
      --v15;
    }

    while (v15);
  }
}

- (void)saveToArchiver:(id)a3
{
  v29 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v29, v4, sub_2211CCCC4, off_2812E2AC8[38], v5);

  os_unfair_lock_lock(&self->_dirtyingMutex);
  if (TSUIndexSet::count(&self->_toDirtyOwnerIds))
  {
    *(v6 + 16) |= 1u;
    if (!*(v6 + 48))
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v6 + 48) = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v7);
    }

    sub_22126A644();
  }

  if (!sub_2212E0280(&self->_toDirtyInternalCellRefs))
  {
    *(v6 + 16) |= 2u;
    v8 = *(v6 + 56);
    if (!v8)
    {
      v9 = *(v6 + 8);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v9);
      *(v6 + 56) = v8;
    }

    sub_2212E0690(&self->_toDirtyInternalCellRefs, v8);
  }

  if (!sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs))
  {
    *(v6 + 16) |= 0x10u;
    v10 = *(v6 + 80);
    if (!v10)
    {
      v11 = *(v6 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v11);
      *(v6 + 80) = v10;
    }

    sub_2212E0690(&self->_toUpdateDirtyPrecedentCountCellRefs, v10);
  }

  if ((TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs) & 1) == 0)
  {
    *(v6 + 16) |= 4u;
    v16 = *(v6 + 64);
    if (!v16)
    {
      v17 = *(v6 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v17);
      *(v6 + 64) = v16;
    }

    v18 = objc_msgSend_dependencyTracker(self->_calcEngine, v12, v13, v14, v15);
    TSCECellRefSet::encodeToArchive(&self->_toDirtyCellRefs, v16, v18);
  }

  if (!sub_2212E0280(&self->_calcCellsInProgress))
  {
    *(v6 + 16) |= 8u;
    v19 = *(v6 + 72);
    if (!v19)
    {
      v20 = *(v6 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v20);
      *(v6 + 72) = v19;
    }

    sub_2212E0690(&self->_calcCellsInProgress, v19);
  }

  begin = self->_toDirtyRangeRefs.__begin_;
  end = self->_toDirtyRangeRefs.__end_;
  while (begin != end)
  {
    v23 = *(v6 + 40);
    if (!v23)
    {
      goto LABEL_38;
    }

    v24 = *(v6 + 32);
    v25 = *v23;
    if (v24 < *v23)
    {
      *(v6 + 32) = v24 + 1;
      v26 = *&v23[2 * v24 + 2];
      goto LABEL_40;
    }

    if (v25 == *(v6 + 36))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
      v23 = *(v6 + 40);
      v25 = *v23;
    }

    *v23 = v25 + 1;
    v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(*(v6 + 24));
    v27 = *(v6 + 32);
    v28 = *(v6 + 40) + 8 * v27;
    *(v6 + 32) = v27 + 1;
    *(v28 + 8) = v26;
LABEL_40:
    sub_2212F4DA8(begin++, v26);
  }

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (id).cxx_construct
{
  TSUIndexSet::TSUIndexSet(&self->_toDirtyOwnerIds);
  self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__size_ = 0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__begin_node_ = &self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__end_node_;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__size_ = 0;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__begin_node_ = &self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__end_node_;
  self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_toDirtyRangeRefs.__end_ = 0;
  self->_toDirtyRangeRefs.__cap_ = 0;
  self->_toDirtyRangeRefs.__begin_ = 0;
  self->_calcCellsInProgress._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_calcCellsInProgress._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_calcCellsInProgress._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end