@interface TSTSortRuleReferenceTracker
- (BOOL)p_hasRuleReferenceForTrackedReference:(id)reference;
- (TSCESpanningRangeRef)p_referenceForColumnIndex:(SEL)index;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)ownerUID;
- (TSTSortRuleReferenceTracker)initWithTableInfo:(id)info baseTableUID:(const TSKUIDStruct *)d context:(id)context;
- (TSTTableInfo)tableInfo;
- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref;
- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (unsigned)p_columnForTrackedReference:(id)reference;
- (void)beginTrackingReference:(id)reference;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)endTrackingReference:(id)reference;
- (void)registerWithCalcEngine:(id)engine;
- (void)registerWithCalcEngine:(id)engine reregister:(BOOL)reregister;
- (void)setBaseTableUID:(TSKUIDStruct)d;
- (void)setOwnerUID:(const TSKUIDStruct *)d;
- (void)setTableInfo:(id)info;
- (void)unregisterFromCalcEngine;
- (void)updateForSortRules:(id)rules;
@end

@implementation TSTSortRuleReferenceTracker

- (TSTSortRuleReferenceTracker)initWithTableInfo:(id)info baseTableUID:(const TSKUIDStruct *)d context:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = TSTSortRuleReferenceTracker;
  v10 = [(TSTSortRuleReferenceTracker *)&v30 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_tableInfo, infoCopy);
    v11->_ownerUID._lower = sub_2212C4930(d, 6, v12, v13, v14);
    v11->_ownerUID._upper = v15;
    v11->_baseTableUID = *d;
    v11->_isRegisteredWithCalculationEngine = 0;
    v16 = [TSCETrackedReferenceStore alloc];
    v20 = objc_msgSend_initWithContext_(v16, v17, contextCopy, v18, v19);
    trackedRefsStore = v11->_trackedRefsStore;
    v11->_trackedRefsStore = v20;

    v26 = objc_msgSend_calcEngine(infoCopy, v22, v23, v24, v25);
    objc_msgSend_registerWithCalcEngine_reregister_(v11, v27, v26, 0, v28);
  }

  return v11;
}

- (void)registerWithCalcEngine:(id)engine reregister:(BOOL)reregister
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    p_baseTableUID = &self->_baseTableUID;
    if (!self->_baseTableUID._lower && !self->_baseTableUID._upper)
    {
      p_baseTableUID = &self->_ownerUID;
    }

    lower = p_baseTableUID->_lower;
    upper = p_baseTableUID->_upper;
    if (!reregister)
    {
      objc_msgSend_willModify(self->_trackedRefsStore, v7, v8, v9, v10);
      v21 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_willModify(v21, v14, v15, v16, v17);
    }

    v22 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(v22, v18, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, lower, upper, 6);

    self->_isRegisteredWithCalculationEngine = 1;
    v23 = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_markOwnerAsDirty_(v23, v19, self->_ownerUID._lower, self->_ownerUID._upper, v20);
  }
}

- (void)registerWithCalcEngine:(id)engine
{
  engineCopy = engine;
  objc_storeWeak(&self->_calcEngine, engineCopy);
  objc_msgSend_registerWithCalcEngine_reregister_(self, v4, engineCopy, 0, v5);
}

- (void)unregisterFromCalcEngine
{
  objc_msgSend_willModify(self->_trackedRefsStore, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_willModify(WeakRetained, v7, v8, v9, v10);

  v11 = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_unregisterOwner_(v11, v12, self->_ownerUID._lower, self->_ownerUID._upper, v13);

  self->_isRegisteredWithCalculationEngine = 0;

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)setTableInfo:(id)info
{
  infoCopy = info;
  objc_storeWeak(&self->_tableInfo, infoCopy);
  if (infoCopy)
  {
    self->_baseTableUID._lower = objc_msgSend_tableUID(infoCopy, v5, v6, v7, v8);
    self->_baseTableUID._upper = v9;
    v16[0] = sub_2212C4930(&self->_baseTableUID._lower, 6, v10, v11, v12);
    v16[1] = v13;
    objc_msgSend_setOwnerUID_(self, v13, v16, v14, v15);
  }
}

- (TSCESpanningRangeRef)p_referenceForColumnIndex:(SEL)index
{
  v6 = a4;
  v16 = objc_msgSend_tableInfo(self, index, a4, v4, v5);
  v12 = objc_msgSend_tableUID(v16, v8, v9, v10, v11);
  v13 = (v6 << 32) | 0x7FFFFFFF;
  retstr->rangeRef.range._topLeft = v13;
  retstr->rangeRef.range._bottomRight = v13;
  retstr->rangeRef._tableUID._lower = v12;
  retstr->rangeRef._tableUID._upper = v14;
  retstr->rangeContext = 0;

  return result;
}

- (unsigned)p_columnForTrackedReference:(id)reference
{
  referenceCopy = reference;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFF;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v8 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(referenceCopy, v6, WeakRetained, &self->_ownerUID, v7);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22139EFF0;
  v13[3] = &unk_278463C70;
  v13[4] = self;
  v13[5] = &v14;
  objc_msgSend_foreachSpanningRangeRef_(v8, v9, v13, v10, v11);
  LOWORD(self) = *(v15 + 12);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)p_hasRuleReferenceForTrackedReference:(id)reference
{
  v23 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7, v8);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v18, v22, 16);
  if (v14)
  {
    v15 = *v19;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v9);
        }

        if (objc_msgSend_isEqualToTrackedReference_(*(*(&v18 + 1) + 8 * i), v11, referenceCopy, v12, v13, v18))
        {
          LOBYTE(v14) = 1;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v18, v22, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v14;
}

