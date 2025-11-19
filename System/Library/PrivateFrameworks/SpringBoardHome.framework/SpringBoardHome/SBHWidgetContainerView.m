@interface SBHWidgetContainerView
- (SBHWidgetContainerView)initWithGridSizeClass:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 applicationName:(id)a5 logIdentifier:(id)a6;
- (UIView)widgetView;
- (id)_fontWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 maxSizeCategory:(id)a5;
- (void)_reloadScreenTimeExpirationUI;
- (void)_updateIconEffect;
- (void)_updateScreenTimeLockoutView;
- (void)layoutSubviews;
- (void)setBackgroundView:(id)a3;
- (void)setBlockedForScreenTimeExpiration:(BOOL)a3;
- (void)setClipsToBounds:(BOOL)a3;
@end

@implementation SBHWidgetContainerView

- (void)_updateScreenTimeLockoutView
{
  blockedForScreenTimeExpiration = self->_blockedForScreenTimeExpiration;
  screenTimeLockoutView = self->_screenTimeLockoutView;
  if (blockedForScreenTimeExpiration)
  {
    if (!screenTimeLockoutView)
    {
      v5 = [MEMORY[0x1E69AE158] materialViewWithRecipe:51];
      v6 = self->_screenTimeLockoutView;
      self->_screenTimeLockoutView = v5;

      [(MTMaterialView *)self->_screenTimeLockoutView setUserInteractionEnabled:1];
      [(SBHWidgetContainerView *)self addSubview:self->_screenTimeLockoutView];
      screenTimeLockoutView = self->_screenTimeLockoutView;
    }

    v7 = [(MTMaterialView *)screenTimeLockoutView visualStylingProviderForCategory:1];
    v8 = *MEMORY[0x1E69DDC28];
    gridSizeClass = self->_gridSizeClass;
    if (gridSizeClass == @"SBHIconGridSizeClassMedium" || [(__CFString *)gridSizeClass isEqualToString:@"SBHIconGridSizeClassMedium"])
    {
      v10 = *MEMORY[0x1E69DDC38];

      v8 = v10;
    }

    if (!self->_titleLabel)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      titleLabel = self->_titleLabel;
      self->_titleLabel = v11;

      v13 = self->_titleLabel;
      v14 = [(SBHWidgetContainerView *)self _fontWithTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2 maxSizeCategory:v8];
      [(UILabel *)v13 setFont:v14];

      v15 = self->_titleLabel;
      v16 = SBHBundle();
      v17 = [v16 localizedStringForKey:@"WIDGET_SCREENTIME_TIME_LIMIT_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      [(UILabel *)v15 setText:v17];

      [(UILabel *)self->_titleLabel setTextAlignment:1];
      [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.5];
      [(UILabel *)self->_titleLabel setNumberOfLines:1];
      [v7 automaticallyUpdateView:self->_titleLabel withStyle:0];
      [(MTMaterialView *)self->_screenTimeLockoutView addSubview:self->_titleLabel];
    }

    v18 = [SBHIconGridSizeClassSet alloc];
    v19 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", @"SBHIconGridSizeClassExtraLarge", @"SBHIconGridSizeClassNewsLargeTall", 0}];
    v20 = [(SBHIconGridSizeClassSet *)v18 initWithGridSizeClasses:v19];

    if ([(SBHIconGridSizeClassSet *)v20 containsGridSizeClass:self->_gridSizeClass]&& [(NSString *)self->_applicationName length])
    {
      descriptionLabel = self->_descriptionLabel;
      if (!descriptionLabel)
      {
        v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v23 = self->_descriptionLabel;
        self->_descriptionLabel = v22;

        v24 = self->_descriptionLabel;
        v25 = [(SBHWidgetContainerView *)self _fontWithTextStyle:*MEMORY[0x1E69DDD28] symbolicTraits:0 maxSizeCategory:v8];
        [(UILabel *)v24 setFont:v25];

        [(UILabel *)self->_descriptionLabel setTextAlignment:1];
        [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
        [(UILabel *)self->_descriptionLabel setMinimumScaleFactor:0.5];
        [(UILabel *)self->_descriptionLabel setNumberOfLines:3];
        [(MTMaterialView *)self->_screenTimeLockoutView addSubview:self->_descriptionLabel];
        descriptionLabel = self->_descriptionLabel;
      }

      v26 = MEMORY[0x1E696AEC0];
      v27 = SBHBundle();
      v28 = [v27 localizedStringForKey:@"WIDGET_SCREENTIME_TIME_LIMIT_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v29 = [v26 stringWithFormat:v28, self->_applicationName];
      [(UILabel *)descriptionLabel setText:v29];
    }

    else
    {
      [(UILabel *)self->_descriptionLabel removeFromSuperview];
      v32 = self->_descriptionLabel;
      self->_descriptionLabel = 0;

      [(UILabel *)self->_titleLabel setNumberOfLines:2];
    }
  }

  else
  {
    [(MTMaterialView *)screenTimeLockoutView removeFromSuperview];
    v30 = self->_screenTimeLockoutView;
    self->_screenTimeLockoutView = 0;

    [(UILabel *)self->_titleLabel removeFromSuperview];
    v31 = self->_titleLabel;
    self->_titleLabel = 0;

    [(UILabel *)self->_descriptionLabel removeFromSuperview];
    v7 = self->_descriptionLabel;
    self->_descriptionLabel = 0;
  }

  [(SBHWidgetContainerView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__SBHWidgetContainerView_layoutSubviews__block_invoke;
  v2[3] = &unk_1E8088C90;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void *__40__SBHWidgetContainerView_layoutSubviews__block_invoke(uint64_t a1)
{
  v24.receiver = *(a1 + 32);
  v24.super_class = SBHWidgetContainerView;
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 488));
  [WeakRetained setFrame:{v3, v5, v7, v9}];

  v11 = *(a1 + 32);
  v12 = v11[63];
  if (v12)
  {
    UIRectGetCenter();
    [v12 setCenter:?];
    [*(*(a1 + 32) + 504) setBounds:{v3, v5, v7, v9}];
    v13 = [*(*(a1 + 32) + 504) superview];
    v14 = *(a1 + 32);

    if (v13 != v14)
    {
      [*(a1 + 32) addSubview:*(*(a1 + 32) + 504)];
    }

    [*(a1 + 32) sendSubviewToBack:*(*(a1 + 32) + 504)];
    v11 = *(a1 + 32);
  }

  v15 = v11[62];
  if (v15)
  {
    v23 = v3;
    [v15 setFrame:{v3, v5, v7, v9}];
    [*(*(a1 + 32) + 496) bounds];
    UIRectInsetEdges();
    v17 = v16;
    v19 = v18;
    [*(*(a1 + 32) + 448) sizeThatFits:{v16, v18}];
    [*(*(a1 + 32) + 456) sizeThatFits:{v17, v19}];
    BSRectWithSize();
    UIRectCenteredRect();
    UIRectContainInRect();
    BSRectWithSize();
    UIRectCenteredRect();
    UIRectContainInRect();
    v20 = *(*(a1 + 32) + 448);
    UIRectIntegralWithScale();
    [v20 setFrame:?];
    v21 = *(*(a1 + 32) + 456);
    UIRectIntegralWithScale();
    [v21 setFrame:?];
    [*(a1 + 32) bringSubviewToFront:*(*(a1 + 32) + 496)];
    v11 = *(a1 + 32);
    v3 = v23;
  }

  result = v11[55];
  if (result)
  {
    [result setFrame:{v3, v5, v7, v9}];
    return [*(a1 + 32) bringSubviewToFront:*(*(a1 + 32) + 440)];
  }

  return result;
}

- (SBHWidgetContainerView)initWithGridSizeClass:(id)a3 iconImageInfo:(SBIconImageInfo *)a4 applicationName:(id)a5 logIdentifier:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v34[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v32.receiver = self;
  v32.super_class = SBHWidgetContainerView;
  v20 = [(SBHWidgetContainerView *)&v32 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v20)
  {
    v21 = [v17 copy];
    gridSizeClass = v20->_gridSizeClass;
    v20->_gridSizeClass = v21;

    v20->_iconImageInfo.size.width = v15;
    v20->_iconImageInfo.size.height = v14;
    v20->_iconImageInfo.scale = v13;
    v20->_iconImageInfo.continuousCornerRadius = v12;
    v23 = [(SBIconImageInfo *)v18 copy];
    applicationName = v20->_applicationName;
    v20->_applicationName = v23;

    v20->_lastRequestedClipToBoundsValue = 0;
    objc_storeStrong(&v20->_logIdentifier, a5);
    [(SBHWidgetContainerView *)v20 setAutoresizingMask:18];
    [(SBHWidgetContainerView *)v20 setAutoresizesSubviews:1];
    v25 = objc_opt_self();
    v34[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v27 = [(SBHWidgetContainerView *)v20 registerForTraitChanges:v26 withAction:sel__reloadScreenTimeExpirationUI];

    v28 = objc_opt_self();
    v33 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v30 = [(SBHWidgetContainerView *)v20 registerForTraitChanges:v29 withAction:sel__updateIconEffect];

    [(SBHWidgetContainerView *)v20 _updateIconEffect];
  }

  return v20;
}

- (void)setClipsToBounds:(BOOL)a3
{
  self->_lastRequestedClipToBoundsValue = a3;
  v5 = a3 || self->_requiresClippingToBounds || self->_blockedForScreenTimeExpiration;
  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBHWidgetContainerView;
  [(SBHWidgetContainerView *)&v6 setClipsToBounds:v5];
}

- (void)setBlockedForScreenTimeExpiration:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_blockedForScreenTimeExpiration != a3)
  {
    v5 = SBLogWidgets();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      blockedForScreenTimeExpiration = self->_blockedForScreenTimeExpiration;
      v8 = 138543618;
      v9 = logIdentifier;
      v10 = 1024;
      v11 = blockedForScreenTimeExpiration;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Updating blockedForScreenTimeExpiration to %{BOOL}u", &v8, 0x12u);
    }
  }

  self->_blockedForScreenTimeExpiration = a3;
  [(SBHWidgetContainerView *)self _updateScreenTimeLockoutView];
  [(SBHWidgetContainerView *)self setClipsToBounds:self->_lastRequestedClipToBoundsValue];
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  if (([(UIView *)self->_backgroundView isEqual:?]& 1) == 0)
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAutoresizingMask:0];
    [(UIView *)self->_backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    [(SBHWidgetContainerView *)self bounds];
    [v5 setFrame:?];
    [(SBHWidgetContainerView *)self setNeedsLayout];
  }
}

