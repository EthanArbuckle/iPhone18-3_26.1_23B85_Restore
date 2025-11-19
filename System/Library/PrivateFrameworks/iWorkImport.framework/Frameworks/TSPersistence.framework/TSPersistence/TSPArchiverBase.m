@interface TSPArchiverBase
- (BOOL)isForCopy;
- (BOOL)isSavingCollaborativeDocument;
- (BOOL)isSavingDocumentAs;
- (Message)messageWithNewFunction:(void *)a3 descriptor:(const void *)a4;
- (TSPArchiverBase)init;
- (TSPArchiverBase)initWithObject:(id)a3;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)a3 fileFormatVersion:(unint64_t)a4 field:(int)a5 message:(const Message *)a6;
- (id)alternateDiffToMergeBeforeVersion:(unint64_t)a3 fileFormatVersion:(unint64_t)a4 fieldPath:(int *)a5 baseFieldPath:(const void *)a6 message:(const Message *)a7;
- (unint64_t)minimumSupportedVersion;
- (unsigned)messageType;
- (void)addWeakReferenceToObjectUUID:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)enumerateFieldRulesUsingBlock:(id)a3;
- (void)pushScopeForField:(int)a3 message:(const Message *)a4 usingBlock:(id)a5;
- (void)releaseMessage;
- (void)setDataReference:(id)a3 message:(void *)a4;
- (void)setDataReferenceArray:(id)a3 message:(void *)a4;
- (void)setDataReferenceOrderedSet:(id)a3 message:(void *)a4;
- (void)setDataReferenceSet:(id)a3 message:(void *)a4;
- (void)setIgnoreAndPreserveRuleForField:(int)a3 message:(const Message *)a4;
- (void)setIgnoreAndPreserveUntilModifiedRuleForField:(int)a3 message:(const Message *)a4;
- (void)setMustUnderstandRuleForField:(int)a3 message:(const Message *)a4;
- (void)setRule:(int)a3 forFieldPath:(int *)a4 fileFormatVersion:(unint64_t)a5 featureIdentifier:(id)a6 message:(const Message *)a7;
- (void)setSparseReferenceArray:(id)a3 isWeak:(BOOL)a4 message:(void *)a5;
- (void)setSparseWeakObjectUUIDPathReferenceArray:(id)a3 message:(void *)a4;
- (void)setSparseWeakObjectUUIDReferenceArray:(id)a3 message:(void *)a4;
- (void)setStrongLazyReference:(id)a3 message:(void *)a4;
- (void)setStrongLazyReferenceArray:(id)a3 message:(void *)a4;
- (void)setStrongReference:(id)a3 message:(void *)a4;
- (void)setStrongReferenceArray:(id)a3 message:(void *)a4;
- (void)setStrongReferenceOrderedSet:(id)a3 message:(void *)a4;
- (void)setStrongReferenceSet:(id)a3 message:(void *)a4;
- (void)setWeakLazyReference:(id)a3 message:(void *)a4;
- (void)setWeakReference:(id)a3 message:(void *)a4;
- (void)setWeakReferenceArray:(id)a3 message:(void *)a4;
- (void)setWeakReferenceOrderedSet:(id)a3 message:(void *)a4;
- (void)setWeakReferenceSet:(id)a3 message:(void *)a4;
- (void)setWeakReferenceToObjectUUID:(id)a3 message:(void *)a4;
- (void)setWeakReferenceToObjectUUIDArray:(id)a3 message:(void *)a4;
- (void)setWeakReferenceToObjectUUIDData:(const void *)a3 message:(void *)a4;
- (void)setWeakReferenceToObjectUUIDPath:(id)a3 message:(void *)a4;
- (void)setWeakReferenceToObjectUUIDPathArray:(id)a3 message:(void *)a4;
- (void)validateMessage:(const Message *)a3;
@end

@implementation TSPArchiverBase

- (TSPArchiverBase)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPArchiverBase init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 48, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPArchiverBase init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPArchiverBase)initWithObject:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TSPArchiverBase;
  v6 = [(TSPArchiverBase *)&v15 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      TSUSetCrashReporterInfo();
      v9 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPArchiverBase initWithObject:]", "[TSPArchiverBase initWithObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 54);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v11, v13, 54, 1, "Cannot create archiver without object.");

      TSUCrashBreakpoint();
      abort();
    }

    objc_storeStrong(&v6->_object, a3);
    v7->_messageVersion = 0x1000000000005;
  }

  return v7;
}

