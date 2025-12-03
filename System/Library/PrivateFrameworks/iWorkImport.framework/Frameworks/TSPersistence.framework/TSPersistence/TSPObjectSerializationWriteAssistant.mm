@interface TSPObjectSerializationWriteAssistant
- (TSPObjectSerializationWriteAssistant)init;
- (TSPObjectSerializationWriteAssistant)initWithContext:(id)context documentUUID:(id)d versionUUID:(id)iD;
- (id)createMetadataForRootObject:(id)object readVersion:(unint64_t)version dataArchiver:(id)archiver archivedObjects:(id)objects componentObjectUUIDMap:(id)map externalReferences:(id)references weakExternalReferences:(id)externalReferences lazyReferences:(id)self0 dataReferences:(id)self1 error:(id *)self2;
- (int64_t)componentWriterMode;
- (void)encodeObject:(id)object options:(id)options completion:(id)completion;
@end

@implementation TSPObjectSerializationWriteAssistant

- (TSPObjectSerializationWriteAssistant)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationWriteAssistant init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationWriteAssistant.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 50, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectSerializationWriteAssistant init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectSerializationWriteAssistant)initWithContext:(id)context documentUUID:(id)d versionUUID:(id)iD
{
  contextCopy = context;
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = TSPObjectSerializationWriteAssistant;
  v11 = [(TSPObjectSerializationWriteAssistant *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_context, contextCopy);
    objc_storeStrong(&v12->_documentUUID, d);
    objc_storeStrong(&v12->_versionUUID, iD);
  }

  return v12;
}

- (void)encodeObject:(id)object options:(id)options completion:(id)completion
{
  v76 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  optionsCopy = options;
  completionCopy = completion;
  objc_opt_class();
  v10 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, @"TSPObjecSerialization_SerializeAsPasteboard");
  v11 = TSUDynamicCast();
  v14 = objc_msgSend_BOOLValue(v11, v12, v13);

  if (v14)
  {
    self->_serializeWeakAsStrongReferences = 1;
    v15 = off_27A6E21C0;
  }

  else
  {
    objc_opt_class();
    v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v16, @"TSPObjecSerialization_WeakAsStrongReferences");
    v18 = TSUDynamicCast();
    self->_serializeWeakAsStrongReferences = objc_msgSend_BOOLValue(v18, v19, v20);

    if (self->_serializeWeakAsStrongReferences)
    {
      v15 = &off_27A6E2200;
    }

    else
    {
      v15 = off_27A6E21B8;
    }
  }

  v21 = *v15;
  v22 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v58 = objc_alloc_init(TSPObjectSerializationEncoder);
  v24 = [TSPEncoderWriteCoordinator alloc];
  v27 = objc_msgSend_initWithEncoder_context_archiverClass_delegate_(v24, v25, v58, WeakRetained, v22, self);
  if (optionsCopy)
  {
    objc_opt_class();
    v29 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v28, @"TSPObjecSerialization_ObjectProxy");
    v30 = TSUDynamicCast();

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_276A607F4;
    v72[3] = &unk_27A6E51A8;
    v31 = v27;
    v73 = v31;
    v55 = v30;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v30, v32, v72);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    objc_opt_class();
    v34 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v33, @"TSPObjecSerialization_DelayedObjects");
    v35 = TSUDynamicCast();

    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v68, v75, 16);
    if (v38)
    {
      v39 = *v69;
      do
      {
        v40 = 0;
        do
        {
          if (*v69 != v39)
          {
            objc_enumerationMutation(v35);
          }

          objc_msgSend_delayArchivingOfObject_(v31, v37, *(*(&v68 + 1) + 8 * v40++));
        }

        while (v38 != v40);
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v68, v75, 16);
      }

      while (v38);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    objc_opt_class();
    v42 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v41, @"TSPObjecSerialization_SkipObjects");
    v43 = TSUDynamicCast();

    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v64, v74, 16);
    if (v46)
    {
      v47 = *v65;
      do
      {
        v48 = 0;
        do
        {
          if (*v65 != v47)
          {
            objc_enumerationMutation(v43);
          }

          objc_msgSend_skipArchivingObject_(v31, v45, *(*(&v64 + 1) + 8 * v48++));
        }

        while (v46 != v48);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v64, v74, 16);
      }

      while (v46);
    }
  }

  objc_msgSend_addObjectModifyDelegate_(WeakRetained, v26, v27);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_276A60800;
  v59[3] = &unk_27A6E51F8;
  v59[4] = self;
  v49 = v27;
  v60 = v49;
  v50 = optionsCopy;
  v61 = v50;
  v51 = v58;
  v62 = v51;
  v52 = completionCopy;
  v63 = v52;
  objc_msgSend_writeRootObject_completion_(v49, v53, objectCopy, v59);

  v54 = *MEMORY[0x277D85DE8];
}

