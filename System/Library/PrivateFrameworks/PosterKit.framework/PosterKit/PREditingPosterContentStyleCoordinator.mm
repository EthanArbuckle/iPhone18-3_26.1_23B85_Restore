@interface PREditingPosterContentStyleCoordinator
+ (id)_legibleIconColorForLuminance:(double)a3;
+ (id)coordinatorForColorWellView:(id)a3 vibrant:(BOOL)a4;
+ (id)coordinatorImplForStyle:(id)a3;
- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4;
- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4 coordinator:(id)a5;
- (PRPosterContentStyle)style;
- (double)itemViewLuminance;
- (id)itemViewWithGlassStyleApplied:(BOOL)a3;
- (void)setContentsLuminance:(double)a3;
- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4;
@end

@implementation PREditingPosterContentStyleCoordinator

+ (id)coordinatorForColorWellView:(id)a3 vibrant:(BOOL)a4
{
  v4 = a4;
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 colorWell];
  v8 = [v7 selectedColor];

  v9 = [PRPosterContentDiscreteColorsStyle alloc];
  v17[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = 0.0;
  if (v4)
  {
    v11 = 1.0;
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PRPosterContentDiscreteColorsStyle *)v9 initWithColors:v10 vibrant:v4 supportsVariation:1 variationValue:v12 preferredMaterialType:v11];

  v14 = [[_PREditingPosterContentUIColorWellCoordinatorImpl alloc] initWithStyle:v13 colorWellView:v6];
  v15 = [[a1 alloc] initWithInitialStyle:v13 suggested:0 coordinator:v14];

  return v15;
}

+ (id)coordinatorImplForStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = _PREditingPosterContentVibrantMaterialStyleCoordinatorImpl;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_15;
      }

      v6 = _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_15;
    }

    v6 = _PREditingPosterContentGradientStyleCoordinatorImpl;
LABEL_11:
    v5 = [[v6 alloc] initWithStyle:v3];
    goto LABEL_15;
  }

  v7 = v3;
  v8 = [v7 colors];
  v9 = [v8 count];

  if (v9 <= 1)
  {
    v11 = [v7 isVibrant];
    v10 = off_1E7842000;
    if (v11)
    {
      v10 = off_1E7842028;
    }
  }

  else
  {
    v10 = off_1E7842008;
  }

  v5 = [objc_alloc(*v10) initWithStyle:v7];

LABEL_15:

  return v5;
}

+ (id)_legibleIconColorForLuminance:(double)a3
{
  if (a3 >= 0.9)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v3 = ;

  return v3;
}

- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_opt_class() coordinatorImplForStyle:v6];
  v8 = [(PREditingPosterContentStyleCoordinator *)self initWithInitialStyle:v6 suggested:v4 coordinator:v7];

  return v8;
}

- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4 coordinator:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PREditingPosterContentStyleCoordinator;
  v11 = [(PREditingPosterContentStyleCoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, a3);
    v12->_suggested = a4;
    objc_storeStrong(&v12->_coordinatorImpl, a5);
  }

  return v12;
}

- (PRPosterContentStyle)style
{
  v3 = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl style];
  style = v3;
  if (!v3)
  {
    style = self->_style;
  }

  v5 = style;

  return style;
}

- (void)setVariation:(double)a3 glassStyleApplied:(BOOL)a4
{
  [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl setVariation:a4 glassStyleApplied:a3];
  v5 = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl style];
  style = self->_style;
  self->_style = v5;

  MEMORY[0x1EEE66BB8](v5, style);
}

- (void)setContentsLuminance:(double)a3
{
  if (self->_contentsLuminance != a3)
  {
    self->_contentsLuminance = a3;
    [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl setContentsLuminance:?];
  }

  if ([(PREditingPosterContentStyleCoordinator *)self isSuggested]&& self->_symbolImageView)
  {
    v4 = objc_opt_class();
    [(PREditingPosterContentStyleCoordinator *)self itemViewLuminance];
    v7 = [v4 _legibleIconColorForLuminance:?];
    v5 = [(UIImageView *)self->_symbolImageView tintColor];
    v6 = [v7 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      [(UIImageView *)self->_symbolImageView setTintColor:v7];
    }
  }
}

- (double)itemViewLuminance
{
  coordinatorImpl = self->_coordinatorImpl;
  if (!coordinatorImpl)
  {
    return 0.5;
  }

  [(_PREditingPosterContentStyleCoordinatorImpl *)coordinatorImpl itemViewLuminance];
  return result;
}

- (id)itemViewWithGlassStyleApplied:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl itemViewWithGlassStyleApplied:v3];
  [v5 bounds];
  [v6 setFrame:?];
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v6 = [v7 initWithFrame:?];
    if ([(PRPosterContentStyle *)self->_style type]== 5 && v3)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
      [v6 _setBackground:v8];
      [v6 setClipsToBounds:1];
      v9 = [v6 layer];
      [v9 setCornerRadius:17.0];

      v10 = [v6 layer];
      [v10 setCornerCurve:*MEMORY[0x1E69796E8]];
    }
  }

  [v6 setAutoresizingMask:18];
  [v5 addSubview:v6];
  if ([(PREditingPosterContentStyleCoordinator *)self isSuggested])
  {
    v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v12 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"sparkles"];
    v13 = [v11 initWithImage:v12];

    [v5 bounds];
    [(UIImageView *)v13 setFrame:?];
    v14 = objc_opt_class();
    [(PREditingPosterContentStyleCoordinator *)self itemViewLuminance];
    v15 = [v14 _legibleIconColorForLuminance:?];
    [(UIImageView *)v13 setTintColor:v15];
    [v5 bounds];
    v20 = CGRectInset(v19, 6.0, 6.0);
    [(UIImageView *)v13 setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
    [(UIImageView *)v13 setContentMode:1];
    [v5 addSubview:v13];
    [(UIImageView *)v13 setAutoresizingMask:18];
    symbolImageView = self->_symbolImageView;
    self->_symbolImageView = v13;
  }

  return v5;
}

@end