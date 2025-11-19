@interface TSPPackageDataReader
- (BOOL)isValid;
- (BOOL)setPassphrase:(id)a3;
- (CGDataProvider)newCGDataProviderAtRelativePath:(id)a3;
- (CGImage)newCGImageAtRelativePath:(id)a3;
- (CGImageSource)newCGImageSourceAtRelativePath:(id)a3;
- (SFUCryptoKey)lastDecryptionKeyAttempted;
- (TSPPackageDataReader)init;
- (TSPPackageDataReader)initWithURL:(id)a3 decryptionKey:(id)a4;
- (const)infoForDigest:(id)a3;
- (id).cxx_construct;
- (id)decryptionInfoForDataWithDigest:(id)a3;
- (id)newDataCopyInputStreamProviderWithDigest:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)newDataCopyReadChannelProviderWithDigest:(id)a3 encryptionInfo:(id)a4 length:(unint64_t *)a5 error:(id *)a6;
- (id)newDataCopyURLProviderWithDigest:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)relativePathForDataWithDigest:(id)a3;
@end

@implementation TSPPackageDataReader

- (TSPPackageDataReader)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageDataReader init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageDataReader.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 44, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageDataReader init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageDataReader)initWithURL:(id)a3 decryptionKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = TSPPackageDataReader;
  v9 = [(TSPPackageDataReader *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    v12 = objc_msgSend_newLazyPackageWithURL_packageIdentifier_decryptionKey_fileCoordinatorDelegate_(TSPPackage, v11, v7, 1, v8, v10);
    package = v10->_package;
    v10->_package = v12;

    v14 = objc_alloc_init(MEMORY[0x277D812A0]);
    dataInfosDispatchOnce = v10->_dataInfosDispatchOnce;
    v10->_dataInfosDispatchOnce = v14;
  }

  return v10;
}

- (BOOL)isValid
{
  v4 = objc_msgSend_packageType(self->_package, a2, v2);
  if (v4 == 2)
  {
    v9 = objc_msgSend_zipArchive(self->_package, v5, v6);
    isValidPackageAtZipArchive = objc_msgSend_isValidPackageAtZipArchive_(TSPFilePackage, v10, v9);

    return isValidPackageAtZipArchive;
  }

  if (v4 != 1)
  {
    return 0;
  }

  if (objc_msgSend_isValidPackageAtURL_(TSPDirectoryPackage, v5, self->_URL))
  {
    return 1;
  }

  URL = self->_URL;

  return objc_msgSend_isValidPackageAtURL_(TSPExpandedDirectoryPackage, v7, URL);
}

- (BOOL)setPassphrase:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_checkPassword_(self, v5, v4);
  if (v8)
  {
    v9 = objc_msgSend_copy(v4, v6, v7);
    lastPasswordAttempted = self->_lastPasswordAttempted;
    self->_lastPasswordAttempted = v9;
  }

  return v8;
}

