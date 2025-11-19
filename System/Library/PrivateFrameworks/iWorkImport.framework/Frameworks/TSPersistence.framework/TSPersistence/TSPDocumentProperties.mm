@interface TSPDocumentProperties
+ (BOOL)documentIsEncryptedAtURL:(id)a3;
+ (id)documentPropertiesRelativePath;
+ (id)documentRevisionAtURL:(id)a3;
+ (id)documentUUIDAtURL:(id)a3;
+ (id)keychainGenericItemForDocumentUUID:(id)a3;
+ (id)shareIdentifierRelativePath;
- (BOOL)writeToDocumentBundleURL:(id)a3 error:(id *)a4;
- (BOOL)writeToDocumentURL:(id)a3 writerBlock:(id)a4 error:(id *)a5;
- (BOOL)writeToPackageWriter:(id)a3 error:(id *)a4;
- (BOOL)writeToPropertiesURL:(id)a3 error:(id *)a4;
- (NSUUID)shareUUID;
- (NSUUID)stableDocumentUUID;
- (NSUUID)versionUUID;
- (TSPDocumentProperties)init;
- (TSPDocumentProperties)initWithDocumentBundleURL:(id)a3 allowMissingPropertyList:(BOOL)a4 error:(id *)a5;
- (TSPDocumentProperties)initWithFilePackageURL:(id)a3 zipArchive:(id)a4 allowMissingPropertyList:(BOOL)a5 error:(id *)a6;
- (TSPDocumentProperties)initWithPropertiesURL:(id)a3 error:(id *)a4;
- (id)UUIDFromDocumentProperties:(id)a3 key:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodedPropertyListWithError:(id *)a3;
- (id)hashPrivateUUIDWithDigest:(id)a3;
- (void)clearIsNotClean;
- (void)readDocumentPropertiesFromDictionary:(id)a3;
- (void)resetDocumentRevision;
- (void)setAdditionalProperties:(id)a3;
- (void)updateDocumentUUID;
- (void)updateVersionUUID;
@end

@implementation TSPDocumentProperties

- (TSPDocumentProperties)init
{
  v6.receiver = self;
  v6.super_class = TSPDocumentProperties;
  v2 = [(TSPDocumentProperties *)&v6 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_updateDocumentUUIDAndPreserveShareUUID_preserveStableDocumentUUID_(v2, v3, 0, 1);
  }

  return v4;
}

- (TSPDocumentProperties)initWithDocumentBundleURL:(id)a3 allowMissingPropertyList:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v21.receiver = self;
  v21.super_class = TSPDocumentProperties;
  v9 = [(TSPDocumentProperties *)&v21 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v13 = objc_msgSend_documentPropertiesRelativePath(v10, v11, v12);
    v15 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v8, v14, v13, 0);

    v18 = objc_msgSend_tsu_propertyListWithContentsOfURL_options_error_(MEMORY[0x277CCAC58], v16, v15, 0, a5);
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_readDocumentPropertiesFromDictionary_(v9, v19, v18);
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (v6)
    {
      objc_msgSend_updateDocumentUUIDAndPreserveShareUUID_preserveStableDocumentUUID_(v9, v17, 0, 1);
      goto LABEL_8;
    }

    v9 = 0;
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (TSPDocumentProperties)initWithFilePackageURL:(id)a3 zipArchive:(id)a4 allowMissingPropertyList:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v12 = a4;
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDocumentProperties initWithFilePackageURL:zipArchive:allowMissingPropertyList:error:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 147, 0, "invalid nil value for '%{public}s'", "zipArchive");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v34.receiver = self;
  v34.super_class = TSPDocumentProperties;
  v20 = [(TSPDocumentProperties *)&v34 init];
  if (v20)
  {
    v21 = objc_opt_class();
    v24 = objc_msgSend_documentPropertiesRelativePath(v21, v22, v23);
    v26 = objc_msgSend_entryForName_(v12, v25, v24);

    v29 = objc_msgSend_tsp_dataForEntry_(v12, v27, v26);
    if (v29 && (objc_opt_class(), objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v30, v29, 0, 0, a6), v31 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v32 = objc_claimAutoreleasedReturnValue(), v31, v32))
    {
      objc_msgSend_readDocumentPropertiesFromDictionary_(v20, v28, v32);
    }

    else
    {
      if (v7)
      {
        objc_msgSend_updateDocumentUUIDAndPreserveShareUUID_preserveStableDocumentUUID_(v20, v28, 0, 1);
LABEL_11:

        goto LABEL_12;
      }

      v32 = v20;
      v20 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v20;
}

