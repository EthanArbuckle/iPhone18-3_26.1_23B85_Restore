@interface PXAssetLivePhotoUIViewTile
- (CGSize)_targetSize;
- (UIView)view;
- (void)_handleLivePhotoResult:(id)a3 info:(id)a4 expectedRequestCount:(unint64_t)a5 expectedRequestID:(int64_t)a6;
- (void)_requestLivePhotoIfNeeded;
- (void)_setPlayerItem:(id)a3;
- (void)_updateLivePhotoView;
- (void)becomeReusable;
- (void)setCornerRadius:(double)a3;
- (void)setImageRequester:(id)a3;
@end

@implementation PXAssetLivePhotoUIViewTile

- (void)_handleLivePhotoResult:(id)a3 info:(id)a4 expectedRequestCount:(unint64_t)a5 expectedRequestID:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (self->_requestCount == a5)
  {
    livePhotoRequestID = self->_livePhotoRequestID;
    if (livePhotoRequestID == a6 && livePhotoRequestID != 0)
    {
      if (v10)
      {
        v14 = [v10 image];
        v15 = [v10 videoAsset];
        [v10 photoTime];
        Seconds = CMTimeGetSeconds(&time);
        [v14 imageOrientation];
        v17 = PLExifOrientationFromImageOrientation();
        [v10 targetSize];
        v20 = v19;
        v21 = v18;
        if (v19 == *MEMORY[0x1E695F060] && v18 == *(MEMORY[0x1E695F060] + 8))
        {
          v23 = [(ISLivePhotoUIView *)self->_livePhotoView px_screen];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = [MEMORY[0x1E69DCEB0] px_mainScreen];
          }

          v26 = v25;

          [v26 bounds];
          [v26 scale];
          PXSizeScale();
        }

        v27 = [v10 hasPhotoColorAdjustments];
        v28 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:v15 UIImage:v14 photoTime:v17 photoEXIFOrientation:v27 options:Seconds];
        v29 = [MEMORY[0x1E69C1B00] playerItemWithAsset:v28 targetSize:{v20, v21}];
        v30 = [v10 videoComposition];
        [v29 setVideoComposition:v30];
      }

      else
      {
        v29 = 0;
      }

      [(PXAssetLivePhotoUIViewTile *)self _setPlayerItem:v29];
    }
  }
}

- (CGSize)_targetSize
{
  if (_targetSize_onceToken != -1)
  {
    dispatch_once(&_targetSize_onceToken, &__block_literal_global_153408);
  }

  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_requestLivePhotoIfNeeded
{
  v3 = [(PXAssetLivePhotoUIViewTile *)self imageRequester];
  v4 = [v3 mediaProvider];

  if (v4)
  {
    [v4 cancelImageRequest:self->_livePhotoRequestID];
    v5 = objc_alloc_init(PXLivePhotoRequestOptions);
    [(PXLivePhotoRequestOptions *)v5 setNetworkAccessAllowed:1];
    [(PXLivePhotoRequestOptions *)v5 setDeliveryMode:1];
    objc_initWeak(&location, self);
    v6 = (self->_requestCount + 1);
    self->_requestCount = v6;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v7 = [(PXAssetLivePhotoUIViewTile *)self imageRequester];
    v8 = [v7 asset];
    [(PXAssetLivePhotoUIViewTile *)self _targetSize];
    v10 = v9;
    v12 = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__PXAssetLivePhotoUIViewTile__requestLivePhotoIfNeeded__block_invoke;
    v14[3] = &unk_1E773DED8;
    objc_copyWeak(v15, &location);
    v15[1] = v6;
    v14[4] = &v16;
    v13 = [v4 requestLivePhotoForAsset:v8 targetSize:1 contentMode:v5 options:v14 resultHandler:{v10, v12}];

    v17[3] = v13;
    self->_livePhotoRequestID = v13;
    _Block_object_dispose(&v16, 8);
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXAssetLivePhotoUIViewTile *)self _setPlayerItem:0];
  }
}