- (void)dealloc
{
  fieldRules = self->_fieldRules;
  if (fieldRules)
  {
    v4 = sub_2769B0AEC(fieldRules);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  currentFieldPath = self->_currentFieldPath;
  if (currentFieldPath)
  {
    v6 = sub_2769E22E8(currentFieldPath);
    MEMORY[0x277C9F670](v6, 0x1081C40B6D36AFBLL);
  }

  v7.receiver = self;
  v7.super_class = TSPArchiverBase;
  [(TSPArchiverBase *)&v7 dealloc];
}

- (void)cleanup
{
  strongReferences = self->_strongReferences;
  self->_strongReferences = 0;

  weakReferences = self->_weakReferences;
  self->_weakReferences = 0;

  lazyReferences = self->_lazyReferences;
  self->_lazyReferences = 0;

  dataReferences = self->_dataReferences;
  self->_dataReferences = 0;

  countedDataReferences = self->_countedDataReferences;
  self->_countedDataReferences = 0;

  alternates = self->_alternates;
  self->_alternates = 0;
}

- (Message)messageWithNewFunction:(void *)a3 descriptor:(const void *)a4
{
  ptr = self->_message.__ptr_;
  currentFieldPath = self->_currentFieldPath;
  if (currentFieldPath)
  {
    v8 = currentFieldPath[4];
    if (ptr)
    {
      if (v8 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(*(self->_currentFieldPath + 3) + 4 * v9);
          v11 = (*(ptr->var0 + 19))(ptr, a2, a3);
          (*(ptr->var0 + 19))(ptr);
          v13 = v12;
          FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v11, v10);
          if (!FieldByNumber)
          {
            FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v13, v10);
            if (!FieldByNumber)
            {
              return 0;
            }
          }

          v15 = google::protobuf::Reflection::MutableMessage(v13, ptr, FieldByNumber, 0);
          ptr = v15;
          ++v9;
          if (v15)
          {
            v16 = v9 >= v8;
          }

          else
          {
            v16 = 1;
          }
        }

        while (!v16);
        if (!v15)
        {
          return ptr;
        }
      }

      goto LABEL_22;
    }

    if (v8)
    {
      v35 = objc_msgSend_object(self, a2, a3);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v40 = objc_msgSend_object(self, v38, v39);
      v43 = objc_msgSend_tsp_identifier(v40, v41, v42);
      sub_2769ACC84(self->_currentFieldPath, v44);
      v83 = v82 = v43;
      TSUSetCrashReporterInfo();

      v45 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSPArchiverBase messageWithNewFunction:descriptor:]", "[TSPArchiverBase messageWithNewFunction:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 88, v37, v82, v83);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v52 = objc_msgSend_object(self, v50, v51);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v57 = objc_msgSend_object(self, v55, v56);
      v60 = objc_msgSend_tsp_identifier(v57, v58, v59);
      v62 = sub_2769ACC84(self->_currentFieldPath, v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v63, v47, v49, 88, 1, "Cannot initialize the archiver's message for object [%{public}@-%llu] within a field scope. Field path is %{public}@.", v54, v60, v62);

      goto LABEL_45;
    }
  }

  else if (ptr)
  {
    LODWORD(v8) = 0;
LABEL_22:
    if ((*(ptr->var0 + 19))(ptr) == a4)
    {
      return ptr;
    }

    v22 = objc_msgSend_object(self, v20, v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v27 = objc_msgSend_object(self, v25, v26);
    v30 = objc_msgSend_tsp_identifier(v27, v28, v29);
    v31 = *(a4 + 1);
    if (*(v31 + 23) < 0)
    {
      v31 = *v31;
    }

    v33 = *((*(ptr->var0 + 19))(ptr) + 8);
    if (*(v33 + 23) < 0)
    {
      v33 = *v33;
    }

    if (v8 < 1)
    {
      v86 = @"empty";
    }

    else
    {
      v86 = sub_2769ACC84(self->_currentFieldPath, v32);
    }

    v84 = v33;
    TSUSetCrashReporterInfo();
    if (v8 >= 1)
    {
    }

    v64 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSPArchiverBase messageWithNewFunction:descriptor:]", "[TSPArchiverBase messageWithNewFunction:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 112, v24, v30, v31, v84, v86);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v71 = objc_msgSend_object(self, v69, v70);
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v76 = objc_msgSend_object(self, v74, v75);
    v87 = objc_msgSend_tsp_identifier(v76, v77, v78);
    v79 = *(a4 + 1);
    if (*(v79 + 23) < 0)
    {
      v79 = *v79;
    }

    v81 = *((*(ptr->var0 + 19))(ptr) + 8);
    if (*(v81 + 23) < 0)
    {
      v81 = *v81;
    }

    if (v8 < 1)
    {
      v85 = @"empty";
    }

    else
    {
      v85 = sub_2769ACC84(self->_currentFieldPath, v80);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v80, v66, v68, 112, 1, "Wrong message type while archiving object [%{public}@-%llu]. Expected %{public}s, but is actually %{public}s. Field path is %{public}@.", v73, v87, v79, v81, v85);
    if (v8 >= 1)
    {
    }

LABEL_45:
    TSUCrashBreakpoint();
    abort();
  }

  if (!a3)
  {
    return 0;
  }

  (a3)(&v88);
  v17 = v88;
  v88 = 0;
  v18 = self->_message.__ptr_;
  self->_message.__ptr_ = v17;
  if (v18)
  {
    (*(v18->var0 + 1))(v18);
    v19 = v88;
    v88 = 0;
    if (v19)
    {
      (*(v19->var0 + 1))(v19);
    }
  }

  LODWORD(v8) = 0;
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    goto LABEL_22;
  }

  return ptr;
}

