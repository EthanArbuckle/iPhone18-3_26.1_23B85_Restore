@interface TSCETrackedReferenceStore
- (TSCETrackedReferenceStore)initWithContext:(id)a3;
- (TSKUIDStruct)ownerUID;
- (id)allTrackedReferences;
- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)a3 calcEngine:(id)a4;
- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)a3 calcEngine:(id)a4;
- (id)trackedReferenceAtCoord:(TSUCellCoord)a3;
- (void)beginTrackingReference:(id)a3 calcEngine:(id)a4;
- (void)endTrackingReference:(id)a3 calcEngine:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setOwnerUID:(TSKUIDStruct)a3;
- (void)willClose;
@end

@implementation TSCETrackedReferenceStore

- (void)setOwnerUID:(TSKUIDStruct)a3
{
  upper = a3._upper;
  lower = a3._lower;
  objc_msgSend_willModify(self, a2, a3._lower, a3._upper, v3);
  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
}

- (TSCETrackedReferenceStore)initWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSCETrackedReferenceStore;
  v5 = [(TSCETrackedReferenceStore *)&v12 initWithContext:v4];
  if (v5)
  {
    v5->_ownerUID._lower = TSKMakeUIDStructRandom();
    v5->_ownerUID._upper = v6;
    v7 = objc_opt_new();
    trackedRefsLock = v5->_trackedRefsLock;
    v5->_trackedRefsLock = v7;

    v9 = objc_opt_new();
    trackedReferences = v5->_trackedReferences;
    v5->_trackedReferences = v9;

    v5->_nextEmptyTrackedReferencesIndex = 0;
  }

  return v5;
}

- (void)willClose
{
  trackedReferences = self->_trackedReferences;
  self->_trackedReferences = 0;
}

- (void)beginTrackingReference:(id)a3 calcEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  objc_msgSend_lock(self->_trackedRefsLock, v12, v13, v14, v15);
  nextEmptyTrackedReferencesIndex = self->_nextEmptyTrackedReferencesIndex;
  if (!(nextEmptyTrackedReferencesIndex >> 24))
  {
    v44 = objc_msgSend_coordFromIndex_(TSCETrackedReferenceStore, v16, nextEmptyTrackedReferencesIndex, v17, v18);
    objc_msgSend_setFormulaCoord_(v6, v20, v44, v21, v22);
    v27 = objc_msgSend_maxKey(self->_trackedReferences, v23, v24, v25, v26);
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27 + 1;
    }

    v31 = self->_nextEmptyTrackedReferencesIndex;
    trackedReferences = self->_trackedReferences;
    if (v31 == v30)
    {
      objc_msgSend_setObject_forKey_(trackedReferences, v28, v6, v30, v29);
      v30 = self->_nextEmptyTrackedReferencesIndex + 1;
    }

    else
    {
      objc_msgSend_setObject_forKey_(trackedReferences, v28, v6, self->_nextEmptyTrackedReferencesIndex, v29);
      v37 = v31;
      while (++v37 < v30)
      {
        if ((objc_msgSend_hasObjectForKey_(self->_trackedReferences, v33, v37, v35, v36) & 1) == 0)
        {
          self->_nextEmptyTrackedReferencesIndex = v37;
          goto LABEL_13;
        }
      }

      v37 = self->_nextEmptyTrackedReferencesIndex;
LABEL_13:
      if (v37 == v31)
      {
        v37 = 0;
        if (v31)
        {
          while ((objc_msgSend_hasObjectForKey_(self->_trackedReferences, v33, v37, v35, v36) & 1) != 0)
          {
            if (++v37 >= self->_nextEmptyTrackedReferencesIndex)
            {
              v37 = self->_nextEmptyTrackedReferencesIndex;
              goto LABEL_19;
            }
          }

          self->_nextEmptyTrackedReferencesIndex = v37;
        }
      }

LABEL_19:
      if (v37 != v31)
      {
        goto LABEL_21;
      }
    }

    self->_nextEmptyTrackedReferencesIndex = v30;
LABEL_21:
    objc_msgSend_unlock(self->_trackedRefsLock, v33, v34, v35, v36);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v43, 0, 1);
    v40 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_(v6, v38, v7, &self->_ownerUID, v39);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v42, &v43);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v7, v41, &v44, &self->_ownerUID, v40, &v42);

    goto LABEL_22;
  }

  objc_msgSend_unlock(self->_trackedRefsLock, v16, nextEmptyTrackedReferencesIndex, v17, v18);
LABEL_22:
}

- (id)beginTrackingReferenceWithCellRef:(const TSCECellRef *)a3 calcEngine:(id)a4
{
  v6 = a4;
  v7 = [TSCETrackedReference alloc];
  v11 = objc_msgSend_initWithCellRef_(v7, v8, a3, v9, v10);
  objc_msgSend_beginTrackingReference_calcEngine_(self, v12, v11, v6, v13);

  return v11;
}

- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)a3 calcEngine:(id)a4
{
  v6 = a4;
  v7 = [TSCETrackedReference alloc];
  v11 = objc_msgSend_initWithSpanningRangeRef_(v7, v8, a3, v9, v10);
  objc_msgSend_beginTrackingReference_calcEngine_(self, v12, v11, v6, v13);

  return v11;
}

- (void)endTrackingReference:(id)a3 calcEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_willModify(self, v8, v9, v10, v11);
  v33 = objc_msgSend_formulaCoord(v6, v12, v13, v14, v15);
  v19 = objc_msgSend_indexFromCoord_(TSCETrackedReferenceStore, v16, &v33, v17, v18);
  objc_msgSend_lock(self->_trackedRefsLock, v20, v21, v22, v23);
  objc_msgSend_removeObjectForKey_(self->_trackedReferences, v24, v19, v25, v26);
  if (self->_nextEmptyTrackedReferencesIndex > v19)
  {
    self->_nextEmptyTrackedReferencesIndex = v19;
  }

  objc_msgSend_unlock(self->_trackedRefsLock, v27, v28, v29, v30);
  objc_msgSend_removeFormulaAt_inOwner_(v7, v31, &v33, &self->_ownerUID, v32);
}

- (id)allTrackedReferences
{
  objc_msgSend_lock(self->_trackedRefsLock, a2, v2, v3, v4);
  v6 = MEMORY[0x277CBEB18];
  v11 = objc_msgSend_count(self->_trackedReferences, v7, v8, v9, v10);
  v15 = objc_msgSend_arrayWithCapacity_(v6, v12, v11, v13, v14);
  trackedReferences = self->_trackedReferences;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2212B7A34;
  v26[3] = &unk_278462990;
  v17 = v15;
  v27 = v17;
  objc_msgSend_foreach_(trackedReferences, v18, v26, v19, v20);
  objc_msgSend_unlock(self->_trackedRefsLock, v21, v22, v23, v24);

  return v17;
}

- (id)trackedReferenceAtCoord:(TSUCellCoord)a3
{
  v12 = a3;
  v6 = objc_msgSend_indexFromCoord_(TSCETrackedReferenceStore, a2, &v12, v3, v4);
  v10 = objc_msgSend_objectForKey_(self->_trackedReferences, v7, v6, v8, v9);

  return v10;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2212B8370, off_2812E2AC8[286], v6);

  v12 = objc_msgSend_count(self->_trackedReferences, v8, v9, v10, v11);
  *(v7 + 16) |= 1u;
  v13 = *(v7 + 96);
  if (!v13)
  {
    v14 = *(v7 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0300](v14);
    *(v7 + 96) = v13;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v13);
  if (v12 < 0xF4241)
  {
    trackedReferences = self->_trackedReferences;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2212B7C9C;
    v21[3] = &unk_2784629B8;
    v23 = v7;
    v22 = v4;
    objc_msgSend_foreach_(trackedReferences, v18, v21, v19, v20);
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(v4, v15, 0xA000000000003, @"TSTExpandedTables", v16);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E2AC8[286], v6, v7);

  v9 = TSKUIDStruct::loadFromMessage();
  self->_ownerUID._lower = v9;
  self->_ownerUID._upper = v10;
  if (!(v9 | v10))
  {
    self->_ownerUID._lower = TSKMakeUIDStructRandom();
    self->_ownerUID._upper = v11;
  }

  self->_nextEmptyTrackedReferencesIndex = 0;
  v12 = objc_opt_new();
  trackedRefsLock = self->_trackedRefsLock;
  self->_trackedRefsLock = v12;

  v14 = objc_opt_new();
  trackedReferences = self->_trackedReferences;
  self->_trackedReferences = v14;

  v16 = *(v8 + 80);
  v17 = *(v8 + 56);
  v18 = *(v8 + 32);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_2212B80D4;
  v44[3] = &unk_2784629E0;
  v44[4] = self;
  v19 = MEMORY[0x223DA1C10](v44);
  v23 = v19;
  if (v16)
  {
    if (v16 >= 1)
    {
      v24 = 8;
      do
      {
        v25 = *(*(v8 + 88) + v24);
        v26 = [TSCETrackedReference alloc];
        v30 = objc_msgSend_initFromExpandedArchive_(v26, v27, v25, v28, v29);
        (v23)[2](v23, v30);

        v24 += 8;
        --v16;
      }

      while (v16);
    }
  }

  else if (v17)
  {
    if (v17 >= 1)
    {
      v31 = 8;
      do
      {
        v32 = *(*(v8 + 64) + v31);
        v33 = [TSCETrackedReference alloc];
        v37 = objc_msgSend_initFromArchive_(v33, v34, v32, v35, v36);
        (v23)[2](v23, v37);

        v31 += 8;
        --v17;
      }

      while (v17);
    }
  }

  else if (v18)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_2212B815C;
    v42[3] = &unk_278462A08;
    v43 = v19;
    v38 = v4;
    v39 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v38, v40, v8 + 24, v39, 0, v42);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2212B82B8;
  v41[3] = &unk_27845E3F8;
  v41[4] = self;
  objc_msgSend_addFinalizeHandler_(v4, v20, v41, v21, v22);
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end