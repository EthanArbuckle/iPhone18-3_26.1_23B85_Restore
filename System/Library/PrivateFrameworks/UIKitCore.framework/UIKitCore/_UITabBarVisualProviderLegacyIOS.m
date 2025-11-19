@interface _UITabBarVisualProviderLegacyIOS
- (CGRect)_layoutRegion;
- (CGRect)_shadowFrameForBounds:(CGRect)a3 height:(double)a4;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)a3;
- (id)_preferredFocusedViewCarplay;
- (id)_preferredFocusedViewiOS;
- (id)_shim_compatibilityBackgroundView;
- (id)createViewForTabBarItem:(id)a3;
- (id)exchangeItem:(id)a3 withItem:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)preferredFocusedView;
- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4;
- (int64_t)_styleForTraitCollection:(id)a3;
- (void)_applyAppearanceCustomizationsToItem:(id)a3;
- (void)_configureItems:(id)a3;
- (void)_layoutTabBarItems;
- (void)_shim_setAccessoryView:(id)a3;
- (void)_shim_setCustomBackgroundView:(id)a3;
- (void)_shim_setShadowAlpha:(double)a3;
- (void)_shim_setShadowHidden:(BOOL)a3;
- (void)_shim_updateTabBarItemView:(id)a3;
- (void)_updateAccessoryView;
- (void)_updateAppearanceForTransitionFromItem:(id)a3 toItem:(id)a4;
- (void)_updateBackgroundAnimated:(BOOL)a3;
- (void)_updateBackgroundLegacy;
- (void)_updateBackgroundModern;
- (void)changeItemsTo:(id)a3 removingItems:(id)a4 selectedItem:(id)a5 oldSelectedItem:(id)a6 animate:(BOOL)a7;
- (void)changeSelectedItem:(id)a3 fromItem:(id)a4;
- (void)layoutSubviews;
- (void)prepare;
- (void)setMinimumWidthForHorizontalLayout:(double)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUseModernAppearance:(BOOL)a3;
- (void)teardown;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateArchivedSubviews:(id)a3;
- (void)updateBackgroundGroupName;
@end

@implementation _UITabBarVisualProviderLegacyIOS

- (void)prepare
{
  v11.receiver = self;
  v11.super_class = _UITabBarVisualProviderLegacyIOS;
  [(_UITabBarVisualProvider *)&v11 prepare];
  [(UIView *)self->super._tabBar bounds];
  v7 = [[_UIBarBackground alloc] initWithFrame:v3, v4, v5, v6];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;

  [(_UIBarBackground *)self->_backgroundView setTopAligned:0];
  v9 = [[UIPointerInteraction alloc] initWithDelegate:self];
  pointerInteraction = self->_pointerInteraction;
  self->_pointerInteraction = v9;

  [(UIView *)self->super._tabBar addInteraction:self->_pointerInteraction];
}

- (CGRect)_layoutRegion
{
  [(UIView *)self->super._tabBar bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView frame];
    v8 = v8 - v12;
    tabBar = self->super._tabBar;
    if ((*(&tabBar->super._viewFlags + 18) & 0x40) != 0)
    {
      v4 = v4 + v12;
    }
  }

  else
  {
    tabBar = self->super._tabBar;
  }

  v14 = [(UIView *)tabBar traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 3)
  {
    [(UIView *)self->super._tabBar safeAreaInsets];
    v17 = v16;
    if (v16 != 0.0)
    {
      v18 = +[UIDevice currentDevice];
      v19 = [v18 userInterfaceIdiom];

      if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v17 = _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(self->super._tabBar, 0);
      }
    }

    v10 = v10 - v17;
  }

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(UIView *)self->super._tabBar traitCollection];
  self->_style = [(_UITabBarVisualProviderLegacyIOS *)self _styleForTraitCollection:v3];

  [(_UITabBarVisualProviderLegacyIOS *)self _layoutTabBarItems];
  [(_UITabBarVisualProviderLegacyIOS *)self _updateAccessoryView];
  if (![(UITabBar *)self->super._tabBar _suspendBackgroundUpdates])
  {

    [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundAnimated:0];
  }
}

