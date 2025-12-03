@interface TSPUnknownContent
+ (BOOL)unknownContent:(id)content hasSameUnknownFieldsAsUnknownContent:(id)unknownContent messagePrototype:(const Message *)prototype;
- (BOOL)hasSameUnknownFieldsAsUnknownContent:(id)content messagePrototype:(const Message *)prototype;
- (TSPUnknownContent)init;
- (TSPUnknownContent)initWithMessages:(id)messages messagesAreDiffs:(BOOL)diffs preserveFields:(id)fields preserveUntilModifiedFields:(id)modifiedFields;
- (id)newUnknownContentSnapshot;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)willModifyObject;
@end

@implementation TSPUnknownContent

- (TSPUnknownContent)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownContent init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 37, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPUnknownContent init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPUnknownContent)initWithMessages:(id)messages messagesAreDiffs:(BOOL)diffs preserveFields:(id)fields preserveUntilModifiedFields:(id)modifiedFields
{
  diffsCopy = diffs;
  v58 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  fieldsCopy = fields;
  modifiedFieldsCopy = modifiedFields;
  v56.receiver = self;
  v56.super_class = TSPUnknownContent;
  v13 = [(TSPUnknownContent *)&v56 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(messagesCopy, v11, v12);
    preserveUntilModifiedMessages = v13->_preserveUntilModifiedMessages;
    v13->_preserveUntilModifiedMessages = v14;

    if (diffsCopy)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = messagesCopy;
      v20 = 0;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v52, v57, 16);
      if (v23)
      {
        v24 = *v53;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v53 != v24)
            {
              objc_enumerationMutation(v18);
            }

            v26 = *(*(&v52 + 1) + 8 * i);
            v27 = objc_msgSend_messageInfo(v26, v21, v22);
            if (*(v27 + 200))
            {
              TSUSetCrashReporterInfo();
              v44 = MEMORY[0x277D81150];
              v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSPUnknownContent initWithMessages:messagesAreDiffs:preserveFields:preserveUntilModifiedFields:]", "[TSPUnknownContent initWithMessages:messagesAreDiffs:preserveFields:preserveUntilModifiedFields:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm", 52);
              v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v46, v48, 52, 1, "Unexpected mix of diff and non-diff unknown messages.");

              TSUCrashBreakpoint();
              abort();
            }

            v28 = *(v27 + 56);
            if (v28 >= 1)
            {
              v29 = 1;
              v30 = *(v27 + 56);
              v31 = 1;
              do
              {
                v32 = *(*(v27 + 64) + 8 * v29);
                if ((*(v32 + 16) & 0x10) != 0 && *(v32 + 116) == -1 && *(v32 + 120) == 2)
                {
                  break;
                }

                v31 = v29++ < v28;
                --v30;
              }

              while (v30);
              if (v31)
              {
                if (v20)
                {
                  objc_msgSend_addObject_(v20, v21, v26);
                }

                else
                {
                  v33 = objc_alloc(MEMORY[0x277CBEB18]);
                  v20 = objc_msgSend_initWithObjects_(v33, v34, v26, 0);
                }
              }
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v52, v57, 16);
        }

        while (v23);
      }

      preserveMessages = v13->_preserveMessages;
      v13->_preserveMessages = v20;
    }

    v36 = objc_msgSend_copy(fieldsCopy, v16, v17);
    preserveFields = v13->_preserveFields;
    v13->_preserveFields = v36;

    v40 = objc_msgSend_copy(modifiedFieldsCopy, v38, v39);
    preserveUntilModifiedFields = v13->_preserveUntilModifiedFields;
    v13->_preserveUntilModifiedFields = v40;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)newUnknownContentSnapshot
{
  if (self->_preserveUntilModifiedMessages)
  {
    v4 = [TSPUnknownContentSnapshot alloc];
    preserveUntilModifiedMessages = self->_preserveUntilModifiedMessages;
    preserveFields = self->_preserveFields;
    preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
    v9 = 1;
  }

  else
  {
    if (self->_preserveMessages)
    {
      v4 = [TSPUnknownContentSnapshot alloc];
      preserveUntilModifiedMessages = self->_preserveMessages;
      preserveFields = self->_preserveFields;
      preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
    }

    else
    {
      if (!objc_msgSend_count(self->_preserveFields, a2, v2))
      {
        result = objc_msgSend_count(self->_preserveUntilModifiedFields, v10, v11);
        if (!result)
        {
          return result;
        }
      }

      v4 = [TSPUnknownContentSnapshot alloc];
      preserveFields = self->_preserveFields;
      preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
      preserveUntilModifiedMessages = 0;
    }

    v9 = 0;
  }

  return objc_msgSend_initWithMessages_preserveFields_preserveUntilModifiedFields_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration_(v4, v5, preserveUntilModifiedMessages, preserveFields, preserveUntilModifiedFields, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v71 = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  v5 = 16;
  if (!self->_preserveUntilModifiedMessages)
  {
    v5 = 8;
  }

  selfCopy = self;
  v6 = *(&self->super.isa + v5);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v6;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v64, v70, 16);
  if (v10)
  {
    v11 = *v65;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v65 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v64 + 1) + 8 * i);
        v14 = objc_msgSend_messageInfo(v13, v8, v9);
        v15 = *(v14 + 72);
        if (v15 >= 1)
        {
          v16 = 0;
          v17 = 0;
          v59 = 0;
          v60 = 0;
          v18 = 8 * v15;
          v61 = 0;
          while (1)
          {
            v19 = v61;
            if (!v61)
            {
              break;
            }

            v20 = *v61;
            if (v17 >= *v61)
            {
              if (v20 == HIDWORD(v60))
              {
LABEL_15:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v59, v20 + 1);
                v19 = v61;
                v20 = *v61;
              }

              *v19 = v20 + 1;
              v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v59);
              v23 = &v61[2 * v60];
              v17 = v60 + 1;
              LODWORD(v60) = v60 + 1;
              *(v23 + 1) = v22;
              goto LABEL_17;
            }

            v21 = &v61[2 * v17++];
            LODWORD(v60) = v17;
            v22 = *(v21 + 1);
