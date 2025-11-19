@interface TSCEFormulasToSet
- (BOOL)flushFormulaChangesForSeconds:(double)a3;
- (BOOL)isEmpty;
- (TSCEFormulasToSet)initWithCalcEngine:(id)a3 forMinion:(id)a4 options:(unsigned __int8)a5;
- (id).cxx_construct;
- (void)_flushFormulasToRemoveWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushFormulasToReplaceWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)_flushFormulasToResetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5;
- (void)commonInit;
- (void)dealloc;
- (void)flushAllFormulaChanges;
- (void)flushRemoveFormulas;
- (void)flushReplaceFormulas;
- (void)flushResetFormulas;
- (void)processInBackgroundIfNecessary;
- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)a3;
- (void)removeFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4;
- (void)removeFormulasAt:(const void *)a3;
- (void)removeFormulasAt:(const void *)a3 inOwner:(const TSKUIDStruct *)a4 removeOutstandingReplaces:(BOOL)a5;
- (void)removeFormulasFromRange:(const TSCERangeRef *)a3;
- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5;
- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6;
- (void)resetFormulaAt:(const TSCECellRef *)a3;
- (void)willClose;
@end

@implementation TSCEFormulasToSet

- (void)commonInit
{
  self->_removeReplaceMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v52 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, -3);
  v3 = dispatch_queue_create("com.apple.Numbers.TSCE.PrecedentLoading", v52);
  precedentLoadingQueue = self->_precedentLoadingQueue;
  self->_precedentLoadingQueue = v3;

  if (!self->_precedentLoadingQueue)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEFormulasToSet commonInit]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 97, 0, "invalid nil value for '%{public}s'", "_precedentLoadingQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = dispatch_group_create();
  precedentLoadingGroup = self->_precedentLoadingGroup;
  self->_precedentLoadingGroup = v19;

  if (!self->_precedentLoadingGroup)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSCEFormulasToSet commonInit]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 100, 0, "invalid nil value for '%{public}s'", "_precedentLoadingGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v35 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v36 = dispatch_queue_create("com.apple.Numbers.TSCE.BackgroundFormulas", v35);
  backgroundProcessingQueue = self->_backgroundProcessingQueue;
  self->_backgroundProcessingQueue = v36;

  if (!self->_backgroundProcessingQueue)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSCEFormulasToSet commonInit]", v39, v40);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v44, v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v47, v42, v46, 104, 0, "invalid nil value for '%{public}s'", "_backgroundProcessingQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50, v51);
  }
}

- (TSCEFormulasToSet)initWithCalcEngine:(id)a3 forMinion:(id)a4 options:(unsigned __int8)a5
{
  v8 = a3;
  v12 = a4;
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulasToSet initWithCalcEngine:forMinion:options:]", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 108, 0, "A minion is required to use TSCEFormulasToSet object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!v8)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulasToSet initWithCalcEngine:forMinion:options:]", v10, v11);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 109, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  v42.receiver = self;
  v42.super_class = TSCEFormulasToSet;
  v35 = [(TSCEFormulasToSet *)&v42 init];
  v40 = v35;
  if (v35)
  {
    v35->_calcEngine = v8;
    v35->_minion = v12;
    v35->_options = a5;
    objc_msgSend_commonInit(v35, v36, v37, v38, v39);
  }

  return v40;
}

