@interface VUIUniversalCollectionAssetController
- (BOOL)contentAllowsCellularDownload;
- (BOOL)supportsStartingDownload;
- (VUIContentRating)contentRating;
- (VUIUniversalCollectionAssetController)initWithAssetControllers:(id)a3 completionCount:(unint64_t)a4 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a5;
- (VUIUniversalCollectionAssetController)initWithMediaItemCollection:(id)a3;
- (void)_updateDownloadStateAndNotifyListeners;
- (void)addAssetControllers:(id)a3;
- (void)cancelAndRemoveDownload;
- (void)dealloc;
- (void)deleteAndRedownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 completion:(id)a6;
- (void)pauseDownload;
- (void)removeAssetControllers:(id)a3;
- (void)resumeDownload;
- (void)setCompletionCount:(unint64_t)a3;
- (void)setCompletionDispatchQueue:(id)a3;
- (void)startDownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7 completion:(id)a8;
@end

@implementation VUIUniversalCollectionAssetController

- (VUIUniversalCollectionAssetController)initWithMediaItemCollection:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 valueForProperty:*MEMORY[0x1E696F8E0]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v4 items];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[VUIUniversalAssetController alloc] initWithMPMediaItem:*(*(&v17 + 1) + 8 * v11)];
        [v5 addObject:v12];
        if (v6)
        {
          [(VUIUniversalAssetController *)v12 setMpMediaItemCollection:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [v4 items];
  v14 = [v13 count];

  v15 = [(VUIUniversalCollectionAssetController *)self initWithAssetControllers:v5 completionCount:v14 showDownloadingOnlyWhenWholeCollectionDownloads:0];
  return v15;
}

- (VUIUniversalCollectionAssetController)initWithAssetControllers:(id)a3 completionCount:(unint64_t)a4 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v28.receiver = self;
  v28.super_class = VUIUniversalCollectionAssetController;
  v10 = [(VUIUniversalCollectionAssetController *)&v28 init];
  v11 = v10;
  if (v10)
  {
    v23 = a4;
    objc_storeStrong(&v10->_completionDispatchQueueInternal, MEMORY[0x1E69E96A0]);
    v12 = objc_alloc_init(VUIMediaEntityAssetControllerState);
    stateInternal = v11->_stateInternal;
    v11->_stateInternal = v12;

    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setStatus:0];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setDownloadProgress:-1.0];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setSupportsCancellation:1];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setSupportsPausing:1];
    v11->_showDownloadingOnlyWhenWholeCollectionDownloads = a5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v9;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          [v20 addObserver:v11 selector:sel__assetControllerDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v19];

          [v19 setCompletionDispatchQueue:v11->_completionDispatchQueueInternal];
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    objc_storeStrong(&v11->_assetControllers, a3);
    v11->_completionCount = v23;
    [(VUIUniversalCollectionAssetController *)v11 _updateDownloadStateAndNotifyListeners];
    v9 = v22;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIUniversalCollectionAssetController;
  [(VUIUniversalCollectionAssetController *)&v4 dealloc];
}

- (BOOL)supportsStartingDownload
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) supportsStartingDownload])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)contentAllowsCellularDownload
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) contentAllowsCellularDownload])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)setCompletionDispatchQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v6 = v4;
  [(VUIUniversalCollectionAssetController *)self setCompletionDispatchQueueInternal:v4];
}