LABEL_17:
            v24 = *(*(v14 + 80) + v16);
            *(v22 + 16) |= 1u;
            *(v22 + 24) = v24;
            v16 += 8;
            if (v18 == v16)
            {
              v63[0] = MEMORY[0x277D85DD0];
              v63[1] = 3221225472;
              v63[2] = sub_276AC9048;
              v63[3] = &unk_27A6E4220;
              v63[4] = v13;
              objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v8, &v59, 0, v63);
              sub_276A07EA8(&v59);
              goto LABEL_19;
            }
          }

          v20 = HIDWORD(v60);
          goto LABEL_15;
        }

LABEL_19:
        v25 = *(v14 + 96);
        if (v25 >= 1)
        {
          v26 = objc_alloc(MEMORY[0x277CBEB18]);
          v28 = objc_msgSend_initWithCapacity_(v26, v27, v25);
          v29 = 0;
          v30 = 8 * v25;
          do
          {
            TSP::DataReference::DataReference(&v59, 0);
            v31 = *(*(v14 + 104) + v29);
            LODWORD(v61) = v61 | 1;
            v62 = v31;
            v34 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v32, &v59);
            if (v34)
            {
              objc_msgSend_addObject_(v28, v33, v34);
            }

            TSP::DataReference::~DataReference(&v59);
            v29 += 8;
          }

          while (v30 != v29);
          objc_msgSend_setAllData_(v13, v35, v28);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v64, v70, 16);
    }

    while (v10);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v36 = selfCopy->_preserveFields;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v55, v69, 16);
  if (v39)
  {
    v40 = *v56;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v56 != v40)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_loadFromUnarchiver_(*(*(&v55 + 1) + 8 * j), v38, unarchiverCopy);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v55, v69, 16);
    }

    while (v39);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v42 = selfCopy->_preserveUntilModifiedFields;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v51, v68, 16);
  if (v45)
  {
    v46 = *v52;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v42);
        }

        objc_msgSend_loadFromUnarchiver_(*(*(&v51 + 1) + 8 * k), v44, unarchiverCopy);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v51, v68, 16);
    }

    while (v45);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)willModifyObject
{
  preserveUntilModifiedMessages = self->_preserveUntilModifiedMessages;
  self->_preserveUntilModifiedMessages = 0;

  preserveUntilModifiedFields = self->_preserveUntilModifiedFields;
  self->_preserveUntilModifiedFields = 0;
}

- (BOOL)hasSameUnknownFieldsAsUnknownContent:(id)content messagePrototype:(const Message *)prototype
{
  v28 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (contentCopy == self)
  {
    v24 = 1;
  }

  else
  {
    v9 = objc_msgSend_newUnknownContentSnapshot(self, v6, v7);
    v14 = objc_msgSend_newUnknownContentSnapshot(contentCopy, v10, v11);
    if (v9 == v14)
    {
      v24 = 1;
    }

    else
    {
      v15 = objc_msgSend_newFieldTree(v9, v12, v13);
      v18 = objc_msgSend_newFieldTree(v14, v16, v17);
      if (v15 == v18)
      {
        v24 = 1;
      }

      else
      {
        v19 = (*(prototype->var0 + 3))(prototype);
        objc_msgSend_saveToMessage_(v15, v20, v19);
        v21 = (*(prototype->var0 + 3))(prototype);
        objc_msgSend_saveToMessage_(v18, v22, v21);
        google::protobuf::util::MessageDifferencer::MessageDifferencer(v27);
        v24 = google::protobuf::util::MessageDifferencer::Equals(v19, v21, v23);
        google::protobuf::util::MessageDifferencer::~MessageDifferencer(v27);
        (*(*v21 + 8))(v21);
        (*(*v19 + 8))(v19);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (BOOL)unknownContent:(id)content hasSameUnknownFieldsAsUnknownContent:(id)unknownContent messagePrototype:(const Message *)prototype
{
  contentCopy = content;
  unknownContentCopy = unknownContent;
  if (contentCopy == unknownContentCopy)
  {
    hasSameUnknownFieldsAsUnknownContent_messagePrototype = 1;
  }

  else
  {
    v10 = contentCopy;
    v11 = unknownContentCopy;
    if (!contentCopy)
    {
      if (!unknownContentCopy)
      {
        TSUSetCrashReporterInfo();
        v14 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSPUnknownContent unknownContent:hasSameUnknownFieldsAsUnknownContent:messagePrototype:]", "+[TSPUnknownContent unknownContent:hasSameUnknownFieldsAsUnknownContent:messagePrototype:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm", 168);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v16, v18, 168, 1, "Both unknown content arguments should be equal in this case.");

        TSUCrashBreakpoint();
        abort();
      }

      v11 = 0;
      v10 = unknownContentCopy;
    }

    hasSameUnknownFieldsAsUnknownContent_messagePrototype = objc_msgSend_hasSameUnknownFieldsAsUnknownContent_messagePrototype_(v10, v8, v11, prototype);
  }

  return hasSameUnknownFieldsAsUnknownContent_messagePrototype;
}

@end