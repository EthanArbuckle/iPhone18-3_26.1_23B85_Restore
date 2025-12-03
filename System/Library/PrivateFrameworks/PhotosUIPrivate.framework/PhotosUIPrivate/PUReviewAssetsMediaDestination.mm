@interface PUReviewAssetsMediaDestination
- (BOOL)supportsProgressForRequestWithIdentifier:(int)identifier;
- (PUReviewAssetsMediaDestination)initWithOutputDirectory:(id)directory mediaProvider:(id)provider;
- (double)progressForRequestWithIdentifier:(int)identifier;
- (id)_saveEditsWithRequest:(id)request completionHandler:(id)handler;
- (int)revertEditsForAsset:(id)asset completionHandler:(id)handler;
- (int)saveEditsForAsset:(id)asset usingContentEditingOutput:(id)output livePhotoState:(unsigned __int16)state completionHandler:(id)handler;
- (int)saveInternalEditsForAsset:(id)asset usingCompositionController:(id)controller contentEditingOutput:(id)output version:(int64_t)version livePhotoState:(unsigned __int16)state completionHandler:(id)handler;
- (int64_t)_workImageVersionForContentEditingOutput:(id)output;
- (void)_requestDidFinish:(id)finish;
- (void)cancelRequestWithIdentifier:(int)identifier;
@end

@implementation PUReviewAssetsMediaDestination

- (PUReviewAssetsMediaDestination)initWithOutputDirectory:(id)directory mediaProvider:(id)provider
{
  directoryCopy = directory;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = PUReviewAssetsMediaDestination;
  v8 = [(PUReviewAssetsMediaDestination *)&v15 init];
  if (v8 && [directoryCopy hasDirectoryPath])
  {
    v9 = [directoryCopy copy];
    desiredOutputDirectory = v8->__desiredOutputDirectory;
    v8->__desiredOutputDirectory = v9;

    objc_storeStrong(&v8->__mediaProvider, provider);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequestsByRequestIdentifier = v8->_pendingRequestsByRequestIdentifier;
    v8->_pendingRequestsByRequestIdentifier = v11;

    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)_workImageVersionForContentEditingOutput:(id)output
{
  baseVersion = [output baseVersion];
  if (baseVersion < 3)
  {
    return baseVersion + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_requestDidFinish:(id)finish
{
  finishCopy = finish;
  identifier = [finishCopy identifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:identifier];
  _pendingRequestsByRequestIdentifier = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v8 = [_pendingRequestsByRequestIdentifier objectForKey:v10];

  if (v8 != finishCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:146 description:@"The pending request doesn't match the expected request"];
  }

  [_pendingRequestsByRequestIdentifier removeObjectForKey:v10];
}

- (id)_saveEditsWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"saveRequest"}];
  }

  identifier = [requestCopy identifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:identifier];
  _pendingRequestsByRequestIdentifier = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v12 = [_pendingRequestsByRequestIdentifier objectForKey:v10];
  if (v12)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:119 description:@"Cannot begin a new request if there is a pending one for this photo"];

    v14 = 0;
  }

  else
  {
    [_pendingRequestsByRequestIdentifier setObject:requestCopy forKey:v10];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PUReviewAssetsMediaDestination__saveEditsWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_1E7B7D6C8;
    objc_copyWeak(&v21, &location);
    v13 = requestCopy;
    v19 = v13;
    v20 = handlerCopy;
    [v13 beginSaveOperationWithCompletionHandler:v18];
    v14 = v13;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __74__PUReviewAssetsMediaDestination__saveEditsWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _requestDidFinish:*(a1 + 32)];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (double)progressForRequestWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  _pendingRequestsByRequestIdentifier = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [_pendingRequestsByRequestIdentifier objectForKey:v5];

  v7 = 0.0;
  if ([v6 supportsProgress])
  {
    [v6 progress];
    v7 = v8;
  }

  return v7;
}

- (BOOL)supportsProgressForRequestWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  _pendingRequestsByRequestIdentifier = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [_pendingRequestsByRequestIdentifier objectForKey:v5];

  LOBYTE(v5) = [v6 supportsProgress];
  return v5;
}

- (void)cancelRequestWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  _pendingRequestsByRequestIdentifier = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v5 = [_pendingRequestsByRequestIdentifier objectForKey:v4];

  [v5 cancelSaveOperation];
}

- (int)revertEditsForAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  _mediaProvider = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  _desiredOutputDirectory = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v11 = [[PUSaveReviewAssetRequest alloc] initWithAssetForRevertToOriginal:assetCopy mediaProvider:_mediaProvider directory:_desiredOutputDirectory];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PUReviewAssetsMediaDestination_revertEditsForAsset_completionHandler___block_invoke;
  v16[3] = &unk_1E7B7D6A0;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(PUReviewAssetsMediaDestination *)self _saveEditsWithRequest:v11 completionHandler:v16];

  LODWORD(v11) = [v13 identifier];
  return v11;
}

uint64_t __72__PUReviewAssetsMediaDestination_revertEditsForAsset_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int)saveInternalEditsForAsset:(id)asset usingCompositionController:(id)controller contentEditingOutput:(id)output version:(int64_t)version livePhotoState:(unsigned __int16)state completionHandler:(id)handler
{
  assetCopy = asset;
  controllerCopy = controller;
  outputCopy = output;
  handlerCopy = handler;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "PUReviewAssetsMediaDestination save edits for asset...", buf, 2u);
  }

  _mediaProvider = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  _desiredOutputDirectory = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v21 = [[PUSaveReviewAssetRequest alloc] initWithAsset:assetCopy mediaProvider:_mediaProvider directory:_desiredOutputDirectory compositionController:controllerCopy workImageVersion:version];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __149__PUReviewAssetsMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke;
  v26[3] = &unk_1E7B7D6A0;
  v27 = handlerCopy;
  v22 = handlerCopy;
  v23 = [(PUReviewAssetsMediaDestination *)self _saveEditsWithRequest:v21 completionHandler:v26];

  LODWORD(v21) = [v23 identifier];
  return v21;
}

uint64_t __149__PUReviewAssetsMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int)saveEditsForAsset:(id)asset usingContentEditingOutput:(id)output livePhotoState:(unsigned __int16)state completionHandler:(id)handler
{
  assetCopy = asset;
  outputCopy = output;
  handlerCopy = handler;
  if (!outputCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput"}];
  }

  _mediaProvider = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  _desiredOutputDirectory = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v15 = [[PUSaveReviewAssetRequest alloc] initWithAsset:assetCopy mediaProvider:_mediaProvider directory:_desiredOutputDirectory contentEditingOutput:outputCopy workImageVersion:[(PUReviewAssetsMediaDestination *)self _workImageVersionForContentEditingOutput:outputCopy]];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__PUReviewAssetsMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke;
  v20[3] = &unk_1E7B7D6A0;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = [(PUReviewAssetsMediaDestination *)self _saveEditsWithRequest:v15 completionHandler:v20];

  LODWORD(v15) = [v17 identifier];
  return v15;
}

uint64_t __111__PUReviewAssetsMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end