- (void)validateMessage:(const Message *)a3
{
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    v5 = (*(a3->var0 + 19))(a3, a2);
    if (!objc_msgSend_messageWithNewFunction_descriptor_(self, v6, 0, v5))
    {
      v7 = ptr;
      v9 = *((*(ptr->var0 + 19))(ptr) + 8);
      if (*(v9 + 23) < 0)
      {
        v9 = *v9;
      }

      v10 = sub_2769ACC84(self->_currentFieldPath, v8);
      v13 = objc_msgSend_object(self, v11, v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = objc_msgSend_object(self, v16, v17);
      v41 = objc_msgSend_tsp_identifier(v18, v19, v20);
      TSUSetCrashReporterInfo();

      v21 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPArchiverBase validateMessage:]", "[TSPArchiverBase validateMessage:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 130, v9, v10, v15, v41);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v27 = *((*(v7->var0 + 19))(v7) + 8);
      if (*(v27 + 23) < 0)
      {
        v27 = *v27;
      }

      v28 = sub_2769ACC84(self->_currentFieldPath, v26);
      v31 = objc_msgSend_object(self, v29, v30);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v36 = objc_msgSend_object(self, v34, v35);
      v39 = objc_msgSend_tsp_identifier(v36, v37, v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v40, v23, v25, 130, 1, "Message type %{public}s could not be scoped to field path %{public}@ while archiving object [%{public}@-%llu].", v27, v28, v33, v39);

      TSUCrashBreakpoint();
      abort();
    }
  }
}

- (unsigned)messageType
{
  ptr = self->_message.__ptr_;
  if (ptr)
  {
    v4 = objc_msgSend_context(self->_object, a2, v2);
    v7 = objc_msgSend_registry(v4, v5, v6);
    v8 = (*(ptr->var0 + 19))(ptr);
    LODWORD(ptr) = objc_msgSend_messageTypeForDescriptor_(v7, v9, v8);
  }

  return ptr;
}

- (void)releaseMessage
{
  ptr = self->_message.__ptr_;
  self->_message.__ptr_ = 0;
  if (ptr)
  {
    (*(ptr->var0 + 1))();
  }
}

- (BOOL)isForCopy
{
  v4 = objc_msgSend_targetType(self, a2, v2);
  if (v4 != 1)
  {
    LOBYTE(v4) = objc_msgSend_targetType(self, v5, v6) == 2;
  }

  return v4;
}

- (void)setStrongReference:(id)a3 message:(void *)a4
{
  v15 = a3;
  v8 = objc_msgSend_tsp_identifier(v15, v6, v7);
  *(a4 + 4) |= 1u;
  *(a4 + 3) = v8;
  if (v15)
  {
    strongReferences = self->_strongReferences;
    if (!strongReferences)
    {
      v11 = [TSPReferenceOrderedSet alloc];
      v13 = objc_msgSend_initWithCapacity_(v11, v12, 1);
      v14 = self->_strongReferences;
      self->_strongReferences = v13;

      strongReferences = self->_strongReferences;
    }

    objc_msgSend_addItem_(strongReferences, v9, v15);
  }
}

