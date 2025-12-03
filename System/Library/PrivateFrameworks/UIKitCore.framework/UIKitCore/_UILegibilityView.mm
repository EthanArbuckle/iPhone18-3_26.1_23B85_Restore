@interface _UILegibilityView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UILegibilityView)initWithSettings:(id)settings strength:(double)strength image:(id)image shadowImage:(id)shadowImage options:(int64_t)options;
- (_UILegibilityView)initWithStyle:(int64_t)style image:(id)image shadowImage:(id)shadowImage;
- (id)drawingColor;
- (int64_t)style;
- (void)_updateFilters;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHidesImage:(BOOL)image;
- (void)setImage:(id)image;
- (void)setImage:(id)image shadowImage:(id)shadowImage;
- (void)setSettings:(id)settings image:(id)image shadowImage:(id)shadowImage;
- (void)setStyle:(int64_t)style image:(id)image shadowImage:(id)shadowImage;
- (void)updateForChangedSettings:(id)settings;
@end

@implementation _UILegibilityView

- (_UILegibilityView)initWithStyle:(int64_t)style image:(id)image shadowImage:(id)shadowImage
{
  shadowImage = [_UILegibilitySettings sharedInstanceForStyle:style, image, shadowImage];

  return [(_UILegibilityView *)self initWithSettings:shadowImage strength:image image:0 shadowImage:0 options:1.5];
}

- (_UILegibilityView)initWithSettings:(id)settings strength:(double)strength image:(id)image shadowImage:(id)shadowImage options:(int64_t)options
{
  [image size];
  v14 = v13;
  [image size];
  v19.receiver = self;
  v19.super_class = _UILegibilityView;
  v16 = [(UIView *)&v19 initWithFrame:0.0, 0.0, v14, v15];
  v17 = v16;
  if (v16)
  {
    [(CALayer *)[(UIView *)v16 layer] setAllowsGroupBlending:0];
    [(_UILegibilityView *)v17 setStrength:strength];
    [(_UILegibilityView *)v17 setOptions:options];
    [(_UILegibilityView *)v17 setSettings:settings image:image shadowImage:shadowImage];
  }

  return v17;
}

- (void)dealloc
{
  _DecrementImageUsage(self->_image);

  self->_settings = 0;
  self->_image = 0;

  self->_shadowImage = 0;
  [(UIView *)self->_imageView removeFromSuperview];

  self->_imageView = 0;
  [(UIView *)self->_shadowImageView removeFromSuperview];

  self->_shadowImageView = 0;
  v3.receiver = self;
  v3.super_class = _UILegibilityView;
  [(UIView *)&v3 dealloc];
}