- (void)dealloc
{
  if ((TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEFormulasToSet dealloc]", v4, v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v9, v10);
    v12 = objc_opt_class();
    v13 = TSCECellRefSet::count(&self->_formulasToReset);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v14, v7, v11, 123, 0, "Deallocing %@ with %lu formulasToReset", v12, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if ((TSCECellRefSet::isEmpty(&self->_formulasToRemove) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulasToSet dealloc]", v20, v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v25, v26);
    v28 = objc_opt_class();
    v29 = TSCECellRefSet::count(&self->_formulasToRemove);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v30, v23, v27, 124, 0, "Deallocing %@ with %lu formulasToRemove", v28, v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (self->_formulasToReplace.__table_.__size_)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulasToSet dealloc]", v20, v21);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v38, v39);
    v41 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v36, v40, 125, 0, "Deallocing %@ with %lu formulasToReplace", v41, self->_formulasToReplace.__table_.__size_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v47.receiver = self;
  v47.super_class = TSCEFormulasToSet;
  [(TSCEFormulasToSet *)&v47 dealloc];
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  if (TSCECellRefSet::isEmpty(&self->_formulasToRemove) && !self->_formulasToReplace.__table_.__size_)
  {
    isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
  }

  else
  {
    isEmpty = 0;
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  return isEmpty;
}

- (void)processInBackgroundIfNecessary
{
  if (self->_flushAllInProgress)
  {
    return;
  }

  os_unfair_lock_lock(&self->_removeReplaceMutex);
  runningInBackground = self->_runningInBackground;
  options = self->_options;
  if ((options & 2) == 0)
  {
    v5 = 1;
    if ((self->_options & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    if ((options & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v5 = TSCECellRefSet::count(&self->_formulasToRemove) < 0xA;
  options = self->_options;
  if ((options & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = self->_formulasToReplace.__table_.__size_ > 9;
  if ((options & 8) != 0)
  {
LABEL_5:
    v7 = TSCECellRefSet::count(&self->_formulasToReset) > 9;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = v5 && !v6 && !v7;
  if ((v8 & 1) == 0 && !runningInBackground)
  {
    self->_runningInBackground = 1;
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if (((v8 | runningInBackground) & 1) == 0)
  {
    v13 = objc_msgSend_dependencyTracker(self->_calcEngine, v9, v10, v11, v12);
    backgroundProcessingQueue = self->_backgroundProcessingQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2213E6DD0;
    v16[3] = &unk_27845FEF0;
    v16[4] = self;
    v17 = v13;
    v15 = v13;
    dispatch_async(backgroundProcessingQueue, v16);
  }
}

- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5
{
  v8 = a3;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, 0, 1);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v10, &v11);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(self, v9, v8, a4, a5, &v10);
}

- (void)replaceFormula:(id)a3 atCellCoord:(const TSUCellCoord *)a4 inOwner:(const TSKUIDStruct *)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6
{
  v10 = a3;
  v15 = v10;
  v16 = *a4;
  v36 = *a5;
  if (self->_options)
  {
    v19 = objc_msgSend_formulaObject(v10, v11, v12, v13, v14);
    precedentLoadingQueue = self->_precedentLoadingQueue;
    precedentLoadingGroup = self->_precedentLoadingGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_2213E7278;
    block[3] = &unk_2834A79F8;
    v35 = v16;
    v31 = v19;
    v32 = self;
    v33 = v36;
    v22 = v19;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v34, a6);
    dispatch_group_async(precedentLoadingGroup, precedentLoadingQueue, block);
  }

  else
  {
    v29.coordinate = v16;
    v29._tableUID = *a5;
    sub_2213E91EC(v25, &v29, a6, v10);
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    if ((TSCECellRefSet::containsCellRef(&self->_formulasToReset, &v29) & 1) == 0)
    {
      tableUID = v29._tableUID;
      p_tableUID = &tableUID;
      v17 = sub_2213E931C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
      coordinate = v29.coordinate;
      p_tableUID = &coordinate;
      v18 = sub_2213E9698(v17 + 4, &coordinate);
      sub_2213E74DC((v18 + 3), v25);
    }

    os_unfair_lock_unlock(&self->_removeReplaceMutex);
  }
}

- (void)replaceFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4 precedents:(id)a5 replaceOptions:(TSCEReplaceFormulaOptions *)a6
{
  v10 = a5;
  v23.coordinate = *a3;
  v23._tableUID = *a4;
  sub_2213E9258(v19, &v23, a6, v10);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  if ((TSCECellRefSet::containsCellRef(&self->_formulasToReset, &v23) & 1) == 0)
  {
    tableUID = v23._tableUID;
    p_tableUID = &tableUID;
    v11 = sub_2213E931C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
    coordinate = v23.coordinate;
    p_tableUID = &coordinate;
    v12 = sub_2213E9698(v11 + 4, &coordinate);
    sub_2213E74DC((v12 + 3), v19);
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  objc_msgSend_processInBackgroundIfNecessary(self, v13, v14, v15, v16);
}

- (void)removeFormulasAt:(const void *)a3 inOwner:(const TSKUIDStruct *)a4 removeOutstandingReplaces:(BOOL)a5
{
  if (*a4 != 0)
  {
    v5 = a5;
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    TSCECellRefSet::addCellRefs(&self->_formulasToRemove, a4, a3);
    if (v5)
    {
      sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, a4);
      TSCECellRefSet::removeAllCellRefsForOwner(&self->_formulasToReset, a4);
    }

    else
    {
      v18._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v18._rowsPerColumn.__tree_.__size_ = 0;
      v18._rectRepresentation.origin = 0;
      v18._rectRepresentation.size = 0;
      v18._rowsPerColumn.__tree_.__begin_node_ = &v18._rowsPerColumn.__tree_.__end_node_;
      v9 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, a4);
      v10 = v9;
      if (v9)
      {
        for (i = v9[6]; i; i = *i)
        {
          if (TSCECellCoordSet::containsCellCoord(a3, i + 2))
          {
            TSCECellCoordSet::addCellCoord(&v18, i + 2);
          }
        }

        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_2213E789C;
        v17[3] = &unk_27845F2D8;
        v17[4] = v10 + 4;
        TSCECellCoordSet::enumerateCoordsUsingBlock(&v18, v17);
        if (!v10[7])
        {
          sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, a4);
        }
      }

      if ((TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_2213E78A4;
        v16[3] = &unk_278460EB8;
        v16[4] = self;
        v16[5] = a4;
        TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v16);
      }

      sub_22107C860(&v18._rowsPerColumn, v18._rowsPerColumn.__tree_.__end_node_.__left_);
    }

    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v12, v13, v14, v15);
  }
}

- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)a3
{
  if (*a3 != 0)
  {
    if ((self->_options & 2) != 0)
    {
      v14 = *a3;
      backgroundProcessingQueue = self->_backgroundProcessingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2213E7A50;
      block[3] = &unk_2784643B8;
      block[4] = self;
      dispatch_async(backgroundProcessingQueue, block);
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, a3);
      TSCECellRefSet::removeAllCellRefsForOwner(&self->_formulasToReset, a3);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
    }

    else
    {
      calcEngine = self->_calcEngine;
      if (calcEngine)
      {
        objc_msgSend_allFormulaCoordsInOwner_(calcEngine, a2, a3, v3, v4);
      }

      else
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2213E7A64;
      v9[3] = &unk_278460EB8;
      v9[4] = self;
      v9[5] = a3;
      TSCECellCoordSet::enumerateCoordsUsingBlock(&v10, v9);
      sub_22107C860(&v11, *(&v11 + 1));
    }
  }
}

- (void)removeFormulasFromRange:(const TSCERangeRef *)a3
{
  if (TSCERangeRef::isValid(a3))
  {
    TSCERangeCoordinate::asCellRect(&a3->range);
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    TSUCellRect::enumerateCoordinatesUsingBlock();
    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v5, v6, v7, v8);
  }
}

- (void)removeFormulaAt:(const TSUCellCoord *)a3 inOwner:(const TSKUIDStruct *)a4
{
  v5 = *a3;
  v12.coordinate = *a3;
  v12._tableUID = *a4;
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  tableUID = v12._tableUID;
  v6 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
  if (v6)
  {
    tableUID._lower = v5;
    sub_2213E9A58(v6 + 4, &tableUID);
  }

  TSCECellRefSet::removeCellRef(&self->_formulasToReset, &v12);
  TSCECellRefSet::addCellRef(&self->_formulasToRemove, &v12);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  objc_msgSend_processInBackgroundIfNecessary(self, v7, v8, v9, v10);
}

- (void)removeFormulasAt:(const void *)a3
{
  if ((TSCECellRefSet::isEmpty(a3) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2213E7CF4;
    v9[3] = &unk_27845FBD8;
    v9[4] = self;
    TSCECellRefSet::enumerateCellRefsUsingBlock(a3, v9);
    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v5, v6, v7, v8);
  }
}

- (void)resetFormulaAt:(const TSCECellRef *)a3
{
  if (*&a3->coordinate != 0x7FFFFFFF && (*&a3->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v14 = v3;
    v15 = v4;
    if (*&a3->_tableUID != 0)
    {
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      tableUID = a3->_tableUID;
      v8 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
      if (v8)
      {
        tableUID._lower = a3->coordinate;
        sub_2213E9A58(v8 + 4, &tableUID);
      }

      TSCECellRefSet::removeCellRef(&self->_formulasToRemove, a3);
      TSCECellRefSet::addCellRef(&self->_formulasToReset, a3);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      objc_msgSend_processInBackgroundIfNecessary(self, v9, v10, v11, v12);
    }
  }
}

- (void)_flushFormulasToRemoveWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x4812000000;
    v68 = sub_2213E8290;
    v69 = sub_2213E829C;
    v70 = &unk_22188E88F;
    v72[0] = 0;
    v72[1] = 0;
    v71 = v72;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v39 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v39, v10, v11, v12, v13);
    objc_msgSend_beginBatchingGroupCellDirtying(v39, v14, v15, v16, v17);
    while ((v62[3] & 1) == 0)
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v60 = 0;
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      if (v9)
      {
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = sub_2213E82A8;
        v56[3] = &unk_278464868;
        v56[4] = &v65;
        v56[5] = &v57;
        TSCECellRefSet::enumerateCellRefsUsingBlock(&self->_formulasToRemove._coordsForOwnerUid.__tree_.__begin_node_, v56);
        TSCECellRefSet::removeCellRefs(&self->_formulasToRemove, &v66[2]);
        isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
        *(v62 + 24) = isEmpty;
      }

      else
      {
        TSCECellRefSet::operator=(&v66[2], &self->_formulasToRemove);
        TSCECellRefSet::clear(&self->_formulasToRemove);
        *(v62 + 24) = 1;
      }

      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      v48 = 0;
      v49 = &v48;
      v50 = 0x4812000000;
      v51 = sub_2213E8290;
      v52 = sub_2213E829C;
      v53 = &unk_22188E88F;
      v55[0] = 0;
      v55[1] = 0;
      v54 = v55;
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2020000000;
      v47[3] = 0;
      v23 = v66;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_2213E830C;
      v40[3] = &unk_278464890;
      v41 = v8;
      v43 = &v48;
      v24 = v9;
      v42 = v24;
      v44 = &v61;
      v45 = v47;
      v46 = a5;
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v23[2]._coordsForOwnerUid.__tree_.__begin_node_, v40);
      v25 = TSCECellRefSet::count(v49 + 2);
      if (v25 <= v58[3])
      {
        TSCECellRefSet::removeCellRefs(&v66[2], v49 + 2);
        os_unfair_lock_lock(&self->_removeReplaceMutex);
        TSCECellRefSet::addCellRefs(&self->_formulasToRemove, v66 + 2);
        os_unfair_lock_unlock(&self->_removeReplaceMutex);
      }

      if (v9)
      {
        if ((v62[3] & 1) == 0)
        {
          objc_msgSend_timeIntervalSinceNow(v24, v26, v27, v28, v29);
          if (-v30 > a5)
          {
            *(v62 + 24) = 1;
          }
        }
      }

      _Block_object_dispose(v47, 8);
      _Block_object_dispose(&v48, 8);
      sub_22107C800(&v54, v55[0]);
      _Block_object_dispose(&v57, 8);
    }

    objc_msgSend_endBatchingGroupCellDirtying(v39, v18, v19, v20, v21);
    objc_msgSend_endSuppressingWillModifyCalls(v39, v31, v32, v33, v34);
    objc_msgSend_updateEmbiggenedTableCache(v39, v35, v36, v37, v38);

    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);
    sub_22107C800(&v71, v72[0]);
  }
}

