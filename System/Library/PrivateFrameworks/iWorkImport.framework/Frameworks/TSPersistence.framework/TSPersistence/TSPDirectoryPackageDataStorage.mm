@interface TSPDirectoryPackageDataStorage
- (BOOL)isInPackage:(id)a3;
- (BOOL)isLengthPrecise;
- (BOOL)linkOrCopyToURL:(id)a3 encryptionInfo:(id)a4 canLink:(BOOL)a5;
- (TSPDirectoryPackage)package;
- (TSPDirectoryPackageDataStorage)init;
- (TSPDirectoryPackageDataStorage)initWithPath:(id)a3 package:(id)a4 decryptionInfo:(id)a5 materializedLength:(unint64_t)a6;
- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8;
- (unint64_t)encodedLength;
- (unint64_t)fileFormatVersion;
- (unint64_t)length;
- (void)didInitializeFromDocumentURL:(id)a3;
- (void)performIOChannelReadWithAccessor:(id)a3;
- (void)performReadWithAccessor:(id)a3;
- (void)setEncodedLength:(unint64_t)a3 isMissingData:(BOOL)a4;
@end

@implementation TSPDirectoryPackageDataStorage

- (TSPDirectoryPackageDataStorage)initWithPath:(id)a3 package:(id)a4 decryptionInfo:(id)a5 materializedLength:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v13 = a5;
  if (!v11)
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
    v24 = objc_msgSend_copy(v10, v21, v22);
    path = v23->_path;
    v23->_path = v24;

    objc_storeStrong(&v23->_decryptionInfo, a5);
    v23->_packageIdentifier = objc_msgSend_packageIdentifier(v11, v26, v27);
    objc_storeWeak(&v23->_package, v11);
    if (a6 != -1)
    {
      atomic_store(a6, &v23->_materializedLength);
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

- (void)didInitializeFromDocumentURL:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v7 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v4, v5, self->_path, 0);
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
    v4 = [(TSPFileDataStorage *)&v7 encodedLength];
    atomic_store(v4, &self->_encodedLength);
    if (v4)
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

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v5 = objc_msgSend_fileFormatVersion(WeakRetained, v3, v4);

  return v5;
}

- (void)performReadWithAccessor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_package);
  v10 = objc_msgSend_fileCoordinatorDelegate(WeakRetained, v6, v7);
  if (v10 && (objc_msgSend_isClosed(WeakRetained, v8, v9) & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276A13CC4;
    v12[3] = &unk_27A6E45A0;
    v12[4] = self;
    v13 = v4;
    objc_msgSend_performReadUsingAccessor_(v10, v11, v12);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A13DF8;
  v7[3] = &unk_27A6E45A0;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend_performReadWithAccessor_(self, v6, v7);
}

- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v17 = a6;
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
  v46 = v17;
  if (a7 || self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v19 = objc_msgSend_filenameForData_preferredFilename_(v15, v16, v14, v17);
    v20 = v14;
    v21 = v78[5];
    v78[5] = v19;

    v24 = objc_msgSend_encryptionKey(v15, v22, v23);
    if (!sub_276AB678C(self->_decryptionInfo, v24, 0x100000))
    {
      v34 = v72;
      v35 = self->_decryptionInfo;
      v33 = v34[5];
      v34[5] = v35;
LABEL_13:

      goto LABEL_16;
    }

    if ((v64[3] & 1) == 0 && !a7 && v24)
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
      v14 = v20;
      if (UnsafePointer != -1)
      {
        sub_276BD36AC();
      }

      v33 = v78[5];
      v78[5] = 0;
      goto LABEL_13;
    }

    v14 = v20;
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_276A1461C;
    v47[3] = &unk_27A6E45F0;
    v48 = v15;
    v49 = v14;
    v50 = self;
    v51 = v17;
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
    if (a5 && v38 && v38 != -1)
    {
      *(a5 + 4) |= 0x20000u;
      *(a5 + 18) = v38;
    }

    v40 = [TSPDataStorageWriteResult alloc];
    v42 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v40, v41, v78[5], v72[5], 1, v68[3], (*(v64 + 24) | a7) & 1, 0);
  }

  else
  {
    v39 = v46;
    if (a8)
    {
      v43 = v58[5];
      if (v43)
      {
        v42 = 0;
        *a8 = v43;
        goto LABEL_27;
      }

      v44 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v37, 0);
      *a8 = v44;
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

- (BOOL)isInPackage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_package);

  return WeakRetained == v4;
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

- (BOOL)linkOrCopyToURL:(id)a3 encryptionInfo:(id)a4 canLink:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276A14BDC;
  v14[3] = &unk_27A6E4618;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v10 = v9;
  v11 = v8;
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