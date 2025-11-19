@interface NCBadgedIconView
- (BOOL)_wantsCustomBadgeBackgroundColor;
- (BOOL)isFeaturingSymbol;
- (NCBadgedIconView)initWithBadgedIconDescription:(id)a3 pointSize:(double)a4;
- (NSArray)requiredVisualStyleCategories;
- (UIColor)dominantColor;
- (double)_subordinateIconDimension;
- (id)_prominentImageView;
- (void)_prominentIconForCurrentInterfaceStyleWithCompletionOnMain:(id)a3;
- (void)_subordinateIconForCurrentInterfaceStyleWithCompletionOnMain:(id)a3;
- (void)_updateVisibleIcons;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)layoutSubviews;
- (void)setBadgedIconDescription:(id)a3;
- (void)setPointSize:(double)a3;
- (void)setShadowEnabled:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateVisualStylingOfProminentImageViewIfSymbolImageWithStyle:(int64_t)a3 visualStylingProvider:(id)a4 outgoingProvider:(id)a5;
@end

@implementation NCBadgedIconView

- (id)_prominentImageView
{
  iconView = self->_iconView;
  v3 = objc_opt_class();
  v4 = iconView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (BOOL)isFeaturingSymbol
{
  v2 = [(NCBadgedIconView *)self _prominentImageView];
  v3 = [v2 image];
  v4 = [v3 isSymbolImage];

  return v4;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NCBadgedIconView;
  [(NCBadgedIconView *)&v8 layoutSubviews];
  [(NCBadgedIconView *)self bounds];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__NCBadgedIconView_layoutSubviews__block_invoke;
  v7[3] = &unk_27836FDF8;
  v7[4] = self;
  v7[5] = v3;
  v7[6] = v4;
  v7[7] = v5;
  v7[8] = v6;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
}

- (void)_updateVisibleIcons
{
  v3 = [(NCBadgedIconView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(NCBadgedIconView *)self traitCollection];
  v6 = [v5 sbh_iconImageStyleConfiguration];

  if ([v6 variant] == 1)
  {
    v4 = 2;
  }

  else if (![v6 variant] || objc_msgSend(v6, "variant") == 3)
  {
    v4 = 1;
  }

  objc_storeStrong(&self->_iconImageStyleConfiguration, v6);
  userInterfaceStyle = self->_userInterfaceStyle;
  if (userInterfaceStyle != v4)
  {
    self->_userInterfaceStyle = v4;
  }

  iconView = self->_iconView;
  v9 = objc_opt_class();
  v10 = iconView;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (userInterfaceStyle == v4 || v12 == 0)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v14 = 0;
  }

  else
  {
    v14 = [(NCBadgedIconView *)self _shouldUpdateProminentIconWhenInterfaceStyleChanges];
  }

  v15 = [(UIView *)v12 image];

  if (v14 || !v15)
  {
    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__NCBadgedIconView__updateVisibleIcons__block_invoke;
    v26[3] = &unk_278371DD8;
    objc_copyWeak(&v27, &location);
    [(NCBadgedIconView *)self _prominentIconForCurrentInterfaceStyleWithCompletionOnMain:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

LABEL_23:
  v16 = userInterfaceStyle != v4 && self->_subordinateIconView && [(NCBadgedIconView *)self _shouldUpdateSubordinateIconWhenInterfaceStyleChanges];
  subordinateIconView = self->_subordinateIconView;
  if (subordinateIconView)
  {
    v18 = [(UIImageView *)subordinateIconView image];
    v19 = v18 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v16 || v19)
  {
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__NCBadgedIconView__updateVisibleIcons__block_invoke_2;
    v24[3] = &unk_278371DD8;
    objc_copyWeak(&v25, &location);
    [(NCBadgedIconView *)self _subordinateIconForCurrentInterfaceStyleWithCompletionOnMain:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  if (self->_badgeTextView && [(NCBadgedIconView *)self _wantsCustomBadgeBackgroundColor])
  {
    v20 = [MEMORY[0x277D75348] systemBackgroundColor];
    v21 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:v4];
    v22 = [v20 resolvedColorWithTraitCollection:v21];

    if (v4 == 2)
    {
      [MEMORY[0x277D661C8] darkAppearance];
    }

    else
    {
      [MEMORY[0x277D661C8] clearLightAppearance];
    }
    v23 = ;
    [(SBIconBadgeView *)self->_badgeTextView setOverrideBadgeBackgroundColor:v22];
    [(SBIconBadgeView *)self->_badgeTextView setOverrideIconImageAppearance:v23];
  }
}

void __39__NCBadgedIconView__updateVisibleIcons__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 58);
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v9 setImage:v10];
  }
}