- (void)_flushFormulasToReplaceWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  v47 = v8;
  if (v8)
  {
    v46 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v46, v10, v11, v12, v13);
    objc_msgSend_beginBatchingGroupCellDirtying(v46, v14, v15, v16, v17);
    v18 = 0;
    do
    {
      v53 = 0x7FFF7FFFFFFFLL;
      v54 = 0uLL;
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v55, 0, 1);
      v56 = 0;
      v57 = 0;
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      next = self->_formulasToReplace.__table_.__first_node_.__next_;
      if (next)
      {
        v20 = next[6];
        if (v20)
        {
          sub_2213E74DC(&v53, (v20 + 24));
          sub_2213E9A58(next + 4, (v20 + 16));
        }

        if (!next[7])
        {
          sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, next + 2);
        }

        v21 = self->_formulasToReplace.__table_.__size_ == 0;
      }

      else
      {
        v21 = 1;
      }

      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      v26 = v53;
      if (v53 != 0x7FFFFFFF && (v53 & 0xFFFF00000000) != 0x7FFF00000000 && v54 != 0)
      {
        if (v57)
        {
          v52 = v54;
          v34 = v57;
          TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v51, &v55);
          objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(v47, v35, &v52, v26, v34, &v51);
        }

        else
        {
          precedentLoadingQueue = self->_precedentLoadingQueue;
          precedentLoadingGroup = self->_precedentLoadingGroup;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3321888768;
          block[2] = sub_2213E870C;
          block[3] = &unk_2834A7A30;
          block[5] = v53;
          v49 = v54;
          sub_2213E92C4(v50, &v53);
          block[4] = self;
          dispatch_group_async(precedentLoadingGroup, precedentLoadingQueue, block);

          v18 = 1;
        }
      }

      if (v9 == 0 || v21)
      {
        if (((v9 == 0) & v21 & v18) == 1)
        {
          objc_msgSend_waitForAllPrecedentsToLoad(self, v22, v23, v24, v25);
          os_unfair_lock_lock(&self->_removeReplaceMutex);
          LOBYTE(v21) = self->_formulasToReplace.__table_.__size_ == 0;
          os_unfair_lock_unlock(&self->_removeReplaceMutex);
          v18 = 0;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(v9, v22, v23, v24, v25);
        LOBYTE(v21) = -v29 > a5;
      }
    }

    while (!v21);
    objc_msgSend_endBatchingGroupCellDirtying(v46, v30, v31, v32, v33);
    objc_msgSend_endSuppressingWillModifyCalls(v46, v38, v39, v40, v41);
    objc_msgSend_updateEmbiggenedTableCache(v46, v42, v43, v44, v45);
  }
}

