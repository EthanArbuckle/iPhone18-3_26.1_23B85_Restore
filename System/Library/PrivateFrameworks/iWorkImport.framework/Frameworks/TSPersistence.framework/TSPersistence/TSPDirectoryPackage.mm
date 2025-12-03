@interface TSPDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)l;
+ (id)componentFileURLForPackageURL:(id)l packageLocator:(id)locator;
+ (id)objectArchiveURLForPackageURL:(id)l;
+ (id)zipArchiveURLFromPackageURL:(id)l;
- (BOOL)hasDataAtRelativePath:(id)path;
- (id)dataAtRelativePath:(id)path allowDecryption:(BOOL)decryption error:(id *)error;
- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date;
- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error;
- (id)newRawDataReadChannelAtRelativePath:(id)path;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l;
@end

@implementation TSPDirectoryPackage

+ (id)objectArchiveURLForPackageURL:(id)l
{
  v3 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(l, a2, @"Index.zip", 0);

  return v3;
}

+ (id)componentFileURLForPackageURL:(id)l packageLocator:(id)locator
{
  lCopy = l;
  v7 = objc_msgSend_stringByAppendingPathExtension_(locator, v6, @"iwa");
  v9 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v8, v7);

  return v9;
}

+ (BOOL)isValidPackageAtURL:(id)l
{
  v3 = objc_msgSend_objectArchiveURLForPackageURL_(self, a2, l);
  v5 = objc_msgSend_checkResourceIsReachableAndReturnError_(v3, v4, 0);

  return v5;
}

+ (id)zipArchiveURLFromPackageURL:(id)l
{
  v3 = objc_msgSend_objectArchiveURLForPackageURL_(self, a2, l);

  return v3;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  archiveCopy = archive;
  locatorCopy = locator;
  v9 = locatorCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_2769D33A0;
  v31 = sub_2769D33B0;
  v32 = 0;
  if (archiveCopy)
  {
    if (!locatorCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPDirectoryPackage packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 59, 0, "Invalid parameter not satisfying: %{public}s", "locator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    v17 = objc_msgSend_fileCoordinatorDelegate(self, v7, v8);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2769D33B8;
    v24[3] = &unk_27A6E3AC8;
    v25 = v9;
    v26 = &v27;
    objc_msgSend_performReadUsingAccessor_(v17, v18, v24);

    v19 = v25;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = TSPDirectoryPackage;
    v20 = [(TSPPackage *)&v23 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0];
    v19 = v28[5];
    v28[5] = v20;
  }

  v21 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v21;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  archiveCopy = archive;
  locatorCopy = locator;
  v11 = locatorCopy;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_2769D33A0;
  v42 = sub_2769D33B0;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_2769D33A0;
  v36 = sub_2769D33B0;
  v37 = 0;
  if (archiveCopy)
  {
    if (!locatorCopy)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackage newRawReadChannelForComponentLocator:isStoredOutsideObjectArchive:error:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 87, 0, "invalid nil value for '%{public}s'", "locator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = objc_msgSend_fileCoordinatorDelegate(self, v9, v10);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2769D3868;
    v28[3] = &unk_27A6E3AF0;
    v29 = v11;
    v30 = &v38;
    v31 = &v32;
    objc_msgSend_performReadUsingAccessor_(v19, v20, v28);

    v21 = v29;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = TSPDirectoryPackage;
    obj = 0;
    v22 = [(TSPPackage *)&v26 newRawReadChannelForComponentLocator:locatorCopy isStoredOutsideObjectArchive:0 error:&obj];
    objc_storeStrong(&v37, obj);
    v21 = v39[5];
    v39[5] = v22;
  }

  v23 = v39[5];
  if (error && !v23)
  {
    *error = v33[5];
    v23 = v39[5];
  }

  v24 = v23;
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  return v24;
}

- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date
{
  pathCopy = path;
  infoCopy = info;
  lCopy = l;
  v15 = [TSPDirectoryPackageDataStorage alloc];
  v17 = objc_msgSend_initWithPath_package_decryptionInfo_materializedLength_(v15, v16, pathCopy, self, infoCopy, length);
  v19 = v17;
  if (date && v17)
  {
    v20 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(lCopy, v18, pathCopy, 0);
    v29 = 0;
    v21 = *MEMORY[0x277CBE7B0];
    v28 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v20, v22, &v29, v21, &v28);
    v24 = v29;
    v25 = v28;
    if ((ResourceValue_forKey_error & 1) == 0)
    {

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD1598();
      }

      v24 = 0;
    }

    v26 = v24;
    *date = v24;
  }

  return v19;
}

- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDirectoryPackage packageEntryInfoAtRelativePath:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 180, 0, "Invalid parameter not satisfying: %{public}s", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_2769D33A0;
  v36 = sub_2769D33B0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_2769D33A0;
  v30 = sub_2769D33B0;
  v31 = 0;
  v16 = objc_msgSend_fileCoordinatorDelegate(self, v6, v7);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2769D4554;
  v22[3] = &unk_27A6E3AF0;
  v17 = pathCopy;
  v23 = v17;
  v24 = &v26;
  v25 = &v32;
  objc_msgSend_performReadUsingAccessor_(v16, v18, v22);

  v19 = v33[5];
  if (error && !v19)
  {
    *error = v27[5];
    v19 = v33[5];
  }

  v20 = v19;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v20;
}

- (id)dataAtRelativePath:(id)path allowDecryption:(BOOL)decryption error:(id *)error
{
  decryptionCopy = decryption;
  pathCopy = path;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_2769D33A0;
  v37 = sub_2769D33B0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_2769D33A0;
  v31 = sub_2769D33B0;
  v32 = 0;
  if (decryptionCopy && (objc_msgSend_decryptionKey(self, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v13 = (v28 + 5);
    v12 = v28[5];
    v21.receiver = self;
    v21.super_class = TSPDirectoryPackage;
    obj = v12;
    v14 = [(TSPPackage *)&v21 dataAtRelativePath:pathCopy allowDecryption:1 error:&obj];
    objc_storeStrong(v13, obj);
    v15 = v34[5];
    v34[5] = v14;
  }

  else
  {
    v16 = objc_msgSend_fileCoordinatorDelegate(self, v8, v9);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2769D490C;
    v23[3] = &unk_27A6E3AF0;
    v24 = pathCopy;
    v25 = &v33;
    v26 = &v27;
    objc_msgSend_performReadUsingAccessor_(v16, v17, v23);

    v15 = v24;
  }

  v18 = v34[5];
  if (error && !v18)
  {
    *error = v28[5];
    v18 = v34[5];
  }

  v19 = v18;
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v19;
}

- (id)newRawDataReadChannelAtRelativePath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2769D33A0;
  v19 = sub_2769D33B0;
  v20 = 0;
  v7 = objc_msgSend_fileCoordinatorDelegate(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2769D4B20;
  v12[3] = &unk_27A6E3AC8;
  v8 = pathCopy;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_performReadUsingAccessor_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (BOOL)hasDataAtRelativePath:(id)path
{
  pathCopy = path;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_fileCoordinatorDelegate(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2769D4CD8;
  v11[3] = &unk_27A6E3AC8;
  v8 = pathCopy;
  v12 = v8;
  v13 = &v14;
  objc_msgSend_performReadUsingAccessor_(v7, v9, v11);

  LOBYTE(pathCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return pathCopy;
}

- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error
{
  lCopy = l;
  v7 = [TSPDocumentProperties alloc];
  v9 = objc_msgSend_initWithDocumentURL_allowMissingPropertyList_error_(v7, v8, lCopy, 0, error);

  return v9;
}

- (void)prepareForDocumentReplacementWithSuccess:(BOOL)success forSafeSave:(BOOL)save originalURL:(id)l
{
  successCopy = success;
  lCopy = l;
  v10 = lCopy;
  if (successCopy && objc_msgSend_tsu_volumeRenameOpenFail(lCopy, v8, v9))
  {
    v13 = objc_msgSend_zipArchive(self, v11, v12);
    v38 = 0;
    v15 = objc_msgSend_copyToTemporaryLocationRelativeToURL_error_(v13, v14, v10, &v38);
    v16 = v38;

    if ((v15 & 1) == 0)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPDirectoryPackage prepareForDocumentReplacementWithSuccess:forSafeSave:originalURL:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackage.mm");
      v23 = objc_msgSend_objectArchiveURLForPackageURL_(TSPDirectoryPackage, v22, v10);
      v26 = objc_msgSend_path(v23, v24, v25);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v31 = objc_msgSend_domain(v16, v29, v30);
      v34 = objc_msgSend_code(v16, v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v35, v19, v21, 261, 0, "Failed to copy object archive %@ to temporary location. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v26, v28, v31, v34, v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }
  }
}

@end