- (void)setWeakReference:(id)a3 message:(void *)a4
{
  v15 = a3;
  v8 = objc_msgSend_tsp_identifier(v15, v6, v7);
  *(a4 + 4) |= 1u;
  *(a4 + 3) = v8;
  if (v15)
  {
    weakReferences = self->_weakReferences;
    if (!weakReferences)
    {
      v11 = [TSPReferenceOrderedSet alloc];
      v13 = objc_msgSend_initWithCapacity_(v11, v12, 1);
      v14 = self->_weakReferences;
      self->_weakReferences = v13;

      weakReferences = self->_weakReferences;
    }

    objc_msgSend_addItem_(weakReferences, v9, v15);
  }
}

- (void)setStrongReferenceArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setStrongReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setWeakReferenceArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setWeakReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setStrongReferenceSet:(id)a3 message:(void *)a4
{
  v11 = a3;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedObjectArray(v11, v7, v8);
  objc_msgSend_setStrongReferenceArray_message_(self, v10, v9, a4);

  objc_autoreleasePoolPop(v6);
}

- (void)setWeakReferenceSet:(id)a3 message:(void *)a4
{
  v11 = a3;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedObjectArray(v11, v7, v8);
  objc_msgSend_setWeakReferenceArray_message_(self, v10, v9, a4);

  objc_autoreleasePoolPop(v6);
}

- (void)setStrongReferenceOrderedSet:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setStrongReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setWeakReferenceOrderedSet:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setWeakReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setStrongLazyReference:(id)a3 message:(void *)a4
{
  v37 = a3;
  v8 = objc_msgSend_tsp_identifier(v37, v6, v7);
  *(a4 + 4) |= 1u;
  *(a4 + 3) = v8;
  v11 = v37;
  if (!v37)
  {
    goto LABEL_14;
  }

  if (objc_msgSend_ownershipMode(v37, v9, v10) && (objc_msgSend_isForCopy(self, v12, v13) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPArchiverBase setStrongLazyReference:message:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 225, 0, "Lazy reference should be strong.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v22 = objc_msgSend_objectIfLoaded(v37, v12, v13);
  strongReferences = self->_strongReferences;
  if (v22)
  {
    v24 = v22;
    if (!strongReferences)
    {
      v25 = [TSPReferenceOrderedSet alloc];
      v27 = objc_msgSend_initWithCapacity_(v25, v26, 1);
      v24 = v22;
LABEL_10:
      v30 = self->_strongReferences;
      self->_strongReferences = v27;

      strongReferences = self->_strongReferences;
    }
  }

  else
  {
    v24 = v37;
    if (!strongReferences)
    {
      v28 = [TSPReferenceOrderedSet alloc];
      v27 = objc_msgSend_initWithCapacity_(v28, v29, 1);
      v24 = v37;
      goto LABEL_10;
    }
  }

  objc_msgSend_addItem_(strongReferences, v21, v24);
  lazyReferences = self->_lazyReferences;
  if (!lazyReferences)
  {
    v33 = objc_alloc(MEMORY[0x277CCAA50]);
    v35 = objc_msgSend_initWithOptions_capacity_(v33, v34, 512, 1);
    v36 = self->_lazyReferences;
    self->_lazyReferences = v35;

    lazyReferences = self->_lazyReferences;
  }

  objc_msgSend_addObject_(lazyReferences, v31, v37);

  v11 = v37;
LABEL_14:
}

- (void)setStrongLazyReferenceArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_references(a3, a2, a3, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setStrongLazyReference_message_(self, v8, v12, *&v13[2 * v14 + 2]);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setStrongLazyReference_message_(self, v19, v12, v16);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setWeakLazyReference:(id)a3 message:(void *)a4
{
  v33 = a3;
  v8 = objc_msgSend_tsp_identifier(v33, v6, v7);
  *(a4 + 4) |= 1u;
  *(a4 + 3) = v8;
  v11 = v33;
  if (v33)
  {
    if (!objc_msgSend_ownershipMode(v33, v9, v10))
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPArchiverBase setWeakLazyReference:message:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 262, 0, "Lazy reference should be weak.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }

    if (!self->_weakReferences)
    {
      v21 = [TSPReferenceOrderedSet alloc];
      v23 = objc_msgSend_initWithCapacity_(v21, v22, 1);
      weakReferences = self->_weakReferences;
      self->_weakReferences = v23;
    }

    v25 = objc_msgSend_objectIfLoaded(v33, v12, v13);
    v26 = self->_weakReferences;
    if (v25)
    {
      objc_msgSend_addItem_(v26, v33, v25);
    }

    else
    {
      objc_msgSend_addItem_(v26, v33, v33);
    }

    lazyReferences = self->_lazyReferences;
    if (!lazyReferences)
    {
      v29 = objc_alloc(MEMORY[0x277CCAA50]);
      v31 = objc_msgSend_initWithOptions_capacity_(v29, v30, 512, 1);
      v32 = self->_lazyReferences;
      self->_lazyReferences = v31;

      lazyReferences = self->_lazyReferences;
    }

    objc_msgSend_addObject_(lazyReferences, v27, v33);

    v11 = v33;
  }
}

- (void)setDataReference:(id)a3 message:(void *)a4
{
  v6 = a3;
  v75 = v6;
  if (!v6)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPArchiverBase setDataReference:message:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 328, 0, "Cannot add reference to nil data.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    goto LABEL_23;
  }

  v11 = objc_msgSend_storage(v6, v7, v8);
  if (!v11)
  {
    v37 = objc_msgSend_null(TSPData, v9, v10);

    if (v37 != v75)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSPArchiverBase setDataReference:message:]");
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      v45 = objc_msgSend_filename(v75, v43, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v40, v42, 291, 0, "Attempting to archive null data with filename: %@", v45);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }

    *(a4 + 4) |= 1u;
    *(a4 + 3) = 0;
    goto LABEL_22;
  }

  v12 = objc_msgSend_context(self->_object, v9, v10);
  v15 = objc_msgSend_context(v75, v13, v14);
  if (objc_msgSend_readOnly(v11, v16, v17))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase setDataReference:message:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    object = self->_object;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v28 = objc_msgSend_tsp_identifier(self->_object, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v29, v20, v22, 298, 0, "Should not archive read-only data %@, referenced from [%{public}@-%llu]", v75, v25, v28);
  }

  else
  {
    if (v15 == v12)
    {
      goto LABEL_12;
    }

    v49 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase setDataReference:message:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    v51 = self->_object;
    v52 = objc_opt_class();
    v25 = NSStringFromClass(v52);
    v55 = objc_msgSend_tsp_identifier(self->_object, v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v56, v20, v22, 300, 0, "Unexpected data context for data %@, referenced from [%{public}@-%llu] (expected %p, actual %p)", v75, v25, v55, v12, v15);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
LABEL_12:
  if (v15 == v12)
  {
LABEL_16:
    v61 = v75;
    goto LABEL_17;
  }

  v61 = objc_msgSend_copyWithContext_(v75, v18, v12);
  if (!v61)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD11E0();
    }

    goto LABEL_16;
  }

