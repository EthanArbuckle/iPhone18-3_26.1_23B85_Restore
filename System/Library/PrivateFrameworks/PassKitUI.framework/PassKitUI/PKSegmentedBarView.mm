@interface PKSegmentedBarView
- (PKSegmentedBarView)initWithFrame:(CGRect)frame;
- (void)_callCompletion;
- (void)_generateImageForConfiguration:(id)configuration barLength:(double)length maximumLength:(double)maximumLength synchronous:(BOOL)synchronous;
- (void)_updateImageWithImage:(id)image;
- (void)_updatePlaceholder;
- (void)configureWithBarConfiguration:(id)configuration axis:(unsigned int)axis maximumLength:(double)length barLength:(double)barLength synchronous:(BOOL)synchronous completion:(id)completion;
- (void)layoutSubviews;
- (void)setBlurDisabled:(BOOL)disabled;
- (void)setPlaceholderColor:(id)color;
- (void)setRoundBaselineCorners:(BOOL)corners;
- (void)setShowPlaceholder:(BOOL)placeholder;
- (void)setUseSmallCornerRadius:(BOOL)radius;
@end

@implementation PKSegmentedBarView

- (PKSegmentedBarView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = PKSegmentedBarView;
  v3 = [(PKSegmentedBarView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    bar = v3->_bar;
    v3->_bar = v4;

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    placeholder = v3->_placeholder;
    v3->_placeholder = v7;

    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    placeholderColor = v3->_placeholderColor;
    v3->_placeholderColor = quaternarySystemFillColor;

    layer = [(UIImageView *)v3->_bar layer];
    __36__PKSegmentedBarView_initWithFrame___block_invoke(layer);

    layer2 = [(UIView *)v3->_placeholder layer];
    __36__PKSegmentedBarView_initWithFrame___block_invoke(layer2);

    [(PKSegmentedBarView *)v3 addSubview:v3->_placeholder];
    [(PKSegmentedBarView *)v3 addSubview:v3->_bar];
    [(PKSegmentedBarView *)v3 _updatePlaceholder];
  }

  return v3;
}

void __36__PKSegmentedBarView_initWithFrame___block_invoke(void *a1)
{
  v1 = a1;
  [v1 setMasksToBounds:1];
  [v1 setCornerCurve:*MEMORY[0x1E69796E8]];
}

- (void)configureWithBarConfiguration:(id)configuration axis:(unsigned int)axis maximumLength:(double)length barLength:(double)barLength synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  configurationCopy = configuration;
  completionCopy = completion;
  if (completionCopy)
  {
    v16 = self->_configuration;
    objc_storeStrong(&self->_configuration, configuration);
    axis = self->_axis;
    self->_axis = axis;
    barLength = self->_barLength;
    self->_barLength = barLength;
    maximumLength = self->_maximumLength;
    self->_maximumLength = length;
    if (PKEqualObjects() && self->_image && self->_barLength == barLength && self->_maximumLength == maximumLength && self->_axis == axis)
    {
      completionCopy[2](completionCopy);
    }

    else
    {
      atomic_fetch_add(&self->_generationCounter, 1uLL);
      [(PKSegmentedBarView *)self _updateImageWithImage:0];
      imageCompletion = self->_imageCompletion;
      if (imageCompletion)
      {
        imageCompletion[2]();
      }

      v21 = [completionCopy copy];
      v22 = self->_imageCompletion;
      self->_imageCompletion = v21;

      [(PKSegmentedBarView *)self _generateImageForConfiguration:self->_configuration barLength:synchronousCopy maximumLength:barLength synchronous:length];
      [(PKSegmentedBarView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKSegmentedBarView;
  [(PKSegmentedBarView *)&v20 layoutSubviews];
  [(PKSegmentedBarView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_placeholder setFrame:?];
  [(PKSegmentedBarView *)self _updatePlaceholder];
  v11.n128_u64[0] = *&self->_barLength;
  PKFloatFloorToPixel(v11, v12);
  axis = self->_axis;
  if (axis)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (axis)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (axis)
  {
    v17 = v13;
  }

  else
  {
    v17 = v15;
  }

  v18 = v6 + v10 - v13;
  if (axis)
  {
    v19 = v18;
  }

  else
  {
    v19 = v6;
  }

  [(UIImageView *)self->_bar setFrame:v4, v19, v16, v17];
}

- (void)_updateImageWithImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_image, image);
  image = [(UIImageView *)self->_bar image];
  image = self->_image;

  if (image != image)
  {
    [(UIImageView *)self->_bar setImage:self->_image];
  }
}

- (void)_callCompletion
{
  imageCompletion = self->_imageCompletion;
  if (imageCompletion)
  {
    v5 = _Block_copy(imageCompletion);
    v4 = self->_imageCompletion;
    self->_imageCompletion = 0;

    v5[2]();
  }
}

- (void)_generateImageForConfiguration:(id)configuration barLength:(double)length maximumLength:(double)maximumLength synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  configurationCopy = configuration;
  v11 = configurationCopy;
  if (length <= 0.0)
  {
    [configurationCopy totalValue];
LABEL_7:
    [(PKSegmentedBarView *)self _updateImageWithImage:0];
    [(PKSegmentedBarView *)self _callCompletion];
    goto LABEL_12;
  }

  isReady = [configurationCopy isReady];
  [v11 totalValue];
  if (!isReady || v13 <= 0.0)
  {
    goto LABEL_7;
  }

  traitCollection = [(PKSegmentedBarView *)self traitCollection];
  axis = self->_axis;
  v16 = !self->_blurDisabled;
  if (synchronousCopy)
  {
    BarImage = PKSegmentedBarCreateBarImage(v11, traitCollection, self->_axis, v16, length, maximumLength);
    [(PKSegmentedBarView *)self _updateImageWithImage:BarImage];
    [(PKSegmentedBarView *)self _callCompletion];
  }

  else
  {
    v18 = v16;
    v19 = atomic_load(&self->_generationCounter);
    objc_initWeak(&location, self);
    if (qword_1EBDAAC38 != -1)
    {
      dispatch_once(&qword_1EBDAAC38, &__block_literal_global_100_0);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PKSegmentedBarView__generateImageForConfiguration_barLength_maximumLength_synchronous___block_invoke;
    v21[3] = &unk_1E80234B8;
    v20 = _MergedGlobals_2_2;
    objc_copyWeak(v24, &location);
    v24[1] = v19;
    v22 = v11;
    v23 = traitCollection;
    v25 = axis;
    v24[2] = *&length;
    v24[3] = *&maximumLength;
    v26 = v18;
    dispatch_async(v20, v21);

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

LABEL_12:
}

void __89__PKSegmentedBarView__generateImageForConfiguration_barLength_maximumLength_synchronous___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = atomic_load(WeakRetained + 59);
    if (v4 == *(a1 + 56))
    {
      BarImage = PKSegmentedBarCreateBarImage(*(a1 + 32), *(a1 + 40), *(a1 + 80), *(a1 + 84), *(a1 + 64), *(a1 + 72));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__PKSegmentedBarView__generateImageForConfiguration_barLength_maximumLength_synchronous___block_invoke_2;
      block[3] = &unk_1E8011408;
      objc_copyWeak(v9, (a1 + 48));
      v9[1] = *(a1 + 56);
      v8 = BarImage;
      v6 = BarImage;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(v9);
    }
  }
}

void __89__PKSegmentedBarView__generateImageForConfiguration_barLength_maximumLength_synchronous___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = atomic_load(WeakRetained + 59);
    if (v3 == *(a1 + 48))
    {
      v4 = WeakRetained;
      [WeakRetained _updateImageWithImage:*(a1 + 32)];
      [v4 _callCompletion];
      WeakRetained = v4;
    }
  }
}

