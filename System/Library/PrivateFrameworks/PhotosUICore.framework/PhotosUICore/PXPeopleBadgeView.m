@interface PXPeopleBadgeView
- (CGRect)clippingRect;
- (PXPeopleBadgeViewDelegate)badgeViewDelegate;
- (id)_checkmarkConfiguration;
- (id)_createHeartBadgeWithDisplayScale:(double)a3 isFavorite:(BOOL)a4;
- (id)_currentTintColor;
- (id)_favoriteConfiguration;
- (id)_largeConfiguration;
- (id)_smallConfiguration;
- (id)_unfavoriteConfiguration;
- (void)_createCheckmarkBadgeWithDisplayScale:(double)a3;
- (void)_createFavoriteBadgeWithDisplayScale:(double)a3;
- (void)_createLegacyDisabledFavoriteBadgeWithDisplayScale:(double)a3;
- (void)_createLegacyDisabledUnfavoriteBadgeWithDisplayScale:(double)a3;
- (void)_createLegacyEnabledFavoriteBadgeWithDisplayScale:(double)a3;
- (void)_createLegacyEnabledUnfavoriteBadgeWithDisplayScale:(double)a3;
- (void)_createUnfavoriteBadgeWithDisplayScale:(double)a3;
- (void)_hideAllViews;
- (void)favoriteTapped:(id)a3;
- (void)layoutSubviews;
- (void)setClippingRect:(CGRect)a3;
- (void)setUserData:(id)a3;
- (void)unfavoriteTapped:(id)a3;
@end

@implementation PXPeopleBadgeView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXPeopleBadgeViewDelegate)badgeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeViewDelegate);

  return WeakRetained;
}

- (id)_checkmarkConfiguration
{
  v13[2] = *MEMORY[0x1E69E9840];
  checkmarkConfiguration = self->_checkmarkConfiguration;
  if (!checkmarkConfiguration)
  {
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v13[0] = v5;
    v6 = [(PXPeopleBadgeView *)self _currentTintColor];
    v13[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v4 configurationWithPaletteColors:v7];

    v9 = [(PXPeopleBadgeView *)self _largeConfiguration];
    v10 = [v9 configurationByApplyingConfiguration:v8];
    v11 = self->_checkmarkConfiguration;
    self->_checkmarkConfiguration = v10;

    checkmarkConfiguration = self->_checkmarkConfiguration;
  }

  return checkmarkConfiguration;
}

- (id)_unfavoriteConfiguration
{
  v13[2] = *MEMORY[0x1E69E9840];
  unfavoriteConfiguration = self->_unfavoriteConfiguration;
  if (!unfavoriteConfiguration)
  {
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [MEMORY[0x1E69DC888] systemGray2Color];
    v13[0] = v5;
    v6 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    v13[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v4 configurationWithPaletteColors:v7];

    v9 = [(PXPeopleBadgeView *)self _smallConfiguration];
    v10 = [v9 configurationByApplyingConfiguration:v8];
    v11 = self->_unfavoriteConfiguration;
    self->_unfavoriteConfiguration = v10;

    unfavoriteConfiguration = self->_unfavoriteConfiguration;
  }

  return unfavoriteConfiguration;
}

- (id)_favoriteConfiguration
{
  v13[2] = *MEMORY[0x1E69E9840];
  favoriteConfiguration = self->_favoriteConfiguration;
  if (!favoriteConfiguration)
  {
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [(PXPeopleBadgeView *)self _currentTintColor];
    v13[0] = v5;
    v6 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
    v13[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v4 configurationWithPaletteColors:v7];

    v9 = [(PXPeopleBadgeView *)self _largeConfiguration];
    v10 = [v9 configurationByApplyingConfiguration:v8];
    v11 = self->_favoriteConfiguration;
    self->_favoriteConfiguration = v10;

    favoriteConfiguration = self->_favoriteConfiguration;
  }

  return favoriteConfiguration;
}

- (id)_largeConfiguration
{
  largeConfiguration = self->_largeConfiguration;
  if (!largeConfiguration)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:29.0];
    v5 = self->_largeConfiguration;
    self->_largeConfiguration = v4;

    largeConfiguration = self->_largeConfiguration;
  }

  return largeConfiguration;
}

- (id)_smallConfiguration
{
  smallConfiguration = self->_smallConfiguration;
  if (!smallConfiguration)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:29.0];
    v5 = self->_smallConfiguration;
    self->_smallConfiguration = v4;

    smallConfiguration = self->_smallConfiguration;
  }

  return smallConfiguration;
}

