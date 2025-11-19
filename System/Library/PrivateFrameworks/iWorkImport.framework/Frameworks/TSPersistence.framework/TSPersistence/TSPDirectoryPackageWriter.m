@interface TSPDirectoryPackageWriter
- (TSPDirectoryPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18;
- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8;
- (id)newRawComponentWriteChannelWithPackageLocator:(id)a3 storeOutsideObjectArchive:(BOOL)a4;
- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5;
- (id)targetDataURLForPath:(id)a3;
@end

@implementation TSPDirectoryPackageWriter

- (TSPDirectoryPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18
{
  v49 = a6;
  v22 = a3;
  v54 = a4;
  v53 = a5;
  v52 = a7;
  v51 = a8;
  v50 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v28, v29);
  v60[0] = 0;
  v31 = v22;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v30, v32, v22, 1, 0, v60);
  v35 = v60[0];
  if (!DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD15E8();
    }

    goto LABEL_13;
  }

  v36 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v22, v34, @"Data", 1);

  v59 = 0;
  v38 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v30, v37, v36, 0, 0, &v59);
  v35 = v59;
  if ((v38 & 1) == 0)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1610();
    }

    goto LABEL_12;
  }

  v36 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v31, v39, @"Metadata", 1);

  v58 = 0;
  v41 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v30, v40, v36, 0, 0, &v58);
  v35 = v58;
  if ((v41 & 1) == 0)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1638();
    }

LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v56.receiver = self;
  v56.super_class = TSPDirectoryPackageWriter;
  v57 = 0;
  v42 = [(TSPPackageWriter *)&v56 initWithURL:v31 documentTargetURL:v54 relativeURLForExternalData:v53 packageIdentifier:v49 documentProperties:v52 documentMetadata:v51 fileFormatVersion:a9 updateType:a10 cloneMode:a11 documentSaveValidationPolicy:v50 encryptionKey:v23 originalDocumentPackage:v24 originalSupportPackage:v25 fileCoordinatorDelegate:v26 progress:v27 error:&v57];
  v35 = v57;
  if (v42)
  {
    v44 = [TSPDirectoryPackageDataWriter alloc];
    v46 = objc_msgSend_initWithURL_(v44, v45, v31);
    dataWriter = v42->_dataWriter;
    v42->_dataWriter = v46;

    goto LABEL_17;
  }

LABEL_14:
  if (a18)
  {
    objc_msgSend_tsp_ensureSaveErrorWithError_(MEMORY[0x277CCA9B8], v43, v35);
    *a18 = v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_17:

  return v42;
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5
{
  v6 = a4;
  v8 = a3;
  v10 = a5;
  if (!v6)
  {
    v43.receiver = self;
    v43.super_class = TSPDirectoryPackageWriter;
    ModificationDate_CRC = [(TSPPackageWriter *)&v43 packageEntryInfoForComponentLocator:v8 isStoredOutsideObjectArchive:0 packageURL:v10];
    goto LABEL_16;
  }

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 117, 0, "Invalid parameter not satisfying: %{public}s", "locator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (!v10)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 118, 0, "Invalid parameter not satisfying: %{public}s", "packageURL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v9, v10, v8);
  v47 = 0;
  v26 = *MEMORY[0x277CBE838];
  v46 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v25, v27, &v47, v26, &v46);
  v29 = v47;
  v31 = v46;
  if (!ResourceValue_forKey_error)
  {
    v34 = 0;
LABEL_12:
    if (UnsafePointer != -1)
    {
      sub_276BD1660();
    }

    ModificationDate_CRC = 0;
    v35 = v31;
    goto LABEL_15;
  }

  v45 = 0;
  v32 = *MEMORY[0x277CBE7B0];
  v44 = 0;
  v33 = objc_msgSend_getResourceValue_forKey_error_(v25, v30, &v45, v32, &v44);
  v34 = v45;
  v35 = v44;

  if (!v33)
  {
    v31 = v35;
    goto LABEL_12;
  }

  v36 = [TSPPackageEntryInfo alloc];
  v39 = objc_msgSend_unsignedLongLongValue(v29, v37, v38);
  ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v36, v40, v39, v34, 0);
LABEL_15:

LABEL_16:

  return ModificationDate_CRC;
}

