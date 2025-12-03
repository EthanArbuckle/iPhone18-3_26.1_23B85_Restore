@interface PUOneUpMergedVideoProvider
- (PUOneUpMergedVideoProvider)initWithBrowsingViewModel:(id)model;
- (id)wrappedVideoPlayerForPlayer:(id)player;
- (void)_handleRequestChanges:(id)changes;
- (void)_updateLivePhotoPlayerItem;
- (void)_updateRequest;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)playerWillRelinquishVideoPlayer:(id)player;
- (void)setError:(id)error;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setMergedVideo:(id)video;
- (void)setState:(int64_t)state;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpMergedVideoProvider

- (void)_updateLivePhotoPlayerItem
{
  mergedVideo = [(PUOneUpMergedVideoProvider *)self mergedVideo];
  v4 = mergedVideo;
  if (mergedVideo)
  {
    mergedVideoAsset = [mergedVideo mergedVideoAsset];
    mergedVideoComposition = [v4 mergedVideoComposition];
    v7 = 2 * ([v4 options] & 1);
    v8 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:mergedVideoAsset UIImage:0 photoTime:0 photoEXIFOrientation:v7 options:0.0];
    v9 = MEMORY[0x1E69C1B00];
    v10 = MEMORY[0x1E696AD98];
    [v4 videoAspectRatio];
    v11 = [v10 numberWithDouble:?];
    v13 = [v9 playerItemWithAsset:v8 targetSize:v11 contentAspectRatio:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

    [v13 setVideoComposition:mergedVideoComposition];
  }

  else
  {
    v13 = 0;
  }

  livePhotoPlayer = [(PUOneUpMergedVideoProvider *)self livePhotoPlayer];
  [livePhotoPlayer setPlayerItem:v13];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PUOneUpMergedVideoProvider *)self signalChange:1];
  }
}

- (void)setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    [(PUOneUpMergedVideoProvider *)self signalChange:4];
    errorCopy = v6;
  }
}

- (void)setMergedVideo:(id)video
{
  videoCopy = video;
  if (self->_mergedVideo != videoCopy)
  {
    v6 = videoCopy;
    objc_storeStrong(&self->_mergedVideo, video);
    [(PUOneUpMergedVideoProvider *)self _updateLivePhotoPlayerItem];
    [(PUOneUpMergedVideoProvider *)self signalChange:2];
    videoCopy = v6;
  }
}

- (void)_handleRequestChanges:(id)changes
{
  changesCopy = changes;
  state = [changesCopy state];
  if (state > 2)
  {
    if (state == 4)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_2;
      v11[3] = &unk_1E7B806D8;
      v11[4] = self;
      v8 = changesCopy;
      v12 = v8;
      [(PUOneUpMergedVideoProvider *)self performChanges:v11];
      [v8 unregisterChangeObserver:self context:0];
      v7 = v12;
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_11;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke;
      v13[3] = &unk_1E7B806D8;
      v13[4] = self;
      v6 = changesCopy;
      v14 = v6;
      [(PUOneUpMergedVideoProvider *)self performChanges:v13];
      [v6 unregisterChangeObserver:self context:0];
      v7 = v14;
    }

    goto LABEL_11;
  }

  if (state == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_4;
    v9[3] = &unk_1E7B806B0;
    v9[4] = self;
    [(PUOneUpMergedVideoProvider *)self performChanges:v9];
  }

  else if (state == 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_3;
    v10[3] = &unk_1E7B806B0;
    v10[4] = self;
    [(PUOneUpMergedVideoProvider *)self performChanges:v10];
    [changesCopy unregisterChangeObserver:self context:0];
  }

LABEL_11:
}

uint64_t __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mergedVideo];
  [*(a1 + 32) setMergedVideo:v2];

  [*(a1 + 32) setError:0];
  v3 = *(a1 + 32);

  return [v3 setState:2];
}

uint64_t __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMergedVideo:0];
  v2 = [*(a1 + 40) error];
  [*(a1 + 32) setError:v2];

  v3 = *(a1 + 32);

  return [v3 setState:3];
}

uint64_t __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setMergedVideo:0];
  [*(a1 + 32) setError:0];
  v2 = *(a1 + 32);

  return [v2 setState:0];
}

uint64_t __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setMergedVideo:0];
  [*(a1 + 32) setError:0];
  v2 = *(a1 + 32);

  return [v2 setState:1];
}

