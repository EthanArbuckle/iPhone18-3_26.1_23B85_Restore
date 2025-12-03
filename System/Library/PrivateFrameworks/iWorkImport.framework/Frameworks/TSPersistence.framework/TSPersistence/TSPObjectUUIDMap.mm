@interface TSPObjectUUIDMap
- (BOOL)hasObjectUUID:(id)d;
- (BOOL)isAnyObjectIdentifierInDocument:(id)document;
- (BOOL)isObjectIdentifierInDocument:(int64_t)document;
- (BOOL)shouldSuppressAssertionForObjectUUID:(id)d;
- (TSPObjectUUIDMap)init;
- (TSPObjectUUIDMap)initWithDelegate:(id)delegate;
- (int64_t)objectIdentifierForUUID:(id)d;
- (void)endAssertOnRead;
- (void)object:(id)object didChangeUUIDToValue:(id)value fromValue:(id)fromValue;
- (void)objectWasAddedToDocument:(id)document options:(unint64_t)options;
- (void)objectWillBeRemovedFromDocument:(id)document;
- (void)setPersistedUUIDMap:(id)map;
@end

@implementation TSPObjectUUIDMap

- (TSPObjectUUIDMap)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectUUIDMap init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 44, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectUUIDMap init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectUUIDMap)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = TSPObjectUUIDMap;
  v5 = [(TSPObjectUUIDMap *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPObjectUUIDMap.Access", v7);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inMemoryUUIDDictionary = v6->_inMemoryUUIDDictionary;
    v6->_inMemoryUUIDDictionary = v10;

    v12 = objc_alloc_init(_TtC13TSPersistence23TSPMutableIdentifierSet);
    inMemoryObjectIdentifiers = v6->_inMemoryObjectIdentifiers;
    v6->_inMemoryObjectIdentifiers = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    UUIDsWithSuppressedAssertions = v6->_UUIDsWithSuppressedAssertions;
    v6->_UUIDsWithSuppressedAssertions = v14;
  }

  return v6;
}

- (void)setPersistedUUIDMap:(id)map
{
  mapCopy = map;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A62000;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_async(accessQueue, v7);
}

- (BOOL)shouldSuppressAssertionForObjectUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_accessQueue);
  LOBYTE(self) = objc_msgSend_containsObject_(self->_UUIDsWithSuppressedAssertions, v5, dCopy);

  return self;
}

- (int64_t)objectIdentifierForUUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_accessQueue);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_inMemoryUUIDDictionary, v5, dCopy);
  if (v8)
  {
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);

    if (v8 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = objc_msgSend_tsp_identifier(v8, v10, v11);
    }
  }

  else
  {
    objc_msgSend_objectLocationForUUID_(self->_persistedUUIDMap, v6, dCopy);
    v12 = v13;
  }

  return v12;
}

- (void)objectWasAddedToDocument:(id)document options:(unint64_t)options
{
  documentCopy = document;
  v11 = objc_msgSend_objectUUID(documentCopy, v7, v8);
  if (v11)
  {
    if (options & 1) != 0 || (objc_msgSend_tsp_isRunningFinalizeHandlersForLegacyDocument(MEMORY[0x277CCACC8], v9, v10))
    {
      isPerformingLegacyDocumentReferenceResolution = 1;
    }

    else
    {
      isPerformingLegacyDocumentReferenceResolution = objc_msgSend_tsp_isPerformingLegacyDocumentReferenceResolution(MEMORY[0x277CCACC8], v12, v13);
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A62618;
    block[3] = &unk_27A6E5298;
    v17 = documentCopy;
    selfCopy = self;
    v21 = isPerformingLegacyDocumentReferenceResolution;
    v19 = v11;
    optionsCopy = options;
    dispatch_sync(accessQueue, block);
  }
}

- (void)objectWillBeRemovedFromDocument:(id)document
{
  documentCopy = document;
  v7 = objc_msgSend_objectUUID(documentCopy, v5, v6);
  v8 = v7;
  if (v7)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A62924;
    block[3] = &unk_27A6E29B0;
    block[4] = self;
    v11 = v7;
    v12 = documentCopy;
    dispatch_sync(accessQueue, block);
  }
}

- (BOOL)hasObjectUUID:(id)d
{
  dCopy = d;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (dCopy)
  {
    if (atomic_load(&self->_assertOnReadCount))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectUUIDMap hasObjectUUID:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
      v13 = objc_msgSend_UUIDString(dCopy, v11, v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v8, v10, 215, 0, "Attempting to read object with UUID %{public}@ when UUID map does not allow reading.", v13);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPObjectUUIDMap hasObjectUUID:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v21, 216, 0, "You should pass a NSUUID to TSP, not a %{public}@.", v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A62D5C;
    block[3] = &unk_27A6E2C00;
    v32 = &v33;
    block[4] = self;
    v31 = dCopy;
    dispatch_sync(accessQueue, block);

    v28 = *(v34 + 24);
  }

  else
  {
    v28 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v28 & 1;
}

- (BOOL)isObjectIdentifierInDocument:(int64_t)document
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A62E84;
  block[3] = &unk_27A6E4D78;
  block[5] = &v7;
  block[6] = document;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isAnyObjectIdentifierInDocument:(id)document
{
  documentCopy = document;
  if (objc_msgSend_count(documentCopy, v5, v6))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A630C4;
    block[3] = &unk_27A6E3818;
    v11 = documentCopy;
    selfCopy = self;
    v13 = &v14;
    dispatch_sync(accessQueue, block);
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)object:(id)object didChangeUUIDToValue:(id)value fromValue:(id)fromValue
{
  objectCopy = object;
  valueCopy = value;
  fromValueCopy = fromValue;
  v11 = fromValueCopy;
  if (fromValueCopy)
  {
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_276A63934;
    v13[3] = &unk_27A6E2870;
    v13[4] = self;
    v14 = fromValueCopy;
    v15 = valueCopy;
    v16 = objectCopy;
    dispatch_async(accessQueue, v13);
  }
}

- (void)endAssertOnRead
{
  if (atomic_fetch_add(&self->_assertOnReadCount, 0xFFFFFFFF) <= 0)
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectUUIDMap endAssertOnRead]");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectUUIDMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 372, 0, "Unbalanced calls to -beginAssertOnRead and -endAssertOnRead");

    v9 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v9, v7, v8);
  }
}

@end