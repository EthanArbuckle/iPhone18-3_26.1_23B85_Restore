@interface TSPKnownFieldReferencesHelper
- (TSPKnownFieldReferencesHelper)initWithFieldDescriptor:(const void *)a3 message:(const Message *)a4 reflection:(const Reflection *)a5;
- (id).cxx_construct;
- (void)loadFromUnarchiver:(id)a3;
- (void)processFieldDescriptor:(const void *)a3 message:(const Message *)a4 reflection:(const Reflection *)a5;
- (void)processFieldsFromMessage:(const Message *)a3 messageDescriptor:(const void *)a4 reflection:(const Reflection *)a5;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldReferencesHelper

- (TSPKnownFieldReferencesHelper)initWithFieldDescriptor:(const void *)a3 message:(const Message *)a4 reflection:(const Reflection *)a5
{
  v12.receiver = self;
  v12.super_class = TSPKnownFieldReferencesHelper;
  v8 = [(TSPKnownFieldReferencesHelper *)&v12 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_processFieldDescriptor_message_reflection_(v8, v9, a3, a4, a5);
  }

  return v10;
}

- (void)processFieldDescriptor:(const void *)a3 message:(const Message *)a4 reflection:(const Reflection *)a5
{
  v5 = a5;
  v6 = a4;
  v34 = *(a3 + 15);
  if (v34 == 3)
  {
    HasField = google::protobuf::Reflection::FieldSize(a5, a4, a3);
  }

  else
  {
    HasField = google::protobuf::Reflection::HasField(a5, a4, a3);
  }

  v35 = HasField;
  v32 = google::protobuf::FieldDescriptor::message_type(a3);
  if (!v32)
  {
    return;
  }

  v10 = *(v32 + 8);
  if (*(v10 + 23) < 0)
  {
    if (v10[1] == 13 && **v10 == 0x656665522E505354 && *(*v10 + 5) == 0x65636E6572656665)
    {
      v33 = 0;
      v13 = 1;
      goto LABEL_34;
    }

    if (v10[1] != 17)
    {
LABEL_26:
      v13 = 0;
      v33 = 0;
      goto LABEL_34;
    }

    v10 = *v10;
    goto LABEL_16;
  }

  v11 = *(v10 + 23);
  if (v11 != 13)
  {
    if (v11 != 17)
    {
      goto LABEL_26;
    }

LABEL_16:
    v13 = 0;
    v14 = *v10;
    v15 = v10[1];
    v16 = *(v10 + 16);
    v19 = v14 == 0x617461442E505354 && v15 == 0x636E657265666552 && v16 == 101;
    v33 = v19;
    goto LABEL_34;
  }

  v33 = 0;
  v20 = *v10;
  v21 = *(v10 + 5);
  v13 = v20 == 0x656665522E505354 && v21 == 0x65636E6572656665;
LABEL_34:
  if (v35 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = v5;
    v26 = v6;
    do
    {
      if (v34 == 3)
      {
        RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(v5, v6, a3, v23);
      }

      else
      {
        RepeatedMessage = google::protobuf::Reflection::GetMessage(v5, v6, a3, 0);
      }

      v29 = RepeatedMessage;
      if (v13)
      {
        current_size = self->_objectReferences.current_size_;
        if (current_size == self->_objectReferences.total_size_)
        {
          google::protobuf::RepeatedField<long long>::Reserve();
        }

        *(self->_objectReferences.arena_or_elements_ + current_size) = RepeatedMessage[3];
        self->_objectReferences.current_size_ = current_size + 1;
      }

      else
      {
        if (!v33)
        {
          if (!v24)
          {
            (*(*RepeatedMessage + 152))(RepeatedMessage);
            v24 = v28;
          }

          objc_msgSend_processFieldsFromMessage_messageDescriptor_reflection_(self, v28, v29, v32, v24);
          goto LABEL_51;
        }

        v31 = self->_dataReferences.current_size_;
        if (v31 == self->_dataReferences.total_size_)
        {
          google::protobuf::RepeatedField<long long>::Reserve();
        }

        *(self->_dataReferences.arena_or_elements_ + v31) = RepeatedMessage[3];
        self->_dataReferences.current_size_ = v31 + 1;
      }

      v5 = v25;
      v6 = v26;
LABEL_51:
      ++v23;
    }

    while (v35 != v23);
  }
}

