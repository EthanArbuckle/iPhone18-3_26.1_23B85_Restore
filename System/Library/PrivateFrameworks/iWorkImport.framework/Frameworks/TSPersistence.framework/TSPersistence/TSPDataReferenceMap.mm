@interface TSPDataReferenceMap
- (BOOL)isDataInDocument:(id)a3;
- (BOOL)p_isDataInDocument:(int64_t)a3;
- (BOOL)p_isObjectIdentifierInDocument:(int64_t)a3;
- (BOOL)p_objectIdentifier:(int64_t)a3 didAddReferenceToDataIdentifier:(int64_t)a4 increment:(int64_t)a5 isObjectPersisted:(BOOL)a6;
- (BOOL)p_objectIdentifier:(int64_t)a3 willRemoveReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5;
- (TSPDataReferenceMap)init;
- (TSPDataReferenceMap)initWithDelegate:(id)a3;
- (id)allObjectsReferencingData:(id)a3;
- (id)p_allReferencesFromDataIdentifier:(int64_t)a3;
- (id)p_allReferencesFromObjectIdentifier:(int64_t)a3;
- (id)p_consolidatedIdentifiersWithPersistedIdentifiers:(id)a3 identifierOverrides:(id)a4;
- (void)appendComponentDataReferenceMap:(id)a3 forUnarchivedObjects:(id)a4;
- (void)enumerateDataInDocumentUsingBlock:(id)a3;
- (void)objectIdentifier:(int64_t)a3 didAddReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5;
- (void)objectIdentifier:(int64_t)a3 willRemoveReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5;
- (void)p_notifyDataInDocumentUpdated;
- (void)p_recalculateDataInDocumentWithAllDataIdentifiers:(id)a3;
- (void)setInitialDataIdentifiersInDocumentIndexSet:(id)a3;
- (void)setPersistedDataReferenceMap:(id)a3 allDataIdentifiers:(id)a4 persistedObjectProvider:(id)a5;
- (void)snapshotDataReferenceCountsForAutosave;
- (void)updateWithObjectIdentifierAddedToDocument:(int64_t)a3 objectIdentifierRemovedFromDocument:(int64_t)a4;
@end

@implementation TSPDataReferenceMap

- (TSPDataReferenceMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 56, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDataReferenceMap init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDataReferenceMap)initWithDelegate:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TSPDataReferenceMap;
  v5 = [(TSPDataReferenceMap *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPDataReferenceMap.Access", v7);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("TSPDataReferenceMap.Notification", v10);
    notificationQueue = v6->_notificationQueue;
    v6->_notificationQueue = v11;

    v13 = objc_alloc_init(_TtC13TSPersistence22TSPMutableReferenceMap);
    dataToObjectReferenceMap = v6->_dataToObjectReferenceMap;
    v6->_dataToObjectReferenceMap = v13;

    v15 = objc_alloc_init(_TtC13TSPersistence22TSPMutableReferenceMap);
    objectToDataReferenceMap = v6->_objectToDataReferenceMap;
    v6->_objectToDataReferenceMap = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
    dataInDocument = v6->_dataInDocument;
    v6->_dataInDocument = v17;
  }

  return v6;
}

- (void)setInitialDataIdentifiersInDocumentIndexSet:(id)a3
{
  v6 = a3;
  v7 = atomic_load(&self->_isTornDown);
  if ((v7 & 1) == 0)
  {
    objc_msgSend_markAsReady(self, v4, v5);
    accessQueue = self->_accessQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_276A5CD18;
    v9[3] = &unk_27A6E4808;
    v9[4] = self;
    v10 = v6;
    dispatch_async(accessQueue, v9);
  }
}

- (void)setPersistedDataReferenceMap:(id)a3 allDataIdentifiers:(id)a4 persistedObjectProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_not_V2(self->_accessQueue);
  v13 = atomic_load(&self->_isTornDown);
  if ((v13 & 1) == 0)
  {
    objc_msgSend_markAsReady(self, v11, v12);
    if (!v8)
    {
      sub_276BD50AC();
    }

    accessQueue = self->_accessQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276A5CE94;
    v15[3] = &unk_27A6E4FA0;
    v15[4] = self;
    v16 = v8;
    v17 = v10;
    v18 = v9;
    dispatch_async(accessQueue, v15);
  }
}

- (void)appendComponentDataReferenceMap:(id)a3 forUnarchivedObjects:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_accessQueue);
  v10 = atomic_load(&self->_isReady);
  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPDataReferenceMap appendComponentDataReferenceMap:forUnarchivedObjects:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 245, 0, "Attempting append a component data reference map when data reference map is not ready.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (objc_msgSend_objectCount(v6, v8, v9))
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A5DAA0;
    block[3] = &unk_27A6E5018;
    block[4] = self;
    v20 = v6;
    v21 = v7;
    dispatch_async(accessQueue, block);
  }
}

