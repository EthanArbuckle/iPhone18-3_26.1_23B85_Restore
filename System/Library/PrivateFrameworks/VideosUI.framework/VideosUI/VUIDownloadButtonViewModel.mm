@interface VUIDownloadButtonViewModel
+ (BOOL)shouldShowExpiredImageWithDownloadState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
+ (id)viewModelForSeasonDownloadWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 useShowCanonicalIdForSeasonDownload:(BOOL)a6 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a7;
+ (id)viewModelWithAssetController:(id)a3;
+ (id)viewModelWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 downloadType:(unint64_t)a6;
+ (id)viewModelWithMPMediaItem:(id)a3 seasonMediaItemCollection:(id)a4;
+ (id)viewModelWithMPMediaItemCollection:(id)a3;
+ (id)viewModelWithVideoManagedObject:(id)a3;
+ (id)viewModelWithVideosPlayable:(id)a3;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)isExpired;
- (BOOL)isExpiringSoon;
- (NSString)brandID;
- (NSString)brandName;
- (NSString)downloadStateStringValue;
- (VUIDownloadButtonViewModel)initWithAssetController:(id)a3;
- (VUIDownloadButtonViewModel)initWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 useShowCanonicalIdForSeason:(BOOL)a6 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a7 downloadType:(unint64_t)a8;
- (VUIDownloadButtonViewModel)initWithMPMediaItem:(id)a3 seasonMediaItemCollection:(id)a4;
- (VUIDownloadButtonViewModel)initWithMPMediaItemCollection:(id)a3;
- (VUIDownloadButtonViewModel)initWithVideoManagedObject:(id)a3;
- (VUIDownloadButtonViewModel)initWithVideosPlayable:(id)a3;
- (unint64_t)_downloadStateFromAssetsControllerStatus:(unint64_t)a3;
- (void)_assetControllerStateDidChange:(id)a3;
- (void)_downloadQueueManagerDidAddDownload:(id)a3;
- (void)_downloadQueueManagerDidRemoveDownload:(id)a3;
- (void)_initDownloadButtonStateForTVShowOrSeason;
- (void)_updateDownloadStateFromAssetControllerState:(id)a3;
- (void)dealloc;
- (void)deleteDownload;
- (void)fetchNewKeysForDownloadedVideo;
- (void)pauseDownload;
- (void)preflightPresentingViewController:(id)a3 completion:(id)a4;
- (void)resumeDownload;
- (void)setAssetController:(id)a3;
- (void)startDownloadAllowingCellular:(BOOL)a3 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a4 quality:(int64_t)a5 prefer3DOrImmersiveDownload:(BOOL)a6;
- (void)stopDownload;
@end

@implementation VUIDownloadButtonViewModel

+ (id)viewModelWithVideosPlayable:(id)a3
{
  v3 = a3;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithVideosPlayable:v3];

  return v4;
}

- (VUIDownloadButtonViewModel)initWithVideosPlayable:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v16 init];
  if (v5 && ([v4 adamID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    [(VUIDownloadButtonViewModel *)v5 setVideosPlayable:v4];
    v11 = MEMORY[0x1E69E9820];
    v12 = __53__VUIDownloadButtonViewModel_initWithVideosPlayable___block_invoke;
    v13 = &unk_1E872D990;
    v14 = v4;
    v8 = v5;
    v15 = v8;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v12(&v11);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v11);
    }

    v9 = [(VUIDownloadButtonViewModel *)v8 _createDownloadStateToStringArrayMap];
    [(VUIDownloadButtonViewModel *)v8 setDownloadStateToString:v9];

    v5 = v14;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __53__VUIDownloadButtonViewModel_initWithVideosPlayable___block_invoke(uint64_t a1)
{
  v2 = [[VUIUniversalAssetController alloc] initWithVideosPlayable:*(a1 + 32)];
  [*(a1 + 40) setAssetController:v2];
}

+ (id)viewModelWithAssetController:(id)a3
{
  v3 = a3;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithAssetController:v3];

  return v4;
}

+ (id)viewModelWithMPMediaItem:(id)a3 seasonMediaItemCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[VUIDownloadButtonViewModel alloc] initWithMPMediaItem:v6 seasonMediaItemCollection:v5];

  return v7;
}

