@interface PEPhotoKitMediaDestination
- (BOOL)supportsProgressForRequestWithIdentifier:(int)identifier;
- (PEPhotoKitMediaDestination)init;
- (PEPhotoKitMediaDestinationDelegate)delegate;
- (double)progressForRequestWithIdentifier:(int)identifier;
- (id)_fetchUpdatedAssetWithLocalIdentifier:(id)identifier photoLibrary:(id)library;
- (id)_saveEditsForPhoto:(id)photo saveRequest:(id)request completionHandler:(id)handler;
- (int)revertEditsForAsset:(id)asset completionHandler:(id)handler;
- (int)saveEditsForAsset:(id)asset usingContentEditingOutput:(id)output livePhotoState:(unsigned __int16)state completionHandler:(id)handler;
- (int)saveInternalEditsForAsset:(id)asset usingCompositionController:(id)controller contentEditingOutput:(id)output version:(int64_t)version livePhotoState:(unsigned __int16)state completionHandler:(id)handler;
- (void)_requestDidFinish:(id)finish;
- (void)cancelRequestWithIdentifier:(int)identifier;
@end

@implementation PEPhotoKitMediaDestination

- (PEPhotoKitMediaDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_fetchUpdatedAssetWithLocalIdentifier:(id)identifier photoLibrary:(id)library
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CD9880] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:library];
  v7 = MEMORY[0x277CD97A8];
  v15[0] = identifierCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:v6];

  firstObject = [v9 firstObject];
  if (!firstObject)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = identifierCopy;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_ERROR, "Error fetching photo with local identifier: %{public}@", &v13, 0xCu);
    }
  }

  return firstObject;
}

- (void)_requestDidFinish:(id)finish
{
  finishCopy = finish;
  identifier = [finishCopy identifier];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:identifier];
  _pendingRequestsByRequestIdentifier = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v8 = [_pendingRequestsByRequestIdentifier objectForKey:v10];

  if (v8 != finishCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:182 description:@"The pending request doesn't match the expected request"];
  }

  [_pendingRequestsByRequestIdentifier removeObjectForKey:v10];
}

- (id)_saveEditsForPhoto:(id)photo saveRequest:(id)request completionHandler:(id)handler
{
  photoCopy = photo;
  requestCopy = request;
  handlerCopy = handler;
  if (photoCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"photo"}];

    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"saveRequest"}];

LABEL_3:
  identifier = [requestCopy identifier];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:identifier];
  _pendingRequestsByRequestIdentifier = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v15 = [_pendingRequestsByRequestIdentifier objectForKey:v13];
  if (v15)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:149 description:@"Cannot begin a new request if there is a pending one for this photo"];

    v18 = 0;
  }

  else
  {
    [_pendingRequestsByRequestIdentifier setObject:requestCopy forKey:v13];
    delegate = [(PEPhotoKitMediaDestination *)self delegate];
    [delegate mediaDestination:self willBeginSaveRequest:requestCopy];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__PEPhotoKitMediaDestination__saveEditsForPhoto_saveRequest_completionHandler___block_invoke;
    v23[3] = &unk_279A30050;
    objc_copyWeak(&v27, &location);
    v17 = requestCopy;
    v24 = v17;
    selfCopy = self;
    v26 = handlerCopy;
    [v17 beginSaveOperationWithCompletionHandler:v23];
    v18 = v17;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __79__PEPhotoKitMediaDestination__saveEditsForPhoto_saveRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_25E6E9000, v6, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination saved edits successfully: %{public}@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _requestDidFinish:*(a1 + 32)];

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = [*(a1 + 40) delegate];
  [v10 mediaDestination:*(a1 + 40) didCompleteSaveRequest:*(a1 + 32)];
}

- (double)progressForRequestWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  _pendingRequestsByRequestIdentifier = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
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
  _pendingRequestsByRequestIdentifier = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [_pendingRequestsByRequestIdentifier objectForKey:v5];

  LOBYTE(v5) = [v6 supportsProgress];
  return v5;
}

- (void)cancelRequestWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  _pendingRequestsByRequestIdentifier = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v5 = [_pendingRequestsByRequestIdentifier objectForKey:v4];

  [v5 cancelSaveOperation];
}

- (int)revertEditsForAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:98 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination revert edits...", buf, 2u);
  }

  v10 = assetCopy;
  v11 = [[PESaveRequest alloc] initWithPhotoToRevertToOriginal:v10 applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__PEPhotoKitMediaDestination_revertEditsForAsset_completionHandler___block_invoke;
  v18[3] = &unk_279A30028;
  v19 = v10;
  v20 = handlerCopy;
  v18[4] = self;
  v12 = v10;
  v13 = handlerCopy;
  v14 = [(PEPhotoKitMediaDestination *)self _saveEditsForPhoto:v12 saveRequest:v11 completionHandler:v18];

  LODWORD(v11) = [v14 identifier];
  return v11;
}

