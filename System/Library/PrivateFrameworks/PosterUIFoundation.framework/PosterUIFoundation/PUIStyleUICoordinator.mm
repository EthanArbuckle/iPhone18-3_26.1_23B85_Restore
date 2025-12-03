@interface PUIStyleUICoordinator
+ (id)_legibleIconColorForLuminance:(double)luminance;
+ (id)coordinatorForColorWellView:(id)view vibrant:(BOOL)vibrant;
+ (id)coordinatorImplForStyle:(id)style;
- (PUIStyle)style;
- (PUIStyleUICoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested;
- (PUIStyleUICoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested coordinator:(id)coordinator;
- (UIView)itemView;
- (double)itemViewLuminance;
- (void)setContentsLuminance:(double)luminance;
- (void)setVariation:(double)variation;
@end

@implementation PUIStyleUICoordinator

+ (id)coordinatorForColorWellView:(id)view vibrant:(BOOL)vibrant
{
  vibrantCopy = vibrant;
  v16[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  colorWell = [viewCopy colorWell];
  selectedColor = [colorWell selectedColor];

  v9 = [PUIStyleDiscreteColors alloc];
  v16[0] = selectedColor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = 0.0;
  if (vibrantCopy)
  {
    v11 = 1.0;
  }

  v12 = [(PUIStyleDiscreteColors *)v9 initWithColors:v10 vibrant:vibrantCopy supportsVariation:1 variationValue:v11];

  v13 = [[_PUIUIColorWellCoordinatorImpl alloc] initWithStyle:v12 colorWellView:viewCopy];
  v14 = [[self alloc] initWithInitialStyle:v12 suggested:0 coordinator:v13];

  return v14;
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
      v6 = _PUIStyleVibrantMaterialCoordinatorImpl;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_15;
      }

      v6 = _PUIStyleVibrantMonochromeCoordinatorImpl;
    }

    goto LABEL_11;
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_15;
    }

    v6 = _PUIStyleGradientCoordinatorImpl;
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
    v10 = off_1E78538D0;
    if (isVibrant)
    {
      v10 = off_1E7853918;
    }
  }

  else
  {
    v10 = off_1E7853900;
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

- (PUIStyleUICoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  styleCopy = style;
  v7 = [objc_opt_class() coordinatorImplForStyle:styleCopy];
  v8 = [(PUIStyleUICoordinator *)self initWithInitialStyle:styleCopy suggested:suggestedCopy coordinator:v7];

  return v8;
}

- (PUIStyleUICoordinator)initWithInitialStyle:(id)style suggested:(BOOL)suggested coordinator:(id)coordinator
{
  styleCopy = style;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = PUIStyleUICoordinator;
  v11 = [(PUIStyleUICoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, style);
    v12->_suggested = suggested;
    objc_storeStrong(&v12->_coordinatorImpl, coordinator);
  }

  return v12;
}

- (PUIStyle)style
{
  style = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl style];
  style = style;
  if (!style)
  {
    style = self->_style;
  }

  v5 = style;

  return style;
}

- (void)setVariation:(double)variation
{
  [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl setVariation:variation];
  style = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl style];
  style = self->_style;
  self->_style = style;

  MEMORY[0x1EEE66BB8](style, style);
}

- (void)setContentsLuminance:(double)luminance
{
  if (self->_contentsLuminance != luminance)
  {
    self->_contentsLuminance = luminance;
    [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl setContentsLuminance:?];
  }

  if ([(PUIStyleUICoordinator *)self isSuggested]&& self->_symbolImageView)
  {
    v4 = objc_opt_class();
    [(PUIStyleUICoordinator *)self itemViewLuminance];
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

  [(PUIStyleUICoordinatorImpl *)coordinatorImpl itemViewLuminance];
  return result;
}

- (UIView)itemView
{
  v3 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  itemView = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl itemView];
  [v3 bounds];
  [itemView setFrame:?];
  if (!itemView)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [v3 bounds];
    itemView = [v5 initWithFrame:?];
  }

  [itemView setAutoresizingMask:18];
  [v3 addSubview:itemView];
  if ([(PUIStyleUICoordinator *)self isSuggested])
  {
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"sparkles"];
    v8 = [v6 initWithImage:v7];

    [v3 bounds];
    [(UIImageView *)v8 setFrame:?];
    v9 = objc_opt_class();
    [(PUIStyleUICoordinator *)self itemViewLuminance];
    v10 = [v9 _legibleIconColorForLuminance:?];
    [(UIImageView *)v8 setTintColor:v10];
    [v3 bounds];
    v15 = CGRectInset(v14, 6.0, 6.0);
    [(UIImageView *)v8 setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
    [(UIImageView *)v8 setContentMode:1];
    [v3 addSubview:v8];
    [(UIImageView *)v8 setAutoresizingMask:18];
    symbolImageView = self->_symbolImageView;
    self->_symbolImageView = v8;
  }

  return v3;
}

@end