- (void)_flushFormulasToResetWithDepTracker:(id)a3 startTime:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 && (TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
  {
    v10 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v10, v11, v12, v13, v14);
    objc_msgSend_beginBatchingGroupCellDirtying(v10, v15, v16, v17, v18);
    v19 = 0;
    while (1)
    {
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      TSCECellRefSet::anyCellRef(&self->_formulasToReset, &v41);
      TSCECellRefSet::removeCellRef(&self->_formulasToReset, &v41);
      isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      if (v19)
      {
        v25 = objc_msgSend_tableUID(v19, v21, v22, v23, v24);
        tableUID = v41._tableUID;
        if (v25 == v41._tableUID._lower && v21 == v41._tableUID._upper)
        {
LABEL_10:
          v40._lower = v41.coordinate;
          objc_msgSend_resetDependenciesForCell_calcEngine_(v19, v21, &v40, self->_minion, v24);
          goto LABEL_11;
        }
      }

      else
      {
        tableUID = v41._tableUID;
      }

      calcEngine = self->_calcEngine;
      v40 = tableUID;
      v28 = objc_msgSend_tableResolverForTableUID_(calcEngine, v21, &v40, v23, v24);

      v19 = v28;
      if (v28)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((v9 == 0) | isEmpty & 1)
      {
        if (isEmpty)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(v9, v21, v29, v30, v24);
        if (-v31 > a5)
        {
LABEL_15:
          objc_msgSend_endBatchingGroupCellDirtying(v10, v21, v29, v30, v24);
          objc_msgSend_endSuppressingWillModifyCalls(v10, v32, v33, v34, v35);
          objc_msgSend_updateEmbiggenedTableCache(v10, v36, v37, v38, v39);

          break;
        }
      }
    }
  }
}

