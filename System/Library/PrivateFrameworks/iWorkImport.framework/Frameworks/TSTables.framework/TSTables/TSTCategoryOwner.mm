@interface TSTCategoryOwner
+ (int64_t)p_compareGroupByViaOwnerIndexes:(id)a3 otherGroupBy:(id)a4;
- (BOOL)allowRegistrationOfAggFormulas;
- (BOOL)backwardCompatibleToPrePivot;
- (BOOL)hasEnabledGroupBys;
- (NSArray)groupBys;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)p_willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 refreshCategoryInfo:(BOOL)a5;
- (TSTCategoryOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTable:(id)a5;
- (TSTCategoryOwner)initWithBaseTableModel:(id)a3;
- (TSTCategoryOwner)initWithContext:(id)a3;
- (TSTTableModel)tableModel;
- (id)description;
- (id)groupByByUid:(const TSKUIDStruct *)a3;
- (id)groupByForOwnerIndex:(unsigned __int16)a3;
- (id)registerGroupByForColumns:(id)a3 ownerIndex:(unsigned __int16)a4 hiddenStates:(id)a5 groupBySet:(id)a6;
- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4;
- (void)addGroupByInSortedOrder:(id)a3;
- (void)dealloc;
- (void)didAddRows:(const void *)a3;
- (void)didMergeRange:(TSUModelCellRect)a3;
- (void)didUnmergeRange:(TSUModelCellRect)a3;
- (void)linkGroupBy:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)rebuildAllAggFormulas;
- (void)registerWithDistributors;
- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4;
- (void)resetAllGroupings;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setBaseTableUID:(TSKUIDStruct)a3;
- (void)setFormulaOwnerUIDsWithMap:(id)a3;
- (void)setTableModel:(id)a3;
- (void)sortGroupBys;
- (void)teardown;
- (void)unregisterFromCalcEngine;
- (void)unregisterFromDistributors;
- (void)unregisterGroupBy:(id)a3;
- (void)updateWithDocumentRoot:(id)a3;
- (void)willApplyBaseCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4;
- (void)willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 tableUID:(const TSKUIDStruct *)a5;
- (void)willApplyConcurrentCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4;
- (void)willModify;
- (void)willRemoveRows:(const void *)a3 tableUID:(const TSKUIDStruct *)a4;
@end

@implementation TSTCategoryOwner

- (TSTCategoryOwner)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSTCategoryOwner;
  result = [(TSTCategoryOwner *)&v4 initWithContext:a3];
  if (result)
  {
    result->_baseTableUID._lower = 0;
    result->_baseTableUID._upper = 0;
    result->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (TSTCategoryOwner)initWithBaseTableModel:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_context(v4, v5, v6, v7, v8);
  v17.receiver = self;
  v17.super_class = TSTCategoryOwner;
  v10 = [(TSTCategoryOwner *)&v17 initWithContext:v9];

  if (v10)
  {
    v10->_baseTableUID._lower = objc_msgSend_tableUID(v4, v11, v12, v13, v14);
    v10->_baseTableUID._upper = v15;
    objc_storeWeak(&v10->_tableModel, v4);
    v10->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v10;
}

- (NSArray)groupBys
{
  os_unfair_lock_lock(&self->_lock);
  v7 = objc_msgSend_copy(self->_groupBys, v3, v4, v5, v6);
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)rebuildAllAggFormulas
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_groupBys(self, a2, v2, v3, v4);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_rebuildAllAggFormulas(*(*(&v14 + 1) + 8 * v13++), v7, v8, v9, v10, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)setBaseTableUID:(TSKUIDStruct)a3
{
  v12 = a3;
  p_baseTableUID = &self->_baseTableUID;
  if (a3._lower != self->_baseTableUID._lower || a3._upper != self->_baseTableUID._upper)
  {
    v9 = self->_calcEngine;
    if (self->_isRegisteredWithCalcEngine)
    {
      objc_msgSend_unregisterFromCalcEngine(self, v5, v6, v7, v8);
      *p_baseTableUID = v12;
      objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self, v10, v9, &v12, v11);
    }

    else
    {
      *p_baseTableUID = v12;
    }
  }
}

- (void)setTableModel:(id)a3
{
  v4 = a3;
  v25 = v4;
  if (v4)
  {
    objc_storeWeak(&self->_tableModel, v4);
    v12 = objc_msgSend_tableUID(v25, v8, v9, v10, v11);
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryOwner setTableModel:]", v6, v7);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 129, 0, "invalid nil value for '%{public}s'", "tableModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    objc_storeWeak(&self->_tableModel, 0);
    v13 = 0;
    v12 = 0;
  }

  self->_baseTableUID._lower = v12;
  self->_baseTableUID._upper = v13;
}