- (void)snapshotDataReferenceCountsForAutosave
{
  v3 = atomic_load(&self->_isReady);
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap snapshotDataReferenceCountsForAutosave]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 277, 0, "Attempting to snapshot data reference count when data reference map is not ready.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5DDD0;
  block[3] = &unk_27A6E32B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)objectIdentifier:(int64_t)a3 didAddReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5
{
  v9 = atomic_load(&self->_isReady);
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap objectIdentifier:didAddReferenceToDataIdentifier:isObjectPersisted:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 289, 0, "Attempting to add reference from object identifier %llu to data identifier %llu when data reference map is not ready.", a3, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5DF54;
  block[3] = &unk_27A6E5040;
  v19 = a5;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(accessQueue, block);
}

- (void)objectIdentifier:(int64_t)a3 willRemoveReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5
{
  v9 = atomic_load(&self->_isReady);
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap objectIdentifier:willRemoveReferenceToDataIdentifier:isObjectPersisted:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 313, 0, "Attempting to remove reference from object identifier %llu to data identifier %llu when data reference map is not ready.", a3, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5E1CC;
  block[3] = &unk_27A6E5040;
  v19 = a5;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(accessQueue, block);
}

- (void)updateWithObjectIdentifierAddedToDocument:(int64_t)a3 objectIdentifierRemovedFromDocument:(int64_t)a4
{
  v7 = atomic_load(&self->_isReady);
  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataReferenceMap updateWithObjectIdentifierAddedToDocument:objectIdentifierRemovedFromDocument:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 338, 0, "Attempting to update data reference map with added object identifier %llu and removed object identifier %llu when it is not ready.", a3, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = atomic_load(&self->_isTornDown);
  if (a4 | a3)
  {
    if ((v15 & 1) == 0)
    {
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276A5E450;
      block[3] = &unk_27A6E5090;
      block[4] = self;
      block[5] = a3;
      block[6] = a4;
      dispatch_async(accessQueue, block);
    }
  }
}

- (BOOL)isDataInDocument:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5E77C;
  block[3] = &unk_27A6E50B8;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return accessQueue;
}

- (id)allObjectsReferencingData:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_isReady);
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDataReferenceMap allObjectsReferencingData:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    v13 = objc_msgSend_identifier(v5, v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v10, 411, 0, "Attempting to retrieve all objects referencing data identifier %llu when data reference map is not ready. data=%@", v13, v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_276A5D6A8;
  v40 = sub_276A5D6B8;
  v41 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5EA6C;
  block[3] = &unk_27A6E50E0;
  v35 = &v36;
  block[4] = self;
  v18 = v5;
  v34 = v18;
  dispatch_sync(accessQueue, block);
  v21 = objc_msgSend_count(v37[5], v19, v20);
  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CBEB18]);
    v24 = objc_msgSend_initWithCapacity_(v22, v23, v21);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v27 = objc_msgSend_lazyReferenceDelegateForDataReferenceMap_(WeakRetained, v26, self);

    v28 = v37[5];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_276A5EAC4;
    v32[3] = &unk_27A6E5108;
    v32[4] = v27;
    v32[5] = v24;
    objc_msgSend_enumerateIdentifiersUsingBlock_(v28, v29, v32);
    v30 = v24;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v36, 8);

  return v30;
}

- (void)enumerateDataInDocumentUsingBlock:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_accessQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_msgSend_dataManagingForDataReferenceMap_(WeakRetained, v6, self);

  if (v7)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_276A5D6A8;
    v24 = sub_276A5D6B8;
    v25 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A5ED60;
    block[3] = &unk_27A6E5130;
    block[4] = self;
    block[5] = &v26;
    block[6] = &v20;
    dispatch_sync(accessQueue, block);
    v11 = v21[5];
    if (*(v27 + 24) != 1 || v11)
    {
      if (objc_msgSend_count(v11, v9, v10))
      {
        v14 = objc_msgSend_identifierToDataMap(v7, v12, v13);
        v15 = v21[5];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = sub_276A5EDEC;
        v17[3] = &unk_27A6E5158;
        v17[4] = v14;
        v18 = v4;
        objc_msgSend_enumerateIndexesUsingBlock_(v15, v16, v17);
      }
    }

    else
    {
      objc_msgSend_enumerateAllDataUsingBlock_(v7, v9, v4);
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
  }
}

- (BOOL)p_objectIdentifier:(int64_t)a3 didAddReferenceToDataIdentifier:(int64_t)a4 increment:(int64_t)a5 isObjectPersisted:(BOOL)a6
{
  v6 = a6;
  dispatch_assert_queue_V2(self->_accessQueue);
  v12 = objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(self->_dataToObjectReferenceMap, v11, a4, a3, a5);
  if (v12 != objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(self->_objectToDataReferenceMap, v13, a3, a4, a5))
  {
    sub_276BD53F0();
  }

  if (v6)
  {
    v15 = objc_msgSend_allReferencesFromDataIdentifier_(self->_persistedDataReferenceMap, v14, a4);
    v12 += objc_msgSend_countForIdentifier_default_(v15, v16, a3, 0);
  }

  return v12 == 1;
}

