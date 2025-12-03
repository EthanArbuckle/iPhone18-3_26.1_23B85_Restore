@interface TSPSupportMetadata
- (DataCollaborationProperties)collaborationPropertiesForData:(SEL)data;
- (TSPSupportMetadata)initWithContext:(id)context;
- (id).cxx_construct;
- (void)collaborationPropertiesForData:(id)data usingBlock:(id)block;
- (void)commonInit;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_resetServerDataFlags;
- (void)saveToArchiver:(id)archiver;
- (void)setCollaborationPropertiesForData:(id)data usingBlock:(id)block;
- (void)setKnownDataDigestsForAutosave:(id)autosave;
- (void)takeSnapshotWithCollaborationMode:(BOOL)mode;
- (void)validateDataCollaborationProperties:(DataCollaborationProperties *)properties forData:(id)data;
@end

@implementation TSPSupportMetadata

- (void)commonInit
{
  v6.receiver = self;
  v6.super_class = TSPSupportMetadata;
  [(TSPObject *)&v6 commonInit];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("TSPSupportMetadata.Access", v3);
  accessQueue = self->_accessQueue;
  self->_accessQueue = v4;

  self->_archivingLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
}

- (TSPSupportMetadata)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = TSPSupportMetadata;
  v5 = [(TSPObject *)&v10 initWithContext:contextCopy];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_p_resetServerDataFlags(v5, v6, v7);
  }

  return v8;
}

- (void)p_resetServerDataFlags
{
  v52 = *MEMORY[0x277D85DE8];
  v43 = objc_msgSend_context(self, a2, v2);
  v45 = objc_msgSend_documentPackage(v43, v4, v5);
  v8 = objc_msgSend_dataManager(v43, v6, v7);
  v11 = objc_msgSend_allData(v8, v9, v10);

  p_dataCollaborationPropertiesMap = &self->_dataCollaborationPropertiesMap;
  sub_276AE1744(&self->_dataCollaborationPropertiesMap);
  v15 = objc_msgSend_count(v11, v13, v14);
  sub_2769AC06C(&self->_dataCollaborationPropertiesMap, vcvtps_u32_f32(v15 / self->_dataCollaborationPropertiesMap.__table_.__max_load_factor_));
  v18 = objc_msgSend_documentRevision(v43, v16, v17);
  objc_msgSend_sequence(v18, v19, v20);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v47, v51, 16);
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v47 + 1) + 8 * i);
        v46 = objc_msgSend_digest(v27, v22, v23);
        objc_msgSend_isInDocument(v27, v28, v29);
        v32 = objc_msgSend_storage(v27, v30, v31);
        objc_msgSend_isInPackage_(v32, v33, v45);

        sub_276AE17A0(p_dataCollaborationPropertiesMap, &v46, &v46);
        if ((v34 & 1) == 0)
        {
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSPSupportMetadata p_resetServerDataFlags]");
          v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportMetadata.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 73, 0, "Document has two TSPData with the same digest: %@", v46);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v47, v51, 16);
    }

    while (v24);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)validateDataCollaborationProperties:(DataCollaborationProperties *)properties forData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (properties->var1)
  {
    properties->var1 = 1;
  }

  else
  {
    isApplicationData = objc_msgSend_isApplicationData(dataCopy, v6, v7);
    properties->var1 = isApplicationData;
    if ((isApplicationData & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  properties->var0 = 1;
  properties->var4 = 1;
LABEL_5:
}

- (DataCollaborationProperties)collaborationPropertiesForData:(SEL)data
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
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPSupportMetadata collaborationPropertiesForData:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportMetadata.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 91, 0, "Unexpected object context for data.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x5012000000;
  v32 = sub_276AE0700;
  v33 = nullsub_16;
  v34 = &unk_276C58F2F;
  v35 = 0;
  v36 = 0x8000000080000000;
  v37 = 0;
  accessQueue = self->_accessQueue;
  v38 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AE0718;
  block[3] = &unk_27A6E3818;
  block[4] = self;
  v27 = v9;
  v28 = &v29;
  v23 = v9;
  dispatch_sync(accessQueue, block);
  v24 = *(v30 + 4);
  *&retstr->var0 = *(v30 + 3);
  *&retstr->var4 = v24;

  _Block_object_dispose(&v29, 8);
  return result;
}

- (void)collaborationPropertiesForData:(id)data usingBlock:(id)block
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
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPSupportMetadata collaborationPropertiesForData:usingBlock:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportMetadata.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 109, 0, "Unexpected object context for data.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AE096C;
    block[3] = &unk_27A6E55B0;
    block[4] = self;
    v24 = dataCopy;
    v25 = blockCopy;
    dispatch_async(accessQueue, block);
  }
}

