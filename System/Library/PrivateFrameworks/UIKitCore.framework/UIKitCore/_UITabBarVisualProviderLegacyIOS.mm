@interface _UITabBarVisualProviderLegacyIOS
- (CGRect)_layoutRegion;
- (CGRect)_shadowFrameForBounds:(CGRect)bounds height:(double)height;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size;
- (id)_preferredFocusedViewCarplay;
- (id)_preferredFocusedViewiOS;
- (id)_shim_compatibilityBackgroundView;
- (id)createViewForTabBarItem:(id)item;
- (id)exchangeItem:(id)item withItem:(id)withItem;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)preferredFocusedView;
- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection;
- (int64_t)_styleForTraitCollection:(id)collection;
- (void)_applyAppearanceCustomizationsToItem:(id)item;
- (void)_configureItems:(id)items;
- (void)_layoutTabBarItems;
- (void)_shim_setAccessoryView:(id)view;
- (void)_shim_setCustomBackgroundView:(id)view;
- (void)_shim_setShadowAlpha:(double)alpha;
- (void)_shim_setShadowHidden:(BOOL)hidden;
- (void)_shim_updateTabBarItemView:(id)view;
- (void)_updateAccessoryView;
- (void)_updateAppearanceForTransitionFromItem:(id)item toItem:(id)toItem;
- (void)_updateBackgroundAnimated:(BOOL)animated;
- (void)_updateBackgroundLegacy;
- (void)_updateBackgroundModern;
- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate;
- (void)changeSelectedItem:(id)item fromItem:(id)fromItem;
- (void)layoutSubviews;
- (void)prepare;
- (void)setMinimumWidthForHorizontalLayout:(double)layout;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setUseModernAppearance:(BOOL)appearance;
- (void)teardown;
- (void)traitCollectionDidChange:(id)change;
- (void)updateArchivedSubviews:(id)subviews;
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

  traitCollection = [(UIView *)tabBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 3)
  {
    [(UIView *)self->super._tabBar safeAreaInsets];
    v17 = v16;
    if (v16 != 0.0)
    {
      v18 = +[UIDevice currentDevice];
      userInterfaceIdiom2 = [v18 userInterfaceIdiom];

      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  self->_style = [(_UITabBarVisualProviderLegacyIOS *)self _styleForTraitCollection:traitCollection];

  [(_UITabBarVisualProviderLegacyIOS *)self _layoutTabBarItems];
  [(_UITabBarVisualProviderLegacyIOS *)self _updateAccessoryView];
  if (![(UITabBar *)self->super._tabBar _suspendBackgroundUpdates])
  {

    [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundAnimated:0];
  }
}

- (void)_layoutTabBarItems
{
  items = [(UITabBar *)self->super._tabBar items];
  if ([items count])
  {
    if (!self->_useModernAppearance)
    {
      selectionIndicatorImage = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
      itemPositioning = [(UITabBar *)self->super._tabBar itemPositioning];
      [(UITabBar *)self->super._tabBar itemWidth];
      v11 = v10;
      [(UITabBar *)self->super._tabBar itemSpacing];
      v13 = v12;
      if (!dyld_program_sdk_at_least() || self->_style == 3)
      {
        tabBarVibrancyEffect = 0;
        v56 = 0;
        selectionIndicatorTintColor = 0;
LABEL_27:
        [(_UITabBarVisualProviderLegacyIOS *)self _layoutRegion];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = 0.0;
        if (selectionIndicatorImage && ([selectionIndicatorImage _isResizable] & 1) == 0)
        {
          [selectionIndicatorImage size];
          v29 = v30;
        }

        v53 = selectionIndicatorImage;
        traitCollection = [(UIView *)self->super._tabBar traitCollection];
        v32 = [items count];
        style = self->_style;
        v34 = style - 1;
        v54 = (style - 1) < 2;
        v35 = 0;
        v36 = [traitCollection horizontalSizeClass] == 2;
        v37 = style == 3;
        if (style == 3)
        {
          v36 = 0;
        }

        if (itemPositioning == UITabBarItemPositioningAutomatic && v36 && v29 > 0.0)
        {
          v38 = v29 * v32;
          v35 = v38 <= v26 && v38 > v26 - (10 * v32);
        }

        if (itemPositioning == UITabBarItemPositioningFill || v35 || !v36 || v26 <= (110 * v32 - 30) || [traitCollection userInterfaceIdiom] != 1)
        {
          if (itemPositioning == UITabBarItemPositioningCentered)
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

        [(_UITabBarVisualProviderLegacyIOS *)self _configureItems:items];
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
          [(UITabBar *)self->super._tabBar _totalDimensionForItems:items spacing:0.0 dimension:v75[3] scaleFactor:1.0];
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
        v51 = tabBarVibrancyEffect;
        v65 = v28;
        v66 = v44;
        v67 = v24;
        v62 = v71;
        v63 = v72;
        v69 = v37;
        v70 = v43;
        v59 = v51;
        selfCopy = self;
        [items enumerateObjectsWithOptions:v49 & 2 usingBlock:v57];

        _Block_object_dispose(v71, 8);
        _Block_object_dispose(v72, 8);
        _Block_object_dispose(&v74, 8);

        goto LABEL_70;
      }

      barTintColor = [(UITabBar *)self->super._tabBar barTintColor];
      unselectedItemTintColor = [(UITabBar *)self->super._tabBar unselectedItemTintColor];
      if (barTintColor | unselectedItemTintColor)
      {
        _tabLayoutAppearanceData = unselectedItemTintColor;
        tabBarVibrancyEffect = 0;
        v56 = 0;
        selectionIndicatorTintColor = 0;
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

      _backgroundData = [UIBlurEffect effectWithStyle:v15];
      tabBarVibrancyEffect = [UIVibrancyEffect effectForBlurEffect:_backgroundData style:4];
      v56 = 0;
      _tabLayoutAppearanceData = 0;
      barTintColor = 0;
      selectionIndicatorTintColor = 0;
LABEL_25:

      goto LABEL_26;
    }

    if (_UIBarsApplyChromelessEverywhere())
    {
      [(_UITabBarVisualProviderLegacyIOS *)self backgroundTransitionProgress];
      if (v4 > 0.5)
      {
        selectedItem = [(UITabBar *)self->super._tabBar selectedItem];
        scrollEdgeAppearance = [selectedItem scrollEdgeAppearance];
        if (scrollEdgeAppearance)
        {
          barTintColor = scrollEdgeAppearance;
LABEL_21:

          goto LABEL_22;
        }

        barTintColor = [(UITabBar *)self->super._tabBar scrollEdgeAppearance];

        if (barTintColor)
        {
LABEL_22:
          _tabLayoutAppearanceData = [barTintColor _tabLayoutAppearanceData];
          selectionIndicatorTintColor = [_tabLayoutAppearanceData selectionIndicatorTintColor];
          selectionIndicatorImage = [_tabLayoutAppearanceData selectionIndicatorImage];
          itemPositioning = [_tabLayoutAppearanceData itemPositioning];
          [_tabLayoutAppearanceData itemWidth];
          v11 = v21;
          [_tabLayoutAppearanceData itemSpacing];
          v13 = v22;
          v56 = [barTintColor _dataForItemStyle:self->_style];
          if (self->_style == 3)
          {
            tabBarVibrancyEffect = 0;
            goto LABEL_26;
          }

          _backgroundData = [barTintColor _backgroundData];
          tabBarVibrancyEffect = [_backgroundData tabBarVibrancyEffect];
          goto LABEL_25;
        }
      }
    }

    selectedItem = [(UITabBar *)self->super._tabBar selectedItem];
    standardAppearance = [selectedItem standardAppearance];
    v19 = standardAppearance;
    if (standardAppearance)
    {
      standardAppearance2 = standardAppearance;
    }

    else
    {
      standardAppearance2 = [(UITabBar *)self->super._tabBar standardAppearance];
    }

    barTintColor = standardAppearance2;

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

  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  isTranslucent = [(UITabBar *)self->super._tabBar isTranslucent];
  _effectiveBarTintColor = [(UITabBar *)self->super._tabBar _effectiveBarTintColor];
  backgroundImage = [(UITabBar *)self->super._tabBar backgroundImage];
  barStyle = [(UITabBar *)self->super._tabBar barStyle];
  backgroundEffects = [(UITabBar *)self->super._tabBar backgroundEffects];
  if (backgroundEffects)
  {
    [(_UIBarBackgroundLayoutLegacy *)v3 configureWithEffects:backgroundEffects];
  }

  else if (backgroundImage)
  {
    [backgroundImage size];
    v13 = v12;
    if (([backgroundImage _isResizable] & 1) == 0)
    {
      v14 = [backgroundImage stretchableImageWithLeftCapWidth:0 topCapHeight:(v13 + -1.0)];

      backgroundImage = v14;
    }

    v19 = 0;
    [backgroundImage _isInvisibleAndGetIsTranslucent:&v19];
    if (isTranslucent)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:backgroundImage forceTranslucent:(v19 & 1) == 0];
    }

    else if (_effectiveBarTintColor)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:backgroundImage forceOpaque:v19 backgroundTintColor:_effectiveBarTintColor];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureImage:backgroundImage forceOpaque:v19 barStyle:barStyle];
    }

    shadowImage = [(UITabBar *)self->super._tabBar shadowImage];
    if (shadowImage)
    {
      v18 = shadowImage;
      [(_UIBarBackgroundLayoutLegacy *)v3 configureShadowImage:shadowImage];

      goto LABEL_6;
    }
  }

  else
  {
    _screen = [(UIView *)self->super._tabBar _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    if (_userInterfaceIdiom == 3)
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureAsTransparent];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v3 configureEffectForStyle:barStyle backgroundTintColor:_effectiveBarTintColor forceOpaque:!isTranslucent];
    }

    backgroundImage = 0;
  }

  [(_UIBarBackgroundLayoutLegacy *)v3 configureShadowForBarStyle:barStyle];
