@interface TSPFilePackage
+ (BOOL)isValidOrEmptyPackageOrTangierEditingFormatAtURL:(id)l hasNativeUTI:(BOOL)i;
+ (BOOL)isValidPackageAtURL:(id)l;
+ (BOOL)isValidPackageAtZipArchive:(id)archive;
+ (BOOL)isValidTangierEditingFormatAtURL:(id)l;
+ (BOOL)isValidTangierEditingFormatAtZipArchive:(id)archive;
- (BOOL)didReloadZipArchive:(id)archive packageURL:(id)l error:(id *)error;
- (BOOL)hasDataAtRelativePath:(id)path;
- (id)componentZipArchive;
- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date;
- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error;
- (id)newRawDataReadChannelAtRelativePath:(id)path;
- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error;
@end

@implementation TSPFilePackage

+ (BOOL)isValidPackageAtZipArchive:(id)archive
{
  archiveCopy = archive;
  v5 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v4, @"Metadata");
  v8 = objc_msgSend_entryForName_(archiveCopy, v6, v5);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_entryForName_(archiveCopy, v7, @"Index.zip");
    v9 = v10 != 0;
  }

  return v9;
}

+ (BOOL)isValidTangierEditingFormatAtZipArchive:(id)archive
{
  v3 = objc_msgSend_entryForName_(archive, a2, @"index.db");
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isValidPackageAtURL:(id)l
{
  lCopy = l;
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v5, 0))
  {
    v7 = objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v6, lCopy, 5, 0);
    isValidPackageAtZipArchive = objc_msgSend_isValidPackageAtZipArchive_(self, v8, v7);
  }

  else
  {
    isValidPackageAtZipArchive = 0;
  }

  return isValidPackageAtZipArchive;
}

+ (BOOL)isValidTangierEditingFormatAtURL:(id)l
{
  lCopy = l;
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v5, 0))
  {
    v8 = objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v6, lCopy, 5, 0);
    if (v8)
    {
      isValidTangierEditingFormatAtZipArchive = objc_msgSend_isValidTangierEditingFormatAtZipArchive_(self, v7, v8);
    }

    else
    {
      isValidTangierEditingFormatAtZipArchive = 0;
    }
  }

  else
  {
    isValidTangierEditingFormatAtZipArchive = 0;
  }

  return isValidTangierEditingFormatAtZipArchive;
}

+ (BOOL)isValidOrEmptyPackageOrTangierEditingFormatAtURL:(id)l hasNativeUTI:(BOOL)i
{
  iCopy = i;
  lCopy = l;
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v7, 0))
  {
    v10 = objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v8, lCopy, 5, 0);
    if (v10)
    {
      if (objc_msgSend_isValidPackageAtZipArchive_(self, v9, v10))
      {
        LOBYTE(isValidTangierEditingFormatAtZipArchive) = 1;
      }

      else
      {
        isValidTangierEditingFormatAtZipArchive = objc_msgSend_isValidTangierEditingFormatAtZipArchive_(self, v11, v10);
        if (((isValidTangierEditingFormatAtZipArchive | !iCopy) & 1) == 0)
        {
          isValidTangierEditingFormatAtZipArchive = objc_msgSend_hasNonEmptyEntries(v10, v13, v14) ^ 1;
        }
      }
    }

    else
    {
      LOBYTE(isValidTangierEditingFormatAtZipArchive) = 0;
    }
  }

  else
  {
    LOBYTE(isValidTangierEditingFormatAtZipArchive) = 0;
  }

  return isValidTangierEditingFormatAtZipArchive;
}

