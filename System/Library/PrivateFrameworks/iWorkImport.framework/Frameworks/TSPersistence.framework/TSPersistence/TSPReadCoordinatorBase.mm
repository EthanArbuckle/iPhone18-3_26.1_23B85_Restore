@interface TSPReadCoordinatorBase
- (BOOL)hasDocumentVersionUUID;
- (BOOL)ignoreReferencesToUnknownObjects;
- (BOOL)isReadingFromDocument;
- (BOOL)readLazyReference:(id)a3 object:(id *)a4 error:(id *)a5;
- (BOOL)resolveExternalReferences;
- (NSError)error;
- (NSUUID)baseObjectUUID;
- (TSPReadCoordinatorBase)init;
- (id).cxx_construct;
- (id)context;
- (id)contextForReader:(id)a3;
- (id)lazyReferenceDelegateForReader:(id)a3;
- (id)objectDelegateForReader:(id)a3;
- (id)objectForIdentifier:(int64_t)a3;
- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4;
- (int64_t)reader:(id)a3 wantsObjectIdentifierForUUID:(id)a4;
- (unint64_t)fileFormatVersion;
- (unint64_t)readVersion;
- (unsigned)packageIdentifier;
- (unsigned)sourceType;
- (void)addLoadObserver:(id)a3 action:(SEL)a4 forLazyReference:(id)a5;
- (void)didReferenceExternalObject:(id)a3 withIdentifier:(int64_t)a4;
- (void)externalReferenceInfoForObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4;
- (void)lazyReference:(id)a3 didCreateCopy:(id)a4;
- (void)reader:(id)a3 didFindExternalReferenceToObjectIdentifier:(int64_t)a4 componentIdentifier:(int64_t)a5 isWeak:(BOOL)a6 allowUnknownObject:(BOOL)a7 objectClass:(Class)a8 objectProtocol:(id)a9 fromParentObject:(id)a10 completion:(id)a11;
- (void)reader:(id)a3 didFindExternalRepeatedReference:(id)a4 isWeak:(BOOL)a5 allowUnknownObject:(BOOL)a6 objectClass:(Class)a7 objectProtocol:(id)a8 fromParentObject:(id)a9 completion:(id)a10;
- (void)reader:(id)a3 didReadLazyReference:(id)a4;
- (void)setError:(id)a3;
- (void)setLazyReferencesDelegate:(id)a3 forLazyReference:(id)a4;
- (void)setLazyReferencesDelegate:(id)a3 forLazyReferenceCopy:(id)a4;
- (void)setLazyReferencesDelegateToObjectContext;
- (void)updatePersistedDataReferenceMap;
@end

@implementation TSPReadCoordinatorBase

- (TSPReadCoordinatorBase)init
{
  v21.receiver = self;
  v21.super_class = TSPReadCoordinatorBase;
  v2 = [(TSPReadCoordinatorBase *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TSPPackageReadCoordinator.Error", v3);
    errorQueue = v2->_errorQueue;
    v2->_errorQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("TSPReadCoordinator.LazyReferences", v6);
    lazyReferenceQueue = v2->_lazyReferenceQueue;
    v2->_lazyReferenceQueue = v7;

    v9 = objc_alloc(MEMORY[0x277CCAA50]);
    v11 = objc_msgSend_initWithOptions_capacity_(v9, v10, 512, 0);
    lazyReferences = v2->_lazyReferences;
    v2->_lazyReferences = v11;

    v13 = objc_alloc(MEMORY[0x277CCAA50]);
    v15 = objc_msgSend_initWithOptions_capacity_(v13, v14, 512, 0);
    lazyReferenceCopies = v2->_lazyReferenceCopies;
    v2->_lazyReferenceCopies = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("TSPReadCoordinator.ExternalReferences", v17);
    externalReferenceQueue = v2->_externalReferenceQueue;
    v2->_externalReferenceQueue = v18;

    atomic_store(1u, &v2->_success);
  }

  return v2;
}

- (void)setError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    errorQueue = self->_errorQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276A7F1FC;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(errorQueue, v7);
    atomic_store(0, &self->_success);
  }
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A7F398;
  v10 = sub_276A7F3A8;
  v11 = 0;
  errorQueue = self->_errorQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A7F3B0;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(errorQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)resolveExternalReferences
{
  p_success = &self->_success;
  v3 = atomic_load(&self->_success);
  if (v3)
  {
    if (atomic_exchange(&self->_didResolveExternalReferences, 1u))
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase resolveExternalReferences]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 212, 0, "Already resolved external references.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    }

    externalReferenceQueue = self->_externalReferenceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A7F50C;
    block[3] = &unk_27A6E27F8;
    block[4] = self;
    dispatch_sync(externalReferenceQueue, block);
  }

  v13 = atomic_load(p_success);
  return v13 & 1;
}