- (void)startDownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7 completion:(id)a8
{
  v14 = a8;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 1;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__33;
  v33[4] = __Block_byref_object_dispose__33;
  v34 = 0;
  v15 = dispatch_group_create();
  v16 = +[VUIDownloadManager sharedInstance];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke;
  v24[3] = &unk_1E8736E60;
  v24[4] = self;
  v17 = v15;
  v29 = a3;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v25 = v17;
  v26 = v35;
  v27 = v33;
  v28 = a4;
  [v16 performBatchAddDownloadsWithBlock:v24];

  v18 = [(VUIUniversalCollectionAssetController *)self completionDispatchQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_3;
  v20[3] = &unk_1E8736E88;
  v21 = v14;
  v22 = v35;
  v23 = v33;
  v19 = v14;
  dispatch_group_notify(v17, v18, v20);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 32) assetControllers];
  v2 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v21 = v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v6 state];
        v8 = [v7 status];

        v9 = [v6 state];
        v10 = [v9 status];

        if (v10 == 4 && ([v6 allowsManualDownloadRenewal] & 1) == 0)
        {
          v12 = [v6 state];
          v13 = [v12 downloadExpirationDate];

          if (v13)
          {
            v11 = [MEMORY[0x1E695DF00] shouldShowLabelForDownloadExpirationDate:v13];
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        if (v8)
        {
          v14 = v11 == 0;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          dispatch_group_enter(*(a1 + 40));
          v15 = *(a1 + 72);
          v16 = *(a1 + 73);
          v17 = *(a1 + 74);
          v18 = *(a1 + 75);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v25[0] = __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_2;
          v25[1] = &unk_1E8736E38;
          v19 = *(a1 + 64);
          v27 = *(a1 + 56);
          v23 = *(a1 + 40);
          v20 = v23;
          v26 = v23;
          [v6 startDownloadAllowingCellular:v15 quality:v19 shouldMarkAsDeletedOnCancellationOrFailure:v16 prefer3DOrImmersiveDownload:v17 isAutomatic:v18 completion:v24];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v3);
  }
}

void __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1 && (a2 & 1) == 0)
  {
    *(v6 + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __173__VUIUniversalCollectionAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_3(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (void)deleteAndRedownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 completion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 1, 0);
  }
}

- (void)pauseDownload
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) pauseDownload];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resumeDownload
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) resumeDownload];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cancelAndRemoveDownload
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self;
  v4 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 state];
        v11 = [v10 status];

        if (v11 <= 5 && ((1 << v11) & 0x2E) != 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = [(VUIUniversalCollectionAssetController *)v19 assetControllers];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * j) cancelAndRemoveDownload];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)addAssetControllers:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSArray *)self->_assetControllers mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138412290;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v5 indexOfObject:{v11, v18}];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addObject:v11];
          v13 = VUIDefaultLogObject();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = v18;
          v25 = v11;
          v14 = v13;
          v15 = "VUIUniversalCollectionAssetController:: add assetController %@ to collectionAssetController";
        }

        else
        {
          [v5 replaceObjectAtIndex:v12 withObject:v11];
          v13 = VUIDefaultLogObject();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = v18;
          v25 = v11;
          v14 = v13;
          v15 = "VUIUniversalCollectionAssetController:: replace assetController %@ to collectionAssetController";
        }

        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
LABEL_12:

        v16 = [MEMORY[0x1E696AD88] defaultCenter];
        [v16 addObserver:self selector:sel__assetControllerDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v11];

        [v11 setCompletionDispatchQueue:self->_completionDispatchQueueInternal];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = [v5 copy];
  [(VUIUniversalCollectionAssetController *)self setAssetControllers:v17];
}

- (void)removeAssetControllers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  assetControllers = self->_assetControllers;
  v5 = a3;
  v6 = [(NSArray *)assetControllers mutableCopy];
  [v6 removeObjectsInArray:v5];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSArray *)self->_assetControllers count];
    v10 = 134218240;
    v11 = v8;
    v12 = 2048;
    v13 = [v6 count];
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIUniversalCollectionAssetController:: removeAssetControllers, before: %lu, after: %lu", &v10, 0x16u);
  }

  v9 = [v6 copy];
  [(VUIUniversalCollectionAssetController *)self setAssetControllers:v9];

  [(VUIUniversalCollectionAssetController *)self _updateDownloadStateAndNotifyListeners];
}

