@interface TSPPackage
+ (BOOL)isValidPackageAtURL:(id)l;
+ (BOOL)isZeroLengthFileOrEmptyDirectory:(id)directory isDirectory:(BOOL *)isDirectory;
+ (id)dataEntryPathForFilename:(id)filename;
+ (id)objectArchiveEntryPathForPackageLocator:(id)locator;
+ (id)zipArchiveURLFromPackageURL:(id)l;
+ (unint64_t)zipArchiveOptions;
- (BOOL)checkPassword:(id)password;
- (BOOL)hasDataAtRelativePath:(id)path;
- (BOOL)reloadZipArchiveIfNeededWithURLImpl:(id)impl isLazyLoading:(BOOL)loading forceReload:(BOOL)reload error:(id *)error;
- (NSError)lastReloadError;
- (NSString)passwordHint;
- (TSPDocumentProperties)documentProperties;
- (TSPFileCoordinatorDelegate)fileCoordinatorDelegate;
- (TSPPackage)init;
- (TSPPackage)initWithPackageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties fileFormatVersion:(unint64_t)version decryptionKey:(id)key fileCoordinatorDelegate:(id)delegate isLazyLoading:(BOOL)loading;
- (TSUZipFileArchive)zipArchive;
- (id)componentLocators;
- (id)keyFromPassword:(id)password;
- (id)keyFromPassword:(id)password passwordVerifier:(id)verifier;
- (id)newCompressionReadChannelWithReadChannel:(id)channel compressionAlgorithm:(int64_t)algorithm;
- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date;
- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error;
- (id)newRawDataReadChannelAtRelativePath:(id)path;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)newZipArchiveFromPackageURL:(id)l isLazyLoading:(BOOL)loading error:(id *)error;
- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
- (int64_t)packageType;
- (void)copyComponent:(id)component toPackageURL:(id)l packageLocator:(id)locator zipFileWriter:(id)writer encryptionKey:(id)key canLink:(BOOL)link completion:(id)completion;
- (void)didReadFileFormatVersion:(unint64_t)version;
- (void)didRetrieveDecryptionKey:(id)key;
- (void)enumerateDataUsingBlock:(id)block;
- (void)peformSynchronousAccessToZipArchive:(id)archive;
- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l;
- (void)setZipArchive:(id)archive fileCoordinatorDelegate:(id)delegate;
@end

@implementation TSPPackage

+ (BOOL)isValidPackageAtURL:(id)l
{
  lCopy = l;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSPPackage isValidPackageAtURL:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 56, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "+[TSPPackage isValidPackageAtURL:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

+ (id)objectArchiveEntryPathForPackageLocator:(id)locator
{
  v3 = objc_msgSend_stringByAppendingPathComponent_(@"Index", a2, locator);
  v5 = objc_msgSend_stringByAppendingPathExtension_(v3, v4, @"iwa");

  return v5;
}

+ (id)dataEntryPathForFilename:(id)filename
{
  v3 = objc_msgSend_stringByAppendingPathComponent_(@"Data", a2, filename);

  return v3;
}

- (TSPPackage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 168, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackage)initWithPackageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties fileFormatVersion:(unint64_t)version decryptionKey:(id)key fileCoordinatorDelegate:(id)delegate isLazyLoading:(BOOL)loading
{
  loadingCopy = loading;
  propertiesCopy = properties;
  keyCopy = key;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = TSPPackage;
  v18 = [(TSPPackage *)&v28 init];
  if (v18)
  {
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("TSPPackage.Access", v19);
    accessQueue = v18->_accessQueue;
    v18->_accessQueue = v20;

    v18->_packageIdentifier = identifier;
    objc_storeStrong(&v18->_documentProperties, properties);
    v18->_fileFormatVersion = version;
    objc_storeStrong(&v18->_decryptionKey, key);
    objc_storeWeak(&v18->_fileCoordinatorDelegate, delegateCopy);
    v22 = objc_alloc(MEMORY[0x277CCAA50]);
    v24 = objc_msgSend_initWithOptions_capacity_(v22, v23, 512, 0);
    packageDatas = v18->_packageDatas;
    v18->_packageDatas = v24;

    if (loadingCopy)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    *&v18->_flags = v26 | loadingCopy | *&v18->_flags & 0xFC;
  }

  return v18;
}

- (int64_t)packageType
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackage packageType]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 211, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPPackage packageType]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (TSPFileCoordinatorDelegate)fileCoordinatorDelegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AF06CC;
  v10 = sub_276AF06DC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AF06E4;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TSPDocumentProperties)documentProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AF06CC;
  v10 = sub_276AF06DC;
  v11 = 0;
  if (*&self->_flags)
  {
    accessQueue = self->_accessQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_276AF0838;
    v5[3] = &unk_27A6E2E30;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(accessQueue, v5);
  }

  else
  {
    objc_storeStrong(&v11, self->_documentProperties);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)didRetrieveDecryptionKey:(id)key
{
  keyCopy = key;
  if (self->_decryptionKey)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPPackage didRetrieveDecryptionKey:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 264, 0, "expected nil value for '%{public}s'", "_decryptionKey");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (!keyCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPPackage didRetrieveDecryptionKey:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 265, 0, "invalid nil value for '%{public}s'", "decryptionKey");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  decryptionKey = self->_decryptionKey;
  self->_decryptionKey = keyCopy;
}