- (void)beginTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_beginTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained, v6);
}

- (void)endTrackingReference:(id)reference
{
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  objc_msgSend_endTrackingReference_calcEngine_(self->_trackedRefsStore, v5, referenceCopy, WeakRetained, v6);
}

- (id)beginTrackingReferenceWithSpanningRef:(const TSCESpanningRangeRef *)ref
{
  v5 = [TSCETrackedReference alloc];
  v9 = objc_msgSend_initWithSpanningRangeRef_(v5, v6, ref, v7, v8);
  objc_msgSend_beginTrackingReference_(self, v10, v9, v11, v12);

  return v9;
}

- (void)updateForSortRules:(id)rules
{
  v60 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  if (self->_isRegisteredWithCalculationEngine)
  {
    v46 = rulesCopy;
    objc_msgSend_allTrackedReferences(self->_trackedRefsStore, v5, v6, v7, v8);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    obj = v55 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v54, v59, 16);
    if (v13)
    {
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_endTrackingReference_(self, v10, *(*(&v54 + 1) + 8 * i), v11, v12);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v54, v59, 16);
      }

      while (v13);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v47 = v46;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v16, &v50, v58, 16);
    if (v21)
    {
      v22 = *v51;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v47);
          }

          v24 = objc_msgSend_baseIndex(*(*(&v50 + 1) + 8 * j), v17, v18, v19, v20);
          objc_msgSend_p_referenceForColumnIndex_(self, v25, v24, v26, v27);
          v34 = objc_msgSend_beginTrackingReferenceWithSpanningRef_(self, v28, v49, v29, v30);
          if (!v34)
          {
            v35 = MEMORY[0x277D81150];
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTSortRuleReferenceTracker updateForSortRules:]", v32, v33);
            v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v38, v39);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 175, 0, "Couldn't track reference!");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v17, &v50, v58, 16);
      }

      while (v21);
    }

    rulesCopy = v46;
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)setOwnerUID:(const TSKUIDStruct *)d
{
  p_ownerUID = &self->_ownerUID;
  if (d->_lower != self->_ownerUID._lower || d->_upper != self->_ownerUID._upper)
  {
    *p_ownerUID = *d;
    objc_msgSend_setOwnerUID_(self->_trackedRefsStore, a2, d->_lower, d->_upper, v3);
    if (self->_baseTableUID._lower != sub_2212C4A5C(p_ownerUID, 6u) || self->_baseTableUID._upper != v6)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTSortRuleReferenceTracker setOwnerUID:]", v7, v8);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 190, 0, "You should have called setBaseTableUID: instead (it sets both base and subOwner UIDs");

      v20 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
    }
  }
}

- (void)setBaseTableUID:(TSKUIDStruct)d
{
  lower = self->_baseTableUID._lower;
  p_baseTableUID = &self->_baseTableUID;
  if (d._lower != lower || d._upper != self->_baseTableUID._upper)
  {
    self->_baseTableUID = d;
    v10[0] = sub_2212C4930(p_baseTableUID, 6, d._lower, d._upper, v3);
    v10[1] = v7;
    objc_msgSend_setOwnerUID_(self, v7, v10, v8, v9);
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  trackedRefsStore = self->_trackedRefsStore;
  *(archive + 4) |= 1u;
  v10 = *(archive + 3);
  v12 = archiverCopy;
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(archive + 3) = v10;
    archiverCopy = v12;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v7, trackedRefsStore, v10, v8);
}

- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v16.receiver = self;
  v16.super_class = TSTSortRuleReferenceTracker;
  v7 = [(TSTSortRuleReferenceTracker *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(archive + 3);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22139F9FC;
    v14[3] = &unk_278460F08;
    v15 = v7;
    v10 = unarchiverCopy;
    v12 = objc_opt_class();
    if (v9)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, v9, v12, 0, v14);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v11, MEMORY[0x277D80A18], v12, 0, v14);
    }
  }

  return v8;
}

- (TSKUIDStruct)baseTableUID
{
  upper = self->_baseTableUID._upper;
  lower = self->_baseTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end