- (SFUCryptoKey)lastDecryptionKeyAttempted
{
  lastPasswordAttempted = self->_lastPasswordAttempted;
  if (lastPasswordAttempted)
  {
    v4 = objc_msgSend_keyFromPassword_(self->_package, a2, lastPasswordAttempted);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (const)infoForDigest:(id)a3
{
  v4 = a3;
  dataInfosDispatchOnce = self->_dataInfosDispatchOnce;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A9B80C;
  v13[3] = &unk_27A6E2898;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  objc_msgSend_performBlockOnce_(dataInfosDispatchOnce, v7, v13);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  objc_msgSend_saveToProtobufString_(v6, v8, __p);
  v15 = __p;
  v9 = sub_276A9C458(&self->_dataInfos, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return (v9 + 56);
}

- (id)relativePathForDataWithDigest:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_infoForDigest_(self, v5, v4);
  if ((*(v7 + 16) & 2) != 0)
  {
    v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(v7 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v11 = v9;
    if ((*(v7 + 16) & 4) != 0)
    {
      v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v10, *(v7 + 40) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v12 = v9;
    }

    v14 = v12;
    if (!v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPPackageDataReader relativePathForDataWithDigest:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageDataReader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 161, 0, "invalid nil value for '%{public}s'", "packageFilename");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v8 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v13, v14);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decryptionInfoForDataWithDigest:(id)a3
{
  v4 = objc_msgSend_infoForDigest_(self, a2, a3);
  v7 = objc_msgSend_decryptionKey(self->_package, v5, v6);
  v9 = v7;
  v10 = *(v4 + 16);
  if (v7)
  {
    if ((v10 & 0x200) != 0)
    {
      v11 = sub_276AB6E08(v7, *(v4 + 96));
    }

    else
    {
      v11 = v7;
    }

    v19 = v11;
  }

  else
  {
    if ((v10 & 0x200) != 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPPackageDataReader decryptionInfoForDataWithDigest:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageDataReader.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 177, 0, "Encryption info should not be set when the document it not encrypted.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = 0;
  }

  return v19;
}

- (CGDataProvider)newCGDataProviderAtRelativePath:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasDataAtRelativePath_(self, v5, v4))
  {
    package = self->_package;
    v9 = objc_msgSend_decryptionKey(package, v6, v7);
    ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(package, v10, v4, v9, -1, self->_URL, 0);

    v14 = objc_msgSend_newCGDataProvider(ModificationDate, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGImageSource)newCGImageSourceAtRelativePath:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasDataAtRelativePath_(self, v5, v4))
  {
    package = self->_package;
    v9 = objc_msgSend_decryptionKey(package, v6, v7);
    ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(package, v10, v4, v9, -1, self->_URL, 0);

    v14 = objc_msgSend_newCGImageSource(ModificationDate, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGImage)newCGImageAtRelativePath:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasDataAtRelativePath_(self, v5, v4) && (v7 = objc_msgSend_newCGImageSourceAtRelativePath_(self, v6, v4), (v8 = v7) != 0))
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    CFRelease(v8);
  }

  else
  {
    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

- (id)newDataCopyURLProviderWithDigest:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v11 = objc_msgSend_relativePathForDataWithDigest_(self, v10, v8);
  package = self->_package;
  v14 = objc_msgSend_decryptionInfoForDataWithDigest_(self, v13, v8);
  ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(package, v15, v11, v14, -1, self->_URL, 0);

  if (ModificationDate)
  {
    URL = self->_URL;
    v23 = 0;
    v19 = objc_msgSend_newDataCopyURLProviderWithDocumentURL_encryptionInfo_error_(ModificationDate, v17, URL, v9, &v23);
    v20 = v23;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (!(v19 | v20))
  {
    v20 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v17, 0);
  }

  if (a5)
  {
    v21 = v20;
    *a5 = v20;
  }

  return v19;
}

- (id)newDataCopyReadChannelProviderWithDigest:(id)a3 encryptionInfo:(id)a4 length:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v13 = objc_msgSend_relativePathForDataWithDigest_(self, v12, v10);
  package = self->_package;
  v16 = objc_msgSend_decryptionInfoForDataWithDigest_(self, v15, v10);
  ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(package, v17, v13, v16, -1, self->_URL, 0);

  if (!ModificationDate)
  {
    v22 = 0;
    v23 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  URL = self->_URL;
  v26 = 0;
  v22 = objc_msgSend_newDataCopyReadChannelProviderWithDocumentURL_encryptionInfo_error_(ModificationDate, v19, URL, v11, &v26);
  v23 = v26;
  if (a5)
  {
LABEL_5:
    *a5 = objc_msgSend_length(ModificationDate, v19, v20);
  }

LABEL_6:
  if (!(v22 | v23))
  {
    v23 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v19, 0);
  }

  if (a6)
  {
    v24 = v23;
    *a6 = v23;
  }

  return v22;
}

- (id)newDataCopyInputStreamProviderWithDigest:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v27 = 0;
  objc_opt_class();
  v26 = 0;
  v11 = objc_msgSend_newDataCopyReadChannelProviderWithDigest_encryptionInfo_length_error_(self, v10, v8, v9, &v27, &v26);
  v12 = v26;
  v13 = TSUDynamicCast();

  if (v13)
  {
    v16 = objc_msgSend_readChannel(v13, v14, v15);

    if (v16)
    {
      v19 = MEMORY[0x277CBEAE0];
      v20 = objc_msgSend_readChannel(v13, v17, v18);
      v22 = objc_msgSend_tsu_inputStreamWithReadChannel_length_(v19, v21, v20, v27);
      objc_msgSend_setInputStreamInternal_(v13, v23, v22);
    }
  }

  if (a5)
  {
    v24 = v12;
    *a5 = v12;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  return self;
}

@end