uint64_t __34__NCBadgedIconView_layoutSubviews__block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!*(v2 + 464))
  {
    v4 = [*(v2 + 424) prominentIconDescription];

    v2 = *v3;
    if (v4)
    {
      v5 = [*(v2 + 424) prominentIconDescription];
      v6 = objc_opt_class();
      v7 = v5;
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = [*(*v3 + 424) prominentIconDescription];
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v9)
      {
        v15 = [NCAvatarView alloc];
        v16 = [*(*v3 + 424) bundleIdentifier];
        v17 = [(NCAvatarView *)v15 initWithBundleIdentifier:v16 communicationContext:v9 pointSize:*(*v3 + 456)];
        v18 = *(*v3 + 464);
        *(*v3 + 464) = v17;
      }

      else if (v14)
      {
        v19 = objc_alloc_init(MEMORY[0x277D755E8]);
        [v19 setContentMode:1];
        v20 = [MEMORY[0x277D75348] labelColor];
        [v19 setTintColor:v20];

        v21 = *(*v3 + 464);
        *(*v3 + 464) = v19;
      }

      else
      {
        v22 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_FAULT))
        {
          __34__NCBadgedIconView_layoutSubviews__block_invoke_cold_1(v3, 424, v22);
        }
      }

      v23 = *(*v3 + 464);
      if (v23)
      {
        [*v3 insertSubview:v23 atIndex:0];
      }

      v2 = *v3;
    }
  }

  if (!*(v2 + 472))
  {
    v24 = [*(v2 + 424) subordinateIconRecipe];

    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v25 setContentMode:1];
      [v25 nc_setPlatterSubordinateIconShadowEnabled:1];
      [*v3 addSubview:v25];
      v26 = *(*v3 + 472);
      *(*v3 + 472) = v25;
    }
  }

  v27 = *v3;
  if (!*(*v3 + 480))
  {
    v28 = [*(v27 + 424) badgeText];
    v29 = [v28 length];

    v27 = *v3;
    if (v29)
    {
      v30 = [*(v27 + 424) badgeText];
      v31 = objc_opt_new();
      if ([*v3 _wantsCustomBadgeBackgroundColor])
      {
        [v31 setStyle:0];
      }

      else
      {
        [v31 setStyle:1];
        v32 = _NCNotificationListGroupName();
        [v31 setMaterialGroupNameBase:v32];
      }

      v33 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
      [v31 setOverrideFont:v33];

      [v31 setOverridePaddingFactor:22.0];
      [v31 setOverrideText:v30];
      [v31 updateShadowWithRadius:2.0 alpha:0.25 imageOutset:2.0];
      [*v3 addSubview:v31];
      v34 = *(*v3 + 480);
      *(*v3 + 480) = v31;

      v27 = *v3;
    }
  }

  [*(v27 + 464) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v35 = *(a1 + 32);
  if (v35[59])
  {
    [v35 _subordinateIconDimension];
    v37 = v36;
    [*(*(a1 + 32) + 472) setFrame:{0.0, 0.0, v37, v37}];
    [*(a1 + 32) _subordinateIconOutsetForSubordinateIconSize:v37];
    [*(*(a1 + 32) + 472) frame];
    [*(a1 + 32) _shouldReverseLayoutDirection];
    SBIconBadgeViewCalculateAccessoryCenter();
    [*(*(a1 + 32) + 472) setCenter:?];
    v35 = *(a1 + 32);
  }

  [v35 _updateVisibleIcons];
  v38 = *(*(a1 + 32) + 480);
  [v38 intrinsicContentSize];
  [*(a1 + 32) _shouldReverseLayoutDirection];
  SBIconBadgeViewCalculateAccessoryCenter();
  return [v38 setCenter:?];
}

