@interface VUIDownloadButtonViewModel
+ (BOOL)shouldShowExpiredImageWithDownloadState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
+ (id)viewModelForSeasonDownloadWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count useShowCanonicalIdForSeasonDownload:(BOOL)download showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)downloads;
+ (id)viewModelWithAssetController:(id)controller;
+ (id)viewModelWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count downloadType:(unint64_t)type;
+ (id)viewModelWithMPMediaItem:(id)item seasonMediaItemCollection:(id)collection;
+ (id)viewModelWithMPMediaItemCollection:(id)collection;
+ (id)viewModelWithVideoManagedObject:(id)object;
+ (id)viewModelWithVideosPlayable:(id)playable;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)isExpired;
- (BOOL)isExpiringSoon;
- (NSString)brandID;
- (NSString)brandName;
- (NSString)downloadStateStringValue;
- (VUIDownloadButtonViewModel)initWithAssetController:(id)controller;
- (VUIDownloadButtonViewModel)initWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count useShowCanonicalIdForSeason:(BOOL)season showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)downloads downloadType:(unint64_t)type;
- (VUIDownloadButtonViewModel)initWithMPMediaItem:(id)item seasonMediaItemCollection:(id)collection;
- (VUIDownloadButtonViewModel)initWithMPMediaItemCollection:(id)collection;
- (VUIDownloadButtonViewModel)initWithVideoManagedObject:(id)object;
- (VUIDownloadButtonViewModel)initWithVideosPlayable:(id)playable;
- (unint64_t)_downloadStateFromAssetsControllerStatus:(unint64_t)status;
- (void)_assetControllerStateDidChange:(id)change;
- (void)_downloadQueueManagerDidAddDownload:(id)download;
- (void)_downloadQueueManagerDidRemoveDownload:(id)download;
- (void)_initDownloadButtonStateForTVShowOrSeason;
- (void)_updateDownloadStateFromAssetControllerState:(id)state;
- (void)dealloc;
- (void)deleteDownload;
- (void)fetchNewKeysForDownloadedVideo;
- (void)pauseDownload;
- (void)preflightPresentingViewController:(id)controller completion:(id)completion;
- (void)resumeDownload;
- (void)setAssetController:(id)controller;
- (void)startDownloadAllowingCellular:(BOOL)cellular shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure quality:(int64_t)quality prefer3DOrImmersiveDownload:(BOOL)download;
- (void)stopDownload;
@end

@implementation VUIDownloadButtonViewModel

+ (id)viewModelWithVideosPlayable:(id)playable
{
  playableCopy = playable;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithVideosPlayable:playableCopy];

  return v4;
}

- (VUIDownloadButtonViewModel)initWithVideosPlayable:(id)playable
{
  playableCopy = playable;
  v16.receiver = self;
  v16.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v16 init];
  if (v5 && ([playableCopy adamID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    [(VUIDownloadButtonViewModel *)v5 setVideosPlayable:playableCopy];
    v11 = MEMORY[0x1E69E9820];
    v12 = __53__VUIDownloadButtonViewModel_initWithVideosPlayable___block_invoke;
    v13 = &unk_1E872D990;
    v14 = playableCopy;
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

    _createDownloadStateToStringArrayMap = [(VUIDownloadButtonViewModel *)v8 _createDownloadStateToStringArrayMap];
    [(VUIDownloadButtonViewModel *)v8 setDownloadStateToString:_createDownloadStateToStringArrayMap];

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

+ (id)viewModelWithAssetController:(id)controller
{
  controllerCopy = controller;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithAssetController:controllerCopy];

  return v4;
}

+ (id)viewModelWithMPMediaItem:(id)item seasonMediaItemCollection:(id)collection
{
  collectionCopy = collection;
  itemCopy = item;
  v7 = [[VUIDownloadButtonViewModel alloc] initWithMPMediaItem:itemCopy seasonMediaItemCollection:collectionCopy];

  return v7;
}

+ (id)viewModelWithVideoManagedObject:(id)object
{
  objectCopy = object;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithVideoManagedObject:objectCopy];

  return v4;
}

+ (id)viewModelWithMPMediaItemCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [[VUIDownloadButtonViewModel alloc] initWithMPMediaItemCollection:collectionCopy];

  return v4;
}