LABEL_17:
  v63 = objc_msgSend_identifier(v61, v59, v60);
  *(a4 + 4) |= 1u;
  *(a4 + 3) = v63;
  dataReferences = self->_dataReferences;
  if (!dataReferences)
  {
    v65 = objc_alloc(MEMORY[0x277CCAA50]);
    v67 = objc_msgSend_initWithOptions_capacity_(v65, v66, 512, 1);
    v68 = self->_dataReferences;
    self->_dataReferences = v67;

    dataReferences = self->_dataReferences;
  }

  objc_msgSend_addObject_(dataReferences, v62, v61);
  countedDataReferences = self->_countedDataReferences;
  if (!countedDataReferences)
  {
    v71 = [_TtC13TSPersistence23TSPMutableIdentifierSet alloc];
    v73 = objc_msgSend_initWithCapacity_(v71, v72, 1);
    v74 = self->_countedDataReferences;
    self->_countedDataReferences = v73;

    countedDataReferences = self->_countedDataReferences;
  }

  objc_msgSend_incrementCountBy_forIdentifier_(countedDataReferences, v69, 1, v63);

LABEL_22:
LABEL_23:
}

- (void)setDataReferenceArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setDataReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setDataReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setDataReferenceSet:(id)a3 message:(void *)a4
{
  v11 = a3;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_tsp_sortedDataArray(v11, v7, v8);
  objc_msgSend_setDataReferenceArray_message_(self, v10, v9, a4);

  objc_autoreleasePoolPop(v6);
}

