@interface TSPReader
- (BOOL)finishUnarchiving;
- (BOOL)hasReadFailure;
- (BOOL)isObjectInDocument:(id)a3;
- (BOOL)setObject:(id)a3 forIdentifier:(int64_t)a4;
- (BOOL)validateObjectIdentifierForObject:(id)a3;
- (NSError)error;
- (TSPObjectContext)context;
- (TSPReader)init;
- (TSPReader)initWithComponent:(id)a3 finalizeHandlerQueue:(id)a4 delegate:(id)a5;
- (TSPReaderDelegate)delegate;
- (id).cxx_construct;
- (id)dataForIdentifier:(int64_t)a3 referencedByObjectIdentifier:(int64_t)a4 objectClass:(Class)a5;
- (int64_t)newObjectIdentifier;
- (int64_t)objectIdentifierForUUID:(id)a3;
- (unint64_t)readVersion;
- (void)addUnarchivedObject:(id)a3 unarchiver:(id)a4;
- (void)attemptedToReadInMemoryObject:(id)a3 objectIdentifier:(int64_t)a4;
- (void)beginReadingWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)didUnarchiveObject:(id)a3 withUnarchiver:(id)a4;
- (void)objectInfoForIdentifier:(int64_t)a3;
- (void)processObjectsToModifyWithRootObject:(id)a3;
- (void)readWithIOCompletionQueue:(id)a3 ioCompletion:(id)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)resolveReferences;
- (void)setError:(id)a3;
- (void)setObjectDelegatesToContextObjectDelegate;
- (void)unarchiveObjectWithUnarchiver:(id)a3;
- (void)unarchiver:(id)a3 didReadLazyReference:(id)a4 isExternal:(BOOL *)a5;
- (void)willModifyObject:(id)a3 options:(unint64_t)a4;
@end

@implementation TSPReader

