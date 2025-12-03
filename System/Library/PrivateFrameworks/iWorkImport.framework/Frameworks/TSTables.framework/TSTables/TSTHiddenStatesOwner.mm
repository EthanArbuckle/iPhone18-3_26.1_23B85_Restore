@interface TSTHiddenStatesOwner
- (TSKUIDStruct)baseTableUID;
- (TSTHiddenStatesOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table;
- (TSTHiddenStatesOwner)initWithBaseTable:(id)table;
- (TSTTableModel)tableModel;
- (id)calcEngine;
- (id)description;
- (id)hiddenStates;
- (id)hiddenStatesByExtentUid:(const TSKUIDStruct *)uid;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (void)didChangeExtentUids:(id)uids;
- (void)registerHiddenStates:(id)states baseOwnerUID:(const TSKUIDStruct *)d;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)unregisterHiddenStates:(id)states;
- (void)willChangeExtentUids:(id)uids;
@end

@implementation TSTHiddenStatesOwner

- (TSTHiddenStatesOwner)initWithBaseTable:(id)table
{
  tableCopy = table;
  v13.receiver = self;
  v13.super_class = TSTHiddenStatesOwner;
  v5 = [(TSTHiddenStatesOwner *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tableModel, tableCopy);
    v6->_baseTableUID._lower = objc_msgSend_tableUID(tableCopy, v7, v8, v9, v10);
    v6->_baseTableUID._upper = v11;
  }

  return v6;
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  if (d._lower != self->_baseTableUID._lower || d._upper != self->_baseTableUID._upper)
  {
    self->_baseTableUID = d;
  }
}

- (id)hiddenStates
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_hiddenStatesByRowExtentUuid, a2, v2, v3, v4) == -1)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTHiddenStatesOwner hiddenStates]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStatesOwner.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 56, 0, "We should only have one hiddenStates per table, at the moment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  memset(v27, 0, sizeof(v27));
  v20 = self->_hiddenStatesByRowExtentUuid;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v27, v28, 16))
  {
    v25 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v22, **(&v27[0] + 1), v23, v24, *&v27[0]);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)description
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = TSKUIDStruct::description(&self->_baseTableUID);
  v9 = objc_msgSend_stringWithFormat_(v3, v6, @"%@<%p>(on table %@)", v7, v8, v4, self, v5);

  if (objc_msgSend_count(self->_hiddenStatesByRowExtentUuid, v10, v11, v12, v13) || objc_msgSend_count(self->_hiddenStatesByColumnExtentUuid, v14, v15, v16, v17))
  {
    objc_msgSend_appendFormat_(v9, v14, @"\n Hidden States:\n", v16, v17);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = self->_hiddenStatesByRowExtentUuid;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v35, 16);
    if (v23)
    {
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v20, *(*(&v31 + 1) + 8 * i), v21, v22);
          objc_msgSend_appendFormat_(v9, v27, @"  - %@\n", v28, v29, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v31, v35, 16);
      }

      while (v23);
    }
  }

  return v9;
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  v24 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_calcEngine, engine);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_hiddenStatesByRowExtentUuid;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v7, *(*(&v19 + 1) + 8 * v12), v8, v9, v19);
        WeakRetained = objc_loadWeakRetained(&self->_tableModel);
        objc_msgSend_setTableModel_(v13, v15, WeakRetained, v16, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v10);
  }

  return 0;
}