- (void)setDataReferenceOrderedSet:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setDataReference_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setDataReference_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setMustUnderstandRuleForField:(int)a3 message:(const Message *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = a3;
  v5[1] = 0;
  objc_msgSend_setMustUnderstandRuleForFieldPath_message_(self, a2, v5, a4);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setIgnoreAndPreserveRuleForField:(int)a3 message:(const Message *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = a3;
  v5[1] = 0;
  objc_msgSend_setIgnoreAndPreserveRuleForFieldPath_message_(self, a2, v5, a4);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setIgnoreAndPreserveUntilModifiedRuleForField:(int)a3 message:(const Message *)a4
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = a3;
  v5[1] = 0;
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForFieldPath_message_(self, a2, v5, a4);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setRule:(int)a3 forFieldPath:(int *)a4 fileFormatVersion:(unint64_t)a5 featureIdentifier:(id)a6 message:(const Message *)a7
{
  v11 = a6;
  if (!a4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPArchiverBase setRule:forFieldPath:fileFormatVersion:featureIdentifier:message:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 382, 0, "invalid nil value for '%{public}s'", "inFieldPath", a5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_msgSend_validateMessage_(self, v10, a7);
  if (a4 && *a4)
  {
    operator new();
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase setRule:forFieldPath:fileFormatVersion:featureIdentifier:message:]");
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 414, 0, "Field path must contain at least 1 field number. Field numbers must be greater than zero.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
}

- (void)pushScopeForField:(int)a3 message:(const Message *)a4 usingBlock:(id)a5
{
  v29 = a5;
  if (!v29)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPArchiverBase pushScopeForField:message:usingBlock:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 423, 0, "invalid nil value for '%{public}s'", "block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_validateMessage_(self, v8, a4);
  currentFieldPath = self->_currentFieldPath;
  if (!currentFieldPath)
  {
    operator new();
  }

  v17 = currentFieldPath[4];
  if (v17 == currentFieldPath[5])
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(*(currentFieldPath + 3) + 4 * v17) = a3;
  currentFieldPath[4] = v17 + 1;
  v29[2]();
  v19 = self->_currentFieldPath;
  v20 = v19[4];
  if (v20 == 1)
  {
    v21 = sub_2769E22E8(v19);
    MEMORY[0x277C9F670](v21, 0x1081C40B6D36AFBLL);
    self->_currentFieldPath = 0;
  }

  else
  {
    if (v20 <= 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPArchiverBase pushScopeForField:message:usingBlock:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 440, 0, "Unbalanced push/pop operations on _currentFieldPath.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
      v19 = self->_currentFieldPath;
      v20 = v19[4];
    }

    v19[4] = v20 - 1;
  }
}

- (void)enumerateFieldRulesUsingBlock:(id)a3
{
  v4 = a3;
  fieldRules = self->_fieldRules;
  if (fieldRules)
  {
    v7 = 0;
    v6 = fieldRules + 16;
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v4[2](v4, (v6 + 2), (v6 + 7), &v7);
    }

    while ((v7 & 1) == 0);
  }
}

- (unint64_t)minimumSupportedVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  messageVersion = self->_messageVersion;
  alternates = self->_alternates;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769AF134;
  v5[3] = &unk_27A6E3030;
  v5[4] = &v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(alternates, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)a3 fileFormatVersion:(unint64_t)a4 field:(int)a5 message:(const Message *)a6
{
  v10 = *MEMORY[0x277D85DE8];
  v9[0] = a5;
  v9[1] = 0;
  v6 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_fieldPath_message_(self, a2, a3, a4, v9, a6);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)alternateDiffToMergeBeforeVersion:(unint64_t)a3 fileFormatVersion:(unint64_t)a4 fieldPath:(int *)a5 baseFieldPath:(const void *)a6 message:(const Message *)a7
{
  if (a5 && *a5)
  {
    operator new();
  }

  v7 = objc_msgSend_addAlternateArchiverForVersion_fieldPath_isDiffArchiver_diffReadVersion_message_(self, a2, a3, a6, 1, a4, a7);

  return v7;
}

- (BOOL)isSavingDocumentAs
{
  v3 = objc_msgSend_targetType(self, a2, v2);
  if (v3)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPArchiverBase isSavingDocumentAs]", "[TSPArchiverBase isSavingDocumentAs]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 559);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 559, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  return v3;
}

