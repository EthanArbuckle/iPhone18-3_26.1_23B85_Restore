@interface TSPDirectoryPackageWriter
- (TSPDirectoryPackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8;
- (id)linkOrCopyData:(id)data fromURL:(id)l fromTemporaryLocation:(BOOL)location decryptionInfo:(id)info preferredFilename:(id)filename error:(id *)error;
- (id)newRawComponentWriteChannelWithPackageLocator:(id)locator storeOutsideObjectArchive:(BOOL)archive;
- (id)newRawDataWriteChannelForRelativePath:(id)path originalLastModificationDate:(id)date originalSize:(unint64_t)size originalCRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive packageURL:(id)l;
- (id)targetDataURLForPath:(id)path;
@end

@implementation TSPDirectoryPackageWriter

- (TSPDirectoryPackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  propertiesCopy = properties;
  metadataCopy = metadata;
  policyCopy = policy;
  keyCopy = key;
  packageCopy = package;
  supportPackageCopy = supportPackage;
  delegateCopy = delegate;
  progressCopy = progress;
  v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v28, v29);
  v60[0] = 0;
  v31 = lCopy;
  DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v30, v32, lCopy, 1, 0, v60);
  v35 = v60[0];
  if (!DirectoryAtURL_withIntermediateDirectories_attributes_error)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD15E8();
    }

    goto LABEL_13;
  }

  v36 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(lCopy, v34, @"Data", 1);

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
  v42 = [(TSPPackageWriter *)&v56 initWithURL:v31 documentTargetURL:rLCopy relativeURLForExternalData:dataCopy packageIdentifier:identifierCopy documentProperties:propertiesCopy documentMetadata:metadataCopy fileFormatVersion:version updateType:type cloneMode:mode documentSaveValidationPolicy:policyCopy encryptionKey:keyCopy originalDocumentPackage:packageCopy originalSupportPackage:supportPackageCopy fileCoordinatorDelegate:delegateCopy progress:progressCopy error:&v57];
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
  if (error)
  {
    objc_msgSend_tsp_ensureSaveErrorWithError_(MEMORY[0x277CCA9B8], v43, v35);
    *error = v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_17:

  return v42;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive packageURL:(id)l
{
  archiveCopy = archive;
  locatorCopy = locator;
  lCopy = l;
  if (!archiveCopy)
  {
    v43.receiver = self;
    v43.super_class = TSPDirectoryPackageWriter;
    ModificationDate_CRC = [(TSPPackageWriter *)&v43 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0 packageURL:lCopy];
    goto LABEL_16;
  }

  if (!locatorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 117, 0, "Invalid parameter not satisfying: %{public}s", "locator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (!lCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 118, 0, "Invalid parameter not satisfying: %{public}s", "packageURL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v9, lCopy, locatorCopy);
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

- (id)newRawComponentWriteChannelWithPackageLocator:(id)locator storeOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  v9 = locatorCopy;
  if (archiveCopy)
  {
    if (!locatorCopy)
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
    v32 = [(TSPPackageWriter *)&v34 newRawComponentWriteChannelWithPackageLocator:locatorCopy storeOutsideObjectArchive:0];
  }

  return v32;
}

- (id)targetDataURLForPath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_URL(self, v5, v6);
  v9 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v7, v8, pathCopy, 0);

  return v9;
}

- (id)linkOrCopyData:(id)data fromURL:(id)l fromTemporaryLocation:(BOOL)location decryptionInfo:(id)info preferredFilename:(id)filename error:(id *)error
{
  locationCopy = location;
  lCopy = l;
  infoCopy = info;
  v16 = objc_msgSend_filenameForData_preferredFilename_(self, v15, data, filename);
  objc_msgSend_stringByAppendingPathComponent_(@"Data", v17, v16);
  v60 = v59 = locationCopy;
  v19 = objc_msgSend_targetDataURLForPath_(self, v18, v60);
  v64 = 0;
  v22 = objc_msgSend_encryptionKey(self, v20, v21);
  if (sub_276AB678C(infoCopy, v22, 0x100000))
  {
    v25 = sub_276AB683C(v22, 0x100000);
  }

  else
  {
    v25 = objc_msgSend_mutableCryptoInfoCopy(infoCopy, v23, v24);
  }

  v28 = v25;
  canLinkData = objc_msgSend_canLinkData(self, v26, v27);
  if (!objc_msgSend_linkOrCopyItemAtURL_decryptionInfo_toURL_encryptionInfo_canLink_encodedLength_error_(TSPFileManager, v30, lCopy, infoCopy, v19, v28, canLinkData, &v64, error))
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
      if (error)
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
        *error = v43;
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

  if (v59 && (sub_276AB65D0(infoCopy, v28) & 1) == 0)
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

- (id)newRawDataWriteChannelForRelativePath:(id)path originalLastModificationDate:(id)date originalSize:(unint64_t)size originalCRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  pathCopy = path;
  dateCopy = date;
  if (!pathCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDirectoryPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 236, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_targetDataURLForPath_(self, v10, pathCopy);
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