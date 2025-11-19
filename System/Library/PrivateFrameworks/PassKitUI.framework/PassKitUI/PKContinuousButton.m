@interface PKContinuousButton
+ (id)_filterInputColorForEffect:(int64_t)a3;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (PKContinuousButton)initWithConfiguration:(id *)a3;
- (PKContinuousButton)initWithCornerRadius:(double)a3 effect:(int64_t)a4;
- (PKContinuousButton)initWithFrame:(CGRect)a3;
- (void)_createHighlightFilterIfNecessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateBackdropSettings;
- (void)_updateColor;
- (void)_updateFilter;
- (void)_updateTitleColor;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBlurDisabled:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImageEnabled:(BOOL)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
- (void)setShowSpinner:(BOOL)a3;
- (void)tintColorDidChange;
- (void)updateActivityIndicatorColorWithColor:(id)a3;
- (void)updateBackgroundColorWithColor:(id)a3;
- (void)updateImageView;
- (void)updateTitleColorWithColor:(id)a3;
- (void)updateWithImage:(id)a3;
@end

@implementation PKContinuousButton

+ (id)_filterInputColorForEffect:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = MEMORY[0x1E69DC888];
      v4 = 1.0;
      v5 = 0.5;
LABEL_8:
      v6 = [v3 colorWithWhite:v4 alpha:v5];
      if (v6)
      {
        goto LABEL_10;
      }

      break;
    case 1:
      v3 = MEMORY[0x1E69DC888];
      v4 = 0.6;
      goto LABEL_6;
    case 0:
      v3 = MEMORY[0x1E69DC888];
      v4 = 1.0;
LABEL_6:
      v5 = 1.0;
      goto LABEL_8;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
LABEL_10:

  return v6;
}