+ (id)viewModelWithVideoManagedObject:(id)a3
{
  v3 = a3;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithVideoManagedObject:v3];

  return v4;
}

+ (id)viewModelWithMPMediaItemCollection:(id)a3
{
  v3 = a3;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithMPMediaItemCollection:v3];

  return v4;
}

- (VUIDownloadButtonViewModel)initWithAssetController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v9 init];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      [(VUIDownloadButtonViewModel *)v5 setAssetController:v4];
      v7 = [(VUIDownloadButtonViewModel *)v6 _createDownloadStateToStringArrayMap];
      [(VUIDownloadButtonViewModel *)v6 setDownloadStateToString:v7];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5;
    v6 = 0;
  }

  return v6;
}

- (VUIDownloadButtonViewModel)initWithMPMediaItem:(id)a3 seasonMediaItemCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VUIDownloadButtonViewModel;
  v8 = [(VUIDownloadButtonViewModel *)&v16 init];
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v11 = __76__VUIDownloadButtonViewModel_initWithMPMediaItem_seasonMediaItemCollection___block_invoke;
    v12 = &unk_1E872E008;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v11(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return v8;
}

void __76__VUIDownloadButtonViewModel_initWithMPMediaItem_seasonMediaItemCollection___block_invoke(uint64_t a1)
{
  v4 = [[VUIUniversalAssetController alloc] initWithMPMediaItem:*(a1 + 32)];
  [(VUIUniversalAssetController *)v4 setMpMediaItemCollection:*(a1 + 40)];
  [*(a1 + 48) setAssetController:v4];
  v2 = *(a1 + 48);
  v3 = [v2 _createDownloadStateToStringArrayMap];
  [v2 setDownloadStateToString:v3];
}

- (VUIDownloadButtonViewModel)initWithVideoManagedObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v12 init];
  if (v5)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = __57__VUIDownloadButtonViewModel_initWithVideoManagedObject___block_invoke;
    v9 = &unk_1E872D990;
    v10 = v4;
    v11 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(&v7);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v7);
    }
  }

  return v5;
}

void __57__VUIDownloadButtonViewModel_initWithVideoManagedObject___block_invoke(uint64_t a1)
{
  v4 = [[VUIUniversalAssetController alloc] initWithVideoManagedObject:*(a1 + 32)];
  [*(a1 + 40) setAssetController:v4];
  v2 = *(a1 + 40);
  v3 = [v2 _createDownloadStateToStringArrayMap];
  [v2 setDownloadStateToString:v3];
}

- (VUIDownloadButtonViewModel)initWithMPMediaItemCollection:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v12 init];
  if (v5)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = __60__VUIDownloadButtonViewModel_initWithMPMediaItemCollection___block_invoke;
    v9 = &unk_1E872D990;
    v10 = v4;
    v11 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(&v7);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v7);
    }
  }

  return v5;
}

void __60__VUIDownloadButtonViewModel_initWithMPMediaItemCollection___block_invoke(uint64_t a1)
{
  v4 = [[VUIUniversalCollectionAssetController alloc] initWithMediaItemCollection:*(a1 + 32)];
  [*(a1 + 40) setAssetController:v4];
  v2 = *(a1 + 40);
  v3 = [v2 _createDownloadStateToStringArrayMap];
  [v2 setDownloadStateToString:v3];
}

+ (id)viewModelWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 downloadType:(unint64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[VUIDownloadButtonViewModel alloc] initWithCanonicalId:v10 title:v9 episodeCount:a5 useShowCanonicalIdForSeason:0 showDownloadingOnlyWhenWholeCollectionDownloads:0 downloadType:a6];

  return v11;
}

+ (id)viewModelForSeasonDownloadWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 useShowCanonicalIdForSeasonDownload:(BOOL)a6 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[VUIDownloadButtonViewModel alloc] initWithCanonicalId:v12 title:v11 episodeCount:a5 useShowCanonicalIdForSeason:v8 showDownloadingOnlyWhenWholeCollectionDownloads:v7 downloadType:2];

  return v13;
}

