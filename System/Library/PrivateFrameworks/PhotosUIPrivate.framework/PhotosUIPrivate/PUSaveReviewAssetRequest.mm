@interface PUSaveReviewAssetRequest
- (BOOL)supportsProgress;
- (PUSaveReviewAssetRequest)init;
- (PUSaveReviewAssetRequest)initWithAsset:(id)asset mediaProvider:(id)provider directory:(id)directory compositionController:(id)controller contentEditingOutput:(id)output workImageVersion:(int64_t)version;
- (PUSaveReviewAssetRequest)initWithAsset:(id)asset mediaProvider:(id)provider directory:(id)directory compositionController:(id)controller workImageVersion:(int64_t)version;
- (double)progress;
- (int64_t)_imageRequestVersion;
- (int64_t)_videoRequestVersion;
- (void)_finishWithAsset:(id)asset error:(id)error;
- (void)_handleOutputNodeFinishedWithError:(id)error;
- (void)_performInternalSaveOperation;
- (void)_performSaveOperation;
- (void)_transitionToState:(int64_t)state;
- (void)beginSaveOperationWithCompletionHandler:(id)handler;
- (void)cancelSaveOperation;
- (void)runNode:(id)node didCancelWithError:(id)error;
- (void)runNode:(id)node didCompleteWithError:(id)error;
@end

@implementation PUSaveReviewAssetRequest

- (void)_transitionToState:(int64_t)state
{
  currentState = self->_currentState;
  if (!currentState)
  {
    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (currentState != 1 || (state & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:342 description:{@"Invalid transition %ld %ld", self->_currentState, state}];
  }

LABEL_7:
  self->_currentState = state;
}

- (double)progress
{
  result = 1.0;
  if (self->_currentState != 2)
  {
    supportsProgress = [(PUSaveReviewAssetRequest *)self supportsProgress];
    result = 0.0;
    if (supportsProgress)
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
  compositionController = [(PUSaveReviewAssetRequest *)self compositionController];

  if (!compositionController)
  {
    return 0;
  }

  editableAsset = [(PUSaveReviewAssetRequest *)self editableAsset];
  isLivePhoto = [editableAsset isLivePhoto];
  if ([editableAsset mediaType] == 2)
  {
    isLivePhoto = 1;
  }

  return isLivePhoto;
}

- (void)_finishWithAsset:(id)asset error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  errorCopy = error;
  if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (assetCopy)
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
      completionHandler[2](completionHandler, assetCopy, errorCopy);
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

- (void)_handleOutputNodeFinishedWithError:(id)error
{
  errorCopy = error;
  reviewAsset = [(PUReviewCreateAssetNode *)self->_outputNode reviewAsset];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PUSaveReviewAssetRequest__handleOutputNodeFinishedWithError___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v9 = reviewAsset;
  v10 = errorCopy;
  v6 = errorCopy;
  v7 = reviewAsset;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)runNode:(id)node didCancelWithError:(id)error
{
  if (self->_outputNode == node)
  {
    [(PUSaveReviewAssetRequest *)self _handleOutputNodeFinishedWithError:error];
  }
}

- (void)runNode:(id)node didCompleteWithError:(id)error
{
  if (self->_outputNode == node)
  {
    [(PUSaveReviewAssetRequest *)self _handleOutputNodeFinishedWithError:error];
  }
}

- (void)_performSaveOperation
{
  editableAsset = [(PUSaveReviewAssetRequest *)self editableAsset];
  editableMediaProvider = [(PUSaveReviewAssetRequest *)self editableMediaProvider];
  directory = [(PUSaveReviewAssetRequest *)self directory];
  playbackStyle = [editableAsset playbackStyle];
  v7 = 0;
  if ([editableAsset mediaType] == 1 && playbackStyle != 5)
  {
    v7 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:editableAsset mediaProvider:editableMediaProvider version:[(PUSaveReviewAssetRequest *)self _imageRequestVersion]];
  }

  v9 = [editableAsset mediaType] == 2 || playbackStyle == 5;
  if (([editableAsset isLivePhoto] & 1) != 0 || v9)
  {
    _videoRequestVersion = [(PUSaveReviewAssetRequest *)self _videoRequestVersion];
    v11 = [[PUEditableMediaProviderVideoURLNode alloc] initWithAsset:editableAsset mediaProvider:editableMediaProvider version:_videoRequestVersion];
    if (v9)
    {
      v10 = [[PUEditableMediaProviderVideoAssetNode alloc] initWithAsset:editableAsset mediaProvider:editableMediaProvider version:_videoRequestVersion];
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

  v17 = editableAsset;
  v13 = [[PUReviewInternalSaveNode alloc] initWithDirectory:directory imageDataNode:v7 imageRenderNode:0 videoURLNode:v11 videoRenderNode:0];
  if (self->_contentEditingOutput || (v14 = v13, [v17 isHighFramerateVideo]))
  {
    v14 = [[PUReviewAdjustmentURLNode alloc] initWithReviewAsset:v17 directory:directory contentEditingOutput:self->_contentEditingOutput];
  }

  v15 = [[PUReviewCreateAssetNode alloc] initWithInputAsset:v17 imageInfoNode:v13 renderImageInfoNode:0 renderImageDataNode:0 videoURLNode:v13 videoAssetNode:v10 renderVideoURLNode:0 renderVideoAssetNode:0 adjustmentURLNode:v14];
  outputNode = self->_outputNode;
  self->_outputNode = v15;

  [(PXRunNode *)self->_outputNode setDelegate:self];
  [MEMORY[0x1E69C3980] processGraphForRunNode:self->_outputNode withQualityOfService:25];
}

- (void)_performInternalSaveOperation
{
  editableAsset = [(PUSaveReviewAssetRequest *)self editableAsset];
  editableMediaProvider = [(PUSaveReviewAssetRequest *)self editableMediaProvider];
  directory = [(PUSaveReviewAssetRequest *)self directory];
  compositionController = [(PUSaveReviewAssetRequest *)self compositionController];
  isLivePhoto = [editableAsset isLivePhoto];
  if (isLivePhoto)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  if ([editableAsset mediaType] == 2)
  {
    [editableAsset mediaType];
    v9 = 0;
    v10 = 1;
LABEL_13:
    v13 = [[PUEditableMediaProviderVideoURLNode alloc] initWithAsset:editableAsset mediaProvider:editableMediaProvider version:[(PUSaveReviewAssetRequest *)self _videoRequestVersion]];
    v14 = [[PUVideoExportNode alloc] initWithVideoURLNode:v13 imageURLNode:v9 quality:2 livePhotoPairingIdentifier:uUIDString compositionController:compositionController];
    goto LABEL_15;
  }

  playbackStyle = [editableAsset playbackStyle];
  v10 = playbackStyle == 5;
  v9 = 0;
  if ([editableAsset mediaType] == 1 && playbackStyle != 5)
  {
    v9 = [[PUEditableMediaProviderImageDataNode alloc] initWithAsset:editableAsset mediaProvider:editableMediaProvider version:[(PUSaveReviewAssetRequest *)self _imageRequestVersion]];
  }

  if (playbackStyle == 5)
  {
    v12 = 1;
  }

  else
  {
    v12 = isLivePhoto;
  }

  if (v12 == 1)
  {
    goto LABEL_13;
  }

  v10 = 0;
  v14 = 0;
  v13 = 0;
LABEL_15:
  v26 = editableMediaProvider;
  if (!v9)
  {
    goto LABEL_19;
  }

  if (!isLivePhoto)
  {
    if (!v10)
    {
      v15 = [PUImageDataRenderNode alloc];
      v16 = v9;
      v17 = 0;
      v18 = compositionController;
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
  v18 = compositionController;
  v19 = uUIDString;
LABEL_21:
  v20 = [(PUImageDataRenderNode *)v15 initWithImageInfoNode:v16 videoURLNode:v17 compositionController:v18 livePhotoPairingIdentifier:v19 jpegCompression:0.899999976];
LABEL_22:
  v28 = editableAsset;
  v21 = [[PUReviewInternalSaveNode alloc] initWithDirectory:directory imageDataNode:v9 imageRenderNode:v20 videoURLNode:v13 videoRenderNode:v14];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:160 description:@"This isn't supported yet"];

    return 8;
  }

  else
  {
    if (!workImageVersion)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:152 description:@"unknown work image version"];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:131 description:@"unknown work image version"];

      break;
  }

  return 1;
}

- (void)beginSaveOperationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(PUSaveReviewAssetRequest *)self _transitionToState:1];
  v5 = [handlerCopy copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_beginTimestamp = v7;
  compositionController = [(PUSaveReviewAssetRequest *)self compositionController];

  if (compositionController)
  {

    [(PUSaveReviewAssetRequest *)self _performInternalSaveOperation];
  }

  else
  {

    [(PUSaveReviewAssetRequest *)self _performSaveOperation];
  }
}