- (id)_currentTintColor
{
  currentTintColor = self->_currentTintColor;
  if (!currentTintColor)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC888];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__PXPeopleBadgeView__currentTintColor__block_invoke;
    v8[3] = &unk_1E773DCE8;
    objc_copyWeak(&v9, &location);
    v5 = [v4 colorWithDynamicProvider:v8];
    v6 = self->_currentTintColor;
    self->_currentTintColor = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    currentTintColor = self->_currentTintColor;
  }

  return currentTintColor;
}

id __38__PXPeopleBadgeView__currentTintColor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tintColor];

  return v2;
}

- (void)setClippingRect:(CGRect)a3
{
  if (!CGRectEqualToRect(a3, *MEMORY[0x1E695F040]))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXPeopleBadgeView.m" lineNumber:221 description:@"Clipping isn't supported"];
  }
}

- (void)setUserData:(id)a3
{
  v10 = a3;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == v10)
  {
  }

  else
  {
    v7 = [(PXPeopleBadgeViewConfiguration *)v5 isEqual:v10];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_userData, a3);
      v8 = [(PXPeopleBadgeViewConfiguration *)v10 badgeViewDelegate];
      [(PXPeopleBadgeView *)self setBadgeViewDelegate:v8];

      [(PXPeopleBadgeView *)self _hideAllViews];
      v9 = [(PXPeopleBadgeViewConfiguration *)v10 state];
      if (v9 <= 3)
      {
        switch(v9)
        {
          case 1:
            [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
            [(PXPeopleBadgeView *)self _createLegacyEnabledFavoriteBadgeWithDisplayScale:?];
            break;
          case 2:
            [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
            [(PXPeopleBadgeView *)self _createLegacyDisabledFavoriteBadgeWithDisplayScale:?];
            break;
          case 3:
            [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
            [(PXPeopleBadgeView *)self _createLegacyEnabledUnfavoriteBadgeWithDisplayScale:?];
            break;
        }
      }

      else if (v9 > 5)
      {
        if (v9 == 6)
        {
          [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
          [(PXPeopleBadgeView *)self _createFavoriteBadgeWithDisplayScale:?];
        }

        else if (v9 == 7)
        {
          [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
          [(PXPeopleBadgeView *)self _createUnfavoriteBadgeWithDisplayScale:?];
        }
      }

      else if (v9 == 4)
      {
        [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
        [(PXPeopleBadgeView *)self _createLegacyDisabledUnfavoriteBadgeWithDisplayScale:?];
      }

      else
      {
        [(PXPeopleBadgeViewConfiguration *)v10 displayScale];
        [(PXPeopleBadgeView *)self _createCheckmarkBadgeWithDisplayScale:?];
      }
    }
  }
}

- (void)unfavoriteTapped:(id)a3
{
  v4 = [(PXPeopleBadgeView *)self badgeViewDelegate];
  [v4 unfavoriteTappedForBadgeView:self];
}

- (void)favoriteTapped:(id)a3
{
  v4 = [(PXPeopleBadgeView *)self badgeViewDelegate];
  [v4 favoriteTappedForBadgeView:self];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PXPeopleBadgeView;
  [(PXPeopleBadgeView *)&v13 layoutSubviews];
  [(PXPeopleBadgeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_legacyFavoriteBackground setFrame:?];
  [(UIButton *)self->_legacyFavoriteButton setFrame:v4, v6, v8, v10];
  [(UIButton *)self->_legacyUnfavoriteButton setFrame:v4, v6, v8, v10];
  [(UIButton *)self->_checkmarkView setFrame:v4, v6, v8, v10];
  [(UIButton *)self->_checkmarkCircle setFrame:v4, v6, v8, v10];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__PXPeopleBadgeView_layoutSubviews__block_invoke;
  v12[3] = &__block_descriptor_64_e16_v16__0__UIView_8l;
  *&v12[4] = v4;
  *&v12[5] = v6;
  *&v12[6] = v8;
  *&v12[7] = v10;
  v11 = _Block_copy(v12);
  v11[2](v11, self->_favoriteButton);
  v11[2](v11, self->_unfavoriteButton);
}

- (void)_hideAllViews
{
  [(UIButton *)self->_legacyFavoriteButton setHidden:1];
  [(UIButton *)self->_legacyFavoriteBackground setHidden:1];
  [(UIButton *)self->_legacyUnfavoriteButton setHidden:1];
  [(UIButton *)self->_checkmarkView setHidden:1];
  [(UIButton *)self->_checkmarkCircle setHidden:1];
  [(UIButton *)self->_favoriteButton setHidden:1];
  unfavoriteButton = self->_unfavoriteButton;

  [(UIButton *)unfavoriteButton setHidden:1];
}

- (id)_createHeartBadgeWithDisplayScale:(double)a3 isFavorite:(BOOL)a4
{
  v6 = !a4;
  if (a4)
  {
    v7 = @"heart.fill";
  }

  else
  {
    v7 = @"heart";
  }

  v8 = &selRef_favoriteTapped_;
  if (v6)
  {
    v8 = &selRef_unfavoriteTapped_;
  }

  v9 = *v8;
  v10 = MEMORY[0x1E69DC738];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
  v12 = [v10 systemButtonWithImage:v11 target:self action:v9];

  v13 = [(PXPeopleBadgeView *)self _smallConfiguration];
  [v12 setPreferredSymbolConfiguration:v13 forImageInState:0];

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setTintColor:v14];

  [v12 setContentHorizontalAlignment:5];
  [v12 setContentVerticalAlignment:1];
  v15 = [v12 layer];
  [v15 setRasterizationScale:a3];

  return v12;
}

- (void)_createUnfavoriteBadgeWithDisplayScale:(double)a3
{
  unfavoriteButton = self->_unfavoriteButton;
  if (!unfavoriteButton)
  {
    v5 = [(PXPeopleBadgeView *)self _createHeartBadgeWithDisplayScale:0 isFavorite:a3];
    v6 = self->_unfavoriteButton;
    self->_unfavoriteButton = v5;

    [(PXPeopleBadgeView *)self addSubview:self->_unfavoriteButton];
    unfavoriteButton = self->_unfavoriteButton;
  }

  [(UIButton *)unfavoriteButton setHidden:0, a3];
  v7 = self->_unfavoriteButton;

  [(UIButton *)v7 setUserInteractionEnabled:1];
}

- (void)_createFavoriteBadgeWithDisplayScale:(double)a3
{
  favoriteButton = self->_favoriteButton;
  if (!favoriteButton)
  {
    v5 = [(PXPeopleBadgeView *)self _createHeartBadgeWithDisplayScale:1 isFavorite:a3];
    v6 = self->_favoriteButton;
    self->_favoriteButton = v5;

    [(PXPeopleBadgeView *)self addSubview:self->_favoriteButton];
    favoriteButton = self->_favoriteButton;
  }

  [(UIButton *)favoriteButton setHidden:0, a3];
  v7 = self->_favoriteButton;

  [(UIButton *)v7 setUserInteractionEnabled:1];
}

- (void)_createCheckmarkBadgeWithDisplayScale:(double)a3
{
  if (!self->_checkmarkView)
  {
    v5 = MEMORY[0x1E69DC738];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    v7 = [v5 systemButtonWithImage:v6 target:0 action:0];
    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = v7;

    v9 = self->_checkmarkView;
    v10 = [(PXPeopleBadgeView *)self _checkmarkConfiguration];
    [(UIButton *)v9 setPreferredSymbolConfiguration:v10 forImageInState:0];

    v11 = [(UIButton *)self->_checkmarkView layer];
    LODWORD(v12) = 1045220557;
    [v11 setShadowOpacity:v12];
    [v11 setShadowOffset:{0.0, 1.0}];
    [v11 setShadowRadius:3.0];
    [v11 setShouldRasterize:1];
    [v11 setRasterizationScale:a3];
    [(PXPeopleBadgeView *)self addSubview:self->_checkmarkView];
  }

  if (!self->_checkmarkCircle)
  {
    v13 = MEMORY[0x1E69DC738];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"circle", a3}];
    v15 = [v13 systemButtonWithImage:v14 target:0 action:0];
    checkmarkCircle = self->_checkmarkCircle;
    self->_checkmarkCircle = v15;

    v17 = self->_checkmarkCircle;
    v18 = [(PXPeopleBadgeView *)self _largeConfiguration];
    [(UIButton *)v17 setPreferredSymbolConfiguration:v18 forImageInState:0];

    v19 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIButton *)self->_checkmarkCircle setTintColor:v19];

    [(PXPeopleBadgeView *)self addSubview:self->_checkmarkCircle];
  }

  [(UIButton *)self->_checkmarkView setHidden:0, a3];
  v20 = self->_checkmarkCircle;

  [(UIButton *)v20 setHidden:0];
}