- (id)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (void)registerHiddenStates:(id)states baseOwnerUID:(const TSKUIDStruct *)d
{
  statesCopy = states;
  if (statesCopy)
  {
    if (!self->_hiddenStatesByRowExtentUuid)
    {
      v11 = objc_opt_new();
      hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
      self->_hiddenStatesByRowExtentUuid = v11;
    }

    if (!self->_hiddenStatesByColumnExtentUuid)
    {
      v13 = objc_opt_new();
      hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
      self->_hiddenStatesByColumnExtentUuid = v13;
    }

    v15 = self->_hiddenStatesByRowExtentUuid;
    v16 = objc_msgSend_rowHiddenStateExtent(statesCopy, v6, v7, v8, v9);
    v58._lower = objc_msgSend_hiddenStateExtentUid(v16, v17, v18, v19, v20);
    v58._upper = v21;
    v22 = TSKUIDStruct::description(&v58);
    objc_msgSend_setObject_forKey_(v15, v23, statesCopy, v22, v24);

    v25 = self->_hiddenStatesByColumnExtentUuid;
    v30 = objc_msgSend_columnHiddenStateExtent(statesCopy, v26, v27, v28, v29);
    v58._lower = objc_msgSend_hiddenStateExtentUid(v30, v31, v32, v33, v34);
    v58._upper = v35;
    v36 = TSKUIDStruct::description(&v58);
    objc_msgSend_setObject_forKey_(v25, v37, statesCopy, v36, v38);

    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    if (WeakRetained)
    {
      v40 = objc_loadWeakRetained(&self->_calcEngine);
      v43 = objc_msgSend_registerWithCalcEngine_baseOwnerUID_(statesCopy, v41, v40, d, v42);

      if (v43)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSTHiddenStatesOwner registerHiddenStates:baseOwnerUID:]", v45, v46);
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHiddenStatesOwner.mm", v50, v51);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 115, 0, "HiddenStates couldn't register with calc-engine");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
      }
    }
  }
}

- (id)hiddenStatesByExtentUid:(const TSKUIDStruct *)uid
{
  v4 = TSKUIDStruct::description(uid);
  v8 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v5, v4, v6, v7);
  v12 = v8;
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = objc_msgSend_objectForKey_(self->_hiddenStatesByColumnExtentUuid, v9, v4, v10, v11);
  }

  v14 = v13;

  return v14;
}

- (void)unregisterHiddenStates:(id)states
{
  statesCopy = states;
  v9 = statesCopy;
  if (statesCopy)
  {
    hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
    v11 = objc_msgSend_rowHiddenStateExtent(statesCopy, v5, v6, v7, v8);
    v36._lower = objc_msgSend_hiddenStateExtentUid(v11, v12, v13, v14, v15);
    v36._upper = v16;
    v17 = TSKUIDStruct::description(&v36);
    objc_msgSend_removeObjectForKey_(hiddenStatesByRowExtentUuid, v18, v17, v19, v20);

    hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
    v26 = objc_msgSend_columnHiddenStateExtent(v9, v22, v23, v24, v25);
    v36._lower = objc_msgSend_hiddenStateExtentUid(v26, v27, v28, v29, v30);
    v36._upper = v31;
    v32 = TSKUIDStruct::description(&v36);
    objc_msgSend_removeObjectForKey_(hiddenStatesByColumnExtentUuid, v33, v32, v34, v35);
  }
}

- (void)willChangeExtentUids:(id)uids
{
  uidsCopy = uids;
  v9 = objc_msgSend_tableModel(self, v5, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12, v13);

  hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
  v19 = objc_msgSend_rowHiddenStateExtent(uidsCopy, v15, v16, v17, v18);
  v44._lower = objc_msgSend_hiddenStateExtentUid(v19, v20, v21, v22, v23);
  v44._upper = v24;
  v25 = TSKUIDStruct::description(&v44);
  objc_msgSend_removeObjectForKey_(hiddenStatesByRowExtentUuid, v26, v25, v27, v28);

  hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
  v34 = objc_msgSend_columnHiddenStateExtent(uidsCopy, v30, v31, v32, v33);
  v44._lower = objc_msgSend_hiddenStateExtentUid(v34, v35, v36, v37, v38);
  v44._upper = v39;
  v40 = TSKUIDStruct::description(&v44);
  objc_msgSend_removeObjectForKey_(hiddenStatesByColumnExtentUuid, v41, v40, v42, v43);
}

