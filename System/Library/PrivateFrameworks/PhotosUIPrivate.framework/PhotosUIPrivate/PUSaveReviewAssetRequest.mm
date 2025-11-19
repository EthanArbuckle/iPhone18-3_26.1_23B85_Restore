@interface PUSaveReviewAssetRequest
- (BOOL)supportsProgress;
- (PUSaveReviewAssetRequest)init;
- (PUSaveReviewAssetRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 directory:(id)a5 compositionController:(id)a6 contentEditingOutput:(id)a7 workImageVersion:(int64_t)a8;
- (PUSaveReviewAssetRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 directory:(id)a5 compositionController:(id)a6 workImageVersion:(int64_t)a7;
- (double)progress;
- (int64_t)_imageRequestVersion;
- (int64_t)_videoRequestVersion;
- (void)_finishWithAsset:(id)a3 error:(id)a4;
- (void)_handleOutputNodeFinishedWithError:(id)a3;
- (void)_performInternalSaveOperation;
- (void)_performSaveOperation;
- (void)_transitionToState:(int64_t)a3;
- (void)beginSaveOperationWithCompletionHandler:(id)a3;
- (void)cancelSaveOperation;
- (void)runNode:(id)a3 didCancelWithError:(id)a4;
- (void)runNode:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation PUSaveReviewAssetRequest

- (void)_transitionToState:(int64_t)a3
{
  currentState = self->_currentState;
  if (!currentState)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (currentState != 1 || (a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_6:
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:342 description:{@"Invalid transition %ld %ld", self->_currentState, a3}];
  }

LABEL_7:
  self->_currentState = a3;
}

- (double)progress
{
  result = 1.0;
  if (self->_currentState != 2)
  {
    v4 = [(PUSaveReviewAssetRequest *)self supportsProgress];
    result = 0.0;
    if (v4)
    {
      videoExportNode = self->_videoExportNode;
      if (videoExportNode)
      {

        [(PUVideoExportNode *)videoExportNode progress];
      }
    }
  }

  return result;
}

- (BOOL)supportsProgress
{
  v3 = [(PUSaveReviewAssetRequest *)self compositionController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PUSaveReviewAssetRequest *)self editableAsset];
  v5 = [v4 isLivePhoto];
  if ([v4 mediaType] == 2)
  {
    v5 = 1;
  }

  return v5;
}

- (void)_finishWithAsset:(id)a3 error:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v6)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    [(PUSaveReviewAssetRequest *)self _transitionToState:v8];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = v9;
    beginTimestamp = self->_beginTimestamp;
    v12 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v10 - beginTimestamp;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "PUReviewAssetsSaveRequest operation took: %f sec", &v15, 0xCu);
    }

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, v6, v7);
      v14 = self->_completionHandler;
      self->_completionHandler = 0;
    }
  }
}

- (void)cancelSaveOperation
{
  [(PXRunNode *)self->_outputNode cancel];
  v3 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:*MEMORY[0x1E6978F50] code:3072 userInfo:0];
  [(PUSaveReviewAssetRequest *)self _finishWithAsset:0 error:v3];
}

- (void)_handleOutputNodeFinishedWithError:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewCreateAssetNode *)self->_outputNode reviewAsset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PUSaveReviewAssetRequest__handleOutputNodeFinishedWithError___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)runNode:(id)a3 didCancelWithError:(id)a4
{
  if (self->_outputNode == a3)
  {
    [(PUSaveReviewAssetRequest *)self _handleOutputNodeFinishedWithError:a4];
  }
}

- (void)runNode:(id)a3 didCompleteWithError:(id)a4
{
  if (self->_outputNode == a3)
  {
    [(PUSaveReviewAssetRequest *)self _handleOutputNodeFinishedWithError:a4];
  }
}

- (void)_performSaveOperation
{
  v3 = [(PUSaveReviewAssetRequest *)self editableAsset];
  v4 = [(PUSaveReviewAssetRequest *)self editableMediaProvider];
  v5 = [(PUSaveReviewAssetRequest *)self directory];
  v6 = [v3 playbackStyle];
  v7 = 0;
  if ([v3 mediaType] == 1 && v6 != 5)
  {
    v7 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:v3 mediaProvider:v4 version:[(PUSaveReviewAssetRequest *)self _imageRequestVersion]];
  }

  v9 = [v3 mediaType] == 2 || v6 == 5;
  if (([v3 isLivePhoto] & 1) != 0 || v9)
  {
    v12 = [(PUSaveReviewAssetRequest *)self _videoRequestVersion];
    v11 = [[PUEditableMediaProviderVideoURLNode alloc] initWithAsset:v3 mediaProvider:v4 version:v12];
    if (v9)
    {
      v10 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:v3 mediaProvider:v4 version:v12];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v17 = v3;
  v13 = [[PUReviewInternalSaveNode alloc] initWithDirectory:v5 imageDataNode:v7 imageRenderNode:0 videoURLNode:v11 videoRenderNode:0];
  if (self->_contentEditingOutput || (v14 = v13, [v17 isHighFramerateVideo]))
  {
    v14 = [[PUReviewAdjustmentURLNode alloc] initWithReviewAsset:v17 directory:v5 contentEditingOutput:self->_contentEditingOutput];
  }

  v15 = [[PUReviewCreateAssetNode alloc] initWithInputAsset:v17 imageInfoNode:v13 renderImageInfoNode:0 renderImageDataNode:0 videoURLNode:v13 videoAssetNode:v10 renderVideoURLNode:0 renderVideoAssetNode:0 adjustmentURLNode:v14];
  outputNode = self->_outputNode;
  self->_outputNode = v15;

  [(PXRunNode *)self->_outputNode setDelegate:self];
  [MEMORY[0x1E69C3980] processGraphForRunNode:self->_outputNode withQualityOfService:25];
}