LABEL_6:
}

- (void)updateBackgroundGroupName
{
  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];
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

  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](p_super, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)self->super._tabBar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](p_super, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  LODWORD(traitCollection2) = _UIBarsApplyChromelessEverywhere();
  selectedItem = [(UITabBar *)self->super._tabBar selectedItem];
  standardAppearance = [selectedItem standardAppearance];
  v9 = standardAppearance;
  if (!traitCollection2)
  {
    if (standardAppearance)
    {
      standardAppearance2 = standardAppearance;
    }

    else
    {
      standardAppearance2 = [(UITabBar *)self->super._tabBar standardAppearance];
    }

    _backgroundData2 = standardAppearance2;

    _backgroundData = [_backgroundData2 _backgroundData];
    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:_backgroundData];
    goto LABEL_16;
  }

  if (standardAppearance)
  {
    _backgroundData2 = [standardAppearance _backgroundData];
  }

  else
  {
    standardAppearance3 = [(UITabBar *)self->super._tabBar standardAppearance];
    _backgroundData2 = [standardAppearance3 _backgroundData];
  }

  selectedItem2 = [(UITabBar *)self->super._tabBar selectedItem];
  scrollEdgeAppearance = [selectedItem2 scrollEdgeAppearance];
  if (scrollEdgeAppearance)
  {
    scrollEdgeAppearance2 = scrollEdgeAppearance;
  }

  else
  {
    scrollEdgeAppearance2 = [(UITabBar *)self->super._tabBar scrollEdgeAppearance];

    if (!scrollEdgeAppearance2)
    {
      _backgroundData = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
      goto LABEL_15;
    }
  }

  _backgroundData = [scrollEdgeAppearance2 _backgroundData];