- (VUIDownloadButtonViewModel)initWithCanonicalId:(id)a3 title:(id)a4 episodeCount:(int64_t)a5 useShowCanonicalIdForSeason:(BOOL)a6 showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)a7 downloadType:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v29.receiver = self;
  v29.super_class = VUIDownloadButtonViewModel;
  v16 = [(VUIDownloadButtonViewModel *)&v29 init];
  v17 = v16;
  if (v16)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = __158__VUIDownloadButtonViewModel_initWithCanonicalId_title_episodeCount_useShowCanonicalIdForSeason_showDownloadingOnlyWhenWholeCollectionDownloads_downloadType___block_invoke;
    v21 = &unk_1E87352A8;
    v22 = v16;
    v23 = v14;
    v24 = v15;
    v25 = a5;
    v26 = a8;
    v27 = a6;
    v28 = a7;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v20(&v19);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &v19);
    }
  }

  return v17;
}

void __158__VUIDownloadButtonViewModel_initWithCanonicalId_title_episodeCount_useShowCanonicalIdForSeason_showDownloadingOnlyWhenWholeCollectionDownloads_downloadType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanonicalId:*(a1 + 40)];
  [*(a1 + 32) setTitle:*(a1 + 48)];
  [*(a1 + 32) setEpisodeCount:*(a1 + 56)];
  [*(a1 + 32) setDownloadType:*(a1 + 64)];
  [*(a1 + 32) setShouldUseShowCanonicalIdForSeasonDownload:*(a1 + 72)];
  [*(a1 + 32) setShouldShowDownloadingOnlyWhenWholeCollectionDownloads:*(a1 + 73)];
  v2 = *(a1 + 32);
  v3 = [v2 _createDownloadStateToStringArrayMap];
  [v2 setDownloadStateToString:v3];

  if ((*(a1 + 64) - 1) <= 1)
  {
    [*(a1 + 32) _initDownloadButtonStateForTVShowOrSeason];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__downloadQueueManagerDidAddDownload_ name:@"VUIDownloadQueueManagerDidAddDownloads" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__downloadQueueManagerDidRemoveDownload_ name:@"VUIDownloadQueueManagerDidRemoveDownloads" object:0];
}

- (void)_initDownloadButtonStateForTVShowOrSeason
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = +[VUIMediaLibraryManager defaultManager];
  v5 = [v4 sidebandMediaLibrary];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5D980, &unk_1F5E5D998, &unk_1F5E5D9B0, &unk_1F5E5D9C8, 0}];
  downloadType = self->_downloadType;
  v22 = v6;
  if (downloadType != 1)
  {
    if (downloadType != 2)
    {
      v11 = 0;
      v9 = 0;
      goto LABEL_12;
    }

    if (!self->_shouldUseShowCanonicalIdForSeasonDownload)
    {
      v8 = [(VUIDownloadButtonViewModel *)self canonicalId];
      if (v8)
      {
        v9 = [v5 episodesWithDownloadStates:v6 seasonCanonicalId:v8 usingMainThreadContext:1];
        v10 = [v5 countOfComingSoonVideosWithSeasonCanonicalId:v8];
        goto LABEL_9;
      }

LABEL_10:
      v11 = 0;
      v9 = 0;
      goto LABEL_11;
    }
  }

  v8 = [(VUIDownloadButtonViewModel *)self canonicalId];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v5 episodesWithDownloadStates:v6 showCanonicalId:v8 usingMainThreadContext:1];
  v10 = [v5 countOfComingSoonVideosWithShowCanonicalId:v8];
LABEL_9:
  v11 = v10;
LABEL_11:

LABEL_12:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [[VUIUniversalAssetController alloc] initWithVideoManagedObject:*(*(&v23 + 1) + 8 * v16)];
        [v3 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = self->_episodeCount - v11;
  v19 = [VUIUniversalCollectionAssetController alloc];
  v20 = [v3 copy];
  v21 = [(VUIUniversalCollectionAssetController *)v19 initWithAssetControllers:v20 completionCount:v18 showDownloadingOnlyWhenWholeCollectionDownloads:self->_shouldShowDownloadingOnlyWhenWholeCollectionDownloads];

  [(VUIDownloadButtonViewModel *)self setAssetController:v21];
}

