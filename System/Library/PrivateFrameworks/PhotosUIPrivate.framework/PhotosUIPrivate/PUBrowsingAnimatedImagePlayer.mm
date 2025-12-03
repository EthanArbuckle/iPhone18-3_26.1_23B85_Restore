@interface PUBrowsingAnimatedImagePlayer
- (PUBrowsingAnimatedImagePlayer)init;
- (PUBrowsingAnimatedImagePlayer)initWithAsset:(id)asset mediaProvider:(id)provider;
- (id)debugDetailedDescription;
- (void)_cancelLoading;
- (void)_handleAnimatedImageRequestComplete:(id)complete;
- (void)_setAnimatedImage:(id)image;
- (void)_setAnimatedImageLoadingAllowed:(BOOL)allowed;
- (void)_updateAnimatedImage;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)didPerformChanges;
- (void)setAnimatedImageLoadingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setAsset:(id)asset;
- (void)unloadAnimatedImage;
@end

@implementation PUBrowsingAnimatedImagePlayer

- (id)debugDetailedDescription
{
  string = [MEMORY[0x1E696AD60] string];
  mediaProvider = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
  [string appendFormat:@"Media Provider: %@\n", mediaProvider];

  if ([(PUBrowsingAnimatedImagePlayer *)self _animatedImageRequestID])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  [string appendFormat:@"Waiting on animated image fetch: %@\n", v6];

  if ([(PUBrowsingAnimatedImagePlayer *)self isAnimatedImageLoadingAllowed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  [string appendFormat:@"Loading allowed: %@\n", v8];

  _animatedImageLoadingDisablingReasons = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageLoadingDisablingReasons];
  [string appendFormat:@"Loading disabled for: %@\n", _animatedImageLoadingDisablingReasons];

  animatedImage = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];
  [string appendFormat:@"PHAnimatedImage: %@\n", animatedImage];

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  pu_stringByIndentingNewLines = [string pu_stringByIndentingNewLines];
  v15 = [v11 stringWithFormat:@"<%@ %p> {\n\t%@}", v13, self, pu_stringByIndentingNewLines];

  return v15;
}

- (void)_handleAnimatedImageRequestComplete:(id)complete
{
  completeCopy = complete;
  v3 = completeCopy;
  px_dispatch_on_main_queue();
}

void __69__PUBrowsingAnimatedImagePlayer__handleAnimatedImageRequestComplete___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PUBrowsingAnimatedImagePlayer__handleAnimatedImageRequestComplete___block_invoke_2;
  v2[3] = &unk_1E7B80C38;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

uint64_t __69__PUBrowsingAnimatedImagePlayer__handleAnimatedImageRequestComplete___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setAnimatedImageRequestID:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setAnimatedImage:v3];
}

- (void)_updateAnimatedImage
{
  if (!self->_isValid.animatedImage)
  {
    v3 = 1;
    self->_isValid.animatedImage = 1;
    animatedImage = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];
    if (!animatedImage)
    {
      v3 = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageRequestID]!= 0;
    }

    if (-[PUBrowsingAnimatedImagePlayer isAnimatedImageLoadingAllowed](self, "isAnimatedImageLoadingAllowed") && (-[PUBrowsingAnimatedImagePlayer asset](self, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAnimatedImage], v5, v6))
    {
      if (!v3)
      {
        mediaProvider = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
        asset = [(PUBrowsingAnimatedImagePlayer *)self asset];
        v9 = objc_opt_new();
        [v9 setVersion:2];
        [v9 setDeliveryMode:1];
        [v9 setNetworkAccessAllowed:1];
        objc_initWeak(&location, self);
        v11 = MEMORY[0x1E69E9820];
        v12 = 3221225472;
        v13 = __53__PUBrowsingAnimatedImagePlayer__updateAnimatedImage__block_invoke;
        v14 = &unk_1E7B75C68;
        objc_copyWeak(&v15, &location);
        v10 = [mediaProvider requestAnimatedImageForAsset:asset options:v9 resultHandler:&v11];
        [(PUBrowsingAnimatedImagePlayer *)self _setAnimatedImageRequestID:v10, v11, v12, v13, v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    else
    {

      [(PUBrowsingAnimatedImagePlayer *)self _cancelLoading];
    }
  }
}

void __53__PUBrowsingAnimatedImagePlayer__updateAnimatedImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAnimatedImageRequestComplete:v3];
}