LABEL_15:
  [(_UIBarBackgroundLayout *)p_super setBackgroundData1:_backgroundData2];
  [(_UIBarBackgroundLayout *)p_super setBackgroundData2:_backgroundData];
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

- (void)_updateAppearanceForTransitionFromItem:(id)item toItem:(id)toItem
{
  v62 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  if (self->_useModernAppearance)
  {
    standardAppearance = [(UITabBar *)self->super._tabBar standardAppearance];
    standardAppearance2 = [itemCopy standardAppearance];
    v10 = standardAppearance2;
    if (standardAppearance2)
    {
      v11 = standardAppearance2;
    }

    else
    {
      v11 = standardAppearance;
    }

    v12 = v11;

    standardAppearance3 = [toItemCopy standardAppearance];
    v14 = standardAppearance3;
    if (standardAppearance3)
    {
      v15 = standardAppearance3;
    }

    else
    {
      v15 = standardAppearance;
    }

    v16 = v15;

    _backgroundData = [v12 _backgroundData];
    _backgroundData2 = [v16 _backgroundData];
    v19 = _backgroundData;
    v20 = _backgroundData2;
    v21 = v20;
    v49 = toItemCopy;
    v50 = itemCopy;
    v51 = standardAppearance;
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
    items = [(UITabBar *)self->super._tabBar items];
    v24 = [items countByEnumeratingWithState:&v56 objects:v61 count:16];
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
            objc_enumerationMutation(items);
          }

          _tabBarButton = [(UITabBarItem *)*(*(&v56 + 1) + 8 * i) _tabBarButton];
          _backgroundData3 = [v16 _backgroundData];
          tabBarVibrancyEffect = [_backgroundData3 tabBarVibrancyEffect];
          [_tabBarButton setItemVibrantEffect:tabBarVibrancyEffect];
        }

        v25 = [items countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v25);
    }

    toItemCopy = v49;
    itemCopy = v50;