- (void)setCollaborationPropertiesForData:(id)data usingBlock:(id)block
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
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPSupportMetadata setCollaborationPropertiesForData:usingBlock:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportMetadata.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 128, 0, "Unexpected object context for data.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }
    }

    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AE0BE4;
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
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FBC48[54]);

  v8 = objc_msgSend_context(self, v6, v7);
  v11 = objc_msgSend_dataManager(v8, v9, v10);

  v12 = *(v5 + 40);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v5 + 32);
  if (v14)
  {
    v15 = 8 * v14;
    do
    {
      v16 = *v13;
      v17 = [TSPDigest alloc];
      v20 = objc_msgSend_initFromProtobufString_(v17, v18, *&v16[3] & 0xFFFFFFFFFFFFFFFELL);
      v43 = v20;
      if (v20)
      {
        v21 = objc_msgSend_dataForDigest_(v11, v19, v20);

        if (v21)
        {
          v23 = v16[4].i8[0];
          v24 = v16[4].i8[1];
          v25 = v16[5];
          v37 = v16[4].u32[1];
          v26 = sub_276A7BDA8(&v37, v22);
          v27 = v16[4].i8[2];
          v38 = v23;
          v39 = v24;
          v40 = vrev64_s32(v25);
          v41 = v26;
          v42 = v27;
          sub_276AE17A0(&self->_dataCollaborationPropertiesMap.__table_.__bucket_list_.__ptr_, &v43, &v43);
          if ((v28 & 1) == 0)
          {
            v29 = MEMORY[0x277D81150];
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPSupportMetadata loadFromUnarchiver:]");
            v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSupportMetadata.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 186, 0, "Document has two TSPData with the same digest: %@", v43, unarchiverCopy);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          }
        }
      }

      ++v13;
      v15 -= 8;
    }

    while (v15);
  }
}

- (void)takeSnapshotWithCollaborationMode:(BOOL)mode
{
  os_unfair_lock_lock(&self->_archivingLock);
  self->_isInCollaborationModeForArchiving = mode;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AE0FE4;
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

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  os_unfair_lock_lock(&self->_archivingLock);
  v21 = archiverCopy;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v21, v5, sub_276AE1CBC, off_2812FBC48[54]);

  isInCollaborationModeForArchiving = self->_isInCollaborationModeForArchiving;
  *(v6 + 16) |= 1u;
  *(v6 + 48) = isInCollaborationModeForArchiving;
  next = self->_dataCollaborationPropertiesMapForArchiving.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v10 = next[2];
      knownDataDigests = self->_knownDataDigests;
      if (!knownDataDigests || (objc_msgSend_containsObject_(knownDataDigests, v9, v10)) && *(next + 48) == 1)
      {
        break;
      }

LABEL_15:

      next = *next;
      if (!next)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v6 + 40);
    if (v12)
    {
      v13 = *(v6 + 32);
      v14 = *v12;
      if (v13 < *v12)
      {
        *(v6 + 32) = v13 + 1;
        v15 = *&v12[2 * v13 + 2];
LABEL_12:
        *(v15 + 16) |= 1u;
        v18 = *(v15 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::internal::ArenaStringPtr::Mutable((v15 + 24), v18);
        objc_msgSend_saveToProtobufString_(v10, v20, v19);
        *(v15 + 16) |= 8u;
        *(v15 + 34) = 1;
        goto LABEL_15;
      }

      if (v14 != *(v6 + 36))
      {
LABEL_11:
        *v12 = v14 + 1;
        v15 = sub_2769F5D44(*(v6 + 24));
        v16 = *(v6 + 32);
        v17 = *(v6 + 40) + 8 * v16;
        *(v6 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        goto LABEL_12;
      }
    }

    else
    {
      v14 = *(v6 + 36);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24), v14 + 1);
    v12 = *(v6 + 40);
    v14 = *v12;
    goto LABEL_11;
  }

LABEL_16:
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