- (void)_layoutTabBarItems
{
  v3 = [(UITabBar *)self->super._tabBar items];
  if ([v3 count])
  {
    if (!self->_useModernAppearance)
    {
      v8 = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
      v9 = [(UITabBar *)self->super._tabBar itemPositioning];
      [(UITabBar *)self->super._tabBar itemWidth];
      v11 = v10;
      [(UITabBar *)self->super._tabBar itemSpacing];
      v13 = v12;
      if (!dyld_program_sdk_at_least() || self->_style == 3)
      {
        v55 = 0;
        v56 = 0;
        v52 = 0;
LABEL_27:
        [(_UITabBarVisualProviderLegacyIOS *)self _layoutRegion];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = 0.0;
        if (v8 && ([v8 _isResizable] & 1) == 0)
        {
          [v8 size];
          v29 = v30;
        }

        v53 = v8;
        v31 = [(UIView *)self->super._tabBar traitCollection];
        v32 = [v3 count];
        style = self->_style;
        v34 = style - 1;
        v54 = (style - 1) < 2;
        v35 = 0;
        v36 = [v31 horizontalSizeClass] == 2;
        v37 = style == 3;
        if (style == 3)
        {
          v36 = 0;
        }

        if (v9 == UITabBarItemPositioningAutomatic && v36 && v29 > 0.0)
        {
          v38 = v29 * v32;
          v35 = v38 <= v26 && v38 > v26 - (10 * v32);
        }

        if (v9 == UITabBarItemPositioningFill || v35 || !v36 || v26 <= (110 * v32 - 30) || [v31 userInterfaceIdiom] != 1)
        {
          if (v9 == UITabBarItemPositioningCentered)
          {
            v40 = 80.0;
            if (v11 > 0.0)
            {
              v40 = v11;
            }

            v41 = 30.0;
            if (v13 > 0.0)
            {
              v41 = v13;
            }

            v39 = v40 * v32 + v41 * (v32 - 1) < v26;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 1;
        }

        v42 = v11 > 0.0;
        v43 = v11 > 0.0 && v39;
        v74 = 0;
        v75 = &v74;
        v76 = 0x2020000000;
        v77 = 0;
        v72[0] = 0;
        v72[1] = v72;
        v72[2] = 0x2020000000;
        v73 = 0;
        if (!self->_accessoryView)
        {
          v24 = 0.0;
        }

        [(_UITabBarVisualProviderLegacyIOS *)self _configureItems:v3];
        if (v34 > 1)
        {
          if (v35)
          {
            v75[3] = v29;
            v44 = round((v26 - v29 * v32) / v32);
            v24 = floor(v44 * 0.5) + v24;
          }

          else
          {
            if (v39)
            {
              v48 = 80.0;
              if (v11 > 0.0)
              {
                v48 = v11;
              }

              v75[3] = v48;
              if (v13 <= 0.0)
              {
                v44 = 30.0;
              }

              else
              {
                v44 = v13;
              }

              v24 = round(v26 * 0.5 - (v48 * v32 + v44 * (v32 - 1)) * 0.5) + v24;
              v47 = 0.0;
              v43 = v42;
              goto LABEL_69;
            }

            v43 = 0;
            v75[3] = v26 / v32;
            v44 = 0.0;
          }

          v47 = 0.0;
        }

        else
        {
          v44 = 0.0;
          [(UITabBar *)self->super._tabBar _totalDimensionForItems:v3 spacing:0.0 dimension:v75[3] scaleFactor:1.0];
          v46 = v26 - v45;
          v47 = round((v26 - v45) / (v32 + 1));
          v24 = v24 + floor((v46 - v47 * v32) * 0.5);
        }

LABEL_69:
        v71[0] = 0;
        v71[1] = v71;
        v71[2] = 0x2020000000;
        *&v71[3] = v24;
        v49 = *(&self->super._tabBar->super._viewFlags + 2) >> 21;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __54___UITabBarVisualProviderLegacyIOS__layoutTabBarItems__block_invoke;
        v57[3] = &unk_1E70F8D28;
        v68 = v54;
        v61 = &v74;
        v64 = v47;
        v50 = v56;
        v58 = v50;
        v51 = v55;
        v65 = v28;
        v66 = v44;
        v67 = v24;
        v62 = v71;
        v63 = v72;
        v69 = v37;
        v70 = v43;
        v59 = v51;
        v60 = self;
        [v3 enumerateObjectsWithOptions:v49 & 2 usingBlock:v57];

        _Block_object_dispose(v71, 8);
        _Block_object_dispose(v72, 8);
        _Block_object_dispose(&v74, 8);

        goto LABEL_70;
      }

      v7 = [(UITabBar *)self->super._tabBar barTintColor];
      v14 = [(UITabBar *)self->super._tabBar unselectedItemTintColor];
      if (v7 | v14)
      {
        v17 = v14;
        v55 = 0;
        v56 = 0;
        v52 = 0;
LABEL_26:

        goto LABEL_27;
      }

      if ([(UITabBar *)self->super._tabBar barStyle]== UIBarStyleBlack)
      {
        v15 = 20;
      }

      else
      {
        v15 = 10;
      }

      v16 = [UIBlurEffect effectWithStyle:v15];
      v55 = [UIVibrancyEffect effectForBlurEffect:v16 style:4];
      v56 = 0;
      v17 = 0;
      v7 = 0;
      v52 = 0;
LABEL_25:

      goto LABEL_26;
    }

    if (_UIBarsApplyChromelessEverywhere())
    {
      [(_UITabBarVisualProviderLegacyIOS *)self backgroundTransitionProgress];
      if (v4 > 0.5)
      {
        v5 = [(UITabBar *)self->super._tabBar selectedItem];
        v6 = [v5 scrollEdgeAppearance];
        if (v6)
        {
          v7 = v6;
LABEL_21:

          goto LABEL_22;
        }

        v7 = [(UITabBar *)self->super._tabBar scrollEdgeAppearance];

        if (v7)
        {
LABEL_22:
          v17 = [v7 _tabLayoutAppearanceData];
          v52 = [v17 selectionIndicatorTintColor];
          v8 = [v17 selectionIndicatorImage];
          v9 = [v17 itemPositioning];
          [v17 itemWidth];
          v11 = v21;
          [v17 itemSpacing];
          v13 = v22;
          v56 = [v7 _dataForItemStyle:self->_style];
          if (self->_style == 3)
          {
            v55 = 0;
            goto LABEL_26;
          }

          v16 = [v7 _backgroundData];
          v55 = [v16 tabBarVibrancyEffect];
          goto LABEL_25;
        }
      }
    }

    v5 = [(UITabBar *)self->super._tabBar selectedItem];
    v18 = [v5 standardAppearance];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [(UITabBar *)self->super._tabBar standardAppearance];
    }

    v7 = v20;

    goto LABEL_21;
  }

LABEL_70:
}