- (void)dealloc
{
  objc_msgSend_teardown(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSTCategoryOwner;
  [(TSTCategoryOwner *)&v6 dealloc];
}

- (BOOL)hasEnabledGroupBys
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_groupBys;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isEnabled(*(*(&v13 + 1) + 8 * i), v5, v6, v7, v8, v13))
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (BOOL)backwardCompatibleToPrePivot
{
  os_unfair_lock_lock(&self->_lock);
  if (objc_msgSend_count(self->_groupBys, v3, v4, v5, v6) > 1)
  {
    goto LABEL_5;
  }

  if (!objc_msgSend_count(self->_groupBys, v7, v8, v9, v10))
  {
    v28 = 1;
    goto LABEL_7;
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(self->_groupBys, v11, 0, v12, v13);
  v19 = objc_msgSend_ownerIndex(v14, v15, v16, v17, v18);

  if (v19 == 8)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_groupBys, v20, 0, v21, v22);
    v28 = objc_msgSend_usesPrePivotAggregateTypesOnly(v23, v24, v25, v26, v27);
  }

  else
  {
LABEL_5:
    v28 = 0;
  }

LABEL_7:
  os_unfair_lock_unlock(&self->_lock);
  return v28;
}

- (void)willModify
{
  v16.receiver = self;
  v16.super_class = TSTCategoryOwner;
  [(TSTCategoryOwner *)&v16 willModify];
  if (objc_msgSend_backwardCompatibleToPrePivot(self, v3, v4, v5, v6))
  {
    v11 = objc_msgSend_tableModel(self, v7, v8, v9, v10);
    objc_msgSend_willModify(v11, v12, v13, v14, v15);
  }
}

+ (int64_t)p_compareGroupByViaOwnerIndexes:(id)a3 otherGroupBy:(id)a4
{
  v5 = a3;
  v10 = a4;
  if (v5 == v10)
  {
    goto LABEL_10;
  }

  v11 = objc_msgSend_ownerIndex(v5, v6, v7, v8, v9);
  if (v11 >= objc_msgSend_ownerIndex(v10, v12, v13, v14, v15))
  {
    v21 = objc_msgSend_ownerIndex(v5, v16, v17, v18, v19);
    if (v21 != objc_msgSend_ownerIndex(v10, v22, v23, v24, v25))
    {
      goto LABEL_11;
    }

    v30 = objc_msgSend_groupByUid(v5, v26, v27, v28, v29);
    v32 = v31;
    v36 = objc_msgSend_groupByUid(v10, v31, v33, v34, v35);
    if (v32 < v37 || v32 == v37 && v30 < v36)
    {
      goto LABEL_3;
    }

    v41 = objc_msgSend_groupByUid(v5, v37, v38, v39, v40);
    v43 = v42;
    if (v41 != objc_msgSend_groupByUid(v10, v42, v44, v45, v46) || v43 != v47)
    {
LABEL_11:
      v20 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_12;
  }

LABEL_3:
  v20 = -1;
LABEL_12:

  return v20;
}

- (void)addGroupByInSortedOrder:(id)a3
{
  v24 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (objc_msgSend_count(self->_groupBys, v4, v5, v6, v7))
  {
    for (i = 0; ; ++i)
    {
      v16 = objc_msgSend_count(self->_groupBys, v8, v9, v10, v11);
      groupBys = self->_groupBys;
      if (i >= v16)
      {
        objc_msgSend_addObject_(groupBys, v13, v24, v14, v15);
        goto LABEL_11;
      }

      v18 = objc_msgSend_objectAtIndexedSubscript_(groupBys, v13, i, v14, v15);
      v21 = objc_msgSend_p_compareGroupByViaOwnerIndexes_otherGroupBy_(TSTCategoryOwner, v19, v24, v18, v20);
      if (!v21)
      {
        break;
      }

      if (v21 == -1)
      {
        objc_msgSend_insertObject_atIndex_(self->_groupBys, v22, v24, i, v23);
        break;
      }
    }
  }

  else
  {
    objc_msgSend_addObject_(self->_groupBys, v8, v24, v10, v11);
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)sortGroupBys
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_groupBys(self, a2, v2, v3, v4);
  v14 = objc_msgSend_count(v6, v7, v8, v9, v10);
  if (v14 >= 2)
  {
    v15 = 1;
    while (1)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v6, v11, v15 - 1, v12, v13);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v6, v17, v15, v18, v19);
      v23 = objc_msgSend_p_compareGroupByViaOwnerIndexes_otherGroupBy_(TSTCategoryOwner, v21, v16, v20, v22);

      if (v23 != -1)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_14;
      }
    }

    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_removeAllObjects(self->_groupBys, v24, v25, v26, v27);
    os_unfair_lock_unlock(&self->_lock);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v6;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v36, v40, 16);
    if (v33)
    {
      v34 = *v37;
      do
      {
        v35 = 0;
        do
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend_addGroupByInSortedOrder_(self, v30, *(*(&v36 + 1) + 8 * v35++), v31, v32, v36);
        }

        while (v33 != v35);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v36, v40, 16);
      }

      while (v33);
    }
  }

