@interface TSPTemporaryDataStorage
- (BOOL)isLengthPrecise;
- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link;
- (TSPTemporaryDataStorage)init;
- (TSPTemporaryDataStorage)initWithTemporaryDataStorageURL:(id)l decryptionInfo:(id)info isMissingOriginalData:(BOOL)data isMissingData:(BOOL)missingData isUnmaterializedDueToPartiallyDownloadedDocument:(BOOL)document;
- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error;
- (unint64_t)length;
- (unint64_t)materializedLength;
- (void)dealloc;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performReadWithAccessor:(id)accessor;
@end

@implementation TSPTemporaryDataStorage

- (TSPTemporaryDataStorage)initWithTemporaryDataStorageURL:(id)l decryptionInfo:(id)info isMissingOriginalData:(BOOL)data isMissingData:(BOOL)missingData isUnmaterializedDueToPartiallyDownloadedDocument:(BOOL)document
{
  lCopy = l;
  infoCopy = info;
  if ((objc_msgSend_isFileURL(lCopy, v14, v15) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPTemporaryDataStorage initWithTemporaryDataStorageURL:decryptionInfo:isMissingOriginalData:isMissingData:isUnmaterializedDueToPartiallyDownloadedDocument:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPTemporaryDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 46, 0, "Expected a file URL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v48.receiver = self;
  v48.super_class = TSPTemporaryDataStorage;
  v24 = [(TSPTemporaryDataStorage *)&v48 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_temporaryDataStorageURL, l);
    objc_storeStrong(&v25->_decryptionInfo, info);
    v27 = 0;
    v25->_isMissingOriginalData = data;
    v25->_isMissingData = missingData;
    v25->_isUnmaterializedDueToPartiallyDownloadedDocument = document;
    if (!missingData && !document)
    {
      v47 = 0;
      v28 = objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v26, &v47);
      v27 = v47;
      if ((v28 & 1) == 0)
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSPTemporaryDataStorage initWithTemporaryDataStorageURL:decryptionInfo:isMissingOriginalData:isMissingData:isUnmaterializedDueToPartiallyDownloadedDocument:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPTemporaryDataStorage.mm");
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v38 = objc_msgSend_domain(v27, v36, v37);
        v41 = objc_msgSend_code(v27, v39, v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v42, v31, v33, 58, 0, "Temporary file doesn't exist. Data storage will be considered missing. Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v35, v38, v41, v27);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
        v25->_isMissingData = 1;
      }
    }
  }

  return v25;
}

- (TSPTemporaryDataStorage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPTemporaryDataStorage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPTemporaryDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 70, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPTemporaryDataStorage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)dealloc
{
  if (!self->_isMissingData && !self->_leakTemporaryFile)
  {
    v5 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
    if (UnsafePointer != -1)
    {
      sub_276BD3814();
    }

    temporaryDataStorageURL = self->_temporaryDataStorageURL;
    v10 = 0;
    v7 = objc_msgSend_removeItemAtURL_error_(v5, v4, temporaryDataStorageURL, &v10);
    v8 = v10;
    if ((v7 & 1) == 0 && !self->_isUnmaterializedDueToPartiallyDownloadedDocument && UnsafePointer != -1)
    {
      sub_276BD3828();
    }
  }

  v9.receiver = self;
  v9.super_class = TSPTemporaryDataStorage;
  [(TSPTemporaryDataStorage *)&v9 dealloc];
}

- (unint64_t)length
{
  v4 = objc_msgSend_decryptionInfo(self, a2, v2);
  v7 = v4;
  if (v4 && objc_msgSend_hasDecodedLength(v4, v5, v6))
  {
    v8 = objc_msgSend_decodedLength(v7, v5, v6);
  }

  else
  {
    v8 = objc_msgSend_encodedLength(self, v5, v6);
  }

  v9 = v8;

  return v9;
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

- (unint64_t)materializedLength
{
  if (!objc_msgSend_isLengthPrecise(self, a2, v2))
  {
    return 0;
  }

  return objc_msgSend_length(self, v4, v5);
}

- (void)performReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v14 = accessorCopy;
  if (self->_isMissingData)
  {
    temporaryDataStorageURL = 0;
  }

  else if (self->_isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPTemporaryDataStorage performReadWithAccessor:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPTemporaryDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 127, 0, "Attempting to read from remote data storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    temporaryDataStorageURL = 0;
    accessorCopy = v14;
  }

  else
  {
    temporaryDataStorageURL = self->_temporaryDataStorageURL;
  }

  (*(accessorCopy + 2))(accessorCopy, temporaryDataStorageURL);
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A19300;
  v7[3] = &unk_27A6E45A0;
  v7[4] = self;
  v8 = accessorCopy;
  v5 = accessorCopy;
  objc_msgSend_performReadWithAccessor_(self, v6, v7);
}

- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error
{
  removeDataCopy = removeData;
  dataCopy = data;
  writerCopy = writer;
  filenameCopy = filename;
  v49 = filenameCopy;
  if (self->_isMissingData || self->_isUnmaterializedDueToPartiallyDownloadedDocument || removeDataCopy)
  {
    v15 = objc_msgSend_filenameForData_preferredFilename_(writerCopy, v13, dataCopy, filenameCopy);
    v18 = objc_msgSend_encryptionKey(writerCopy, v16, v17);
    if (sub_276AB678C(self->_decryptionInfo, v18, 0x100000))
    {
      if (!self->_isMissingData && !removeDataCopy && v18)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPTemporaryDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPTemporaryDataStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 166, 0, "Encryption info cannot be properly calculated for unmaterialized data due to partially downloaded document because it requires access to the data bytes.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }

      v27 = v18;
      if (self->_isUnmaterializedDueToPartiallyDownloadedDocument)
      {
        if (UnsafePointer != -1)
        {
          sub_276BD3878();
        }

        v15 = 0;
      }
    }

    else
    {
      v27 = self->_decryptionInfo;
    }

    v38 = 0;
    v33 = 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_17:
    v41 = objc_msgSend_materializedLength(self, v39, v40);
    if (message && v41 && v41 != -1)
    {
      *(message + 4) |= 0x20000u;
      *(message + 18) = v41;
    }

    v42 = [TSPDataStorageWriteResult alloc];
    v44 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v42, v43, v15, v27, 1, v38, self->_isMissingOriginalData || removeDataCopy, 0);
    goto LABEL_31;
  }

  temporaryDataStorageURL = self->_temporaryDataStorageURL;
  decryptionInfo = self->_decryptionInfo;
  v52 = 0;
  v30 = objc_msgSend_linkOrCopyData_fromURL_fromTemporaryLocation_decryptionInfo_preferredFilename_error_(writerCopy, v13, dataCopy, temporaryDataStorageURL, 1, decryptionInfo, filenameCopy, &v52);
  v33 = v52;
  if (v30)
  {
    v15 = objc_msgSend_filename(v30, v31, v32);
    v27 = objc_msgSend_encryptionInfo(v30, v34, v35);
    v38 = objc_msgSend_encodedLength(v30, v36, v37);
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD3850();
    }

    v38 = 0;
    v27 = 0;
    v15 = 0;
  }

  if (v15)
  {
    goto LABEL_17;
  }

LABEL_26:
  if (error)
  {
    if (v33)
    {
      v45 = v33;
      v44 = 0;
      *error = v33;
      goto LABEL_31;
    }

    v46 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v39, 0);
    *error = v46;
  }

  v44 = 0;
LABEL_31:

  return v44;
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
  v14[2] = sub_276A19B18;
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

@end