- (void)_updateAccessoryView
{
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(UIView *)accessoryView frame];
    v5 = v4;
    [(_UITabBarVisualProviderLegacyIOS *)self _layoutRegion];
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    MaxX = 0.0;
    if ((*(&self->super._tabBar->super._viewFlags + 18) & 0x40) == 0)
    {
      MaxX = CGRectGetMaxX(*&v6);
    }

    v19.origin.x = v10;
    v19.origin.y = v11;
    v19.size.width = v12;
    v19.size.height = v13;
    MinY = CGRectGetMinY(v19);
    v20.origin.x = v10;
    v20.origin.y = v11;
    v20.size.width = v12;
    v20.size.height = v13;
    Height = CGRectGetHeight(v20);
    v17 = self->_accessoryView;

    [(UIView *)v17 setFrame:MaxX, MinY, v5, Height];
  }
}

- (void)_updateBackgroundLegacy
{
  v3 = self->_backgroundViewLayout;
  if (!v3)
  {
    v3 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
    backgroundViewLayout = self->_backgroundViewLayout;
    self->_backgroundViewLayout = &v3->super;
  }

  v5 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [v5 userInterfaceIdiom]);

  v6 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [v6 userInterfaceStyle]);

  v7 = [(UITabBar *)self->super._tabBar isTranslucent];
  v8 = [(UITabBar *)self->super._tabBar _effectiveBarTintColor];
  v9 = [(UITabBar *)self->super._tabBar backgroundImage];
  v10 = [(UITabBar *)self->super._tabBar barStyle];
  v11 = [(UITabBar *)self->super._tabBar backgroundEffects];
  if (v11)
  {
    [(_UIBarBackgroundLayoutLegacy *)v3 configureWithEffects:v11];
  }

  else if (v9)
  {
    [v9 size];
    v13 = v12;
    if (([v9 _isResizable] & 1) == 0)
    {
      v14 = [v9 stretchableImageWithLeftCapWidth:0 topCapHeight:(v13 + -1.0)];

      v9 = v14;
    }

    v19 = 0;
    [v9 _isInvisibleAndGetIsTranslucent:&v19];
    if (v7)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:v9 forceTranslucent:(v19 & 1) == 0];
    }

    else if (v8)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:v9 forceOpaque:v19 backgroundTintColor:v8];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:v9 forceOpaque:v19 barStyle:v10];
    }

    v17 = [(UITabBar *)self->super._tabBar shadowImage];
    if (v17)
    {
      v18 = v17;
      [(_UIBarBackgroundLayoutLegacy *)v3 configureShadowImage:v17];

      goto LABEL_6;
    }
  }

  else
  {
    v15 = [(UIView *)self->super._tabBar _screen];
    v16 = [v15 _userInterfaceIdiom];

    if (v16 == 3)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureAsTransparent];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureEffectForStyle:v10 backgroundTintColor:v8 forceOpaque:!v7];
    }

    v9 = 0;
  }

  [(_UIBarBackgroundLayoutLegacy *)v3 configureShadowForBarStyle:v10];
LABEL_6:
}

- (void)updateBackgroundGroupName
{
  v5 = [(UIView *)self->super._tabBar traitCollection];
  v3 = objc_opt_self();
  v4 = [v5 objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (void)_updateBackgroundModern
{
  p_super = self->_backgroundViewLayout;
  if (!p_super)
  {
    v3 = objc_alloc_init(_UIBarBackgroundLayoutModern);
    backgroundViewLayout = self->_backgroundViewLayout;
    p_super = &v3->super;
    self->_backgroundViewLayout = &v3->super;
  }

  v5 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](p_super, "setInterfaceIdiom:", [v5 userInterfaceIdiom]);

  v6 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](p_super, "setInterfaceStyle:", [v6 userInterfaceStyle]);

  LODWORD(v6) = _UIBarsApplyChromelessEverywhere();
  v7 = [(UITabBar *)self->super._tabBar selectedItem];
  v8 = [v7 standardAppearance];
  v9 = v8;
  if (!v6)
  {
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [(UITabBar *)self->super._tabBar standardAppearance];
    }

    v10 = v11;

    v16 = [v10 _backgroundData];
    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:v16];
    goto LABEL_16;
  }

  if (v8)
  {
    v10 = [v8 _backgroundData];
  }

  else
  {
    v12 = [(UITabBar *)self->super._tabBar standardAppearance];
    v10 = [v12 _backgroundData];
  }

  v13 = [(UITabBar *)self->super._tabBar selectedItem];
  v14 = [v13 scrollEdgeAppearance];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [(UITabBar *)self->super._tabBar scrollEdgeAppearance];

    if (!v15)
    {
      v16 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
      goto LABEL_15;
    }
  }

  v16 = [v15 _backgroundData];