- (void)_downloadQueueManagerDidAddDownload:(id)a3
{
  v17 = [a3 userInfo];
  v4 = [v17 objectForKeyedSubscript:@"VUIDownloadQueueDidAddDownloadsAssetControllersKey"];
  v5 = [v17 objectForKeyedSubscript:@"VUIDownloadQueueDidAddDownloadsCompletionCountKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    downloadType = self->_downloadType;
    if (downloadType == 2)
    {
      v8 = [(VUIDownloadButtonViewModel *)self canonicalId];
      if (self->_shouldUseShowCanonicalIdForSeasonDownload)
      {
        [v6 showCanonicalId];
      }

      else
      {
        [v6 seasonCanonicalId];
      }
      v9 = ;
      v11 = [v8 isEqualToString:v9];
      v10 = 0;
    }

    else
    {
      if (downloadType != 1)
      {
        v11 = 0;
        v10 = 0;
LABEL_12:
        if (v11)
        {
          goto LABEL_13;
        }

LABEL_23:

        goto LABEL_24;
      }

      v8 = [(VUIDownloadButtonViewModel *)self canonicalId];
      v9 = [v6 showCanonicalId];
      v10 = [v9 isEqualToString:v8];
      v11 = 0;
    }

    if (v10)
    {
LABEL_13:
      v12 = [(VUIDownloadButtonViewModel *)self assetController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        if (v5)
        {
          if (v11)
          {
            [v13 setCompletionCount:{objc_msgSend(v5, "integerValue")}];
          }

          else if (v10)
          {
            v14 = [(VUIDownloadButtonViewModel *)self canonicalId];
            if (v14)
            {
              v15 = +[VUIMediaLibraryManager defaultManager];
              v16 = [v15 sidebandMediaLibrary];

              [v13 setCompletionCount:{self->_episodeCount - objc_msgSend(v16, "countOfComingSoonVideosWithShowCanonicalId:", v14)}];
            }
          }
        }

        [v13 addAssetControllers:v4];
      }

      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_24:
}

- (void)_downloadQueueManagerDidRemoveDownload:(id)a3
{
  v14 = [a3 userInfo];
  v4 = [v14 objectForKeyedSubscript:@"VUIDownloadQueueDidRemoveDownloadsAssetControllersKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      downloadType = self->_downloadType;
      if (downloadType == 2)
      {
        v10 = [(VUIDownloadButtonViewModel *)self canonicalId];
        if (self->_shouldUseShowCanonicalIdForSeasonDownload)
        {
          [v5 showCanonicalId];
        }

        else
        {
          [v5 seasonCanonicalId];
        }
        v11 = ;
        v12 = [v10 isEqualToString:v11];

        if (!v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (downloadType != 1)
        {
          goto LABEL_14;
        }

        v7 = [(VUIDownloadButtonViewModel *)self canonicalId];
        v8 = [v5 showCanonicalId];
        v9 = [v8 isEqualToString:v7];

        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v13 = [(VUIDownloadButtonViewModel *)self assetController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 removeAssetControllers:v4];
      }
    }

LABEL_14:
  }
}

- (void)dealloc
{
  [(VUIDownloadButtonViewModel *)self setAssetController:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadButtonViewModel;
  [(VUIDownloadButtonViewModel *)&v4 dealloc];
}

- (void)setAssetController:(id)a3
{
  v5 = a3;
  if (self->_assetController != v5)
  {
    v9 = v5;
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:0];

    objc_storeStrong(&self->_assetController, a3);
    if (v9)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:self selector:sel__assetControllerStateDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v9];

      v8 = [(VUIMediaEntityAssetController *)v9 state];
      [(VUIDownloadButtonViewModel *)self _updateDownloadStateFromAssetControllerState:v8];
    }

    else
    {
      [(VUIDownloadButtonViewModel *)self setDownloadState:0];
    }

    v5 = v9;
  }
}

