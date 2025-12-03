@interface TSPDeepCopyWriteAssistant
- (TSPDeepCopyWriteAssistant)init;
- (TSPDeepCopyWriteAssistant)initWithContext:(id)context objectMap:(id)map;
- (id)createMetadataForRootObject:(id)object readVersion:(unint64_t)version dataArchiver:(id)archiver archivedObjects:(id)objects componentObjectUUIDMap:(id)map externalReferences:(id)references weakExternalReferences:(id)externalReferences lazyReferences:(id)self0 dataReferences:(id)self1 error:(id *)self2;
- (void)encodeDeepCopyOfObject:(id)object options:(id)options completion:(id)completion;
@end

@implementation TSPDeepCopyWriteAssistant

- (TSPDeepCopyWriteAssistant)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDeepCopyWriteAssistant init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyWriteAssistant.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 38, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDeepCopyWriteAssistant init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDeepCopyWriteAssistant)initWithContext:(id)context objectMap:(id)map
{
  contextCopy = context;
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = TSPDeepCopyWriteAssistant;
  v8 = [(TSPDeepCopyWriteAssistant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    objc_storeStrong(&v9->_objectMap, map);
  }

  return v9;
}

- (void)encodeDeepCopyOfObject:(id)object options:(id)options completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  optionsCopy = options;
  completionCopy = completion;
  v50 = objc_alloc_init(TSPMemoryEncoder);
  v9 = [TSPEncoderWriteCoordinator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v11 = objc_opt_class();
  v13 = objc_msgSend_initWithEncoder_context_archiverClass_delegate_(v9, v12, v50, WeakRetained, v11, self);

  if (optionsCopy)
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v14, @"TSPObjectDeepCopyOption_ResetObjectUUIDs");
    v16 = TSUDynamicCast();
    self->_resetObjectUUIDs = objc_msgSend_BOOLValue(v16, v17, v18);

    objc_opt_class();
    v20 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v19, @"TSPObjectDeepCopyOption_ObjectProxy");
    v21 = TSUDynamicCast();

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_276AF4E84;
    v63[3] = &unk_27A6E51A8;
    v22 = v13;
    v64 = v22;
    v47 = v21;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v23, v63);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    objc_opt_class();
    v25 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v24, @"TSPObjectDeepCopyOption_DelayedObjects");
    v26 = TSUDynamicCast();

    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v59, v66, 16);
    if (v29)
    {
      v30 = *v60;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v60 != v30)
          {
            objc_enumerationMutation(v26);
          }

          objc_msgSend_delayArchivingOfObject_(v22, v28, *(*(&v59 + 1) + 8 * i));
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v59, v66, 16);
      }

      while (v29);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    objc_opt_class();
    v33 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v32, @"TSPObjectDeepCopyOption_SkipObjects");
    v34 = TSUDynamicCast();

    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v55, v65, 16);
    if (v37)
    {
      v38 = *v56;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(v34);
          }

          objc_msgSend_skipArchivingObject_(v22, v36, *(*(&v55 + 1) + 8 * j));
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v55, v65, 16);
      }

      while (v37);
    }
  }

  v40 = objc_loadWeakRetained(&self->_context);
  objc_msgSend_addObjectModifyDelegate_(v40, v41, v13);

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_276AF4E90;
  v51[3] = &unk_27A6E7498;
  v51[4] = self;
  v42 = v13;
  v52 = v42;
  v43 = completionCopy;
  v54 = v43;
  v44 = v50;
  v53 = v44;
  objc_msgSend_writeRootObject_completion_(v42, v45, objectCopy, v51);

  v46 = *MEMORY[0x277D85DE8];
}

- (id)createMetadataForRootObject:(id)object readVersion:(unint64_t)version dataArchiver:(id)archiver archivedObjects:(id)objects componentObjectUUIDMap:(id)map externalReferences:(id)references weakExternalReferences:(id)externalReferences lazyReferences:(id)self0 dataReferences:(id)self1 error:(id *)self2
{
  v86 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objectsCopy = objects;
  mapCopy = map;
  referencesCopy = references;
  externalReferencesCopy = externalReferences;
  dataReferencesCopy = dataReferences;
  v76 = referencesCopy;
  if (objc_msgSend_count(referencesCopy, v18, v19) || objc_msgSend_count(externalReferencesCopy, v20, v21))
  {
    v73 = objectsCopy;
    v75 = objectCopy;
    v24 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB40]);
    sub_276AF54A4(v25, referencesCopy, v24);
    sub_276AF54A4(v26, externalReferencesCopy, v25);
    v27 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPDeepCopyWriteAssistant createMetadataForRootObject:readVersion:dataArchiver:archivedObjects:componentObjectUUIDMap:externalReferences:weakExternalReferences:lazyReferences:dataReferences:error:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyWriteAssistant.mm");
    v34 = objc_msgSend_tsp_publicLoggingDescription(objectCopy, v32, v33);
    v37 = objc_msgSend_array(v24, v35, v36);
    v39 = objc_msgSend_componentsJoinedByString_(v37, v38, @", ");
    v42 = objc_msgSend_array(v25, v40, v41);
    v44 = objc_msgSend_componentsJoinedByString_(v42, v43, @", ");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v45, v29, v31, 123, 0, "External references are not supported during deep copy of root object %{public}@. strong_ref=[%{public}@], weak_ref=[%{public}@]", v34, v39, v44);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
    objectCopy = v75;
    objectsCopy = v73;
  }

  v49 = objc_msgSend_count(dataReferencesCopy, v22, v23);
  if (v49)
  {
    v50 = objc_alloc(MEMORY[0x277CBEB38]);
    v52 = objc_msgSend_initWithCapacity_(v50, v51, v49);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v53 = dataReferencesCopy;
    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v81, v85, 16);
    if (v57)
    {
      v58 = *v82;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v82 != v58)
          {
            objc_enumerationMutation(v53);
          }

          v60 = *(*(&v81 + 1) + 8 * i);
          v61 = MEMORY[0x277CCABB0];
          v62 = objc_msgSend_identifier(v60, v55, v56);
          v64 = objc_msgSend_numberWithLongLong_(v61, v63, v62);
          objc_msgSend_setObject_forKeyedSubscript_(v52, v65, v60, v64);
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v55, &v81, v85, 16);
      }

      while (v57);
    }
  }

  else
  {
    v52 = 0;
  }

  objc_msgSend_didWriteObjects_(self->_objectMap, v48, objectsCopy);
  v66 = [TSPDeepCopyMetadata alloc];
  v68 = UnsafePointer();
  if (self->_resetObjectUUIDs)
  {
    Version_componentObjectUUIDMap_cachedDataMap = objc_msgSend_initWithRootObject_version_readVersion_componentObjectUUIDMap_cachedDataMap_(v66, v67, objectCopy, v68, version, 0, v52);
  }

  else
  {
    Version_componentObjectUUIDMap_cachedDataMap = objc_msgSend_initWithRootObject_version_readVersion_componentObjectUUIDMap_cachedDataMap_(v66, v67, objectCopy, v68, version, mapCopy, v52);
  }

  v70 = Version_componentObjectUUIDMap_cachedDataMap;

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

@end