- (TSPReader)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReader init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 128, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPReader init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPReader)initWithComponent:(id)a3 finalizeHandlerQueue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v79.receiver = self;
  v79.super_class = TSPReader;
  v12 = [(TSPReader *)&v79 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_component, a3);
    *(v13 + 40) = objc_msgSend_fileFormatVersion(v11, v14, v15);
    v18 = objc_msgSend_componentObjectUUIDMap(v9, v16, v17);
    v19 = *(v13 + 48);
    *(v13 + 48) = v18;

    v22 = objc_msgSend_persistedComponentDataReferenceMap(v9, v20, v21);
    v23 = [TSPMutableComponentDataReferenceMap alloc];
    v26 = objc_msgSend_dataCount(v22, v24, v25);
    v29 = objc_msgSend_objectCount(v22, v27, v28);
    v31 = objc_msgSend_initWithDataCapacity_objectCapacity_(v23, v30, v26, v29);
    v32 = *(v13 + 56);
    *(v13 + 56) = v31;

    objc_storeStrong((v13 + 64), a4);
    objc_storeWeak((v13 + 16), v11);
    v34 = objc_msgSend_cancellationStateForReader_(v11, v33, v13);
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = objc_alloc_init(TSPCancellationState);
    }

    v37 = *(v13 + 24);
    *(v13 + 24) = v36;

    v38 = dispatch_group_create();
    v39 = *(v13 + 72);
    *(v13 + 72) = v38;

    v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v41 = dispatch_queue_create("TSPReader.Error", v40);
    v42 = *(v13 + 80);
    *(v13 + 80) = v41;

    v44 = objc_msgSend_tsp_newUnarchiverQueueWithName_(MEMORY[0x277CCACC8], v43, "TSPReader.Unarchive");
    v45 = *(v13 + 96);
    *(v13 + 96) = v44;

    v46 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v47 = dispatch_queue_create("TSPReader.Objects", v46);
    v48 = *(v13 + 104);
    *(v13 + 104) = v47;

    v51 = objc_msgSend_newTspStrongObjectsMapTable(MEMORY[0x277CCAB00], v49, v50);
    v52 = *(v13 + 176);
    *(v13 + 176) = v51;

    v53 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v54 = dispatch_queue_create("TSPReader.Modify", v53);
    v55 = *(v13 + 184);
    *(v13 + 184) = v54;

    v56 = objc_alloc(MEMORY[0x277CCAA50]);
    v58 = objc_msgSend_initWithOptions_capacity_(v56, v57, 512, 0);
    v59 = *(v13 + 192);
    *(v13 + 192) = v58;

    if (objc_msgSend_hasDocumentVersionUUID(v11, v60, v61))
    {
      v64 = 4;
    }

    else
    {
      v64 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFFFB | v64;
    *(v13 + 200) = *(v13 + 200) & 0xFFC7 | (8 * (objc_msgSend_sourceType(v11, v62, v63) & 7));
    if (objc_opt_respondsToSelector())
    {
      if (objc_msgSend_isCrossDocumentPaste(v11, v65, v66))
      {
        v67 = 64;
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {
      v67 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFFBF | v67;
    if (objc_opt_respondsToSelector())
    {
      if (objc_msgSend_isCrossAppPaste(v11, v68, v69))
      {
        v70 = 128;
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFF7F | v70;
    v71 = objc_msgSend_contextForReader_(v11, v68, v13);
    if (objc_msgSend_ignoreDataReferenceCountValidationWhileReading(v71, v72, v73))
    {
      v74 = 256;
    }

    else
    {
      v74 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFEFF | v74;
    if (objc_opt_respondsToSelector())
    {
      v75 = 512;
    }

    else
    {
      v75 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFDFF | v75;
    if (objc_opt_respondsToSelector())
    {
      v76 = 1024;
    }

    else
    {
      v76 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xFBFF | v76;
    if (objc_opt_respondsToSelector())
    {
      v77 = 2048;
    }

    else
    {
      v77 = 0;
    }

    *(v13 + 200) = *(v13 + 200) & 0xF7FF | v77;
  }

  return v13;
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
    v7[2] = sub_276AD67D8;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(errorQueue, v7);
    self->_hasReadFailure = 1;
  }
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AD6974;
  v10 = sub_276AD6984;
  v11 = 0;
  errorQueue = self->_errorQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AD698C;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(errorQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasReadFailure
{
  if (self->_hasReadFailure)
  {
    v2 = 1;
  }

  else
  {
    v2 = atomic_load(&self->_cancellationState->_isCancelled);
  }

  return v2 & 1;
}

- (void)beginReadingWithCompletionQueue:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPReader beginReadingWithCompletionQueue:completion:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 207, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v22 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v20, "[TSPReader beginReadingWithCompletionQueue:completion:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v23, *MEMORY[0x277CBE658], v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

- (void)readWithIOCompletionQueue:(id)a3 ioCompletion:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 1;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  completionGroup = self->_completionGroup;
  v14 = a3;
  dispatch_group_enter(completionGroup);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_276AD6DF4;
  v26[3] = &unk_27A6E6DF0;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  v28 = v32;
  v29 = v30;
  v16 = v10;
  v26[4] = self;
  v27 = v16;
  objc_msgSend_beginReadingWithCompletionQueue_completion_(self, v17, v15, v26);

  v18 = self->_completionGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AD6E5C;
  block[3] = &unk_27A6E6E18;
  v24 = v30;
  v25 = v32;
  block[4] = self;
  v22 = v16;
  v23 = v12;
  v19 = v12;
  v20 = v16;
  dispatch_group_notify(v18, v11, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

- (void)unarchiveObjectWithUnarchiver:(id)a3
{
  v4 = a3;
  unarchiveQueue = self->_unarchiveQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AD709C;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(unarchiveQueue, v7);
}

- (void)attemptedToReadInMemoryObject:(id)a3 objectIdentifier:(int64_t)a4
{
  v6 = a3;
  completionGroup = self->_completionGroup;
  objectsQueue = self->_objectsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AD75BC;
  block[3] = &unk_27A6E2C50;
  block[4] = self;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  dispatch_group_async(completionGroup, objectsQueue, block);
}

- (void)addUnarchivedObject:(id)a3 unarchiver:(id)a4
{
  v75 = a3;
  v76 = a4;
  v8 = objc_msgSend_objectIdentifier(v76, v6, v7);
  objc_msgSend_setObject_forIdentifier_(self, v9, v75, v8);
  objc_msgSend_setTsp_component_(v75, v10, self->_component);
  v11 = v8;
  v16 = objc_msgSend_references(v76, v12, v13);
  v17 = *v16;
  v18 = v16[1];
  while (v17 != v18)
  {
    v19 = objc_msgSend_objectInfoForIdentifier_(self, v14, *v17);
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    v22 = *(v17 + 24);
    v23 = *(v17 + 32);
    v87 = _Block_copy(v20);
    v88 = v21;
    v89 = v22;
    v90 = v23;
    sub_276AD7CD0(v19, &v87);

    v17 += 40;
  }

  v25 = objc_msgSend_repeatedReferences(v76, v14, v15);
  v26 = *v25;
  v27 = v25[1];
  while (v26 != v27)
  {
    sub_276AD7D30(&self->_repeatedReferences, v26);
    v26 += 56;
  }

  objc_msgSend_didUnarchiveObject_withUnarchiver_(self, v24, v75, v76);
  v30 = objc_msgSend_finalizeHandlers(v76, v28, v29);
  finalizeHandlerQueue = self->_finalizeHandlerQueue;
  v34 = objc_msgSend_strongReferences(v76, v32, v33);
  objc_msgSend_addFinalizeHandlers_strongReferences_forIdentifier_(finalizeHandlerQueue, v35, v30, v34, v11);
  sub_2769BB224(v16, *v16);
  sub_2769BB2D4(v25, *v25);
  v38 = *v30;
  for (i = v30[1]; i != v38; i -= 8)
  {
    v40 = *(i - 8);
  }

  v30[1] = v38;
  if ((*&self->_flags & 0x100) == 0 && objc_msgSend_sourceType(self, v36, v37) == 1)
  {
    v41 = objc_msgSend_fileFormatVersion(self, v36, v37);
    if (v41 == UnsafePointer())
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_276AD7D70;
      aBlock[3] = &unk_27A6E6E40;
      v42 = v76;
      v83 = v42;
      v84 = self;
      v85 = v75;
      v86 = v11;
      v43 = _Block_copy(aBlock);
      v46 = objc_msgSend_dataReferences(v42, v44, v45);
      v49 = objc_msgSend_persistedComponentDataReferenceMap(self->_component, v47, v48);
      v52 = objc_msgSend_objectToDataReferenceMap(v49, v50, v51);
      v54 = objc_msgSend_allReferencesFromIdentifier_(v52, v53, v11);

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = sub_276AD8018;
      v80[3] = &unk_27A6E6E68;
      v80[4] = v54;
      v55 = v43;
      v81 = v55;
      objc_msgSend_enumerateIdentifiersUsingBlock_(v46, v56, v80);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = sub_276AD8078;
      v78[3] = &unk_27A6E6E68;
      v78[4] = v46;
      v57 = v55;
      v79 = v57;
      objc_msgSend_enumerateIdentifiersUsingBlock_(v54, v58, v78);
    }
  }

  if ((*&self->_flags & 0x400) != 0)
  {
    v59 = objc_msgSend_objectUUID(v75, v36, v37);
    v61 = objc_msgSend_objectUUIDForIdentifier_(self->_componentObjectUUIDMap, v60, v11);
    v63 = v61;
    if (v59 != v61 && (objc_msgSend_isEqual_(v61, v62, v59) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_reader_didResetObjectUUID_forObjectIdentifier_originalObjectUUID_(WeakRetained, v65, self, v59, v11, v63);
    }
  }

  if ((objc_msgSend_validateObjectIdentifierForObject_(self, v36, v75) & 1) == 0)
  {
    objc_msgSend_setTsp_identifier_(v75, v66, 0);
    if ((*&self->_flags & 0x200) != 0)
    {
      v69 = objc_loadWeakRetained(&self->_delegate);
      objc_msgSend_reader_didResetObjectIdentifierForObject_originalObjectIdentifier_(v69, v70, self, v75, v11);
    }

    v71 = objc_msgSend_tsp_identifier(v75, v67, v68);
    unarchiveQueue = self->_unarchiveQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AD80E8;
    block[3] = &unk_27A6E6E90;
    block[4] = self;
    block[5] = v11;
    block[6] = v71;
    dispatch_async(unarchiveQueue, block);
  }

  if ((*&self->_flags & 0x800) != 0)
  {
    v73 = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_reader_didUnarchiveObject_(v73, v74, self, v75);
  }
}

- (BOOL)validateObjectIdentifierForObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tsp_identifier(v4, v5, v6);
  v10 = v7;
  if (v7 < 100 && v7 != 1 && v7 != 3)
  {
    if (objc_msgSend_componentIdentifier(self, v8, v9) != v7)
    {
      goto LABEL_25;
    }

    if (v10 != 2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (v10 != 4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (v10 != 5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (v10 != 61 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (v10 != 62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (v10 != 71 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                if (v10 == 72)
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  goto LABEL_26;
                }

LABEL_25:
                isKindOfClass = 0;
                goto LABEL_26;
              }
            }
          }
        }
      }
    }
  }

  isKindOfClass = 1;
LABEL_26:

  return isKindOfClass & 1;
}

- (void)didUnarchiveObject:(id)a3 withUnarchiver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPReader didUnarchiveObject:withUnarchiver:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v9, v11, 492, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v17 = MEMORY[0x277CBEAD8];
  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v22 = objc_msgSend_stringWithFormat_(v18, v21, @"Abstract method not overridden by %@: %s", v20, "[TSPReader didUnarchiveObject:withUnarchiver:]");
  v24 = objc_msgSend_exceptionWithName_reason_userInfo_(v17, v23, *MEMORY[0x277CBE658], v22, 0);
  v25 = v24;

  objc_exception_throw(v24);
}

- (BOOL)finishUnarchiving
{
  if ((objc_msgSend_hasReadFailure(self, a2, v2) & 1) == 0)
  {
    objc_msgSend_resolveReferences(self, v4, v5);
    objc_msgSend_setObjectDelegatesToContextObjectDelegate(self, v6, v7);
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_276AD6974;
    v16 = sub_276AD6984;
    v17 = 0;
    unarchiveQueue = self->_unarchiveQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276AD85A0;
    v11[3] = &unk_27A6E28C0;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(unarchiveQueue, v11);
    objc_msgSend_setUpgradedComponentDataReferenceMap_(self->_component, v9, v13[5]);
    _Block_object_dispose(&v12, 8);
  }

  return objc_msgSend_hasReadFailure(self, v4, v5) ^ 1;
}

- (void)resolveReferences
{
  v2 = self;
  flags = self->_flags;
  v4 = 0x277CCA000uLL;
  if (flags)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReader resolveReferences]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    v10 = NSStringFromSelector(a2);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v9, 577, 0, "%{public}@ should only be called once.", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v2 = self;
    flags = self->_flags;
  }

  *&v2->_flags = flags | 1;
  context = objc_autoreleasePoolPush();
  v216 = objc_msgSend_packageIdentifier(v2, v14, v15);
  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  v18 = objc_msgSend_contextForReader_(WeakRetained, v17, v2);

  v212 = v18;
  v214 = objc_msgSend_ignoreReferencesToUnknownObjects(v18, v19, v20);
  next = self->_objectInfoMap.__table_.__first_node_.__next_;
  if (next)
  {
    v223 = 0;
    while (1)
    {
      v224 = next[2];
      v25 = objc_msgSend_tsp_objectForIdentifier_(self->_objects, v21, v224);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(self->_component, v23, v224);
      }

      v27 = v224 == 71 || v224 == 72;
      if (v27 && objc_msgSend_componentIdentifier(self, v23, v24) != v224 && self->_fileFormatVersion >= 0x2000000000000)
      {

        v26 = 0;
        v25 = 0;
      }

      v226 = objc_opt_class();
      v221 = objc_opt_class();
      v28 = next[3];
      v230 = next[4];
      if (v28 != v230)
      {
        break;
      }

LABEL_88:

      next = *next;
      if (!next)
      {
        goto LABEL_91;
      }
    }

    v220 = v26;
    v215 = next;
    v233 = v25;
    v228 = 0;
    v29 = v28 + 8;
    while (1)
    {
      v30 = v29 - 8;
      v31 = _Block_copy(*(v29 - 1));
      v32 = *(v29 + 1);
      v34 = *(v29 + 2);
      if (v233)
      {
        if (v31)
        {
          if (v226 == v221)
          {
            if ((v29[1] & 1) == 0)
            {
              if (v228)
              {
                v40 = 0;
                goto LABEL_64;
              }

              if ((*v29 & 1) == 0)
              {
                if (v214)
                {
                  if (UnsafePointer == -1)
                  {
                    v40 = 0;
                    v33 = 0;
                    v228 = 0;
                    goto LABEL_63;
                  }

                  sub_276BD68D0();
                }

                else
                {
                  v94 = MEMORY[0x277D81150];
                  v95 = objc_msgSend_stringWithUTF8String_(*(v4 + 3240), v33, "void TSPLogObjectResolvedToUnknown(BOOL, __unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong)");
                  v97 = objc_msgSend_stringWithUTF8String_(*(v4 + 3240), v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
                  if (!v32)
                  {
                    v32 = objc_opt_class();
                  }

                  v98 = NSStringFromClass(v32);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v99, v95, v97, 546, 0, "Object [%{public}@-%llu] resolved to an unknown object.", v98, v224);

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101);
                  if ((objc_msgSend_isCrossAppPaste(self, v102, v103) & 1) == 0)
                  {
                    v105 = MEMORY[0x277CCA9B8];
                    v106 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v104, 7);
                    v228 = objc_msgSend_tsp_errorWithError_hints_(v105, v107, v106, &unk_2885E5AD0);

                    v40 = 0;
                    v33 = 0;
                    goto LABEL_63;
                  }
                }

                v40 = 0;
                v33 = 0;
                v228 = 0;
                goto LABEL_63;
              }

              v40 = 0;
LABEL_69:
              v228 = 0;
              sub_276A810E4(v31);
              goto LABEL_70;
            }
          }

          else if ((objc_opt_isKindOfClass() & 1) == 0 || v34 && (objc_msgSend_conformsToProtocol_(v233, v35, v34) & 1) == 0)
          {
            v36 = objc_opt_class();
            isSubclassOfClass = objc_msgSend_isSubclassOfClass_(v32, v37, v36);
            if (isSubclassOfClass)
            {
              if (objc_msgSend_allowUnarchivingObjectClass_(v32, v38, v226))
              {
LABEL_61:
                v87 = [v32 alloc];
                v40 = objc_msgSend_initWithReferencedObject_(v87, v88, v233);
                v33 = v40;
                goto LABEL_63;
              }

              v67 = v34;
              v68 = MEMORY[0x277D81150];
              v219 = objc_msgSend_stringWithUTF8String_(*(v4 + 3240), v69, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
              v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
              v71 = v226;
              if (!v226)
              {
                v71 = objc_opt_class();
              }

              v62 = NSStringFromClass(v71);
              v72 = v32;
              if (!v32)
              {
                v72 = objc_opt_class();
              }

              v64 = NSStringFromClass(v72);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v219, v218, 567, 0, "Object [%{public}@-%llu] is not allowed by reference wrapper %{public}@.", v62, v224, v64);
LABEL_51:

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75);
            }

            else
            {
              v55 = v34;
              v57 = v4;
              v58 = v55;
              v217 = MEMORY[0x277D81150];
              v59 = *(v57 + 3240);
              if (v58)
              {
                v219 = objc_msgSend_stringWithUTF8String_(v59, v56, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
                v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
                v61 = v226;
                if (!v226)
                {
                  v61 = objc_opt_class();
                }

                v62 = NSStringFromClass(v61);
                v63 = v32;
                if (!v32)
                {
                  v63 = objc_opt_class();
                }

                v64 = NSStringFromClass(v63);
                v65 = NSStringFromProtocol(v58);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v217, v66, v219, v218, 569, 0, "Object [%{public}@-%llu] is not subclass of %{public}@ or does not conform to %{public}@.", v62, v224, v64, v65);

                goto LABEL_51;
              }

              v76 = objc_msgSend_stringWithUTF8String_(v59, v56, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
              v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
              v79 = v226;
              if (!v226)
              {
                v79 = objc_opt_class();
              }

              v80 = NSStringFromClass(v79);
              v81 = v32;
              if (!v32)
              {
                v81 = objc_opt_class();
              }

              v82 = NSStringFromClass(v81);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v217, v83, v76, v78, 571, 0, "Object [%{public}@-%llu] is not subclass of %{public}@.", v80, v224, v82);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85);
            }

            if (*v29)
            {
              v40 = 0;
              v33 = 0;
              v4 = 0x277CCA000;
              goto LABEL_63;
            }

            if (v216 == 2)
            {
              v4 = 0x277CCA000;
              if (isSubclassOfClass)
              {
                goto LABEL_61;
              }

              goto LABEL_30;
            }

            v89 = MEMORY[0x277CCA9B8];
            v4 = 0x277CCA000;
            v90 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v86, 0);
            v92 = objc_msgSend_tsp_errorWithError_hints_(v89, v91, v90, &unk_2885E5AE8);

            v40 = 0;
            v33 = 0;
            v228 = v92;
LABEL_63:
            if (v228)
            {
LABEL_64:
              if ((v223 & 1) == 0)
              {
                objc_msgSend_setError_(self, v33, v228);
              }

              v223 = 1;
              goto LABEL_70;
            }

            goto LABEL_69;
          }

LABEL_30:
          v40 = 0;
          v33 = v233;
          goto LABEL_63;
        }
      }

      else
      {
        if (v220)
        {
          v40 = objc_loadWeakRetained(&self->_delegate);
          objc_msgSend_reader_didFindExternalReferenceToObjectIdentifier_componentIdentifier_isWeak_allowUnknownObject_objectClass_objectProtocol_fromParentObject_completion_(v40, v41, self, v224, v220, *v29, v29[1], v32, v34, 0, v31);
LABEL_70:

          goto LABEL_71;
        }

        if (v31)
        {
          if (v224)
          {
            v42 = v228;
            if (!v228)
            {
              if ((*v29 & 1) == 0)
              {
                v43 = MEMORY[0x277D81150];
                v44 = objc_msgSend_stringWithUTF8String_(*(v4 + 3240), v33, "void TSPLogObjectNotUnarchived(__unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong)");
                v46 = objc_msgSend_stringWithUTF8String_(*(v4 + 3240), v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
                if (!v32)
                {
                  v32 = objc_opt_class();
                }

                v47 = NSStringFromClass(v32);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v46, 532, 0, "Object [%{public}@-%llu] was not unarchived.", v47, v224);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
                v51 = MEMORY[0x277CCA9B8];
                v53 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v52, 0);
                v42 = objc_msgSend_tsp_errorWithError_hints_(v51, v54, v53, &unk_2885E5AB8);

                goto LABEL_74;
              }

LABEL_78:
              v228 = 0;
              sub_276A810E4(v31);
              goto LABEL_71;
            }
          }

          else
          {
            v42 = v228;
          }

LABEL_74:
          v228 = v42;
          if (v42)
          {
            if ((v223 & 1) == 0)
            {
              objc_msgSend_setError_(self, v33, v42);
            }

            v223 = 1;
            goto LABEL_71;
          }

          goto LABEL_78;
        }
      }

