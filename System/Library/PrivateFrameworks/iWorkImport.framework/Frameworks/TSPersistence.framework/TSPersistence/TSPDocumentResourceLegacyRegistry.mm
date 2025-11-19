@interface TSPDocumentResourceLegacyRegistry
+ (id)sharedSageRegistry;
+ (id)sharedTangierRegistry;
+ (void)setSharedSageRegistryMetadataURL:(id)a3;
+ (void)setSharedTangierRegistryMetadataURL:(id)a3;
- (TSPDocumentResourceLegacyRegistry)init;
- (TSPDocumentResourceLegacyRegistry)initWithMetadataDictionary:(id)a3;
- (TSPDocumentResourceLegacyRegistry)initWithMetadataURL:(id)a3;
- (id)documentResourceLegacyInfoForApplicationRelativePath:(id)a3;
@end

@implementation TSPDocumentResourceLegacyRegistry

+ (id)sharedSageRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ACEE88;
  block[3] = &unk_27A6E4768;
  block[4] = a1;
  if (qword_280A530A0 != -1)
  {
    dispatch_once(&qword_280A530A0, block);
  }

  v2 = qword_280A52AE0;

  return v2;
}

+ (id)sharedTangierRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276ACF05C;
  block[3] = &unk_27A6E4768;
  block[4] = a1;
  if (qword_280A530A8 != -1)
  {
    dispatch_once(&qword_280A530A8, block);
  }

  v2 = qword_280A52AE8;

  return v2;
}

- (TSPDocumentResourceLegacyRegistry)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceLegacyRegistry init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceLegacyRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 84, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDocumentResourceLegacyRegistry init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDocumentResourceLegacyRegistry)initWithMetadataURL:(id)a3
{
  v8 = 0;
  v5 = objc_msgSend_tsu_propertyListWithContentsOfURL_options_error_(MEMORY[0x277CCAC58], a2, a3, 0, &v8);
  if (v8)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6858();
    }

    v6 = 0;
  }

  else
  {
    self = objc_msgSend_initWithMetadataDictionary_(self, v4, v5);
    v6 = self;
  }

  return v6;
}

- (TSPDocumentResourceLegacyRegistry)initWithMetadataDictionary:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    v14.receiver = self;
    v14.super_class = TSPDocumentResourceLegacyRegistry;
    v9 = [(TSPDocumentResourceLegacyRegistry *)&v14 init];
    if (v9)
    {
      v10 = objc_msgSend_copy(v4, v7, v8);
      metadataDictionary = v9->_metadataDictionary;
      v9->_metadataDictionary = v10;
    }

    self = v9;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)documentResourceLegacyInfoForApplicationRelativePath:(id)a3
{
  v4 = a3;
  metadataDictionary = self->_metadataDictionary;
  v7 = objc_msgSend_metadataDictionaryKeyForRelativePath_(self, v6, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(metadataDictionary, v8, v7);

  if (objc_msgSend_count(v9, v10, v11) > 1)
  {
    objc_opt_class();
    v22 = objc_msgSend_objectAtIndexedSubscript_(v9, v21, 0);
    v23 = TSUDynamicCast();

    if (v23)
    {
      objc_opt_class();
      v26 = objc_msgSend_objectAtIndexedSubscript_(v9, v25, 1);
      v27 = TSUDynamicCast();

      if (v27)
      {
        v29 = [TSPDocumentResourceLegacyInfo alloc];
        v20 = objc_msgSend_initWithDigestString_locator_(v29, v30, v23, v27);
      }

      else
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPDocumentResourceLegacyRegistry documentResourceLegacyInfoForApplicationRelativePath:]");
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceLegacyRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 133, 0, "Invalid locator value for application relative path %{public}@: Locator must be a string", v4);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
        v20 = 0;
      }
    }

    else
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPDocumentResourceLegacyRegistry documentResourceLegacyInfoForApplicationRelativePath:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceLegacyRegistry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 126, 0, "Invalid digest value for application relative path %{public}@: Digest must be a string", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      v20 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDocumentResourceLegacyRegistry documentResourceLegacyInfoForApplicationRelativePath:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceLegacyRegistry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 119, 0, "Invalid entry for application relative path %{public}@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    v20 = 0;
  }

  return v20;
}

+ (void)setSharedSageRegistryMetadataURL:(id)a3
{
  if (qword_280A52B00 != a3)
  {
    v3 = objc_msgSend_copy(a3, a2, a3);
    v4 = qword_280A52B00;
    qword_280A52B00 = v3;
  }

  qword_280A530A0 = 0;
}

+ (void)setSharedTangierRegistryMetadataURL:(id)a3
{
  if (qword_280A52B08 != a3)
  {
    v3 = objc_msgSend_copy(a3, a2, a3);
    v4 = qword_280A52B08;
    qword_280A52B08 = v3;
  }

  qword_280A530A8 = 0;
}

@end