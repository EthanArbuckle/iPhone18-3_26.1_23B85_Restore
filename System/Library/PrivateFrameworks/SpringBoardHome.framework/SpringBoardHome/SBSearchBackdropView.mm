@interface SBSearchBackdropView
+ (int64_t)_builtInMaterialRecipeForStyle:(int64_t)a3;
- (SBSearchBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)_materialViewForStyle:(int64_t)a3;
- (void)prepareForTransitionToBlurred:(BOOL)a3;
- (void)prepareForTransitionType:(int64_t)a3;
- (void)setTransitionProgress:(double)a3;
@end

@implementation SBSearchBackdropView

- (SBSearchBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = SBSearchBackdropView;
  v5 = [(SBSearchBackdropView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = SBHIsSpotlightFloatingWindowEnabled();
    if (a4 == 1 || (v6 & 1) == 0)
    {
      v7 = [(SBSearchBackdropView *)v5 _materialViewForStyle:a4];
      if (v7)
      {
        objc_storeStrong(&v5->_materialView, v7);
        materialView = v5->_materialView;
        [(SBSearchBackdropView *)v5 bounds];
        [(MTMaterialView *)materialView setFrame:?];
        [(MTMaterialView *)v5->_materialView setShouldCrossfade:1];
        [(MTMaterialView *)v5->_materialView setAutoresizingMask:18];
        [(SBSearchBackdropView *)v5 addSubview:v5->_materialView];
      }
    }
  }

  return v5;
}

- (void)prepareForTransitionToBlurred:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [(SBSearchBackdropView *)self prepareForTransitionType:v3];
}

- (void)prepareForTransitionType:(int64_t)a3
{
  self->_transitionType = a3;
  if (a3)
  {
    v3 = a3 == 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  self->_transitioningToBlurred = v4;
  [(SBSearchBackdropView *)self setTransitionProgress:0.0];
}

- (void)setTransitionProgress:(double)a3
{
  self->_transitionProgress = a3;
  transitionType = self->_transitionType;
  v4 = 1.0 - a3;
  if (transitionType == 1)
  {
    a3 = 0.0;
  }

  if (transitionType == 2)
  {
    a3 = v4;
  }

  if (transitionType == 3)
  {
    a3 = 1.0;
  }

  [(MTMaterialView *)self->_materialView setWeighting:a3];
}

- (id)_materialViewForStyle:(int64_t)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (a3 == 4)
  {
    v12 = MEMORY[0x1E69AE158];
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v12 materialViewWithRecipeNamed:@"coplanarLeadingTrailingBackgroundBlur" inBundle:v13 options:0 initialWeighting:0 scaleAdjustment:1.0];
  }

  else if (a3 == 3)
  {
    v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    v16[0] = v4;
    v17[0] = @"knowledgeBackgroundZoomed";
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v16[1] = v5;
    v17[1] = @"knowledgeBackgroundZoomed";
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v16[2] = v6;
    v17[2] = @"knowledgeBackgroundDarkZoomed";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v8 = MEMORY[0x1E69AE158];
    v9 = SBHBundle();
    v10 = [(SBSearchBackdropView *)self traitCollection];
    v11 = [v8 materialViewWithRecipeNamesByTraitCollection:v7 inBundle:v9 options:0 initialWeighting:0 scaleAdjustment:v10 compatibleWithTraitCollection:0.0];
  }

  else
  {
    v14 = [objc_opt_class() _builtInMaterialRecipeForStyle:a3];
    if (v14)
    {
      v11 = [MEMORY[0x1E69AE158] materialViewWithRecipe:v14];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (int64_t)_builtInMaterialRecipeForStyle:(int64_t)a3
{
  if (a3)
  {
    return 4 * (a3 == 2);
  }

  else
  {
    return 14;
  }
}

@end