- (PKContinuousButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PKContinuousButton *)self initWithCornerRadius:1 effect:0.0];
  v8 = v7;
  if (v7)
  {
    [(PKContinuousButton *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (PKContinuousButton)initWithCornerRadius:(double)a3 effect:(int64_t)a4
{
  v5 = a3;
  v6 = xmmword_1BE0B69E0;
  v7 = a4;
  v8 = a4;
  return [(PKContinuousButton *)self initWithConfiguration:&v5];
}

- (PKContinuousButton)initWithConfiguration:(id *)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKContinuousButton;
  v4 = [(PKContinuousButton *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(PKContinuousButton *)v4 setOpaque:0];
    [(PKContinuousButton *)v5 setExclusiveTouch:1];
    [(PKContinuousButton *)v5 setTintAdjustmentMode:1];
    [(PKContinuousButton *)v5 _setWantsAccessibilityUnderline:0];
    var4 = a3->var4;
    v7 = *&a3->var2;
    *&v5->_configuration.cornerRadius = *&a3->var0;
    *&v5->_configuration.style = v7;
    v5->_configuration.disabledEffect = var4;
    v5->_configuration.cornerRadius = fmax(v5->_configuration.cornerRadius, 0.0);
    if (v5->_configuration.style == 3)
    {
      v5->_backdropStyle = 2020;
      v8 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v5->_backdropStyle];
      backdropView = v5->_backdropView;
      v5->_backdropView = v8;

      [(_UIBackdropView *)v5->_backdropView setUserInteractionEnabled:0];
      v10 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      [(PKContinuousButton *)v5 setBackgroundImage:v10 forState:0];

      [(PKContinuousButton *)v5 layoutIfNeeded];
      v11 = [(PKContinuousButton *)v5 _backgroundView];
      [v11 addSubview:v5->_backdropView];

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:v5 selector:sel__accessibilitySettingsDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    }

    if (!v5->_configuration.disabledEffect)
    {
      v5->_configuration.disabledEffect = v5->_configuration.highlightEffect;
    }

    v13 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    normalInputColor = v5->_normalInputColor;
    v5->_normalInputColor = v13;

    v15 = [PKContinuousButton _filterInputColorForEffect:v5->_configuration.highlightEffect];
    highlightInputColor = v5->_highlightInputColor;
    v5->_highlightInputColor = v15;

    v17 = [PKContinuousButton _filterInputColorForEffect:v5->_configuration.disabledEffect];
    disabledInputColor = v5->_disabledInputColor;
    v5->_disabledInputColor = v17;

    v19 = [MEMORY[0x1E69DC888] systemWhiteColor];
    activityIndicatorColor = v5->_activityIndicatorColor;
    v5->_activityIndicatorColor = v19;

    v21 = [(PKContinuousButton *)v5 layer];
    layer = v5->_layer;
    v5->_layer = v21;

    [(CAShapeLayer *)v5->_layer setLineWidth:1.0];
    [(CAShapeLayer *)v5->_layer setMasksToBounds:1];
    v5->_enabled = 1;
    v5->_highlighted = 0;
    v5->_selected = 0;
    v27[0] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v24 = [(PKContinuousButton *)v5 registerForTraitChanges:v23 withHandler:&__block_literal_global_217];

    [(PKContinuousButton *)v5 _updateColor];
  }

  return v5;
}

uint64_t __44__PKContinuousButton_initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  if (a2[98])
  {
    return [a2 updateImageView];
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v4 dealloc];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKContinuousButton;
    v5 = [(PKContinuousButton *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v3 tintColorDidChange];
  [(PKContinuousButton *)self _updateColor];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKContinuousButton *)self _updateColor];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v27 layoutSubviews];
  [(PKContinuousButton *)self bounds];
  v6 = v5;
  v8 = v7;
  if (v3 == self->_boundsSize.width && v4 == self->_boundsSize.height)
  {
    goto LABEL_18;
  }

  v10 = v3;
  v11 = v4;
  self->_boundsSize.width = v3;
  self->_boundsSize.height = v4;
  [(CAShapeLayer *)self->_layer lineWidth];
  v13 = v12 * 0.5;
  p_configuration = &self->_configuration;
  shape = self->_configuration.shape;
  switch(shape)
  {
    case 2:
      v16 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:v6 + v13 cornerRadius:{v8 + v13, v10 - (v13 + v13), v11 - (v13 + v13), v11 * 0.5}];
      [(CAShapeLayer *)self->_layer setCornerCurve:*MEMORY[0x1E69796E8]];
      layer = self->_layer;
      cornerRadius = v11 * 0.5;
      goto LABEL_12;
    case 1:
      v16 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:v6 + v13 cornerRadius:{v8 + v13, v10 - (v13 + v13), v11 - (v13 + v13), p_configuration->cornerRadius}];
      [(CAShapeLayer *)self->_layer setCornerCurve:*MEMORY[0x1E69796E8]];
      layer = self->_layer;
      cornerRadius = p_configuration->cornerRadius;
      goto LABEL_12;
    case 0:
      v16 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v6 + v13, v8 + v13, v10 - (v13 + v13), v11 - (v13 + v13)}];
      [(CAShapeLayer *)self->_layer setCornerCurve:*MEMORY[0x1E69796E0]];
      layer = self->_layer;
      cornerRadius = fmin(v10, v11) * 0.5;
LABEL_12:
      [(CAShapeLayer *)layer setCornerRadius:cornerRadius];
      goto LABEL_14;
  }

  v16 = 0;
LABEL_14:
  backdropView = self->_backdropView;
  if (backdropView)
  {
    v20 = [(_UIBackdropView *)backdropView superview];

    if (!v20)
    {
      v21 = [(PKContinuousButton *)self _backgroundView];
      [v21 addSubview:self->_backdropView];
    }
  }

  -[CAShapeLayer setPath:](self->_layer, "setPath:", [v16 CGPath]);

LABEL_18:
  v22 = self->_backdropView;
  if (v22)
  {
    v23 = [(PKContinuousButton *)self _backgroundView];
    [v23 bounds];
    [(_UIBackdropView *)v22 setFrame:?];
  }

  v24 = [(UIActivityIndicatorView *)self->_activityIndicatorView superview];

  if (v24)
  {
    activityIndicatorView = self->_activityIndicatorView;
    v26 = [(PKContinuousButton *)self titleLabel];
    [v26 center];
    [(UIActivityIndicatorView *)activityIndicatorView setCenter:?];
  }
}