- (void)setShowPlaceholder:(BOOL)placeholder
{
  if (self->_showPlaceholder == !placeholder)
  {
    self->_showPlaceholder = placeholder;
    [(PKSegmentedBarView *)self setNeedsLayout];
  }
}

- (void)setRoundBaselineCorners:(BOOL)corners
{
  if (self->_roundBaselineCorners == !corners)
  {
    self->_roundBaselineCorners = corners;
    [(PKSegmentedBarView *)self setNeedsLayout];
  }
}

- (void)setUseSmallCornerRadius:(BOOL)radius
{
  if (self->_useSmallCornerRadius == !radius)
  {
    self->_useSmallCornerRadius = radius;
    [(PKSegmentedBarView *)self setNeedsLayout];
  }
}

- (void)setBlurDisabled:(BOOL)disabled
{
  if (self->_blurDisabled == !disabled)
  {
    self->_blurDisabled = disabled;
    image = self->_image;
    self->_image = 0;

    atomic_fetch_add(&self->_generationCounter, 1uLL);

    [(PKSegmentedBarView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_placeholderColor, color);
    [(PKSegmentedBarView *)self _updatePlaceholder];
  }
}

- (void)_updatePlaceholder
{
  [(UIView *)self->_placeholder setBackgroundColor:self->_placeholderColor];
  useSmallCornerRadius = self->_useSmallCornerRadius;
  v4 = 4.0;
  v5 = 2.0;
  if (!self->_useSmallCornerRadius)
  {
    v5 = 4.0;
  }

  self->_minimumLength = v5;
  v6 = 3;
  if (!self->_axis)
  {
    v6 = 10;
  }

  if (self->_roundBaselineCorners)
  {
    if (!useSmallCornerRadius)
    {
      v4 = 8.0;
    }

    self->_minimumLength = v4;
    v6 = 15;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__PKSegmentedBarView__updatePlaceholder__block_invoke;
  v10[3] = &__block_descriptor_48_e17_v16__0__CALayer_8l;
  v10[4] = v6;
  *&v10[5] = v5;
  v7 = _Block_copy(v10);
  layer = [(UIImageView *)self->_bar layer];
  v7[2](v7, layer);

  layer2 = [(UIView *)self->_placeholder layer];
  v7[2](v7, layer2);

  [(UIView *)self->_placeholder setHidden:!self->_showPlaceholder];
}

void __40__PKSegmentedBarView__updatePlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setMaskedCorners:v3];
  [v4 setCornerRadius:*(a1 + 40)];
}

@end