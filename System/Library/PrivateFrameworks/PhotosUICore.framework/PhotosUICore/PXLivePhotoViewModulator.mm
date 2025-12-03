@interface PXLivePhotoViewModulator
- (PXLivePhotoViewModulator)init;
- (PXLivePhotoViewModulator)initWithImageModulator:(id)modulator videoModulator:(id)videoModulator;
- (void)_setNeedsUpdate;
- (void)_updateGainMapImage;
- (void)_updateIfNeeded;
- (void)_updateInput;
- (void)basePlayerUIView:(id)view didChange:(unint64_t)change withAnimationDuration:(double)duration;
- (void)dealloc;
- (void)performChanges:(id)changes;
- (void)prepareForReuse;
- (void)setDisplayingVideoComplement:(BOOL)complement;
- (void)setGainMapImage:(CGImage *)image animated:(BOOL)animated;
- (void)setLivePhotoView:(id)view;
- (void)setRevealsGainMapImage:(BOOL)image;
@end

@implementation PXLivePhotoViewModulator

- (void)basePlayerUIView:(id)view didChange:(unint64_t)change withAnimationDuration:(double)duration
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 134218754;
    selfCopy = self;
    v21 = 2112;
    v22 = v10;
    v23 = 2048;
    changeCopy = change;
    v25 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[LivePhotoViewModulator %p] %@ %li %f", buf, 0x2Au);
  }

  if (change)
  {
    livePhotoView = [(PXLivePhotoViewModulator *)self livePhotoView];
    v12 = [livePhotoView isDisplayingPhoto] ^ 1;

    imageModulator = [(PXLivePhotoViewModulator *)self imageModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke;
    v17[3] = &__block_descriptor_41_e40_v16__0___PXMutableImageLayerModulator__8l;
    v18 = v12;
    *&v17[4] = duration;
    [imageModulator performChanges:v17];

    videoModulator = [(PXLivePhotoViewModulator *)self videoModulator];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PXLivePhotoViewModulator_basePlayerUIView_didChange_withAnimationDuration___block_invoke_2;
    v15[3] = &__block_descriptor_41_e40_v16__0___PXMutableImageLayerModulator__8l;
    v16 = v12;
    *&v15[4] = duration;
    [videoModulator performChanges:v15];
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
    imageModulator = [(PXLivePhotoViewModulator *)self imageModulator];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__PXLivePhotoViewModulator__updateGainMapImage__block_invoke;
    v6[3] = &unk_1E7736B58;
    v6[4] = self;
    [imageModulator performChanges:v6];
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
    livePhotoView = [(PXLivePhotoViewModulator *)self livePhotoView];
    customPhotoView = [livePhotoView customPhotoView];
    v9 = customPhotoView;
    if (customPhotoView)
    {
      photoView = customPhotoView;
    }

    else
    {
      photoView = [livePhotoView photoView];
    }

    v11 = photoView;

    videoView = [livePhotoView videoView];
    imageModulator = [(PXLivePhotoViewModulator *)self imageModulator];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__PXLivePhotoViewModulator__updateInput__block_invoke;
    v20[3] = &unk_1E7736B30;
    v21 = v11;
    selfCopy = self;
    v14 = v11;
    [imageModulator performChanges:v20];

    videoModulator = [(PXLivePhotoViewModulator *)self videoModulator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__PXLivePhotoViewModulator__updateInput__block_invoke_2;
    v17[3] = &unk_1E7736B30;
    v18 = videoView;
    selfCopy2 = self;
    v16 = videoView;
    [videoModulator performChanges:v17];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLivePhotoViewModulator.m" lineNumber:159 description:{@"neither insider -performChanges: block, nor performing updates"}];
  }
}

- (void)setRevealsGainMapImage:(BOOL)image
{
  if (self->_revealsGainMapImage != image)
  {
    self->_revealsGainMapImage = image;
    [(PXLivePhotoViewModulator *)self _invalidateInput];
  }
}

- (void)setGainMapImage:(CGImage *)image animated:(BOOL)animated
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    animatedCopy = animated;
    CGImageRelease(gainMapImage);
    self->_gainMapImage = image;
    CGImageRetain(image);
    [(PXLivePhotoViewModulator *)self setAnimateGainMapAppearance:animatedCopy];

    [(PXLivePhotoViewModulator *)self _invalidateGainMapImage];
  }
}

- (void)setDisplayingVideoComplement:(BOOL)complement
{
  if (self->_displayingVideoComplement != complement)
  {
    self->_displayingVideoComplement = complement;
    [(PXLivePhotoViewModulator *)self _invalidateInput];
  }
}

- (void)setLivePhotoView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  livePhotoView = self->_livePhotoView;
  if (livePhotoView != viewCopy)
  {
    [(ISLivePhotoUIView *)livePhotoView unregisterChangeObserver:self];
    objc_storeStrong(&self->_livePhotoView, view);
    [(ISLivePhotoUIView *)viewCopy registerChangeObserver:self];
    if (viewCopy)
    {
      v8 = [(ISLivePhotoUIView *)viewCopy isDisplayingPhoto]^ 1;
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
      selfCopy = self;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = viewCopy;
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

- (void)performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(changes + 2))(changes, self);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLivePhotoViewModulator.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXLivePhotoViewModulator init]"}];

  abort();
}

- (PXLivePhotoViewModulator)initWithImageModulator:(id)modulator videoModulator:(id)videoModulator
{
  modulatorCopy = modulator;
  videoModulatorCopy = videoModulator;
  if (modulatorCopy | videoModulatorCopy)
  {
    v13.receiver = self;
    v13.super_class = PXLivePhotoViewModulator;
    v9 = [(PXLivePhotoViewModulator *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_imageModulator, modulator);
      objc_storeStrong(&v10->_videoModulator, videoModulator);
      v10->_gainMapImage = PXImageCreateBlackPlaceholderImageWithSize();
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end