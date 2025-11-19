@interface PXUIPlayButtonTile
+ (CGSize)preferredSize;
- (CGPoint)imageViewportLocation;
- (CGSize)playButtonSize;
- (PXUIPlayButtonTile)init;
- (PXUIPlayButtonTileDelegate)delegate;
- (UIView)view;
- (void)_handleExtractionResult:(id)a3 isPlaceholder:(BOOL)a4 extraction:(id)a5;
- (void)_resetHifiPlayButton;
- (void)_setAnimatingGeometry:(BOOL)a3;
- (void)_setAnimationCount:(unint64_t)a3;
- (void)_setBackgroundImage:(id)a3;
- (void)_updateBackgroundImageIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayButtonViewIfNeeded;
- (void)becomeReusable;
- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
- (void)didTapButton:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)prepareForReuse;
- (void)setAllowsBackdropStatisticsSuppression:(BOOL)a3;
- (void)setImageRequester:(id)a3;
- (void)setImageViewportLocation:(CGPoint)a3;
- (void)setPlayButtonSize:(CGSize)a3;
- (void)setPlayButtonStyle:(int64_t)a3;
- (void)setPlayButtonTitle:(id)a3;
- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
@end

@implementation PXUIPlayButtonTile

- (CGPoint)imageViewportLocation
{
  x = self->_imageViewportLocation.x;
  y = self->_imageViewportLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)playButtonSize
{
  width = self->_playButtonSize.width;
  height = self->_playButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXUIPlayButtonTileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v6 = [(PXUIPlayButtonTile *)self _animationCount:a3]- 1;

  [(PXUIPlayButtonTile *)self _setAnimationCount:v6];
}

- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v6 = [(PXUIPlayButtonTile *)self _animationCount:a3]+ 1;

  [(PXUIPlayButtonTile *)self _setAnimationCount:v6];
}

- (UIView)view
{
  if (!self->_view)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    view = self->_view;
    self->_view = v3;
  }

  [(PXUIPlayButtonTile *)self _updateIfNeeded];
  v5 = self->_view;

  return v5;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 0x800) != 0 && PXImageRequesterObserverContext == a5)
  {
    v7[5] = v5;
    v7[6] = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PXUIPlayButtonTile_observable_didChange_context___block_invoke;
    v7[3] = &unk_1E7735028;
    v7[4] = self;
    [(PXUIPlayButtonTile *)self performChanges:v7];
  }
}

- (void)prepareForReuse
{
  v2 = [(PXUIPlayButtonTile *)self view];
  [v2 setHidden:0];
}

- (void)becomeReusable
{
  v3 = [(PXUIPlayButtonTile *)self view];
  [v3 setHidden:1];

  [(PXUIPlayButtonTile *)self performChanges:&__block_literal_global_18_64079];
}

- (void)didTapButton:(id)a3
{
  v4 = [(PXUIPlayButtonTile *)self delegate];
  [v4 playButtonTileWasTapped:self];
}

- (void)_handleExtractionResult:(id)a3 isPlaceholder:(BOOL)a4 extraction:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (![(PXImageExtraction *)v8 isCancelled])
  {
    imageExtraction = self->_imageExtraction;
    if (!imageExtraction || imageExtraction == v8)
    {
      v10 = [(PXUIPlayButtonTile *)self _backgroundImage];

      if (!v10 || !a4)
      {
        [(PXUIPlayButtonTile *)self _setBackgroundImage:v11];
      }
    }
  }
}

- (void)_updateIfNeeded
{
  if ([(PXUIPlayButtonTile *)self _needsUpdate])
  {
    [(PXUIPlayButtonTile *)self _updateBackgroundImageIfNeeded];
    [(PXUIPlayButtonTile *)self _updatePlayButtonViewIfNeeded];
    if ([(PXUIPlayButtonTile *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:331 description:{@"[%@] update needed at end of update pass", self}];
    }
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, self);
    v4 = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXUIPlayButtonTile *)self _updateIfNeeded];
    v4 = v6;
  }
}