- (void)_performInternalSaveOperation
{
  v3 = [(PUSaveReviewAssetRequest *)self editableAsset];
  v4 = [(PUSaveReviewAssetRequest *)self editableMediaProvider];
  v27 = [(PUSaveReviewAssetRequest *)self directory];
  v5 = [(PUSaveReviewAssetRequest *)self compositionController];
  v6 = [v3 isLivePhoto];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
  }

  else
  {
    v8 = 0;
  }

  if ([v3 mediaType] == 2)
  {
    [v3 mediaType];
    v9 = 0;
    v10 = 1;
LABEL_13:
    v13 = [[PUEditableMediaProviderVideoURLNode alloc] initWithAsset:v3 mediaProvider:v4 version:[(PUSaveReviewAssetRequest *)self _videoRequestVersion]];
    v14 = [[PUVideoExportNode alloc] initWithVideoURLNode:v13 imageURLNode:v9 quality:2 livePhotoPairingIdentifier:v8 compositionController:v5];
    goto LABEL_15;
  }

  v11 = [v3 playbackStyle];
  v10 = v11 == 5;
  v9 = 0;
  if ([v3 mediaType] == 1 && v11 != 5)
  {
    v9 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:v3 mediaProvider:v4 version:[(PUSaveReviewAssetRequest *)self _imageRequestVersion]];
  }

  if (v11 == 5)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6;
  }

  if (v12 == 1)
  {
    goto LABEL_13;
  }

  v10 = 0;
  v14 = 0;
  v13 = 0;
LABEL_15:
  v26 = v4;
  if (!v9)
  {
    goto LABEL_19;
  }

  if (!v6)
  {
    if (!v10)
    {
      v15 = [PUImageDataRenderNode alloc];
      v16 = v9;
      v17 = 0;
      v18 = v5;
      v19 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v20 = 0;
    goto LABEL_22;
  }

  v15 = [PUImageDataRenderNode alloc];
  v16 = v9;
  v17 = v13;
  v18 = v5;
  v19 = v8;
LABEL_21:
  v20 = [(PUImageDataRenderNode *)v15 initWithImageInfoNode:v16 videoURLNode:v17 compositionController:v18 livePhotoPairingIdentifier:v19 jpegCompression:0.899999976];
LABEL_22:
  v28 = v3;
  v21 = [[PUReviewInternalSaveNode alloc] initWithDirectory:v27 imageDataNode:v9 imageRenderNode:v20 videoURLNode:v13 videoRenderNode:v14];
  v22 = [[PUReviewCreateAssetNode alloc] initWithInputAsset:v28 imageInfoNode:v21 renderImageInfoNode:v21 renderImageDataNode:v21 videoURLNode:v21 videoAssetNode:0 renderVideoURLNode:v21 renderVideoAssetNode:0 adjustmentURLNode:v21];

  outputNode = self->_outputNode;
  self->_outputNode = v22;

  [(PXRunNode *)self->_outputNode setDelegate:self];
  videoExportNode = self->_videoExportNode;
  self->_videoExportNode = v14;
  v25 = v14;

  [MEMORY[0x1E69C3980] processGraphForRunNode:self->_outputNode withQualityOfService:25];
}

- (int64_t)_videoRequestVersion
{
  workImageVersion = self->_workImageVersion;
  if (workImageVersion == 3)
  {
    return 0;
  }

  if (workImageVersion == 2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:160 description:@"This isn't supported yet"];

    return 8;
  }

  else
  {
    if (!workImageVersion)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:152 description:@"unknown work image version"];
    }

    return 1;
  }
}

- (int64_t)_imageRequestVersion
{
  workImageVersion = self->_workImageVersion;
  switch(workImageVersion)
  {
    case 3:
      return 0;
    case 2:
      return 8;
    case 0:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:131 description:@"unknown work image version"];

      break;
  }

  return 1;
}

- (void)beginSaveOperationWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(PUSaveReviewAssetRequest *)self _transitionToState:1];
  v5 = [v4 copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_beginTimestamp = v7;
  v8 = [(PUSaveReviewAssetRequest *)self compositionController];

  if (v8)
  {

    [(PUSaveReviewAssetRequest *)self _performInternalSaveOperation];
  }

  else
  {

    [(PUSaveReviewAssetRequest *)self _performSaveOperation];
  }
}

- (PUSaveReviewAssetRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 directory:(id)a5 compositionController:(id)a6 contentEditingOutput:(id)a7 workImageVersion:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v27.receiver = self;
  v27.super_class = PUSaveReviewAssetRequest;
  v20 = [(PUSaveReviewAssetRequest *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_identifier = atomic_fetch_add(_mediaDestinationRequestIdentifier, 1u) + 1;
    objc_storeStrong(&v20->_editableAsset, a3);
    objc_storeStrong(&v21->_editableMediaProvider, a4);
    v22 = [v17 copy];
    directory = v21->_directory;
    v21->_directory = v22;

    v24 = [v18 copy];
    compositionController = v21->_compositionController;
    v21->_compositionController = v24;

    objc_storeStrong(&v21->_contentEditingOutput, a7);
    v21->_workImageVersion = a8;
    v21->_currentState = 0;
  }

  return v21;
}

- (PUSaveReviewAssetRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 directory:(id)a5 compositionController:(id)a6 workImageVersion:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v16)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  v17 = [(PUSaveReviewAssetRequest *)self initWithAsset:v13 mediaProvider:v14 directory:v15 compositionController:v16 contentEditingOutput:0 workImageVersion:a7];

  return v17;
}

- (PUSaveReviewAssetRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:72 description:@"use the designated initializer"];

  return 0;
}

@end