LABEL_71:
      v93 = *(v29 - 1);
      *(v29 - 1) = 0;

      v29 += 32;
      if (v30 + 32 == v230)
      {

        v25 = v233;
        next = v215;
        goto LABEL_88;
      }
    }
  }

  v223 = 0;
LABEL_91:
  sub_276ADB658(&self->_objectInfoMap);
  begin = self->_repeatedReferences.__begin_;
  p_repeatedReferences = &self->_repeatedReferences;
  end = self->_repeatedReferences.__end_;
  if (begin == end)
  {
    goto LABEL_170;
  }

  do
  {
    v110 = objc_alloc(MEMORY[0x277CBEB18]);
    v112 = objc_msgSend_initWithCapacity_(v110, v111, (*(begin + 1) - *begin) >> 3);
    v113 = *(begin + 5);
    v234 = *(begin + 6);
    v114 = objc_opt_class();
    v116 = objc_msgSend_isSubclassOfClass_(v113, v115, v114);
    v118 = *begin;
    v229 = v113;
    v231 = *(begin + 1);
    if (*begin == v231)
    {
LABEL_135:
      v162 = 0;
      v163 = 0;
      goto LABEL_160;
    }

    v119 = v116;
    v227 = v112;
    v120 = v113;
    v225 = v116;
    while (1)
    {
      v121 = *v118;
      v123 = objc_msgSend_tsp_objectForIdentifier_(self->_objects, v117, *v118);
      if (!v123)
      {
        if (objc_msgSend_externalReferenceInfoForObjectIdentifier_(self->_component, v122, v121))
        {
          v164 = objc_alloc(MEMORY[0x277CBEB18]);
          v123 = objc_msgSend_initWithCapacity_(v164, v165, (*(begin + 1) - *begin) >> 3);
          v169 = objc_msgSend_componentIdentifier(self, v166, v167);
          v170 = *begin;
          v171 = *(begin + 1);
          while (v170 != v171)
          {
            v172 = *v170;
            v173 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(self->_component, v168, *v170);
            if (v173)
            {
              v175 = objc_msgSend_newReferenceInfoWithObjectIdentifier_componentIdentifier_(TSPReaderReferenceInfo, v174, v172, v173);
            }

            else
            {
              v175 = objc_msgSend_newReferenceInfoWithObjectIdentifier_componentIdentifier_(TSPReaderReferenceInfo, v174, v172, v169);
            }

            v177 = v175;
            objc_msgSend_addObject_(v123, v176, v175);

            ++v170;
          }

          v178 = objc_loadWeakRetained(&self->_delegate);
          objc_msgSend_reader_didFindExternalRepeatedReference_isWeak_allowUnknownObject_objectClass_objectProtocol_fromParentObject_completion_(v178, v179, self, v123, *(begin + 32), *(begin + 33), v229, v234, 0, *(begin + 3));
          v162 = 0;
          v163 = 1;
          goto LABEL_158;
        }

        if ((*(begin + 32) & 1) == 0)
        {
          v180 = MEMORY[0x277D81150];
          v181 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "void TSPLogObjectNotUnarchived(__unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong)");
          v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
          v184 = v229;
          if (!v229)
          {
            v184 = objc_opt_class();
          }

          v185 = NSStringFromClass(v184);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v180, v186, v181, v183, 532, 0, "Object [%{public}@-%llu] was not unarchived.", v185, v121);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v187, v188);
          v189 = MEMORY[0x277CCA9B8];
          v123 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v190, 0);
          v162 = objc_msgSend_tsp_errorWithError_hints_(v189, v191, v123, &unk_2885E5B30);
          goto LABEL_146;
        }

        goto LABEL_128;
      }

      v124 = objc_opt_class();
      if (v124 == objc_opt_class())
      {
        break;
      }

      if (objc_opt_isKindOfClass())
      {
        if (!v234 || (objc_msgSend_conformsToProtocol_(v123, v125, v234) & 1) != 0)
        {
          goto LABEL_105;
        }

        if (v119)
        {
LABEL_107:
          if (objc_msgSend_allowUnarchivingObjectClass_(v120, v125, v124))
          {
            goto LABEL_126;
          }

          v139 = v234;
          v140 = MEMORY[0x277D81150];
          v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v141, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
          v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
          if (!v124)
          {
            v124 = objc_opt_class();
          }

          v134 = NSStringFromClass(v124);
          v143 = v229;
          if (!v229)
          {
            v143 = objc_opt_class();
          }

          v136 = NSStringFromClass(v143);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v144, v131, v133, 567, 0, "Object [%{public}@-%llu] is not allowed by reference wrapper %{public}@.", v134, v121, v136);
        }

        else
        {
          v126 = v234;
LABEL_112:
          v130 = MEMORY[0x277D81150];
          v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
          v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
          if (!v124)
          {
            v124 = objc_opt_class();
          }

          v134 = NSStringFromClass(v124);
          v135 = v229;
          if (!v229)
          {
            v135 = objc_opt_class();
          }

          v136 = NSStringFromClass(v135);
          v137 = NSStringFromProtocol(v234);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v138, v131, v133, 569, 0, "Object [%{public}@-%llu] is not subclass of %{public}@ or does not conform to %{public}@.", v134, v121, v136, v137);
        }

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v145, v146);
        goto LABEL_123;
      }

      if (v119)
      {
        goto LABEL_107;
      }

      v129 = v234;
      if (v234)
      {
        goto LABEL_112;
      }

      v152 = MEMORY[0x277D81150];
      v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "void TSPLogObjectResolvedToUnexpectedClass(__unsafe_unretained Class, TSPObjectIdentifier, __unsafe_unretained Class, Protocol *__strong, BOOL, TSPObject *__strong)");
      v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
      if (!v124)
      {
        v124 = objc_opt_class();
      }

      v156 = NSStringFromClass(v124);
      v157 = v229;
      if (!v229)
      {
        v157 = objc_opt_class();
      }

      v158 = NSStringFromClass(v157);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v152, v159, v153, v155, 571, 0, "Object [%{public}@-%llu] is not subclass of %{public}@.", v156, v121, v158);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v161);