- (void)didReadFileFormatVersion:(unint64_t)version
{
  if (self->_fileFormatVersion)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackage didReadFileFormatVersion:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 275, 0, "File format version shouldn't have been set.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  self->_fileFormatVersion = version;
}

+ (BOOL)isZeroLengthFileOrEmptyDirectory:(id)directory isDirectory:(BOOL *)isDirectory
{
  directoryCopy = directory;
  *isDirectory = 0;
  v27 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(directoryCopy, v6, &v27, *MEMORY[0x277CBE868], 0);
  v8 = v27;
  v11 = v8;
  if (ResourceValue_forKey_error)
  {
    *isDirectory = objc_msgSend_BOOLValue(v8, v9, v10);
    if (objc_msgSend_BOOLValue(v11, v12, v13))
    {
      v16 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v14, v15);
      v18 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v16, v17, directoryCopy, 0, 1, 0);

      if (!v18)
      {
        LOBYTE(ResourceValue_forKey_error) = 0;
        goto LABEL_9;
      }

      v21 = objc_msgSend_count(v18, v19, v20);
    }

    else
    {
      v26 = 0;
      ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(directoryCopy, v14, &v26, *MEMORY[0x277CBE838], 0);
      v22 = v26;
      v18 = v22;
      if (!ResourceValue_forKey_error)
      {
LABEL_9:

        goto LABEL_10;
      }

      v21 = objc_msgSend_longLongValue(v22, v23, v24);
    }

    LOBYTE(ResourceValue_forKey_error) = v21 == 0;
    goto LABEL_9;
  }

LABEL_10:

  return ResourceValue_forKey_error;
}