- (void)updateBackgroundColorWithColor:(id)a3
{
  v4 = [a3 copy];
  overrideBackgroundColor = self->_overrideBackgroundColor;
  self->_overrideBackgroundColor = v4;

  [(PKContinuousButton *)self _updateColor];
}

- (void)updateTitleColorWithColor:(id)a3
{
  v4 = [a3 copy];
  overrideTitleColor = self->_overrideTitleColor;
  self->_overrideTitleColor = v4;

  [(PKContinuousButton *)self _updateTitleColor];
}

- (void)updateActivityIndicatorColorWithColor:(id)a3
{
  v6 = a3;
  if (self->_activityIndicatorColor != v6)
  {
    objc_storeStrong(&self->_activityIndicatorColor, a3);
    activityIndicatorView = self->_activityIndicatorView;
    if (activityIndicatorView)
    {
      [(UIActivityIndicatorView *)activityIndicatorView setColor:self->_activityIndicatorColor];
    }
  }
}

- (void)updateWithImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);

  [(PKContinuousButton *)self updateImageView];
}

- (void)setImageEnabled:(BOOL)a3 forState:(unint64_t)a4
{
  disabledImageStates = self->_disabledImageStates;
  if (a3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableSet *)disabledImageStates removeObject:v7];
  }

  else
  {
    if (!disabledImageStates)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_disabledImageStates;
      self->_disabledImageStates = v8;

      disabledImageStates = self->_disabledImageStates;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableSet *)disabledImageStates addObject:v7];
  }

  if (self->_image)
  {

    [(PKContinuousButton *)self updateImageView];
  }
}

- (void)updateImageView
{
  [(PKContinuousButton *)self setAdjustsImageWhenHighlighted:0];
  [(PKContinuousButton *)self setAdjustsImageWhenDisabled:0];
  v3 = [(PKContinuousButton *)self traitCollection];
  v4 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__PKContinuousButton_updateImageView__block_invoke;
  aBlock[3] = &unk_1E8022208;
  aBlock[4] = self;
  v5 = v4;
  v34 = v5;
  v6 = _Block_copy(aBlock);
  v7 = self->_image;
  v6[2](v6, v7, 0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__54;
  v31 = __Block_byref_object_dispose__54;
  v8 = v7;
  v9 = v8;
  v32 = v8;
  p_configuration = &self->_configuration;
  v11 = v8;
  if (self->_configuration.highlightEffect == 2)
  {
    v11 = v8;
    if ((self->_configuration.style - 1) <= 1)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __37__PKContinuousButton_updateImageView__block_invoke_43;
      v24[3] = &unk_1E8014BD0;
      v26 = &v27;
      v25 = v8;
      PKUIPerformWithEffectiveTraitCollection(v3, v24);

      v11 = v28[5];
    }
  }

  v6[2](v6, v11, 4);
  v6[2](v6, v28[5], 1);
  v6[2](v6, v28[5], 5);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__54;
  v22 = __Block_byref_object_dispose__54;
  v12 = v28[5];
  v23 = v12;
  if (self->_configuration.disabledEffect != self->_configuration.highlightEffect)
  {
    v13 = v12;
    v14 = v9;
    v23 = v14;

    if (p_configuration->disabledEffect == 2 && (p_configuration->style - 1) <= 1)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __37__PKContinuousButton_updateImageView__block_invoke_2;
      v15[3] = &unk_1E8014BD0;
      v17 = &v18;
      v16 = v14;
      PKUIPerformWithEffectiveTraitCollection(v3, v15);
    }
  }

  v6[2](v6, v19[5], 2);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v27, 8);
}

void __37__PKContinuousButton_updateImageView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[99];
  if (v5)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = a2;
    v11 = [v7 numberWithUnsignedInteger:a3];
    v9 = [v5 containsObject:?];
    v10 = v8;
    if (v9)
    {
      v10 = *(a1 + 40);
    }

    [v4 setImage:v10 forState:a3];
  }

  else
  {
    v11 = a2;
    [v4 setImage:v11 forState:a3];
  }
}

void __37__PKContinuousButton_updateImageView__block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_imageWithAlpha:0.5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __37__PKContinuousButton_updateImageView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pkui_imageWithAlpha:0.5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setBlurDisabled:(BOOL)a3
{
  if (self->_configuration.style == 3 && self->_blurDisabled != a3)
  {
    self->_blurDisabled = a3;
    [(PKContinuousButton *)self _updateBackdropSettings];
  }
}

