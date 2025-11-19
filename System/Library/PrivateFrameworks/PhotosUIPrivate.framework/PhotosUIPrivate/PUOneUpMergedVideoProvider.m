@interface PUOneUpMergedVideoProvider
- (PUOneUpMergedVideoProvider)initWithBrowsingViewModel:(id)a3;
- (id)wrappedVideoPlayerForPlayer:(id)a3;
- (void)_handleRequestChanges:(id)a3;
- (void)_updateLivePhotoPlayerItem;
- (void)_updateRequest;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)playerWillRelinquishVideoPlayer:(id)a3;
- (void)setError:(id)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setMergedVideo:(id)a3;
- (void)setState:(int64_t)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpMergedVideoProvider

- (void)_updateLivePhotoPlayerItem
{
  v3 = [(PUOneUpMergedVideoProvider *)self mergedVideo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mergedVideoAsset];
    v6 = [v4 mergedVideoComposition];
    v7 = 2 * ([v4 options] & 1);
    v8 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:v5 UIImage:0 photoTime:0 photoEXIFOrientation:v7 options:0.0];
    v9 = MEMORY[0x1E69C1B00];
    v10 = MEMORY[0x1E696AD98];
    [v4 videoAspectRatio];
    v11 = [v10 numberWithDouble:?];
    v13 = [v9 playerItemWithAsset:v8 targetSize:v11 contentAspectRatio:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

    [v13 setVideoComposition:v6];
  }

  else
  {
    v13 = 0;
  }

  v12 = [(PUOneUpMergedVideoProvider *)self livePhotoPlayer];
  [v12 setPlayerItem:v13];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(PUOneUpMergedVideoProvider *)self signalChange:1];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    [(PUOneUpMergedVideoProvider *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setMergedVideo:(id)a3
{
  v5 = a3;
  if (self->_mergedVideo != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mergedVideo, a3);
    [(PUOneUpMergedVideoProvider *)self _updateLivePhotoPlayerItem];
    [(PUOneUpMergedVideoProvider *)self signalChange:2];
    v5 = v6;
  }
}

- (void)_handleRequestChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_2;
      v11[3] = &unk_1E7B806D8;
      v11[4] = self;
      v8 = v4;
      v12 = v8;
      [(PUOneUpMergedVideoProvider *)self performChanges:v11];
      [v8 unregisterChangeObserver:self context:0];
      v7 = v12;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke;
      v13[3] = &unk_1E7B806D8;
      v13[4] = self;
      v6 = v4;
      v14 = v6;
      [(PUOneUpMergedVideoProvider *)self performChanges:v13];
      [v6 unregisterChangeObserver:self context:0];
      v7 = v14;
    }

    goto LABEL_11;
  }

  if (v5 == 1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_4;
    v9[3] = &unk_1E7B806B0;
    v9[4] = self;
    [(PUOneUpMergedVideoProvider *)self performChanges:v9];
  }

  else if (v5 == 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PUOneUpMergedVideoProvider__handleRequestChanges___block_invoke_3;
    v10[3] = &unk_1E7B806B0;
    v10[4] = self;
    [(PUOneUpMergedVideoProvider *)self performChanges:v10];
    [v4 unregisterChangeObserver:self context:0];
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
  v3 = [(PUOneUpMergedVideoProvider *)self browsingViewModel];
  v4 = [v3 currentAssetReference];
  v5 = [(PUOneUpMergedVideoProvider *)self currentRequest];
  v6 = [v5 assetReference];
  v7 = [v3 isVideoContentAllowed];
  if (v4 && v7 && ([v3 isScrubbing] & 1) == 0)
  {
    v8 = [v6 asset];
    v9 = [v4 asset];
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [v9 isContentEqualTo:v10];
      if (!v12)
      {
        v12 = [v11 isContentEqualTo:v9];
      }

      if (v12 != 2)
      {
LABEL_12:
        [v5 cancel];
        v14 = [v3 assetsDataSource];
        if (v14)
        {
          v15 = [v4 asset];
          v16 = [v15 playbackStyle];

          if (v16 == 3)
          {
            v17 = [PUMergedLivePhotosVideoRequest alloc];
            v18 = [(PUOneUpMergedVideoProvider *)self dataCache];
            v19 = [(PUMergedLivePhotosVideoRequest *)v17 initWithAssetReference:v4 dataSource:v14 dataCache:v18];

            [(PUMergedLivePhotosVideoRequest *)v19 registerChangeObserver:self context:0];
            [(PUOneUpMergedVideoProvider *)self setCurrentRequest:v19];
          }
        }

LABEL_16:
        v20 = [v3 assetViewModelForCurrentAssetReference];
        if ([v20 isFullyInFocus])
        {
          v21 = [(PUOneUpMergedVideoProvider *)self isEnabled];

          if (!v21)
          {
LABEL_20:

            goto LABEL_21;
          }

          v20 = [(PUOneUpMergedVideoProvider *)self currentRequest];
          [v20 start];
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

  [v5 cancel];
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

- (void)playerWillRelinquishVideoPlayer:(id)a3
{
  v3 = MEMORY[0x1E69C3C70];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 checkInReusableWrappedPlayer:v4];
}

- (id)wrappedVideoPlayerForPlayer:(id)a3
{
  v3 = [MEMORY[0x1E69C3C70] sharedInstance];
  v4 = [v3 checkOutReusableWrappedPlayer];

  return v4;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5 = a4;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6;
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

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ((([v6 currentAssetDidChange] & 1) != 0 || (objc_msgSend(v6, "videoOverlayPlayStateDidChange") & 1) != 0 || (objc_msgSend(v6, "isVideoContentAllowedDidChange") & 1) != 0 || (objc_msgSend(v6, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(v6, "currentAssetTransitionProgressDidChange")) && !objc_msgSend(v7, "videoOverlayPlayState"))
  {
    [(PUOneUpMergedVideoProvider *)self _updateRequest];
  }
}

- (void)setIsEnabled:(BOOL)a3
{
  if (self->_isEnabled != a3)
  {
    self->_isEnabled = a3;
    [(PUOneUpMergedVideoProvider *)self _updateRequest];
  }
}

- (PUOneUpMergedVideoProvider)initWithBrowsingViewModel:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_browsingViewModel, a3);
    [v5 registerChangeObserver:v6];
  }

  return v6;
}

@end