- (int64_t)componentWriterMode
{
  if (self->_serializeWeakAsStrongReferences)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)createMetadataForRootObject:(id)object readVersion:(unint64_t)version dataArchiver:(id)archiver archivedObjects:(id)objects componentObjectUUIDMap:(id)map externalReferences:(id)references weakExternalReferences:(id)externalReferences lazyReferences:(id)self0 dataReferences:(id)self1 error:(id *)self2
{
  v95 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  archiverCopy = archiver;
  objectsCopy = objects;
  mapCopy = map;
  referencesCopy = references;
  externalReferencesCopy = externalReferences;
  lazyReferencesCopy = lazyReferences;
  dataReferencesCopy = dataReferences;
  v82 = referencesCopy;
  if (objc_msgSend_count(referencesCopy, v19, v20))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPObjectSerializationWriteAssistant createMetadataForRootObject:readVersion:dataArchiver:archivedObjects:componentObjectUUIDMap:externalReferences:weakExternalReferences:lazyReferences:dataReferences:error:]", objectsCopy);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationWriteAssistant.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 135, 0, "Strong external references aren't supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  v30 = objc_msgSend_context(objectCopy, v21, v22, objectsCopy);
  v31 = [TSPObjectSerializationMetadata alloc];
  v33 = objc_msgSend_initWithContext_(v31, v32, v30);
  v36 = objc_msgSend_message(v33, v34, v35);
  v37 = UnsafePointer();
  UnsafePointer(v37, v36 + 24);
  UnsafePointer(version, v36 + 96);
  sub_2769C65D4(v93, self->_documentUUID);
  *(v36 + 16) |= 1u;
  v38 = *(v36 + 120);
  if (!v38)
  {
    v39 = *(v36 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v39);
    *(v36 + 120) = v38;
  }

  TSP::UUIDData::saveToMessage(v93, v38);
  sub_2769C65D4(v93, self->_versionUUID);
  *(v36 + 16) |= 2u;
  v40 = *(v36 + 128);
  if (!v40)
  {
    v41 = *(v36 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v41);
    *(v36 + 128) = v40;
  }

  TSP::UUIDData::saveToMessage(v93, v40);
  *(v36 + 16) |= 4u;
  v44 = *(v36 + 136);
  if (!v44)
  {
    v45 = *(v36 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = sub_2769F507C(v45);
    *(v36 + 136) = v44;
  }

  v46 = objc_msgSend_tsp_identifier(objectCopy, v42, v43);
  v47 = *(v44 + 16);
  *(v44 + 280) = v46;
  *(v44 + 16) = v47 | 5;
  v48 = *(v44 + 8);
  if (v48)
  {
    v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
  }

  v49 = google::protobuf::internal::ArenaStringPtr::Mutable((v44 + 264), v48);
  objc_msgSend_tsp_saveToProtobufString_(@"Object", v50, v49);
  IsNotPersisted_context_error = objc_msgSend_tsp_identifierToObjectUUIDDictionaryFromWeakExternalReferences_updatingComponentInfo_failIfReferenceIsNotPersisted_context_error_(MEMORY[0x277CBEAC0], v51, externalReferencesCopy, v44, 0, v30, error);
  if (!IsNotPersisted_context_error)
  {
    goto LABEL_35;
  }

  if (objc_msgSend_count(mapCopy, v52, v53))
  {
    objc_msgSend_saveToMessage_(mapCopy, v55, v44 + 120);
  }

  if (!objc_msgSend_count(dataReferencesCopy, v55, v56))
  {
    goto LABEL_32;
  }

  if (!objc_msgSend_tsp_saveDataReferencesToMessage_dataArchiver_(dataReferencesCopy, v57, v36 + 48, archiverCopy))
  {
LABEL_35:
    v77 = 0;
    goto LABEL_36;
  }

  v61 = objc_msgSend_allObjects(dataReferencesCopy, v59, v60);
  objc_msgSend_setDataReferences_(v33, v62, v61);

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v63 = dataReferencesCopy;
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v89, v94, 16);
  if (v67)
  {
    v68 = *v90;
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v90 != v68)
        {
          objc_enumerationMutation(v63);
        }

        v70 = *(*(&v89 + 1) + 8 * i);
        v73 = objc_msgSend_metadata(v70, v65, v66);
        if (v73)
        {
          v74 = objc_msgSend_identifier(v70, v71, v72);
          objc_msgSend_setDataMetadata_forDataIdentifier_(v33, v75, v73, v74);
        }
      }

      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v89, v94, 16);
    }

    while (v67);
  }

LABEL_32:
  if (objc_msgSend_count(IsNotPersisted_context_error, v57, v58))
  {
    objc_msgSend_tsp_saveIdentifierToObjectUUIDDictionaryToMessage_(IsNotPersisted_context_error, v76, v36 + 72);
  }

  v77 = v33;
LABEL_36:

  v78 = *MEMORY[0x277D85DE8];

  return v77;
}

@end