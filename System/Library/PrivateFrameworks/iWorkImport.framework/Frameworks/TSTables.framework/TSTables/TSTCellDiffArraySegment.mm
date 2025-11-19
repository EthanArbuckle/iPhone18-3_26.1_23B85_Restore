@interface TSTCellDiffArraySegment
- (unint64_t)estimatedByteSizeOfElement:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTCellDiffArraySegment

- (unint64_t)estimatedByteSizeOfElement:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v9 = objc_msgSend_estimatedByteSize(v4, v5, v6, v7, v8);

  return v9;
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_22116E4E8, off_2812E4498[126], v6);

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22116E2E0;
  v37[3] = &unk_27845FEF0;
  v8 = v4;
  v38 = v8;
  v39 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 1, v7, v37);
  v14 = objc_msgSend_count(self, v10, v11, v12, v13);
  sub_22116E554(__p, v14);
  for (i = 0; i < objc_msgSend_count(self, v15, v16, v17, v18); ++i)
  {
    v23 = *(v7 + 40);
    if (!v23)
    {
      goto LABEL_8;
    }

    v24 = *(v7 + 32);
    v25 = *v23;
    if (v24 < *v23)
    {
      *(v7 + 32) = v24 + 1;
      v26 = *&v23[2 * v24 + 2];
      goto LABEL_10;
    }

    if (v25 == *(v7 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24));
      v23 = *(v7 + 40);
      v25 = *v23;
    }

    *v23 = v25 + 1;
    v26 = google::protobuf::Arena::CreateMaybeMessage<TST::CellDiffArchive>(*(v7 + 24));
    v27 = *(v7 + 32);
    v28 = *(v7 + 40) + 8 * v27;
    *(v7 + 32) = v27 + 1;
    *(v28 + 8) = v26;
LABEL_10:
    v29 = objc_msgSend_objectAtIndex_(self, v20, i, v21, v22);
    objc_msgSend_saveToArchive_archiver_(v29, v30, v26, v8, v31);
  }

  v32 = TST::CellDiffArraySegment::ByteSizeLong(v7);
  objc_msgSend_setEstimatedByteSize_(self, v33, v32, v34, v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[126], v6, v7);

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_22116E4A4;
  v25 = &unk_27845FF18;
  v9 = v4;
  v26 = v9;
  v27 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 1, v8, &v22);
  if (*(v8 + 32) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [TSTCellDiff alloc];
      v15 = objc_msgSend_initWithArchive_unarchiver_(v12, v13, *(*(v8 + 40) + 8 * v11 + 8), v9, v14, v22, v23, v24, v25);
      objc_msgSend_addObject_willModify_(self, v16, v15, 0, v17);

      ++v11;
    }

    while (v11 < *(v8 + 32));
  }

  v18 = TST::CellDiffArraySegment::ByteSizeLong(v8);
  objc_msgSend_setEstimatedByteSize_(self, v19, v18, v20, v21);
}

@end