LABEL_123:

      v112 = v227;
      v120 = v229;
      v119 = v225;
      if ((*(begin + 32) & 1) == 0)
      {
        if (v216 != 2)
        {

          v192 = MEMORY[0x277CCA9B8];
          v178 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v193, 0);
          v195 = objc_msgSend_tsp_errorWithError_hints_(v192, v194, v178, &unk_2885E5B18);
          goto LABEL_157;
        }

        if (!v225)
        {
          objc_msgSend_addObject_(v227, v147, v123);
          goto LABEL_128;
        }

LABEL_126:
        v148 = [v120 alloc];
        v150 = objc_msgSend_initWithReferencedObject_(v148, v149, v123);
        objc_msgSend_addObject_(v112, v151, v150);
      }

LABEL_128:

      if (++v118 == v231)
      {
        goto LABEL_135;
      }
    }

    if (*(begin + 33))
    {
LABEL_105:
      objc_msgSend_addObject_(v112, v125, v123);
      goto LABEL_128;
    }

    if (*(begin + 32))
    {
      goto LABEL_128;
    }

    if (v214)
    {
      if (UnsafePointer != -1)
      {
        sub_276BD68D0();
      }

      v162 = 0;
      v163 = 0;
      v178 = v112;
      v112 = 0;
      goto LABEL_158;
    }

    v196 = MEMORY[0x277D81150];
    v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "void TSPLogObjectResolvedToUnknown(BOOL, __unsafe_unretained Class, TSPObjectIdentifier, TSPObject *__strong)");
    v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    v200 = v229;
    if (!v229)
    {
      v200 = objc_opt_class();
    }

    v201 = NSStringFromClass(v200);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v196, v202, v197, v199, 546, 0, "Object [%{public}@-%llu] resolved to an unknown object.", v201, v121);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v203, v204);
    if (objc_msgSend_isCrossAppPaste(self, v205, v206))
    {
      v162 = 0;
LABEL_146:
      v112 = 0;
      v163 = 0;
      goto LABEL_159;
    }

    v208 = MEMORY[0x277CCA9B8];
    v178 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v207, 7);
    v195 = objc_msgSend_tsp_errorWithError_hints_(v208, v209, v178, &unk_2885E5B00);