void __55__PXAssetLivePhotoUIViewTile__requestLivePhotoIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v5;
  objc_copyWeak(v8, (a1 + 40));
  v7 = v6;
  v8[1] = *(a1 + 48);
  px_dispatch_on_main_queue();
}

void __55__PXAssetLivePhotoUIViewTile__requestLivePhotoIfNeeded__block_invoke_2(uint64_t a1)
{
  v8 = *(a1 + 32);
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXAssetLivePhotoUIViewTile _requestLivePhotoIfNeeded]_block_invoke_2"];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v8 px_descriptionForAssertionMessage];
      [v3 handleFailureInFunction:v4 file:@"PXAssetLivePhotoUIViewTile.m" lineNumber:145 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"pxLivePhoto", v6, v7}];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleLivePhotoResult:v8 info:*(a1 + 40) expectedRequestCount:*(a1 + 64) expectedRequestID:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)_setPlayerItem:(id)a3
{
  v5 = a3;
  if (self->__playerItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__playerItem, a3);
    [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
    v5 = v6;
  }
}

- (void)_updateLivePhotoView
{
  v13 = [(PXAssetLivePhotoUIViewTile *)self _playerItem];
  if (v13)
  {
    if (!self->_livePhotoPlayer)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
      livePhotoPlayer = self->_livePhotoPlayer;
      self->_livePhotoPlayer = v3;

      [(ISLivePhotoPlayer *)self->_livePhotoPlayer setAudioEnabled:0];
      [(ISLivePhotoUIView *)self->_livePhotoView setPlayer:self->_livePhotoPlayer];
      [(ISLivePhotoPlayer *)self->_livePhotoPlayer setPlayerItem:v13];
      [(ISLivePhotoPlayer *)self->_livePhotoPlayer startPlaybackWithStyleWhenReady:4];
    }
  }

  else
  {
    [(ISLivePhotoUIView *)self->_livePhotoView setPlayer:0];
    v5 = self->_livePhotoPlayer;
    self->_livePhotoPlayer = 0;
  }

  [(PXAssetLivePhotoUIViewTile *)self cornerRadius];
  if (v6 <= 0.0)
  {
    v12 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [v12 setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetLivePhotoUIViewTile *)self cornerRadius];
    v8 = v7;
    v9 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [v9 setCornerRadius:v8];

    v10 = *MEMORY[0x1E69796E8];
    v11 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [v11 setCornerCurve:v10];

    v12 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [v12 setAllowsGroupOpacity:0];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
  }
}

- (void)setImageRequester:(id)a3
{
  v9 = a3;
  v5 = self->_imageRequester;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(PXImageRequester *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = [(PXImageRequester *)self->_imageRequester mediaProvider];
      [v8 cancelImageRequest:self->_livePhotoRequestID];

      objc_storeStrong(&self->_imageRequester, a3);
      self->_livePhotoRequestID = 0;
      [(PXAssetLivePhotoUIViewTile *)self _requestLivePhotoIfNeeded];
      [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
    }
  }
}

- (UIView)view
{
  livePhotoView = self->_livePhotoView;
  if (!livePhotoView)
  {
    v4 = objc_alloc(MEMORY[0x1E69C1AF8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_livePhotoView;
    self->_livePhotoView = v5;

    [(ISLivePhotoUIView *)self->_livePhotoView setAutoresizingMask:18];
    v7 = +[PXAssetsSceneSettings sharedInstance];
    v8 = [v7 showBordersOnAnimatedContent];

    if (v8)
    {
      v9 = [MEMORY[0x1E69DC888] greenColor];
      v10 = [v9 CGColor];
      v11 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
      [v11 setBorderColor:v10];

      v12 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
      [v12 setBorderWidth:4.0];
    }

    [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
    livePhotoView = self->_livePhotoView;
  }

  return livePhotoView;
}

- (void)becomeReusable
{
  [(PXAssetLivePhotoUIViewTile *)self _setPlayerItem:0];
  livePhotoView = self->_livePhotoView;

  [(ISLivePhotoUIView *)livePhotoView setHidden:1];
}

@end