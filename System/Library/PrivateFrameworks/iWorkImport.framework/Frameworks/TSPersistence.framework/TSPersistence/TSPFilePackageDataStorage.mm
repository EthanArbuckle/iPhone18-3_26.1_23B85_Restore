@interface TSPFilePackageDataStorage
- (BOOL)isInPackage:(id)a3;
- (BOOL)isLengthPrecise;
- (BOOL)linkOrCopyToURL:(id)a3 encryptionInfo:(id)a4 canLink:(BOOL)a5;
- (TSPFilePackageDataStorage)init;
- (TSPFilePackageDataStorage)initWithPath:(id)a3 package:(id)a4 decryptionInfo:(id)a5 materializedLength:(unint64_t)a6;
- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)streamReadChannelForWriteWithPackageWriter:(id)a3;
- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8;
- (unint64_t)encodedLength;
- (unint64_t)fileFormatVersion;
- (unint64_t)length;
- (unsigned)CRC;
- (void)didInitializeFromDocumentURL:(id)a3;
- (void)performIOChannelReadWithAccessor:(id)a3;
- (void)setEncodedLength:(unint64_t)a3 isMissingData:(BOOL)a4;
@end

@implementation TSPFilePackageDataStorage

- (TSPFilePackageDataStorage)initWithPath:(id)a3 package:(id)a4 decryptionInfo:(id)a5 materializedLength:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = TSPFilePackageDataStorage;
  v15 = [(TSPFilePackageDataStorage *)&v19 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(v10, v13, v14);
    path = v15->_path;
    v15->_path = v16;

    objc_storeStrong(&v15->_decryptionInfo, a5);
    objc_storeWeak(&v15->_package, v11);
    if (a6 != -1)
    {
      atomic_store(a6, &v15->_materializedLength);
    }
  }

  return v15;
}

- (TSPFilePackageDataStorage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPFilePackageDataStorage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 69, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPFilePackageDataStorage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)didInitializeFromDocumentURL:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v7 = objc_msgSend_zipArchive(WeakRetained, v5, v6);
  v20 = objc_msgSend_entryForName_(v7, v8, self->_path);

  atomic_store(objc_msgSend_size(v20, v9, v10), &self->_encodedLength);
  atomic_store(1u, &self->_didCalculateEncodedLength);
  atomic_store(objc_msgSend_CRC(v20, v11, v12), &self->_CRC);
  atomic_store(1u, &self->_didCalculateCRC);
  atomic_store(v20 == 0, &self->_isMissingData);
  v15 = atomic_load(&self->_materializedLength);
  if ((!v15 || v15 == -1) && objc_msgSend_isLengthPrecise(self, v13, v14))
  {
    decryptionInfo = self->_decryptionInfo;
    if (decryptionInfo)
    {
      v19 = objc_msgSend_decodedLength(decryptionInfo, v16, v17);
    }

    else
    {
      v19 = objc_msgSend_size(v20, v16, v17);
    }

    atomic_store(v19, &self->_materializedLength);
  }
}

- (void)setEncodedLength:(unint64_t)a3 isMissingData:(BOOL)a4
{
  atomic_store(a3, &self->_encodedLength);
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  atomic_store(v4, &self->_didCalculateEncodedLength);
  atomic_store(a4, &self->_isMissingData);
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v8 = objc_msgSend_zipArchive(WeakRetained, v6, v7);

  v11 = objc_msgSend_entryForName_(v8, v9, self->_path);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = objc_msgSend_readChannelForEntry_validateCRC_(v8, v10, v11, 0);
  if (!v12)
  {
    if (*MEMORY[0x277D81408] == -1)
    {
      v20 = 0;
      goto LABEL_10;
    }

    sub_276BD6DF8();
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v13 = self->_decryptionInfo;
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277D81168]);
    v17 = objc_msgSend_blockInfos(v13, v15, v16);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276AF7A38;
    v21[3] = &unk_27A6E45C8;
    v22 = v13;
    ChannelBlock = objc_msgSend_initWithReadChannel_blockInfos_streamReadChannelBlock_(v14, v18, v12, v17, v21);

    v12 = ChannelBlock;
  }

  v20 = v12;
LABEL_10:
  v4[2](v4, v20);
}