- (void)_updateRequest
{
  browsingViewModel = [(PUOneUpMergedVideoProvider *)self browsingViewModel];
  currentAssetReference = [browsingViewModel currentAssetReference];
  currentRequest = [(PUOneUpMergedVideoProvider *)self currentRequest];
  assetReference = [currentRequest assetReference];
  isVideoContentAllowed = [browsingViewModel isVideoContentAllowed];
  if (currentAssetReference && isVideoContentAllowed && ([browsingViewModel isScrubbing] & 1) == 0)
  {
    asset = [assetReference asset];
    asset2 = [currentAssetReference asset];
    v10 = asset;
    v11 = v10;
    if (asset2 == v10)
    {
    }

    else
    {
      v12 = [asset2 isContentEqualTo:v10];
      if (!v12)
      {
        v12 = [v11 isContentEqualTo:asset2];
      }

      if (v12 != 2)
      {
LABEL_12:
        [currentRequest cancel];
        assetsDataSource = [browsingViewModel assetsDataSource];
        if (assetsDataSource)
        {
          asset3 = [currentAssetReference asset];
          playbackStyle = [asset3 playbackStyle];

          if (playbackStyle == 3)
          {
            v17 = [PUMergedLivePhotosVideoRequest alloc];
            dataCache = [(PUOneUpMergedVideoProvider *)self dataCache];
            v19 = [(PUMergedLivePhotosVideoRequest *)v17 initWithAssetReference:currentAssetReference dataSource:assetsDataSource dataCache:dataCache];

            [(PUMergedLivePhotosVideoRequest *)v19 registerChangeObserver:self context:0];
            [(PUOneUpMergedVideoProvider *)self setCurrentRequest:v19];
          }
        }

LABEL_16:
        assetViewModelForCurrentAssetReference = [browsingViewModel assetViewModelForCurrentAssetReference];
        if ([assetViewModelForCurrentAssetReference isFullyInFocus])
        {
          isEnabled = [(PUOneUpMergedVideoProvider *)self isEnabled];

          if (!isEnabled)
          {
LABEL_20:

            goto LABEL_21;
          }

          assetViewModelForCurrentAssetReference = [(PUOneUpMergedVideoProvider *)self currentRequest];
          [assetViewModelForCurrentAssetReference start];
        }

        goto LABEL_20;
      }
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  [currentRequest cancel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__PUOneUpMergedVideoProvider__updateRequest__block_invoke;
  v22[3] = &unk_1E7B806B0;
  v22[4] = self;
  [(PUOneUpMergedVideoProvider *)self performChanges:v22];
LABEL_21:
}

uint64_t __44__PUOneUpMergedVideoProvider__updateRequest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMergedVideo:0];
  [*(a1 + 32) setError:0];
  [*(a1 + 32) setState:0];
  v2 = *(a1 + 32);

  return [v2 setCurrentRequest:0];
}

- (void)playerWillRelinquishVideoPlayer:(id)player
{
  v3 = MEMORY[0x1E69C3C70];
  playerCopy = player;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance checkInReusableWrappedPlayer:playerCopy];
}

- (id)wrappedVideoPlayerForPlayer:(id)player
{
  mEMORY[0x1E69C3C70] = [MEMORY[0x1E69C3C70] sharedInstance];
  checkOutReusableWrappedPlayer = [mEMORY[0x1E69C3C70] checkOutReusableWrappedPlayer];

  return checkOutReusableWrappedPlayer;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  v7 = observableCopy;
  if (changeCopy)
  {
    v8 = observableCopy;
    px_dispatch_on_main_queue();
  }
}

void __59__PUOneUpMergedVideoProvider_observable_didChange_context___block_invoke(uint64_t a1)
{
  v12 = *(a1 + 32);
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = objc_opt_class();
    v7 = NSStringFromClass(v10);
    v11 = [v12 px_descriptionForAssertionMessage];
    [v3 handleFailureInMethod:v8 object:v9 file:@"PUOneUpMergedVideoProvider.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v7, v11}];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v3 handleFailureInMethod:v4 object:v5 file:@"PUOneUpMergedVideoProvider.m" lineNumber:79 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v7}];
  }

LABEL_3:
  v2 = [*(a1 + 40) currentRequest];

  if (v12 == v2)
  {
    [*(a1 + 40) _handleRequestChanges:v12];
  }

  else
  {
    [v12 unregisterChangeObserver:*(a1 + 40) context:*(a1 + 56)];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ((([changeCopy currentAssetDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "videoOverlayPlayStateDidChange") & 1) != 0 || (objc_msgSend(changeCopy, "isVideoContentAllowedDidChange") & 1) != 0 || (objc_msgSend(changeCopy, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(changeCopy, "currentAssetTransitionProgressDidChange")) && !objc_msgSend(modelCopy, "videoOverlayPlayState"))
  {
    [(PUOneUpMergedVideoProvider *)self _updateRequest];
  }
}

- (void)setIsEnabled:(BOOL)enabled
{
  if (self->_isEnabled != enabled)
  {
    self->_isEnabled = enabled;
    [(PUOneUpMergedVideoProvider *)self _updateRequest];
  }
}

- (PUOneUpMergedVideoProvider)initWithBrowsingViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PUOneUpMergedVideoProvider;
  v6 = [(PUOneUpMergedVideoProvider *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
    livePhotoPlayer = v6->_livePhotoPlayer;
    v6->_livePhotoPlayer = v7;

    [(ISLivePhotoPlayer *)v6->_livePhotoPlayer setTargetReadiness:2];
    [(ISLivePhotoPlayer *)v6->_livePhotoPlayer setDelegate:v6];
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    dataCache = v6->_dataCache;
    v6->_dataCache = v9;

    v6->_state = 0;
    objc_storeStrong(&v6->_browsingViewModel, model);
    [modelCopy registerChangeObserver:v6];
  }

  return v6;
}

@end