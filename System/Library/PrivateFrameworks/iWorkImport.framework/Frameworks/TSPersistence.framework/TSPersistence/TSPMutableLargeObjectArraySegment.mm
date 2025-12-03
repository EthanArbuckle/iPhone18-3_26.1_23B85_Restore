@interface TSPMutableLargeObjectArraySegment
- (Class)elementClass;
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (unint64_t)estimatedCostOfElement:(id)element;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeObjectArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPMutableLargeObjectArraySegment estimatedByteSizeOfElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeObjectArraySegment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 21, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  objc_opt_class();
  v13 = TSUDynamicCast();
  if (v13)
  {
    v14 = objc_msgSend_tsp_estimatedByteSizeOfReferenceToObject_(TSPObject, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)estimatedCostOfElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPMutableLargeObjectArraySegment estimatedCostOfElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeObjectArraySegment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 33, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  objc_opt_class();
  v13 = TSUDynamicCast();
  if (v13)
  {
    v14 = objc_msgSend_tsp_estimatedCostOfObject_(TSPObject, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (Class)elementClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMutableLargeObjectArraySegment elementClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeObjectArraySegment.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 54, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPMutableLargeObjectArraySegment elementClass]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276AE8068, off_2812FC248[76]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  v32 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276AE7CF4;
  v28[3] = &unk_27A6E2898;
  v7 = archiverCopy;
  v29 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy2 = self;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v10, &v24, v31, 16);
  if (v12)
  {
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(selfCopy2);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
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
          objc_msgSend_setStrongReference_message_(v7, v11, v15, *&v16[2 * v17 + 2], v24);
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
        objc_msgSend_setStrongReference_message_(v7, v22, v15, v19, v24);
LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v11, &v24, v31, 16);
    }

    while (v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[76]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276AE7F08;
  v14[3] = &unk_27A6E46B8;
  v7 = unarchiverCopy;
  v15 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v14);
  v11 = objc_msgSend_elementClass(self, v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276AE7F4C;
  v13[3] = &unk_27A6E3B40;
  v13[4] = self;
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v7, v12, message + 24, v11, 0, v13);
}

@end