- (TSPDocumentProperties)initWithPropertiesURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v8 = objc_msgSend_tsu_propertyListWithContentsOfURL_options_error_(MEMORY[0x277CCAC58], v7, v6, 0, a4);
  v9 = TSUDynamicCast();

  if (v9)
  {
    v14.receiver = self;
    v14.super_class = TSPDocumentProperties;
    v10 = [(TSPDocumentProperties *)&v14 init];
    v12 = v10;
    if (v10)
    {
      objc_msgSend_readDocumentPropertiesFromDictionary_(v10, v11, v9);
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (void)readDocumentPropertiesFromDictionary:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_UUIDFromDocumentProperties_key_(self, v5, v4, @"documentUUID");
  documentUUID = self->_documentUUID;
  self->_documentUUID = v6;

  v9 = objc_msgSend_UUIDFromDocumentProperties_key_(self, v8, v4, @"versionUUID");
  versionUUID = self->_versionUUID;
  self->_versionUUID = v9;

  v12 = objc_msgSend_UUIDFromDocumentProperties_key_(self, v11, v4, @"shareUUID");
  shareUUID = self->_shareUUID;
  self->_shareUUID = v12;

  v15 = objc_msgSend_UUIDFromDocumentProperties_key_(self, v14, v4, @"stableDocumentUUID");
  stableDocumentUUID = self->_stableDocumentUUID;
  self->_stableDocumentUUID = v15;

  v18 = objc_msgSend_UUIDFromDocumentProperties_key_(self, v17, v4, @"privateUUID");
  privateUUID = self->_privateUUID;
  self->_privateUUID = v18;

  v21 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"fileFormatVersion");
  self->_fileFormatVersion = sub_276AC091C(v21, v22);

  v23 = [TSPDocumentRevision alloc];
  v25 = objc_msgSend_objectForKeyedSubscript_(v4, v24, @"revision");
  v27 = objc_msgSend_initWithRevisionString_(v23, v26, v25);
  revision = self->_revision;
  self->_revision = v27;

  if (!self->_documentUUID)
  {
    objc_msgSend_updateDocumentUUID(self, v29, v30);
  }

  if (!self->_shareUUID)
  {
    objc_storeStrong(&self->_shareUUID, self->_documentUUID);
  }

  if (!self->_stableDocumentUUID)
  {
    objc_storeStrong(&self->_stableDocumentUUID, self->_documentUUID);
  }

  if (!self->_privateUUID)
  {
    v31 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v29, v30);
    v32 = self->_privateUUID;
    self->_privateUUID = v31;
  }

  v33 = objc_msgSend_mutableCopy(v4, v29, v30);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v34 = sub_276ABF070();
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v42, v46, 16);
  if (v37)
  {
    v38 = *v43;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(v34);
        }

        objc_msgSend_removeObjectForKey_(v33, v36, *(*(&v42 + 1) + 8 * i), v42);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v42, v46, 16);
    }

    while (v37);
  }

  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v33;

  v41 = *MEMORY[0x277D85DE8];
}

- (id)UUIDFromDocumentProperties:(id)a3 key:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, v7);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = objc_msgSend_initWithUUIDString_(v9, v10, v8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)writeToDocumentURL:(id)a3 writerBlock:(id)a4 error:(id *)a5
{
  v7 = a4;
  v9 = objc_msgSend_encodedPropertyListWithError_(self, v8, a5);
  if (v9 && (v10 = objc_opt_class(), objc_msgSend_documentPropertiesRelativePath(v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = v7[2](v7, v9, v13), v13, v14))
  {
    v17 = objc_msgSend_shareUUID(self, v15, v16);
    v20 = objc_msgSend_UUIDString(v17, v18, v19);
    v22 = objc_msgSend_dataUsingEncoding_(v20, v21, 4);

    v23 = objc_opt_class();
    v26 = objc_msgSend_shareIdentifierRelativePath(v23, v24, v25);
    v27 = v7[2](v7, v22, v26);

    if (a5)
    {
      v29 = v27;
    }

    else
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      *a5 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v28, 0);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)writeToPackageWriter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_URL(v6, v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276ABF3EC;
  v13[3] = &unk_27A6E6AC0;
  v10 = v6;
  v14 = v10;
  v15 = a4;
  LOBYTE(a4) = objc_msgSend_writeToDocumentURL_writerBlock_error_(self, v11, v9, v13, a4);

  return a4;
}

- (BOOL)writeToDocumentBundleURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276ABF4CC;
  v10[3] = &unk_27A6E6AC0;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  LOBYTE(a4) = objc_msgSend_writeToDocumentURL_writerBlock_error_(self, v8, v7, v10, a4);

  return a4;
}