LABEL_25:
    _tabLayoutAppearanceData = [v12 _tabLayoutAppearanceData];
    _tabLayoutAppearanceData2 = [v16 _tabLayoutAppearanceData];
    v33 = _tabLayoutAppearanceData;
    v34 = _tabLayoutAppearanceData2;
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
          items2 = [(UITabBar *)self->super._tabBar items];
          v44 = [items2 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
                  objc_enumerationMutation(items2);
                }

                _tabBarButton2 = [(UITabBarItem *)*(*(&v52 + 1) + 8 * j) _tabBarButton];
                [_tabBarButton2 setItemAppearanceData:v41];
              }

              v45 = [items2 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v45);
          }

          [(UIView *)self->super._tabBar setNeedsLayout];
          toItemCopy = v49;
          itemCopy = v50;
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

- (void)changeItemsTo:(id)to removingItems:(id)items selectedItem:(id)item oldSelectedItem:(id)selectedItem animate:(BOOL)animate
{
  animateCopy = animate;
  v59 = *MEMORY[0x1E69E9840];
  toCopy = to;
  itemsCopy = items;
  itemCopy = item;
  selectedItemCopy = selectedItem;
  _barMetrics = [(UITabBar *)self->super._tabBar _barMetrics];
  _imageStyle = [(UITabBar *)self->super._tabBar _imageStyle];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = toCopy;
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
        v20 = itemCopy;
        if (*v54 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        [v21 _setBarMetrics:_barMetrics];
        [v21 _setImageStyle:_imageStyle];
        _tabBarButton = [(UITabBarItem *)v21 _tabBarButton];
        if (_tabBarButton && [(UIView *)self->super._tabBar containsView:_tabBarButton])
        {
          v23 = _tabBarButton;
        }

        else
        {
          [_tabBarButton removeFromSuperview];
          v23 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:v21];

          [(UIView *)self->super._tabBar addSubview:v23];
          [(UITabBarItem *)v21 _setTabBarButton:v23];
          if (animateCopy)
          {
            [v23 setAlpha:0.0];
          }
        }

        _tabBarButton2 = [(UITabBarItem *)v21 _tabBarButton];
        v25 = _tabBarButton2;
        v26 = v21 == v20;
        itemCopy = v20;
        v27 = v26;
        [_tabBarButton2 _showSelectedIndicator:v27 changeSelection:1];
      }

      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v17);
  }

  if (animateCopy)
  {
    [(_UITabBarVisualProvider *)self defaultAnimationDuration];
    v29 = v28;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke;
    v49[3] = &unk_1E70F6228;
    v30 = itemsCopy;
    v50 = itemsCopy;
    selfCopy = self;
    v52 = v15;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke_2;
    v47[3] = &unk_1E70F5AC0;
    v48 = v50;
    [UIView animateWithDuration:v49 animations:v47 completion:v29];

    v31 = selectedItemCopy;
  }

  else
  {
    v32 = v15;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = itemsCopy;
    v33 = itemsCopy;
    v34 = [v33 countByEnumeratingWithState:&v43 objects:v57 count:16];
    v31 = selectedItemCopy;
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

          _tabBarButton3 = [(UITabBarItem *)*(*(&v43 + 1) + 8 * j) _tabBarButton];
          [_tabBarButton3 removeFromSuperview];
        }

        v35 = [v33 countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v35);
    }

    [(UIView *)self->super._tabBar setNeedsLayout];
    v15 = v32;
  }

  if (itemCopy != v31)
  {
    [(_UITabBarVisualProviderLegacyIOS *)self _updateAppearanceForTransitionFromItem:v31 toItem:itemCopy];
  }
}

