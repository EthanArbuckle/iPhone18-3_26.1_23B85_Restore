@interface TSPDataBookmarkContext
- (BOOL)bookmarkDataNeedsWriteForData:(id)data;
- (BOOL)isEncryptedDataStorate:(id)storate;
- (TSPDataBookmarkContext)init;
- (id)makeBookmarkDataForData:(id)data filename:(id)filename options:(unint64_t)options error:(id *)error;
@end

@implementation TSPDataBookmarkContext

- (TSPDataBookmarkContext)init
{
  v17.receiver = self;
  v17.super_class = TSPDataBookmarkContext;
  v4 = [(TSPDataBookmarkContext *)&v17 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedManager(MEMORY[0x277D81358], v2, v3);
    v7 = objc_msgSend_newDirectoryWithFilename_(v5, v6, @"DataBookmarkContext");
    temporaryDirectory = v4->_temporaryDirectory;
    v4->_temporaryDirectory = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bookmarkDataURLsForFilenames = v4->_bookmarkDataURLsForFilenames;
    v4->_bookmarkDataURLsForFilenames = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    digestStringsForFilenames = v4->_digestStringsForFilenames;
    v4->_digestStringsForFilenames = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("TSPDataBookmarkContext", v13);
    queue = v4->_queue;
    v4->_queue = v14;
  }

  return v4;
}

- (id)makeBookmarkDataForData:(id)data filename:(id)filename options:(unint64_t)options error:(id *)error
{
  dataCopy = data;
  filenameCopy = filename;
  v16 = objc_msgSend_storage(dataCopy, v12, v13);
  if (v16)
  {
    if (!filenameCopy)
    {
      filenameCopy = objc_msgSend_filename(dataCopy, v14, v15);
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_276A61470;
    v36 = sub_276A61480;
    v37 = 0;
    queue = self->_queue;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_276A61488;
    v25 = &unk_27A6E5248;
    v30 = &v32;
    selfCopy = self;
    filenameCopy = filenameCopy;
    v27 = filenameCopy;
    v28 = v16;
    errorCopy = error;
    v29 = dataCopy;
    dispatch_sync(queue, &v22);
    v19 = v33[5];
    if (v19)
    {
      v20 = objc_msgSend_bookmarkDataWithOptions_includingResourceValuesForKeys_relativeToURL_error_(v19, v18, options, 0, 0, error, v22, v23, v24, v25, selfCopy, v27, v28);
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)bookmarkDataNeedsWriteForData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_storage(dataCopy, v5, v6);
  if (v7)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A61A00;
    block[3] = &unk_27A6E2C00;
    v16 = &v17;
    block[4] = self;
    v15 = dataCopy;
    dispatch_sync(queue, block);
    if (*(v18 + 24) == 1 && (objc_msgSend_isEncryptedDataStorate_(self, v9, v7) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_276A61A8C;
      v13[3] = &unk_27A6E3AC8;
      v13[4] = self;
      v13[5] = &v17;
      objc_msgSend_performReadOnBookmarkDataSourceURLWithAccessor_(v7, v10, v13);
    }

    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)isEncryptedDataStorate:(id)storate
{
  storateCopy = storate;
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_decryptionInfo(storateCopy, v4, v5);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end