- (void)_updateBackdropSettings
{
  blurDisabled = self->_blurDisabled;
  v4 = MEMORY[0x1E69DD378];
  v5 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:self->_backdropStyle];
  if (blurDisabled)
  {
    v7 = v5;
    v6 = [v4 pkui_createTransparentSettingsFromSettings:v5];

    v5 = v6;
  }

  v8 = v5;
  [(_UIBackdropView *)self->_backdropView transitionToSettings:v5];
}

- (void)_updateColor
{
  v3 = [(PKContinuousButton *)self tintColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v6 = v5;

  v7 = [(PKContinuousButton *)self traitCollection];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __34__PKContinuousButton__updateColor__block_invoke;
  v12 = &unk_1E8010A10;
  v13 = self;
  v14 = v6;
  v8 = v6;
  PKUIPerformWithEffectiveTraitCollection(v7, &v9);

  [(PKContinuousButton *)self _updateTitleColor:v9];
}

void __34__PKContinuousButton__updateColor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 760);
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = CGColorRetain([*(a1 + 40) CGColor]);
      [*(*(a1 + 32) + 864) setStrokeColor:v5];
      v7 = *(*(a1 + 32) + 864);
      v8 = 0;
      goto LABEL_15;
    }

    if (v3 != 1)
    {
      return;
    }

    v5 = CGColorRetain([*(v2 + 800) CGColor]);
    if (!v5)
    {
      v6 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      v5 = CGColorRetain([v6 CGColor]);
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3 || v3 == 4)
      {
        [*(v2 + 864) setStrokeColor:0];
        v4 = *(*(a1 + 32) + 864);

        [v4 setFillColor:0];
      }

      return;
    }

    v5 = CGColorRetain([*(a1 + 40) CGColor]);
  }

  [*(*(a1 + 32) + 864) setStrokeColor:v5];
  v7 = *(*(a1 + 32) + 864);
  v8 = v5;
LABEL_15:
  [v7 setFillColor:v8];

  CGColorRelease(v5);
}

- (void)_updateTitleColor
{
  overrideTitleColor = self->_overrideTitleColor;
  if (overrideTitleColor)
  {
    v4 = overrideTitleColor;
    goto LABEL_16;
  }

  style = self->_configuration.style;
  if (style > 2)
  {
    if (style == 3)
    {
      v6 = [MEMORY[0x1E69DC888] labelColor];
LABEL_11:
      v4 = v6;
      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (style != 4)
    {
      goto LABEL_12;
    }

LABEL_9:
    v6 = [(PKContinuousButton *)self tintColor];
    goto LABEL_11;
  }

  if (style < 2)
  {
    goto LABEL_9;
  }

  if (style == 2)
  {
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_11;
  }

LABEL_12:
  v7 = [(PKContinuousButton *)self tintColor];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v4 = v9;

LABEL_16:
  v12 = v4;
  [(PKContinuousButton *)self setTitleColor:v12 forState:0];
  v10 = v12;
  if (self->_configuration.highlightEffect == 2)
  {
    v10 = v12;
    if ((self->_configuration.style - 1) <= 1)
    {
      v10 = [(UIColor *)v12 colorWithAlphaComponent:0.5];
    }
  }

  [(PKContinuousButton *)self setTitleColor:v10 forState:4];
  [(PKContinuousButton *)self setTitleColor:v10 forState:1];
  [(PKContinuousButton *)self setTitleColor:v10 forState:5];
  if (self->_configuration.disabledEffect != self->_configuration.highlightEffect)
  {
    v11 = v12;

    if (self->_configuration.disabledEffect == 2 && (self->_configuration.style - 1) <= 1)
    {
      v10 = [(UIColor *)v11 colorWithAlphaComponent:0.5];
    }

    else
    {
      v10 = v11;
    }
  }

  [(PKContinuousButton *)self setTitleColor:v10 forState:2];
}

- (void)_createHighlightFilterIfNecessary
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    v3 = objc_alloc(MEMORY[0x1E6979378]);
    v4 = [v3 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v4;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    [(CAFilter *)self->_highlightFilter setValue:[(UIColor *)self->_normalInputColor CGColor] forKey:@"inputColor"];
    layer = self->_layer;
    v8[0] = self->_highlightFilter;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(CAShapeLayer *)layer setFilters:v7];

    objc_storeStrong(&self->_appliedInputColor, self->_normalInputColor);
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v5 setEnabled:?];
  if (self->_enabled != v3)
  {
    self->_enabled = v3;
    [(PKContinuousButton *)self _updateFilter];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v5 setHighlighted:?];
  if (self->_highlighted != v3)
  {
    self->_highlighted = v3;
    [(PKContinuousButton *)self _updateFilter];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKContinuousButton;
  [(PKContinuousButton *)&v5 setSelected:?];
  if (self->_selected != v3)
  {
    self->_selected = v3;
    [(PKContinuousButton *)self _updateFilter];
  }
}