- (void)_applyAppearanceCustomizationsToItem:(id)item
{
  itemCopy = item;
  _tabBarButton = [(UITabBarItem *)itemCopy _tabBarButton];
  selectionIndicatorImage = [(UITabBar *)self->super._tabBar selectionIndicatorImage];
  [_tabBarButton _setCustomSelectedIndicatorImage:selectionIndicatorImage];

  _tintColor = [itemCopy _tintColor];

  [_tabBarButton setTintColor:_tintColor];
}

- (id)exchangeItem:(id)item withItem:(id)withItem
{
  withItemCopy = withItem;
  tabBar = self->super._tabBar;
  itemCopy = item;
  items = [(UITabBar *)tabBar items];
  v10 = [items indexOfObject:itemCopy];

  v11 = [items indexOfObject:withItemCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 == v11)
  {
    v13 = items;
  }

  else
  {
    v14 = v11;
    v15 = [items mutableCopy];
    v16 = v15;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v15 replaceObjectAtIndex:v10 withObject:withItemCopy];
      _tabBarButton = [(UITabBarItem *)withItemCopy _tabBarButton];

      if (!_tabBarButton)
      {
        [withItemCopy _setImageStyle:{-[UITabBar _imageStyle](self->super._tabBar, "_imageStyle")}];
        [withItemCopy _setBarMetrics:{-[UITabBar _barMetrics](self->super._tabBar, "_barMetrics")}];
        v18 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:withItemCopy];
        [(UITabBarItem *)withItemCopy _setTabBarButton:v18];
      }

      _tabBarButton2 = [(UITabBarItem *)withItemCopy _tabBarButton];
      [_tabBarButton2 setAlpha:1.0];

      v20 = self->super._tabBar;
      _tabBarButton3 = [(UITabBarItem *)withItemCopy _tabBarButton];
      [(UIView *)v20 addSubview:_tabBarButton3];

      [(_UITabBarVisualProviderLegacyIOS *)self _applyAppearanceCustomizationsToItem:withItemCopy];
    }

    else
    {
      [v15 exchangeObjectAtIndex:v10 withObjectAtIndex:v14];
    }

    v13 = [v16 copy];
  }

  return v13;
}

- (void)changeSelectedItem:(id)item fromItem:(id)fromItem
{
  fromItemCopy = fromItem;
  itemCopy = item;
  _tabBarButton = [(UITabBarItem *)fromItemCopy _tabBarButton];
  [_tabBarButton _showSelectedIndicator:0 changeSelection:1];

  _tabBarButton2 = [(UITabBarItem *)itemCopy _tabBarButton];
  [_tabBarButton2 _showSelectedIndicator:1 changeSelection:1];

  [(_UITabBarVisualProviderLegacyIOS *)self _updateAppearanceForTransitionFromItem:fromItemCopy toItem:itemCopy];
}