LABEL_14:
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = TSKUIDStruct::description(&self->_baseTableUID);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p> (on table %@)", v7, v8, v4, self, v5);

  return v9;
}

- (void)registerWithDistributors
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v7 = objc_msgSend_cellWillChangeDistributor(WeakRetained, v3, v4, v5, v6);
  objc_msgSend_addReceiverIfMissing_(v7, v8, self, v9, v10);

  v15 = objc_msgSend_mergeOwner(WeakRetained, v11, v12, v13, v14);
  v20 = objc_msgSend_mergeChangeDistributor(v15, v16, v17, v18, v19);
  objc_msgSend_addReceiverIfMissing_(v20, v21, self, v22, v23);
}

- (void)unregisterFromDistributors
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  if (WeakRetained)
  {
    v25 = WeakRetained;
    v8 = objc_msgSend_mergeOwner(WeakRetained, v4, v5, v6, v7);
    v13 = objc_msgSend_mergeChangeDistributor(v8, v9, v10, v11, v12);
    objc_msgSend_removeReceiver_(v13, v14, self, v15, v16);

    v21 = objc_msgSend_cellWillChangeDistributor(v25, v17, v18, v19, v20);
    objc_msgSend_removeReceiver_(v21, v22, self, v23, v24);

    WeakRetained = v25;
  }
}

- (void)teardown
{
  v21 = *MEMORY[0x277D85DE8];
  objc_msgSend_unregisterFromDistributors(self, a2, v2, v3, v4);
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_groupBys;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_teardown(*(*(&v16 + 1) + 8 * v14++), v8, v9, v10, v11, v16);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v16, v20, 16);
    }

    while (v12);
  }

  groupBys = self->_groupBys;
  self->_groupBys = 0;

  os_unfair_lock_unlock(&self->_lock);
  objc_storeWeak(&self->_tableModel, 0);
  self->_calcEngine = 0;
}

- (int)registerWithCalcEngine:(id)a3 baseOwnerUID:(const TSKUIDStruct *)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v87 = a3;
  v90 = self;
  if (self->_isRegisteredWithCalcEngine)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCategoryOwner registerWithCalcEngine:baseOwnerUID:]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 356, 0, "Already registered with calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v90->_calcEngine = v87;
  v90->_isRegisteredWithCalcEngine = 1;
  objc_msgSend_groupBys(v90, v6, v7, v8, v9);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  obj = v92 = 0u;
  v22 = 0;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v91, v95, 16);
  if (v27)
  {
    v89 = *v92;
    v86 = *MEMORY[0x277D808F8];
    do
    {
      v28 = 0;
      v29 = v22;
      do
      {
        if (*v92 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v91 + 1) + 8 * v28);
        if (objc_msgSend_isRegisteredWithCalcEngine(v30, v23, v24, v25, v26))
        {
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTCategoryOwner registerWithCalcEngine:baseOwnerUID:]", v33, v34);
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v38, v39);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 365, 0, "GroupBy shouldn't be registered yet.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
        }

        if (objc_msgSend_ownerIndex(v30, v31, v32, v33, v34) != 8 || objc_msgSend_loadFromFileVersion(v87, v46, v47, v48, v49) >= v86)
        {
          v50 = objc_msgSend_ownerIndex(v30, v46, v47, v48, v49);
          v54 = sub_2212C4930(a4, v50, v51, v52, v53);
          objc_msgSend_setGroupByUid_(v30, v55, v54, v55, v56);
        }

        calcEngine = v90->_calcEngine;
        v58 = objc_msgSend_groupByUid(v30, v46, v47, v48, v49);
        v60 = v59;
        lower = a4->_lower;
        upper = a4->_upper;
        LOWORD(v85) = objc_msgSend_ownerIndex(v30, v59, v63, v64, v65);
        v22 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v66, v58, v60, v30, 0, lower, upper, v85);
        if (!v22)
        {
          objc_msgSend_setIsRegisteredWithCalcEngine_(v30, v23, 1, v25, v26);
          objc_msgSend_checkForFormulaCoordUpgrade(v30, v67, v68, v69, v70);
          v22 = v29;
        }

        ++v28;
        v29 = v22;
      }

      while (v27 != v28);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v91, v95, 16);
    }

    while (v27);
  }

  WeakRetained = objc_loadWeakRetained(&v90->_tableModel);
  v76 = objc_msgSend_documentRoot(WeakRetained, v72, v73, v74, v75);
  objc_msgSend_updateWithDocumentRoot_(v90, v77, v76, v78, v79);

  objc_msgSend_registerWithDistributors(v90, v80, v81, v82, v83);
  return v22;
}