- (NSString)brandName
{
  v3 = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VUIDownloadButtonViewModel *)self assetController];
    v6 = [v5 brandName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)brandID
{
  v3 = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VUIDownloadButtonViewModel *)self assetController];
    v6 = [v5 brandID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)allowsManualDownloadRenewal
{
  v3 = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(VUIDownloadButtonViewModel *)self assetController];
  v6 = [v5 allowsManualDownloadRenewal];

  return v6;
}

- (void)startDownloadAllowingCellular:(BOOL)a3 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a4 quality:(int64_t)a5 prefer3DOrImmersiveDownload:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v11 = [(VUIDownloadButtonViewModel *)self downloadState];
  if (v11 == 2)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_INFO, "The item is either already downloaded or being downloaded.", buf, 2u);
    }
  }

  else
  {
    v13 = v11;
    v14 = [(VUIDownloadButtonViewModel *)self assetController];
    v12 = v14;
    if (v13 == 4 && ![v14 supportsRedownloadingContent])
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_INFO, "The item is already downloaded and does not support redownloading.", buf, 2u);
      }
    }

    else
    {
      [v12 startDownloadAllowingCellular:v9 quality:a5 shouldMarkAsDeletedOnCancellationOrFailure:v8 prefer3DOrImmersiveDownload:v6 isAutomatic:0 completion:0];
      v15 = VUIDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "Asset controller %@ starting download.", buf, 0xCu);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v18 = __139__VUIDownloadButtonViewModel_startDownloadAllowingCellular_shouldMarkAsDeletedOnCancellationOrFailure_quality_prefer3DOrImmersiveDownload___block_invoke;
      v19 = &unk_1E872D768;
      v20 = self;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v18(block);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

uint64_t __139__VUIDownloadButtonViewModel_startDownloadAllowingCellular_shouldMarkAsDeletedOnCancellationOrFailure_quality_prefer3DOrImmersiveDownload___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"VUIDownloadModelNotificationUserInfo";
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"VUIDownloadDidStartNotification" object:0 userInfo:v4];

  return +[_TtC8VideosUI8VideosUI pushDownloadDidStartSignal];
}

- (void)fetchNewKeysForDownloadedVideo
{
  if ([(VUIDownloadButtonViewModel *)self downloadState]== 4)
  {
    v4 = [(VUIDownloadButtonViewModel *)self assetController];
    [v4 fetchNewKeysForDownloadedVideo];
  }

  else
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Unable to fetch new keys because video is not in state Downloaded.", buf, 2u);
    }
  }
}

- (void)pauseDownload
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ pausing download.", &v4, 0xCu);
  }

  [v2 pauseDownload];
}

- (void)resumeDownload
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ resuming download.", &v4, 0xCu);
  }

  [v2 resumeDownload];
}

- (void)stopDownload
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ canceling download.", &v6, 0xCu);
  }

  v4 = [v2 state];
  v5 = [v4 performsKeyFetchOnly];

  if (v5)
  {
    [v2 cancelKeyFetch];
  }

  else
  {
    [v2 cancelAndRemoveDownload];
  }
}

- (void)deleteDownload
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ deleting download.", &v4, 0xCu);
  }

  [v2 cancelAndRemoveDownload];
}

- (void)preflightPresentingViewController:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14 && v6)
  {
    v7 = [(VUIDownloadButtonViewModel *)self assetController];
    v8 = [(VUIDownloadButtonViewModel *)self videosPlayable];

    if (v8)
    {
      v9 = +[VUIDownloadManager sharedInstance];
      v10 = [(VUIDownloadButtonViewModel *)self videosPlayable];
      [v9 preflightDownloadForVideosPlayable:v10 presentingViewController:v14 contentAllowsCellularDownload:objc_msgSend(v7 completion:{"contentAllowsCellularDownload"), v6}];
    }

    else
    {
      v11 = [(VUIDownloadButtonViewModel *)self assetController];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(VUIDownloadButtonViewModel *)self assetController];
        v9 = [v13 contentRating];
      }

      else
      {
        v9 = 0;
      }

      v10 = +[VUIDownloadManager sharedInstance];
      [v10 preflightDownloadForContentRating:v9 presentingViewController:v14 contentAllowsCellularDownload:objc_msgSend(v7 completion:{"contentAllowsCellularDownload"), v6}];
    }
  }
}