- (BOOL)didReloadZipArchive:(id)archive packageURL:(id)l error:(id *)error
{
  archiveCopy = archive;
  lCopy = l;
  v53.receiver = self;
  v53.super_class = TSPFilePackage;
  v54 = 0;
  v10 = [(TSPPackage *)&v53 didReloadZipArchive:archiveCopy packageURL:lCopy error:&v54];
  v12 = v54;
  v13 = !v10;
  if (!archiveCopy)
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v14 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v11, @"Metadata");
    v16 = objc_msgSend_entryForName_(archiveCopy, v15, v14);

    if (v16)
    {
      v18 = archiveCopy;
      componentZipArchive = self->_componentZipArchive;
      self->_componentZipArchive = v18;
LABEL_6:
      v10 = 1;
LABEL_7:

      goto LABEL_8;
    }

    v23 = objc_msgSend_entryForName_(archiveCopy, v17, @"Index.zip");
    componentZipArchive = v23;
    if (!v23)
    {
      if (*MEMORY[0x277D81408] == -1)
      {
        v10 = 0;
        goto LABEL_7;
      }

      sub_276BD6C7C();
LABEL_33:
      v10 = 0;
      goto LABEL_7;
    }

    if (objc_msgSend_isCompressed(v23, v24, v25))
    {
      v27 = objc_alloc(MEMORY[0x277D81350]);
      v52 = v12;
      v29 = objc_msgSend_initWithError_(v27, v28, &v52);
      v30 = v52;

      componentZipArchiveTemporaryDirectory = self->_componentZipArchiveTemporaryDirectory;
      self->_componentZipArchiveTemporaryDirectory = v29;

      v34 = self->_componentZipArchiveTemporaryDirectory;
      if (v34)
      {
        v35 = v30;
        v36 = objc_msgSend_URL(v34, v32, v33);
        v38 = objc_msgSend_URLByAppendingPathComponent_(v36, v37, @"Index.zip");

        if (UnsafePointer != -1)
        {
          sub_276BD6C2C();
        }

        v40 = v35;
        v51 = v35;
        v41 = objc_msgSend_tsp_writeZipEntry_toURL_validateCRC_error_(archiveCopy, v39, componentZipArchive, v38, 0, &v51);
        v42 = v51;

        if (v41)
        {
          v50 = v42;
          v44 = objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v43, v38, 0, &v50);
          v12 = v50;

          if (v44)
          {
            v45 = self->_componentZipArchive;
            self->_componentZipArchive = v44;

            goto LABEL_6;
          }
        }

        else
        {
          v12 = v42;
        }

        v48 = self->_componentZipArchiveTemporaryDirectory;
        self->_componentZipArchiveTemporaryDirectory = 0;

        goto LABEL_29;
      }
    }

    else
    {
      v49 = v12;
      v46 = objc_msgSend_containedZipArchiveForEntry_options_error_(archiveCopy, v26, componentZipArchive, 0, &v49);
      v30 = v49;

      if (v46)
      {
        v47 = self->_componentZipArchive;
        self->_componentZipArchive = v46;

        v10 = 1;
        v12 = v30;
        goto LABEL_7;
      }
    }

    v12 = v30;
LABEL_29:
    if (*MEMORY[0x277D81408] == -1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    sub_276BD6C54();
    goto LABEL_33;
  }

LABEL_8:
  if (error && !v10)
  {
    if (v12)
    {
      v20 = v12;
      *error = v12;
    }

    else
    {
      v21 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      *error = v21;
    }
  }

  return v10;
}

- (id)componentZipArchive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_276AE98F4;
  v9 = sub_276AE9904;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AE990C;
  v4[3] = &unk_27A6E7128;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_peformSynchronousAccessToZipArchive_(self, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)newDataStorageAtRelativePath:(id)path decryptionInfo:(id)info materializedLength:(unint64_t)length packageURL:(id)l lastModificationDate:(id *)date
{
  pathCopy = path;
  infoCopy = info;
  v13 = [TSPFilePackageDataStorage alloc];
  v15 = objc_msgSend_initWithPath_package_decryptionInfo_materializedLength_(v13, v14, pathCopy, self, infoCopy, length);
  v18 = v15;
  if (date && v15)
  {
    v19 = objc_msgSend_zipArchive(self, v16, v17);
    v21 = objc_msgSend_entryForName_(v19, v20, pathCopy);
    *date = objc_msgSend_lastModificationDate(v21, v22, v23);
  }

  return v18;
}

- (id)packageEntryInfoAtRelativePath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPFilePackage packageEntryInfoAtRelativePath:error:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 186, 0, "Invalid parameter not satisfying: %{public}s", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_zipArchive(self, v6, v7);
  v19 = objc_msgSend_entryForName_(v16, v17, pathCopy);
  if (v19)
  {
    v20 = [TSPPackageEntryInfo alloc];
    v23 = objc_msgSend_size(v19, v21, v22);
    v26 = objc_msgSend_lastModificationDate(v19, v24, v25);
    v29 = objc_msgSend_CRC(v19, v27, v28);
    ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v20, v30, v23, v26, v29);
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, *MEMORY[0x277CCA050], 4, 0);
    *error = ModificationDate_CRC = 0;
  }

  else
  {
    ModificationDate_CRC = 0;
  }

  return ModificationDate_CRC;
}

- (id)newRawDataReadChannelAtRelativePath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_zipArchive(self, v5, v6);
  v10 = objc_msgSend_entryForName_(v7, v8, pathCopy);
  if (v10)
  {
    v11 = objc_msgSend_streamReadChannelForEntry_(v7, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasDataAtRelativePath:(id)path
{
  pathCopy = path;
  v7 = objc_msgSend_zipArchive(self, v5, v6);
  v9 = objc_msgSend_entryForName_(v7, v8, pathCopy);
  v10 = v9 != 0;

  return v10;
}

- (id)newDocumentPropertiesWithURL:(id)l zipProvider:(id)provider error:(id *)error
{
  lCopy = l;
  providerCopy = provider;
  v9 = providerCopy[2](providerCopy, error);
  if (v9)
  {
    v10 = [TSPDocumentProperties alloc];
    v12 = objc_msgSend_initWithFilePackageURL_zipArchive_allowMissingPropertyList_error_(v10, v11, lCopy, v9, 0, error);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end