- (id)newRawComponentWriteChannelWithPackageLocator:(id)a3 storeOutsideObjectArchive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = v6;
  if (v4)
  {
    if (!v6)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPDirectoryPackageWriter newRawComponentWriteChannelWithPackageLocator:storeOutsideObjectArchive:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 140, 0, "invalid nil value for '%{public}s'", "packageLocator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    v17 = objc_msgSend_URL(self, v7, v8);
    v19 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v18, v17, v9);

    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21);
    v25 = objc_msgSend_URLByDeletingLastPathComponent(v19, v23, v24);
    v36 = 0;
    v27 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v22, v26, v25, 1, 0, &v36);
    v28 = v36;

    if (v27)
    {
      v30 = [TSPDirectoryPackageWriterComponentFileWriteChannel alloc];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2769D626C;
      v35[3] = &unk_27A6E3A48;
      v35[4] = self;
      v32 = objc_msgSend_initWithURL_handler_(v30, v31, v19, v35);
    }

    else
    {
      objc_msgSend_setError_(self, v29, v28);
      if (UnsafePointer != -1)
      {
        sub_276BD1688();
      }

      v32 = 0;
    }
  }

  else
  {
    v34.receiver = self;
    v34.super_class = TSPDirectoryPackageWriter;
    v32 = [(TSPPackageWriter *)&v34 newRawComponentWriteChannelWithPackageLocator:v6 storeOutsideObjectArchive:0];
  }

  return v32;
}

- (id)targetDataURLForPath:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_URL(self, v5, v6);
  v9 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v7, v8, v4, 0);

  return v9;
}

- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8
{
  v11 = a5;
  v61 = a4;
  v14 = a6;
  v16 = objc_msgSend_filenameForData_preferredFilename_(self, v15, a3, a7);
  objc_msgSend_stringByAppendingPathComponent_(@"Data", v17, v16);
  v60 = v59 = v11;
  v19 = objc_msgSend_targetDataURLForPath_(self, v18, v60);
  v64 = 0;
  v22 = objc_msgSend_encryptionKey(self, v20, v21);
  if (sub_276AB678C(v14, v22, 0x100000))
  {
    v25 = sub_276AB683C(v22, 0x100000);
  }

  else
  {
    v25 = objc_msgSend_mutableCryptoInfoCopy(v14, v23, v24);
  }

  v28 = v25;
  canLinkData = objc_msgSend_canLinkData(self, v26, v27);
  if (!objc_msgSend_linkOrCopyItemAtURL_decryptionInfo_toURL_encryptionInfo_canLink_encodedLength_error_(TSPFileManager, v30, v61, v14, v19, v28, canLinkData, &v64, a8))
  {
    goto LABEL_20;
  }

  v33 = objc_msgSend_documentSaveValidationPolicy(self, v31, v32);
  updated = objc_msgSend_updateDataModificationDate(v33, v34, v35);

  if (updated)
  {
    v39 = objc_msgSend_date(MEMORY[0x277CBEAA8], v37, v38);
    v40 = *MEMORY[0x277CBE7B0];
    v63 = 0;
    v42 = objc_msgSend_setResourceValue_forKey_error_(v19, v41, v39, v40, &v63);
    v43 = v63;

    if (v42)
    {
      v46 = 1;
    }

    else
    {
      v47 = objc_msgSend_documentSaveValidationPolicy(self, v44, v45);
      v50 = objc_msgSend_failToSaveIfUpdateDataModificationDateFails(v47, v48, v49);

      v46 = v50 ^ 1;
      if (a8)
      {
        v51 = v46;
      }

      else
      {
        v51 = 1;
      }

      if ((v51 & 1) == 0)
      {
        v52 = v43;
        *a8 = v43;
      }

      if (UnsafePointer != -1)
      {
        sub_276BD16B0();
      }
    }

    if (!v46)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v46 = 1;
  }

  if (v59 && (sub_276AB65D0(v14, v28) & 1) == 0)
  {
    v55 = *MEMORY[0x277CBE878];
    v62 = 0;
    if ((objc_msgSend_setResourceValue_forKey_error_(v19, v53, MEMORY[0x277CBEC28], v55, &v62) & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD16D8();
    }

    goto LABEL_24;
  }

LABEL_19:
  if (!v46)
  {
LABEL_20:
    v54 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v56 = [TSPPackageWriterCopyDataResult alloc];
  v54 = objc_msgSend_initWithFilename_encryptionInfo_encodedLength_(v56, v57, v16, v28, v64);
LABEL_25:

  return v54;
}

- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7
{
  v9 = a3;
  v11 = a4;
  if (!v9)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDirectoryPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 236, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_targetDataURLForPath_(self, v10, v9);
  v22 = objc_msgSend_URLByDeletingLastPathComponent(v19, v20, v21);
  v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24);
  v33 = 0;
  v27 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v25, v26, v22, 1, 0, &v33);
  v28 = v33;

  if (v27)
  {
    v29 = objc_alloc(MEMORY[0x277D811D0]);
    v31 = objc_msgSend_initForStreamWritingURL_error_(v29, v30, v19, 0);
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1700();
    }

    v31 = 0;
  }

  return v31;
}

@end