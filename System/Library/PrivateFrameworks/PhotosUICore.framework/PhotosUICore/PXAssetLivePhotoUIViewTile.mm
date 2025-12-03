@interface PXAssetLivePhotoUIViewTile
- (CGSize)_targetSize;
- (UIView)view;
- (void)_handleLivePhotoResult:(id)result info:(id)info expectedRequestCount:(unint64_t)count expectedRequestID:(int64_t)d;
- (void)_requestLivePhotoIfNeeded;
- (void)_setPlayerItem:(id)item;
- (void)_updateLivePhotoView;
- (void)becomeReusable;
- (void)setCornerRadius:(double)radius;
- (void)setImageRequester:(id)requester;
@end

@implementation PXAssetLivePhotoUIViewTile

- (void)_handleLivePhotoResult:(id)result info:(id)info expectedRequestCount:(unint64_t)count expectedRequestID:(int64_t)d
{
  resultCopy = result;
  infoCopy = info;
  if (self->_requestCount == count)
  {
    livePhotoRequestID = self->_livePhotoRequestID;
    if (livePhotoRequestID == d && livePhotoRequestID != 0)
    {
      if (resultCopy)
      {
        image = [resultCopy image];
        videoAsset = [resultCopy videoAsset];
        [resultCopy photoTime];
        Seconds = CMTimeGetSeconds(&time);
        [image imageOrientation];
        v17 = PLExifOrientationFromImageOrientation();
        [resultCopy targetSize];
        v20 = v19;
        v21 = v18;
        if (v19 == *MEMORY[0x1E695F060] && v18 == *(MEMORY[0x1E695F060] + 8))
        {
          px_screen = [(ISLivePhotoUIView *)self->_livePhotoView px_screen];
          v24 = px_screen;
          if (px_screen)
          {
            px_mainScreen = px_screen;
          }

          else
          {
            px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
          }

          v26 = px_mainScreen;

          [v26 bounds];
          [v26 scale];
          PXSizeScale();
        }

        hasPhotoColorAdjustments = [resultCopy hasPhotoColorAdjustments];
        v28 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:videoAsset UIImage:image photoTime:v17 photoEXIFOrientation:hasPhotoColorAdjustments options:Seconds];
        v29 = [MEMORY[0x1E69C1B00] playerItemWithAsset:v28 targetSize:{v20, v21}];
        videoComposition = [resultCopy videoComposition];
        [v29 setVideoComposition:videoComposition];
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
  imageRequester = [(PXAssetLivePhotoUIViewTile *)self imageRequester];
  mediaProvider = [imageRequester mediaProvider];

  if (mediaProvider)
  {
    [mediaProvider cancelImageRequest:self->_livePhotoRequestID];
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
    imageRequester2 = [(PXAssetLivePhotoUIViewTile *)self imageRequester];
    asset = [imageRequester2 asset];
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
    v13 = [mediaProvider requestLivePhotoForAsset:asset targetSize:1 contentMode:v5 options:v14 resultHandler:{v10, v12}];

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

- (void)_setPlayerItem:(id)item
{
  itemCopy = item;
  if (self->__playerItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->__playerItem, item);
    [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
    itemCopy = v6;
  }
}

- (void)_updateLivePhotoView
{
  _playerItem = [(PXAssetLivePhotoUIViewTile *)self _playerItem];
  if (_playerItem)
  {
    if (!self->_livePhotoPlayer)
    {
      v3 = objc_alloc_init(MEMORY[0x1E69C1AF0]);
      livePhotoPlayer = self->_livePhotoPlayer;
      self->_livePhotoPlayer = v3;

      [(ISLivePhotoPlayer *)self->_livePhotoPlayer setAudioEnabled:0];
      [(ISLivePhotoUIView *)self->_livePhotoView setPlayer:self->_livePhotoPlayer];
      [(ISLivePhotoPlayer *)self->_livePhotoPlayer setPlayerItem:_playerItem];
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
    layer = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [layer setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetLivePhotoUIViewTile *)self cornerRadius];
    v8 = v7;
    layer2 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [layer2 setCornerRadius:v8];

    v10 = *MEMORY[0x1E69796E8];
    layer3 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [layer3 setCornerCurve:v10];

    layer = [(ISLivePhotoUIView *)self->_livePhotoView layer];
    [layer setAllowsGroupOpacity:0];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXAssetLivePhotoUIViewTile *)self _updateLivePhotoView];
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  v5 = self->_imageRequester;
  v6 = v5;
  if (v5 == requesterCopy)
  {
  }

  else
  {
    v7 = [(PXImageRequester *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      mediaProvider = [(PXImageRequester *)self->_imageRequester mediaProvider];
      [mediaProvider cancelImageRequest:self->_livePhotoRequestID];

      objc_storeStrong(&self->_imageRequester, requester);
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
    showBordersOnAnimatedContent = [v7 showBordersOnAnimatedContent];

    if (showBordersOnAnimatedContent)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      cGColor = [greenColor CGColor];
      layer = [(ISLivePhotoUIView *)self->_livePhotoView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(ISLivePhotoUIView *)self->_livePhotoView layer];
      [layer2 setBorderWidth:4.0];
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