- (void)unregisterFromCalcEngine
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_isRegisteredWithCalcEngine)
  {
    objc_msgSend_groupBys(self, a2, v2, v3, v4);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v6 = v24 = 0u;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
    if (v12)
    {
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (objc_msgSend_isRegisteredWithCalcEngine(v15, v8, v9, v10, v11, v23))
          {
            calcEngine = self->_calcEngine;
            v17 = objc_msgSend_groupByUid(v15, v8, v9, v10, v11);
            objc_msgSend_unregisterOwner_(calcEngine, v18, v17, v18, v19);
            objc_msgSend_setIsRegisteredWithCalcEngine_(v15, v20, 0, v21, v22);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v23, v27, 16);
      }

      while (v12);
    }
  }

  self->_calcEngine = 0;
  self->_isRegisteredWithCalcEngine = 0;
}

- (void)linkGroupBy:(id)a3
{
  v40 = a3;
  if (v40)
  {
    v8 = objc_msgSend_groupByUid(v40, v4, v5, v6, v7);
    if (v8 | v9)
    {
      objc_msgSend_setCategoryOwner_(v40, v9, self, v10, v11);
      v12 = self;
      objc_sync_enter(v12);
      os_unfair_lock_lock(&v12->_lock);
      if (!v12->_groupBys)
      {
        v13 = objc_opt_new();
        groupBys = v12->_groupBys;
        v12->_groupBys = v13;
      }

      os_unfair_lock_unlock(&v12->_lock);
      objc_msgSend_addGroupByInSortedOrder_(v12, v15, v40, v16, v17);
      objc_sync_exit(v12);

      if (v12->_isRegisteredWithCalcEngine)
      {
        calcEngine = v12->_calcEngine;
        if (calcEngine)
        {
          v23 = objc_msgSend_groupByUid(v40, v18, v19, v20, v21);
          v25 = v24;
          v29 = objc_msgSend_baseTableUID(v12, v24, v26, v27, v28);
          v31 = v30;
          v39 = objc_msgSend_ownerIndex(v40, v30, v32, v33, v34);
          objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v35, v23, v25, v40, 0, v29, v31, v39);
          objc_msgSend_setIsRegisteredWithCalcEngine_(v40, v36, 1, v37, v38);
        }
      }
    }
  }
}

- (void)resetAllGroupings
{
  v24 = *MEMORY[0x277D85DE8];
  objc_msgSend_groupBys(self, a2, v2, v3, v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        objc_msgSend_resetGroupings(v14, v7, v8, v9, v10, v19);
        objc_msgSend_didChangeGroupByStructure(v14, v15, v16, v17, v18);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v11);
  }
}

- (id)groupByByUid:(const TSKUIDStruct *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_groupBys;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_groupByUid(v14, v7, v8, v9, v10, v18) == a3->_lower && v7 == a3->_upper)
        {
          v16 = v14;
          goto LABEL_14;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  os_unfair_lock_unlock(&self->_lock);

  return v16;
}

- (id)groupByForOwnerIndex:(unsigned __int16)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_groupBys;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_ownerIndex(v14, v7, v8, v9, v10, v17) == v3)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)registerGroupByForColumns:(id)a3 ownerIndex:(unsigned __int16)a4 hiddenStates:(id)a5 groupBySet:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v16 = a6;
  if (v8 != 8 && (v8 - 205) >= 0x44Du)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCategoryOwner registerGroupByForColumns:ownerIndex:hiddenStates:groupBySet:]", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 486, 0, "Bad ownerIndex (%d) for groupBy", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = sub_2212C4930(&self->_baseTableUID._lower, v8, v13, v14, v15);
  v30 = v29;
  v74[0] = v28;
  v74[1] = v29;
  v33 = objc_msgSend_groupByForOwnerIndex_(self, v29, v8, v31, v32);
  v38 = v33;
  if (v33)
  {
    if (objc_msgSend_groupByUid(v33, v34, v35, v36, v37) != v28 || v39 != v30)
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTCategoryOwner registerGroupByForColumns:ownerIndex:hiddenStates:groupBySet:]", v40, v41);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 493, 0, "If ownerIndex matches up, then so should groupByUid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    objc_msgSend_resetWithGroupings_categoryOwner_hiddenStates_groupBySet_(v38, v39, v10, self, v11, v16);
  }

  else
  {
    v53 = [TSTGroupBy alloc];
    isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(v53, v54, v10, 1, self, v74, v8);
    objc_msgSend_setHiddenStates_(isEnabled_categoryOwner_groupByUid_ownerIndex, v56, v11, v57, v58);
    objc_msgSend_setGroupBySet_(isEnabled_categoryOwner_groupByUid_ownerIndex, v59, v16, v60, v61);
    objc_msgSend_linkGroupBy_(self, v62, isEnabled_categoryOwner_groupByUid_ownerIndex, v63, v64);
    objc_msgSend_resetGroupings(isEnabled_categoryOwner_groupByUid_ownerIndex, v65, v66, v67, v68);
    v38 = isEnabled_categoryOwner_groupByUid_ownerIndex;
    objc_msgSend_didChangeGroupByStructure(isEnabled_categoryOwner_groupByUid_ownerIndex, v69, v70, v71, v72);
  }

  return v38;
}