- (VUIContentRating)contentRating
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) contentRating];
        v9 = [v8 rank];
        if (v9 > [v5 rank])
        {
          v10 = v8;

          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCompletionCount:(unint64_t)a3
{
  if (self->_completionCount != a3)
  {
    self->_completionCount = a3;
    [(VUIUniversalCollectionAssetController *)self _updateDownloadStateAndNotifyListeners];
  }
}

- (void)_updateDownloadStateAndNotifyListeners
{
  v65 = *MEMORY[0x1E69E9840];
  v43 = [(VUIUniversalCollectionAssetController *)self completionDispatchQueueInternal];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  val = self;
  v5 = [(VUIUniversalCollectionAssetController *)self assetControllers];
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (!v6)
  {
    v46 = 0;
    v47 = 0;
    v45 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v8 = 0;
  v9 = *v58;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v58 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v57 + 1) + 8 * i);
      v12 = [v11 state];
      v13 = [v12 status];

      if (v13)
      {
        v14 = [v11 state];
        v15 = [v14 status];

        if (v15 != 4)
        {
          [v4 addObject:v11];
          continue;
        }

        [v48 addObject:v11];
        v16 = [v11 state];
        v17 = [v16 downloadExpirationDate];

        if (v17 && [MEMORY[0x1E695DF00] shouldShowLabelForDownloadExpirationDate:v17])
        {
          v18 = v17;

          v47 = v18;
        }
      }

      else
      {
        [v3 addObject:v11];
        v19 = [v11 state];
        v20 = [v19 downloadFailedDueToError];

        if (v20)
        {
          ++v8;
          continue;
        }

        v21 = [v11 state];
        v17 = [v21 downloadExpirationDate];

        if (v17 && [v17 vui_isInThePast])
        {
          ++v45;
          v22 = v17;

          v46 = v22;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
  }

  while (v7);
LABEL_22:

  v23 = objc_alloc_init(VUIMediaEntityAssetControllerState);
  [(VUIMediaEntityAssetControllerState *)v23 setStatus:0];
  v24 = v8 + v45 + [v48 count];
  v25 = val;
  showDownloadingOnlyWhenWholeCollectionDownloads = val->_showDownloadingOnlyWhenWholeCollectionDownloads;
  v27 = [v4 count];
  if (!showDownloadingOnlyWhenWholeCollectionDownloads)
  {
    v28 = v43;
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v28 = v43;
  if (v27 && v27 + v24 == val->_completionCount)
  {
LABEL_28:
    [(VUIMediaEntityAssetControllerState *)v23 setStatus:2];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v31 = v4;
    v32 = [v31 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      v35 = 0.0;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = [*(*(&v53 + 1) + 8 * j) state];
          [v37 downloadProgress];
          v35 = v35 + v38;
        }

        v33 = [v31 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v33);
    }

    else
    {
      v35 = 0.0;
    }

    v25 = val;
    -[VUIMediaEntityAssetControllerState setDownloadProgress:](v23, "setDownloadProgress:", (v35 + [v48 count]) / -[NSArray count](val->_assetControllers, "count"));
    goto LABEL_45;
  }

LABEL_25:
  v29 = [v48 count];
  if (v29 == [(VUIUniversalCollectionAssetController *)val completionCount])
  {
    [(VUIMediaEntityAssetControllerState *)v23 setStatus:4];
    v30 = v47;
    [(VUIMediaEntityAssetControllerState *)v23 setDownloadExpirationDate:v47];
    [(VUIMediaEntityAssetControllerState *)v23 setSupportsCancellation:1];
    [(VUIMediaEntityAssetControllerState *)v23 setSupportsPausing:1];
    goto LABEL_46;
  }

  [(VUIMediaEntityAssetControllerState *)v23 setStatus:0];
  if (v24 == val->_completionCount)
  {
    v39 = v46;
  }

  else
  {
    v39 = 0;
  }

  if (v8)
  {
    v40 = v24 == val->_completionCount;
  }

  else
  {
    v40 = 0;
  }

  [(VUIMediaEntityAssetControllerState *)v23 setDownloadFailedDueToError:v40];
  [(VUIMediaEntityAssetControllerState *)v23 setDownloadExpirationDate:v39];
  [(VUIMediaEntityAssetControllerState *)v23 setDownloadProgress:-1.0];
  [(VUIMediaEntityAssetControllerState *)v23 setSupportsCancellation:1];
  [(VUIMediaEntityAssetControllerState *)v23 setSupportsPausing:1];
LABEL_45:
  v30 = v47;
LABEL_46:
  [(VUIUniversalCollectionAssetController *)v25 setStateInternal:v23];
  if (v23)
  {
    v61 = @"VUIMediaEntityAssetControllerStateKey";
    v62 = v23;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  }

  else
  {
    v41 = 0;
  }

  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__VUIUniversalCollectionAssetController__updateDownloadStateAndNotifyListeners__block_invoke;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v51, &location);
  v50 = v41;
  v42 = v41;
  dispatch_async(v28, block);

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

void __79__VUIUniversalCollectionAssetController__updateDownloadStateAndNotifyListeners__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v4 userInfo:*(a1 + 32)];

    WeakRetained = v4;
  }
}

@end