LABEL_157:
    v162 = v195;
    v112 = 0;
    v163 = 0;
LABEL_158:

LABEL_159:
LABEL_160:
    v210 = *(begin + 3);
    if (v210)
    {
      if ((v163 & 1) == 0)
      {
        if (v162)
        {
          if ((v223 & 1) == 0)
          {
            objc_msgSend_setError_(self, v117, v162);
          }

          v223 = 1;
        }

        else
        {
          sub_276A810E4(v210);
        }
      }

      v211 = *(begin + 3);
      *(begin + 3) = 0;
    }

    begin = (begin + 56);
  }

  while (begin != end);
  p_repeatedReferences = &self->_repeatedReferences;
  begin = self->_repeatedReferences.__begin_;
LABEL_170:
  sub_2769BB2D4(p_repeatedReferences, begin);

  objc_autoreleasePoolPop(context);
}

- (BOOL)setObject:(id)a3 forIdentifier:(int64_t)a4
{
  v6 = a3;
  v8 = objc_msgSend_tsp_objectForIdentifier_(self->_objects, v7, a4);
  v10 = v8;
  if (!v8)
  {
    objc_msgSend_tsp_setObject_forIdentifier_(self->_objects, v9, v6, a4);
    goto LABEL_5;
  }

  if (v8 == v6)
  {
LABEL_5:
    v35 = 1;
    goto LABEL_6;
  }

  v11 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPReader setObject:forIdentifier:]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
  v16 = objc_msgSend_locator(self->_component, v14, v15);
  v19 = objc_msgSend_identifier(self->_component, v17, v18);
  v22 = objc_msgSend_tsp_publicLoggingDescription(v10, v20, v21);
  v25 = objc_msgSend_tsp_publicLoggingDescription(v6, v23, v24);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v26, v37, v13, 885, 0, "Component [%{public}@-%llu] read two objects with identifier %llu: %{public}@ and %{public}@.", v16, v19, a4, v22, v25);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  v29 = MEMORY[0x277CCA9B8];
  v31 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v30, 0);
  v33 = objc_msgSend_tsp_errorWithError_hints_(v29, v32, v31, &unk_2885E5B60);
  objc_msgSend_setError_(self, v34, v33);

  v35 = 0;