- (void)setUseModernAppearance:(BOOL)appearance
{
  useModernAppearance = self->_useModernAppearance;
  if (!useModernAppearance || appearance)
  {
    if (appearance && !useModernAppearance)
    {
      self->_useModernAppearance = 1;
      backgroundViewLayout = self->_backgroundViewLayout;
      self->_backgroundViewLayout = 0;

      [(_UITabBarVisualProviderLegacyIOS *)self changeAppearance];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabBarVisualProviderLegacyIOS.m" lineNumber:227 description:@"Downgrading modern appearance flag from YES to NO not supported"];
  }
}

- (void)setMinimumWidthForHorizontalLayout:(double)layout
{
  if (self->_minimumWidthForHorizontalLayout != layout)
  {
    self->_minimumWidthForHorizontalLayout = layout;
    [(UIView *)self->super._tabBar setNeedsLayout];
  }
}

- (id)createViewForTabBarItem:(id)item
{
  itemCopy = item;
  if (![itemCopy _imageStyle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabBarVisualProviderLegacyIOS.m" lineNumber:257 description:@"A default style should never be returned at this point"];
  }

  _appearanceStorage = [(UITabBar *)self->super._tabBar _appearanceStorage];
  selectedImageTintColor = [_appearanceStorage selectedImageTintColor];

  if ([itemCopy isSystemItem])
  {
    [itemCopy _internalTitle];
  }

  else
  {
    [itemCopy title];
  }
  v8 = ;
  v9 = [UITabBarButton alloc];
  unselectedImage = [itemCopy unselectedImage];
  _internalLandscapeTemplateImage = [itemCopy _internalLandscapeTemplateImage];
  selectedImage = [itemCopy selectedImage];
  _internalLandscapeSelectedImagePhone = [itemCopy _internalLandscapeSelectedImagePhone];
  [itemCopy imageInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [itemCopy landscapeImagePhoneInsets];
  v26 = [(UITabBarButton *)v9 initWithImage:unselectedImage landscapeImage:_internalLandscapeTemplateImage selectedImage:selectedImage landscapeSelectedImage:_internalLandscapeSelectedImagePhone label:v8 withInsets:self->super._tabBar landscapeInsets:v15 tabBar:v17, v19, v21, v22, v23, v24, v25];

  [itemCopy badgeOffset];
  [(UITabBarButton *)v26 _setBadgeOffset:?];
  [(UITabBarButton *)v26 setLayoutStyle:self->_style];
  if ([itemCopy isSpringLoaded])
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
  _appearanceStorage2 = [itemCopy _appearanceStorage];
  v34 = objc_getAssociatedObject(itemCopy, &_UIAppearanceCustomizedSelectorsAssociationKey);
  [(UITabBarButton *)v26 _applyTabBarButtonAppearanceStorage:_appearanceStorage2 withTaggedSelectors:v34];

  _appearanceStorage3 = [(UITabBar *)self->super._tabBar _appearanceStorage];
  selectionIndicatorImage = [_appearanceStorage3 selectionIndicatorImage];

  if (selectionIndicatorImage)
  {
    [(UITabBarButton *)v26 _setCustomSelectedIndicatorImage:selectionIndicatorImage];
  }

  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonDown_ forControlEvents:1];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonUp_ forControlEvents:64];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__buttonCancel_ forControlEvents:256];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__sendAction_withEvent_ forControlEvents:0x40000000];
  [(UIControl *)v26 addTarget:self->super._tabBar action:sel__sendAction_withEvent_ forControlEvents:0x2000];
  -[UITabBarButton setEnabled:](v26, "setEnabled:", [itemCopy isEnabled]);
  [(UITabBarButton *)v26 _setShowsHighlightedState:[(UITabBar *)self->super._tabBar _showsHighlightedState]];
  badgeValue = [itemCopy badgeValue];
  if (badgeValue)
  {
    [(UITabBarButton *)v26 _setBadgeValue:badgeValue];
  }

  [(UITabBarButton *)v26 setSemanticContentAttribute:[(UIView *)self->super._tabBar semanticContentAttribute]];

  return v26;
}

