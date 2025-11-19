@interface PUReviewAssetsMediaDestination
- (BOOL)supportsProgressForRequestWithIdentifier:(int)a3;
- (PUReviewAssetsMediaDestination)initWithOutputDirectory:(id)a3 mediaProvider:(id)a4;
- (double)progressForRequestWithIdentifier:(int)a3;
- (id)_saveEditsWithRequest:(id)a3 completionHandler:(id)a4;
- (int)revertEditsForAsset:(id)a3 completionHandler:(id)a4;
- (int)saveEditsForAsset:(id)a3 usingContentEditingOutput:(id)a4 livePhotoState:(unsigned __int16)a5 completionHandler:(id)a6;
- (int)saveInternalEditsForAsset:(id)a3 usingCompositionController:(id)a4 contentEditingOutput:(id)a5 version:(int64_t)a6 livePhotoState:(unsigned __int16)a7 completionHandler:(id)a8;
- (int64_t)_workImageVersionForContentEditingOutput:(id)a3;
- (void)_requestDidFinish:(id)a3;
- (void)cancelRequestWithIdentifier:(int)a3;
@end

@implementation PUReviewAssetsMediaDestination

- (PUReviewAssetsMediaDestination)initWithOutputDirectory:(id)a3 mediaProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PUReviewAssetsMediaDestination;
  v8 = [(PUReviewAssetsMediaDestination *)&v15 init];
  if (v8 && [v6 hasDirectoryPath])
  {
    v9 = [v6 copy];
    desiredOutputDirectory = v8->__desiredOutputDirectory;
    v8->__desiredOutputDirectory = v9;

    objc_storeStrong(&v8->__mediaProvider, a4);
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

- (int64_t)_workImageVersionForContentEditingOutput:(id)a3
{
  v3 = [a3 baseVersion];
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_requestDidFinish:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v7 = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v8 = [v7 objectForKey:v10];

  if (v8 != v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:146 description:@"The pending request doesn't match the expected request"];
  }

  [v7 removeObjectForKey:v10];
}

- (id)_saveEditsWithRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"saveRequest"}];
  }

  v9 = [v7 identifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v11 = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v12 = [v11 objectForKey:v10];
  if (v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:119 description:@"Cannot begin a new request if there is a pending one for this photo"];

    v14 = 0;
  }

  else
  {
    [v11 setObject:v7 forKey:v10];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PUReviewAssetsMediaDestination__saveEditsWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_1E7B7D6C8;
    objc_copyWeak(&v21, &location);
    v13 = v7;
    v19 = v13;
    v20 = v8;
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

- (double)progressForRequestWithIdentifier:(int)a3
{
  v3 = *&a3;
  v4 = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [v4 objectForKey:v5];

  v7 = 0.0;
  if ([v6 supportsProgress])
  {
    [v6 progress];
    v7 = v8;
  }

  return v7;
}

- (BOOL)supportsProgressForRequestWithIdentifier:(int)a3
{
  v3 = *&a3;
  v4 = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [v4 objectForKey:v5];

  LOBYTE(v5) = [v6 supportsProgress];
  return v5;
}

- (void)cancelRequestWithIdentifier:(int)a3
{
  v3 = *&a3;
  v6 = [(PUReviewAssetsMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v5 = [v6 objectForKey:v4];

  [v5 cancelSaveOperation];
}

- (int)revertEditsForAsset:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  v10 = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v11 = [[PUSaveReviewAssetRequest alloc] initWithAssetForRevertToOriginal:v7 mediaProvider:v9 directory:v10];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PUReviewAssetsMediaDestination_revertEditsForAsset_completionHandler___block_invoke;
  v16[3] = &unk_1E7B7D6A0;
  v17 = v8;
  v12 = v8;
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

- (int)saveInternalEditsForAsset:(id)a3 usingCompositionController:(id)a4 contentEditingOutput:(id)a5 version:(int64_t)a6 livePhotoState:(unsigned __int16)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (!v15)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "PUReviewAssetsMediaDestination save edits for asset...", buf, 2u);
  }

  v19 = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  v20 = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v21 = [[PUSaveReviewAssetRequest alloc] initWithAsset:v14 mediaProvider:v19 directory:v20 compositionController:v15 workImageVersion:a6];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __149__PUReviewAssetsMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke;
  v26[3] = &unk_1E7B7D6A0;
  v27 = v17;
  v22 = v17;
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

- (int)saveEditsForAsset:(id)a3 usingContentEditingOutput:(id)a4 livePhotoState:(unsigned __int16)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsMediaDestination.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput"}];
  }

  v13 = [(PUReviewAssetsMediaDestination *)self _mediaProvider];
  v14 = [(PUReviewAssetsMediaDestination *)self _desiredOutputDirectory];
  v15 = [[PUSaveReviewAssetRequest alloc] initWithAsset:v10 mediaProvider:v13 directory:v14 contentEditingOutput:v11 workImageVersion:[(PUReviewAssetsMediaDestination *)self _workImageVersionForContentEditingOutput:v11]];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__PUReviewAssetsMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke;
  v20[3] = &unk_1E7B7D6A0;
  v21 = v12;
  v16 = v12;
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