- (id)newZipArchiveFromPackageURL:(id)l isLazyLoading:(BOOL)loading error:(id *)error
{
  lCopy = l;
  v9 = objc_opt_class();
  v11 = objc_msgSend_zipArchiveURLFromPackageURL_(v9, v10, lCopy);
  v12 = MEMORY[0x277D81380];
  v13 = objc_opt_class();
  v16 = objc_msgSend_zipArchiveOptions(v13, v14, v15) | self->_additionalZipArchiveOptions;
  v52 = 0;
  v18 = objc_msgSend_zipArchiveFromURL_options_error_(v12, v17, v11, v16 | 4, &v52);
  v20 = v52;
  if (v18)
  {
    goto LABEL_19;
  }

  if (loading)
  {
    goto LABEL_17;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6CA4();
  }

  if ((objc_msgSend_checkResourceIsReachableAndReturnError_(v11, v19, 0) & 1) == 0)
  {
    v41 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v21, v20, &unk_2885E5BD8);
LABEL_16:
    v48 = v41;

    v20 = v48;
LABEL_17:
    if (!error)
    {
      goto LABEL_19;
    }

LABEL_18:
    v49 = v20;
    *error = v20;
    goto LABEL_19;
  }

  if (!objc_msgSend_tsu_fileSize(v11, v21, v22))
  {
    if (objc_msgSend_tsp_isReadError(v20, v23, v24))
    {
      v44 = MEMORY[0x277CCA9B8];
      v45 = objc_msgSend_userInfo(v20, v42, v43);
      v47 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(v44, v46, v45);

      v20 = v47;
    }

    v41 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v42, v20, &unk_2885E5BF0);
    goto LABEL_16;
  }

  if (objc_msgSend_isZipArchiveAtURL_error_(MEMORY[0x277D81380], v23, v11, 0))
  {
    goto LABEL_17;
  }

  v51 = 0;
  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26);
  v30 = objc_msgSend_path(v11, v28, v29);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v27, v31, v30, &v51);

  if (isDirectory && (v51 & 1) == 0 && objc_msgSend_isZipSignatureAllZerosAtURL_(MEMORY[0x277D81380], v33, v11))
  {
    v35 = MEMORY[0x277CCA9B8];
    v36 = objc_msgSend_userInfo(v20, v33, v34);
    v38 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(v35, v37, v36);

    v40 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v39, v38, &unk_2885E5C08);
  }

  else
  {
    v40 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v33, v20, &unk_2885E5C20);
    v38 = v20;
  }

  v20 = v40;
  if (error)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v18;
}

- (TSUZipFileArchive)zipArchive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276AF06CC;
  v9 = sub_276AF06DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AF129C;
  v4[3] = &unk_27A6E73F8;
  v4[4] = &v5;
  objc_msgSend_peformSynchronousAccessToZipArchive_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)peformSynchronousAccessToZipArchive:(id)archive
{
  archiveCopy = archive;
  v5 = archiveCopy;
  if (archiveCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276AF1354;
    v7[3] = &unk_27A6E4C58;
    v7[4] = self;
    v8 = archiveCopy;
    dispatch_sync(accessQueue, v7);
  }
}

- (BOOL)reloadZipArchiveIfNeededWithURLImpl:(id)impl isLazyLoading:(BOOL)loading forceReload:(BOOL)reload error:(id *)error
{
  reloadCopy = reload;
  implCopy = impl;
  dispatch_assert_queue_V2(self->_accessQueue);
  if (objc_msgSend_isValid(self->_zipArchive, v11, v12))
  {
    v13 = !reloadCopy;
  }

  else
  {
    v13 = 0;
  }

  if (v13 || (v14 = objc_opt_class(), (objc_msgSend_hasZipArchive(v14, v15, v16) & 1) == 0))
  {
    v20 = 1;
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_276AF06CC;
    v41 = sub_276AF06DC;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_276AF06CC;
    v35 = sub_276AF06DC;
    v36 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276AF1688;
    aBlock[3] = &unk_27A6E7448;
    loadingCopy = loading;
    aBlock[4] = self;
    aBlock[5] = &v37;
    aBlock[6] = &v43;
    aBlock[7] = &v31;
    v17 = _Block_copy(aBlock);
    v18 = v17;
    if (implCopy)
    {
      (*(v17 + 2))(v17, implCopy);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_fileCoordinatorDelegate);
      objc_msgSend_performReadUsingAccessor_(WeakRetained, v22, v18);
    }

    v23 = v44;
    if (*(v44 + 24) == 1)
    {
      zipArchive = self->_zipArchive;
      v25 = v32[5];
      v26 = (v38 + 5);
      obj = v38[5];
      v20 = objc_msgSend_didReloadZipArchive_packageURL_error_(self, v19, zipArchive, v25, &obj);
      objc_storeStrong(v26, obj);
      v23 = v44;
    }

    else
    {
      v20 = 0;
    }

    *(v23 + 24) = v20;
    if (error && (v20 & 1) == 0)
    {
      *error = v38[5];
      v20 = *(v44 + 24);
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v43, 8);
  }

  return v20 & 1;
}