- (void)didChangeExtentUids:(id)uids
{
  uidsCopy = uids;
  hiddenStatesByRowExtentUuid = self->_hiddenStatesByRowExtentUuid;
  v10 = objc_msgSend_rowHiddenStateExtent(uidsCopy, v6, v7, v8, v9);
  v33._lower = objc_msgSend_hiddenStateExtentUid(v10, v11, v12, v13, v14);
  v33._upper = v15;
  v16 = TSKUIDStruct::description(&v33);
  objc_msgSend_setObject_forKey_(hiddenStatesByRowExtentUuid, v17, uidsCopy, v16, v18);

  hiddenStatesByColumnExtentUuid = self->_hiddenStatesByColumnExtentUuid;
  v24 = objc_msgSend_columnHiddenStateExtent(uidsCopy, v20, v21, v22, v23);
  v33._lower = objc_msgSend_hiddenStateExtentUid(v24, v25, v26, v27, v28);
  v33._upper = v29;
  v30 = TSKUIDStruct::description(&v33);
  objc_msgSend_setObject_forKey_(hiddenStatesByColumnExtentUuid, v31, uidsCopy, v30, v32);
}

- (TSTHiddenStatesOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forBaseTable:(id)table
{
  unarchiverCopy = unarchiver;
  v12 = objc_msgSend_initWithBaseTable_(self, v9, table, v10, v11);
  if (v12)
  {
    v13 = *(archive + 8);
    if (v13 >= 1)
    {
      v14 = 8;
      do
      {
        v15 = [TSTHiddenStates alloc];
        v17 = objc_msgSend_initWithArchive_unarchiver_forHiddenStatesOwner_(v15, v16, *(*(archive + 5) + v14), unarchiverCopy, v12);
        objc_msgSend_registerHiddenStates_baseOwnerUID_(v12, v18, v17, &v12->_baseTableUID, v19);

        v14 += 8;
        --v13;
      }

      while (v13);
    }
  }

  return v12;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v47 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v44 = 0;
  v45 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_hiddenStatesByRowExtentUuid;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v40, v46, 16);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v8, *(*(&v40 + 1) + 8 * i), v9, v10);
        v19 = *(archive + 5);
        if (!v19)
        {
          goto LABEL_11;
        }

        v20 = *(archive + 8);
        v21 = *v19;
        if (v20 < *v19)
        {
          *(archive + 8) = v20 + 1;
          objc_msgSend_encodeToArchive_archiver_(v18, v16, *&v19[2 * v20 + 2], archiverCopy, v17);
          goto LABEL_13;
        }

        if (v21 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v19 = *(archive + 5);
          v21 = *v19;
        }

        *v19 = v21 + 1;
        v26 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesArchive>(*(archive + 3));
        v27 = *(archive + 8);
        v28 = *(archive + 5) + 8 * v27;
        *(archive + 8) = v27 + 1;
        *(v28 + 8) = v26;
        objc_msgSend_encodeToArchive_archiver_(v18, v29, v26, archiverCopy, v30);
LABEL_13:
        if (!(v13 | v12))
        {
          v31 = objc_msgSend_rowHiddenStateExtent(v18, v22, v23, v24, v25);
          v13 = objc_msgSend_hiddenStateExtentUid(v31, v32, v33, v34, v35);
          v12 = v36;
          v44 = v13;
          v45 = v36;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v40, v46, 16);
    }

    while (v11);
  }

  *(archive + 4) |= 1u;
  v37 = *(archive + 6);
  if (!v37)
  {
    v38 = *(archive + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0360](v38);
    *(archive + 6) = v37;
  }

  TSP::UUIDData::saveToMessage(&v44, v37);
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  v23 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_hiddenStatesByRowExtentUuid;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_objectForKey_(self->_hiddenStatesByRowExtentUuid, v9, *(*(&v18 + 1) + 8 * v14), v10, v11, v18);
        objc_msgSend_remapTableUIDsInFormulasWithMap_calcEngine_(v15, v16, map, engineCopy, v17);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v18, v22, 16);
    }

    while (v12);
  }
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

- (TSKUIDStruct)baseTableUID
{
  upper = self->_baseTableUID._upper;
  lower = self->_baseTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end