LABEL_15:
  [(_UIBarBackgroundLayout *)p_super setBackgroundData1:v10];
  [(_UIBarBackgroundLayout *)p_super setBackgroundData2:v16];
LABEL_16:
}

- (void)teardown
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = 0;

  v5.receiver = self;
  v5.super_class = _UITabBarVisualProviderLegacyIOS;
  [(_UITabBarVisualProvider *)&v5 teardown];
}

- (void)_updateAppearanceForTransitionFromItem:(id)a3 toItem:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_useModernAppearance)
  {
    v8 = [(UITabBar *)self->super._tabBar standardAppearance];
    v9 = [v6 standardAppearance];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;

    v13 = [v7 standardAppearance];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v8;
    }

    v16 = v15;

    v17 = [v12 _backgroundData];
    v18 = [v16 _backgroundData];
    v19 = v17;
    v20 = v18;
    v21 = v20;
    v49 = v7;
    v50 = v6;
    v51 = v8;
    if (v19 == v20)
    {

      goto LABEL_25;
    }

    if (v19 && v20)
    {
      v22 = [v19 isEqual:v20];

      if (v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (![(UITabBar *)self->super._tabBar _suspendBackgroundUpdates])
    {
      [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundAnimated:0];
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v23 = [(UITabBar *)self->super._tabBar items];
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v57;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [(UITabBarItem *)*(*(&v56 + 1) + 8 * i) _tabBarButton];
          v29 = [v16 _backgroundData];
          v30 = [v29 tabBarVibrancyEffect];
          [v28 setItemVibrantEffect:v30];
        }

        v25 = [v23 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v25);
    }

    v7 = v49;
    v6 = v50;
LABEL_25:
    v31 = [v12 _tabLayoutAppearanceData];
    v32 = [v16 _tabLayoutAppearanceData];
    v33 = v31;
    v34 = v32;
    v35 = v34;
    if (v33 == v34)
    {

      goto LABEL_33;
    }

    if (v33 && v34)
    {
      v36 = [v33 isEqual:v34];

      if (v36)
      {
LABEL_33:
        v37 = [v12 _dataForItemStyle:self->_style];
        v38 = [v16 _dataForItemStyle:self->_style];
        v39 = v37;
        v40 = v38;
        v41 = v40;
        if (v39 != v40)
        {
          if (v39 && v40)
          {
            v42 = [v39 isEqual:v40];

            if (v42)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v43 = [(UITabBar *)self->super._tabBar items];
          v44 = [v43 countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v53;
            do
            {
              for (j = 0; j != v45; ++j)
              {
                if (*v53 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = [(UITabBarItem *)*(*(&v52 + 1) + 8 * j) _tabBarButton];
                [v48 setItemAppearanceData:v41];
              }

              v45 = [v43 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v45);
          }

          [(UIView *)self->super._tabBar setNeedsLayout];
          v7 = v49;
          v6 = v50;
          goto LABEL_48;
        }

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
    }

    [(UIView *)self->super._tabBar setNeedsLayout];
    goto LABEL_33;
  }

LABEL_49:
}

- (void)changeItemsTo:(id)a3 removingItems:(id)a4 selectedItem:(id)a5 oldSelectedItem:(id)a6 animate:(BOOL)a7
{
  v42 = a7;
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v40 = a4;
  v12 = a5;
  v39 = a6;
  v13 = [(UITabBar *)self->super._tabBar _barMetrics];
  v14 = [(UITabBar *)self->super._tabBar _imageStyle];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    obj = v15;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v20 = v12;
        if (*v54 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        [v21 _setBarMetrics:v13];
        [v21 _setImageStyle:v14];
        v22 = [(UITabBarItem *)v21 _tabBarButton];
        if (v22 && [(UIView *)self->super._tabBar containsView:v22])
        {
          v23 = v22;
        }

        else
        {
          [v22 removeFromSuperview];
          v23 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:v21];

          [(UIView *)self->super._tabBar addSubview:v23];
          [(UITabBarItem *)v21 _setTabBarButton:v23];
          if (v42)
          {
            [v23 setAlpha:0.0];
          }
        }

        v24 = [(UITabBarItem *)v21 _tabBarButton];
        v25 = v24;
        v26 = v21 == v20;
        v12 = v20;
        v27 = v26;
        [v24 _showSelectedIndicator:v27 changeSelection:1];
      }

      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v17);
  }

  if (v42)
  {
    [(_UITabBarVisualProvider *)self defaultAnimationDuration];
    v29 = v28;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke;
    v49[3] = &unk_1E70F6228;
    v30 = v40;
    v50 = v40;
    v51 = self;
    v52 = v15;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke_2;
    v47[3] = &unk_1E70F5AC0;
    v48 = v50;
    [UIView animateWithDuration:v49 animations:v47 completion:v29];

    v31 = v39;
  }

  else
  {
    v32 = v15;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = v40;
    v33 = v40;
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v57 count:16];
    v31 = v39;
    if (v34)
    {
      v35 = v34;
      v36 = *v44;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [(UITabBarItem *)*(*(&v43 + 1) + 8 * j) _tabBarButton];
          [v38 removeFromSuperview];
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v35);
    }

    [(UIView *)self->super._tabBar setNeedsLayout];
    v15 = v32;
  }

  if (v12 != v31)
  {
    [(_UITabBarVisualProviderLegacyIOS *)self _updateAppearanceForTransitionFromItem:v31 toItem:v12];
  }
}