- (void)setZipArchive:(id)archive fileCoordinatorDelegate:(id)delegate
{
  archiveCopy = archive;
  delegateCopy = delegate;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AF1BE8;
  block[3] = &unk_27A6E29B0;
  block[4] = self;
  v12 = archiveCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = archiveCopy;
  dispatch_async(accessQueue, block);
}

- (NSError)lastReloadError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276AF06CC;
  v10 = sub_276AF06DC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276AF1D3C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)componentLocators
{
  v3 = objc_msgSend_componentZipArchive(self, a2, v2);
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276AF1E58;
  v10[3] = &unk_27A6E7470;
  v5 = v4;
  v11 = v5;
  objc_msgSend_enumerateEntriesUsingBlock_(v3, v6, v10);
  v8 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v7, v5);

  return v8;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  if (!locatorCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 504, 0, "Invalid parameter not satisfying: %{public}s", "locator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (archiveCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 505, 0, "Components outside the object archive are not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_componentZipArchive(self, v6, v7);
  v25 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v24, locatorCopy);
  v27 = objc_msgSend_entryForName_(v23, v26, v25);
  if (v27)
  {
    v28 = [TSPPackageEntryInfo alloc];
    v31 = objc_msgSend_size(v27, v29, v30);
    v34 = objc_msgSend_lastModificationDate(v27, v32, v33);
    v37 = objc_msgSend_CRC(v27, v35, v36);
    ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v28, v38, v31, v34, v37);
  }

  else
  {
    ModificationDate_CRC = 0;
  }

  return ModificationDate_CRC;
}

- (id)newCompressionReadChannelWithReadChannel:(id)channel compressionAlgorithm:(int64_t)algorithm
{
  channelCopy = channel;
  v6 = channelCopy;
  v7 = 0;
  if (algorithm > 2)
  {
    switch(algorithm)
    {
      case 3:
        v15 = objc_alloc(MEMORY[0x277D81188]);
        Channel_compressionAlgorithm_operation = objc_msgSend_initWithReadChannel_compressionAlgorithm_operation_(v15, v16, v6, 517, 1);
        goto LABEL_14;
      case 4:
        v17 = objc_alloc(MEMORY[0x277D81188]);
        Channel_compressionAlgorithm_operation = objc_msgSend_initWithReadChannel_compressionAlgorithm_operation_(v17, v18, v6, 774, 1);
        goto LABEL_14;
      case 5:
        v11 = objc_alloc(MEMORY[0x277D81188]);
        Channel_compressionAlgorithm_operation = objc_msgSend_initWithReadChannel_compressionAlgorithm_operation_(v11, v12, v6, 2049, 1);
        goto LABEL_14;
    }
  }

  else
  {
    switch(algorithm)
    {
      case 0:
        v13 = [TSPSnappyReadChannel alloc];
        Channel_compressionAlgorithm_operation = objc_msgSend_initWithReadChannel_(v13, v14, v6);
        goto LABEL_14;
      case 1:
        Channel_compressionAlgorithm_operation = channelCopy;
        goto LABEL_14;
      case 2:
        v8 = objc_alloc(MEMORY[0x277D81188]);
        Channel_compressionAlgorithm_operation = objc_msgSend_initWithReadChannel_compressionAlgorithm_operation_(v8, v9, v6, 256, 1);
LABEL_14:
        v7 = Channel_compressionAlgorithm_operation;
        break;
    }
  }

  return v7;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  archiveCopy = archive;
  locatorCopy = locator;
  if (!locatorCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 568, 0, "Invalid parameter not satisfying: %{public}s", "locator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (archiveCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 569, 0, "Components outside the object archive are not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v25 = objc_msgSend_componentZipArchive(self, v8, v9);
  v27 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v26, locatorCopy);
  v30 = objc_msgSend_entryForName_(v25, v28, v27);
  if (v30)
  {
    v31 = objc_msgSend_streamReadChannelForEntry_(v25, v29, v30);
    if (v31)
    {
      v32 = 0;
      goto LABEL_15;
    }

    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6D6C();
    }
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6D80();
  }

  v33 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v29, 0);
  v32 = v33;
  if (error)
  {
    v34 = v33;
    v31 = 0;
    *error = v32;
  }

  else
  {
    v31 = 0;
  }

