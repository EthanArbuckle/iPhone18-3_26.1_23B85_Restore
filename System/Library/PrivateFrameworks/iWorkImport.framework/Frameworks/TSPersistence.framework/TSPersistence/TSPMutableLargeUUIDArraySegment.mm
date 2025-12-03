@interface TSPMutableLargeUUIDArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeUUIDArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    TSP::UUID::UUID(v11, 0);
    objc_msgSend_tsp_saveToMessage_(v4, v5, v11);
    v9 = &TSP::UUID::ByteSizeLong(v11, v6, v7, v8)->ptr_ + 1;
    TSP::UUID::~UUID(v11);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A18900, off_2812FC248[72]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = sub_276A18690;
  v30 = &unk_27A6E2898;
  v7 = archiverCopy;
  v31 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, &v27);
  v14 = objc_msgSend_count(self, v9, v10, v27, v28, v29, v30);
  if (v14)
  {
    for (i = 0; v14 != i; ++i)
    {
      v17 = objc_msgSend_objectAtIndex_(self, v11, i);
      if (v17)
      {
        v18 = *(message + 5);
        if (!v18)
        {
          v20 = *(message + 9);
          goto LABEL_9;
        }

        v19 = *(message + 8);
        v20 = *v18;
        if (v19 >= *v18)
        {
          if (v20 == *(message + 9))
          {
LABEL_9:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message + 6, v20 + 1);
            v18 = *(message + 5);
            v20 = *v18;
          }

          *v18 = v20 + 1;
          v21 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(message + 3));
          v22 = *(message + 8);
          v23 = *(message + 5) + 8 * v22;
          *(message + 8) = v22 + 1;
          *(v23 + 8) = v21;
          objc_msgSend_tsp_saveToMessage_(v17, v24, v21);
          goto LABEL_11;
        }

        *(message + 8) = v19 + 1;
        objc_msgSend_tsp_saveToMessage_(v17, v16, *&v18[2 * v19 + 2]);
      }

LABEL_11:
    }
  }

  v25 = TSP::LargeUUIDArraySegment::ByteSizeLong(message, v11, v12, v13);
  objc_msgSend_setEstimatedByteSize_(self, v26, v25);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[72]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_276A188BC;
  v23 = &unk_27A6E46B8;
  v7 = unarchiverCopy;
  v24 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, &v20);
  if (*(message + 8) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(message + 5) + 8 * v12 + 8);
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v16 = objc_msgSend_tsp_initWithMessage_(v14, v15, v13, v20, v21, v22, v23);
      objc_msgSend_addObject_willModify_(self, v17, v16, 0);

      ++v12;
    }

    while (v12 < *(message + 8));
  }

  v18 = TSP::LargeUUIDArraySegment::ByteSizeLong(message, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v19, v18);
}

@end