- (BOOL)isSavingCollaborativeDocument
{
  v3 = objc_msgSend_targetType(self, a2, v2);
  if (v3)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPArchiverBase isSavingCollaborativeDocument]", "[TSPArchiverBase isSavingCollaborativeDocument]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm", 564);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiverBase.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 564, 1, "targetType must be TSPArchiverTargetTypeDocument");

    TSUCrashBreakpoint();
    abort();
  }

  return v3;
}

- (void)addWeakReferenceToObjectUUID:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_context(self->_object, v4, v5);
    v20 = 0;
    v10 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(v7, v8, v6, 1, 0, &v20);
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v20 == 0;
    }

    if (!v11)
    {
      v12 = [TSPLazyReferenceInternal alloc];
      v10 = objc_msgSend_initWithDelegate_identifier_ownershipMode_allowUnknownObject_objectClass_objectProtocol_(v12, v13, v7, v20, 1, 0, 0, 0);
      objc_msgSend_setObjectUUID_(v10, v14, v6);
    }

    if (v10)
    {
      weakReferences = self->_weakReferences;
      if (!weakReferences)
      {
        v16 = [TSPReferenceOrderedSet alloc];
        v18 = objc_msgSend_initWithCapacity_(v16, v17, 1);
        v19 = self->_weakReferences;
        self->_weakReferences = v18;

        weakReferences = self->_weakReferences;
      }

      objc_msgSend_addItem_(weakReferences, v9, v10);
    }
  }
}

- (void)setWeakReferenceToObjectUUID:(id)a3 message:(void *)a4
{
  v8 = a3;
  objc_msgSend_tsp_saveToMessage_(v8, v6, a4);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v7, v8);
}

- (void)setWeakReferenceToObjectUUIDData:(const void *)a3 message:(void *)a4
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDBytes_(v7, v8, a3);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v10, v9);

  objc_autoreleasePoolPop(v6);
}

- (void)setWeakReferenceToObjectUUIDPath:(id)a3 message:(void *)a4
{
  v11 = a3;
  objc_msgSend_saveToMessage_(v11, v6, a4);
  v9 = objc_msgSend_lastUUID(v11, v7, v8);
  objc_msgSend_addWeakReferenceToObjectUUID_(self, v10, v9);
}

- (void)setWeakReferenceToObjectUUIDArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setWeakReferenceToObjectUUID_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReferenceToObjectUUID_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setWeakReferenceToObjectUUIDPathArray:(id)a3 message:(void *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(a4 + 2);
        if (!v13)
        {
          v15 = *(a4 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4, v15 + 1);
          v13 = *(a4 + 2);
          v15 = *v13;
          goto LABEL_12;
        }

        v14 = *(a4 + 2);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(a4 + 2) = v14 + 1;
          objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(self, v8, v12, *&v13[2 * v14 + 2], v21);
          goto LABEL_13;
        }

        if (v15 == *(a4 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(*a4);
        v17 = *(a4 + 2);
        v18 = *(a4 + 2) + 8 * v17;
        *(a4 + 2) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(self, v19, v12, v16, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setSparseReferenceArray:(id)a3 isWeak:(BOOL)a4 message:(void *)a5
{
  v38 = a4;
  v39 = a3;
  v9 = objc_msgSend_count(v39, v6, v7);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = -1;
    v12 = 0x277D81000uLL;
    while (1)
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(v39, v8, v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);

        if (v13 != v20)
        {
          v22 = *(v12 + 336);
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPArchiverBase(SparseArray) setSparseReferenceArray:isWeak:message:]");
          v24 = v12;
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 41, 0, "Invalid object in sparse object array: %@", v13);

          v12 = v24;
          objc_msgSend_logBacktraceThrottled(*(v24 + 336), v28, v29);
        }

        goto LABEL_26;
      }

      v16 = *(a5 + 5);
      if (!v16)
      {
        break;
      }

      v17 = *(a5 + 8);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(a5 + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a5 + 6, v18 + 1);
          v16 = *(a5 + 5);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(*(a5 + 3));
        v30 = *(a5 + 8);
        v31 = *(a5 + 5) + 8 * v30;
        *(a5 + 8) = v30 + 1;
        *(v31 + 8) = v19;
        goto LABEL_13;
      }

      *(a5 + 8) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_13:
      v32 = *(v19 + 16);
      *(v19 + 32) = v10;
      *(v19 + 16) = v32 | 3;
      v33 = *(v19 + 24);
      if (v38)
      {
        if (!v33)
        {
          v34 = *(v19 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v34);
          *(v19 + 24) = v33;
        }

        objc_msgSend_setWeakReference_message_(self, v14, v13, v33);
      }

      else
      {
        if (!v33)
        {
          v35 = *(v19 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v35);
          *(v19 + 24) = v33;
        }

        objc_msgSend_setStrongReference_message_(self, v14, v13, v33);
      }

      if (v11 <= v10)
      {
        v11 = v10;
      }

