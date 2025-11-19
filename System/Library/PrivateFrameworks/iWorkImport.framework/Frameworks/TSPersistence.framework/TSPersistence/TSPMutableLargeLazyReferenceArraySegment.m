@interface TSPMutableLargeLazyReferenceArraySegment
- (Class)elementClass;
- (id)referredObjectAtIndex:(unint64_t)a3;
- (unint64_t)estimatedByteSizeOfElement:(id)a3;
- (void)addReferredObject:(id)a3;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSPMutableLargeLazyReferenceArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPMutableLargeLazyReferenceArraySegment estimatedByteSizeOfElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyReferenceArraySegment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 18, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  objc_opt_class();
  v12 = TSUDynamicCast();
  if (v12)
  {
    TSP::Reference::Reference(v21, 0);
    v15 = objc_msgSend_tsp_identifier(v12, v13, v14);
    v22 |= 1u;
    v23 = v15;
    v19 = &TSP::Reference::ByteSizeLong(v21, v16, v17, v18)->ptr_ + 1;
    TSP::Reference::~Reference(v21);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (void)addReferredObject:(id)a3
{
  v5 = objc_msgSend_referenceForObject_(TSPLazyReference, a2, a3);
  objc_msgSend_addObject_(self, v4, v5);
}

- (id)referredObjectAtIndex:(unint64_t)a3
{
  v3 = objc_msgSend_objectAtIndex_(self, a2, a3);
  v48 = 0;
  v5 = objc_msgSend_objectAndReturnError_(v3, v4, &v48);
  v6 = v48;

  if (!v5 && v6)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_domain(v6, v10, v11);
    v15 = objc_msgSend_code(v6, v13, v14);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v6, v16, v17);
    v21 = objc_msgSend_tsp_hintsDescription(v6, v19, v20);
    v22 = v21;
    if (isRecoverable)
    {
      v23 = @"recoverable=YES, ";
    }

    else
    {
      v23 = &stru_2885C9BB8;
    }

    v46 = v21;
    v44 = v15;
    v45 = v23;
    TSUSetCrashReporterInfo();

    v24 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPMutableLargeLazyReferenceArraySegment referredObjectAtIndex:]", "[TSPMutableLargeLazyReferenceArraySegment referredObjectAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyReferenceArraySegment.mm", 39, v9, v12, v44, v45, v46, v6);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyReferenceArraySegment.mm");
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = objc_msgSend_domain(v6, v31, v32);
    v36 = objc_msgSend_code(v6, v34, v35);
    v39 = objc_msgSend_tsp_isRecoverable(v6, v37, v38);
    v47 = objc_msgSend_tsp_hintsDescription(v6, v40, v41);
    if (v39)
    {
      v43 = @"recoverable=YES, ";
    }

    else
    {
      v43 = &stru_2885C9BB8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v42, v26, v28, 39, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v30, v33, v36, v43, v47, v6);

    TSUCrashBreakpoint();
    abort();
  }

  return v5;
}

- (Class)elementClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMutableLargeLazyReferenceArraySegment elementClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeLazyReferenceArraySegment.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 53, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPMutableLargeLazyReferenceArraySegment elementClass]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276A21D7C, off_2812FC248[74]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_276A21AC4;
  v33[3] = &unk_27A6E2898;
  v7 = v6;
  v34 = v7;
  v35 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v33);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v36, 16);
  if (v12)
  {
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = *(a3 + 5);
        if (!v16)
        {
          v18 = *(a3 + 9);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 6, v18 + 1);
          v16 = *(a3 + 5);
          v18 = *v16;
          goto LABEL_12;
        }

        v17 = *(a3 + 8);
        v18 = *v16;
        if (v17 < *v16)
        {
          *(a3 + 8) = v17 + 1;
          objc_msgSend_setStrongLazyReference_message_(v7, v11, v15, *&v16[2 * v17 + 2], v29);
          goto LABEL_13;
        }

        if (v18 == *(a3 + 9))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a3 + 3));
        v20 = *(a3 + 8);
        v21 = *(a3 + 5) + 8 * v20;
        *(a3 + 8) = v20 + 1;
        *(v21 + 8) = v19;
        objc_msgSend_setStrongLazyReference_message_(v7, v22, v15, v19, v29);
LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v29, v36, 16);
    }

    while (v12);
  }

  v26 = TSP::LargeLazyObjectArraySegment::ByteSizeLong(a3, v23, v24, v25);
  objc_msgSend_setEstimatedByteSize_(v9, v27, v26);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FC248[74]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276A21D2C;
  v19[3] = &unk_27A6E46B8;
  v7 = v6;
  v20 = v7;
  v21 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v19);
  if (*(a3 + 8) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a3 + 5) + 8 * v12 + 8);
      v14 = objc_msgSend_elementClass(self, v9, v10);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_276A21D70;
      v18[3] = &unk_27A6E41F8;
      v18[4] = self;
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v7, v15, v13, v14, 0, v18);
      ++v12;
    }

    while (v12 < *(a3 + 8));
  }

  v16 = TSP::LargeLazyObjectArraySegment::ByteSizeLong(a3, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v17, v16);
}

@end