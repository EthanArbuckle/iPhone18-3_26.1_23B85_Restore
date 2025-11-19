@interface PUIStyleUICoordinator
+ (id)_legibleIconColorForLuminance:(double)a3;
+ (id)coordinatorForColorWellView:(id)a3 vibrant:(BOOL)a4;
+ (id)coordinatorImplForStyle:(id)a3;
- (PUIStyle)style;
- (PUIStyleUICoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4;
- (PUIStyleUICoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4 coordinator:(id)a5;
- (UIView)itemView;
- (double)itemViewLuminance;
- (void)setContentsLuminance:(double)a3;
- (void)setVariation:(double)a3;
@end

@implementation PUIStyleUICoordinator

+ (id)coordinatorForColorWellView:(id)a3 vibrant:(BOOL)a4
{
  v4 = a4;
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 colorWell];
  v8 = [v7 selectedColor];

  v9 = [PUIStyleDiscreteColors alloc];
  v16[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = 0.0;
  if (v4)
  {
    v11 = 1.0;
  }

  v12 = [(PUIStyleDiscreteColors *)v9 initWithColors:v10 vibrant:v4 supportsVariation:1 variationValue:v11];

  v13 = [[_PUIUIColorWellCoordinatorImpl alloc] initWithStyle:v12 colorWellView:v6];
  v14 = [[a1 alloc] initWithInitialStyle:v12 suggested:0 coordinator:v13];

  return v14;
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
      v6 = _PUIStyleVibrantMaterialCoordinatorImpl;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_15;
      }

      v6 = _PUIStyleVibrantMonochromeCoordinatorImpl;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_15;
    }

    v6 = _PUIStyleGradientCoordinatorImpl;
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
    v10 = off_1E78538D0;
    if (v11)
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

- (PUIStyleUICoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_opt_class() coordinatorImplForStyle:v6];
  v8 = [(PUIStyleUICoordinator *)self initWithInitialStyle:v6 suggested:v4 coordinator:v7];

  return v8;
}

- (PUIStyleUICoordinator)initWithInitialStyle:(id)a3 suggested:(BOOL)a4 coordinator:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PUIStyleUICoordinator;
  v11 = [(PUIStyleUICoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, a3);
    v12->_suggested = a4;
    objc_storeStrong(&v12->_coordinatorImpl, a5);
  }

  return v12;
}

- (PUIStyle)style
{
  v3 = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl style];
  style = v3;
  if (!v3)
  {
    style = self->_style;
  }

  v5 = style;

  return style;
}

- (void)setVariation:(double)a3
{
  [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl setVariation:a3];
  v4 = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl style];
  style = self->_style;
  self->_style = v4;

  MEMORY[0x1EEE66BB8](v4, style);
}

- (void)setContentsLuminance:(double)a3
{
  if (self->_contentsLuminance != a3)
  {
    self->_contentsLuminance = a3;
    [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl setContentsLuminance:?];
  }

  if ([(PUIStyleUICoordinator *)self isSuggested]&& self->_symbolImageView)
  {
    v4 = objc_opt_class();
    [(PUIStyleUICoordinator *)self itemViewLuminance];
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

  [(PUIStyleUICoordinatorImpl *)coordinatorImpl itemViewLuminance];
  return result;
}

- (UIView)itemView
{
  v3 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  v4 = [(PUIStyleUICoordinatorImpl *)self->_coordinatorImpl itemView];
  [v3 bounds];
  [v4 setFrame:?];
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [v3 bounds];
    v4 = [v5 initWithFrame:?];
  }

  [v4 setAutoresizingMask:18];
  [v3 addSubview:v4];
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