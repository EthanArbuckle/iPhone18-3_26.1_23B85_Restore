@interface PXAssetAnimatedImageUIViewTile
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestPlaybackTimeRange;
- (PXAssetAnimatedImageUIViewTile)init;
- (UIView)view;
- (void)_handleAnimatedImageResult:(id)result info:(id)info expectedRequestCount:(unint64_t)count;
- (void)_requestAnimatedImageIfNeeded;
- (void)_setAnimatedImage:(id)image;
- (void)_updateAnimatedImageView;
- (void)becomeReusable;
- (void)setBestPlaybackTimeRange:(id *)range;
- (void)setCornerRadius:(double)radius;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setImageRequester:(id)requester;
@end

@implementation PXAssetAnimatedImageUIViewTile

- (void)setBestPlaybackTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_bestPlaybackTimeRange.start.epoch = *&range->var0.var3;
  *&self->_bestPlaybackTimeRange.duration.timescale = v4;
  *&self->_bestPlaybackTimeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestPlaybackTimeRange
{
  v3 = *&self[1].var1.var1;
  *&retstr->var0.var0 = *&self[1].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var0;
  return self;
}

- (void)_setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->__animatedImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->__animatedImage, image);
    [(PXAssetAnimatedImageUIViewTile *)self _updateAnimatedImageView];
    imageCopy = v6;
  }
}

- (void)_handleAnimatedImageResult:(id)result info:(id)info expectedRequestCount:(unint64_t)count
{
  v14 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  infoCopy = info;
  if (self->_requestCount == count && self->_animatedImageRequestID)
  {
    if (!resultCopy)
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch animated image with error: %@", &v12, 0xCu);
      }
    }

    self->_animatedImageRequestID = 0;
    [(PXAssetAnimatedImageUIViewTile *)self _setAnimatedImage:resultCopy];
  }
}

- (void)_requestAnimatedImageIfNeeded
{
  imageRequester = [(PXAssetAnimatedImageUIViewTile *)self imageRequester];
  mediaProvider = [imageRequester mediaProvider];

  if (mediaProvider)
  {
    [mediaProvider cancelImageRequest:self->_animatedImageRequestID];
    v6 = objc_alloc_init(PXAnimatedImageRequestOptions);
    [(PXAnimatedImageRequestOptions *)v6 setVersion:2];
    [(PXAnimatedImageRequestOptions *)v6 setDeliveryMode:1];
    [(PXAnimatedImageRequestOptions *)v6 setNetworkAccessAllowed:0];
    [(PXAnimatedImageRequestOptions *)v6 setAllowPreCaching:0];
    [(PXAnimatedImageRequestOptions *)v6 setUseSharedImageDecoding:1];
    objc_initWeak(&location, self);
    v7 = (self->_requestCount + 1);
    self->_requestCount = v7;
    imageRequester2 = [(PXAssetAnimatedImageUIViewTile *)self imageRequester];
    asset = [imageRequester2 asset];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PXAssetAnimatedImageUIViewTile__requestAnimatedImageIfNeeded__block_invoke;
    v10[3] = &unk_1E77334D8;
    v11[1] = a2;
    v10[4] = self;
    objc_copyWeak(v11, &location);
    v11[2] = v7;
    self->_animatedImageRequestID = [mediaProvider requestAnimatedImageForAsset:asset options:v6 resultHandler:v10];

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXAssetAnimatedImageUIViewTile *)self _setAnimatedImage:0];
  }
}

void __63__PXAssetAnimatedImageUIViewTile__requestAnimatedImageIfNeeded__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8[1] = a1[6];
  objc_copyWeak(v8, a1 + 5);
  v6;
  v8[2] = a1[7];
  px_dispatch_on_main_queue();
}

void __63__PXAssetAnimatedImageUIViewTile__requestAnimatedImageIfNeeded__block_invoke_2(uint64_t a1)
{
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = [MEMORY[0x1E696AAA8] currentHandler];
      v4 = *(a1 + 64);
      v5 = *(a1 + 40);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v9 px_descriptionForAssertionMessage];
      [v3 handleFailureInMethod:v4 object:v5 file:@"PXAssetAnimatedImageUIViewTile.m" lineNumber:155 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"result", v7, v8}];
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleAnimatedImageResult:v9 info:*(a1 + 48) expectedRequestCount:*(a1 + 72)];
}

