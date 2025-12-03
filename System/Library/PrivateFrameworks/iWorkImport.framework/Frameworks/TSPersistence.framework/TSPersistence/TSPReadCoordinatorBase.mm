@interface TSPReadCoordinatorBase
- (BOOL)hasDocumentVersionUUID;
- (BOOL)ignoreReferencesToUnknownObjects;
- (BOOL)isReadingFromDocument;
- (BOOL)readLazyReference:(id)reference object:(id *)object error:(id *)error;
- (BOOL)resolveExternalReferences;
- (NSError)error;
- (NSUUID)baseObjectUUID;
- (TSPReadCoordinatorBase)init;
- (id).cxx_construct;
- (id)context;
- (id)contextForReader:(id)reader;
- (id)lazyReferenceDelegateForReader:(id)reader;
- (id)objectDelegateForReader:(id)reader;
- (id)objectForIdentifier:(int64_t)identifier;
- (id)reader:(id)reader wantsDataForIdentifier:(int64_t)identifier;
- (int64_t)reader:(id)reader wantsObjectIdentifierForUUID:(id)d;
- (unint64_t)fileFormatVersion;
- (unint64_t)readVersion;
- (unsigned)packageIdentifier;
- (unsigned)sourceType;
- (void)addLoadObserver:(id)observer action:(SEL)action forLazyReference:(id)reference;
- (void)didReferenceExternalObject:(id)object withIdentifier:(int64_t)identifier;
- (void)externalReferenceInfoForObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier;
- (void)lazyReference:(id)reference didCreateCopy:(id)copy;
- (void)reader:(id)reader didFindExternalReferenceToObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isWeak:(BOOL)weak allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol fromParentObject:(id)self0 completion:(id)self1;
- (void)reader:(id)reader didFindExternalRepeatedReference:(id)reference isWeak:(BOOL)weak allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol fromParentObject:(id)parentObject completion:(id)self0;
- (void)reader:(id)reader didReadLazyReference:(id)reference;
- (void)setError:(id)error;
- (void)setLazyReferencesDelegate:(id)delegate forLazyReference:(id)reference;
- (void)setLazyReferencesDelegate:(id)delegate forLazyReferenceCopy:(id)copy;
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

- (void)setError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    errorQueue = self->_errorQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276A7F1FC;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = errorCopy;
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