- (void)setLazyReferencesDelegateToObjectContext
{
  v3 = atomic_load(&self->_success);
  if (v3)
  {
    if (atomic_exchange(&self->_didSetLazyReferenceDelegate, 1u))
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase setLazyReferencesDelegateToObjectContext]");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 458, 0, "Already set lazy references delegate.");

      v12 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v12, v10, v11);
    }

    else
    {
      v13 = objc_msgSend_context(self, a2, v2);
      lazyReferenceQueue = self->_lazyReferenceQueue;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_276A8124C;
      v15[3] = &unk_27A6E2898;
      v15[4] = self;
      v15[5] = v13;
      dispatch_sync(lazyReferenceQueue, v15);
    }
  }
}

- (void)setLazyReferencesDelegate:(id)a3 forLazyReference:(id)a4
{
  v17 = a3;
  if ((objc_msgSend_isExternal(a4, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_strongObject(a4, v8, v9);

    if (!v10)
    {
      v12 = objc_msgSend_tsp_identifier(a4, v8, v11);
      v15 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, v13, v12, 1);
      if (v15)
      {
        objc_msgSend_retainObject_(a4, v14, v15);
      }
    }
  }

  objc_msgSend_setDelegate_(a4, v8, v17);
  objc_msgSend_didUpdateLazyReferenceDelegate_(self, v16, a4);
}

- (void)setLazyReferencesDelegate:(id)a3 forLazyReferenceCopy:(id)a4
{
  objc_msgSend_setDelegate_(a4, a2, a3);
  v8 = objc_msgSend_tsp_identifier(a4, v6, v7);
  v11 = objc_msgSend_component(a4, v9, v10);
  v13 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(v11, v12, v8);

  if (!v13)
  {
    v16 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, v14, v8, 1);
    if (v16)
    {
      objc_msgSend_retainObject_(a4, v15, v16);
    }
  }

  objc_msgSend_didUpdateLazyReferenceDelegate_(self, v14, a4);
}

- (void)updatePersistedDataReferenceMap
{
  v3 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_componentManager(v3, v4, v5);
  v7 = [TSPWrittenComponentMetadataDictionary alloc];
  v10 = objc_msgSend_componentCount(v6, v8, v9);
  v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_276A81864;
  v27[3] = &unk_27A6E5B50;
  v27[4] = v12;
  v27[5] = &v32;
  v27[6] = &v28;
  objc_msgSend_enumerateComponents_(v6, v13, v27);
  v14 = [TSPPersistedDataReferenceMap alloc];
  v16 = objc_msgSend_initWithComponentDataReferenceInfoDictionary_dataCount_objectCount_(v14, v15, v12, v33[3], v29[3]);
  v19 = objc_msgSend_dataReferenceMap(v3, v17, v18);
  v22 = objc_msgSend_dataManager(v3, v20, v21);
  v25 = objc_msgSend_allDataIdentifiers(v22, v23, v24);
  objc_msgSend_setPersistedDataReferenceMap_allDataIdentifiers_persistedObjectProvider_(v19, v26, v16, v25, 0);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

- (id)context
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase context]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 525, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase context]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)didReferenceExternalObject:(id)a3 withIdentifier:(int64_t)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPReadCoordinatorBase didReferenceExternalObject:withIdentifier:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 537, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSPReadCoordinatorBase didReferenceExternalObject:withIdentifier:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (unint64_t)fileFormatVersion
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase fileFormatVersion]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 543, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase fileFormatVersion]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (unint64_t)readVersion
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase readVersion]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 547, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase readVersion]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (unsigned)packageIdentifier
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase packageIdentifier]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 551, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase packageIdentifier]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (NSUUID)baseObjectUUID
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase baseObjectUUID]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 555, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase baseObjectUUID]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (BOOL)isReadingFromDocument
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase isReadingFromDocument]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 559, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase isReadingFromDocument]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (BOOL)hasDocumentVersionUUID
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase hasDocumentVersionUUID]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 563, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase hasDocumentVersionUUID]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (unsigned)sourceType
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase sourceType]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 567, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPReadCoordinatorBase sourceType]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (id)contextForReader:(id)a3
{
  v3 = objc_msgSend_context(self, a2, a3);

  return v3;
}

- (id)objectDelegateForReader:(id)a3
{
  v3 = objc_msgSend_context(self, a2, a3);

  return v3;
}