uint64_t __68__PEPhotoKitMediaDestination_revertEditsForAsset_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v12 = v5;
    if (a2)
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) localIdentifier];
      v9 = [*(a1 + 40) photoLibrary];
      v10 = [v7 _fetchUpdatedAssetWithLocalIdentifier:v8 photoLibrary:v9];

      v6 = *(a1 + 48);
    }

    else
    {
      v10 = 0;
    }

    (*(v6 + 16))(v6, v10, v12);
  }

  return MEMORY[0x2821F96F8]();
}

- (int)saveInternalEditsForAsset:(id)asset usingCompositionController:(id)controller contentEditingOutput:(id)output version:(int64_t)version livePhotoState:(unsigned __int16)state completionHandler:(id)handler
{
  stateCopy = state;
  assetCopy = asset;
  controllerCopy = controller;
  outputCopy = output;
  handlerCopy = handler;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:68 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v18, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination save edits for asset...", buf, 2u);
  }

  v19 = assetCopy;
  v20 = [[PESaveRequest alloc] initWithPhoto:v19 compositionController:controllerCopy contentEditingOutput:outputCopy livePhotoState:stateCopy applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__PEPhotoKitMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke;
  v27[3] = &unk_279A30028;
  selfCopy = self;
  v30 = handlerCopy;
  v28 = v19;
  v21 = v19;
  v22 = handlerCopy;
  v23 = [(PEPhotoKitMediaDestination *)self _saveEditsForPhoto:v21 saveRequest:v20 completionHandler:v27];

  LODWORD(v19) = [v23 identifier];
  return v19;
}

void __145__PEPhotoKitMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 48))
  {
    v6 = [*(a1 + 32) localIdentifier];
    if (a2)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) photoLibrary];
      v9 = [v7 _fetchUpdatedAssetWithLocalIdentifier:v6 photoLibrary:v8];

      if (v5 | v9)
      {
LABEL_6:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __145__PEPhotoKitMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke_2;
        block[3] = &unk_279A313C0;
        v18 = *(a1 + 48);
        v16 = v9;
        v5 = v5;
        v17 = v5;
        v14 = v9;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_7;
      }

      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CD9C98];
      v19 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PEPhotoKitMediaDestination saveInternalEditsForAsset: Missing asset with local identifier: %@", v6];
      v20[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v5 = [v10 ph_errorWithDomain:v11 code:3303 userInfo:v13];
    }

    v9 = 0;
    goto LABEL_6;
  }

LABEL_7:
}

- (int)saveEditsForAsset:(id)asset usingContentEditingOutput:(id)output livePhotoState:(unsigned __int16)state completionHandler:(id)handler
{
  stateCopy = state;
  assetCopy = asset;
  outputCopy = output;
  handlerCopy = handler;
  if (!outputCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:41 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v14 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination save edits by using content editing output...", buf, 2u);
  }

  v15 = assetCopy;
  v16 = [[PESaveRequest alloc] initWithPhoto:v15 contentEditingOutput:outputCopy livePhotoState:stateCopy applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __107__PEPhotoKitMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke;
  v23[3] = &unk_279A30028;
  selfCopy = self;
  v26 = handlerCopy;
  v24 = v15;
  v17 = v15;
  v18 = handlerCopy;
  v19 = [(PEPhotoKitMediaDestination *)self _saveEditsForPhoto:v17 saveRequest:v16 completionHandler:v23];

  LODWORD(v15) = [v19 identifier];
  return v15;
}

void __107__PEPhotoKitMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 48))
  {
    v6 = [*(a1 + 32) localIdentifier];
    if (a2)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) photoLibrary];
      v9 = [v7 _fetchUpdatedAssetWithLocalIdentifier:v6 photoLibrary:v8];

      if (v5 | v9)
      {
LABEL_6:
        (*(*(a1 + 48) + 16))();

        goto LABEL_7;
      }

      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CD9C98];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PEPhotoKitMediaDestination saveEditsForAsset: Missing asset with local identifier: %@", v6, *MEMORY[0x277CCA450]];
      v15[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v5 = [v10 ph_errorWithDomain:v11 code:3303 userInfo:v13];
    }

    v9 = 0;
    goto LABEL_6;
  }

LABEL_7:
}

- (PEPhotoKitMediaDestination)init
{
  v6.receiver = self;
  v6.super_class = PEPhotoKitMediaDestination;
  v2 = [(PEPhotoKitMediaDestination *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingRequestsByRequestIdentifier = v2->_pendingRequestsByRequestIdentifier;
    v2->_pendingRequestsByRequestIdentifier = v3;
  }

  return v2;
}

@end