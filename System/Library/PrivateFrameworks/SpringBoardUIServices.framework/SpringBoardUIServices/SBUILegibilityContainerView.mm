@interface SBUILegibilityContainerView
+ (id)legibilityImageDisposalQueue;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_updateFilters;
- (BOOL)updateOptions:(int64_t)options;
- (SBUILegibilityEngine)legibilityEngine;
- (id)_contentColor;
- (id)_drawView;
- (id)buildDrawView;
- (void)_applyStrength;
- (void)_resetImages;
- (void)_setDrawImage:(id)image;
- (void)applySettingsForLegibilityStyle:(int64_t)style;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setImage:(id)image strengthenedImage:(id)strengthenedImage strength:(double)strength;
- (void)setLegibilityEngine:(id)engine;
- (void)setLegibilitySettings:(id)settings;
- (void)setStrength:(double)strength;
- (void)sizeToFit;
@end

@implementation SBUILegibilityContainerView

+ (id)legibilityImageDisposalQueue
{
  if (legibilityImageDisposalQueue_onceToken != -1)
  {
    +[SBUILegibilityContainerView legibilityImageDisposalQueue];
  }

  v3 = legibilityImageDisposalQueue_disposalQueue;

  return v3;
}

void __59__SBUILegibilityContainerView_legibilityImageDisposalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = BSDispatchQueueCreateWithQualityOfService();
  v1 = legibilityImageDisposalQueue_disposalQueue;
  legibilityImageDisposalQueue_disposalQueue = v0;
}

