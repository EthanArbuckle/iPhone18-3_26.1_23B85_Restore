@interface TSPDirectoryPackageDataStorage
- (BOOL)isInPackage:(id)package;
- (BOOL)isLengthPrecise;
- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link;
- (TSPDirectoryPackage)package;
- (TSPDirectoryPackageDataStorage)init;
- (TSPDirectoryPackageDataStorage)initWithPath:(id)path package:(id)package decryptionInfo:(id)info materializedLength:(unint64_t)length;
- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error;
- (unint64_t)encodedLength;
- (unint64_t)fileFormatVersion;
- (unint64_t)length;
- (void)didInitializeFromDocumentURL:(id)l;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performReadWithAccessor:(id)accessor;
- (void)setEncodedLength:(unint64_t)length isMissingData:(BOOL)data;
@end

@implementation TSPDirectoryPackageDataStorage

- (TSPDirectoryPackageDataStorage)initWithPath:(id)path package:(id)package decryptionInfo:(id)info materializedLength:(unint64_t)length
{
  pathCopy = path;
  packageCopy = package;
  infoCopy = info;
  if (!packageCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDirectoryPackageDataStorage initWithPath:package:decryptionInfo:materializedLength:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 45, 0, "invalid nil value for '%{public}s'", "package");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v29.receiver = self;
  v29.super_class = TSPDirectoryPackageDataStorage;
  v23 = [(TSPDirectoryPackageDataStorage *)&v29 init];
  if (v23)
  {
    v24 = objc_msgSend_copy(pathCopy, v21, v22);
    path = v23->_path;
    v23->_path = v24;

    objc_storeStrong(&v23->_decryptionInfo, info);
    v23->_packageIdentifier = objc_msgSend_packageIdentifier(packageCopy, v26, v27);
    objc_storeWeak(&v23->_package, packageCopy);
    if (length != -1)
    {
      atomic_store(length, &v23->_materializedLength);
    }
  }

  return v23;
}

- (TSPDirectoryPackageDataStorage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDirectoryPackageDataStorage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 64, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDirectoryPackageDataStorage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)didInitializeFromDocumentURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (!self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v7 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(lCopy, v5, self->_path, 0);
    v10 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v8, v9);
    v13 = objc_msgSend_path(v7, v11, v12);
    v26 = 0;
    v15 = objc_msgSend_attributesOfItemAtPath_error_(v10, v14, v13, &v26);
    v16 = v26;

    if (v15)
    {
      v19 = objc_msgSend_fileSize(v15, v17, v18);
      v22 = 0;
      atomic_store(v19, &self->_encodedLength);
      atomic_store(1u, &self->_didCalculateEncodedLength);
    }

    else
    {
      atomic_store(0, &self->_encodedLength);
      atomic_store(objc_msgSend_tsu_isNoSuchFileError(v16, v17, v18), &self->_didCalculateEncodedLength);
      v22 = 1;
    }

    atomic_store(v22, &self->_isMissingData);
    v23 = atomic_load(&self->_materializedLength);
    if (!v23 || v23 == -1)
    {
      if (objc_msgSend_isLengthPrecise(self, v20, v21))
      {
        atomic_store(objc_msgSend_length(self, v24, v25), &self->_materializedLength);
      }
    }
  }
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

