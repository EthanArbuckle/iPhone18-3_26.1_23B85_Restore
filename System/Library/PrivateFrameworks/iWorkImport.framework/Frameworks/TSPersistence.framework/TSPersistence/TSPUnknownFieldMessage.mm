@interface TSPUnknownFieldMessage
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPUnknownFieldMessage

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v42.receiver = self;
  v42.super_class = TSPUnknownFieldMessage;
  [(TSPUnknownField *)&v42 loadFromUnarchiver:unarchiverCopy];
  current_size = self->super._fieldInfo.object_references_.current_size_;
  if (current_size >= 1)
  {
    v9 = objc_msgSend_strongReferences(unarchiverCopy, v5, v6);
    v10 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v39 = 0;
    v40 = 0;
    v11 = 8 * current_size;
    v41 = 0;
    while (1)
    {
      v38 = *(self->super._fieldInfo.object_references_.arena_or_elements_ + v10);
      if (v9 && sub_2769ABC64(v9, &v38))
      {
        v12 = v34;
        if (!v34)
        {
          v13 = HIDWORD(v33);
          goto LABEL_18;
        }

        v13 = *v34;
        if (v33 >= *v34)
        {
          if (v13 == HIDWORD(v33))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v32, v13 + 1);
            v12 = v34;
            v13 = *v34;
          }

          *v12 = v13 + 1;
          v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v32);
          v18 = &v34[2 * v33];
          LODWORD(v33) = v33 + 1;
          goto LABEL_20;
        }

        v14 = &v34[2 * v33];
        LODWORD(v33) = v33 + 1;
      }

      else
      {
        v15 = v41;
        if (!v41)
        {
          v16 = HIDWORD(v40);
          goto LABEL_14;
        }

        v16 = *v41;
        if (v40 >= *v41)
        {
          if (v16 == HIDWORD(v40))
          {
LABEL_14:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v39, v16 + 1);
            v15 = v41;
            v16 = *v41;
          }

          *v15 = v16 + 1;
          v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v39);
          v18 = &v41[2 * v40];
          LODWORD(v40) = v40 + 1;
LABEL_20:
          *(v18 + 1) = v17;
          goto LABEL_21;
        }

        v14 = &v41[2 * v40];
        LODWORD(v40) = v40 + 1;
      }

      v17 = *(v14 + 1);
LABEL_21:
      v10 += 8;
      v19 = v38;
      *(v17 + 16) |= 1u;
      *(v17 + 24) = v19;
      if (v11 == v10)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_276AD47E4;
        v37[3] = &unk_27A6E4220;
        v37[4] = self;
        objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v8, &v32, 0, v37);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_276AD47F8;
        v36[3] = &unk_27A6E4220;
        v36[4] = self;
        objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v20, &v39, 1, v36);
        sub_276A07EA8(&v39);
        sub_276A07EA8(&v32);
        break;
      }
    }
  }

  v21 = self->super._fieldInfo.data_references_.current_size_;
  if (v21 >= 1)
  {
    v22 = objc_alloc(MEMORY[0x277CBEB18]);
    v24 = objc_msgSend_initWithCapacity_(v22, v23, v21);
    v25 = 0;
    v26 = 8 * v21;
    do
    {
      TSP::DataReference::DataReference(&v32, 0);
      v27 = *(self->super._fieldInfo.data_references_.arena_or_elements_ + v25);
      LODWORD(v34) = v34 | 1;
      v35 = v27;
      v30 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v28, &v32);
      if (v30)
      {
        objc_msgSend_addObject_(v24, v29, v30);
      }

      TSP::DataReference::~DataReference(&v32);
      v25 += 8;
    }

    while (v26 != v25);
    datas = self->_datas;
    self->_datas = v24;
  }
}

- (void)saveToArchiver:(id)archiver
{
  v41 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v38.receiver = self;
  v38.super_class = TSPUnknownFieldMessage;
  [(TSPUnknownField *)&v38 saveToArchiver:archiverCopy];
  if (objc_msgSend_count(self->_strongObjects, v5, v6))
  {
    TSP::Reference::Reference(v37, 0);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = objc_msgSend_references(self->_strongObjects, v9, v10);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v40, 16);
    if (v14)
    {
      v15 = *v34;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_setStrongLazyReference_message_(archiverCopy, v13, *(*(&v33 + 1) + 8 * v16++), v37);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v33, v40, 16);
      }

      while (v14);
    }

    TSP::Reference::~Reference(v37);
  }

  if (objc_msgSend_count(self->_weakObjects, v7, v8))
  {
    TSP::Reference::Reference(v37, 0);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = objc_msgSend_references(self->_weakObjects, v19, v20, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v29, v39, 16);
    if (v24)
    {
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v21);
          }

          objc_msgSend_setWeakLazyReference_message_(archiverCopy, v23, *(*(&v29 + 1) + 8 * v26++), v37);
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v29, v39, 16);
      }

      while (v24);
    }

    TSP::Reference::~Reference(v37);
  }

  if (objc_msgSend_count(self->_datas, v17, v18))
  {
    memset(v37, 0, 24);
    objc_msgSend_setDataReferenceArray_message_(archiverCopy, v27, self->_datas, v37);
    sub_276A08184(v37);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = TSPUnknownFieldMessage;
  v4 = [(TSPUnknownField *)&v23 debugDescription];
  v7 = objc_msgSend_references(self->_strongObjects, v5, v6);
  v10 = objc_msgSend_debugDescription(v7, v8, v9);
  v13 = objc_msgSend_references(self->_weakObjects, v11, v12);
  v16 = objc_msgSend_debugDescription(v13, v14, v15);
  v19 = objc_msgSend_debugDescription(self->_datas, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v3, v20, @"%@ strong_objects: %@; weak_objects: %@; datas: %@", v4, v10, v16, v19);;

  return v21;
}

@end