- (void)setLazyReferencesDelegate:(id)delegate forLazyReference:(id)reference
{
  delegateCopy = delegate;
  if ((objc_msgSend_isExternal(reference, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_strongObject(reference, v8, v9);

    if (!v10)
    {
      v12 = objc_msgSend_tsp_identifier(reference, v8, v11);
      v15 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, v13, v12, 1);
      if (v15)
      {
        objc_msgSend_retainObject_(reference, v14, v15);
      }
    }
  }

  objc_msgSend_setDelegate_(reference, v8, delegateCopy);
  objc_msgSend_didUpdateLazyReferenceDelegate_(self, v16, reference);
}

- (void)setLazyReferencesDelegate:(id)delegate forLazyReferenceCopy:(id)copy
{
  objc_msgSend_setDelegate_(copy, a2, delegate);
  v8 = objc_msgSend_tsp_identifier(copy, v6, v7);
  v11 = objc_msgSend_component(copy, v9, v10);
  v13 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(v11, v12, v8);

  if (!v13)
  {
    v16 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, v14, v8, 1);
    if (v16)
    {
      objc_msgSend_retainObject_(copy, v15, v16);
    }
  }

  objc_msgSend_didUpdateLazyReferenceDelegate_(self, v14, copy);
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

- (void)didReferenceExternalObject:(id)object withIdentifier:(int64_t)identifier
{
  objectCopy = object;
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

- (id)contextForReader:(id)reader
{
  v3 = objc_msgSend_context(self, a2, reader);

  return v3;
}

- (id)objectDelegateForReader:(id)reader
{
  v3 = objc_msgSend_context(self, a2, reader);

  return v3;
}

- (id)lazyReferenceDelegateForReader:(id)reader
{
  v4 = atomic_load(&self->_didSetLazyReferenceDelegate);
  if (v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadCoordinatorBase lazyReferenceDelegateForReader:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 581, 0, "Already set lazy references delegate.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    selfCopy = objc_msgSend_context(self, v12, v13);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (int64_t)reader:(id)reader wantsObjectIdentifierForUUID:(id)d
{
  readerCopy = reader;
  dCopy = d;
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

- (id)reader:(id)reader wantsDataForIdentifier:(int64_t)identifier
{
  readerCopy = reader;
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

- (void)externalReferenceInfoForObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier
{
  identifierCopy = identifier;
  v4 = sub_2769ABC64(&self->_externalReferences.__table_.__bucket_list_.__ptr_, &identifierCopy);
  if (!v4)
  {
    sub_276A83ED8();
  }

  return v4 + 3;
}

- (void)reader:(id)reader didFindExternalReferenceToObjectIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isWeak:(BOOL)weak allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol fromParentObject:(id)self0 completion:(id)self1
{
  protocolCopy = protocol;
  completionCopy = completion;
  if (completionCopy)
  {
    v22 = objc_msgSend_component(reader, v19, v20);
    externalReferenceQueue = self->_externalReferenceQueue;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276A82ECC;
    v24[3] = &unk_27A6E5B78;
    v24[4] = self;
    identifierCopy = identifier;
    componentIdentifierCopy = componentIdentifier;
    v29 = v22;
    weakCopy = weak;
    objectCopy = object;
    v26 = completionCopy;
    classCopy = class;
    v25 = protocolCopy;
    dispatch_sync(externalReferenceQueue, v24);
  }
}

- (void)reader:(id)reader didFindExternalRepeatedReference:(id)reference isWeak:(BOOL)weak allowUnknownObject:(BOOL)object objectClass:(Class)class objectProtocol:(id)protocol fromParentObject:(id)parentObject completion:(id)self0
{
  referenceCopy = reference;
  protocolCopy = protocol;
  completionCopy = completion;
  if (completionCopy)
  {
    v21 = objc_msgSend_component(reader, v18, v19);
    externalReferenceQueue = self->_externalReferenceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A83188;
    block[3] = &unk_27A6E5BA0;
    block[4] = self;
    v27 = v21;
    v24 = referenceCopy;
    weakCopy = weak;
    objectCopy = object;
    v26 = completionCopy;
    classCopy = class;
    v25 = protocolCopy;
    dispatch_sync(externalReferenceQueue, block);
  }
}

- (void)reader:(id)reader didReadLazyReference:(id)reference
{
  referenceCopy = reference;
  lazyReferenceQueue = self->_lazyReferenceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A8338C;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = referenceCopy;
  v7 = referenceCopy;
  dispatch_sync(lazyReferenceQueue, v8);
}

- (BOOL)ignoreReferencesToUnknownObjects
{
  v3 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_ignoreReferencesToUnknownObjects(v3, v4, v5);

  return v6;
}

- (id)objectForIdentifier:(int64_t)identifier
{
  v5 = objc_msgSend_unarchivedObjectForIdentifier_isReadFinished_(self, a2, identifier, 0);
  if (!v5)
  {
    v5 = objc_msgSend_externalObjectForIdentifier_componentIdentifier_isReadFinished_(self, v6, identifier, 0, 0);
  }

  return v5;
}

- (BOOL)readLazyReference:(id)reference object:(id *)object error:(id *)error
{
  referenceCopy = reference;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPReadCoordinatorBase readLazyReference:object:error:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 670, 0, "Lazy reference resolution cannot happen while the document is getting unarchived.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v18 = objc_msgSend_tsp_identifier(referenceCopy, v16, v17);
  v20 = objc_msgSend_objectForIdentifier_(self, v19, v18);
  if (object)
  {
    v20 = v20;
    *object = v20;
  }

  v21 = v20 != 0;

  return v21;
}

- (void)addLoadObserver:(id)observer action:(SEL)action forLazyReference:(id)reference
{
  observerCopy = observer;
  referenceCopy = reference;
  v12 = objc_msgSend_context(self, v10, v11);
  lazyReferenceQueue = self->_lazyReferenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A83778;
  block[3] = &unk_27A6E5BF0;
  v20 = v12;
  actionCopy = action;
  v17 = observerCopy;
  v18 = referenceCopy;
  selfCopy = self;
  v14 = referenceCopy;
  v15 = observerCopy;
  dispatch_sync(lazyReferenceQueue, block);
}

- (void)lazyReference:(id)reference didCreateCopy:(id)copy
{
  copyCopy = copy;
  lazyReferenceQueue = self->_lazyReferenceQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A83998;
  v8[3] = &unk_27A6E2898;
  v8[4] = self;
  v9 = copyCopy;
  v7 = copyCopy;
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