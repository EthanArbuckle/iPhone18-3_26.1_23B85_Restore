@interface TSPUnknownObject
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (OS_dispatch_data)serializedData;
- (TSPUnknownObject)initWithContext:(id)context;
- (id).cxx_construct;
- (void)saveToArchiver:(id)archiver;
- (void)willModify;
@end

@implementation TSPUnknownObject

- (TSPUnknownObject)initWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPUnknownObject initWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 35, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPUnknownObject initWithContext:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)willModify
{
  ptr = self->_archiveInfo.__ptr_;
  if (!ptr || (current_size = ptr->message_infos_.current_size_, current_size < 1))
  {
    v5 = 0;
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  v5 = 0;
  v6 = -1;
  v7 = 8;
  do
  {
    v8 = *(ptr->message_infos_.rep_ + v7);
    v9 = *(v8 + 200);
    if (v9)
    {
      v10 = UnsafePointer(v8 + 24, a2);
      if (v10 >= v6)
      {
        v5 = v5;
      }

      else
      {
        v6 = v10;
        v5 = v9;
      }
    }

    v7 += 8;
    --current_size;
  }

  while (current_size);
  if (v6 == -1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownObject willModify]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
  v17 = objc_msgSend_tsp_identifier(self, v15, v16);
  v19 = NSStringFromTSPVersion(v6, v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v20, v12, v14, 66, 0, "Unknown objects should never be modified. identifier=%llu, type=%u, minVersion=%{public}@, packageLocator=%{public}@", v17, v5, v19, self->_packageLocator);

  v23 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v23, v21, v22);
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  v66 = v5;
  if (!v5)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPUnknownObject validatedLoadFromUnarchiver:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 82, 0, "You should only unarchive an unknown object from an unknown object unarchiver.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    goto LABEL_35;
  }

  objc_msgSend_archiveInfo(v5, v6, v7);
  p_archiveInfo = &self->_archiveInfo;
  v12 = v68;
  v68 = 0;
  cntrl = self->_archiveInfo.__cntrl_;
  self->_archiveInfo = v12;
  if (cntrl)
  {
    sub_2769C1430(cntrl);
    if (v68.__cntrl_)
    {
      sub_2769C1430(v68.__cntrl_);
    }
  }

  v14 = objc_msgSend_messagesData(v8, v9, v10);
  messagesData = self->_messagesData;
  self->_messagesData = v14;

  v18 = objc_msgSend_packageLocator(v66, v16, v17);
  packageLocator = self->_packageLocator;
  self->_packageLocator = v18;

  ptr = p_archiveInfo->__ptr_;
  if (!p_archiveInfo->__ptr_)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPUnknownObject validatedLoadFromUnarchiver:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 91, 0, "Archive info message should have been defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  if (!self->_messagesData)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPUnknownObject validatedLoadFromUnarchiver:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 92, 0, "Messages data should have been defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  v71 = 0;
  v72 = 0;
  v73 = 0;
  current_size = ptr->message_infos_.current_size_;
  if (current_size < 1)
  {
    v38 = 0;
    goto LABEL_34;
  }

  selfCopy = self;
  v37 = 0;
  v38 = 0;
  do
  {
    v39 = *(ptr->message_infos_.rep_ + v37 + 1);
    v40 = *(v39 + 72);
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = 8 * v40;
      while (1)
      {
        v43 = v73;
        if (!v73)
        {
          break;
        }

        v44 = *v73;
        if (v72 >= *v73)
        {
          if (v44 == HIDWORD(v72))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v71, v44 + 1);
            v43 = v73;
            v44 = *v73;
          }

          *v43 = v44 + 1;
          v46 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v71);
          v47 = &v73[2 * v72];
          LODWORD(v72) = v72 + 1;
          *(v47 + 1) = v46;
          goto LABEL_20;
        }

        v45 = &v73[2 * v72];
        LODWORD(v72) = v72 + 1;
        v46 = *(v45 + 1);
LABEL_20:
        v48 = *(*(v39 + 80) + v41);
        *(v46 + 16) |= 1u;
        *(v46 + 24) = v48;
        v41 += 8;
        if (v42 == v41)
        {
          goto LABEL_21;
        }
      }

      v44 = HIDWORD(v72);
      goto LABEL_18;
    }

LABEL_21:
    v49 = *(v39 + 96);
    if (v49 >= 1)
    {
      v50 = 0;
      v51 = 8 * v49;
      do
      {
        TSP::DataReference::DataReference(&v68, 0);
        v52 = *(*(v39 + 104) + v50);
        v69 |= 1u;
        v70 = v52;
        v55 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v53, &v68);
        if (v55)
        {
          if (!v38)
          {
            v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v38, v54, v55);
        }

        TSP::DataReference::~DataReference(&v68);
        v50 += 8;
      }

      while (v51 != v50);
    }

    ++v37;
  }

  while (v37 != current_size);
  if (v72 <= 0)
  {
    self = selfCopy;
  }

  else
  {
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = sub_276AC5C8C;
    v67[3] = &unk_27A6E4220;
    self = selfCopy;
    v67[4] = selfCopy;
    objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v20, &v71, 0, v67);
  }

LABEL_34:
  datas = self->_datas;
  self->_datas = v38;

  sub_276A07EA8(&v71);
LABEL_35:

  return v66 != 0;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v6 = archiverCopy;
  objects = self->_objects;
  if (objects)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    objc_msgSend_setStrongLazyReferenceArray_message_(archiverCopy, v5, objects, &v9);
    sub_276A07EA8(&v9);
  }

  datas = self->_datas;
  if (datas)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    objc_msgSend_setDataReferenceArray_message_(v6, v5, datas, &v9);
    sub_276A08184(&v9);
  }
}

- (OS_dispatch_data)serializedData
{
  v30 = *MEMORY[0x277D85DE8];
  ptr = self->_archiveInfo.__ptr_;
  if (!ptr)
  {
    goto LABEL_18;
  }

  v27 = 5;
  v6 = sub_2769DF300(ptr, a2, v2, v3);
  if (HIDWORD(v6))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPUnknownObject serializedData]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 154, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    goto LABEL_17;
  }

  v8 = v6;
  if (!sub_2769BB3A8(&v27, v6))
  {
LABEL_17:
    ptr = 0;
    goto LABEL_18;
  }

  sub_276A0160C(v26, v27);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v26, 1);
  v9 = v29;
  if (v28[0] <= v29)
  {
    v9 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(v28, v29);
  }

  if (v8 > 0x7F)
  {
    *v9 = v8 | 0x80;
    v11 = v8 >> 7;
    if (v8 >> 14)
    {
      v10 = v9 + 2;
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++v10;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(v10 - 1) = v12;
    }

    else
    {
      v9[1] = v11;
      v10 = v9 + 2;
    }
  }

  else
  {
    *v9 = v8;
    v10 = v9 + 1;
  }

  v29 = v10;
  v29 = (*(ptr->isa + 12))(ptr);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  ptr = sub_276A016D0(v26, v14);
  sub_276A01610(v26);
  if (ptr)
  {
    messagesData = self->_messagesData;
    if (messagesData)
    {
      concat = dispatch_data_create_concat(ptr, messagesData);

      ptr = concat;
    }
  }

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];

  return ptr;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end