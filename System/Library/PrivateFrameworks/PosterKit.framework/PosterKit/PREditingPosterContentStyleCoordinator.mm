@interface PREditingPosterContentStyleCoordinator
+ (id)_legibleIconColorForLuminance:(double)luminance;
+ (id)coordinatorForColorWellView:(id)view vibrant:(BOOL)vibrant;
+ (id)coordinatorImplForStyle:(id)style;
- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested;
- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested coordinator:(id)coordinator;
- (PRPosterContentStyle)style;
- (double)itemViewLuminance;
- (id)itemViewWithGlassStyleApplied:(BOOL)applied;
- (void)setContentsLuminance:(double)luminance;
- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied;
@end

@implementation PREditingPosterContentStyleCoordinator

+ (id)coordinatorForColorWellView:(id)view vibrant:(BOOL)vibrant
{
  vibrantCopy = vibrant;
  v17[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  colorWell = [viewCopy colorWell];
  selectedColor = [colorWell selectedColor];

  v9 = [PRPosterContentDiscreteColorsStyle alloc];
  v17[0] = selectedColor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = 0.0;
  if (vibrantCopy)
  {
    v11 = 1.0;
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PRPosterContentDiscreteColorsStyle *)v9 initWithColors:v10 vibrant:vibrantCopy supportsVariation:1 variationValue:v12 preferredMaterialType:v11];

  v14 = [[_PREditingPosterContentUIColorWellCoordinatorImpl alloc] initWithStyle:v13 colorWellView:viewCopy];
  v15 = [[self alloc] initWithInitialStyle:v13 suggested:0 coordinator:v14];

  return v15;
}

+ (id)coordinatorImplForStyle:(id)style
{
  styleCopy = style;
  type = [styleCopy type];
  v5 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v6 = _PREditingPosterContentVibrantMaterialStyleCoordinatorImpl;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_15;
      }

      v6 = _PREditingPosterContentVibrantMonochromeStyleCoordinatorImpl;
    }

    goto LABEL_11;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_15;
    }

    v6 = _PREditingPosterContentGradientStyleCoordinatorImpl;
LABEL_11:
    v5 = [[v6 alloc] initWithStyle:styleCopy];
    goto LABEL_15;
  }

  v7 = styleCopy;
  colors = [v7 colors];
  v9 = [colors count];

  if (v9 <= 1)
  {
    isVibrant = [v7 isVibrant];
    v10 = off_1E7842000;
    if (isVibrant)
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

+ (id)_legibleIconColorForLuminance:(double)luminance
{
  if (luminance >= 0.9)
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

- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  styleCopy = style;
  v7 = [objc_opt_class() coordinatorImplForStyle:styleCopy];
  v8 = [(PREditingPosterContentStyleCoordinator *)self initWithInitialStyle:styleCopy suggested:suggestedCopy coordinator:v7];

  return v8;
}

- (PREditingPosterContentStyleCoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested coordinator:(id)coordinator
{
  styleCopy = style;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = PREditingPosterContentStyleCoordinator;
  v11 = [(PREditingPosterContentStyleCoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, style);
    v12->_suggested = suggested;
    objc_storeStrong(&v12->_coordinatorImpl, coordinator);
  }

  return v12;
}

- (PRPosterContentStyle)style
{
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl style];
  style = style;
  if (!style)
  {
    style = self->_style;
  }

  v5 = style;

  return style;
}

- (void)setVariation:(double)variation glassStyleApplied:(BOOL)applied
{
  [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl setVariation:applied glassStyleApplied:variation];
  style = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl style];
  style = self->_style;
  self->_style = style;

  MEMORY[0x1EEE66BB8](style, style);
}

- (void)setContentsLuminance:(double)luminance
{
  if (self->_contentsLuminance != luminance)
  {
    self->_contentsLuminance = luminance;
    [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl setContentsLuminance:?];
  }

  if ([(PREditingPosterContentStyleCoordinator *)self isSuggested]&& self->_symbolImageView)
  {
    v4 = objc_opt_class();
    [(PREditingPosterContentStyleCoordinator *)self itemViewLuminance];
    v7 = [v4 _legibleIconColorForLuminance:?];
    tintColor = [(UIImageView *)self->_symbolImageView tintColor];
    v6 = [v7 isEqual:tintColor];

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

- (id)itemViewWithGlassStyleApplied:(BOOL)applied
{
  appliedCopy = applied;
  v5 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  v6 = [(_PREditingPosterContentStyleCoordinatorImpl *)self->_coordinatorImpl itemViewWithGlassStyleApplied:appliedCopy];
  [v5 bounds];
  [v6 setFrame:?];
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    [v5 bounds];
    v6 = [v7 initWithFrame:?];
    if ([(PRPosterContentStyle *)self->_style type]== 5 && appliedCopy)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DD818]) initWithVariant:1];
      [v6 _setBackground:v8];
      [v6 setClipsToBounds:1];
      layer = [v6 layer];
      [layer setCornerRadius:17.0];

      layer2 = [v6 layer];
      [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];
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