- (PUSaveReviewAssetRequest)initWithAsset:(id)asset mediaProvider:(id)provider directory:(id)directory compositionController:(id)controller contentEditingOutput:(id)output workImageVersion:(int64_t)version
{
  assetCopy = asset;
  providerCopy = provider;
  directoryCopy = directory;
  controllerCopy = controller;
  outputCopy = output;
  v27.receiver = self;
  v27.super_class = PUSaveReviewAssetRequest;
  v20 = [(PUSaveReviewAssetRequest *)&v27 init];
  v21 = v20;
  if (v20)
  {
    v20->_identifier = atomic_fetch_add(_mediaDestinationRequestIdentifier, 1u) + 1;
    objc_storeStrong(&v20->_editableAsset, asset);
    objc_storeStrong(&v21->_editableMediaProvider, provider);
    v22 = [directoryCopy copy];
    directory = v21->_directory;
    v21->_directory = v22;

    v24 = [controllerCopy copy];
    compositionController = v21->_compositionController;
    v21->_compositionController = v24;

    objc_storeStrong(&v21->_contentEditingOutput, output);
    v21->_workImageVersion = version;
    v21->_currentState = 0;
  }

  return v21;
}

- (PUSaveReviewAssetRequest)initWithAsset:(id)asset mediaProvider:(id)provider directory:(id)directory compositionController:(id)controller workImageVersion:(int64_t)version
{
  assetCopy = asset;
  providerCopy = provider;
  directoryCopy = directory;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  v17 = [(PUSaveReviewAssetRequest *)self initWithAsset:assetCopy mediaProvider:providerCopy directory:directoryCopy compositionController:controllerCopy contentEditingOutput:0 workImageVersion:version];

  return v17;
}

- (PUSaveReviewAssetRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUSaveReviewAssetRequest.m" lineNumber:72 description:@"use the designated initializer"];

  return 0;
}

@end