- (void)_createLegacyDisabledUnfavoriteBadgeWithDisplayScale:(double)a3
{
  [(PXPeopleBadgeView *)self _createLegacyEnabledUnfavoriteBadgeWithDisplayScale:a3];
  legacyUnfavoriteButton = self->_legacyUnfavoriteButton;

  [(UIButton *)legacyUnfavoriteButton setUserInteractionEnabled:0];
}

- (void)_createLegacyEnabledUnfavoriteBadgeWithDisplayScale:(double)a3
{
  legacyUnfavoriteButton = self->_legacyUnfavoriteButton;
  if (!legacyUnfavoriteButton)
  {
    v6 = MEMORY[0x1E69DC738];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.circle.fill"];
    v8 = [v6 systemButtonWithImage:v7 target:self action:sel_unfavoriteTapped_];
    v9 = self->_legacyUnfavoriteButton;
    self->_legacyUnfavoriteButton = v8;

    v10 = self->_legacyUnfavoriteButton;
    v11 = [(PXPeopleBadgeView *)self _unfavoriteConfiguration];
    [(UIButton *)v10 setPreferredSymbolConfiguration:v11 forImageInState:0];

    v12 = [(UIButton *)self->_legacyUnfavoriteButton layer];
    LODWORD(v13) = 1045220557;
    [v12 setShadowOpacity:v13];
    [v12 setShadowOffset:{0.0, 1.0}];
    [v12 setShadowRadius:3.0];
    [v12 setShouldRasterize:1];
    [v12 setRasterizationScale:a3];
    [(PXPeopleBadgeView *)self addSubview:self->_legacyUnfavoriteButton];

    legacyUnfavoriteButton = self->_legacyUnfavoriteButton;
  }

  [(UIButton *)legacyUnfavoriteButton setHidden:0, a3];
  v14 = self->_legacyUnfavoriteButton;

  [(UIButton *)v14 setUserInteractionEnabled:1];
}