- (VUIDownloadButtonViewModel)initWithAssetController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v9 init];
  v6 = v5;
  if (controllerCopy)
  {
    if (v5)
    {
      [(VUIDownloadButtonViewModel *)v5 setAssetController:controllerCopy];
      _createDownloadStateToStringArrayMap = [(VUIDownloadButtonViewModel *)v6 _createDownloadStateToStringArrayMap];
      [(VUIDownloadButtonViewModel *)v6 setDownloadStateToString:_createDownloadStateToStringArrayMap];
    }

    else
    {
      _createDownloadStateToStringArrayMap = 0;
    }
  }

  else
  {
    _createDownloadStateToStringArrayMap = v5;
    v6 = 0;
  }

  return v6;
}

- (VUIDownloadButtonViewModel)initWithMPMediaItem:(id)item seasonMediaItemCollection:(id)collection
{
  itemCopy = item;
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = VUIDownloadButtonViewModel;
  v8 = [(VUIDownloadButtonViewModel *)&v16 init];
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v11 = __76__VUIDownloadButtonViewModel_initWithMPMediaItem_seasonMediaItemCollection___block_invoke;
    v12 = &unk_1E872E008;
    v13 = itemCopy;
    v14 = collectionCopy;
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

- (VUIDownloadButtonViewModel)initWithVideoManagedObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v12 init];
  if (v5)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = __57__VUIDownloadButtonViewModel_initWithVideoManagedObject___block_invoke;
    v9 = &unk_1E872D990;
    v10 = objectCopy;
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

- (VUIDownloadButtonViewModel)initWithMPMediaItemCollection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = VUIDownloadButtonViewModel;
  v5 = [(VUIDownloadButtonViewModel *)&v12 init];
  if (v5)
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = __60__VUIDownloadButtonViewModel_initWithMPMediaItemCollection___block_invoke;
    v9 = &unk_1E872D990;
    v10 = collectionCopy;
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

+ (id)viewModelWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count downloadType:(unint64_t)type
{
  titleCopy = title;
  idCopy = id;
  v11 = [[VUIDownloadButtonViewModel alloc] initWithCanonicalId:idCopy title:titleCopy episodeCount:count useShowCanonicalIdForSeason:0 showDownloadingOnlyWhenWholeCollectionDownloads:0 downloadType:type];

  return v11;
}

+ (id)viewModelForSeasonDownloadWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count useShowCanonicalIdForSeasonDownload:(BOOL)download showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  downloadCopy = download;
  titleCopy = title;
  idCopy = id;
  v13 = [[VUIDownloadButtonViewModel alloc] initWithCanonicalId:idCopy title:titleCopy episodeCount:count useShowCanonicalIdForSeason:downloadCopy showDownloadingOnlyWhenWholeCollectionDownloads:downloadsCopy downloadType:2];

  return v13;
}

- (VUIDownloadButtonViewModel)initWithCanonicalId:(id)id title:(id)title episodeCount:(int64_t)count useShowCanonicalIdForSeason:(BOOL)season showDownloadingOnlyWhenWholeCollectionDownloads:(BOOL)downloads downloadType:(unint64_t)type
{
  idCopy = id;
  titleCopy = title;
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
    v23 = idCopy;
    v24 = titleCopy;
    countCopy = count;
    typeCopy = type;
    seasonCopy = season;
    downloadsCopy = downloads;
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
  sidebandMediaLibrary = [v4 sidebandMediaLibrary];

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
      canonicalId = [(VUIDownloadButtonViewModel *)self canonicalId];
      if (canonicalId)
      {
        v9 = [sidebandMediaLibrary episodesWithDownloadStates:v6 seasonCanonicalId:canonicalId usingMainThreadContext:1];
        v10 = [sidebandMediaLibrary countOfComingSoonVideosWithSeasonCanonicalId:canonicalId];
        goto LABEL_9;
      }

LABEL_10:
      v11 = 0;
      v9 = 0;
      goto LABEL_11;
    }
  }

  canonicalId = [(VUIDownloadButtonViewModel *)self canonicalId];
  if (!canonicalId)
  {
    goto LABEL_10;
  }

  v9 = [sidebandMediaLibrary episodesWithDownloadStates:v6 showCanonicalId:canonicalId usingMainThreadContext:1];
  v10 = [sidebandMediaLibrary countOfComingSoonVideosWithShowCanonicalId:canonicalId];
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