LABEL_15:

  return v31;
}

- (void)copyComponent:(id)component toPackageURL:(id)l packageLocator:(id)locator zipFileWriter:(id)writer encryptionKey:(id)key canLink:(BOOL)link completion:(id)completion
{
  componentCopy = component;
  lCopy = l;
  locatorCopy = locator;
  writerCopy = writer;
  keyCopy = key;
  completionCopy = completion;
  v71 = lCopy;
  if (!componentCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 598, 0, "Invalid parameter not satisfying: %{public}s", "component");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  isStoredOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(componentCopy, v16, v17);
  if (isStoredOutsideObjectArchive)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 601, 0, "Components outside the object archive are not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  v38 = objc_msgSend_locator(componentCopy, v26, v27);
  if (!v38)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]");
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 604, 0, "invalid nil value for '%{public}s'", "packageLocator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
  }

  v46 = objc_msgSend_componentZipArchive(self, v36, v37);
  v48 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v47, v38);
  v50 = objc_msgSend_entryForName_(v46, v49, v48);
  v52 = v50;
  if (!v46 || v50)
  {
    if (v46)
    {
      isStoredOutsideObjectArchive_error = objc_msgSend_streamReadChannelForEntry_(v46, v51, v50);
      v70 = 0;
      if (!isStoredOutsideObjectArchive_error)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v75 = 0;
      isStoredOutsideObjectArchive_error = objc_msgSend_newRawReadChannelForComponentLocator_isStoredOutsideObjectArchive_error_(self, v51, v38, isStoredOutsideObjectArchive, &v75);
      v70 = v75;
      if (!isStoredOutsideObjectArchive_error)
      {
        goto LABEL_19;
      }
    }

    decryptionKey = self->_decryptionKey;
    if ((SFUEqualCryptoKeys() & 1) != 0 || (v56 = [TSPCryptoTranscodeReadChannel alloc], Channel_decryptionInfo_encryptionInfo = objc_msgSend_initWithReadChannel_decryptionInfo_encryptionInfo_(v56, v57, isStoredOutsideObjectArchive_error, self->_decryptionKey, keyCopy), isStoredOutsideObjectArchive_error, v52, v52 = 0, (isStoredOutsideObjectArchive_error = Channel_decryptionInfo_encryptionInfo) != 0))
    {
      v59 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v55, locatorCopy);
      v62 = objc_msgSend_lastModificationDate(componentCopy, v60, v61);
      v65 = objc_msgSend_size(v52, v63, v64);
      v68 = objc_msgSend_CRC(v52, v66, v67);
      objc_msgSend_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_completion_(writerCopy, v69, v59, 1, v62, v65, v68, isStoredOutsideObjectArchive_error, completionCopy);

      goto LABEL_22;
    }