- (void)unregisterGroupBy:(id)a3
{
  v26 = a3;
  if (v26)
  {
    objc_msgSend_willModify(self, v4, v5, v6, v7);
    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_removeObjectIdenticalTo_(self->_groupBys, v8, v26, v9, v10);
    os_unfair_lock_unlock(&self->_lock);
    if (objc_msgSend_isRegisteredWithCalcEngine(v26, v11, v12, v13, v14))
    {
      calcEngine = self->_calcEngine;
      v20 = objc_msgSend_groupByUid(v26, v15, v16, v17, v18);
      objc_msgSend_unregisterOwner_(calcEngine, v21, v20, v21, v22);
      objc_msgSend_setIsRegisteredWithCalcEngine_(v26, v23, 0, v24, v25);
    }
  }
}

- (void)updateWithDocumentRoot:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    objc_msgSend_groupBys(self, v4, v5, v6, v7);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v9 = v29 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_updateWithDocumentRoot_(*(*(&v28 + 1) + 8 * i), v11, v8, v12, v13);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v28, v32, 16);
      }

      while (v14);
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCategoryOwner updateWithDocumentRoot:]", v6, v7);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOwner.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 526, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }
}

- (BOOL)allowRegistrationOfAggFormulas
{
  if (self->_calcEngine)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tableModel);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_tableModel);
      v9 = objc_msgSend_calcEngine(v4, v5, v6, v7, v8);
      LOBYTE(WeakRetained) = v9 != 0;
    }
  }

  else
  {
    LOBYTE(WeakRetained) = 0;
  }

  return WeakRetained;
}

- (TSTCategoryOwner)initWithArchive:(const void *)a3 unarchiver:(id)a4 forBaseTable:(id)a5
{
  v8 = a4;
  v12 = objc_msgSend_initWithBaseTableModel_(self, v9, a5, v10, v11);
  if (v12)
  {
    v13 = *(a3 + 8);
    if (v13 >= 1)
    {
      v14 = 8;
      do
      {
        v15 = [TSTGroupBy alloc];
        v17 = objc_msgSend_initWithArchive_forCategoryOwner_unarchiver_(v15, v16, *(*(a3 + 5) + v14), v12, v8);
        v22 = objc_msgSend_groupByUid(v17, v18, v19, v20, v21);
        if (v22 | v23)
        {
          objc_msgSend_linkGroupBy_(v12, v23, v17, v24, v25);
        }

        v14 += 8;
        --v13;
      }

      while (v13);
    }
  }

  return v12;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v27 = 0;
  v28 = 0;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 6);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(a3 + 6) = v7;
  }

  TSP::UUIDData::saveToMessage(&v27, v7);
  v12 = objc_msgSend_groupByForOwnerIndex_(self, v9, 8, v10, v11, v27, v28);
  v17 = v12;
  if (v12)
  {
    if (!objc_msgSend_isPrePivotV2Compatible(v12, v13, v14, v15, v16))
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v6, v18, 0xC000000000007, @"TSTPivotTables_v2", v19);
      goto LABEL_15;
    }

    v20 = *(a3 + 5);
    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = *(a3 + 8);
    v22 = *v20;
    if (v21 < *v20)
    {
      *(a3 + 8) = v21 + 1;
      objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(v17, v18, *&v20[2 * v21 + 2], v6, 2);
      goto LABEL_15;
    }

    if (v22 == *(a3 + 9))
    {
LABEL_13:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
      v20 = *(a3 + 5);
      v22 = *v20;
    }

    *v20 = v22 + 1;
    v23 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive>(*(a3 + 3));
    v24 = *(a3 + 8);
    v25 = *(a3 + 5) + 8 * v24;
    *(a3 + 8) = v24 + 1;
    *(v25 + 8) = v23;
    objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(v17, v26, v23, v6, 2);
  }