LABEL_6:

  return v35;
}

- (void)setObjectDelegatesToContextObjectDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_objectDelegateForReader_(WeakRetained, v4, self);

  objects = self->_objects;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276ADA0E4;
  v9[3] = &unk_27A6E2FE0;
  v10 = v5;
  v7 = v5;
  objc_msgSend_tsp_enumerateObjectsUsingBlock_(objects, v8, v9);
}

- (void)processObjectsToModifyWithRootObject:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  objectsToModifyQueue = self->_objectsToModifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ADA1CC;
  block[3] = &unk_27A6E29B0;
  block[4] = self;
  v12 = v7;
  v13 = v4;
  v9 = v4;
  v10 = v7;
  dispatch_sync(objectsToModifyQueue, block);
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_contextForReader_(WeakRetained, v4, self);

  return v5;
}

- (void)willModifyObject:(id)a3 options:(unint64_t)a4
{
  if ((~a4 & 3) != 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReader willModifyObject:options:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 939, 0, "This method should only be called while skipping snapshot and ignoring will modify assertions. options=%tu", a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objectsToModifyQueue = self->_objectsToModifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ADA4C0;
  block[3] = &unk_27A6E6EB8;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(objectsToModifyQueue, block);
}

- (int64_t)newObjectIdentifier
{
  if (objc_msgSend_componentIdentifier(self, a2, v2) == 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPReader newObjectIdentifier]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 950, 0, "Objects shouldn't need a new identifier when unarchiving the package metadata.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    return 0;
  }

  else
  {
    v14 = objc_msgSend_context(self, v4, v5);
    v13 = objc_msgSend_newObjectIdentifier(v14, v15, v16);
  }

  return v13;
}