LABEL_26:

      if (v9 == ++v10)
      {
        v36 = v11 + 1;
        goto LABEL_29;
      }
    }

    v18 = *(a5 + 9);
    goto LABEL_11;
  }

  v36 = 0;
LABEL_29:
  *(a5 + 4) |= 1u;
  *(a5 + 12) = v36;
}

- (void)setSparseWeakObjectUUIDReferenceArray:(id)a3 message:(void *)a4
{
  v33 = a3;
  v8 = objc_msgSend_count(v33, v5, v6);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = -1;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v33, v7, v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

        if (v11 != v18)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase(SparseArray) setSparseWeakObjectUUIDReferenceArray:message:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 63, 0, "Invalid object in sparse UUID array: %@", v11);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        }

        goto LABEL_19;
      }

      v14 = *(a4 + 5);
      if (!v14)
      {
        break;
      }

      v15 = *(a4 + 8);
      v16 = *v14;
      if (v15 >= *v14)
      {
        if (v16 == *(a4 + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4 + 6, v16 + 1);
          v14 = *(a4 + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(*(a4 + 3));
        v27 = *(a4 + 8);
        v28 = *(a4 + 5) + 8 * v27;
        *(a4 + 8) = v27 + 1;
        *(v28 + 8) = v17;
        goto LABEL_13;
      }

      *(a4 + 8) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_13:
      v29 = *(v17 + 16);
      *(v17 + 32) = v9;
      *(v17 + 16) = v29 | 3;
      v30 = *(v17 + 24);
      if (!v30)
      {
        v31 = *(v17 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v31);
        *(v17 + 24) = v30;
      }

      objc_msgSend_tsp_saveToMessage_(v11, v12, v30);
      if (v10 <= v9)
      {
        v10 = v9;
      }

LABEL_19:

      if (v8 == ++v9)
      {
        v32 = v10 + 1;
        goto LABEL_22;
      }
    }

    v16 = *(a4 + 9);
    goto LABEL_11;
  }

  v32 = 0;
LABEL_22:
  *(a4 + 4) |= 1u;
  *(a4 + 12) = v32;
}

- (void)setSparseWeakObjectUUIDPathReferenceArray:(id)a3 message:(void *)a4
{
  v33 = a3;
  v8 = objc_msgSend_count(v33, v5, v6);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = -1;
    while (1)
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v33, v7, v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);

        if (v11 != v18)
        {
          v20 = MEMORY[0x277D81150];
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPArchiverBase(SparseArray) setSparseWeakObjectUUIDPathReferenceArray:message:]");
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver_SparseArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 85, 0, "Invalid object in sparse UUID path array: %@", v11);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        }

        goto LABEL_19;
      }

      v14 = *(a4 + 5);
      if (!v14)
      {
        break;
      }

      v15 = *(a4 + 8);
      v16 = *v14;
      if (v15 >= *v14)
      {
        if (v16 == *(a4 + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4 + 6, v16 + 1);
          v14 = *(a4 + 5);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(*(a4 + 3));
        v27 = *(a4 + 8);
        v28 = *(a4 + 5) + 8 * v27;
        *(a4 + 8) = v27 + 1;
        *(v28 + 8) = v17;
        goto LABEL_13;
      }

      *(a4 + 8) = v15 + 1;
      v17 = *&v14[2 * v15 + 2];
LABEL_13:
      v29 = *(v17 + 16);
      *(v17 + 32) = v9;
      *(v17 + 16) = v29 | 3;
      v30 = *(v17 + 24);
      if (!v30)
      {
        v31 = *(v17 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v31);
        *(v17 + 24) = v30;
      }

      objc_msgSend_saveToMessage_(v11, v12, v30);
      if (v10 <= v9)
      {
        v10 = v9;
      }

LABEL_19:

      if (v8 == ++v9)
      {
        v32 = v10 + 1;
        goto LABEL_22;
      }
    }

    v16 = *(a4 + 9);
    goto LABEL_11;
  }

  v32 = 0;
LABEL_22:
  *(a4 + 4) |= 1u;
  *(a4 + 12) = v32;
}

@end