- (BOOL)p_objectIdentifier:(int64_t)a3 willRemoveReferenceToDataIdentifier:(int64_t)a4 isObjectPersisted:(BOOL)a5
{
  v5 = a5;
  dispatch_assert_queue_V2(self->_accessQueue);
  v10 = objc_msgSend_removeReferenceFromIdentifier_toIdentifier_(self->_dataToObjectReferenceMap, v9, a4, a3);
  if (v10 != objc_msgSend_removeReferenceFromIdentifier_toIdentifier_(self->_objectToDataReferenceMap, v11, a3, a4))
  {
    sub_276BD5494();
  }

  if (v5)
  {
    v13 = objc_msgSend_allReferencesFromDataIdentifier_(self->_persistedDataReferenceMap, v12, a4);
    v10 += objc_msgSend_countForIdentifier_default_(v13, v14, a3, 0);
  }

  if (v10 < 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDataReferenceMap p_objectIdentifier:willRemoveReferenceToDataIdentifier:isObjectPersisted:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataReferenceMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 531, 0, "Object identifier %llu removed reference from data %llu that does not exist.", a3, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  return v10 == 0;
}

- (void)p_recalculateDataInDocumentWithAllDataIdentifiers:(id)a3
{
  accessQueue = self->_accessQueue;
  v5 = a3;
  dispatch_assert_queue_V2(accessQueue);
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A5F154;
  v12[3] = &unk_27A6E5180;
  v12[4] = self;
  v12[5] = v6;
  objc_msgSend_enumerateIndexesUsingBlock_(v5, v7, v12);

  if ((objc_msgSend_isEqualToIndexSet_(self->_dataInDocument, v8, v6) & 1) == 0)
  {
    dataInDocument = self->_dataInDocument;
    objc_storeStrong(&self->_dataInDocument, v6);
    if (dataInDocument || objc_msgSend_count(v6, v10, v11))
    {
      objc_msgSend_p_notifyDataInDocumentUpdated(self, v10, v11);
    }
  }
}

- (BOOL)p_isDataInDocument:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = objc_msgSend_p_allReferencesFromDataIdentifier_(self, v5, a3);
  if (objc_msgSend_count(v6, v7, v8))
  {
    if (objc_msgSend_isAnyObjectIdentifierInDocument_(self->_persistedDataReferenceMap, v9, v6))
    {
      isAnyObjectIdentifierInDocument = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_msgSend_objectInDocumentContainingForDataReferenceMap_(WeakRetained, v12, self);
      isAnyObjectIdentifierInDocument = objc_msgSend_isAnyObjectIdentifierInDocument_(v13, v14, v6);
    }
  }

  else
  {
    isAnyObjectIdentifierInDocument = 0;
  }

  return isAnyObjectIdentifierInDocument;
}

- (id)p_allReferencesFromDataIdentifier:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = objc_msgSend_allReferencesFromDataIdentifier_(self->_persistedDataReferenceMap, v5, a3);
  v8 = objc_msgSend_allReferencesFromIdentifier_(self->_dataToObjectReferenceMap, v7, a3);
  v10 = objc_msgSend_p_consolidatedIdentifiersWithPersistedIdentifiers_identifierOverrides_(self, v9, v6, v8);

  return v10;
}

- (id)p_allReferencesFromObjectIdentifier:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v6 = objc_msgSend_allReferencesFromObjectIdentifier_(self->_persistedDataReferenceMap, v5, a3);
  v8 = objc_msgSend_allReferencesFromIdentifier_(self->_objectToDataReferenceMap, v7, a3);
  v10 = objc_msgSend_p_consolidatedIdentifiersWithPersistedIdentifiers_identifierOverrides_(self, v9, v6, v8);

  return v10;
}

- (id)p_consolidatedIdentifiersWithPersistedIdentifiers:(id)a3 identifierOverrides:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_count(v6, v7, v8))
  {
    if (objc_msgSend_count(v5, v9, v10))
    {
      v12 = objc_msgSend_formMergeWithIdentifierSet_(v5, v11, v6);
    }

    else
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;

  return v13;
}

- (BOOL)p_isObjectIdentifierInDocument:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (objc_msgSend_isObjectIdentifierInDocument_(self->_persistedDataReferenceMap, v5, a3))
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_msgSend_objectInDocumentContainingForDataReferenceMap_(WeakRetained, v8, self);
  isObjectIdentifierInDocument = objc_msgSend_isObjectIdentifierInDocument_(v9, v10, a3);

  return isObjectIdentifierInDocument;
}

- (void)p_notifyDataInDocumentUpdated
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A5F4F4;
  block[3] = &unk_27A6E32B0;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

@end