- (void)willClose
{
  v23 = self->_calcEngine;
  objc_msgSend_beginSuppressingWillModifyCalls(v23, v3, v4, v5, v6);
  objc_msgSend_beginBatchingGroupCellDirtying(v23, v7, v8, v9, v10);
  objc_msgSend_flushAllFormulaChanges(self, v11, v12, v13, v14);
  objc_msgSend_endBatchingGroupCellDirtying(v23, v15, v16, v17, v18);
  objc_msgSend_endSuppressingWillModifyCalls(v23, v19, v20, v21, v22);
}

- (void)flushRemoveFormulas
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((isEmpty & 1) == 0)
  {
    v10 = objc_msgSend_dependencyTracker(self->_calcEngine, v4, v5, v6, v7);
    if (v10)
    {
      objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(self, v8, v10, 0, v9, 0.0);
    }
  }
}

- (void)flushReplaceFormulas
{
  objc_msgSend_waitForAllPrecedentsToLoad(self, a2, v2, v3, v4);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  size = self->_formulasToReplace.__table_.__size_;
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if (size)
  {
    v13 = objc_msgSend_dependencyTracker(self->_calcEngine, v7, v8, v9, v10);
    if (v13)
    {
      objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(self, v11, v13, 0, v12, 0.0);
    }
  }
}

