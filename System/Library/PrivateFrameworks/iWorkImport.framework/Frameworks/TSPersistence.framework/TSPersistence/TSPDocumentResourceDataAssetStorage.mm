@interface TSPDocumentResourceDataAssetStorage
- (BOOL)archiveInfoMessage:(void *)a3 archiver:(id)a4 packageWriter:(id)a5;
- (BOOL)isReadable;
- (BOOL)needsDownload;
- (CGSize)pixelSize;
- (NSDataAsset)dataAsset;
- (TSPDocumentResourceDataAssetStorage)init;
- (TSPDocumentResourceDataAssetStorage)initWithResourceRequest:(id)a3 documentResourceInfo:(id)a4;
- (id)NSDataWithOptions:(unint64_t)a3;
- (unint64_t)encodedLength;
- (void)didAddDownloadObserverWithData:(id)a3;
- (void)performIOChannelReadWithAccessor:(id)a3;
@end

@implementation TSPDocumentResourceDataAssetStorage

- (TSPDocumentResourceDataAssetStorage)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceDataAssetStorage init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceDataAssetStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 45, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDocumentResourceDataAssetStorage init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDocumentResourceDataAssetStorage)initWithResourceRequest:(id)a3 documentResourceInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TSPDocumentResourceDataAssetStorage;
  v9 = [(TSPDocumentResourceDataAssetStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceRequest, a3);
    objc_storeStrong(&v10->_documentResourceInfo, a4);
    v11 = objc_opt_new();
    dataAssetOnceToken = v10->_dataAssetOnceToken;
    v10->_dataAssetOnceToken = v11;
  }

  return v10;
}

- (BOOL)isReadable
{
  v3 = objc_msgSend_dataAsset(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)encodedLength
{
  if (self->_dataAsset)
  {
    v3 = objc_msgSend_data(self->_dataAsset, a2, v2);
    v6 = objc_msgSend_length(v3, v4, v5);

    return v6;
  }

  else
  {

    return objc_msgSend_length(self, a2, v2);
  }
}

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_dataAsset(self, v4, v5);
  if (v6)
  {
    v7 = [TSPMemoryReadChannel alloc];
    v10 = objc_msgSend_data(v6, v8, v9);
    v12 = objc_msgSend_initWithNSData_(v7, v11, v10);

    v13[2](v13, v12);
  }

  else
  {
    v13[2](v13, 0);
  }
}

- (CGSize)pixelSize
{
  objc_msgSend_pixelSize(self->_documentResourceInfo, a2, v2);
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSDataAsset)dataAsset
{
  dataAssetOnceToken = self->_dataAssetOnceToken;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276ACA340;
  v5[3] = &unk_27A6E27F8;
  v5[4] = self;
  objc_msgSend_performBlockOnce_(dataAssetOnceToken, a2, v5);
  return self->_dataAsset;
}

- (id)NSDataWithOptions:(unint64_t)a3
{
  v3 = objc_msgSend_dataAsset(self, a2, a3);
  v6 = objc_msgSend_data(v3, v4, v5);

  return v6;
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
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = dispatch_semaphore_create(0);
  resourceRequest = self->_resourceRequest;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276ACA75C;
  v7[3] = &unk_27A6E64A8;
  v7[4] = v3;
  v7[5] = &v8;
  objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(resourceRequest, v5, 0, v7);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)didAddDownloadObserverWithData:(id)a3
{
  v4 = a3;
  resourceRequest = self->_resourceRequest;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276ACA838;
  v8[3] = &unk_27A6E6D10;
  v9 = v4;
  v6 = v4;
  objc_msgSend_conditionallyBeginAccessingResourcesWithCompletionQueue_completionHandler_(resourceRequest, v7, 0, v8);
}

@end