- (void)dealloc
{
  [(SBUILegibilityContainerView *)self _resetImages];
  v3.receiver = self;
  v3.super_class = SBUILegibilityContainerView;
  [(SBUILegibilityContainerView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBUILegibilityContainerView;
  [(SBUILegibilityContainerView *)&v12 layoutSubviews];
  [(SBUILegibilityContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _drawView = [(SBUILegibilityContainerView *)self _drawView];
  [_drawView setFrame:{v4, v6, v8, v10}];
}

- (void)applySettingsForLegibilityStyle:(int64_t)style
{
  v4 = [SBUILegibilitySettings sharedInstanceForStyle:style];
  [(SBUILegibilityContainerView *)self setLegibilitySettings:v4];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if ((SBUILegibilitySettingsAreEqual(settingsCopy, self->_legibilitySettings) & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    self->_dirty = 1;
    [(SBUILegibilityContainerView *)self _updateFilters];
    [(SBUILegibilityContainerView *)self _applyStrength];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    [(SBUILegibilityContainerView *)self _resetImages];
    objc_storeStrong(&self->_image, image);
    processedImage = self->_processedImage;
    self->_processedImage = 0;

    strengthenedImage = self->_strengthenedImage;
    self->_strengthenedImage = 0;

    self->_strength = 0.0;
    self->_dirty = 1;
    [(SBUILegibilityContainerView *)self _applyStrength];
    [(SBUILegibilityContainerView *)self _updateFilters];
  }
}

- (void)setImage:(id)image strengthenedImage:(id)strengthenedImage strength:(double)strength
{
  imageCopy = image;
  strengthenedImageCopy = strengthenedImage;
  if (![(UIImage *)self->_image isEqual:imageCopy]|| ![(UIImage *)self->_strengthenedImage isEqual:strengthenedImageCopy]|| self->_strength != strength)
  {
    [(SBUILegibilityContainerView *)self _resetImages];
    objc_storeStrong(&self->_image, image);
    processedImage = self->_processedImage;
    self->_processedImage = 0;

    objc_storeStrong(&self->_strengthenedImage, strengthenedImage);
    self->_strength = strength;
    [(SBUILegibilityContainerView *)self _setDrawImage:strengthenedImageCopy];
    [(SBUILegibilityContainerView *)self _updateFilters];
    self->_dirty = 0;
  }
}

- (void)setStrength:(double)strength
{
  if (self->_strength != strength)
  {
    self->_strength = strength;
    self->_dirty = 1;
    [(SBUILegibilityContainerView *)self _applyStrength];
  }
}

- (BOOL)updateOptions:(int64_t)options
{
  options = self->_options;
  if (options != options)
  {
    self->_options = options;
    [(SBUILegibilityContainerView *)self _updateFilters];
    self->_dirty = 1;
    [(SBUILegibilityContainerView *)self _applyStrength];
  }

  return options != options;
}

- (id)_drawView
{
  drawView = self->_drawView;
  if (!drawView)
  {
    buildDrawView = [(SBUILegibilityContainerView *)self buildDrawView];
    v5 = self->_drawView;
    self->_drawView = buildDrawView;

    [(SBUILegibilityContainerView *)self addSubview:self->_drawView];
    drawView = self->_drawView;
  }

  v6 = drawView;

  return v6;
}

- (id)buildDrawView
{
  v2 = objc_opt_new();
  [v2 setContentMode:0];

  return v2;
}

- (void)_setDrawImage:(id)image
{
  imageCopy = image;
  if (![(SBUILegibilityContainerView *)self _usesColorFilters]&& [(SBUILegibilityContainerView *)self _usesSecondaryColor])
  {
    _contentColor = [(SBUILegibilityContainerView *)self _contentColor];
    v5 = [(UIImage *)imageCopy imageWithTintColor:_contentColor];
    processedImage = self->_processedImage;
    self->_processedImage = v5;

    v7 = v5;
    imageCopy = v7;
  }

  _drawView = [(SBUILegibilityContainerView *)self _drawView];
  [_drawView setImage:imageCopy];
  [(SBUILegibilityContainerView *)self bounds];
  [_drawView setFrame:?];
}

- (void)sizeToFit
{
  [(SBUILegibilityContainerView *)self frame];
  v4 = v3;
  v6 = v5;
  [(UIImage *)self->_image size];
  [(SBUILegibilityContainerView *)self setFrame:v4, v6, v7, v8];
  _drawView = [(SBUILegibilityContainerView *)self _drawView];
  [(SBUILegibilityContainerView *)self bounds];
  [_drawView setFrame:?];
}

- (void)_applyStrength
{
  if (!self->_dirty || !self->_image)
  {
    return;
  }

  legibilityEngine = [(SBUILegibilityContainerView *)self legibilityEngine];
  strength = self->_strength;
  v9 = legibilityEngine;
  if (!legibilityEngine && strength == 0.0)
  {
    image = self->_image;
LABEL_9:
    [(SBUILegibilityContainerView *)self _setDrawImage:image];
    goto LABEL_10;
  }

  image = self->_image;
  if (strength <= 0.0)
  {
    goto LABEL_9;
  }

  v6 = [legibilityEngine applyStrength:image toImage:self->_legibilitySettings settings:?];
  strengthenedImage = self->_strengthenedImage;
  self->_strengthenedImage = v6;
  v8 = v6;

  [(SBUILegibilityContainerView *)self _setDrawImage:v8];
  self->_dirty = 0;
LABEL_10:
}

- (void)setLegibilityEngine:(id)engine
{
  obj = engine;
  WeakRetained = objc_loadWeakRetained(&self->_legibilityEngine);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_legibilityEngine, obj);
    self->_dirty = 1;
    [(SBUILegibilityContainerView *)self _applyStrength];
    v5 = obj;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBUILegibilityContainerView;
    v5 = [(SBUILegibilityContainerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)_contentColor
{
  _usesSecondaryColor = [(SBUILegibilityContainerView *)self _usesSecondaryColor];
  legibilitySettings = self->_legibilitySettings;
  if (_usesSecondaryColor)
  {
    [(SBUILegibilitySettings *)legibilitySettings secondaryColor];
  }

  else
  {
    [(SBUILegibilitySettings *)legibilitySettings primaryColor];
  }
  v5 = ;

  return v5;
}

- (BOOL)_updateFilters
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_legibilitySettings)
  {
    selfCopy = self;
    _contentColor = [(SBUILegibilityContainerView *)self _contentColor];
    cGColor = [_contentColor CGColor];
    layer = [(SBUILegibilityContainerView *)selfCopy layer];
    LODWORD(selfCopy) = [(SBUILegibilityContainerView *)selfCopy _usesColorFilters];
    filters = [layer filters];
    v7 = filters;
    if (selfCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__SBUILegibilityContainerView__updateFilters__block_invoke;
      v13[3] = &__block_descriptor_40_e18_B16__0__CAFilter_8l;
      v13[4] = cGColor;
      v8 = [filters bs_firstObjectPassingTest:v13];

      LOBYTE(v9) = v8 == 0;
      if (!v8)
      {
        v10 = *MEMORY[0x1E6979CB0];
        v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
        [v8 setName:v10];
        [v8 setValue:cGColor forKey:@"inputColor"];
        v14[0] = v8;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [layer setFilters:v11];
      }
    }

    else
    {
      v9 = [filters count] != 0;

      [layer setFilters:0];
    }

    [layer setAllowsGroupBlending:0];
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

BOOL __45__SBUILegibilityContainerView__updateFilters__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  if ([v4 isEqualToString:*MEMORY[0x1E6979CB0]])
  {
    v5 = *(a1 + 32);
    v6 = [v3 valueForKey:@"inputColor"];
    v7 = CGColorEqualToColor(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_resetImages
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = self->_image;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = self->_strengthenedImage;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = self->_processedImage;
  image = self->_image;
  self->_image = 0;

  strengthenedImage = self->_strengthenedImage;
  self->_strengthenedImage = 0;

  processedImage = self->_processedImage;
  self->_processedImage = 0;

  if (v21[5] || v15[5] || v9[5])
  {
    legibilityImageDisposalQueue = [objc_opt_class() legibilityImageDisposalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SBUILegibilityContainerView__resetImages__block_invoke;
    block[3] = &unk_1E789E3F0;
    block[4] = &v20;
    block[5] = &v14;
    block[6] = &v8;
    dispatch_async(legibilityImageDisposalQueue, block);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

void __43__SBUILegibilityContainerView__resetImages__block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  v4 = *(*(a1[5] + 8) + 40);
  v5 = *(*(a1[6] + 8) + 40);
  *(v2 + 40) = 0;
  v12 = v5;
  v6 = v4;
  v7 = v3;

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (SBUILegibilityEngine)legibilityEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_legibilityEngine);

  return WeakRetained;
}

@end