- (id)lazyReferenceDelegateForReader:(id)a3
{
  v4 = atomic_load(&self->_didSetLazyReferenceDelegate);
  if (v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase lazyReferenceDelegateForReader:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 581, 0, "Already set lazy references delegate.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v14 = objc_msgSend_context(self, v12, v13);
  }

  else
  {
    v14 = self;
  }

  return v14;
}

- (int64_t)reader:(id)a3 wantsObjectIdentifierForUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPReadCoordinatorBase reader:wantsObjectIdentifierForUUID:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 590, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v22 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v20, "[TSPReadCoordinatorBase reader:wantsObjectIdentifierForUUID:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v23, *MEMORY[0x277CBE658], v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

- (id)reader:(id)a3 wantsDataForIdentifier:(int64_t)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPReadCoordinatorBase reader:wantsDataForIdentifier:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 594, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSPReadCoordinatorBase reader:wantsDataForIdentifier:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)externalReferenceInfoForObjectIdentifier:(int64_t)a3 componentIdentifier:(int64_t)a4
{
  v6 = a3;
  v4 = sub_2769ABC64(&self->_externalReferences.__table_.__bucket_list_.__ptr_, &v6);
  if (!v4)
  {
    sub_276A83ED8();
  }

  return v4 + 3;
}

- (void)reader:(id)a3 didFindExternalReferenceToObjectIdentifier:(int64_t)a4 componentIdentifier:(int64_t)a5 isWeak:(BOOL)a6 allowUnknownObject:(BOOL)a7 objectClass:(Class)a8 objectProtocol:(id)a9 fromParentObject:(id)a10 completion:(id)a11
{
  v18 = a9;
  v21 = a11;
  if (v21)
  {
    v22 = objc_msgSend_component(a3, v19, v20);
    externalReferenceQueue = self->_externalReferenceQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276A82ECC;
    v24[3] = &unk_27A6E5B78;
    v24[4] = self;
    v27 = a4;
    v28 = a5;
    v29 = v22;
    v31 = a6;
    v32 = a7;
    v26 = v21;
    v30 = a8;
    v25 = v18;
    dispatch_sync(externalReferenceQueue, v24);
  }
}

- (void)reader:(id)a3 didFindExternalRepeatedReference:(id)a4 isWeak:(BOOL)a5 allowUnknownObject:(BOOL)a6 objectClass:(Class)a7 objectProtocol:(id)a8 fromParentObject:(id)a9 completion:(id)a10
{
  v16 = a4;
  v17 = a8;
  v20 = a10;
  if (v20)
  {
    v21 = objc_msgSend_component(a3, v18, v19);
    externalReferenceQueue = self->_externalReferenceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A83188;
    block[3] = &unk_27A6E5BA0;
    block[4] = self;
    v27 = v21;
    v24 = v16;
    v29 = a5;
    v30 = a6;
    v26 = v20;
    v28 = a7;
    v25 = v17;
    dispatch_sync(externalReferenceQueue, block);
  }
}

- (void)reader:(id)a3 didReadLazyReference:(id)a4
{
  v5 = a4;
  lazyReferenceQueue = self->_lazyReferenceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A8338C;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(lazyReferenceQueue, v8);
}

- (BOOL)ignoreReferencesToUnknownObjects
{
  v3 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_ignoreReferencesToUnknownObjects(v3, v4, v5);

  return v6;
}

- (id)objectForIdentifier:(int64_t)a3
{
  v5 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, a2, a3, 0);
  if (!v5)
  {
    v5 = objc_msgSend_externalObjectForIdentifier_componentIdentifier_isReadFinished_(self, v6, a3, 0, 0);
  }

  return v5;
}

- (BOOL)readLazyReference:(id)a3 object:(id *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPReadCoordinatorBase readLazyReference:object:error:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 670, 0, "Lazy reference resolution cannot happen while the document is getting unarchived.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v18 = objc_msgSend_tsp_identifier(v7, v16, v17);
  v20 = objc_msgSend_objectForIdentifier_(self, v19, v18);
  if (a4)
  {
    v20 = v20;
    *a4 = v20;
  }

  v21 = v20 != 0;

  return v21;
}

- (void)addLoadObserver:(id)a3 action:(SEL)a4 forLazyReference:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12 = objc_msgSend_context(self, v10, v11);
  lazyReferenceQueue = self->_lazyReferenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A83778;
  block[3] = &unk_27A6E5BF0;
  v20 = v12;
  v21 = a4;
  v17 = v8;
  v18 = v9;
  v19 = self;
  v14 = v9;
  v15 = v8;
  dispatch_sync(lazyReferenceQueue, block);
}

- (void)lazyReference:(id)a3 didCreateCopy:(id)a4
{
  v5 = a4;
  lazyReferenceQueue = self->_lazyReferenceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A83998;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(lazyReferenceQueue, v8);
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end