- (void)_applyAppearanceCustomizationsToItem:(id)a3
{
  v4 = a3;
  v7 = [(UITabBarItem *)v4 _tabBarButton];
  v5 = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
  [v7 _setCustomSelectedIndicatorImage:v5];

  v6 = [v4 _tintColor];

  [v7 setTintColor:v6];
}

- (id)exchangeItem:(id)a3 withItem:(id)a4
{
  v6 = a4;
  tabBar = self->super._tabBar;
  v8 = a3;
  v9 = [(UITabBar *)tabBar items];
  v10 = [v9 indexOfObject:v8];

  v11 = [v9 indexOfObject:v6];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 == v11)
  {
    v13 = v9;
  }

  else
  {
    v14 = v11;
    v15 = [v9 mutableCopy];
    v16 = v15;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v15 replaceObjectAtIndex:v10 withObject:v6];
      v17 = [(UITabBarItem *)v6 _tabBarButton];

      if (!v17)
      {
        [v6 _setImageStyle:{-[UITabBar _imageStyle](self->super._tabBar, "_imageStyle")}];
        [v6 _setBarMetrics:{-[UITabBar _barMetrics](self->super._tabBar, "_barMetrics")}];
        v18 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:v6];
        [(UITabBarItem *)v6 _setTabBarButton:v18];
      }

      v19 = [(UITabBarItem *)v6 _tabBarButton];
      [v19 setAlpha:1.0];

      v20 = self->super._tabBar;
      v21 = [(UITabBarItem *)v6 _tabBarButton];
      [(UIView *)v20 addSubview:v21];

      [(_UITabBarVisualProviderLegacyIOS *)self _applyAppearanceCustomizationsToItem:v6];
    }

    else
    {
      [v15 exchangeObjectAtIndex:v10 withObjectAtIndex:v14];
    }

    v13 = [v16 copy];
  }

  return v13;
}

- (void)changeSelectedItem:(id)a3 fromItem:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [(UITabBarItem *)v6 _tabBarButton];
  [v7 _showSelectedIndicator:0 changeSelection:1];

  v8 = [(UITabBarItem *)v9 _tabBarButton];
  [v8 _showSelectedIndicator:1 changeSelection:1];

  [(_UITabBarVisualProviderLegacyIOS *)self _updateAppearanceForTransitionFromItem:v6 toItem:v9];
}

- (void)setUseModernAppearance:(BOOL)a3
{
  useModernAppearance = self->_useModernAppearance;
  if (!useModernAppearance || a3)
  {
    if (a3 && !useModernAppearance)
    {
      self->_useModernAppearance = 1;
      backgroundViewLayout = self->_backgroundViewLayout;
      self->_backgroundViewLayout = 0;

      [(_UITabBarVisualProviderLegacyIOS *)self changeAppearance];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UITabBarVisualProviderLegacyIOS.m" lineNumber:227 description:@"Downgrading modern appearance flag from YES to NO not supported"];
  }
}

- (void)setMinimumWidthForHorizontalLayout:(double)a3
{
  if (self->_minimumWidthForHorizontalLayout != a3)
  {
    self->_minimumWidthForHorizontalLayout = a3;
    [(UIView *)self->super._tabBar setNeedsLayout];
  }
}

- (id)createViewForTabBarItem:(id)a3
{
  v5 = a3;
  if (![v5 _imageStyle])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"_UITabBarVisualProviderLegacyIOS.m" lineNumber:257 description:@"A default style should never be returned at this point"];
  }

  v6 = [(UITabBar *)self->super._tabBar _appearanceStorage];
  v7 = [v6 selectedImageTintColor];

  if ([v5 isSystemItem])
  {
    [v5 _internalTitle];
  }

  else
  {
    [v5 title];
  }
  v8 = ;
  v9 = [UITabBarButton alloc];
  v10 = [v5 unselectedImage];
  v11 = [v5 _internalLandscapeTemplateImage];
  v12 = [v5 selectedImage];
  v13 = [v5 _internalLandscapeSelectedImagePhone];
  [v5 imageInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v5 landscapeImagePhoneInsets];
  v26 = [(UITabBarButton *)v9 initWithImage:v10 landscapeImage:v11 selectedImage:v12 landscapeSelectedImage:v13 label:v8 withInsets:self->super._tabBar landscapeInsets:v15 tabBar:v17, v19, v21, v22, v23, v24, v25];

  [v5 badgeOffset];
  [(UITabBarButton *)v26 _setBadgeOffset:?];
  [(UITabBarButton *)v26 setLayoutStyle:self->_style];
  if ([v5 isSpringLoaded])
  {
    [(UITabBarButton *)v26 setSpringLoaded:1];
  }

  [(UITabBarButton *)v26 _setAppearanceGuideClass:objc_opt_class()];
  [(UIView *)v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(UIView *)self->super._tabBar bounds];
  [(UIView *)v26 setFrame:v28, v30, v32];
  v33 = [v5 _appearanceStorage];
  v34 = objc_getAssociatedObject(v5, &_UIAppearanceCustomizedSelectorsAssociationKey);
  [(UITabBarButton *)v26 _applyTabBarButtonAppearanceStorage:v33 withTaggedSelectors:v34];

  v35 = [(UITabBar *)self->super._tabBar _appearanceStorage];
  v36 = [v35 selectionIndicatorImage];

  if (v36)
  {
    [(UITabBarButton *)v26 _setCustomSelectedIndicatorImage:v36];
  }

  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonDown_ forControlEvents:1];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonUp_ forControlEvents:64];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonCancel_ forControlEvents:256];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__sendAction_withEvent_ forControlEvents:0x40000000];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__sendAction_withEvent_ forControlEvents:0x2000];
  -[UITabBarButton setEnabled:](v26, "setEnabled:", [v5 isEnabled]);
  [(UITabBarButton *)v26 _setShowsHighlightedState:[(UITabBar *)self->super._tabBar _showsHighlightedState]];
  v37 = [v5 badgeValue];
  if (v37)
  {
    [(UITabBarButton *)v26 _setBadgeValue:v37];
  }

  [(UITabBarButton *)v26 setSemanticContentAttribute:[(UIView *)self->super._tabBar semanticContentAttribute]];

  return v26;
}