- (NCBadgedIconView)initWithBadgedIconDescription:(id)a3 pointSize:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NCBadgedIconView;
  v7 = [(NCBadgedIconView *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_pointSize = a4;
    [(NCBadgedIconView *)v7 setBadgedIconDescription:v6];
  }

  return v8;
}

- (void)setBadgedIconDescription:(id)a3
{
  v17 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(NCBadgedIconDescription *)self->_badgedIconDescription prominentIconDescription];
    v6 = [v17 prominentIconDescription];
    v7 = BSEqualObjects();

    if ((v7 & 1) == 0)
    {
      [(UIView *)self->_iconView removeFromSuperview];
      iconView = self->_iconView;
      self->_iconView = 0;
    }

    v9 = [(NCBadgedIconDescription *)self->_badgedIconDescription subordinateIconRecipe];
    v10 = [v17 subordinateIconRecipe];
    v11 = BSEqualObjects();

    if ((v11 & 1) == 0)
    {
      [(UIImageView *)self->_subordinateIconView removeFromSuperview];
      subordinateIconView = self->_subordinateIconView;
      self->_subordinateIconView = 0;
    }

    v13 = [(NCBadgedIconDescription *)self->_badgedIconDescription badgeText];
    v14 = [v17 badgeText];
    v15 = BSEqualObjects();

    if ((v15 & 1) == 0)
    {
      [(SBIconBadgeView *)self->_badgeTextView removeFromSuperview];
      badgeTextView = self->_badgeTextView;
      self->_badgeTextView = 0;
    }

    objc_storeStrong(&self->_badgedIconDescription, a3);
    [(NCBadgedIconView *)self setNeedsLayout];
  }
}

- (void)setShadowEnabled:(BOOL)a3
{
  if (self->_shadowEnabled != a3)
  {
    self->_shadowEnabled = a3;
    v10 = [(NCBadgedIconView *)self _prominentImageView];
    v5 = [v10 image];
    v6 = [v5 isSymbolImage];

    if ((v6 & 1) == 0)
    {
      v7 = [v10 image];
      v8 = [(NCBadgedIconView *)self traitCollection];
      v9 = [v7 mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];
      [v10 setImage:v9];
    }
  }
}

- (UIColor)dominantColor
{
  v2 = [(NCBadgedIconView *)self _prominentImageView];
  v3 = [v2 image];

  if (v3)
  {
    v4 = _NCDominantColorForImage(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateVisualStylingOfProminentImageViewIfSymbolImageWithStyle:(int64_t)a3 visualStylingProvider:(id)a4 outgoingProvider:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [(NCBadgedIconView *)self _prominentImageView];
  if (v9)
  {
    if ([(NCBadgedIconView *)self isFeaturingSymbol])
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    [(NCBadgedIconView *)self _updateVisualStylingOfView:v9 style:a3 visualStylingProvider:v10 outgoingProvider:v8];
  }

  if (!v12)
  {
    v11 = [MEMORY[0x277D75348] labelColor];
    [v9 setTintColor:v11];
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (void)setPointSize:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_pointSize = a3;

    [(NCBadgedIconView *)self setNeedsLayout];
  }
}

- (NSArray)requiredVisualStyleCategories
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIImageView *)self->_subordinateIconView requiredVisualStyleCategories];
    [v3 addObjectsFromArray:v4];
  }

  v5 = [(NCBadgedIconView *)self _prominentImageView];

  if (v5)
  {
    [v3 addObject:&unk_2830155A8];
  }

  v6 = [v3 allObjects];

  return v6;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v11 = a3;
  v6 = [(NCBadgedIconView *)self requiredVisualStyleCategories];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [v6 containsObject:v7];

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIImageView *)self->_subordinateIconView setVisualStylingProvider:v11 forCategory:a4];
  }

  v9 = [(NCBadgedIconView *)self _prominentImageView];
  v10 = v9;
  if (a4 == 1 && v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 setVisualStylingProvider:v11 forCategory:1];
  }
}

