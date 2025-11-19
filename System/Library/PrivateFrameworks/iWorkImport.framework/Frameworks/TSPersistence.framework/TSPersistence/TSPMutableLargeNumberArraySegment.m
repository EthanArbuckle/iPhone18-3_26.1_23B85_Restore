@interface TSPMutableLargeNumberArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)a3;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSPMutableLargeNumberArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPMutableLargeNumberArraySegment estimatedByteSizeOfElement:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMutableLargeNumberArraySegment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 18, 0, "invalid nil value for '%{public}s'", "element");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return 9;
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276A66A74, off_2812FC248[66]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276A6680C;
  v28[3] = &unk_27A6E2898;
  v7 = v6;
  v29 = v7;
  v30 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v28);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = self;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v31, 16);
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
          objc_enumerationMutation(v9);
        }

        objc_msgSend_doubleValue(*(*(&v24 + 1) + 8 * v15), v11, v12, v24);
        v17 = *(a3 + 6);
        if (v17 == *(a3 + 7))
        {
          google::protobuf::RepeatedField<double>::Reserve();
        }

        *(*(a3 + 4) + 8 * v17) = v16;
        *(a3 + 6) = v17 + 1;
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v24, v31, 16);
    }

    while (v13);
  }

  v21 = TSP::LargeNumberArraySegment::ByteSizeLong(a3, v18, v19, v20);
  objc_msgSend_setEstimatedByteSize_(v9, v22, v21);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FC248[66]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_276A66A30;
  v20 = &unk_27A6E46B8;
  v7 = v6;
  v21 = v7;
  v22 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, &v17);
  if (*(a3 + 6) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, *(*(a3 + 4) + 8 * v12), v17, v18, v19, v20);
      objc_msgSend_addObject_willModify_(self, v14, v13, 0);

      ++v12;
    }

    while (v12 < *(a3 + 6));
  }

  v15 = TSP::LargeNumberArraySegment::ByteSizeLong(a3, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v16, v15);
}

@end