- (void)_downloadQueueManagerDidAddDownload:(id)download
{
  userInfo = [download userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIDownloadQueueDidAddDownloadsAssetControllersKey"];
  v5 = [userInfo objectForKeyedSubscript:@"VUIDownloadQueueDidAddDownloadsCompletionCountKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v4 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_23;
    }

    downloadType = self->_downloadType;
    if (downloadType == 2)
    {
      canonicalId = [(VUIDownloadButtonViewModel *)self canonicalId];
      if (self->_shouldUseShowCanonicalIdForSeasonDownload)
      {
        [firstObject showCanonicalId];
      }

      else
      {
        [firstObject seasonCanonicalId];
      }
      showCanonicalId = ;
      v11 = [canonicalId isEqualToString:showCanonicalId];
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

      canonicalId = [(VUIDownloadButtonViewModel *)self canonicalId];
      showCanonicalId = [firstObject showCanonicalId];
      v10 = [showCanonicalId isEqualToString:canonicalId];
      v11 = 0;
    }

    if (v10)
    {
LABEL_13:
      assetController = [(VUIDownloadButtonViewModel *)self assetController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = assetController;
        if (v5)
        {
          if (v11)
          {
            [v13 setCompletionCount:{objc_msgSend(v5, "integerValue")}];
          }

          else if (v10)
          {
            canonicalId2 = [(VUIDownloadButtonViewModel *)self canonicalId];
            if (canonicalId2)
            {
              v15 = +[VUIMediaLibraryManager defaultManager];
              sidebandMediaLibrary = [v15 sidebandMediaLibrary];

              [v13 setCompletionCount:{self->_episodeCount - objc_msgSend(sidebandMediaLibrary, "countOfComingSoonVideosWithShowCanonicalId:", canonicalId2)}];
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

- (void)_downloadQueueManagerDidRemoveDownload:(id)download
{
  userInfo = [download userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIDownloadQueueDidRemoveDownloadsAssetControllersKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      downloadType = self->_downloadType;
      if (downloadType == 2)
      {
        canonicalId = [(VUIDownloadButtonViewModel *)self canonicalId];
        if (self->_shouldUseShowCanonicalIdForSeasonDownload)
        {
          [firstObject showCanonicalId];
        }

        else
        {
          [firstObject seasonCanonicalId];
        }
        v11 = ;
        v12 = [canonicalId isEqualToString:v11];

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

        canonicalId2 = [(VUIDownloadButtonViewModel *)self canonicalId];
        showCanonicalId = [firstObject showCanonicalId];
        v9 = [showCanonicalId isEqualToString:canonicalId2];

        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      assetController = [(VUIDownloadButtonViewModel *)self assetController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [assetController removeAssetControllers:v4];
      }
    }

LABEL_14:
  }
}

- (void)dealloc
{
  [(VUIDownloadButtonViewModel *)self setAssetController:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadButtonViewModel;
  [(VUIDownloadButtonViewModel *)&v4 dealloc];
}

- (void)setAssetController:(id)controller
{
  controllerCopy = controller;
  if (self->_assetController != controllerCopy)
  {
    v9 = controllerCopy;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:0];

    objc_storeStrong(&self->_assetController, controller);
    if (v9)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__assetControllerStateDidChange_ name:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v9];

      state = [(VUIMediaEntityAssetController *)v9 state];
      [(VUIDownloadButtonViewModel *)self _updateDownloadStateFromAssetControllerState:state];
    }

    else
    {
      [(VUIDownloadButtonViewModel *)self setDownloadState:0];
    }

    controllerCopy = v9;
  }
}

- (NSString)brandName
{
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    assetController2 = [(VUIDownloadButtonViewModel *)self assetController];
    brandName = [assetController2 brandName];
  }

  else
  {
    brandName = 0;
  }

  return brandName;
}

- (NSString)brandID
{
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    assetController2 = [(VUIDownloadButtonViewModel *)self assetController];
    brandID = [assetController2 brandID];
  }

  else
  {
    brandID = 0;
  }

  return brandID;
}

- (BOOL)allowsManualDownloadRenewal
{
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  assetController2 = [(VUIDownloadButtonViewModel *)self assetController];
  allowsManualDownloadRenewal = [assetController2 allowsManualDownloadRenewal];

  return allowsManualDownloadRenewal;
}

- (void)startDownloadAllowingCellular:(BOOL)cellular shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure quality:(int64_t)quality prefer3DOrImmersiveDownload:(BOOL)download
{
  downloadCopy = download;
  failureCopy = failure;
  cellularCopy = cellular;
  v23 = *MEMORY[0x1E69E9840];
  downloadState = [(VUIDownloadButtonViewModel *)self downloadState];
  if (downloadState == 2)
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
    v13 = downloadState;
    assetController = [(VUIDownloadButtonViewModel *)self assetController];
    v12 = assetController;
    if (v13 == 4 && ![assetController supportsRedownloadingContent])
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
      [v12 startDownloadAllowingCellular:cellularCopy quality:quality shouldMarkAsDeletedOnCancellationOrFailure:failureCopy prefer3DOrImmersiveDownload:downloadCopy isAutomatic:0 completion:0];
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
      selfCopy = self;
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
    assetController = [(VUIDownloadButtonViewModel *)self assetController];
    [assetController fetchNewKeysForDownloadedVideo];
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
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = assetController;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ pausing download.", &v4, 0xCu);
  }

  [assetController pauseDownload];
}

- (void)resumeDownload
{
  v6 = *MEMORY[0x1E69E9840];
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = assetController;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ resuming download.", &v4, 0xCu);
  }

  [assetController resumeDownload];
}

- (void)stopDownload
{
  v8 = *MEMORY[0x1E69E9840];
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = assetController;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ canceling download.", &v6, 0xCu);
  }

  state = [assetController state];
  performsKeyFetchOnly = [state performsKeyFetchOnly];

  if (performsKeyFetchOnly)
  {
    [assetController cancelKeyFetch];
  }

  else
  {
    [assetController cancelAndRemoveDownload];
  }
}