- (void)_updateBackgroundImageIfNeeded
{
  if (self->_needsUpdate.backgroundImage)
  {
    self->_needsUpdate.backgroundImage = 0;
    v3 = [(PXUIPlayButtonTile *)self imageRequester];
    v4 = [v3 opportunisticImage];
    imageExtraction = self->_imageExtraction;
    if (v4)
    {
      if (!imageExtraction)
      {
LABEL_15:
        v14 = [v3 asset];
        assetForImageExtraction = self->_assetForImageExtraction;
        self->_assetForImageExtraction = v14;

        [v3 contentsRect];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [v3 viewportSize];
        v25 = v24;
        v27 = v26;
        [(PXUIPlayButtonTile *)self imageViewportLocation];
        v29 = v28;
        v31 = v30;
        objc_initWeak(&location, self);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __52__PXUIPlayButtonTile__updateBackgroundImageIfNeeded__block_invoke;
        v34[3] = &unk_1E77342C0;
        objc_copyWeak(&v35, &location);
        v32 = [v4 px_extractPlayOverlayBackgroundImageFromLocation:2 inViewportWithSize:1 contentMode:v34 contentsRect:v29 asynchronously:v31 handler:{v25, v27, v17, v19, v21, v23}];
        v33 = self->_imageExtraction;
        self->_imageExtraction = v32;

        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
        goto LABEL_16;
      }

      v6 = self->_assetForImageExtraction;
      v7 = [v3 asset];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 != v9)
      {
        if (v8 && v9)
        {
          v11 = [(PXDisplayAsset *)v8 isContentEqualTo:v9];
          if (!v11)
          {
            v11 = [v10 isContentEqualTo:v8];
          }

          if (v11 == 2)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }

        goto LABEL_15;
      }
    }

    else
    {
      [(PXImageExtraction *)imageExtraction cancel];
      v12 = self->_assetForImageExtraction;
      self->_assetForImageExtraction = 0;

      v13 = self->_imageExtraction;
      self->_imageExtraction = 0;

      v10 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:2];
      [(PXUIPlayButtonTile *)self _setBackgroundImage:v10];
    }

LABEL_16:
  }
}

void __52__PXUIPlayButtonTile__updateBackgroundImageIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleExtractionResult:v8 isPlaceholder:a3 extraction:v7];
}

