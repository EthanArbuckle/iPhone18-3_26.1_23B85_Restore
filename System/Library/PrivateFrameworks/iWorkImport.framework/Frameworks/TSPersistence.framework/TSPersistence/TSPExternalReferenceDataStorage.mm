@interface TSPExternalReferenceDataStorage
- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer;
- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)data context:(id)context;
- (TSPExternalReferenceDataStorage)initWithURL:(id)l;
@end

@implementation TSPExternalReferenceDataStorage

- (TSPExternalReferenceDataStorage)initWithURL:(id)l
{
  lCopy = l;
  v28.receiver = self;
  v28.super_class = TSPExternalReferenceDataStorage;
  v7 = [(TSPExternalReferenceDataStorage *)&v28 init];
  if (v7)
  {
    if (objc_msgSend_isFileReferenceURL(lCopy, v5, v6))
    {
      v10 = lCopy;
    }

    else
    {
      if (!objc_msgSend_isFileURL(lCopy, v8, v9))
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPExternalReferenceDataStorage initWithURL:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPExternalReferenceDataStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 47, 0, "Bad URL type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        v18 = 0;
        goto LABEL_11;
      }

      v10 = objc_msgSend_fileReferenceURL(lCopy, v11, v12);
    }

    URL = v7->_URL;
    v7->_URL = v10;

    v14 = v7->_URL;
    v27 = 0;
    v16 = objc_msgSend_checkResourceIsReachableAndReturnError_(v14, v15, &v27);
    v17 = v27;
    v7->_isReachable = v16;
    if ((v16 & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD6DD0();
    }
  }

  v18 = v7;
LABEL_11:

  return v18;
}

- (TSPExternalReferenceDataStorage)initWithBookmarkData:(id)data context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TSPExternalReferenceDataStorage;
  v9 = [(TSPExternalReferenceDataStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bookmarkData, data);
    objc_storeWeak(&v10->_context, contextCopy);
    v10->_isReachable = 0;
  }

  return v10;
}

- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer
{
  archiverCopy = archiver;
  writerCopy = writer;
  v12 = objc_msgSend_relativeURLForExternalData(archiverCopy, v10, v11);

  if (!v12)
  {
    goto LABEL_8;
  }

  v15 = objc_msgSend_bookmarkDataForArchiver_(self, v13, archiverCopy);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    v20 = objc_msgSend_bytes(v17, v18, v19);
    v23 = objc_msgSend_length(v16, v21, v22);
    sub_276AF458C(message, v20, v23);

LABEL_14:
    v24 = 1;
    goto LABEL_15;
  }

  if (!writerCopy || !self->_isReachable || objc_msgSend_updateType(writerCopy, v13, v14) != 2)
  {
LABEL_8:
    bookmarkData = self->_bookmarkData;
    if (bookmarkData)
    {
      v26 = objc_msgSend_bytes(bookmarkData, v13, v14);
      v29 = objc_msgSend_length(self->_bookmarkData, v27, v28);
      sub_276AF458C(message, v26, v29);
    }

    else
    {
      *(message + 4) |= 0x10u;
      v33 = 0;
      __p.n128_u8[0] = 0;
      v30 = *(message + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(message + 7, &__p, v30);
      if (v33 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }
    }

    goto LABEL_14;
  }

  v24 = 0;
LABEL_15:

  return v24;
}

@end