- (unint64_t)encodedLength
{
  v3 = atomic_load(&self->_didCalculateEncodedLength);
  if ((v3 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TSPDirectoryPackageDataStorage;
    encodedLength = [(TSPFileDataStorage *)&v7 encodedLength];
    atomic_store(encodedLength, &self->_encodedLength);
    if (encodedLength)
    {
      v5 = 1;
    }

    else
    {
      v5 = atomic_load(&self->_isMissingData);
    }

    atomic_store(v5 & 1, &self->_didCalculateEncodedLength);
  }

  return atomic_load(&self->_encodedLength);
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

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v5 = objc_msgSend_fileFormatVersion(WeakRetained, v3, v4);

  return v5;
}

- (void)performReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v10 = objc_msgSend_fileCoordinatorDelegate(WeakRetained, v6, v7);
  if (v10 && (objc_msgSend_isClosed(WeakRetained, v8, v9) & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276A13CC4;
    v12[3] = &unk_27A6E45A0;
    v12[4] = self;
    v13 = accessorCopy;
    objc_msgSend_performReadUsingAccessor_(v10, v11, v12);
  }

  else
  {
    (*(accessorCopy + 2))(accessorCopy, 0);
  }
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A13DF8;
  v7[3] = &unk_27A6E45A0;
  v7[4] = self;
  v8 = accessorCopy;
  v5 = accessorCopy;
  objc_msgSend_performReadWithAccessor_(self, v6, v7);
}

- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error
{
  dataCopy = data;
  writerCopy = writer;
  filenameCopy = filename;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_276A145C0;
  v81 = sub_276A145D0;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_276A145C0;
  v75 = sub_276A145D0;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v18 = atomic_load(&self->_isMissingData);
  v66 = v18 & 1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_276A145C0;
  v61 = sub_276A145D0;
  v62 = 0;
  v46 = filenameCopy;
  if (removeData || self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v19 = objc_msgSend_filenameForData_preferredFilename_(writerCopy, v16, dataCopy, filenameCopy);
    v20 = dataCopy;
    v21 = v78[5];
    v78[5] = v19;

    v24 = objc_msgSend_encryptionKey(writerCopy, v22, v23);
    if (!sub_276AB678C(self->_decryptionInfo, v24, 0x100000))
    {
      v34 = v72;
      v35 = self->_decryptionInfo;
      v33 = v34[5];
      v34[5] = v35;
LABEL_13:

      goto LABEL_16;
    }

    if ((v64[3] & 1) == 0 && !removeData && v24)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPDirectoryPackageDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v30, v27, v29, 191, 0, "Encryption info cannot be properly calculated for unmaterialized data due to partially downloaded document because it requires access to the data bytes.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    }

    objc_storeStrong(v72 + 5, v24);
    if (self->_isUnmaterializedDueToPartiallyDownloadedDocument)
    {
      dataCopy = v20;
      if (UnsafePointer != -1)
      {
        sub_276BD36AC();
      }

      v33 = v78[5];
      v78[5] = 0;
      goto LABEL_13;
    }

    dataCopy = v20;
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_276A1461C;
    v47[3] = &unk_27A6E45F0;
    v48 = writerCopy;
    v49 = dataCopy;
    selfCopy = self;
    v51 = filenameCopy;
    v52 = &v57;
    v53 = &v77;
    v54 = &v71;
    v55 = &v67;
    v56 = &v63;
    objc_msgSend_performReadWithAccessor_(self, v36, v47);

    v24 = v48;
  }

LABEL_16:

  if (v78[5])
  {
    v38 = atomic_load(&self->_materializedLength);
    v39 = v46;
    if (message && v38 && v38 != -1)
    {
      *(message + 4) |= 0x20000u;
      *(message + 18) = v38;
    }

    v40 = [TSPDataStorageWriteResult alloc];
    v42 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v40, v41, v78[5], v72[5], 1, v68[3], (*(v64 + 24) | removeData) & 1, 0);
  }

  else
  {
    v39 = v46;
    if (error)
    {
      v43 = v58[5];
      if (v43)
      {
        v42 = 0;
        *error = v43;
        goto LABEL_27;
      }

      v44 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v37, 0);
      *error = v44;
    }

    v42 = 0;
  }

LABEL_27:
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  _Block_object_dispose(&v77, 8);

  return v42;
}

- (BOOL)isInPackage:(id)package
{
  packageCopy = package;
  WeakRetained = objc_loadWeakRetained(&self->_package);

  return WeakRetained == packageCopy;
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

- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link
{
  lCopy = l;
  infoCopy = info;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276A14BDC;
  v14[3] = &unk_27A6E4618;
  v14[4] = self;
  v15 = lCopy;
  v16 = infoCopy;
  v17 = &v19;
  linkCopy = link;
  v10 = infoCopy;
  v11 = lCopy;
  objc_msgSend_performReadWithAccessor_(self, v12, v14);
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

- (TSPDirectoryPackage)package
{
  WeakRetained = objc_loadWeakRetained(&self->_package);

  return WeakRetained;
}

@end