@interface TSPDocumentResourceFileDataStorage
- (BOOL)archiveInfoMessage:(void *)a3 archiver:(id)a4 packageWriter:(id)a5;
- (BOOL)isReadable;
- (BOOL)needsDownload;
- (CGSize)pixelSize;
- (TSPDocumentResourceFileDataStorage)init;
- (TSPDocumentResourceFileDataStorage)initWithResourceRequest:(id)a3 documentResourceInfo:(id)a4;
- (unint64_t)encodedLength;
- (void)didAddDownloadObserverWithData:(id)a3;
- (void)performReadWithAccessor:(id)a3;
@end

@implementation TSPDocumentResourceFileDataStorage

- (TSPDocumentResourceFileDataStorage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceFileDataStorage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceFileDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 32, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDocumentResourceFileDataStorage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDocumentResourceFileDataStorage)initWithResourceRequest:(id)a3 documentResourceInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSPDocumentResourceFileDataStorage;
  v9 = [(TSPDocumentResourceFileDataStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceRequest, a3);
    objc_storeStrong(&v10->_documentResourceInfo, a4);
  }

  return v10;
}

- (BOOL)isReadable
{
  v3 = objc_msgSend_fileURL(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)encodedLength
{
  v6 = objc_msgSend_fileURL(self, a2, v2);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  v10 = objc_msgSend_path(v6, v8, v9);
  v18 = 0;
  v12 = objc_msgSend_attributesOfItemAtPath_error_(v7, v11, v10, &v18);
  v13 = v18;

  if (!v12)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD173C();
    }

    goto LABEL_8;
  }

  v16 = objc_msgSend_fileSize(v12, v14, v15);

  if (!v16)
  {
LABEL_8:
    v16 = objc_msgSend_length(self, v4, v5);
  }

  return v16;
}

- (void)performReadWithAccessor:(id)a3
{
  v7 = a3;
  v6 = objc_msgSend_fileURL(self, v4, v5);
  v7[2](v7, v6);
}

- (CGSize)pixelSize
{
  objc_msgSend_pixelSize(self->_documentResourceInfo, a2, v2);
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)archiveInfoMessage:(void *)a3 archiver:(id)a4 packageWriter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_locator(self->_documentResourceInfo, v10, v11);
  *(a3 + 4) |= 8u;
  v13 = *(a3 + 1);
  if (v13)
  {
    v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  v14 = google::protobuf::internal::ArenaStringPtr::Mutable(a3 + 6, v13);
  objc_msgSend_tsp_saveToProtobufString_(v12, v15, v14);

  return 1;
}

- (BOOL)needsDownload
{
  v3 = objc_msgSend_fileURL(self, a2, v2);
  v4 = v3 == 0;

  return v4;
}

- (void)didAddDownloadObserverWithData:(id)a3
{
  v14 = a3;
  v8 = objc_msgSend_fileURL(self, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_context(v14, v6, v7);
    v12 = objc_msgSend_downloadObserverManager(v9, v10, v11);
    objc_msgSend_notifyDownloadObserversForData_withStatus_info_wait_(v12, v13, v14, 1, 0, 0);
  }
}

@end