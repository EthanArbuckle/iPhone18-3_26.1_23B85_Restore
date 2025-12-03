@interface PLAssetResourceDownloadRequest
- (PLAssetResourceDownloadRequest)initWithRequestID:(int)d library:(id)library queue:(id)queue cloudResourceType:(unint64_t)type managedObjectID:(id)iD progressHandler:(id)handler;
- (void)cancel;
- (void)main;
@end

@implementation PLAssetResourceDownloadRequest

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = PLAssetResourceDownloadRequest;
  [(PLAssetResourceDownloadRequest *)&v7 cancel];
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PLAssetResourceDownloadRequest_cancel__block_invoke;
  v5[3] = &unk_1E7578848;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(PLAssetResourceDownloadRequest *)self _onQueueAsync:v5];
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void __40__PLAssetResourceDownloadRequest_cancel__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 256) libraryServicesManager];
  v3 = [v2 cloudPhotoLibraryManager];

  if (v3 && ([*(a1 + 32) isFinished] & 1) == 0)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 272);
      v7 = [MEMORY[0x1E6994B90] descriptionForResourceType:*(v5 + 296)];
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling download for asset uuid: %@ cloudResourceType: %@", buf, 0x16u);
    }

    v8 = *(*(a1 + 32) + 304);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PLAssetResourceDownloadRequest_cancel__block_invoke_49;
    v9[3] = &unk_1E7564EE8;
    v10 = *(a1 + 40);
    [v3 cancelResourceTransferTaskWithIdentifier:v8 completion:v9];
  }

  else
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

- (void)main
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke;
  aBlock[3] = &unk_1E7564D58;
  aBlock[4] = self;
  v4 = v3;
  v21 = v4;
  v5 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_3;
  v19[3] = &unk_1E7564EC0;
  v19[4] = self;
  v6 = _Block_copy(v19);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_5;
  v17[3] = &unk_1E7564D80;
  v17[4] = self;
  v18 = v4;
  v7 = v4;
  v8 = _Block_copy(v17);
  library = self->_library;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_7;
  v13[3] = &unk_1E7564DA8;
  v13[4] = self;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v5;
  [(PLPhotoLibrary *)library performBlock:v13];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __38__PLAssetResourceDownloadRequest_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_2;
  v8[3] = &unk_1E75761B8;
  v8[4] = v6;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  [v6 _onQueueAsync:v8];
}

uint64_t __38__PLAssetResourceDownloadRequest_main__block_invoke_3(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_4;
  v4[3] = &unk_1E756CD90;
  v4[4] = v2;
  v5 = a2;
  return [v2 _onQueueAsync:v4];
}

void __38__PLAssetResourceDownloadRequest_main__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PLAssetResourceDownloadRequest_main__block_invoke_6;
  v9[3] = &unk_1E75761B8;
  v9[4] = v7;
  v10 = v6;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 _onQueueAsync:v9];
}

void __38__PLAssetResourceDownloadRequest_main__block_invoke_7(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1[4] + 288) inLibrary:*(a1[4] + 256)];
  v3 = [v2 uuid];
  v4 = a1[4];
  v5 = *(v4 + 272);
  *(v4 + 272) = v3;

  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = *(v7 + 272);
    v9 = [MEMORY[0x1E6994B90] descriptionForResourceType:*(v7 + 296)];
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Initiating download for asset uuid: %@ cloudResourceType: %@", buf, 0x16u);
  }

  v10 = [*(a1[4] + 256) libraryServicesManager];
  v11 = [v10 cloudPhotoLibraryManager];

  [v11 downloadAsset:v2 resourceType:*(a1[4] + 296) masterResourceOnly:0 highPriority:0 clientBundleID:0 proposedTaskIdentifier:*(a1[4] + 304) taskDidBeginHandler:a1[5] progressBlock:a1[6] completionHandler:a1[7]];
}

void __38__PLAssetResourceDownloadRequest_main__block_invoke_6(void *a1)
{
  (*(*(a1[4] + 264) + 16))(1.0);
  v2 = a1[5];
  if (v2)
  {
    objc_storeStrong((a1[4] + 312), v2);
  }

  v3 = a1[6];

  dispatch_group_leave(v3);
}

void __38__PLAssetResourceDownloadRequest_main__block_invoke_2(void *a1)
{
  (*(*(a1[4] + 264) + 16))(0.0);
  v2 = a1[5];
  if (v2)
  {
    objc_storeStrong((a1[4] + 312), v2);
    v3 = a1[6];

    dispatch_group_leave(v3);
  }
}

- (PLAssetResourceDownloadRequest)initWithRequestID:(int)d library:(id)library queue:(id)queue cloudResourceType:(unint64_t)type managedObjectID:(id)iD progressHandler:(id)handler
{
  libraryCopy = library;
  queueCopy = queue;
  iDCopy = iD;
  handlerCopy = handler;
  if (iDCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetResourceDownloadRequest.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (libraryCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLAssetResourceDownloadRequest.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (libraryCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLAssetResourceDownloadRequest.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_4:
  v31.receiver = self;
  v31.super_class = PLAssetResourceDownloadRequest;
  v19 = [(PLAssetResourceDownloadRequest *)&v31 init];
  v20 = v19;
  if (v19)
  {
    v19->_requestID = d;
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v20->_objectID, iD);
    v20->_cloudResourceType = type;
    v21 = _Block_copy(handlerCopy);
    progressHandler = v20->_progressHandler;
    v20->_progressHandler = v21;

    objc_storeStrong(&v20->_library, library);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    cplTaskIdentifier = v20->_cplTaskIdentifier;
    v20->_cplTaskIdentifier = uUIDString;
  }

  return v20;
}

@end