- (void)processFieldsFromMessage:(const Message *)a3 messageDescriptor:(const void *)a4 reflection:(const Reflection *)a5
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  google::protobuf::Reflection::ListFields(a5, a3, &__p);
  v9 = __p;
  if (v15 != __p)
  {
    v10 = 0;
    if (((v15 - __p) >> 3) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v15 - __p) >> 3;
    }

    do
    {
      v12 = *(__p + v10);
      v13 = *(v12 + 48);
      if (v13)
      {
        v17 = *(__p + v10);
        v18 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != -1)
        {
          v20[0] = &v18;
          v20[1] = &v17;
          v19 = v20;
          std::__call_once(v13, &v19, sub_2769C149C);
        }
      }

      if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 56)] == 10)
      {
        objc_msgSend_processFieldDescriptor_message_reflection_(self, v8, v12, a3, a5);
      }

      ++v10;
    }

    while (v11 != v10);
    v9 = __p;
  }

  if (v9)
  {
    v15 = v9;
    operator delete(v9);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v7 = v4;
  current_size = self->_objectReferences.current_size_;
  if (current_size >= 1)
  {
    v10 = objc_msgSend_strongReferences(v4, v5, v6);
    v11 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v40 = 0;
    v41 = 0;
    v12 = 8 * current_size;
    v42 = 0;
    while (1)
    {
      v39 = *(self->_objectReferences.arena_or_elements_ + v11);
      if (v10 && sub_2769ABC64(v10, &v39))
      {
        v13 = v35;
        if (!v35)
        {
          v14 = HIDWORD(v34);
          goto LABEL_18;
        }

        v14 = *v35;
        if (v34 >= *v35)
        {
          if (v14 == HIDWORD(v34))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v33, v14 + 1);
            v13 = v35;
            v14 = *v35;
          }

          *v13 = v14 + 1;
          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v33);
          v19 = &v35[2 * v34];
          LODWORD(v34) = v34 + 1;
          goto LABEL_20;
        }

        v15 = &v35[2 * v34];
        LODWORD(v34) = v34 + 1;
      }

      else
      {
        v16 = v42;
        if (!v42)
        {
          v17 = HIDWORD(v41);
          goto LABEL_14;
        }

        v17 = *v42;
        if (v41 >= *v42)
        {
          if (v17 == HIDWORD(v41))
          {
LABEL_14:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v40, v17 + 1);
            v16 = v42;
            v17 = *v42;
          }

          *v16 = v17 + 1;
          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v40);
          v19 = &v42[2 * v41];
          LODWORD(v41) = v41 + 1;
LABEL_20:
          *(v19 + 1) = v18;
          goto LABEL_21;
        }

        v15 = &v42[2 * v41];
        LODWORD(v41) = v41 + 1;
      }

      v18 = *(v15 + 1);
LABEL_21:
      v11 += 8;
      v20 = v39;
      *(v18 + 16) |= 1u;
      *(v18 + 24) = v20;
      if (v12 == v11)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_276A07340;
        v38[3] = &unk_27A6E4220;
        v38[4] = self;
        objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(v7, v9, &v33, 0, v38);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_276A0734C;
        v37[3] = &unk_27A6E4220;
        v37[4] = self;
        objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(v7, v21, &v40, 1, v37);
        sub_276A07EA8(&v40);
        sub_276A07EA8(&v33);
        break;
      }
    }
  }

  v22 = self->_dataReferences.current_size_;
  if (v22 >= 1)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_initWithCapacity_(v23, v24, v22);
    v26 = 0;
    v27 = 8 * v22;
    do
    {
      TSP::DataReference::DataReference(&v33, 0);
      v28 = *(self->_dataReferences.arena_or_elements_ + v26);
      LODWORD(v35) = v35 | 1;
      v36 = v28;
      v31 = objc_msgSend_readDataReferenceMessage_(v7, v29, &v33);
      if (v31)
      {
        objc_msgSend_addObject_(v25, v30, v31);
      }

      TSP::DataReference::~DataReference(&v33);
      v26 += 8;
    }

    while (v27 != v26);
    allData = self->_allData;
    self->_allData = v25;
  }
}

- (void)saveToArchiver:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(self->_strongObjects, v5, v6))
  {
    TSP::Reference::Reference(v37, 0);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = objc_msgSend_references(self->_strongObjects, v9, v10);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v33, v39, 16);
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

          objc_msgSend_setStrongLazyReference_message_(v4, v13, *(*(&v33 + 1) + 8 * v16++), v37);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v33, v39, 16);
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
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v29, v38, 16);
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

          objc_msgSend_setWeakLazyReference_message_(v4, v23, *(*(&v29 + 1) + 8 * v26++), v37);
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v29, v38, 16);
      }

      while (v24);
    }

    TSP::Reference::~Reference(v37);
  }

  if (objc_msgSend_count(self->_allData, v17, v18))
  {
    memset(v37, 0, 24);
    objc_msgSend_setDataReferenceArray_message_(v4, v27, self->_allData, v37);
    sub_276A08184(v37);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end