- (void)updateArchivedSubviews:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITabBar *)self->super._tabBar items];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(UITabBarItem *)v10 _tabBarButton];

        if (v11)
        {
          v12 = [(UITabBarItem *)v10 _tabBarButton];
          [v4 removeObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_backgroundView)
  {
    [v4 removeObject:?];
  }

  if (self->_accessoryView)
  {
    [v4 removeObject:?];
  }
}

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)a3
{
  v4 = [(UITabBar *)self->super._tabBar _barMetrics:a3.width];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0x4046000000000000;
    }

    else
    {
      if (v4 != 2)
      {
        v6 = -1.0;
        goto LABEL_16;
      }

      v5 = 0x404C000000000000;
    }

    v6 = *&v5;
  }

  else
  {
    if (_UIUseMiniHeightInLandscape(([(UITabBar *)self->super._tabBar _expectedInterfaceOrientation]- 3) < 2) && (dyld_program_sdk_at_least() & 1) != 0)
    {
      v6 = 32.0;
    }

    else
    {
      v6 = 49.0;
    }

    if (_UIBarsUseNewPadHeights())
    {
      v6 = 50.0;
    }

    v7 = [(UIView *)self->super._tabBar traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if (v8 != 3)
    {
      v6 = v6 + _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(self->super._tabBar, 0);
    }
  }

LABEL_16:
  v9 = -1.0;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)_shadowFrameForBounds:(CGRect)a3 height:(double)a4
{
  width = a3.size.width;
  x = a3.origin.x;
  v7 = CGRectGetMinY(a3) - a4;
  v8 = x;
  v9 = width;
  v10 = a4;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

- (void)_configureItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITabBar *)self->super._tabBar _barMetrics];
  v6 = [(UITabBar *)self->super._tabBar _imageStyle];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 _barMetrics] != v5 || objc_msgSend(v12, "_imageStyle") != v6)
        {
          [v12 _setBarMetrics:v5];
          [v12 _setImageStyle:v6];
          [v12 _updateViewAndPositionItems:0];
        }

        v13 = [(UITabBarItem *)v12 _tabBarButton];
        [v13 setSemanticContentAttribute:{-[UIView semanticContentAttribute](self->super._tabBar, "semanticContentAttribute")}];
        [v13 setLayoutStyle:self->_style];
        style = self->_style;
        if (style)
        {
          v15 = style == 3;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v13 layoutIfNeeded];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (int64_t)_styleForTraitCollection:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_4;
  }

  [(_UITabBarVisualProviderLegacyIOS *)self _layoutRegion];
  if (CGRectGetWidth(v11) < self->_minimumWidthForHorizontalLayout)
  {
    goto LABEL_4;
  }

  v7 = [v4 userInterfaceIdiom];
  if (v7)
  {
    v5 = v7;
    if (v7 == 3)
    {
      goto LABEL_5;
    }

    if (v7 == 1 && [v4 horizontalSizeClass] == 2)
    {
      v8 = [(UITabBar *)self->super._tabBar items];
      v5 = [v8 count] < 9;

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = [(UITabBar *)self->super._tabBar items];
  if ([v9 count] > 5)
  {

LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  accessoryView = self->_accessoryView;

  if (accessoryView)
  {
    goto LABEL_4;
  }

  if ([v4 horizontalSizeClass] != 2)
  {
    if ([v4 verticalSizeClass] != 1)
    {
      goto LABEL_4;
    }

    [(_UITabBarVisualProviderLegacyIOS *)self _layoutRegion];
    if (CGRectGetWidth(v12) < 568.0)
    {
      goto LABEL_4;
    }
  }

  if (_UIUseMiniHeightInLandscape(1u))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_5:

  return v5;
}

- (void)_updateBackgroundAnimated:(BOOL)a3
{
  v3 = a3;
  [(UITabBar *)self->super._tabBar _setBackgroundNeedsUpdate:0];
  if ([(UIView *)self->super._tabBar _canDrawContent])
  {
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView removeFromSuperview];
  }

  else
  {
    [(UIView *)self->super._tabBar bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UITabBar *)self->super._tabBar delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = v13 + _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(self->super._tabBar, 0);
    }

    if (self->_customBackgroundView)
    {
      backgroundViewLayout = self->_backgroundViewLayout;
      self->_backgroundViewLayout = 0;
    }

    else if (self->_useModernAppearance)
    {
      [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundModern];
    }

    else
    {
      [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundLegacy];
    }

    [(UIView *)self->super._tabBar insertSubview:self->_backgroundView atIndex:0];
    [(_UIBarBackground *)self->_backgroundView setLayout:self->_backgroundViewLayout];
    [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:self->_customBackgroundView];
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setDisableTinting:[(UITabBar *)self->super._tabBar _disableBlurTinting]];
    [(UIView *)self->_backgroundView setFrame:v7, v9, v11, v13];
    useModernAppearance = self->_useModernAppearance;
    [(_UITabBarVisualProviderLegacyIOS *)self backgroundTransitionProgress];
    if (useModernAppearance)
    {
      [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setBackgroundTransitionProgress:?];
    }

    else
    {
      [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setBackgroundAlpha:1.0 - v18];
    }

    [(_UITabBarVisualProviderLegacyIOS *)self updateBackgroundGroupName];
    v19 = self->_backgroundView;

    [(_UIBarBackground *)v19 transitionBackgroundViewsAnimated:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  tabBar = self->super._tabBar;
  v5 = a3;
  v10 = [(UIView *)tabBar traitCollection];
  v6 = [(UIView *)self->super._tabBar traitCollection];
  v7 = [(_UITabBarVisualProviderLegacyIOS *)self _styleForTraitCollection:v6];

  if (self->_style != v7)
  {
    [(UIView *)self->super._tabBar setNeedsLayout];
  }

  v8 = [v10 legibilityWeight];
  v9 = [v5 legibilityWeight];

  if (v8 != v9)
  {
    [(UIView *)self->super._tabBar setNeedsLayout];
  }
}

- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_useModernAppearance)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 userInterfaceStyle];
    v11 = [(UITabBar *)self->super._tabBar barStyle]- 1;
    if (v10 == 2 || v11 >= 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

  v13 = [v8 preferredContentSizeCategory];
  v14 = v13;
  if (v13 && ([v13 isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
  {
    v15 = @"UICTContentSizeCategoryL";
  }

  else
  {
    v15 = 0;
  }

  v16 = v8;
  v17 = v16;
  if (v9 || (v18 = v16, v15))
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80___UITabBarVisualProviderLegacyIOS_traitCollectionForChild_baseTraitCollection___block_invoke;
    v20[3] = &unk_1E70F8D50;
    v22 = v9;
    v21 = v15;
    v18 = [v17 traitCollectionByModifyingTraits:v20];
  }

  return v18;
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(UITabBar *)self->super._tabBar items];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(UITabBarItem *)*(*(&v17 + 1) + 8 * v9) _tabBarButton];
        [v10 setSemanticContentAttribute:a3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [(UITabBar *)self->super._tabBar delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 _existingMoreNavigationController];
    v13 = [v12 view];
    [v13 setSemanticContentAttribute:a3];

    v14 = [v12 topViewController];
    v15 = [v14 view];
    [v15 setSemanticContentAttribute:a3];

    v16 = [v12 navigationBar];
    [v16 setSemanticContentAttribute:a3];
  }
}