- (void)_updatePlayButtonViewIfNeeded
{
  if (!self->_needsUpdate.playButton)
  {
    return;
  }

  v49 = v7;
  v50 = v6;
  v51 = v5;
  v52 = v4;
  v53 = v2;
  v54 = v3;
  self->_needsUpdate.playButton = 0;
  v9 = [(PXUIPlayButtonTile *)self view];
  [(PXUIPlayButtonTile *)self playButtonSize];
  v11 = v10;
  v13 = v12;
  v14 = [(PXUIPlayButtonTile *)self playButtonStyle];
  if (v14 != 1)
  {
    v17 = v14;
    if ([(PXUIPlayButtonTile *)self _isAnimatingGeometry])
    {
      v18 = [(PXUIPlayButtonTile *)self _backgroundImage];
      v16 = v18 != 0;

      if (v17)
      {
LABEL_6:
        v15 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
      if (v17)
      {
        goto LABEL_6;
      }
    }

    v15 = ![(PXUIPlayButtonTile *)self _isAnimatingGeometry];
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 1;
LABEL_9:
  v19 = MEMORY[0x1E69DD250];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke;
  v42[3] = &unk_1E7734298;
  v47 = v15;
  v42[4] = self;
  v20 = v9;
  v43 = v20;
  v30 = *MEMORY[0x1E695EFF8];
  v44 = *MEMORY[0x1E695EFF8];
  v45 = v11;
  v46 = v13;
  v48 = 0;
  [v19 performWithoutAnimation:v42];
  if (v16)
  {
    v21 = MEMORY[0x1E69DD250];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_2;
    v37[3] = &unk_1E7735358;
    v37[4] = self;
    v38 = v20;
    v39 = v30;
    v40 = v11;
    v41 = v13;
    [v21 performWithoutAnimation:v37];
  }

  else
  {
    playButtonView = self->_playButtonView;
    if (playButtonView)
    {
      v23 = playButtonView;
      v24 = self->_playButtonBackgroundImageView;
      v25 = MEMORY[0x1E69DD250];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_3;
      v34[3] = &unk_1E774C620;
      v35 = v23;
      v36 = v24;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_4;
      v31[3] = &unk_1E7749628;
      v32 = v35;
      v33 = v36;
      v26 = v36;
      v27 = v35;
      [v25 animateWithDuration:v34 animations:v31 completion:2.0];
      v28 = self->_playButtonView;
      self->_playButtonView = 0;

      playButtonBackgroundImageView = self->_playButtonBackgroundImageView;
      self->_playButtonBackgroundImageView = 0;
    }
  }
}

void __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = v3[2];
  if (v2 == 1)
  {
    if (!v4)
    {
      v5 = [v3 allowsBackdropStatisticsSuppression];
      v6 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:0 allowBackdropStatisticsSupression:v5];
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      *(v7 + 16) = v6;

      [*(*(a1 + 32) + 16) setAutoresizingMask:0];
      [*(a1 + 40) insertSubview:*(*(a1 + 32) + 16) atIndex:0];
      v4 = *(*(a1 + 32) + 16);
    }

    [v4 setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  else if (v4)
  {
    [v4 removeFromSuperview];
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    *(v9 + 16) = 0;
  }

  v11 = *(*(a1 + 32) + 32);
  if (*(a1 + 81) == 1)
  {
    if (!v11)
    {
      v12 = objc_opt_new();
      [v12 setStyle:5];
      [v12 setLocalizedTitle:*(*(a1 + 32) + 88)];
      v13 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithConfiguration:v12];
      v14 = *(a1 + 32);
      v15 = *(v14 + 32);
      *(v14 + 32) = v13;

      [*(*(a1 + 32) + 32) setAutoresizingMask:0];
      [*(*(a1 + 32) + 32) setTarget:*(a1 + 32) action:sel_didTapButton_];
      [*(a1 + 40) addSubview:*(*(a1 + 32) + 32)];

      v11 = *(*(a1 + 32) + 32);
    }

    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);

    [v11 setFrame:{v16, v17, v18, v19}];
  }

  else if (v11)
  {
    [v11 removeFromSuperview];
    v20 = *(a1 + 32);
    v21 = *(v20 + 32);
    *(v20 + 32) = 0;
  }
}

void __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 24))
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(*(a1 + 32) + 40) setAutoresizingMask:0];
    [*(a1 + 40) addSubview:*(*(a1 + 32) + 40)];
    v6 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:4];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    [*(*(a1 + 32) + 24) setAutoresizingMask:0];
    [*(a1 + 40) addSubview:*(*(a1 + 32) + 24)];
    v2 = *(a1 + 32);
  }

  [*(v2 + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v9 = [*(a1 + 32) _backgroundImage];
  [*(*(a1 + 32) + 40) setImage:v9];
  [*(*(a1 + 32) + 24) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

uint64_t __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __51__PXUIPlayButtonTile__updatePlayButtonViewIfNeeded__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)_setBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->__backgroundImage != v5)
  {
    objc_storeStrong(&self->__backgroundImage, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PXUIPlayButtonTile__setBackgroundImage___block_invoke;
    v6[3] = &unk_1E7735028;
    v6[4] = self;
    [(PXUIPlayButtonTile *)self performChanges:v6];
  }
}

- (void)_setAnimatingGeometry:(BOOL)a3
{
  if (self->__animatingGeometry != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->__animatingGeometry = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PXUIPlayButtonTile__setAnimatingGeometry___block_invoke;
    v5[3] = &unk_1E7735028;
    v5[4] = self;
    [(PXUIPlayButtonTile *)self performChanges:v5];
  }
}

- (void)_setAnimationCount:(unint64_t)a3
{
  if (self->__animationCount != a3)
  {
    self->__animationCount = a3;
    [(PXUIPlayButtonTile *)self _setAnimatingGeometry:a3 != 0];
  }
}

- (void)_resetHifiPlayButton
{
  [(PXVideoOverlayButton *)self->_hifiPlayButtonView removeFromSuperview];
  hifiPlayButtonView = self->_hifiPlayButtonView;
  self->_hifiPlayButtonView = 0;

  [(PXUIPlayButtonTile *)self _invalidatePlayButton];
}

- (void)setAllowsBackdropStatisticsSuppression:(BOOL)a3
{
  v3 = a3;
  if (!self->_isPerformingChanges)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:116 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_allowsBackdropStatisticsSuppression != v3)
  {
    self->_allowsBackdropStatisticsSuppression = v3;

    [(PXUIPlayButtonTile *)self _resetHifiPlayButton];
  }
}

