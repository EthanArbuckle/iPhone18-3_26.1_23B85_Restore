@interface TSPMutableLargeLazyReferenceArraySegment
- (Class)elementClass;
- (id)referredObjectAtIndex:(unint64_t)index;
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (void)addReferredObject:(id)object;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeLazyReferenceArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
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

- (void)addReferredObject:(id)object
{
  v5 = objc_msgSend_referenceForObject_(TSPLazyReference, a2, object);
  objc_msgSend_addObject_(self, v4, v5);
}

- (id)referredObjectAtIndex:(unint64_t)index
{
  v3 = objc_msgSend_objectAtIndex_(self, a2, index);
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

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A21D7C, off_2812FC248[74]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  v37 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_276A21AC4;
  v33[3] = &unk_27A6E2898;
  v7 = archiverCopy;
  v34 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v33);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy2 = self;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v10, &v29, v36, 16);
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
          objc_enumerationMutation(selfCopy2);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = *(message + 5);
        if (!v16)
        {
          v18 = *(message + 9);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message + 6, v18 + 1);
          v16 = *(message + 5);
          v18 = *v16;
          goto LABEL_12;
        }

        v17 = *(message + 8);
        v18 = *v16;
        if (v17 < *v16)
        {
          *(message + 8) = v17 + 1;
          objc_msgSend_setStrongLazyReference_message_(v7, v11, v15, *&v16[2 * v17 + 2], v29);
          goto LABEL_13;
        }

        if (v18 == *(message + 9))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(message + 3));
        v20 = *(message + 8);
        v21 = *(message + 5) + 8 * v20;
        *(message + 8) = v20 + 1;
        *(v21 + 8) = v19;
        objc_msgSend_setStrongLazyReference_message_(v7, v22, v15, v19, v29);
LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v11, &v29, v36, 16);
    }

    while (v12);
  }

  v26 = TSP::LargeLazyObjectArraySegment::ByteSizeLong(message, v23, v24, v25);
  objc_msgSend_setEstimatedByteSize_(selfCopy2, v27, v26);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[74]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276A21D2C;
  v19[3] = &unk_27A6E46B8;
  v7 = unarchiverCopy;
  v20 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v19);
  if (*(message + 8) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(message + 5) + 8 * v12 + 8);
      v14 = objc_msgSend_elementClass(self, v9, v10);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_276A21D70;
      v18[3] = &unk_27A6E41F8;
      v18[4] = self;
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v7, v15, v13, v14, 0, v18);
      ++v12;
    }

    while (v12 < *(message + 8));
  }

  v16 = TSP::LargeLazyObjectArraySegment::ByteSizeLong(message, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v17, v16);
}

@end