- (id)_preferredFocusedViewCarplay
{
  v3 = [(UIView *)self->super._tabBar window];
  v4 = [v3 _focusEventRecognizer];
  v5 = [v4 _moveEvent];

  if (v5)
  {
    if ([v5 _focusHeading] == 32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    tabBar = self->super._tabBar;
    v9 = *(&tabBar->super._viewFlags + 2);
    v10 = [(UITabBar *)tabBar _preferredFocusHeading];
    if ((v9 & 0x400000) != 0 && v10 == 8 || (v9 & 0x400000) == 0 && v10 == 4)
    {
      v11 = [(UITabBar *)self->super._tabBar items];
      v12 = [v11 firstObject];
      goto LABEL_11;
    }

    if ((v9 & 0x400000) != 0)
    {
      v14 = v10 == 4;
    }

    else
    {
      v14 = v10 == 8;
    }

    if (v14)
    {
LABEL_3:
      accessoryView = self->_accessoryView;
      if (accessoryView)
      {
        v7 = accessoryView;
        goto LABEL_18;
      }

      v11 = [(UITabBar *)self->super._tabBar items];
      v12 = [v11 lastObject];
LABEL_11:
      v13 = v12;
      v7 = [(UITabBarItem *)v12 _tabBarButton];

      if (v7)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = [(UITabBar *)self->super._tabBar selectedItem];
  v7 = [(UITabBarItem *)v15 _tabBarButton];

LABEL_18:

  return v7;
}

- (id)_preferredFocusedViewiOS
{
  v2 = [(UITabBar *)self->super._tabBar items];
  v3 = [v2 firstObject];
  v4 = [(UITabBarItem *)v3 _tabBarButton];

  return v4;
}

- (id)preferredFocusedView
{
  v3 = [(UIView *)self->super._tabBar traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    [(_UITabBarVisualProviderLegacyIOS *)self _preferredFocusedViewCarplay];
  }

  else
  {
    [(_UITabBarVisualProviderLegacyIOS *)self _preferredFocusedViewiOS];
  }
  v5 = ;

  return v5;
}

- (void)_shim_setCustomBackgroundView:(id)a3
{
  v5 = a3;
  if (self->_customBackgroundView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customBackgroundView, a3);
    [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundAnimated:0];
    v5 = v6;
  }
}

- (id)_shim_compatibilityBackgroundView
{
  customBackgroundView = self->_customBackgroundView;
  if (!customBackgroundView)
  {
    customBackgroundView = self->_backgroundView;
  }

  return customBackgroundView;
}

- (void)_shim_setAccessoryView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = v4;
  v6 = v4;

  [(UIView *)self->super._tabBar addSubview:self->_accessoryView];
  [(UIView *)self->super._tabBar setNeedsLayout];
}

- (void)_shim_setShadowAlpha:(double)a3
{
  [(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowAlpha];
  if (v5 != a3)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowAlpha:a3];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_setShadowHidden:(BOOL)a3
{
  v3 = a3;
  if ([(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowHidden]!= a3)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowHidden:v3];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_updateTabBarItemView:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarItem *)v4 _tabBarButton];
  v6 = [v5 isFocused];

  if (v6)
  {
    [(UIView *)self->super._tabBar setNeedsFocusUpdate];
  }

  v7 = [(UITabBarItem *)v4 _tabBarButton];
  [v7 removeFromSuperview];

  v8 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:v4];
  [(UITabBarItem *)v4 _setTabBarButton:v8];

  tabBar = self->super._tabBar;
  v10 = [(UITabBarItem *)v4 _tabBarButton];

  [(UIView *)tabBar addSubview:v10];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  [a4 location];
  v7 = v6;
  v9 = v8;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(UITabBar *)self->super._tabBar items];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v29;