- (id)encodedPropertyListWithError:(id *)a3
{
  v5 = self->_additionalProperties;
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_count(v5, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v6, v10, v9 + 5);
  v14 = objc_msgSend_documentUUID(self, v12, v13);
  v17 = objc_msgSend_UUIDString(v14, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v18, v17, @"documentUUID");

  v21 = objc_msgSend_versionUUID(self, v19, v20);
  v24 = objc_msgSend_UUIDString(v21, v22, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v25, v24, @"versionUUID");

  v28 = objc_msgSend_shareUUID(self, v26, v27);
  v31 = objc_msgSend_UUIDString(v28, v29, v30);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v32, v31, @"shareUUID");

  v35 = objc_msgSend_stableDocumentUUID(self, v33, v34);
  v38 = objc_msgSend_UUIDString(v35, v36, v37);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v39, v38, @"stableDocumentUUID");

  v42 = objc_msgSend_UUIDString(self->_privateUUID, v40, v41);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v43, v42, @"privateUUID");

  v46 = objc_msgSend_fileFormatVersion(self, v44, v45);
  v48 = NSStringFromTSPVersion(v46, v47);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v49, v48, @"fileFormatVersion");

  v50 = self->_revision;
  v53 = v50;
  if (v50)
  {
    v54 = objc_msgSend_revisionString(v50, v51, v52);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v55, v54, @"revision");
  }

  if (v5)
  {
    objc_msgSend_addEntriesFromDictionary_(v11, v51, v5);
  }

  v56 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v51, v11, 200, 0, a3);

  return v56;
}

- (BOOL)writeToPropertiesURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v8 = objc_msgSend_encodedPropertyListWithError_(self, v7, a4);
  v10 = v8;
  if (v8)
  {
    v11 = objc_msgSend_writeToURL_options_error_(v8, v9, v6, 0, a4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)documentUUIDAtURL:(id)a3
{
  value[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  value[0] = 0;
  value[1] = 0;
  v6 = objc_msgSend_path(v3, v4, v5);
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  v11 = getxattr(v10, "com.apple.iwork.documentUUID", value, 0x10uLL, 0, 0) == 16;

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = objc_msgSend_initWithUUIDBytes_(v12, v13, value);
  }

  else
  {
    v15 = [TSPDocumentProperties alloc];
    v17 = objc_msgSend_initWithDocumentURL_error_(v15, v16, v3, 0);
    v14 = objc_msgSend_documentUUID(v17, v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)documentRevisionAtURL:(id)a3
{
  v3 = a3;
  v4 = [TSPDocumentProperties alloc];
  v12 = 0;
  v6 = objc_msgSend_initWithDocumentURL_error_(v4, v5, v3, &v12);
  v9 = v12;
  if (v9)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD66B4();
    }

    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_revision(v6, v7, v8);
  }

  return v10;
}

+ (BOOL)documentIsEncryptedAtURL:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_path(v3, v4, v5);
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
  v25 = 0;
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v9, v10, v6, &v25))
  {
    goto LABEL_10;
  }

  if (v25 != 1)
  {
    if (objc_msgSend_isZipArchiveAtPath_(MEMORY[0x277D81138], v11, v6))
    {
      v18 = objc_alloc(MEMORY[0x277D81138]);
      v12 = objc_msgSend_initWithPath_collapseCommonRootDirectory_(v18, v19, v6, 1);
      if ((objc_msgSend_isEncrypted(v12, v20, v21) & 1) == 0)
      {
        v23 = objc_msgSend_entryWithName_(v12, v22, @".iwpv2");
        v17 = v23 != 0;

        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v12 = objc_msgSend_stringByAppendingPathComponent_(v6, v11, @".iwpv2");
  if (objc_msgSend_fileExistsAtPath_(v9, v13, v12))
  {
LABEL_7:
    v17 = 1;
    goto LABEL_9;
  }

  v15 = objc_msgSend_stringByAppendingPathComponent_(v6, v14, @".iwpv");
  v17 = objc_msgSend_fileExistsAtPath_(v9, v16, v15);

LABEL_9:
LABEL_11:

  return v17;
}

+ (id)keychainGenericItemForDocumentUUID:(id)a3
{
  v3 = objc_msgSend_UUIDString(a3, a2, a3);
  v5 = objc_msgSend_dataUsingEncoding_(v3, v4, 4);

  return v5;
}

+ (id)documentPropertiesRelativePath
{
  if (qword_280A52AB8 != -1)
  {
    sub_276BD66DC();
  }

  v3 = qword_280A52AB0;

  return v3;
}

+ (id)shareIdentifierRelativePath
{
  if (qword_280A52AC8 != -1)
  {
    sub_276BD66F0();
  }

  v3 = qword_280A52AC0;

  return v3;
}

- (void)updateDocumentUUID
{
  v4 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  documentUUID = self->_documentUUID;
  self->_documentUUID = v4;

  v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v6, v7);
  privateUUID = self->_privateUUID;
  self->_privateUUID = v8;
}

- (NSUUID)versionUUID
{
  versionUUID = self->_versionUUID;
  if (!versionUUID)
  {
    objc_msgSend_updateVersionUUID(self, a2, v2);
    versionUUID = self->_versionUUID;
  }

  return versionUUID;
}

- (void)updateVersionUUID
{
  v4 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  versionUUID = self->_versionUUID;
  self->_versionUUID = v4;
}

- (NSUUID)shareUUID
{
  shareUUID = self->_shareUUID;
  p_shareUUID = &self->_shareUUID;
  v4 = shareUUID;
  if (!shareUUID)
  {
    objc_storeStrong(p_shareUUID, self->_documentUUID);
    v4 = self->_shareUUID;
  }

  return v4;
}

- (NSUUID)stableDocumentUUID
{
  stableDocumentUUID = self->_stableDocumentUUID;
  p_stableDocumentUUID = &self->_stableDocumentUUID;
  v4 = stableDocumentUUID;
  if (!stableDocumentUUID)
  {
    objc_storeStrong(p_stableDocumentUUID, self->_documentUUID);
    v4 = self->_stableDocumentUUID;
  }

  return v4;
}

- (id)hashPrivateUUIDWithDigest:(id)a3
{
  v6 = a3;
  if (!self->_privateUUID)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDocumentProperties hashPrivateUUIDWithDigest:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 437, 0, "invalid nil value for '%{public}s'", "_privateUUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (!v6)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDocumentProperties hashPrivateUUIDWithDigest:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 438, 0, "invalid nil value for '%{public}s'", "digest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_digestData(v6, v4, v5);
  v23 = objc_msgSend_tsu_UUIDWithNamespaceUUID_bytes_size_(MEMORY[0x277CCAD78], v22, self->_privateUUID, v21, 20);

  return v23;
}

- (void)setAdditionalProperties:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = sub_276ABF070();
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v26, v30, 16);
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v9);
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = MEMORY[0x277D81150];
          v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPDocumentProperties setAdditionalProperties:]");
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentProperties.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 447, 0, "Added property overwrites %{public}@", v9);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v26, v30, 16);
    }

    while (v6);
  }

  v21 = objc_msgSend_copy(v3, v19, v20);
  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v21;

  v23 = *MEMORY[0x277D85DE8];
}

