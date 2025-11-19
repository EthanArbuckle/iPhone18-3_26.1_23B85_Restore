@interface TSPObjectSerializationReadAssistant
- (BOOL)processMetadataObject:(id)a3 error:(id *)a4;
- (TSPObjectSerializationReadAssistant)init;
- (TSPObjectSerializationReadAssistant)initWithContext:(id)a3;
- (id)cachedDataForIdentifier:(int64_t)a3;
- (id)dataInfoForIdentifier:(int64_t)a3;
- (id)decodeObjectWithData:(id)a3 packageURL:(id)a4 options:(id)a5 error:(id *)a6;
- (id)metadataComponent;
- (id)objectUUIDForExternalReferenceToIdentifier:(int64_t)a3;
- (id)resourceURLForIdentifier:(int64_t)a3;
- (unsigned)sourceType;
@end

@implementation TSPObjectSerializationReadAssistant

- (TSPObjectSerializationReadAssistant)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationReadAssistant init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationReadAssistant.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 48, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectSerializationReadAssistant init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectSerializationReadAssistant)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSPObjectSerializationReadAssistant;
  v5 = [(TSPObjectSerializationReadAssistant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
  }

  return v6;
}

- (id)decodeObjectWithData:(id)a3 packageURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v13 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_276AA0524;
  v45 = sub_276AA0534;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_276AA0524;
  v39 = sub_276AA0534;
  v40 = 0;
  if (v11)
  {
    v14 = objc_msgSend_URLByAppendingPathComponent_(v11, v12, @"Resources");
    resourcesFolderURL = self->_resourcesFolderURL;
    self->_resourcesFolderURL = v14;
  }

  if (v10)
  {
    v16 = [TSPObjectSerializationDecoder alloc];
    v19 = objc_msgSend_initWithEncodedData_(v16, v17, v10);
    if (v19)
    {
      WeakRetained = objc_loadWeakRetained(&self->_context);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_276AA053C;
      v28[3] = &unk_27A6E64F8;
      v21 = v19;
      v29 = v21;
      v30 = WeakRetained;
      v31 = self;
      v32 = v13;
      v33 = &v41;
      v34 = &v35;
      v22 = WeakRetained;
      objc_msgSend_performReadOperation_(v22, v23, v28);
    }

    else
    {
      v24 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v18, 0);
      v21 = 0;
      v22 = v36[5];
      v36[5] = v24;
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = v42[5];
  if (a6 && !v25)
  {
    *a6 = v36[5];
    v25 = v42[5];
  }

  v26 = v25;

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

- (id)resourceURLForIdentifier:(int64_t)a3
{
  if (self->_resourcesFolderURL)
  {
    identifierToResourceNameDictionary = self->_identifierToResourceNameDictionary;
    v5 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, a3);
    v7 = objc_msgSend_objectForKeyedSubscript_(identifierToResourceNameDictionary, v6, v5);

    if (v7)
    {
      v9 = objc_msgSend_URLByAppendingPathComponent_(self->_resourcesFolderURL, v8, v7);
      objc_msgSend_removeCachedResourceValueForKey_(v9, v10, *MEMORY[0x277CBE838]);
      if (objc_msgSend_tsu_fileSize(v9, v11, v12))
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v9 = 0;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)metadataComponent
{
  v2 = [TSPComponent alloc];
  v4 = objc_msgSend_initWithDelegate_identifier_preferredLocator_packageIdentifier_(v2, v3, 0, 5, 0, 0);

  return v4;
}

- (BOOL)processMetadataObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v10 = objc_msgSend_message(v7, v8, v9);
  v12 = v10;
  if (!v10)
  {
    if (!a4)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_16;
    }

LABEL_9:
    v27 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
LABEL_10:
    v29 = v27;
    v26 = 0;
    *a4 = v27;
    goto LABEL_16;
  }

  v13 = UnsafePointer(v10 + 24, v11);
  if (v13 != UnsafePointer())
  {
    v28 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v14, 11);
    v27 = v28;
    if (!a4)
    {
      v26 = 0;
      goto LABEL_16;
    }

    if (v28)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_readVersion = UnsafePointer(v12 + 96, v14);
  v16 = objc_msgSend_tsp_identifierToObjectUUIDDictionaryFromMessage_(MEMORY[0x277CBEAC0], v15, v12 + 72);
  identifierToObjectUUIDDictionary = self->_identifierToObjectUUIDDictionary;
  self->_identifierToObjectUUIDDictionary = v16;

  v19 = objc_msgSend_tsp_decoderResourceNameDictionaryFromMessage_(MEMORY[0x277CBEAC0], v18, v12 + 48);
  identifierToResourceNameDictionary = self->_identifierToResourceNameDictionary;
  self->_identifierToResourceNameDictionary = v19;

  v22 = objc_msgSend_tsp_decoderDataInfoDictionaryFromMessage_(MEMORY[0x277CBEAC0], v21, v12 + 48);
  dataInfos = self->_dataInfos;
  self->_dataInfos = v22;

  v24 = self->_dataInfos;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_276AA0CD4;
  v36[3] = &unk_27A6E6520;
  v37 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v25, v36);
  if (self->_resetObjectUUIDs)
  {
    operator new();
  }

  if (*(v12 + 136))
  {
    v30 = *(v12 + 136);
  }

  else
  {
    v30 = &unk_2812FC968;
  }

  v31 = [TSPComponent alloc];
  ModificationDate = objc_msgSend_initWithDelegate_message_packageIdentifier_encodedLength_lastModificationDate_(v31, v32, 0, v30, 0, 0, 0);
  rootObjectComponent = self->_rootObjectComponent;
  self->_rootObjectComponent = ModificationDate;

  v27 = 0;
  v26 = 1;
