@interface PXLivePhotoViewModulator
- (PXLivePhotoViewModulator)init;
- (PXLivePhotoViewModulator)initWithImageModulator:(id)a3 videoModulator:(id)a4;
- (void)_setNeedsUpdate;
- (void)_updateGainMapImage;
- (void)_updateIfNeeded;
- (void)_updateInput;
- (void)basePlayerUIView:(id)a3 didChange:(unint64_t)a4 withAnimationDuration:(double)a5;
- (void)dealloc;
- (void)performChanges:(id)a3;
- (void)prepareForReuse;
- (void)setDisplayingVideoComplement:(BOOL)a3;
- (void)setGainMapImage:(CGImage *)a3 animated:(BOOL)a4;
- (void)setLivePhotoView:(id)a3;
- (void)setRevealsGainMapImage:(BOOL)a3;
@end

@implementation PXLivePhotoViewModulator

- (void)basePlayerUIView:(id)a3 didChange:(unint64_t)a4 withAnimationDuration:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 134218754;
    v20 = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[LivePhotoViewModulator %p] %@ %li %f", buf, 0x2Au);
  }

  if (a4)
  {
    v11 = [(PXLivePhotoViewModulator *)self livePhotoView];
    v12 = [v11 isDisplayingPhoto] ^ 1;

    v13 = [(PXLivePhotoViewModulator *)self imageModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke;
    v17[3] = &__block_descriptor_41_e40_v16__0___PXMutableImageLayerModulator__8l;
    v18 = v12;
    *&v17[4] = a5;
    [v13 performChanges:v17];

    v14 = [(PXLivePhotoViewModulator *)self videoModulator];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke_2;
    v15[3] = &__block_descriptor_41_e40_v16__0___PXMutableImageLayerModulator__8l;
    v16 = v12;
    *&v15[4] = a5;
    [v14 performChanges:v15];
  }
}

void __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setDisplayingVideoComplement:v3];
  [v4 animateChangesWithDuration:*(a1 + 32)];
}

void __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setDisplayingVideoComplement:v3];
  [v4 animateChangesWithDuration:*(a1 + 32)];
}

- (void)_updateGainMapImage
{
  if (self->_needsUpdateFlags.gainMapImage)
  {
    v6[7] = v2;
    v6[8] = v3;
    self->_needsUpdateFlags.gainMapImage = 0;
    v5 = [(PXLivePhotoViewModulator *)self imageModulator];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__PXLivePhotoViewModulator__updateGainMapImage__block_invoke;
    v6[3] = &unk_1E7736B58;
    v6[4] = self;
    [v5 performChanges:v6];
  }
}

void __47__PXLivePhotoViewModulator__updateGainMapImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGainMapImage:objc_msgSend(v3 animated:{"gainMapImage"), objc_msgSend(*(a1 + 32), "animateGainMapAppearance")}];
}

- (void)_updateInput
{
  if (self->_needsUpdateFlags.input)
  {
    v23 = v5;
    v24 = v4;
    v25 = v2;
    v26 = v3;
    self->_needsUpdateFlags.input = 0;
    v7 = [(PXLivePhotoViewModulator *)self livePhotoView];
    v8 = [v7 customPhotoView];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 photoView];
    }

    v11 = v10;

    v12 = [v7 videoView];
    v13 = [(PXLivePhotoViewModulator *)self imageModulator];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__PXLivePhotoViewModulator__updateInput__block_invoke;
    v20[3] = &unk_1E7736B30;
    v21 = v11;
    v22 = self;
    v14 = v11;
    [v13 performChanges:v20];

    v15 = [(PXLivePhotoViewModulator *)self videoModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__PXLivePhotoViewModulator__updateInput__block_invoke_2;
    v17[3] = &unk_1E7736B30;
    v18 = v12;
    v19 = self;
    v16 = v12;
    [v15 performChanges:v17];
  }
}