- (int64_t)style
{
  settings = [(_UILegibilityView *)self settings];

  return [(_UILegibilitySettings *)settings style];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(_UILegibilityView *)self image:fits.width];

  [(UIImage *)v3 size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setHidesImage:(BOOL)image
{
  imageCopy = image;
  self->_hidesImage = image;
  imageView = [(_UILegibilityView *)self imageView];

  [(UIImageView *)imageView setHidden:imageCopy];
}

- (void)setImage:(id)image
{
  image = self->_image;
  if (image != image)
  {
    _DecrementImageUsage(image);

    self->_image = image;
    if (image)
    {
      if (qword_1EA963C18 != -1)
      {
        dispatch_once(&qword_1EA963C18, &__block_literal_global_433);
      }

      v6 = qword_1EA963C10;

      [v6 addObject:image];
    }
  }
}

- (void)setImage:(id)image shadowImage:(id)shadowImage
{
  settings = [(_UILegibilityView *)self settings];

  [(_UILegibilityView *)self setSettings:settings image:image shadowImage:shadowImage];
}

- (void)setStyle:(int64_t)style image:(id)image shadowImage:(id)shadowImage
{
  v8 = [_UILegibilitySettings sharedInstanceForStyle:style];

  [(_UILegibilityView *)self setSettings:v8 image:image shadowImage:shadowImage];
}

- (void)setSettings:(id)settings image:(id)image shadowImage:(id)shadowImage
{
  [(_UILegibilityView *)self setSettings:?];
  [(_UILegibilityView *)self setImage:image];
  [(_UILegibilityView *)self setShadowImage:shadowImage];
  if (image && ([image size], v9 >= 1.0) && (objc_msgSend(image, "size"), v10 >= 1.0))
  {
    if (__51___UILegibilityView_setSettings_image_shadowImage___block_invoke(image))
    {
      image = [image imageWithTintColor:{-[_UILegibilityView drawingColor](self, "drawingColor")}];
    }

    imageView = [(_UILegibilityView *)self imageView];
    if (imageView)
    {
      v13 = imageView;
      [(UIImageView *)imageView setImage:image];
      [(UIView *)[(_UILegibilityView *)self imageView] sizeToFit];
    }

    else
    {
      v13 = [(UIImageView *)[_UILegibilityImageView alloc] initWithImage:image];
      [(_UILegibilityView *)self setImageView:v13];
      [(UIView *)self addSubview:v13];
    }

    [(UIImageView *)v13 setHidden:self->_hidesImage];
    if (![(_UILegibilityView *)self shadowImage])
    {
      settingsCopy = settings;
      if ([(_UILegibilityView *)self usesColorFilters])
      {
        settingsCopy = [[_UILegibilitySettings alloc] initWithStyle:[(_UILegibilitySettings *)self->_settings style] primaryColor:[(_UILegibilitySettings *)self->_settings primaryColor] secondaryColor:[(_UILegibilitySettings *)self->_settings secondaryColor] shadowColor:+[UIColor whiteColor]];
        [(_UILegibilitySettings *)self->_settings minFillHeight];
        [(_UILegibilitySettings *)settingsCopy setMinFillHeight:?];
      }

      [(_UILegibilityView *)self strength];
      if (v15 != 0.0)
      {
        image = [(_UILegibilityView *)self image];
        [(_UILegibilityView *)self strength];
        [(_UILegibilityView *)self setShadowImage:[(UIImage *)image _imageForLegibilitySettings:settingsCopy strength:1 alphaOnly:?]];
      }
    }

    shadowImageView = [(_UILegibilityView *)self shadowImageView];
    if (shadowImageView)
    {
      v18 = shadowImageView;
      [(UIImageView *)shadowImageView setImage:[(_UILegibilityView *)self shadowImage]];
      [(UIView *)v18 sizeToFit];
    }

    else
    {
      v18 = [(UIImageView *)[_UILegibilityImageView alloc] initWithImage:[(_UILegibilityView *)self shadowImage]];
      [(_UILegibilityView *)self setShadowImageView:v18];
      [(UIView *)self addSubview:v18];
      [(UIView *)self sendSubviewToBack:v18];
    }

    [(UIImageView *)v18 _applySettingsForLegibilityStyle:[(_UILegibilityView *)self style]];
    if (__51___UILegibilityView_setSettings_image_shadowImage___block_invoke([(UIImageView *)v18 image]))
    {
      v19 = [objc_msgSend(settings "shadowColor")];
    }

    else
    {
      v19 = 0;
    }

    [(CALayer *)[(UIView *)v18 layer] setContentsMultiplyColor:v19];

    [(_UILegibilityView *)self _updateFilters];
  }

  else
  {
    [(_UILegibilityView *)self setImage:0];
    [(UIImageView *)[(_UILegibilityView *)self imageView] setImage:0];
    shadowImageView2 = [(_UILegibilityView *)self shadowImageView];

    [(UIImageView *)shadowImageView2 setImage:0];
  }
}

- (void)updateForChangedSettings:(id)settings
{
  settings = [(_UILegibilityView *)self settings];
  [(_UILegibilityView *)self setSettings:settings];
  if ([(_UILegibilityView *)self usesColorFilters]&& [(_UILegibilityView *)self image]&& [(_UILegibilityView *)self imageView])
  {
    [(UIImageView *)[(_UILegibilityView *)self shadowImageView] _applySettingsForLegibilityStyle:[(_UILegibilityView *)self style]];
    [(_UILegibilityView *)self _updateFilters];
  }

  else
  {
    [(_UILegibilityView *)self updateImage];
    [settings shadowRadius];
    v6 = v5;
    [(_UILegibilitySettings *)settings shadowRadius];
    if (vabdd_f64(v6, v7) <= 2.22044605e-16 && ([settings shadowAlpha], v9 = v8, -[_UILegibilitySettings shadowAlpha](settings, "shadowAlpha"), vabdd_f64(v9, v10) <= 2.22044605e-16) && (objc_msgSend(settings, "minFillHeight"), v12 = v11, -[_UILegibilitySettings minFillHeight](settings, "minFillHeight"), vabdd_f64(v12, v13) <= 2.22044605e-16))
    {
      shadowImage = [(_UILegibilityView *)self shadowImage];
    }

    else
    {
      shadowImage = 0;
    }

    [(_UILegibilityView *)self setSettings:settings image:[(_UILegibilityView *)self image] shadowImage:shadowImage];
  }
}

- (void)layoutSubviews
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  v4 = v3;
  [(UIView *)[(_UILegibilityView *)self imageView] frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self bounds];
  v17 = UIRectCenteredIntegralRectScale(v6, v8, v10, v12, v13, v14, v15, v16, v4);
  [(UIImageView *)[(_UILegibilityView *)self imageView] setFrame:v17, v18, v19, v20];
  [(UIView *)[(_UILegibilityView *)self shadowImageView] frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(UIView *)self bounds];
  v33 = UIRectCenteredIntegralRectScale(v22, v24, v26, v28, v29, v30, v31, v32, v4);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  shadowImageView = [(_UILegibilityView *)self shadowImageView];

  [(UIImageView *)shadowImageView setFrame:v33, v35, v37, v39];
}

- (id)drawingColor
{
  usesSecondaryColor = [(_UILegibilityView *)self usesSecondaryColor];
  settings = [(_UILegibilityView *)self settings];
  if (usesSecondaryColor)
  {

    return [(_UILegibilitySettings *)settings secondaryColor];
  }

  else
  {

    return [(_UILegibilitySettings *)settings primaryColor];
  }
}

- (void)_updateFilters
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(_UILegibilityView *)self usesColorFilters])
  {
    v3 = *MEMORY[0x1E6979CB0];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    [v4 setName:v3];
    [v4 setValue:objc_msgSend(-[_UILegibilityView drawingColor](self forKey:{"drawingColor"), "CGColor"), @"inputColor"}];
    v8[0] = v4;
    -[CALayer setFilters:](-[UIView layer](-[_UILegibilityView imageView](self, "imageView"), "layer"), "setFilters:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1]);
    v5 = [MEMORY[0x1E6979378] filterWithType:v3];
    [v5 setName:v3];
    [v5 setValue:-[UIColor CGColor](-[_UILegibilitySettings shadowColor](-[_UILegibilityView settings](self forKey:{"settings"), "shadowColor"), "CGColor"), @"inputColor"}];
    v7 = v5;
    -[CALayer setFilters:](-[UIView layer](-[_UILegibilityView shadowImageView](self, "shadowImageView"), "layer"), "setFilters:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1]);
  }

  else
  {
    [(CALayer *)[(UIView *)[(_UILegibilityView *)self imageView] layer] setFilters:0];
    layer = [(UIView *)[(_UILegibilityView *)self shadowImageView] layer];

    [(CALayer *)layer setFilters:0];
  }
}

@end