- (BOOL)isObjectInDocument:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_msgSend_packageIdentifier(WeakRetained, v4, v5) == 1;

  return v6;
}

- (void)unarchiver:(id)a3 didReadLazyReference:(id)a4 isExternal:(BOOL *)a5
{
  v22 = a4;
  objc_msgSend_setComponent_(v22, v7, self->_component);
  if (a5)
  {
    component = self->_component;
    v11 = objc_msgSend_tsp_identifier(v22, v8, v9);
    *a5 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(component, v12, v11) != 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPReader unarchiver:didReadLazyReference:isExternal:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 998, 0, "invalid nil value for '%{public}s'", "delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_msgSend_reader_didReadLazyReference_(WeakRetained, v13, self, v22);
}

- (int64_t)objectIdentifierForUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_msgSend_reader_wantsObjectIdentifierForUUID_(WeakRetained, v6, self, v4);

  return v7;
}

- (id)dataForIdentifier:(int64_t)a3 referencedByObjectIdentifier:(int64_t)a4 objectClass:(Class)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_msgSend_reader_wantsDataForIdentifier_(WeakRetained, v10, self, a3);

  v14 = objc_msgSend_identifier(v11, v12, v13);
  if (a4)
  {
    v17 = v14;
    if (v14)
    {
      if (objc_msgSend_needsObjectUUID(a5, v15, v16))
      {
        objc_msgSend_addReferenceFromObjectIdentifier_toDataIdentifier_objectHasUUID_(self->_componentDataReferenceMap, v18, a4, v17, 1);
      }

      else
      {
        v19 = objc_msgSend_objectUUIDForIdentifier_(self->_componentObjectUUIDMap, v18, a4);
        v20 = v19 != 0;

        objc_msgSend_addReferenceFromObjectIdentifier_toDataIdentifier_objectHasUUID_(self->_componentDataReferenceMap, v21, a4, v17, v20);
      }
    }
  }

  return v11;
}

- (unint64_t)readVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  Version = objc_msgSend_readVersion(WeakRetained, v3, v4);

  return Version;
}

- (void)objectInfoForIdentifier:(int64_t)a3
{
  v8 = a3;
  v3 = sub_2769ABC64(&self->_objectInfoMap.__table_.__bucket_list_.__ptr_, &v8);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_276ADB6B4();
  }

  return v3 + 3;
}

- (TSPReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 19) = 0;
  return self;
}

@end