LABEL_19:
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD6DA8();
      if (!completionCopy)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (completionCopy)
    {
LABEL_21:
      completionCopy[2](completionCopy, 0, v70);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6D94();
    if (!completionCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (completionCopy)
  {
LABEL_11:
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_23:
}

- (void)enumerateDataUsingBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_packageDatas;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
    if (v7)
    {
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v9), &v16);
        if (v16)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v12, v17, 16);
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackage packageEntryInfoAtRelativePath:error:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 662, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSPPackage packageEntryInfoAtRelativePath:error:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)hasDataAtRelativePath:(id)path
{
  pathCopy = path;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPPackage hasDataAtRelativePath:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 684, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPPackage hasDataAtRelativePath:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (NSString)passwordHint
{
  v2 = MEMORY[0x277D810F8];
  v3 = objc_msgSend_dataAtRelativePath_allowDecryption_error_(self, a2, @".iwph", 0, 0);
  v5 = objc_msgSend_decodePassphraseHint_(v2, v4, v3);

  return v5;
}

- (id)keyFromPassword:(id)password
{
  passwordCopy = password;
  v7 = objc_msgSend_passwordVerifier(self, v5, v6);
  v9 = objc_msgSend_keyFromPassword_passwordVerifier_(self, v8, passwordCopy, v7);

  return v9;
}

- (id)keyFromPassword:(id)password passwordVerifier:(id)verifier
{
  passwordCopy = password;
  verifierCopy = verifier;
  v7 = verifierCopy;
  inited = 0;
  if (passwordCopy && verifierCopy)
  {
    v9 = objc_alloc(MEMORY[0x277D810F0]);
    v11 = objc_msgSend_iterationCountFromPassphraseVerifier_(MEMORY[0x277D810F8], v10, v7);
    v13 = objc_msgSend_saltFromVerifier_saltLength_(MEMORY[0x277D810F8], v12, v7, *MEMORY[0x277D81398]);
    inited = objc_msgSend_initAes128KeyFromPassphrase_iterationCount_saltData_(v9, v14, passwordCopy, v11, v13);
  }

  return inited;
}

- (BOOL)checkPassword:(id)password
{
  passwordCopy = password;
  v7 = objc_msgSend_passwordVerifier(self, v5, v6);
  v10 = objc_msgSend_keyFromPassword_passwordVerifier_(self, v8, passwordCopy, v7);
  if (v10)
  {
    v11 = objc_msgSend_checkKey_againstPassphraseVerifier_(MEMORY[0x277D810F8], v9, v10, v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)zipArchiveURLFromPackageURL:(id)l
{
  lCopy = l;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSPPackage zipArchiveURLFromPackageURL:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 726, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "+[TSPPackage zipArchiveURLFromPackageURL:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

+ (unint64_t)zipArchiveOptions
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSPPackage zipArchiveOptions]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 730, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "+[TSPPackage zipArchiveOptions]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date
{
  pathCopy = path;
  infoCopy = info;
  lCopy = l;
  v12 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPPackage newDataStorageAtRelativePath:decryptionInfo:materializedLength:packageURL:lastModificationDate:]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v17 = objc_opt_class();
  v30 = NSStringFromClass(v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v14, v16, 735, 0, "Abstract method not overridden by %{public}@", v30);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  v21 = MEMORY[0x277CBEAD8];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v26 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v24, "[TSPPackage newDataStorageAtRelativePath:decryptionInfo:materializedLength:packageURL:lastModificationDate:]");
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v21, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (id)newRawDataReadChannelAtRelativePath:(id)path
{
  pathCopy = path;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPPackage newRawDataReadChannelAtRelativePath:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 740, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPPackage newRawDataReadChannelAtRelativePath:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error
{
  lCopy = l;
  providerCopy = provider;
  v8 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPPackage newDocumentPropertiesWithURL:zipProvider:error:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v10, v12, 744, 0, "Abstract method not overridden by %{public}@", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v23 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v21, "[TSPPackage newDocumentPropertiesWithURL:zipProvider:error:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l
{
  lCopy = l;
  v6 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]");
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackage.mm");
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v8, v10, 748, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v21 = objc_msgSend_stringWithFormat_(v17, v20, @"Abstract method not overridden by %@: %s", v19, "[TSPPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

@end