void __39__NCBadgedIconView__updateVisibleIcons__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[59] setImage:v5];
  }
}

- (double)_subordinateIconDimension
{
  v2 = BSFloatLessThanFloat();
  result = 16.0;
  if (!v2)
  {
    return 56.0;
  }

  return result;
}

- (void)_prominentIconForCurrentInterfaceStyleWithCompletionOnMain:(id)a3
{
  v4 = a3;
  v5 = [(NCBadgedIconDescription *)self->_badgedIconDescription prominentIconDescription];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    pointSize = self->_pointSize;
    userInterfaceStyle = self->_userInterfaceStyle;
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__NCBadgedIconView__prominentIconForCurrentInterfaceStyleWithCompletionOnMain___block_invoke;
    v12[3] = &unk_278371E00;
    objc_copyWeak(v15, &location);
    v13 = v9;
    v15[1] = *&pointSize;
    v15[2] = userInterfaceStyle;
    v14 = v4;
    [v13 imageForPointSize:userInterfaceStyle interfaceStyle:v12 completionOnMain:pointSize];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

void __79__NCBadgedIconView__prominentIconForCurrentInterfaceStyleWithCompletionOnMain___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[53] prominentIconDescription];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 isEqual:*(a1 + 32)];
    if (v12)
    {
      if (*(a1 + 56) == *(v6 + 57) && (*(a1 + 64) == v6[51] || (v13 = v6[54]) != 0 && ([v13 BOOLValue] & 1) == 0))
      {
        v14 = [MEMORY[0x277CCABB0] numberWithBool:a3];
        v15 = v6[54];
        v6[54] = v14;

        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

- (void)_subordinateIconForCurrentInterfaceStyleWithCompletionOnMain:(id)a3
{
  v4 = a3;
  v5 = [(NCBadgedIconDescription *)self->_badgedIconDescription subordinateIconRecipe];
  if (v5)
  {
    [(NCBadgedIconView *)self _subordinateIconDimension];
    v7 = v6;
    userInterfaceStyle = self->_userInterfaceStyle;
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__NCBadgedIconView__subordinateIconForCurrentInterfaceStyleWithCompletionOnMain___block_invoke;
    v9[3] = &unk_278371E00;
    objc_copyWeak(v12, &location);
    v10 = v5;
    v12[1] = v7;
    v12[2] = userInterfaceStyle;
    v11 = v4;
    [v10 imageForPointSize:userInterfaceStyle interfaceStyle:v9 completionOnMain:*&v7];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __81__NCBadgedIconView__subordinateIconForCurrentInterfaceStyleWithCompletionOnMain___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [*(WeakRetained + 53) subordinateIconRecipe];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = *(a1 + 56);
      [v6 _subordinateIconDimension];
      if (v8 == v9)
      {
        if (*(a1 + 64) == v6[51])
        {

LABEL_8:
          v12 = [MEMORY[0x277CCABB0] numberWithBool:a3];
          v13 = v6[55];
          v6[55] = v12;

          (*(*(a1 + 40) + 16))();
          goto LABEL_10;
        }

        v10 = v6[55];
        if (v10)
        {
          v11 = [v10 BOOLValue];

          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_8;
        }
      }
    }
  }

LABEL_10:
}

- (BOOL)_wantsCustomBadgeBackgroundColor
{
  v2 = [MEMORY[0x277D66370] instancesRespondToSelector:sel_setOverrideBadgeBackgroundColor_];
  if (v2)
  {
    v3 = MEMORY[0x277D66370];

    LOBYTE(v2) = [v3 instancesRespondToSelector:sel_setOverrideIconImageAppearance_];
  }

  return v2;
}

void __34__NCBadgedIconView_layoutSubviews__block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + a2);
  v4 = a3;
  v5 = [v3 prominentIconDescription];
  v6 = 138543362;
  v7 = v5;
  _os_log_fault_impl(&dword_21E77E000, v4, OS_LOG_TYPE_FAULT, "Unknown type of NCProminentIcon object %{public}@", &v6, 0xCu);
}

@end