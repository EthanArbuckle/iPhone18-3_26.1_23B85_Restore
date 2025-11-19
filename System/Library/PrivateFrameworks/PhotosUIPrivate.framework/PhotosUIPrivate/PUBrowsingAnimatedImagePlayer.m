@interface PUBrowsingAnimatedImagePlayer
- (PUBrowsingAnimatedImagePlayer)init;
- (PUBrowsingAnimatedImagePlayer)initWithAsset:(id)a3 mediaProvider:(id)a4;
- (id)debugDetailedDescription;
- (void)_cancelLoading;
- (void)_handleAnimatedImageRequestComplete:(id)a3;
- (void)_setAnimatedImage:(id)a3;
- (void)_setAnimatedImageLoadingAllowed:(BOOL)a3;
- (void)_updateAnimatedImage;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)didPerformChanges;
- (void)setAnimatedImageLoadingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setAsset:(id)a3;
- (void)unloadAnimatedImage;
@end

@implementation PUBrowsingAnimatedImagePlayer

- (id)debugDetailedDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
  [v3 appendFormat:@"Media Provider: %@\n", v4];

  if ([(PUBrowsingAnimatedImagePlayer *)self _animatedImageRequestID])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  [v3 appendFormat:@"Waiting on animated image fetch: %@\n", v6];

  if ([(PUBrowsingAnimatedImagePlayer *)self isAnimatedImageLoadingAllowed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  [v3 appendFormat:@"Loading allowed: %@\n", v8];

  v9 = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageLoadingDisablingReasons];
  [v3 appendFormat:@"Loading disabled for: %@\n", v9];

  v10 = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];
  [v3 appendFormat:@"PHAnimatedImage: %@\n", v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v3 pu_stringByIndentingNewLines];
  v15 = [v11 stringWithFormat:@"<%@ %p> {\n\t%@}", v13, self, v14];

  return v15;
}

- (void)_handleAnimatedImageRequestComplete:(id)a3
{
  v4 = a3;
  v3 = v4;
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
    v4 = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];
    if (!v4)
    {
      v3 = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageRequestID]!= 0;
    }

    if (-[PUBrowsingAnimatedImagePlayer isAnimatedImageLoadingAllowed](self, "isAnimatedImageLoadingAllowed") && (-[PUBrowsingAnimatedImagePlayer asset](self, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isAnimatedImage], v5, v6))
    {
      if (!v3)
      {
        v7 = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
        v8 = [(PUBrowsingAnimatedImagePlayer *)self asset];
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
        v10 = [v7 requestAnimatedImageForAsset:v8 options:v9 resultHandler:&v11];
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
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:163 description:{@"[%@] Update still needed after update pass", self}];
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

- (void)_setAnimatedImageLoadingAllowed:(BOOL)a3
{
  if (self->_isAnimatedImageLoadingAllowed != a3)
  {
    self->_isAnimatedImageLoadingAllowed = a3;
    v4 = [(PUViewModel *)self currentChange];
    [v4 _setAnimatedImageLoadingAllowedDidChange:1];

    v5 = [(PUBrowsingAnimatedImagePlayer *)self animatedImage];

    if (!v5)
    {

      [(PUBrowsingAnimatedImagePlayer *)self _invalidateAnimatedImage];
    }
  }
}

- (void)setAnimatedImageLoadingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v7 = [(PUBrowsingAnimatedImagePlayer *)self _animatedImageLoadingDisablingReasons];
  v8 = v7;
  if (v4)
  {
    [v7 addObject:v10];
  }

  else
  {
    [v7 removeObject:v10];
  }

  -[PUBrowsingAnimatedImagePlayer _setAnimatedImageLoadingAllowed:](self, "_setAnimatedImageLoadingAllowed:", [v8 count] == 0);
}

- (void)_setAnimatedImage:(id)a3
{
  v5 = a3;
  if (self->_animatedImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_animatedImage, a3);
    v6 = [(PUViewModel *)self currentChange];
    [v6 _setAnimatedImageDidChange:1];

    v5 = v7;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_asset, a3);
    asset = self->_asset;
    v7 = v11;
    v8 = asset;
    v9 = v8;
    if (v8 == v7)
    {

      goto LABEL_8;
    }

    v10 = [(PUDisplayAsset *)v7 isContentEqualTo:v8];
    if (!v10)
    {
      v10 = [(PUDisplayAsset *)v9 isContentEqualTo:v7];
    }

    v5 = v11;
    if (v10 != 2)
    {
      [(PUBrowsingAnimatedImagePlayer *)self _setAnimatedImage:0];
      [(PUBrowsingAnimatedImagePlayer *)self _invalidateAnimatedImage];
LABEL_8:
      v5 = v11;
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
    v3 = [(PUBrowsingAnimatedImagePlayer *)self mediaProvider];
    [v3 cancelImageRequest:{-[PUBrowsingAnimatedImagePlayer _animatedImageRequestID](self, "_animatedImageRequestID")}];

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

- (PUBrowsingAnimatedImagePlayer)initWithAsset:(id)a3 mediaProvider:(id)a4
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PUBrowsingAnimatedImagePlayer;
  v10 = [(PUViewModel *)&v16 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, a3);
        objc_storeStrong(&v10->_mediaProvider, a4);
        v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        animatedImageLoadingDisablingReasons = v10->__animatedImageLoadingDisablingReasons;
        v10->__animatedImageLoadingDisablingReasons = v11;

        goto LABEL_5;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:v10 file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

- (PUBrowsingAnimatedImagePlayer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUBrowsingAnimatedImagePlayer.m" lineNumber:42 description:@"unavailable method"];

  return 0;
}

@end