- (void)updateArchivedSubviews:(id)subviews
{
  v18 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  items = [(UITabBar *)self->super._tabBar items];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        _tabBarButton = [(UITabBarItem *)v10 _tabBarButton];

        if (_tabBarButton)
        {
          _tabBarButton2 = [(UITabBarItem *)v10 _tabBarButton];
          [subviewsCopy removeObject:_tabBarButton2];
        }
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_backgroundView)
  {
    [subviewsCopy removeObject:?];
  }

  if (self->_accessoryView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)size
{
  v4 = [(UITabBar *)self->super._tabBar _barMetrics:size.width];
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

    traitCollection = [(UIView *)self->super._tabBar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom != 3)
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

- (CGRect)_shadowFrameForBounds:(CGRect)bounds height:(double)height
{
  width = bounds.size.width;
  x = bounds.origin.x;
  v7 = CGRectGetMinY(bounds) - height;
  v8 = x;
  v9 = width;
  heightCopy = height;
  result.size.height = heightCopy;
  result.size.width = v9;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

- (void)_configureItems:(id)items
{
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  _barMetrics = [(UITabBar *)self->super._tabBar _barMetrics];
  _imageStyle = [(UITabBar *)self->super._tabBar _imageStyle];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = itemsCopy;
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
        if ([v12 _barMetrics] != _barMetrics || objc_msgSend(v12, "_imageStyle") != _imageStyle)
        {
          [v12 _setBarMetrics:_barMetrics];
          [v12 _setImageStyle:_imageStyle];
          [v12 _updateViewAndPositionItems:0];
        }

        _tabBarButton = [(UITabBarItem *)v12 _tabBarButton];
        [_tabBarButton setSemanticContentAttribute:{-[UIView semanticContentAttribute](self->super._tabBar, "semanticContentAttribute")}];
        [_tabBarButton setLayoutStyle:self->_style];
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
          [_tabBarButton layoutIfNeeded];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (int64_t)_styleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
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

  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  if (userInterfaceIdiom)
  {
    v5 = userInterfaceIdiom;
    if (userInterfaceIdiom == 3)
    {
      goto LABEL_5;
    }

    if (userInterfaceIdiom == 1 && [collectionCopy horizontalSizeClass] == 2)
    {
      items = [(UITabBar *)self->super._tabBar items];
      v5 = [items count] < 9;

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  items2 = [(UITabBar *)self->super._tabBar items];
  if ([items2 count] > 5)
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

  if ([collectionCopy horizontalSizeClass] != 2)
  {
    if ([collectionCopy verticalSizeClass] != 1)
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

- (void)_updateBackgroundAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
    delegate = [(UITabBar *)self->super._tabBar delegate];
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

    [(_UIBarBackground *)v19 transitionBackgroundViewsAnimated:animatedCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  tabBar = self->super._tabBar;
  changeCopy = change;
  traitCollection = [(UIView *)tabBar traitCollection];
  traitCollection2 = [(UIView *)self->super._tabBar traitCollection];
  v7 = [(_UITabBarVisualProviderLegacyIOS *)self _styleForTraitCollection:traitCollection2];

  if (self->_style != v7)
  {
    [(UIView *)self->super._tabBar setNeedsLayout];
  }

  legibilityWeight = [traitCollection legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    [(UIView *)self->super._tabBar setNeedsLayout];
  }
}

- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection
{
  childCopy = child;
  collectionCopy = collection;
  v8 = collectionCopy;
  if (self->_useModernAppearance)
  {
    v9 = 0;
  }

  else
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v11 = [(UITabBar *)self->super._tabBar barStyle]- 1;
    if (userInterfaceStyle == 2 || v11 >= 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  v14 = preferredContentSizeCategory;
  if (preferredContentSizeCategory && ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryL"] & 1) == 0)
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

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items = [(UITabBar *)self->super._tabBar items];
  v6 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(items);
        }

        _tabBarButton = [(UITabBarItem *)*(*(&v17 + 1) + 8 * v9) _tabBarButton];
        [_tabBarButton setSemanticContentAttribute:attribute];

        ++v9;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  delegate = [(UITabBar *)self->super._tabBar delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _existingMoreNavigationController = [delegate _existingMoreNavigationController];
    view = [_existingMoreNavigationController view];
    [view setSemanticContentAttribute:attribute];

    topViewController = [_existingMoreNavigationController topViewController];
    view2 = [topViewController view];
    [view2 setSemanticContentAttribute:attribute];

    navigationBar = [_existingMoreNavigationController navigationBar];
    [navigationBar setSemanticContentAttribute:attribute];
  }
}

- (id)_preferredFocusedViewCarplay
{
  window = [(UIView *)self->super._tabBar window];
  _focusEventRecognizer = [window _focusEventRecognizer];
  _moveEvent = [_focusEventRecognizer _moveEvent];

  if (_moveEvent)
  {
    if ([_moveEvent _focusHeading] == 32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    tabBar = self->super._tabBar;
    v9 = *(&tabBar->super._viewFlags + 2);
    _preferredFocusHeading = [(UITabBar *)tabBar _preferredFocusHeading];
    if ((v9 & 0x400000) != 0 && _preferredFocusHeading == 8 || (v9 & 0x400000) == 0 && _preferredFocusHeading == 4)
    {
      items = [(UITabBar *)self->super._tabBar items];
      firstObject = [items firstObject];
      goto LABEL_11;
    }

    if ((v9 & 0x400000) != 0)
    {
      v14 = _preferredFocusHeading == 4;
    }

    else
    {
      v14 = _preferredFocusHeading == 8;
    }

    if (v14)
    {
LABEL_3:
      accessoryView = self->_accessoryView;
      if (accessoryView)
      {
        _tabBarButton = accessoryView;
        goto LABEL_18;
      }

      items = [(UITabBar *)self->super._tabBar items];
      firstObject = [items lastObject];
LABEL_11:
      v13 = firstObject;
      _tabBarButton = [(UITabBarItem *)firstObject _tabBarButton];

      if (_tabBarButton)
      {
        goto LABEL_18;
      }
    }
  }

  selectedItem = [(UITabBar *)self->super._tabBar selectedItem];
  _tabBarButton = [(UITabBarItem *)selectedItem _tabBarButton];

LABEL_18:

  return _tabBarButton;
}

- (id)_preferredFocusedViewiOS
{
  items = [(UITabBar *)self->super._tabBar items];
  firstObject = [items firstObject];
  _tabBarButton = [(UITabBarItem *)firstObject _tabBarButton];

  return _tabBarButton;
}

- (id)preferredFocusedView
{
  traitCollection = [(UIView *)self->super._tabBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
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

- (void)_shim_setCustomBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_customBackgroundView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_customBackgroundView, view);
    [(_UITabBarVisualProviderLegacyIOS *)self _updateBackgroundAnimated:0];
    viewCopy = v6;
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

- (void)_shim_setAccessoryView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = viewCopy;
  v6 = viewCopy;

  [(UIView *)self->super._tabBar addSubview:self->_accessoryView];
  [(UIView *)self->super._tabBar setNeedsLayout];
}

- (void)_shim_setShadowAlpha:(double)alpha
{
  [(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowAlpha];
  if (v5 != alpha)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowAlpha:alpha];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_setShadowHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UIBarBackgroundLayout *)self->_backgroundViewLayout shadowHidden]!= hidden)
  {
    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setShadowHidden:hiddenCopy];
    backgroundView = self->_backgroundView;

    [(_UIBarBackground *)backgroundView transitionBackgroundViews];
  }
}

- (void)_shim_updateTabBarItemView:(id)view
{
  viewCopy = view;
  _tabBarButton = [(UITabBarItem *)viewCopy _tabBarButton];
  isFocused = [_tabBarButton isFocused];

  if (isFocused)
  {
    [(UIView *)self->super._tabBar setNeedsFocusUpdate];
  }

  _tabBarButton2 = [(UITabBarItem *)viewCopy _tabBarButton];
  [_tabBarButton2 removeFromSuperview];

  v8 = [(_UITabBarVisualProviderLegacyIOS *)self createViewForTabBarItem:viewCopy];
  [(UITabBarItem *)viewCopy _setTabBarButton:v8];

  tabBar = self->super._tabBar;
  _tabBarButton3 = [(UITabBarItem *)viewCopy _tabBarButton];

  [(UIView *)tabBar addSubview:_tabBarButton3];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v33 = *MEMORY[0x1E69E9840];
  [request location];
  v7 = v6;
  v9 = v8;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  items = [(UITabBar *)self->super._tabBar items];
  v11 = [items countByEnumeratingWithState:&v28 objects:v32 count:16];
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
        objc_enumerationMutation(items);
      }

      _tabBarButton = [(UITabBarItem *)*(*(&v28 + 1) + 8 * v15) _tabBarButton];
      [(UIView *)self->super._tabBar convertPoint:_tabBarButton toView:v7, v9];
      if ([_tabBarButton pointInside:0 withEvent:?])
      {
        break;
      }

      ++v16;

      if (v12 == ++v15)
      {
        v12 = [items countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (_tabBarButton)
    {
      [_tabBarButton _tabBarHitRect];
      [_tabBarButton convertRect:self->super._tabBar toView:?];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      items = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      v18 = [UIPointerRegion regionWithRect:items identifier:v20, v22, v24, v26];
      goto LABEL_12;
    }

    v18 = 0;
  }

  else
  {
LABEL_9:
    _tabBarButton = 0;
    v18 = 0;
LABEL_12:
  }

  return v18;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  integerValue = [identifier integerValue];

  items = [(UITabBar *)self->super._tabBar items];
  v8 = items;
  if ((integerValue & 0x8000000000000000) != 0 || integerValue >= [items count])
  {
    v17 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:integerValue];
    _tabBarButton = [(UITabBarItem *)v9 _tabBarButton];

    window = [_tabBarButton window];

    if (window)
    {
      v12 = [[UITargetedPreview alloc] initWithView:_tabBarButton];
      [_tabBarButton _contentRect];
      [_tabBarButton convertRect:self->super._tabBar toView:?];
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
        tabBarSettings = [v19 tabBarSettings];

        if ([_tabBarButton layoutStyle])
        {
          [tabBarSettings inlineCornerRadius];
          v22 = v21;
          [(UIView *)self->super._tabBar safeAreaInsets];
          if (v23 <= 0.0)
          {
            [tabBarSettings inlineHomeButtonVerticalOffset];
          }

          else
          {
            [tabBarSettings inlineHomeAffordanceVerticalOffset];
          }

          y = y + v24;
        }

        else
        {
          [tabBarSettings stackedCornerRadius];
          v22 = v25;
        }

        [_tabBarButton frame];
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