void __40__PXLivePhotoViewModulator__updateInput__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 layer];
  [v5 setLayer:v4];

  [*(a1 + 40) gainMapValue];
  [v5 setGainMapValue:?];
  [v5 setRevealsGainMapImage:{objc_msgSend(*(a1 + 40), "revealsGainMapImage")}];
  [v5 setDisplayingVideoComplement:{objc_msgSend(*(a1 + 40), "displayingVideoComplement")}];
}

void __40__PXLivePhotoViewModulator__updateInput__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 layer];
  [v5 setLayer:v4];

  [v5 setDisplayingVideoComplement:{objc_msgSend(*(a1 + 40), "displayingVideoComplement")}];
}

- (void)_updateIfNeeded
{
  if ([(PXLivePhotoViewModulator *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXLivePhotoViewModulator *)self _updateInput];
    [(PXLivePhotoViewModulator *)self _updateGainMapImage];
    [(PXLivePhotoViewModulator *)self setAnimateGainMapAppearance:0];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXLivePhotoViewModulator.m" lineNumber:159 description:{@"neither insider -performChanges: block, nor performing updates"}];
  }
}

- (void)setRevealsGainMapImage:(BOOL)a3
{
  if (self->_revealsGainMapImage != a3)
  {
    self->_revealsGainMapImage = a3;
    [(PXLivePhotoViewModulator *)self _invalidateInput];
  }
}

- (void)setGainMapImage:(CGImage *)a3 animated:(BOOL)a4
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    v6 = a4;
    CGImageRelease(gainMapImage);
    self->_gainMapImage = a3;
    CGImageRetain(a3);
    [(PXLivePhotoViewModulator *)self setAnimateGainMapAppearance:v6];

    [(PXLivePhotoViewModulator *)self _invalidateGainMapImage];
  }
}

- (void)setDisplayingVideoComplement:(BOOL)a3
{
  if (self->_displayingVideoComplement != a3)
  {
    self->_displayingVideoComplement = a3;
    [(PXLivePhotoViewModulator *)self _invalidateInput];
  }
}

- (void)setLivePhotoView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  livePhotoView = self->_livePhotoView;
  if (livePhotoView != v6)
  {
    [(ISLivePhotoUIView *)livePhotoView unregisterChangeObserver:self];
    objc_storeStrong(&self->_livePhotoView, a3);
    [(ISLivePhotoUIView *)v6 registerChangeObserver:self];
    if (v6)
    {
      v8 = [(ISLivePhotoUIView *)v6 isDisplayingPhoto]^ 1;
    }

    else
    {
      v8 = 0;
    }

    [(PXLivePhotoViewModulator *)self setDisplayingVideoComplement:v8];
    [(PXLivePhotoViewModulator *)self _invalidateInput];
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      v11 = 134218498;
      v12 = self;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[LivePhotoViewModulator %p] %@ %@", &v11, 0x20u);
    }
  }
}

- (void)prepareForReuse
{
  [(PXLivePhotoViewModulator *)self setLivePhotoView:0];
  [(PXLivePhotoViewModulator *)self setGainMapImage:0];

  [(PXLivePhotoViewModulator *)self setGainMapValue:0.0];
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, self);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXLivePhotoViewModulator *)self _updateIfNeeded];
  }
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = PXLivePhotoViewModulator;
  [(PXLivePhotoViewModulator *)&v3 dealloc];
}

- (PXLivePhotoViewModulator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLivePhotoViewModulator.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXLivePhotoViewModulator init]"}];

  abort();
}

- (PXLivePhotoViewModulator)initWithImageModulator:(id)a3 videoModulator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v13.receiver = self;
    v13.super_class = PXLivePhotoViewModulator;
    v9 = [(PXLivePhotoViewModulator *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_imageModulator, a3);
      objc_storeStrong(&v10->_videoModulator, a4);
      v10->_gainMapImage = PXImageCreateBlackPlaceholderImageWithSize();
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end