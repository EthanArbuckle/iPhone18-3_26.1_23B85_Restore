@interface TSPDocumentMetadata
- (DataProperties)propertiesForData:(SEL)data;
- (id).cxx_construct;
- (void)commonInit;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)propertiesForData:(id)data usingBlock:(id)block;
- (void)saveToArchiver:(id)archiver;
- (void)setKnownDataDigestsForAutosave:(id)autosave;
- (void)setPropertiesForData:(id)data usingBlock:(id)block;
- (void)takeSnapshotWithCollaborationMode:(BOOL)mode;
- (void)updateForSuccessfulSave;
@end

@implementation TSPDocumentMetadata

- (void)commonInit
{
  v6.receiver = self;
  v6.super_class = TSPDocumentMetadata;
  [(TSPObject *)&v6 commonInit];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("TSPDocumentMetadata.Access", v3);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v4;

  self->_archivingLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
}

- (DataProperties)propertiesForData:(SEL)data
{
  v6 = a4;
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_context(v6, v7, v8);
    v13 = objc_msgSend_context(self, v11, v12);

    if (v10 != v13)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDocumentMetadata propertiesForData:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentMetadata.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 41, 0, "Unexpected object context for data.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x5812000000;
  v35 = sub_276A7748C;
  v36 = sub_276A774B8;
  v37 = " 0 0";
  sub_276A19D84(v38);
  accessQueue = self->_accessQueue;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276A774F4;
  v29[3] = &unk_27A6E3818;
  v29[4] = self;
  v30 = v9;
  v31 = &v32;
  v23 = v9;
  dispatch_sync(accessQueue, v29);
  v24 = v33;
  retstr->var0 = *(v33 + 12);
  v25 = v24[7];
  v26 = v24[8];
  v27 = v24[9];
  retstr->var1 = v25;
  retstr->var2 = v26;
  retstr->var3 = v27;
  retstr->var4 = *(v24 + 20);

  _Block_object_dispose(&v32, 8);
  return result;
}

- (void)propertiesForData:(id)data usingBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  if (blockCopy)
  {
    if (dataCopy)
    {
      v10 = objc_msgSend_context(dataCopy, v7, v8);
      v13 = objc_msgSend_context(self, v11, v12);

      if (v10 != v13)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDocumentMetadata propertiesForData:usingBlock:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentMetadata.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 57, 0, "Unexpected object context for data.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A77750;
    block[3] = &unk_27A6E55B0;
    block[4] = self;
    v24 = dataCopy;
    v25 = blockCopy;
    dispatch_async(accessQueue, block);
  }
}

- (void)setPropertiesForData:(id)data usingBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  if (blockCopy)
  {
    if (dataCopy)
    {
      v10 = objc_msgSend_context(dataCopy, v7, v8);
      v13 = objc_msgSend_context(self, v11, v12);

      if (v10 != v13)
      {
        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDocumentMetadata setPropertiesForData:usingBlock:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentMetadata.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 74, 0, "Unexpected object context for data.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A77A18;
    block[3] = &unk_27A6E55B0;
    block[4] = self;
    v24 = dataCopy;
    v25 = blockCopy;
    dispatch_async(accessQueue, block);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v4 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v3, off_2812FBC48[50]);

  if (*(v4 + 16))
  {
    v5 = *(v4 + 24);
    v6 = *(v5 + 32);
    v7 = v6 ? v6 + 8 : 0;
    v8 = *(v5 + 24);
    if (v8)
    {
      for (i = 8 * v8; i; i -= 8)
      {
        v10 = *v7;
        v11 = *(*v7 + 16);
        if ((v11 & 8) != 0)
        {
          if (*(v10 + 72))
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          if ((v11 & 4) != 0)
          {
LABEL_9:
            v13 = objc_alloc(MEMORY[0x277CBEAA8]);
            v16 = objc_msgSend_initWithTimeIntervalSince1970_(v13, v14, v15, *(v10 + 64));
            if ((*(v10 + 16) & 2) == 0)
            {
              goto LABEL_16;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v12 = 0;
          if ((v11 & 4) != 0)
          {
            goto LABEL_9;
          }
        }

        v16 = 0;
        if ((v11 & 2) == 0)
        {
LABEL_16:
          v19 = 0;
          goto LABEL_17;
        }

LABEL_10:
        v17 = [TSPDigest alloc];
        v19 = objc_msgSend_initFromProtobufString_(v17, v18, *(v10 + 56) & 0xFFFFFFFFFFFFFFFELL);
LABEL_17:
        v20 = [TSPDigest alloc];
        v46 = objc_msgSend_initFromProtobufString_(v20, v21, *(v10 + 48) & 0xFFFFFFFFFFFFFFFELL);
        if (v46)
        {
          v23 = UnsafePointer(v10 + 24, v22);
          sub_276A19D24(v43, v12, v16, v23, v19, 1);
          sub_276A78D40(&self->_dataPropertiesMap.__table_.__bucket_list_.__ptr_, &v46, &v46);
          v25 = v24;

          if ((v25 & 1) == 0)
          {
            v27 = MEMORY[0x277D81150];
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPDocumentMetadata loadFromUnarchiver:]");
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentMetadata.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 121, 0, "Document has two TSPData with the same digest: %@", v46, unarchiverCopy);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
          }
        }

        else
        {
          v34 = MEMORY[0x277D81150];
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPDocumentMetadata loadFromUnarchiver:]");
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentMetadata.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 123, 0, "Invalid digest.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
        }

        v7 += 8;
      }
    }
  }
}