- (void)resetDocumentRevision
{
  objc_msgSend_updateVersionUUID(self, a2, v2);
  v4 = [TSPDocumentRevision alloc];
  v10 = objc_msgSend_versionUUID(self, v5, v6);
  v8 = objc_msgSend_initWithSequence_identifier_(v4, v7, 0);
  revision = self->_revision;
  self->_revision = v8;
}

- (void)clearIsNotClean
{
  v3 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], a2, self->_additionalProperties);
  objc_msgSend_removeObjectForKey_(v3, v4, @"isNotClean");
  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_alloc_init(TSPDocumentProperties);
  if (v6)
  {
    v7 = objc_msgSend_copyWithZone_(self->_documentUUID, v5, a3);
    documentUUID = v6->_documentUUID;
    v6->_documentUUID = v7;

    v10 = objc_msgSend_copyWithZone_(self->_versionUUID, v9, a3);
    versionUUID = v6->_versionUUID;
    v6->_versionUUID = v10;

    v13 = objc_msgSend_copyWithZone_(self->_shareUUID, v12, a3);
    shareUUID = v6->_shareUUID;
    v6->_shareUUID = v13;

    v16 = objc_msgSend_copyWithZone_(self->_stableDocumentUUID, v15, a3);
    stableDocumentUUID = v6->_stableDocumentUUID;
    v6->_stableDocumentUUID = v16;

    v19 = objc_msgSend_copyWithZone_(self->_privateUUID, v18, a3);
    privateUUID = v6->_privateUUID;
    v6->_privateUUID = v19;

    v6->_fileFormatVersion = self->_fileFormatVersion;
    v22 = objc_msgSend_copyWithZone_(self->_revision, v21, a3);
    revision = v6->_revision;
    v6->_revision = v22;

    v25 = objc_msgSend_copyWithZone_(self->_additionalProperties, v24, a3);
    additionalProperties = v6->_additionalProperties;
    v6->_additionalProperties = v25;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_documentUUID(self, v6, v7);
  v11 = objc_msgSend_versionUUID(self, v9, v10);
  v14 = objc_msgSend_shareUUID(self, v12, v13);
  v17 = objc_msgSend_stableDocumentUUID(self, v15, v16);
  v20 = objc_msgSend_revision(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v3, v21, @"<%@ %p documentUUID:%@, versionUUID:%@, shareUUID:%@, stableDocumentUUID:%@, revision:%@>", v5, self, v8, v11, v14, v17, v20);

  return v22;
}

@end