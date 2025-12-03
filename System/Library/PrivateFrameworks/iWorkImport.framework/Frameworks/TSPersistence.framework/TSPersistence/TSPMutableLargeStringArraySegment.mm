@interface TSPMutableLargeStringArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeStringArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  if (!elementCopy || (objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == elementCopy))
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    v10 = v7;
    if (v7 && objc_msgSend_length(v7, v8, v9))
    {
      v13 = objc_msgSend_tsp_protobufString(v10, v11, v12);
      sub_276A4D46C(__p, v13);
      v14 = __p[1];
      if (v18 >= 0)
      {
        v14 = v18;
      }

      v15 = v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v18 & 0x8000000000000000) != 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A7A350, off_2812FC248[70]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_276A7A0CC;
  v30[3] = &unk_27A6E2898;
  v7 = archiverCopy;
  v31 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v30);
  v14 = objc_msgSend_count(self, v9, v10);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(message + 5);
      if (!v16)
      {
        break;
      }

      v17 = *(message + 8);
      v18 = *v16;
      if (v17 >= *v16)
      {
        if (v18 == *(message + 9))
        {
LABEL_8:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(message + 6, v18 + 1);
          v16 = *(message + 5);
          v18 = *v16;
        }

        *v16 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::LargeStringArraySegment_OptionalElement>(*(message + 3));
        v20 = *(message + 8);
        v21 = *(message + 5) + 8 * v20;
        *(message + 8) = v20 + 1;
        *(v21 + 8) = v19;
        goto LABEL_10;
      }

      *(message + 8) = v17 + 1;
      v19 = *&v16[2 * v17 + 2];
LABEL_10:
      v22 = objc_msgSend_objectAtIndex_(self, v11, v15);
      v25 = v22;
      if (v22)
      {
        v26 = objc_msgSend_tsp_protobufString(v22, v23, v24);
        *(v19 + 16) |= 1u;
        sub_276A4D46C(&__p, v26);
        v27 = *(v19 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Set((v19 + 24), &__p, v27);
        if (v34 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_16;
      }
    }

    v18 = *(message + 9);
    goto LABEL_8;
  }

LABEL_16:
  v28 = TSP::LargeStringArraySegment::ByteSizeLong(message, v11, v12, v13);
  objc_msgSend_setEstimatedByteSize_(self, v29, v28);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[70]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_276A7A30C;
  v21 = &unk_27A6E46B8;
  v7 = unarchiverCopy;
  v22 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, &v18);
  if (*(message + 8) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(message + 5) + 8 * v12 + 8);
      if (*(v13 + 16))
      {
        v14 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v9, *(v13 + 24) & 0xFFFFFFFFFFFFFFFELL, v18, v19, v20, v21);
        objc_msgSend_addObject_willModify_(self, v15, v14, 0, v18, v19, v20, v21);
      }

      else
      {
        v14 = 0;
        objc_msgSend_addObject_willModify_(self, v9, 0, 0, v18, v19, v20, v21);
      }

      ++v12;
    }

    while (v12 < *(message + 8));
  }

  v16 = TSP::LargeStringArraySegment::ByteSizeLong(message, v9, v10, v11);
  objc_msgSend_setEstimatedByteSize_(self, v17, v16);
}

@end