LABEL_15:
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[278], v6, v7);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22128C4D0;
  v12[3] = &unk_27845D8D8;
  v12[4] = self;
  v9 = v4;
  v10 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v9, v11, v8 + 16, v10, 0, v12);
}

- (void)saveToArchiver:(id)a3
{
  v9 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v9, v4, sub_22128DD6C, off_2812E4498[278], v5);

  os_unfair_lock_lock(&self->_lock);
  objc_msgSend_setStrongReferenceArray_message_(v9, v7, self->_groupBys, v6 + 16, v8);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)a3 calcEngine:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_msgSend_willModify(self, v7, v8, v9, v10);
  objc_msgSend_groupBys(self, v11, v12, v13, v14);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v15 = v23 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v22, v26, 16);
  if (v19)
  {
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(*(*(&v22 + 1) + 8 * v21++), v17, a3, v6, v18, v22);
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v22, v26, 16);
    }

    while (v19);
  }
}

- (void)setFormulaOwnerUIDsWithMap:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6, v7, v8);
  objc_msgSend_groupBys(self, v9, v10, v11, v12);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v13 = v53 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v52, v56, 16);
  if (v19)
  {
    v20 = *v53;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        v23 = objc_msgSend_groupByUid(v22, v15, v16, v17, v18);
        v25 = v24;
        v29 = objc_msgSend_tableUID(v4, v24, v26, v27, v28);
        v34 = objc_msgSend_ownerIndex(v22, v30, v31, v32, v33, v29, v30, v52);
        if (sub_2212C4930(&v51, v34, v35, v36, v37) == v23 && v15 == v25)
        {
          TableUID = objc_msgSend_nextTableUID(v4, v15, v16, v17, v18);
          v44 = objc_msgSend_ownerIndex(v22, v40, v41, v42, v43, TableUID, v40);
          v48 = sub_2212C4930(&v51, v44, v45, v46, v47);
          objc_msgSend_setGroupByUid_(v22, v49, v48, v49, v50);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v52, v56, 16);
    }

    while (v19);
  }
}