- (void)_createLegacyDisabledFavoriteBadgeWithDisplayScale:(double)a3
{
  [(PXPeopleBadgeView *)self _createLegacyEnabledFavoriteBadgeWithDisplayScale:a3];
  [(UIButton *)self->_legacyFavoriteButton setAlpha:0.4];
  legacyFavoriteButton = self->_legacyFavoriteButton;

  [(UIButton *)legacyFavoriteButton setUserInteractionEnabled:0];
}

- (void)_createLegacyEnabledFavoriteBadgeWithDisplayScale:(double)a3
{
  if (!self->_legacyFavoriteBackground)
  {
    v5 = MEMORY[0x1E69DC738];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.fill"];
    v7 = [v5 systemButtonWithImage:v6 target:0 action:0];
    legacyFavoriteBackground = self->_legacyFavoriteBackground;
    self->_legacyFavoriteBackground = v7;

    v9 = self->_legacyFavoriteBackground;
    v10 = [(PXPeopleBadgeView *)self _largeConfiguration];
    [(UIButton *)v9 setPreferredSymbolConfiguration:v10 forImageInState:0];

    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIButton *)self->_legacyFavoriteBackground setTintColor:v11];

    [(PXPeopleBadgeView *)self addSubview:self->_legacyFavoriteBackground];
  }

  if (!self->_legacyFavoriteButton)
  {
    v12 = MEMORY[0x1E69DC738];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"heart.circle.fill"];
    v14 = [v12 systemButtonWithImage:v13 target:self action:sel_favoriteTapped_];
    legacyFavoriteButton = self->_legacyFavoriteButton;
    self->_legacyFavoriteButton = v14;

    v16 = self->_legacyFavoriteButton;
    v17 = [(PXPeopleBadgeView *)self _favoriteConfiguration];
    [(UIButton *)v16 setPreferredSymbolConfiguration:v17 forImageInState:0];

    v18 = [(UIButton *)self->_legacyFavoriteButton layer];
    LODWORD(v19) = 1045220557;
    [v18 setShadowOpacity:v19];
    [v18 setShadowOffset:{0.0, 1.0}];
    [v18 setShadowRadius:3.0];
    [v18 setShouldRasterize:1];
    [v18 setRasterizationScale:a3];
    [(PXPeopleBadgeView *)self addSubview:self->_legacyFavoriteButton];
  }

  [(UIButton *)self->_legacyFavoriteBackground setHidden:0];
  [(UIButton *)self->_legacyFavoriteButton setHidden:0];
  [(UIButton *)self->_legacyFavoriteButton setAlpha:1.0];
  v20 = self->_legacyFavoriteButton;

  [(UIButton *)v20 setUserInteractionEnabled:1];
}

@end