- (void)deleteDownload
{
  v6 = *MEMORY[0x1E69E9840];
  assetController = [(VUIDownloadButtonViewModel *)self assetController];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = assetController;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "Asset controller %@ deleting download.", &v4, 0xCu);
  }

  [assetController cancelAndRemoveDownload];
}

- (void)preflightPresentingViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy && completionCopy)
  {
    assetController = [(VUIDownloadButtonViewModel *)self assetController];
    videosPlayable = [(VUIDownloadButtonViewModel *)self videosPlayable];

    if (videosPlayable)
    {
      contentRating = +[VUIDownloadManager sharedInstance];
      videosPlayable2 = [(VUIDownloadButtonViewModel *)self videosPlayable];
      [contentRating preflightDownloadForVideosPlayable:videosPlayable2 presentingViewController:controllerCopy contentAllowsCellularDownload:objc_msgSend(assetController completion:{"contentAllowsCellularDownload"), completionCopy}];
    }

    else
    {
      assetController2 = [(VUIDownloadButtonViewModel *)self assetController];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        assetController3 = [(VUIDownloadButtonViewModel *)self assetController];
        contentRating = [assetController3 contentRating];
      }

      else
      {
        contentRating = 0;
      }

      videosPlayable2 = +[VUIDownloadManager sharedInstance];
      [videosPlayable2 preflightDownloadForContentRating:contentRating presentingViewController:controllerCopy contentAllowsCellularDownload:objc_msgSend(assetController completion:{"contentAllowsCellularDownload"), completionCopy}];
    }
  }
}

- (BOOL)isExpired
{
  downloadExpirationDate = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  if (downloadExpirationDate)
  {
    downloadExpirationDate2 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
    vui_isInThePast = [downloadExpirationDate2 vui_isInThePast];
  }

  else
  {
    vui_isInThePast = 0;
  }

  return vui_isInThePast;
}

- (BOOL)isExpiringSoon
{
  v2 = MEMORY[0x1E695DF00];
  downloadExpirationDate = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  LOBYTE(v2) = [v2 shouldShowLabelForDownloadExpirationDate:downloadExpirationDate];

  return v2;
}