- (void)flushResetFormulas
{
  objc_msgSend_waitForAllPrecedentsToLoad(self, a2, v2, v3, v4);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((isEmpty & 1) == 0)
  {
    v13 = objc_msgSend_dependencyTracker(self->_calcEngine, v7, v8, v9, v10);
    if (v13)
    {
      objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(self, v11, v13, 0, v12, 0.0);
    }
  }
}

- (void)flushAllFormulaChanges
{
  self->_flushAllInProgress = 1;
  v43 = self->_calcEngine;
  objc_msgSend_beginSuppressingWillModifyCalls(v43, v3, v4, v5, v6);
  objc_msgSend_beginBatchingGroupCellDirtying(v43, v7, v8, v9, v10);
  dispatch_sync(self->_backgroundProcessingQueue, &unk_2834A7A60);
  objc_msgSend_waitForAllPrecedentsToLoad(self, v11, v12, v13, v14);
  v19 = objc_msgSend_flushFormulaChangesForSeconds_(self, v15, v16, v17, v18, 0.0);
  self->_flushAllInProgress = 0;
  if ((v19 & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCEFormulasToSet flushAllFormulaChanges]", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 742, 0, "We should be empty now, always");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    objc_msgSend_flushFormulaChangesForSeconds_(self, v35, v36, v37, v38, 0.0);
  }

  objc_msgSend_endBatchingGroupCellDirtying(v43, v20, v21, v22, v23);
  objc_msgSend_endSuppressingWillModifyCalls(v43, v39, v40, v41, v42);
}

- (BOOL)flushFormulaChangesForSeconds:(double)a3
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  v5 = TSCECellRefSet::isEmpty(&self->_formulasToRemove) ^ 1;
  size = self->_formulasToReplace.__table_.__size_;
  v7 = size != 0;
  v8 = TSCECellRefSet::isEmpty(&self->_formulasToReset) ^ 1;
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((v5 & 1) == 0 && !size && !v8)
  {
    return 1;
  }

  v14 = objc_msgSend_dependencyTracker(self->_calcEngine, v9, v10, v11, v12);
  if (v14)
  {
    if (a3 <= 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = objc_opt_new();
    }

    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_2213E90F8;
    v33 = &unk_278460DF0;
    v16 = v15;
    v34 = v16;
    v35 = a3;
    v21 = MEMORY[0x223DA1C10](&v30);
    v22 = 1;
    while (1)
    {
      v23 = v22;
      if (v5)
      {
        objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(self, v17, v14, v16, v20, a3, v30, v31, v32, v33);
        if (v21[2](v21))
        {
          break;
        }
      }

      if (v8)
      {
        objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(self, v17, v14, v16, v20, a3);
        if (v21[2](v21))
        {
          break;
        }
      }

      if (v7)
      {
        objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(self, v17, v14, v16, v20, a3);
      }

      if (v16)
      {
        v22 = 0;
        if (v23)
        {
          break;
        }
      }

      else
      {
        os_unfair_lock_lock(&self->_removeReplaceMutex);
        isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
        v25 = self->_formulasToReplace.__table_.__size_;
        v26 = TSCECellRefSet::isEmpty(&self->_formulasToReset);
        os_unfair_lock_unlock(&self->_removeReplaceMutex);
        v22 = 0;
        v27 = v25 == 0;
        v7 = v25 != 0;
        v5 = isEmpty ^ 1;
        LOBYTE(v8) = v26 ^ 1;
        if (v27)
        {
          v28 = isEmpty;
        }

        else
        {
          v28 = 0;
        }

        if (v28 & v26)
        {
          break;
        }
      }
    }

    v13 = objc_msgSend_isEmpty(self, v17, v18, v19, v20, v30, v31, v32, v33);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 72;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end