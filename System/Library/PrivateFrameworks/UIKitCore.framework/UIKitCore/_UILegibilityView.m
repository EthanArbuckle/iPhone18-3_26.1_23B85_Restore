@interface _UILegibilityView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UILegibilityView)initWithSettings:(id)a3 strength:(double)a4 image:(id)a5 shadowImage:(id)a6 options:(int64_t)a7;
- (_UILegibilityView)initWithStyle:(int64_t)a3 image:(id)a4 shadowImage:(id)a5;
- (id)drawingColor;
- (int64_t)style;
- (void)_updateFilters;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHidesImage:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 shadowImage:(id)a4;
- (void)setSettings:(id)a3 image:(id)a4 shadowImage:(id)a5;
- (void)setStyle:(int64_t)a3 image:(id)a4 shadowImage:(id)a5;
- (void)updateForChangedSettings:(id)a3;
@end

@implementation _UILegibilityView

- (_UILegibilityView)initWithStyle:(int64_t)a3 image:(id)a4 shadowImage:(id)a5
{
  v7 = [_UILegibilitySettings sharedInstanceForStyle:a3, a4, a5];

  return [(_UILegibilityView *)self initWithSettings:v7 strength:a4 image:0 shadowImage:0 options:1.5];
}

- (_UILegibilityView)initWithSettings:(id)a3 strength:(double)a4 image:(id)a5 shadowImage:(id)a6 options:(int64_t)a7
{
  [a5 size];
  v14 = v13;
  [a5 size];
  v19.receiver = self;
  v19.super_class = _UILegibilityView;
  v16 = [(UIView *)&v19 initWithFrame:0.0, 0.0, v14, v15];
  v17 = v16;
  if (v16)
  {
    [(CALayer *)[(UIView *)v16 layer] setAllowsGroupBlending:0];
    [(_UILegibilityView *)v17 setStrength:a4];
    [(_UILegibilityView *)v17 setOptions:a7];
    [(_UILegibilityView *)v17 setSettings:a3 image:a5 shadowImage:a6];
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
  v2 = [(_UILegibilityView *)self settings];

  return [(_UILegibilitySettings *)v2 style];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(_UILegibilityView *)self image:a3.width];

  [(UIImage *)v3 size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setHidesImage:(BOOL)a3
{
  v3 = a3;
  self->_hidesImage = a3;
  v4 = [(_UILegibilityView *)self imageView];

  [(UIImageView *)v4 setHidden:v3];
}

- (void)setImage:(id)a3
{
  image = self->_image;
  if (image != a3)
  {
    _DecrementImageUsage(image);

    self->_image = a3;
    if (a3)
    {
      if (qword_1EA963C18 != -1)
      {
        dispatch_once(&qword_1EA963C18, &__block_literal_global_433);
      }

      v6 = qword_1EA963C10;

      [v6 addObject:a3];
    }
  }
}

- (void)setImage:(id)a3 shadowImage:(id)a4
{
  v7 = [(_UILegibilityView *)self settings];

  [(_UILegibilityView *)self setSettings:v7 image:a3 shadowImage:a4];
}

- (void)setStyle:(int64_t)a3 image:(id)a4 shadowImage:(id)a5
{
  v8 = [_UILegibilitySettings sharedInstanceForStyle:a3];

  [(_UILegibilityView *)self setSettings:v8 image:a4 shadowImage:a5];
}

- (void)setSettings:(id)a3 image:(id)a4 shadowImage:(id)a5
{
  [(_UILegibilityView *)self setSettings:?];
  [(_UILegibilityView *)self setImage:a4];
  [(_UILegibilityView *)self setShadowImage:a5];
  if (a4 && ([a4 size], v9 >= 1.0) && (objc_msgSend(a4, "size"), v10 >= 1.0))
  {
    if (__51___UILegibilityView_setSettings_image_shadowImage___block_invoke(a4))
    {
      a4 = [a4 imageWithTintColor:{-[_UILegibilityView drawingColor](self, "drawingColor")}];
    }

    v12 = [(_UILegibilityView *)self imageView];
    if (v12)
    {
      v13 = v12;
      [(UIImageView *)v12 setImage:a4];
      [(UIView *)[(_UILegibilityView *)self imageView] sizeToFit];
    }

    else
    {
      v13 = [(UIImageView *)[_UILegibilityImageView alloc] initWithImage:a4];
      [(_UILegibilityView *)self setImageView:v13];
      [(UIView *)self addSubview:v13];
    }

    [(UIImageView *)v13 setHidden:self->_hidesImage];
    if (![(_UILegibilityView *)self shadowImage])
    {
      v14 = a3;
      if ([(_UILegibilityView *)self usesColorFilters])
      {
        v14 = [[_UILegibilitySettings alloc] initWithStyle:[(_UILegibilitySettings *)self->_settings style] primaryColor:[(_UILegibilitySettings *)self->_settings primaryColor] secondaryColor:[(_UILegibilitySettings *)self->_settings secondaryColor] shadowColor:+[UIColor whiteColor]];
        [(_UILegibilitySettings *)self->_settings minFillHeight];
        [(_UILegibilitySettings *)v14 setMinFillHeight:?];
      }

      [(_UILegibilityView *)self strength];
      if (v15 != 0.0)
      {
        v16 = [(_UILegibilityView *)self image];
        [(_UILegibilityView *)self strength];
        [(_UILegibilityView *)self setShadowImage:[(UIImage *)v16 _imageForLegibilitySettings:v14 strength:1 alphaOnly:?]];
      }
    }

    v17 = [(_UILegibilityView *)self shadowImageView];
    if (v17)
    {
      v18 = v17;
      [(UIImageView *)v17 setImage:[(_UILegibilityView *)self shadowImage]];
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
      v19 = [objc_msgSend(a3 "shadowColor")];
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
    v11 = [(_UILegibilityView *)self shadowImageView];

    [(UIImageView *)v11 setImage:0];
  }
}

- (void)updateForChangedSettings:(id)a3
{
  v15 = [(_UILegibilityView *)self settings];
  [(_UILegibilityView *)self setSettings:a3];
  if ([(_UILegibilityView *)self usesColorFilters]&& [(_UILegibilityView *)self image]&& [(_UILegibilityView *)self imageView])
  {
    [(UIImageView *)[(_UILegibilityView *)self shadowImageView] _applySettingsForLegibilityStyle:[(_UILegibilityView *)self style]];
    [(_UILegibilityView *)self _updateFilters];
  }

  else
  {
    [(_UILegibilityView *)self updateImage];
    [a3 shadowRadius];
    v6 = v5;
    [(_UILegibilitySettings *)v15 shadowRadius];
    if (vabdd_f64(v6, v7) <= 2.22044605e-16 && ([a3 shadowAlpha], v9 = v8, -[_UILegibilitySettings shadowAlpha](v15, "shadowAlpha"), vabdd_f64(v9, v10) <= 2.22044605e-16) && (objc_msgSend(a3, "minFillHeight"), v12 = v11, -[_UILegibilitySettings minFillHeight](v15, "minFillHeight"), vabdd_f64(v12, v13) <= 2.22044605e-16))
    {
      v14 = [(_UILegibilityView *)self shadowImage];
    }

    else
    {
      v14 = 0;
    }

    [(_UILegibilityView *)self setSettings:a3 image:[(_UILegibilityView *)self image] shadowImage:v14];
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
  v40 = [(_UILegibilityView *)self shadowImageView];

  [(UIImageView *)v40 setFrame:v33, v35, v37, v39];
}

- (id)drawingColor
{
  v3 = [(_UILegibilityView *)self usesSecondaryColor];
  v4 = [(_UILegibilityView *)self settings];
  if (v3)
  {

    return [(_UILegibilitySettings *)v4 secondaryColor];
  }

  else
  {

    return [(_UILegibilitySettings *)v4 primaryColor];
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
    v6 = [(UIView *)[(_UILegibilityView *)self shadowImageView] layer];

    [(CALayer *)v6 setFilters:0];
  }
}

@end