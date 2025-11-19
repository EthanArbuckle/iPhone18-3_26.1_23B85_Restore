@interface TSSPropertyCommandObjectRegistry
+ (TSSPropertyCommandObjectRegistry)sharedRegistry;
+ (void)setIntializationHandler:(id)a3;
- (TSSPropertyCommandObjectRegistry)init;
- (id).cxx_construct;
- (int)indexForClass:(Class)a3;
- (void)registerClass:(Class)a3 withField:(id)a4;
@end

@implementation TSSPropertyCommandObjectRegistry

+ (void)setIntializationHandler:(id)a3
{
  v7 = a3;
  v5 = objc_msgSend_copy(v7, v3, v4);
  v6 = qword_280A54BA8;
  qword_280A54BA8 = v5;

  dispatch_async(MEMORY[0x277D85CD0], &unk_2885E6360);
}

+ (TSSPropertyCommandObjectRegistry)sharedRegistry
{
  if (qword_280A54BB0 != -1)
  {
    sub_276CE1900();
  }

  v3 = qword_280A54BA0;

  return v3;
}

- (TSSPropertyCommandObjectRegistry)init
{
  v6.receiver = self;
  v6.super_class = TSSPropertyCommandObjectRegistry;
  v2 = [(TSSPropertyCommandObjectRegistry *)&v6 init];
  if (v2)
  {
    v3 = qword_280A54BA8 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    (*(qword_280A54BA8 + 16))();
    v4 = qword_280A54BA8;
    qword_280A54BA8 = 0;
  }

  return v2;
}

- (void)registerClass:(Class)a3 withField:(id)a4
{
  v49[0] = a3;
  v6 = a4;
  v8 = objc_msgSend_conformsToProtocol_(a3, v7, &unk_288613CE8);
  if (!v8)
  {
    goto LABEL_38;
  }

  v10 = TSS::CommandPropertyEntryArchive::default_instance(v8);
  TSS::CommandPropertyEntryArchive::CommandPropertyEntryArchive(v48, v10);
  google::protobuf::internal::AssignDescriptors();
  v11 = off_2812FAF80[30];
  google::protobuf::internal::AssignDescriptors();
  if (v11)
  {
    v12 = off_2812FAF80[31] == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_37:
    TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(v48);
LABEL_38:
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSSPropertyCommandObjectRegistry registerClass:withField:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyCommandObjectRegistry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 117, 0, "class %@ (field %@) registration failed", a3, v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
    goto LABEL_39;
  }

  v13 = v6;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  sub_276CA3CD4(&v46, v16);
  FieldByName = google::protobuf::Descriptor::FindFieldByName();
  if (!FieldByName)
  {
    FieldByName = google::protobuf::Reflection::FindKnownExtensionByName();
    if (!FieldByName)
    {
LABEL_35:
      if (v47 < 0)
      {
        operator delete(v46);
      }

      goto LABEL_37;
    }
  }

  Message = google::protobuf::Reflection::GetMessage();
  (*(*Message + 16))(v44);
  v19 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v19 = v44[1];
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  p_end_node = &self->_indexToClass.__tree_.__end_node_;
  left = self->_indexToClass.__tree_.__end_node_.__left_;
  if (left)
  {
    v22 = *(FieldByName + 68);
    v23 = &self->_indexToClass.__tree_.__end_node_;
    do
    {
      if (SLODWORD(left[4].__left_) >= v22)
      {
        v23 = left;
      }

      left = left[SLODWORD(left[4].__left_) < v22].__left_;
    }

    while (left);
    if (v23 != p_end_node && v22 >= SLODWORD(v23[4].__left_))
    {
      goto LABEL_33;
    }
  }

  v26 = self->_classToIndex.__tree_.__end_node_.__left_;
  v25 = &self->_classToIndex.__tree_.__end_node_;
  v24 = v26;
  if (v26)
  {
    v27 = v25;
    do
    {
      v28 = *(v24 + 4);
      v29 = v28 >= a3;
      v30 = v28 < a3;
      if (v29)
      {
        v27 = v24;
      }

      v24 = *(v24 + v30);
    }

    while (v24);
    if (v27 != v25 && v27[4].__left_ <= a3)
    {
LABEL_33:
      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      goto LABEL_35;
    }
  }

  sub_276CBE350(v42, v49, v44);
  v41 = *(FieldByName + 68);
  v49[2] = &v41;
  v31 = sub_276CBE1C8(&p_end_node[-1], &v41);
  v32 = &v25[-1];
  sub_276CBDCDC((v31 + 5), v42);
  if (v43 < 0)
  {
    operator delete(v42[1]);
  }

  v33 = *(FieldByName + 68);
  v42[0] = v49;
  *(sub_276CBE468(v32, v49) + 10) = v33;
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(v48);
LABEL_39:
}

- (int)indexForClass:(Class)a3
{
  p_end_node = &self->_classToIndex.__tree_.__end_node_;
  v5 = a3;
  do
  {
    left = p_end_node->__left_;
    if (!p_end_node->__left_)
    {
      goto LABEL_10;
    }

    v7 = p_end_node;
    do
    {
      v8 = *(left + 4);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = left;
      }

      left = *(left + v10);
    }

    while (left);
    if (v7 == p_end_node || v5 < v7[4].__left_)
    {
LABEL_10:
      v7 = p_end_node;
    }

    v5 = objc_msgSend_superclass(v5, a2, a3);
  }

  while (v5 != objc_opt_class() && v7 == p_end_node);
  if (v7 != p_end_node)
  {
    return v7[5].__left_;
  }

  v13 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSSPropertyCommandObjectRegistry indexForClass:]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertyCommandObjectRegistry.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 165, 0, "TSSPropertyCommandObjectRegistry does not have a class %@.", a3);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  return 1;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end