- (void)_updateAnimatedImageView
{
  _animatedImage = [(PXAssetAnimatedImageUIViewTile *)self _animatedImage];

  animatedImageView = self->_animatedImageView;
  if (_animatedImage)
  {
    player = [(ISAnimatedImageView *)animatedImageView player];

    if (!player)
    {
      v6 = objc_alloc(MEMORY[0x1E69C1AD8]);
      _animatedImage2 = [(PXAssetAnimatedImageUIViewTile *)self _animatedImage];
      pf_animatedImage = [_animatedImage2 pf_animatedImage];
      v9 = [v6 initWithAnimatedImage:pf_animatedImage];

      [v9 setAllowFrameDrops:0];
      [(ISAnimatedImageView *)self->_animatedImageView setPlayer:v9];
    }

    v10 = [(PXAssetAnimatedImageUIViewTile *)self desiredPlayState]== 1;
  }

  else
  {
    [(ISAnimatedImageView *)animatedImageView setPlayer:0];
    v10 = 0;
  }

  [(ISAnimatedImageView *)self->_animatedImageView setPlaying:v10];
  [(PXAssetAnimatedImageUIViewTile *)self cornerRadius];
  if (v11 <= 0.0)
  {
    layer = [(ISAnimatedImageView *)self->_animatedImageView layer];
    [layer setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetAnimatedImageUIViewTile *)self cornerRadius];
    v13 = v12;
    layer2 = [(ISAnimatedImageView *)self->_animatedImageView layer];
    [layer2 setCornerRadius:v13];

    v15 = *MEMORY[0x1E69796E8];
    layer3 = [(ISAnimatedImageView *)self->_animatedImageView layer];
    [layer3 setCornerCurve:v15];

    layer = [(ISAnimatedImageView *)self->_animatedImageView layer];
    [layer setAllowsGroupOpacity:0];
  }
}

- (void)setDesiredPlayState:(int64_t)state
{
  if (self->_desiredPlayState != state)
  {
    self->_desiredPlayState = state;
    [(PXAssetAnimatedImageUIViewTile *)self _updateAnimatedImageView];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXAssetAnimatedImageUIViewTile *)self _updateAnimatedImageView];
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  v6 = requesterCopy;
  if (self->_imageRequester != requesterCopy)
  {
    v9 = requesterCopy;
    v7 = [(PXImageRequester *)requesterCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      mediaProvider = [(PXImageRequester *)self->_imageRequester mediaProvider];
      [mediaProvider cancelImageRequest:self->_animatedImageRequestID];

      objc_storeStrong(&self->_imageRequester, requester);
      self->_animatedImageRequestID = 0;
      [(PXAssetAnimatedImageUIViewTile *)self _requestAnimatedImageIfNeeded];
      v6 = v9;
    }
  }
}

- (UIView)view
{
  animatedImageView = self->_animatedImageView;
  if (!animatedImageView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C1AE0]) initWithAnimatedImage:0];
    v5 = self->_animatedImageView;
    self->_animatedImageView = v4;

    [(ISAnimatedImageView *)self->_animatedImageView setContentMode:2];
    [(ISAnimatedImageView *)self->_animatedImageView setClipsToBounds:1];
    [(ISAnimatedImageView *)self->_animatedImageView setUserInteractionEnabled:0];
    v6 = +[PXAssetsSceneSettings sharedInstance];
    showBordersOnAnimatedContent = [v6 showBordersOnAnimatedContent];

    if (showBordersOnAnimatedContent)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      cGColor = [greenColor CGColor];
      layer = [(ISAnimatedImageView *)self->_animatedImageView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(ISAnimatedImageView *)self->_animatedImageView layer];
      [layer2 setBorderWidth:4.0];
    }

    [(PXAssetAnimatedImageUIViewTile *)self _updateAnimatedImageView];
    animatedImageView = self->_animatedImageView;
  }

  return animatedImageView;
}

- (void)becomeReusable
{
  [(PXAssetAnimatedImageUIViewTile *)self setImageRequester:0];
  [(PXAssetAnimatedImageUIViewTile *)self _setAnimatedImage:0];
  [(ISAnimatedImageView *)self->_animatedImageView setHidden:1];
  self->_desiredPlayState = 1;
}

- (PXAssetAnimatedImageUIViewTile)init
{
  v3.receiver = self;
  v3.super_class = PXAssetAnimatedImageUIViewTile;
  result = [(PXAssetAnimatedImageUIViewTile *)&v3 init];
  if (result)
  {
    result->_desiredPlayState = 1;
  }

  return result;
}

@end