- (TSKUIDStruct)p_willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 refreshCategoryInfo:(BOOL)a5
{
  v109 = a5;
  v123 = *MEMORY[0x277D85DE8];
  v110 = a3;
  v111 = self;
  v107 = objc_msgSend_tableModel(self, v7, v8, v9, v10);
  v100 = objc_msgSend_mergeOwner(v107, v11, v12, v13, v14);
  v119.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v100, v15, *&a4, v16, v17);
  v119.size = v18;
  if (TSUCellRect::isValid(&v119))
  {
    column = TSUCellRect::firstColumn(&v119);
    LOWORD(v102) = TSUCellRect::lastColumn(&v119);
    if (v119.origin.row != a4._coord.row || ((*&v119.origin ^ *&a4) & 0x101FFFF00000000) != 0)
    {
      v120 = 0;
      v121 = 0;
      goto LABEL_40;
    }

    origin = v119.origin;
  }

  else
  {
    origin = a4;
    v102 = HIDWORD(*&a4);
    column = a4._coord.column;
  }

  v120 = 0;
  v121 = 0;
  v23 = objc_msgSend_columnRowUIDMap(v107, v19, v20, v21, v22);
  v120 = objc_msgSend_rowUIDForRowIndex_(v23, v24, *&a4, v25, v26);
  v121 = v27;

  objc_msgSend_willModify(self, v28, v29, v30, v31);
  v101 = objc_msgSend_groupBys(self, v32, v33, v34, v35);
  for (i = column; i <= v102; i = ++column)
  {
    v118 = 0uLL;
    v41 = objc_msgSend_columnRowUIDMap(v107, v36, v37, v38, v39);
    *&v118 = objc_msgSend_columnUIDForColumnIndex_(v41, v42, column, v43, v44);
    *(&v118 + 1) = v45;

    if (v118 != 0)
    {
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v101;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v114, v122, 16);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = *v115;
        v104 = *v115;
        do
        {
          v55 = 0;
          v105 = v51;
          do
          {
            if (*v115 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v114 + 1) + 8 * v55);
            if (objc_msgSend_isEnabled(v56, v47, v48, v49, v50) && (objc_msgSend_isForPivotTable(v56, v47, v48, v49, v50) & 1) == 0 && objc_msgSend_containsRowUid_(v56, v47, &v120, v49, v50) && v56)
            {
              objc_msgSend_groupingColumnLevelsForColumn_(v56, v47, &v118, v49, v50);
              v57 = v112;
              if (v112 != v113)
              {
                do
                {
                  v58 = *v57;
                  v59 = objc_msgSend_groupingColumns(v56, v47, v48, v49, v50);
                  v63 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, v58 - 1, v61, v62);

                  v64 = v120;
                  v65 = v121;
                  v70 = objc_msgSend_numberOfLevels(v56, v66, v67, v68, v69);
                  v74 = objc_msgSend_groupValueTupleForRowUid_atLevel_(v56, v71, v64, v65, v70);
                  if ((v52 & 1) == 0)
                  {
                    if (v110)
                    {
                      v75 = objc_msgSend_cellValueFromCell_atBaseCellCoord_(v107, v72, v110, origin, v73);

                      v53 = v75;
                      if (!v75)
                      {
                        v53 = objc_opt_new();
                      }
                    }

                    else
                    {
                      v76 = objc_opt_new();

                      v53 = v76;
                    }
                  }

                  v77 = objc_msgSend_groupValueForValue_calcEngine_(v63, v72, v53, v111->_calcEngine, v73);
                  v80 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(v74, v78, v77, v58, v79);
                  if ((objc_msgSend_isEqual_(v80, v81, v74, v82, v83) & 1) == 0)
                  {
                    objc_msgSend_removeRowUid_forGroupValue_(v56, v84, &v120, v74, v85);
                    objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(v56, v86, &v120, 0x7FFFFFFFLL, v80);
                    if (v109)
                    {
                      v91 = [TSCEUIDSet alloc];
                      v94 = objc_msgSend_initWithUUID_(v91, v92, v120, v121, v93);
                      objc_msgSend_willMakeGroupingChangesInRowUIDs_(v56, v95, v94, v96, v97);
                    }

                    objc_msgSend_markAllDependentsAsDirty(v56, v87, v88, v89, v90);
                  }

                  ++v57;
                  v52 = 1;
                }

                while (v57 != v113);
                v57 = v112;
              }

              if (v57)
              {
                v113 = v57;
                operator delete(v57);
              }

              v54 = v104;
              v51 = v105;
            }

            ++v55;
          }

          while (v55 != v51);
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v114, v122, 16);
        }

        while (v51);
      }

      else
      {
        v53 = 0;
      }
    }
  }

LABEL_40:
  v98 = v120;
  v99 = v121;
  result._upper = v99;
  result._lower = v98;
  return result;
}

- (void)willApplyCell:(id)a3 baseCellCoord:(TSUModelCellCoord)a4 tableUID:(const TSKUIDStruct *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (self->_calcEngine && (objc_msgSend_hasEnabledGroupBys(self, v7, v8, v9, v10) & 1) != 0)
  {
    objc_msgSend_groupBys(self, v12, v13, v14, v15);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v16 = v40 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v39, v44, 16);
    if (v22)
    {
      v23 = *v40;
      do
      {
        v24 = 0;
        do
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_startOfGroupingChangesBatch(*(*(&v39 + 1) + 8 * v24++), v18, v19, v20, v21);
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v39, v44, 16);
      }

      while (v22);
    }

    objc_msgSend_p_willApplyCell_baseCellCoord_refreshCategoryInfo_(self, v25, v11, *&a4, 1);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v16;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v35, v43, 16);
    if (v32)
    {
      v33 = *v36;
      do
      {
        v34 = 0;
        do
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(v26);
          }

          objc_msgSend_endOfGroupingChangesBatch(*(*(&v35 + 1) + 8 * v34++), v28, v29, v30, v31, v35);
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v35, v43, 16);
      }

      while (v32);
    }
  }
}

- (void)willApplyBaseCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (self->_calcEngine && (objc_msgSend_hasEnabledGroupBys(self, v5, v6, v7, v8) & 1) != 0)
  {
    v10 = objc_opt_new();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22128D398;
    v33[3] = &unk_27845ED98;
    v33[4] = self;
    v11 = v10;
    v34 = v11;
    objc_msgSend_enumerateCellsWithIDsUsingBlock_(v9, v12, v33, v13, v14);
    objc_msgSend_groupBys(self, v15, v16, v17, v18);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v19 = v30 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v29, v35, 16);
    if (v25)
    {
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v29 + 1) + 8 * i);
          if (objc_msgSend_isEnabled(v28, v21, v22, v23, v24, v29))
          {
            objc_msgSend_willMakeGroupingChangesInRowUIDs_(v28, v21, v11, v23, v24);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v29, v35, 16);
      }

      while (v25);
    }
  }
}