- (id)_fontWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 maxSizeCategory:(id)a5
{
  v5 = *&a4;
  v8 = MEMORY[0x1E69DD1B8];
  v9 = a5;
  v10 = a3;
  v11 = [(SBHWidgetContainerView *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = SBHContentSizeCategoryClip(v12, *MEMORY[0x1E69DDC68], v9);

  v14 = [v8 traitCollectionWithPreferredContentSizeCategory:v13];

  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:v14];

  v16 = [v15 fontDescriptorWithSymbolicTraits:v5];
  v17 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:0.0];

  return v17;
}

- (void)_reloadScreenTimeExpirationUI
{
  if (self->_blockedForScreenTimeExpiration)
  {
    [(SBHWidgetContainerView *)self setBlockedForScreenTimeExpiration:0];

    [(SBHWidgetContainerView *)self setBlockedForScreenTimeExpiration:1];
  }
}

- (void)_updateIconEffect
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;

  v4 = [(SBHWidgetContainerView *)self traitCollection];
  v9 = [v4 sbh_iconEffect];

  v5 = v9;
  if (v9)
  {
    v6 = [v9 makeNewEffectView];
    [(SBHWidgetContainerView *)self bounds];
    [(UIView *)v6 setFrame:?];
    [(UIView *)v6 _setContinuousCornerRadius:self->_iconImageInfo.continuousCornerRadius];
    v7 = self->_effectView;
    self->_effectView = v6;
    v8 = v6;

    [(SBHWidgetContainerView *)self addSubview:v8];
    v5 = v9;
  }
}

- (UIView)widgetView
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetView);

  return WeakRetained;
}

@end