- (void)takeSnapshotWithCollaborationMode:(BOOL)mode
{
  os_unfair_lock_lock(&self->_archivingLock);
  self->_isInCollaborationModeForArchiving = mode;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A77F04;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  knownDataDigests = self->_knownDataDigests;
  self->_knownDataDigests = 0;

  os_unfair_lock_unlock(&self->_archivingLock);
}

- (void)setKnownDataDigestsForAutosave:(id)autosave
{
  autosaveCopy = autosave;
  os_unfair_lock_lock(&self->_archivingLock);
  v6 = objc_msgSend_copy(autosaveCopy, v4, v5);
  knownDataDigests = self->_knownDataDigests;
  self->_knownDataDigests = v6;

  os_unfair_lock_unlock(&self->_archivingLock);
}

- (void)updateForSuccessfulSave
{
  os_unfair_lock_lock(&self->_archivingLock);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A7808C;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  os_unfair_lock_unlock(&self->_archivingLock);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  os_unfair_lock_lock(&self->_archivingLock);
  v35 = archiverCopy;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v35, v5, sub_276A793C4, off_2812FBC48[50]);

  v8 = *(v6 + 16);
  *(v6 + 32) = self->_isInCollaborationModeForArchiving;
  *(v6 + 16) = v8 | 3;
  v9 = *(v6 + 24);
  if (!v9)
  {
    v10 = *(v6 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_2769F5BE8(v10);
    *(v6 + 24) = v9;
  }

  next = self->_dataPropertiesMapForArchiving.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v13 = *(next + 2);
      knownDataDigests = self->_knownDataDigests;
      if (!knownDataDigests || (objc_msgSend_containsObject_(knownDataDigests, v12, v13) & 1) != 0)
      {
        break;
      }

LABEL_30:

      next = *next;
      if (!next)
      {
        goto LABEL_31;
      }
    }

    v15 = *(v9 + 32);
    if (v15)
    {
      v16 = *(v9 + 24);
      v17 = *v15;
      if (v16 < *v15)
      {
        *(v9 + 24) = v16 + 1;
        v18 = *&v15[2 * v16 + 2];
        goto LABEL_15;
      }

      if (v17 != *(v9 + 28))
      {
LABEL_14:
        *v15 = v17 + 1;
        v18 = sub_2769F5B5C(*(v9 + 16));
        v19 = *(v9 + 24);
        v20 = *(v9 + 32) + 8 * v19;
        *(v9 + 24) = v19 + 1;
        *(v20 + 8) = v18;
LABEL_15:
        *(v18 + 16) |= 1u;
        v21 = *(v18 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = google::protobuf::internal::ArenaStringPtr::Mutable((v18 + 48), v21);
        objc_msgSend_saveToProtobufString_(v13, v23, v22);
        v24 = *(next + 6);
        if (v24 != 1)
        {
          if (v24 != 2)
          {
LABEL_21:
            v25 = *(next + 4);
            v28 = v25;
            if (v25)
            {
              objc_msgSend_timeIntervalSince1970(v25, v26, v27);
              *(v18 + 16) |= 4u;
              *(v18 + 64) = v29;
            }

            v30 = *(next + 5);
            if (v30)
            {
              UnsafePointer(v30, v18 + 24);
            }

            v31 = *(next + 6);
            if (v31)
            {
              *(v18 + 16) |= 2u;
              v32 = *(v18 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = google::protobuf::internal::ArenaStringPtr::Mutable((v18 + 56), v32);
              objc_msgSend_saveToProtobufString_(v31, v34, v33);
            }

            goto LABEL_30;
          }

          LOBYTE(v24) = 0;
        }

        *(v18 + 16) |= 8u;
        *(v18 + 72) = v24;
        goto LABEL_21;
      }
    }

    else
    {
      v17 = *(v9 + 28);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 16), v17 + 1);
    v15 = *(v9 + 32);
    v17 = *v15;
    goto LABEL_14;
  }

LABEL_31:
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v35, v7, 3, v6);
  os_unfair_lock_unlock(&self->_archivingLock);
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

@end