- (void)_updateFilter
{
  [(PKContinuousButton *)self _createHighlightFilterIfNecessary];
  v3 = &OBJC_IVAR___PKContinuousButton__disabledInputColor;
  if (self->_enabled)
  {
    v3 = &OBJC_IVAR___PKContinuousButton__highlightInputColor;
    if (!self->_highlighted)
    {
      v4 = 3;
      if (self->_selected)
      {
        v4 = 4;
      }

      v3 = &OBJC_IVAR___PKContinuousButton__configuration[v4];
    }
  }

  v5 = *(&self->super.super.super.super.super.isa + *v3);
  v14 = v5;
  if (([(UIColor *)self->_appliedInputColor isEqual:?]& 1) == 0)
  {
    v6 = MEMORY[0x1E69DC888];
    v7 = [(CAShapeLayer *)self->_layer presentationLayer];
    v8 = [v7 valueForKeyPath:@"filters.highlightFilter.inputColor"];
    if (!v8)
    {
      v8 = [(UIColor *)self->_appliedInputColor CGColor];
    }

    v9 = [v6 colorWithCGColor:v8];

    layer = self->_layer;
    v11 = v14;
    -[CAShapeLayer setValue:forKeyPath:](layer, "setValue:forKeyPath:", [v14 CGColor], @"filters.highlightFilter.inputColor");
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
    [v12 setAdditive:0];
    [v12 setDuration:0.15];
    [v12 setFromValue:{objc_msgSend(v9, "CGColor")}];
    v13 = v14;
    [v12 setToValue:{objc_msgSend(v14, "CGColor")}];
    [(CAShapeLayer *)self->_layer removeAnimationForKey:@"highlight"];
    [(CAShapeLayer *)self->_layer addAnimation:v12 forKey:@"highlight"];
    objc_storeStrong(&self->_appliedInputColor, v5);
  }
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner == a3)
  {
    return;
  }

  self->_showSpinner = a3;
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v6 = self->_activityIndicatorView;
    self->_activityIndicatorView = v5;

    activityIndicatorView = self->_activityIndicatorView;
    if (self->_activityIndicatorColor)
    {
      [(UIActivityIndicatorView *)activityIndicatorView setColor:?];
      activityIndicatorView = self->_activityIndicatorView;
    }
  }

  if (!self->_showSpinner)
  {
    goto LABEL_10;
  }

  v7 = [(UIActivityIndicatorView *)activityIndicatorView superview];

  if (v7)
  {
    if (self->_showSpinner)
    {
      return;
    }

    activityIndicatorView = self->_activityIndicatorView;
LABEL_10:
    v8 = [(UIActivityIndicatorView *)activityIndicatorView superview];

    if (!v8)
    {
      return;
    }

    [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
    [(UIActivityIndicatorView *)self->_activityIndicatorView removeFromSuperview];
    v9 = 1.0;
    goto LABEL_13;
  }

  [(PKContinuousButton *)self addSubview:self->_activityIndicatorView];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  v9 = 0.0;
LABEL_13:
  v10 = [(PKContinuousButton *)self titleLabel];
  [v10 setAlpha:v9];

  v11 = [(PKContinuousButton *)self _imageView];
  [v11 setAlpha:v9];

  [(PKContinuousButton *)self setNeedsLayout];
}

@end