LABEL_16:

  return v26;
}

- (id)objectUUIDForExternalReferenceToIdentifier:(int64_t)a3
{
  identifierToObjectUUIDDictionary = self->_identifierToObjectUUIDDictionary;
  v4 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(identifierToObjectUUIDDictionary, v5, v4);

  return v6;
}

- (id)cachedDataForIdentifier:(int64_t)a3
{
  v5 = objc_msgSend_dataInfoForIdentifier_(self, a2, a3);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_digest(v5, v6, v7);
    v12 = objc_msgSend_documentResourceLocator(v8, v10, v11);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v16 = objc_msgSend_dataManager(WeakRetained, v14, v15);

    if (!v12)
    {
      goto LABEL_6;
    }

    v18 = objc_loadWeakRetained(&self->_context);
    v21 = objc_msgSend_resourceContext(v18, v19, v20);

    v57 = v21;
    v24 = objc_msgSend_digestString(v9, v22, v23);
    v27 = objc_msgSend_documentResourceRegistry(v21, v25, v26);
    v29 = objc_msgSend_documentResourceInfoForDigestString_locator_(v27, v28, v24, v12);

    if (!v29)
    {
      v56 = objc_msgSend_preferredFilename(v8, v30, v31);
      v32 = [TSPDocumentResourceInfo alloc];
      v35 = objc_msgSend_pathExtension(v56, v33, v34);
      v29 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v32, v36, v24, v12, v35, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    }

    v37 = objc_msgSend_resourceURLForIdentifier_(self, v30, a3, v56);
    v39 = objc_msgSend_dataForDocumentResourceInfo_fromFileURL_(v16, v38, v29, v37);

    if (!v39)
    {
LABEL_6:
      v39 = objc_msgSend_dataForDigest_(v16, v17, v9);
    }

    if (v39)
    {
      goto LABEL_21;
    }
  }

  if (!self->_resourcesFolderURL)
  {
    v39 = 0;
    goto LABEL_25;
  }

  identifierToResourceNameDictionary = self->_identifierToResourceNameDictionary;
  v42 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v6, a3);
  v44 = objc_msgSend_objectForKeyedSubscript_(identifierToResourceNameDictionary, v43, v42);

  v46 = MEMORY[0x277D81408];
  if (!v44)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD60D4();
    }

    v47 = 0;
    goto LABEL_17;
  }

  v47 = objc_msgSend_resourceURLForIdentifier_(self, v45, a3);
  if (!v47 || (v48 = objc_loadWeakRetained(&self->_context), objc_msgSend_dataFromURL_context_(TSPData, v49, v47, v48), v39 = objc_claimAutoreleasedReturnValue(), v48, !v39))
  {
LABEL_17:
    if (*v46 != -1)
    {
      sub_276BD60E8();
    }

    v39 = 0;
  }

LABEL_21:
  if (v8)
  {
    if (v39)
    {
      v50 = objc_msgSend_metadata(v39, v6, v40);

      if (!v50)
      {
        v53 = objc_msgSend_dataMetadata(v8, v51, v52);
        objc_msgSend_setMetadata_(v39, v54, v53);
      }
    }
  }

LABEL_25:

  return v39;
}

- (id)dataInfoForIdentifier:(int64_t)a3
{
  dataInfos = self->_dataInfos;
  v4 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(dataInfos, v5, v4);

  return v6;
}

- (unsigned)sourceType
{
  if (self->_deserializeAsPasteboard)
  {
    return 2;
  }

  else
  {
    return 5;
  }
}

@end