- (id)streamReadChannelForWriteWithPackageWriter:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v8 = objc_msgSend_zipArchive(WeakRetained, v6, v7);

  v12 = objc_msgSend_entryForName_(v8, v9, self->_path);
  if (v12)
  {
    v13 = objc_msgSend_documentSaveValidationPolicy(v4, v10, v11);
    if (objc_msgSend_validateDataCRC(v13, v14, v15))
    {
      v18 = 1;
    }

    else
    {
      v18 = objc_msgSend_shouldValidateCRCOnWrite(self, v16, v17);
    }

    v20 = objc_msgSend_streamReadChannelForEntry_validateCRC_(v8, v19, v12, v18);
    if (v20)
    {
      goto LABEL_10;
    }

    if (*MEMORY[0x277D81408] == -1)
    {
      v20 = 0;
      goto LABEL_10;
    }

    sub_276BD6E0C();
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v65 = a3;
  v13 = a4;
  v64 = a6;
  LODWORD(v15) = atomic_load(&self->_isMissingData);
  v63 = v8;
  if (((v15 | v8) & 1) != 0 || self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v16 = objc_msgSend_filenameForData_preferredFilename_(v13, v14, v65, v64);
    v19 = objc_msgSend_encryptionKey(v13, v17, v18);
    if (sub_276AB678C(self->_decryptionInfo, v19, 0x100000))
    {
      if (!((v15 | v8) & 1 | (v19 == 0)))
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPFilePackageDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]");
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageDataStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 234, 0, "Encryption info cannot be properly calculated for unmaterialized data due to partially downloaded document because it requires access to the data bytes.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      }

      v28 = v19;
      if (self->_isUnmaterializedDueToPartiallyDownloadedDocument)
      {
        if (UnsafePointer != -1)
        {
          sub_276BD6E5C();
        }

        v16 = 0;
      }
    }

    else
    {
      v28 = self->_decryptionInfo;
    }

    v30 = 0;
    v31 = 0;
    if (v16)
    {
LABEL_12:
      v32 = atomic_load(&self->_materializedLength);
      if (a5 && v32 && v32 != -1)
      {
        *(a5 + 4) |= 0x20000u;
        *(a5 + 18) = v32;
      }

      v33 = [TSPDataStorageWriteResult alloc];
      v35 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v33, v34, v16, v28, 1, v31, (v15 | v63) & 1, 0);
      goto LABEL_37;
    }
  }

  else
  {
    v15 = objc_msgSend_streamReadChannelForWriteWithPackageWriter_(self, v14, v13);
    v61 = v15;
    if (v15)
    {
      decryptionInfo = self->_decryptionInfo;
      v39 = objc_msgSend_encodedLength(self, v36, v37);
      v42 = objc_msgSend_shouldValidateCRCOnWrite(self, v40, v41);
      v66 = 0;
      v44 = objc_msgSend_copyData_withReadChannel_decryptionInfo_size_calculateCRC_preferredFilename_error_(v13, v43, v65, v15, decryptionInfo, v39, v42, v64, &v66);
      v30 = v66;
      if (v44)
      {
        v47 = objc_msgSend_filename(v44, v45, v46);
        v31 = objc_msgSend_encodedLength(v44, v48, v49);
        v28 = objc_msgSend_encryptionInfo(v44, v50, v51);
        v16 = v47;
      }

      else
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6E20();
        }

        v31 = 0;
        v28 = 0;
        v16 = 0;
      }

      objc_msgSend_close(v15, v45, v46);

      LOBYTE(v15) = 0;
    }

    else if (objc_msgSend_updateType(v13, v36, v37) == 2)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD6E48();
      }

      v30 = 0;
      LOBYTE(v15) = 0;
      v31 = 0;
      v28 = 0;
      v16 = 0;
      atomic_store(0, &self->_didCalculateEncodedLength);
      atomic_store(0, &self->_didCalculateCRC);
    }

    else
    {
      v16 = objc_msgSend_filenameForData_preferredFilename_(v13, v52, v65, v64);
      v55 = objc_msgSend_encryptionKey(v13, v53, v54);
      v56 = sub_276AB678C(self->_decryptionInfo, v55, 0x100000);
      v57 = v55;
      if (!v56)
      {
        v57 = self->_decryptionInfo;
      }

      v28 = v57;

      v30 = 0;
      v31 = 0;
      LOBYTE(v15) = 1;
    }

    if (v16)
    {
      goto LABEL_12;
    }
  }

  if (a8)
  {
    if (v30)
    {
      v58 = v30;
      v35 = 0;
      *a8 = v30;
      goto LABEL_37;
    }

    v59 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v29, 0);
    *a8 = v59;
  }

  v35 = 0;
LABEL_37:

  return v35;
}

- (unint64_t)length
{
  decryptionInfo = self->_decryptionInfo;
  if (decryptionInfo && objc_msgSend_hasDecodedLength(decryptionInfo, a2, v2))
  {
    v5 = self->_decryptionInfo;

    return objc_msgSend_decodedLength(v5, a2, v2);
  }

  else
  {

    return objc_msgSend_encodedLength(self, a2, v2);
  }
}

- (BOOL)isLengthPrecise
{
  v3 = objc_msgSend_decryptionInfo(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    hasDecodedLength = objc_msgSend_hasDecodedLength(v3, v4, v5);
  }

  else
  {
    hasDecodedLength = 1;
  }

  return hasDecodedLength;
}

