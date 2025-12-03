@interface TSPDeepCopyReadAssistant
- (BOOL)isCrossDocumentPaste;
- (BOOL)processMetadataObject:(id)object error:(id *)error;
- (TSPDeepCopyReadAssistant)init;
- (TSPDeepCopyReadAssistant)initWithContext:(id)context objectMap:(id)map cachedMetadataObject:(id)object cachedDataMap:(id)dataMap;
- (id)cachedDataForIdentifier:(int64_t)identifier;
- (id)decodeDeepCopySerializedData:(id)data options:(id)options error:(id *)error;
- (int64_t)objectIdentifierForUUID:(id)d;
@end

@implementation TSPDeepCopyReadAssistant

- (TSPDeepCopyReadAssistant)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDeepCopyReadAssistant init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDeepCopyReadAssistant.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 39, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDeepCopyReadAssistant init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDeepCopyReadAssistant)initWithContext:(id)context objectMap:(id)map cachedMetadataObject:(id)object cachedDataMap:(id)dataMap
{
  contextCopy = context;
  mapCopy = map;
  objectCopy = object;
  dataMapCopy = dataMap;
  v17.receiver = self;
  v17.super_class = TSPDeepCopyReadAssistant;
  v14 = [(TSPDeepCopyReadAssistant *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_context, contextCopy);
    objc_storeStrong(&v15->_objectMap, map);
    objc_storeStrong(&v15->_cachedMetadataObject, object);
    objc_storeStrong(&v15->_cachedDataMap, dataMap);
  }

  return v15;
}

- (id)decodeDeepCopySerializedData:(id)data options:(id)options error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  v10 = 0;
  if (dataCopy)
  {
    v11 = 0;
    if (self->_cachedMetadataObject)
    {
      v12 = [TSPFinalizeHandlerQueue alloc];
      v14 = objc_msgSend_initWithRootObjectIdentifier_(v12, v13, 0);
      v15 = [TSPMemoryDecoder alloc];
      v17 = objc_msgSend_initWithMetadataDispatchData_rootObjectComponentDispatchData_delegate_(v15, v16, 0, dataCopy, 0);
      v19 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v18, @"TSPObjectDeepCopyOption_IsTransientObject");
      self->_isDecodingTransientObject = objc_msgSend_BOOLValue(v19, v20, v21);

      WeakRetained = objc_loadWeakRetained(&self->_context);
      v23 = [TSPDecoderReadCoordinator alloc];
      v25 = objc_msgSend_initWithDecoder_context_finalizeHandlerQueue_delegate_(v23, v24, v17, WeakRetained, v14, self);
      v40 = 0;
      v41 = 0;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_276A2069C;
      v39[3] = &unk_27A6E4790;
      v39[4] = self;
      v39[5] = v25;
      v27 = objc_msgSend_readWithReadCoordinator_finalizeHandlerQueue_rootObject_error_readCompletion_(WeakRetained, v26, v25, v14, &v41, &v40, v39);
      v11 = v41;
      v28 = v40;
      v10 = v28;
      if ((v27 & 1) == 0)
      {
        v38 = v17;
        if (objc_msgSend_code(v28, v29, v30) == 11 && (objc_msgSend_domain(v10, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v33, v34, @"com.apple.iWork.TSPersistence"), v33, (isEqualToString & 1) != 0))
        {

          v10 = 0;
        }

        else if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD38F0();
        }

        v17 = v38;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (error)
  {
    v36 = v10;
    *error = v10;
  }

  return v11;
}

- (BOOL)processMetadataObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = v7;
  if (!v7)
  {
    if (!error)
    {
      v29 = 0;
      v28 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v28 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
LABEL_9:
    v31 = v28;
    v29 = 0;
    *error = v28;
    goto LABEL_11;
  }

  v11 = objc_msgSend_version(v7, v8, v9);
  if (v11 != UnsafePointer())
  {
    v30 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v12, 11);
    v28 = v30;
    if (!error)
    {
      v29 = 0;
      goto LABEL_11;
    }

    if (v30)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  self->_readVersion = objc_msgSend_readVersion(v10, v12, v13);
  v14 = [TSPComponent alloc];
  v17 = objc_msgSend_rootObjectIdentifier(v10, v15, v16);
  v19 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v14, v18, 0, v17, 0, 0);
  component = self->_component;
  self->_component = v19;

  p_readVersion = &self->_readVersion;
  readVersion = self->_readVersion;
  v22 = p_readVersion[1];
  v26 = objc_msgSend_componentObjectUUIDMap(v10, v24, v25);
  objc_msgSend_setDocumentReadVersion_documentWriteVersion_componentObjectUUIDMap_(v22, v27, readVersion, readVersion, v26);

  v28 = 0;
  v29 = 1;
LABEL_11:

  return v29;
}

- (int64_t)objectIdentifierForUUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_componentObjectUUIDMap(self->_component, v5, v6);
  v9 = objc_msgSend_identifierForObjectUUID_(v7, v8, dCopy);

  return v9;
}

- (id)cachedDataForIdentifier:(int64_t)identifier
{
  cachedDataMap = self->_cachedDataMap;
  v4 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, identifier);
  v6 = objc_msgSend_objectForKeyedSubscript_(cachedDataMap, v5, v4);

  return v6;
}

- (BOOL)isCrossDocumentPaste
{
  selfCopy = self;
  v4 = objc_msgSend_context(self->_cachedMetadataObject, a2, v2);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  LOBYTE(selfCopy) = v4 != WeakRetained;

  return selfCopy;
}

@end