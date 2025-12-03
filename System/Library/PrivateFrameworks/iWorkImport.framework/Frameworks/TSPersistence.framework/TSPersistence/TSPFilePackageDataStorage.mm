@interface TSPFilePackageDataStorage
- (BOOL)isInPackage:(id)package;
- (BOOL)isLengthPrecise;
- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link;
- (TSPFilePackageDataStorage)init;
- (TSPFilePackageDataStorage)initWithPath:(id)path package:(id)package decryptionInfo:(id)info materializedLength:(unint64_t)length;
- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)l encryptionInfo:(id)info error:(id *)error;
- (id)streamReadChannelForWriteWithPackageWriter:(id)writer;
- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error;
- (unint64_t)encodedLength;
- (unint64_t)fileFormatVersion;
- (unint64_t)length;
- (unsigned)CRC;
- (void)didInitializeFromDocumentURL:(id)l;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)setEncodedLength:(unint64_t)length isMissingData:(BOOL)data;
@end

@implementation TSPFilePackageDataStorage

- (TSPFilePackageDataStorage)initWithPath:(id)path package:(id)package decryptionInfo:(id)info materializedLength:(unint64_t)length
{
  pathCopy = path;
  packageCopy = package;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = TSPFilePackageDataStorage;
  v15 = [(TSPFilePackageDataStorage *)&v19 init];
  if (v15)
  {
    v16 = objc_msgSend_copy(pathCopy, v13, v14);
    path = v15->_path;
    v15->_path = v16;

    objc_storeStrong(&v15->_decryptionInfo, info);
    objc_storeWeak(&v15->_package, packageCopy);
    if (length != -1)
    {
      atomic_store(length, &v15->_materializedLength);
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

- (void)didInitializeFromDocumentURL:(id)l
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

- (void)setEncodedLength:(unint64_t)length isMissingData:(BOOL)data
{
  atomic_store(length, &self->_encodedLength);
  if (length)
  {
    dataCopy = 1;
  }

  else
  {
    dataCopy = data;
  }

  atomic_store(dataCopy, &self->_didCalculateEncodedLength);
  atomic_store(data, &self->_isMissingData);
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
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
  accessorCopy[2](accessorCopy, v20);
}

- (id)streamReadChannelForWriteWithPackageWriter:(id)writer
{
  writerCopy = writer;
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v8 = objc_msgSend_zipArchive(WeakRetained, v6, v7);

  v12 = objc_msgSend_entryForName_(v8, v9, self->_path);
  if (v12)
  {
    v13 = objc_msgSend_documentSaveValidationPolicy(writerCopy, v10, v11);
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

- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error
{
  removeDataCopy = removeData;
  dataCopy = data;
  writerCopy = writer;
  filenameCopy = filename;
  LODWORD(v15) = atomic_load(&self->_isMissingData);
  v63 = removeDataCopy;
  if (((v15 | removeDataCopy) & 1) != 0 || self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v16 = objc_msgSend_filenameForData_preferredFilename_(writerCopy, v14, dataCopy, filenameCopy);
    v19 = objc_msgSend_encryptionKey(writerCopy, v17, v18);
    if (sub_276AB678C(self->_decryptionInfo, v19, 0x100000))
    {
      if (!((v15 | removeDataCopy) & 1 | (v19 == 0)))
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
      if (message && v32 && v32 != -1)
      {
        *(message + 4) |= 0x20000u;
        *(message + 18) = v32;
      }

      v33 = [TSPDataStorageWriteResult alloc];
      v35 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v33, v34, v16, v28, 1, v31, (v15 | v63) & 1, 0);
      goto LABEL_37;
    }
  }

  else
  {
    v15 = objc_msgSend_streamReadChannelForWriteWithPackageWriter_(self, v14, writerCopy);
    v61 = v15;
    if (v15)
    {
      decryptionInfo = self->_decryptionInfo;
      v39 = objc_msgSend_encodedLength(self, v36, v37);
      v42 = objc_msgSend_shouldValidateCRCOnWrite(self, v40, v41);
      v66 = 0;
      v44 = objc_msgSend_copyData_withReadChannel_decryptionInfo_size_calculateCRC_preferredFilename_error_(writerCopy, v43, dataCopy, v15, decryptionInfo, v39, v42, filenameCopy, &v66);
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

    else if (objc_msgSend_updateType(writerCopy, v36, v37) == 2)
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
      v16 = objc_msgSend_filenameForData_preferredFilename_(writerCopy, v52, dataCopy, filenameCopy);
      v55 = objc_msgSend_encryptionKey(writerCopy, v53, v54);
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

  if (error)
  {
    if (v30)
    {
      v58 = v30;
      v35 = 0;
      *error = v30;
      goto LABEL_37;
    }

    v59 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v29, 0);
    *error = v59;
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

- (BOOL)isInPackage:(id)package
{
  packageCopy = package;
  WeakRetained = objc_loadWeakRetained(&self->_package);

  return WeakRetained == packageCopy;
}

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v5 = objc_msgSend_fileFormatVersion(WeakRetained, v3, v4);

  return v5;
}

- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link
{
  lCopy = l;
  infoCopy = info;
  v12 = objc_msgSend_streamReadChannelForWriteWithPackageWriter_(self, v9, 0);
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D811D0]);
    v27 = 0;
    v15 = objc_msgSend_initForStreamWritingURL_error_(v13, v14, lCopy, &v27);
    v16 = v27;
    if (v15)
    {
      decryptionInfo = self->_decryptionInfo;
      v18 = objc_msgSend_encodedLength(self, v10, v11);
      v26 = v16;
      v20 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v19, v12, decryptionInfo, v18, v15, infoCopy, 0, &v26);
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

- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)l encryptionInfo:(id)info error:(id *)error
{
  lCopy = l;
  infoCopy = info;
  v12 = objc_msgSend_tsu_fileSize(lCopy, v10, v11);
  v15 = 0;
  if (!lCopy || infoCopy)
  {
    goto LABEL_16;
  }

  v16 = v12;
  v17 = objc_msgSend_tsu_volumeSupportsCloning(lCopy, v13, v14);
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
    v56 = [(TSPStreamDataStorage *)&v63 newDataCopyReadChannelProviderWithDocumentURL:lCopy encryptionInfo:infoCopy error:&v64];
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
  v28 = objc_msgSend_initWithDocumentURL_error_(v26, v27, lCopy, &v68);
  v29 = v68;
  if (!v28)
  {
    v35 = 0;
    goto LABEL_23;
  }

  v30 = objc_msgSend_directory(v28, v23, v24);
  v33 = objc_msgSend_lastPathComponent(lCopy, v31, v32);
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
  v38 = objc_msgSend_copyItemAtURL_toURL_error_(v36, v37, lCopy, v35, &v67);
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
  if (error)
  {
    v57 = v15;
    *error = v15;
  }

  return v56;
}

@end