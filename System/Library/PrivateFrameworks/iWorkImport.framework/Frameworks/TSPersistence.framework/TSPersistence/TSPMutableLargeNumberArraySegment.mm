@interface TSPMutableLargeNumberArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeNumberArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  if (!elementCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPMutableLargeNumberArraySegment estimatedByteSizeOfElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeNumberArraySegment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 18, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return 9;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A66A74, off_2812FC248[66]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  v32 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276A6680C;
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
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v10, &v24, v31, 16);
  if (v13)
  {
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(selfCopy2);
        }

        objc_msgSend_doubleValue(*(*(&v24 + 1) + 8 * v15), v11, v12, v24);
        v17 = *(message + 6);
        if (v17 == *(message + 7))
        {
          google::protobuf::RepeatedField<double>::Reserve();
        }

        *(*(message + 4) + 8 * v17) = v16;
        *(message + 6) = v17 + 1;
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy2, v11, &v24, v31, 16);
    }

    while (v13);
  }

  v21 = TSP::LargeNumberArraySegment::ByteSizeLong(message, v18, v19, v20);
  objc_msgSend_setEstimatedByteSize_(selfCopy2, v22, v21);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[66]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_276A66A30;
  v20 = &unk_27A6E46B8;
  v7 = unarchiverCopy;
  v21 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, &v17);
  if (*(message + 6) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, *(*(message + 4) + 8 * v12), v17, v18, v19, v20);
      objc_msgSend_addObject_willModify_(self, v14, v13, 0);

      ++v12;
    }

    while (v12 < *(message + 6));
  }

  v15 = TSP::LargeNumberArraySegment::ByteSizeLong(message, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v16, v15);
}

@end