LABEL_3:
    v15 = 0;
    v16 = v13;
    v13 += v12;
    while (1)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [(UITabBarItem *)*(*(&v28 + 1) + 8 * v15) _tabBarButton];
      [(UIView *)self->super._tabBar convertPoint:v17 toView:v7, v9];
      if ([v17 pointInside:0 withEvent:?])
      {
        break;
      }

      ++v16;

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v17)
    {
      [v17 _tabBarHitRect];
      [v17 convertRect:self->super._tabBar toView:?];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      v18 = [UIPointerRegion regionWithRect:v10 identifier:v20, v22, v24, v26];
      goto LABEL_12;
    }

    v18 = 0;
  }

  else
  {
LABEL_9:
    v17 = 0;
    v18 = 0;
LABEL_12:
  }

  return v18;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a4 identifier];
  v6 = [v5 integerValue];

  v7 = [(UITabBar *)self->super._tabBar items];
  v8 = v7;
  if ((v6 & 0x8000000000000000) != 0 || v6 >= [v7 count])
  {
    v17 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:v6];
    v10 = [(UITabBarItem *)v9 _tabBarButton];

    v11 = [v10 window];

    if (v11)
    {
      v12 = [[UITargetedPreview alloc] initWithView:v10];
      [v10 _contentRect];
      [v10 convertRect:self->super._tabBar toView:?];
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      if (CGRectIsNull(v35))
      {
        v17 = 0;
      }

      else
      {
        v19 = +[_UIPointerSettingsDomain rootSettings];
        v20 = [v19 tabBarSettings];

        if ([v10 layoutStyle])
        {
          [v20 inlineCornerRadius];
          v22 = v21;
          [(UIView *)self->super._tabBar safeAreaInsets];
          if (v23 <= 0.0)
          {
            [v20 inlineHomeButtonVerticalOffset];
          }

          else
          {
            [v20 inlineHomeAffordanceVerticalOffset];
          }

          y = y + v24;
        }

        else
        {
          [v20 stackedCornerRadius];
          v22 = v25;
        }

        [v10 frame];
        v38.origin.x = v26;
        v38.origin.y = v27;
        v38.size.width = v28;
        v38.size.height = v29;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v37 = CGRectIntersection(v36, v38);
        v30 = [UIPointerShape shapeWithRoundedRect:v37.origin.x cornerRadius:v37.origin.y, v37.size.width, v37.size.height, v22];
        v31 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v12];
        v17 = [UIPointerStyle styleWithEffect:v31 shape:v30];
      }
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("TabBarPointerEffects", &pointerInteraction_styleForRegion____s_category) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v33 = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Failed to apply pointer effect since this tab bar's internal view hierarchy was modified. This is generally a bad idea.", v33, 2u);
      }

      v17 = 0;
    }
  }

  return v17;
}

@end