+ (BOOL)shouldShowExpiredImageWithDownloadState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  switch(state)
  {
    case 0uLL:
      return expired || failed;
    case 4uLL:
      return expired || soon;
    case 3uLL:
      return expired || failed;
  }

  return 0;
}

- (void)_assetControllerStateDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo objectForKey:@"VUIMediaEntityAssetControllerStateKey"];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = VUIMediaEntityAssetControllerStatusLogString([v7 status]);
    v10 = 138412546;
    v11 = object;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "Asset controller %@ state changed to: %@", &v10, 0x16u);
  }

  [(VUIDownloadButtonViewModel *)self _updateDownloadStateFromAssetControllerState:v7];
}

- (void)_updateDownloadStateFromAssetControllerState:(id)state
{
  stateCopy = state;
  v4 = -[VUIDownloadButtonViewModel _downloadStateFromAssetsControllerStatus:](self, "_downloadStateFromAssetsControllerStatus:", [stateCopy status]);
  [stateCopy downloadProgress];
  if (v4 == 5 || v4 == 2)
  {
    v7 = v5;
    [(VUIDownloadButtonViewModel *)self downloadProgress];
    v9 = v8;
    [(VUIDownloadButtonViewModel *)self setDownloadProgress:v7];
    if (v9 != v7)
    {
      downloadExpirationDate = [stateCopy downloadExpirationDate];
      [(VUIDownloadButtonViewModel *)self setDownloadExpirationDate:downloadExpirationDate];

LABEL_9:
      -[VUIDownloadButtonViewModel setRenewsOfflineKeysAutomatically:](self, "setRenewsOfflineKeysAutomatically:", [stateCopy renewsOfflineKeysAutomatically]);
LABEL_10:
      availabilityEndDate = [stateCopy availabilityEndDate];
      [(VUIDownloadButtonViewModel *)self setAvailabilityEndDate:availabilityEndDate];

LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }
  }

  downloadExpirationDate2 = [(VUIDownloadButtonViewModel *)self downloadExpirationDate];
  downloadExpirationDate3 = [stateCopy downloadExpirationDate];

  downloadExpirationDate4 = [stateCopy downloadExpirationDate];
  [(VUIDownloadButtonViewModel *)self setDownloadExpirationDate:downloadExpirationDate4];

  if (downloadExpirationDate2 != downloadExpirationDate3)
  {
    goto LABEL_9;
  }

  renewsOfflineKeysAutomatically = [(VUIDownloadButtonViewModel *)self renewsOfflineKeysAutomatically];
  renewsOfflineKeysAutomatically2 = [stateCopy renewsOfflineKeysAutomatically];
  -[VUIDownloadButtonViewModel setRenewsOfflineKeysAutomatically:](self, "setRenewsOfflineKeysAutomatically:", [stateCopy renewsOfflineKeysAutomatically]);
  if (renewsOfflineKeysAutomatically != renewsOfflineKeysAutomatically2)
  {
    goto LABEL_10;
  }

  availabilityEndDate2 = [(VUIDownloadButtonViewModel *)self availabilityEndDate];
  availabilityEndDate3 = [stateCopy availabilityEndDate];

  availabilityEndDate4 = [stateCopy availabilityEndDate];
  [(VUIDownloadButtonViewModel *)self setAvailabilityEndDate:availabilityEndDate4];

  if (availabilityEndDate2 != availabilityEndDate3)
  {
    goto LABEL_11;
  }

  downloadFailedDueToError = [(VUIDownloadButtonViewModel *)self downloadFailedDueToError];
  v15 = downloadFailedDueToError ^ [stateCopy downloadFailedDueToError];
LABEL_12:
  -[VUIDownloadButtonViewModel setDownloadFailedDueToError:](self, "setDownloadFailedDueToError:", [stateCopy downloadFailedDueToError]);
  if ([(VUIDownloadButtonViewModel *)self downloadState]== v4)
  {
    if (v15)
    {
      [(VUIDownloadButtonViewModel *)self setDownloadState:v4];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"VUIDownloadViewModelDownloadStateDidChangeNotification" object:self];
    }
  }

  else
  {
    [(VUIDownloadButtonViewModel *)self setDownloadState:v4];
  }
}

- (unint64_t)_downloadStateFromAssetsControllerStatus:(unint64_t)status
{
  if (status - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return status;
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