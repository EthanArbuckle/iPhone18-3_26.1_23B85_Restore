@interface PEPhotoKitMediaDestination
- (BOOL)supportsProgressForRequestWithIdentifier:(int)a3;
- (PEPhotoKitMediaDestination)init;
- (PEPhotoKitMediaDestinationDelegate)delegate;
- (double)progressForRequestWithIdentifier:(int)a3;
- (id)_fetchUpdatedAssetWithLocalIdentifier:(id)a3 photoLibrary:(id)a4;
- (id)_saveEditsForPhoto:(id)a3 saveRequest:(id)a4 completionHandler:(id)a5;
- (int)revertEditsForAsset:(id)a3 completionHandler:(id)a4;
- (int)saveEditsForAsset:(id)a3 usingContentEditingOutput:(id)a4 livePhotoState:(unsigned __int16)a5 completionHandler:(id)a6;
- (int)saveInternalEditsForAsset:(id)a3 usingCompositionController:(id)a4 contentEditingOutput:(id)a5 version:(int64_t)a6 livePhotoState:(unsigned __int16)a7 completionHandler:(id)a8;
- (void)_requestDidFinish:(id)a3;
- (void)cancelRequestWithIdentifier:(int)a3;
@end

@implementation PEPhotoKitMediaDestination

- (PEPhotoKitMediaDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_fetchUpdatedAssetWithLocalIdentifier:(id)a3 photoLibrary:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CD9880] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:a4];
  v7 = MEMORY[0x277CD97A8];
  v15[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:v6];

  v10 = [v9 firstObject];
  if (!v10)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_ERROR, "Error fetching photo with local identifier: %{public}@", &v13, 0xCu);
    }
  }

  return v10;
}

- (void)_requestDidFinish:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v7 = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v8 = [v7 objectForKey:v10];

  if (v8 != v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:182 description:@"The pending request doesn't match the expected request"];
  }

  [v7 removeObjectForKey:v10];
}

- (id)_saveEditsForPhoto:(id)a3 saveRequest:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"photo"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"saveRequest"}];

LABEL_3:
  v12 = [v10 identifier];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v14 = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v15 = [v14 objectForKey:v13];
  if (v15)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:149 description:@"Cannot begin a new request if there is a pending one for this photo"];

    v18 = 0;
  }

  else
  {
    [v14 setObject:v10 forKey:v13];
    v16 = [(PEPhotoKitMediaDestination *)self delegate];
    [v16 mediaDestination:self willBeginSaveRequest:v10];

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __79__PEPhotoKitMediaDestination__saveEditsForPhoto_saveRequest_completionHandler___block_invoke;
    v23[3] = &unk_279A30050;
    objc_copyWeak(&v27, &location);
    v17 = v10;
    v24 = v17;
    v25 = self;
    v26 = v11;
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

- (double)progressForRequestWithIdentifier:(int)a3
{
  v3 = *&a3;
  v4 = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
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
  v4 = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 objectForKey:v5];

  LOBYTE(v5) = [v6 supportsProgress];
  return v5;
}

- (void)cancelRequestWithIdentifier:(int)a3
{
  v3 = *&a3;
  v6 = [(PEPhotoKitMediaDestination *)self _pendingRequestsByRequestIdentifier];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v5 = [v6 objectForKey:v4];

  [v5 cancelSaveOperation];
}

- (int)revertEditsForAsset:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:98 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v9 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v9, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination revert edits...", buf, 2u);
  }

  v10 = v7;
  v11 = [[PESaveRequest alloc] initWithPhotoToRevertToOriginal:v10 applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__PEPhotoKitMediaDestination_revertEditsForAsset_completionHandler___block_invoke;
  v18[3] = &unk_279A30028;
  v19 = v10;
  v20 = v8;
  v18[4] = self;
  v12 = v10;
  v13 = v8;
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

- (int)saveInternalEditsForAsset:(id)a3 usingCompositionController:(id)a4 contentEditingOutput:(id)a5 version:(int64_t)a6 livePhotoState:(unsigned __int16)a7 completionHandler:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (!v15)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:68 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v18, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination save edits for asset...", buf, 2u);
  }

  v19 = v14;
  v20 = [[PESaveRequest alloc] initWithPhoto:v19 compositionController:v15 contentEditingOutput:v16 livePhotoState:v9 applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__PEPhotoKitMediaDestination_saveInternalEditsForAsset_usingCompositionController_contentEditingOutput_version_livePhotoState_completionHandler___block_invoke;
  v27[3] = &unk_279A30028;
  v29 = self;
  v30 = v17;
  v28 = v19;
  v21 = v19;
  v22 = v17;
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

- (int)saveEditsForAsset:(id)a3 usingContentEditingOutput:(id)a4 livePhotoState:(unsigned __int16)a5 completionHandler:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v12)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PEPhotoKitMediaDestination.m" lineNumber:41 description:@"PEPhotoKitMediaDestination can only support PHAsset!"];
  }

  v14 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v14, OS_LOG_TYPE_DEFAULT, "PEPhotoKitMediaDestination save edits by using content editing output...", buf, 2u);
  }

  v15 = v11;
  v16 = [[PESaveRequest alloc] initWithPhoto:v15 contentEditingOutput:v12 livePhotoState:v7 applyVideoOrientationAsMetadata:[(PEPhotoKitMediaDestination *)self applyVideoOrientationAsMetadata]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __107__PEPhotoKitMediaDestination_saveEditsForAsset_usingContentEditingOutput_livePhotoState_completionHandler___block_invoke;
  v23[3] = &unk_279A30028;
  v25 = self;
  v26 = v13;
  v24 = v15;
  v17 = v15;
  v18 = v13;
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