- (BOOL)isExpired
{
  v3 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  if (v3)
  {
    v4 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
    v5 = [v4 vui_isInThePast];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExpiringSoon
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  LOBYTE(v2) = [v2 shouldShowLabelForDownloadExpirationDate:v3];

  return v2;
}

+ (BOOL)shouldShowExpiredImageWithDownloadState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  switch(a3)
  {
    case 0uLL:
      return a4 || a6;
    case 4uLL:
      return a4 || a5;
    case 3uLL:
      return a4 || a6;
  }

  return 0;
}

- (void)_assetControllerStateDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"VUIMediaEntityAssetControllerStateKey"];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = VUIMediaEntityAssetControllerStatusLogString([v7 status]);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "Asset controller %@ state changed to: %@", &v10, 0x16u);
  }

  [(VUIDownloadButtonViewModel *)self _updateDownloadStateFromAssetControllerState:v7];
}

- (void)_updateDownloadStateFromAssetControllerState:(id)a3
{
  v23 = a3;
  v4 = -[VUIDownloadButtonViewModel _downloadStateFromAssetsControllerStatus:](self, "_downloadStateFromAssetsControllerStatus:", [v23 status]);
  [v23 downloadProgress];
  if (v4 == 5 || v4 == 2)
  {
    v7 = v5;
    [(VUIDownloadButtonViewModel *)self downloadProgress];
    v9 = v8;
    [(VUIDownloadButtonViewModel *)self setDownloadProgress:v7];
    if (v9 != v7)
    {
      v10 = [v23 downloadExpirationDate];
      [(VUIDownloadButtonViewModel *)self setDownloadExpirationDate:v10];

LABEL_9:
      -[VUIDownloadButtonViewModel setRenewsOfflineKeysAutomatically:](self, "setRenewsOfflineKeysAutomatically:", [v23 renewsOfflineKeysAutomatically]);
LABEL_10:
      v14 = [v23 availabilityEndDate];
      [(VUIDownloadButtonViewModel *)self setAvailabilityEndDate:v14];

LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }
  }

  v11 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  v12 = [v23 downloadExpirationDate];

  v13 = [v23 downloadExpirationDate];
  [(VUIDownloadButtonViewModel *)self setDownloadExpirationDate:v13];

  if (v11 != v12)
  {
    goto LABEL_9;
  }

  v17 = [(VUIDownloadButtonViewModel *)self renewsOfflineKeysAutomatically];
  v18 = [v23 renewsOfflineKeysAutomatically];
  -[VUIDownloadButtonViewModel setRenewsOfflineKeysAutomatically:](self, "setRenewsOfflineKeysAutomatically:", [v23 renewsOfflineKeysAutomatically]);
  if (v17 != v18)
  {
    goto LABEL_10;
  }

  v19 = [(VUIDownloadButtonViewModel *)self availabilityEndDate];
  v20 = [v23 availabilityEndDate];

  v21 = [v23 availabilityEndDate];
  [(VUIDownloadButtonViewModel *)self setAvailabilityEndDate:v21];

  if (v19 != v20)
  {
    goto LABEL_11;
  }

  v22 = [(VUIDownloadButtonViewModel *)self downloadFailedDueToError];
  v15 = v22 ^ [v23 downloadFailedDueToError];
LABEL_12:
  -[VUIDownloadButtonViewModel setDownloadFailedDueToError:](self, "setDownloadFailedDueToError:", [v23 downloadFailedDueToError]);
  if ([(VUIDownloadButtonViewModel *)self downloadState]== v4)
  {
    if (v15)
    {
      [(VUIDownloadButtonViewModel *)self setDownloadState:v4];
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"VUIDownloadViewModelDownloadStateDidChangeNotification" object:self];
    }
  }

  else
  {
    [(VUIDownloadButtonViewModel *)self setDownloadState:v4];
  }
}

- (unint64_t)_downloadStateFromAssetsControllerStatus:(unint64_t)a3
{
  if (a3 - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (NSString)downloadStateStringValue
{
  if ([(NSArray *)self->_downloadStateToString count]<= self->_downloadState)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = [(NSArray *)self->_downloadStateToString objectAtIndexedSubscript:?];
  }

  return v3;
}

@end