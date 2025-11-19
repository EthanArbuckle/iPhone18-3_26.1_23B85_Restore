@interface TSPDataDownloadManager
- (TSPDataDownloadManager)init;
- (TSPDataDownloadManager)initWithContext:(id)a3;
- (TSPDataDownloadManagerDelegate)delegate;
- (id)documentResourceDataWithDigestString:(id)a3 locator:(id)a4 filename:(id)a5;
@end

@implementation TSPDataDownloadManager

- (TSPDataDownloadManager)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDataDownloadManager init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataDownloadManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 64, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDataDownloadManager init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDataDownloadManager)initWithContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSPDataDownloadManager;
  v5 = [(TSPDataDownloadManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
  }

  return v6;
}

- (id)documentResourceDataWithDigestString:(id)a3 locator:(id)a4 filename:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_context);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_context);
    v16 = objc_msgSend_resourceContext(v13, v14, v15);

    v19 = objc_msgSend_documentResourceRegistry(v16, v17, v18);
    v21 = objc_msgSend_documentResourceInfoForDigestString_locator_(v19, v20, v8, v9);

    if (v21 || (v23 = [TSPDocumentResourceInfo alloc], objc_msgSend_pathExtension(v10, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v23, v27, v8, v9, v26, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)), v26, v21))
    {
      ResourceRequestIfNeeded_error = objc_msgSend_newDataStorageForDocumentResourceInfo_createResourceRequestIfNeeded_error_(v16, v22, v21, 1, 0);
      if (ResourceRequestIfNeeded_error)
      {
        v29 = objc_loadWeakRetained(&self->_context);
        v32 = objc_msgSend_dataManager(v29, v30, v31);
        v34 = objc_msgSend_documentResourceDataForInfo_withStorage_filename_(v32, v33, v21, ResourceRequestIfNeeded_error, v10);

        goto LABEL_10;
      }
    }

    else
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPDataDownloadManager documentResourceDataWithDigestString:locator:filename:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataDownloadManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 479, 0, "Unknown Document Resource for digest %{public}@, locator %{public}@, filename %{public}@", v8, v9, v10);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    }
  }

  v42 = MEMORY[0x277D81150];
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDataDownloadManager documentResourceDataWithDigestString:locator:filename:]");
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataDownloadManager.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 484, 0, "Unable to obtain TSPData for digest %{public}@, locator %{public}@, filename %{public}@", v8, v9, v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
  v34 = 0;
LABEL_10:

  return v34;
}

- (TSPDataDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end