- (void)setImageViewportLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_isPerformingChanges)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:106 description:{@"[%@] %@ must be called from a performChanges block.", self, v9}];
  }

  if (x != self->_imageViewportLocation.x || y != self->_imageViewportLocation.y)
  {
    self->_imageViewportLocation.x = x;
    self->_imageViewportLocation.y = y;

    [(PXUIPlayButtonTile *)self _invalidateBackgroundImage];
  }
}

- (void)setImageRequester:(id)a3
{
  v6 = a3;
  if (!self->_isPerformingChanges)
  {
    v11 = v6;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:93 description:{@"[%@] %@ must be called from a performChanges block.", self, v9}];

    v6 = v11;
  }

  imageRequester = self->_imageRequester;
  if (imageRequester != v6)
  {
    v10 = v6;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXUIPlayButtonTile *)self _invalidateBackgroundImage];
    [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:PXImageRequesterObserverContext];
    v6 = v10;
  }
}

- (void)setPlayButtonTitle:(id)a3
{
  v4 = a3;
  playButtonTitle = self->_playButtonTitle;
  if (playButtonTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)playButtonTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_playButtonTitle;
      self->_playButtonTitle = v7;

      [(PXUIPlayButtonTile *)self _invalidatePlayButton];
      v4 = v9;
    }
  }
}

- (void)setPlayButtonStyle:(int64_t)a3
{
  if (!self->_isPerformingChanges)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:74 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_playButtonStyle != a3)
  {
    self->_playButtonStyle = a3;

    [(PXUIPlayButtonTile *)self _invalidatePlayButton];
  }
}

- (void)setPlayButtonSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!self->_isPerformingChanges)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"PXUIPlayButtonTile.m" lineNumber:64 description:{@"[%@] %@ must be called from a performChanges block.", self, v9}];
  }

  if (width != self->_playButtonSize.width || height != self->_playButtonSize.height)
  {
    self->_playButtonSize.width = width;
    self->_playButtonSize.height = height;

    [(PXUIPlayButtonTile *)self _invalidatePlayButton];
  }
}

- (PXUIPlayButtonTile)init
{
  v5.receiver = self;
  v5.super_class = PXUIPlayButtonTile;
  v2 = [(PXUIPlayButtonTile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_playButtonStyle = 0;
    v2->_allowsBackdropStatisticsSuppression = 1;
    [(PXUIPlayButtonTile *)v2 _invalidatePlayButton];
  }

  return v3;
}

+ (CGSize)preferredSize
{
  if (preferredSize_onceToken != -1)
  {
    dispatch_once(&preferredSize_onceToken, &__block_literal_global_64101);
  }

  v2 = *&preferredSize_preferredSize_0;
  v3 = *&preferredSize_preferredSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

uint64_t __35__PXUIPlayButtonTile_preferredSize__block_invoke()
{
  result = [MEMORY[0x1E69DD250] px_videoOverlayButtonSize];
  preferredSize_preferredSize_0 = v1;
  preferredSize_preferredSize_1 = v2;
  return result;
}

@end