- (unint64_t)encodedLength
{
  v3 = atomic_load(&self->_didCalculateEncodedLength);
  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_package);
    v7 = objc_msgSend_zipArchive(WeakRetained, v5, v6);
    v9 = objc_msgSend_entryForName_(v7, v8, self->_path);
    atomic_store(objc_msgSend_size(v9, v10, v11), &self->_encodedLength);

    atomic_store(1u, &self->_didCalculateEncodedLength);
  }

  return atomic_load(&self->_encodedLength);
}

- (unsigned)CRC
{
  v3 = atomic_load(&self->_didCalculateCRC);
  if ((v3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_package);
    v7 = objc_msgSend_zipArchive(WeakRetained, v5, v6);
    v9 = objc_msgSend_entryForName_(v7, v8, self->_path);
    atomic_store(objc_msgSend_CRC(v9, v10, v11), &self->_CRC);

    atomic_store(1u, &self->_didCalculateCRC);
  }

  return atomic_load(&self->_CRC);
}

- (BOOL)isInPackage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_package);

  return WeakRetained == v4;
}

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v5 = objc_msgSend_fileFormatVersion(WeakRetained, v3, v4);

  return v5;
}

- (BOOL)linkOrCopyToURL:(id)a3 encryptionInfo:(id)a4 canLink:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_streamReadChannelForWriteWithPackageWriter_(self, v9, 0);
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D811D0]);
    v27 = 0;
    v15 = objc_msgSend_initForStreamWritingURL_error_(v13, v14, v7, &v27);
    v16 = v27;
    if (v15)
    {
      decryptionInfo = self->_decryptionInfo;
      v18 = objc_msgSend_encodedLength(self, v10, v11);
      v26 = v16;
      v20 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v19, v12, decryptionInfo, v18, v15, v8, 0, &v26);
      v21 = v26;

      v22 = v15;
      v16 = v21;
    }

    else
    {
      v22 = 0;
      v20 = 0;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v16 = 0;
  }

  objc_msgSend_close(v12, v10, v11);
  objc_msgSend_close(v22, v23, v24);
  if ((v20 & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD6E70();
  }

  return v20;
}

- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_tsu_fileSize(v8, v10, v11);
  v15 = 0;
  if (!v8 || v9)
  {
    goto LABEL_16;
  }

  v16 = v12;
  v17 = objc_msgSend_tsu_volumeSupportsCloning(v8, v13, v14);
  if (v16)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (v20 != 1 || objc_msgSend_length(self, v18, v19) <= v16 >> 1)
  {
    v15 = 0;
LABEL_16:

    v63.receiver = self;
    v63.super_class = TSPFilePackageDataStorage;
    v64 = 0;
    v56 = [(TSPStreamDataStorage *)&v63 newDataCopyReadChannelProviderWithDocumentURL:v8 encryptionInfo:v9 error:&v64];
    v15 = v64;
    goto LABEL_17;
  }

  v25 = objc_msgSend_copy(self->_path, v21, v22);
  if (!v25)
  {
    v35 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  v26 = [TSPDataCopyProviderConcrete alloc];
  v68 = 0;
  v28 = objc_msgSend_initWithDocumentURL_error_(v26, v27, v8, &v68);
  v29 = v68;
  if (!v28)
  {
    v35 = 0;
    goto LABEL_23;
  }

  v30 = objc_msgSend_directory(v28, v23, v24);
  v33 = objc_msgSend_lastPathComponent(v8, v31, v32);
  v35 = objc_msgSend_URLByAppendingPathComponent_(v30, v34, v33);

  if (!v35)
  {
LABEL_23:
    objc_msgSend_cleanUp(0, v23, v24);
    v56 = 0;
    v15 = v29;
    goto LABEL_24;
  }

  v36 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24);
  v62 = v25;
  v67 = v29;
  v38 = objc_msgSend_copyItemAtURL_toURL_error_(v36, v37, v8, v35, &v67);
  v15 = v67;

  if (!v38)
  {
    v29 = v15;
    v25 = v62;
    goto LABEL_23;
  }

  v39 = [TSPTemporaryFileCoordinatorDelegate alloc];
  v61 = objc_msgSend_initWithURL_(v39, v40, v35);
  v59 = objc_msgSend_decryptionInfo(self, v41, v42);
  v25 = v62;
  v45 = objc_msgSend_cryptoKey(v59, v43, v44);
  v60 = objc_msgSend_newLazyPackageWithURL_packageIdentifier_decryptionKey_fileCoordinatorDelegate_(TSPPackage, v46, v35, 1, v45, v61);

  v49 = objc_msgSend_decryptionInfo(self, v47, v48);
  v52 = objc_msgSend_materializedLength(self, v50, v51);
  ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(v60, v53, v62, v49, v52, v35, 0);

  if (ModificationDate)
  {
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_276AF8BD8;
    v65[3] = &unk_27A6E7510;
    v66 = v28;
    objc_msgSend_performIOChannelReadWithAccessor_(ModificationDate, v55, v65);
  }

  v28 = v28;
  v56 = v28;
LABEL_24:

  if (!v56)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (a5)
  {
    v57 = v15;
    *a5 = v15;
  }

  return v56;
}

@end