- (void)willApplyConcurrentCellMap:(id)a3 tableUID:(const TSKUIDStruct *)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (self->_calcEngine)
  {
    objc_msgSend_groupBys(self, v5, v6, v7, v8);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v10 = v41 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v45, 16);
    v17 = v10;
    if (v16)
    {
      v18 = *v41;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v10);
          }

          if (objc_msgSend_isEnabled(*(*(&v40 + 1) + 8 * i), v12, v13, v14, v15))
          {

            v20 = objc_opt_new();
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = sub_22128D6CC;
            v38[3] = &unk_2784624C0;
            v38[4] = self;
            v17 = v20;
            v39 = v17;
            objc_msgSend_enumerateSeriallyUsingBlock_(v9, v21, v38, v22, v23);
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = v10;
            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v34, v44, 16);
            if (v30)
            {
              v31 = *v35;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v35 != v31)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v33 = *(*(&v34 + 1) + 8 * j);
                  if (objc_msgSend_isEnabled(v33, v26, v27, v28, v29, v34))
                  {
                    objc_msgSend_willMakeGroupingChangesInRowUIDs_(v33, v26, v17, v28, v29);
                  }
                }

                v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v34, v44, 16);
              }

              while (v30);
            }

            goto LABEL_21;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v40, v45, 16);
        if (v16)
        {
          continue;
        }

        break;
      }

      v17 = v10;
    }

LABEL_21:
  }
}

- (void)didMergeRange:(TSUModelCellRect)a3
{
  origin = a3.var0.origin;
  v20 = a3;
  if (objc_msgSend_hasEnabledGroupBys(self, a2, *&a3.var0.origin, *&a3.var0.size, v3))
  {
    v10 = objc_msgSend_tableModel(self, v6, v7, v8, v9);
    v15 = objc_msgSend_newCell(v10, v11, v12, v13, v14);
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v10, v16, v15, origin, 1);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22128D850;
    v18[3] = &unk_2784624E8;
    v18[4] = self;
    v17 = v15;
    v19 = v17;
    sub_2211DCA74(&v20, v18);
  }
}

- (void)didUnmergeRange:(TSUModelCellRect)a3
{
  v20 = a3;
  if (objc_msgSend_hasEnabledGroupBys(self, a2, *&a3.var0.origin, *&a3.var0.size, v3))
  {
    v9 = objc_msgSend_tableModel(self, v5, v6, v7, v8);
    v14 = objc_msgSend_newCell(v9, v10, v11, v12, v13);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22128D934;
    v16[3] = &unk_278462510;
    v18 = self;
    v19 = v9;
    v17 = v14;
    v15 = v14;
    sub_2211DCA74(&v20, v16);
  }
}

- (void)willRemoveRows:(const void *)a3 tableUID:(const TSKUIDStruct *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasEnabledGroupBys(self, a2, a3, a4, v4))
  {
    v7 = [TSCEUIDSet alloc];
    v11 = objc_msgSend_initWithUUIDVector_(v7, v8, a3, v9, v10);
    if (objc_msgSend_count(v11, v12, v13, v14, v15))
    {
      objc_msgSend_willModify(self, v16, v17, v18, v19);
      objc_msgSend_groupBys(self, v20, v21, v22, v23);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v24 = v35 = 0u;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v34, v38, 16);
      if (v30)
      {
        v31 = *v35;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v35 != v31)
            {
              objc_enumerationMutation(v24);
            }

            v33 = *(*(&v34 + 1) + 8 * i);
            if (objc_msgSend_isEnabled(v33, v26, v27, v28, v29, v34))
            {
              objc_msgSend_removeRowUids_(v33, v26, v11, v28, v29);
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v34, v38, 16);
        }

        while (v30);
      }
    }
  }
}

- (void)didAddRows:(const void *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_hasEnabledGroupBys(self, a2, a3, v3, v4))
  {
    objc_msgSend_willModify(self, v7, v8, v9, v10);
    v11 = [TSCEUIDSet alloc];
    v15 = objc_msgSend_initWithUUIDVector_(v11, v12, a3, v13, v14);
    objc_msgSend_groupBys(self, v16, v17, v18, v19);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v20 = v31 = 0u;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
    if (v26)
    {
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v20);
          }

          v29 = *(*(&v30 + 1) + 8 * i);
          if (objc_msgSend_isEnabled(v29, v22, v23, v24, v25, v30))
          {
            objc_msgSend_insertRowUids_(v29, v22, v15, v24, v25);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v30, v34, 16);
      }

      while (v26);
    }
  }
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)baseTableUID
{
  p_baseTableUID = &self->_baseTableUID;
  lower = self->_baseTableUID._lower;
  upper = p_baseTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end