- (void)_updateIfNeeded
{
  if ([(PUBrowsingAnimatedImagePlayer *)self _needsUpdate])
  {
    [(PUBrowsingAnimatedImagePlayer *)self _updateAnimatedImage];
    if ([(PUBrowsingAnimatedImagePlayer *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:163 description:{@"[%@] Update still needed after update pass", self}];
    }
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PUBrowsingAnimatedImagePlayer;
  [(PUViewModel *)&v3 didPerformChanges];
  [(PUBrowsingAnimatedImagePlayer *)self _updateIfNeeded];
}

- (void)_setAnimatedImageLoadingAllowed:(BOOL)allowed
{
  if (self->_isAnimatedImageLoadingAllowed != allowed)
  {
    self->_isAnimatedImageLoadingAllowed = allowed;
    currentChange = [(PUViewModel *)self currentChange];
    [currentChange _setAnimatedImageLoadingAllowedDidChange:1];

    animatedImage = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];

    if (!animatedImage)
    {

      [(PUBrowsingAnimatedImagePlayer *)self _invalidateAnimatedImage];
    }
  }
}

- (void)setAnimatedImageLoadingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  _animatedImageLoadingDisablingReasons = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageLoadingDisablingReasons];
  v8 = _animatedImageLoadingDisablingReasons;
  if (disabledCopy)
  {
    [_animatedImageLoadingDisablingReasons addObject:reasonCopy];
  }

  else
  {
    [_animatedImageLoadingDisablingReasons removeObject:reasonCopy];
  }

  -[PUBrowsingAnimatedImagePlayer _setAnimatedImageLoadingAllowed:](self, "_setAnimatedImageLoadingAllowed:", [v8 count] == 0);
}

- (void)_setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->_animatedImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_animatedImage, image);
    currentChange = [(PUViewModel *)self currentChange];
    [currentChange _setAnimatedImageDidChange:1];

    imageCopy = v7;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v11 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    asset = self->_asset;
    v7 = v11;
    assetCopy2 = asset;
    v9 = assetCopy2;
    if (assetCopy2 == v7)
    {

      goto LABEL_8;
    }

    v10 = [(PUDisplayAsset *)v7 isContentEqualTo:assetCopy2];
    if (!v10)
    {
      v10 = [(PUDisplayAsset *)v9 isContentEqualTo:v7];
    }

    assetCopy = v11;
    if (v10 != 2)
    {
      [(PUBrowsingAnimatedImagePlayer *)self _setAnimatedImage:0];
      [(PUBrowsingAnimatedImagePlayer *)self _invalidateAnimatedImage];
LABEL_8:
      assetCopy = v11;
    }
  }
}

- (void)unloadAnimatedImage
{
  [(PUBrowsingAnimatedImagePlayer *)self _setAnimatedImage:0];

  [(PUBrowsingAnimatedImagePlayer *)self _invalidateAnimatedImage];
}

- (void)_cancelLoading
{
  if ([(PUBrowsingAnimatedImagePlayer *)self _animatedImageRequestID])
  {
    mediaProvider = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
    [mediaProvider cancelImageRequest:{-[PUBrowsingAnimatedImagePlayer _animatedImageRequestID](self, "_animatedImageRequestID")}];

    [(PUBrowsingAnimatedImagePlayer *)self _setAnimatedImageRequestID:0];
  }
}

- (void)dealloc
{
  [(PUBrowsingAnimatedImagePlayer *)self _cancelLoading];
  v3.receiver = self;
  v3.super_class = PUBrowsingAnimatedImagePlayer;
  [(PUBrowsingAnimatedImagePlayer *)&v3 dealloc];
}

- (PUBrowsingAnimatedImagePlayer)initWithAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = PUBrowsingAnimatedImagePlayer;
  v10 = [(PUViewModel *)&v16 init];
  if (v10)
  {
    if (assetCopy)
    {
      if (providerCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, asset);
        objc_storeStrong(&v10->_mediaProvider, provider);
        v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        animatedImageLoadingDisablingReasons = v10->__animatedImageLoadingDisablingReasons;
        v10->__animatedImageLoadingDisablingReasons = v11;

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

      if (providerCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (PUBrowsingAnimatedImagePlayer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:42 description:@"unavailable method"];

  return 0;
}

@end