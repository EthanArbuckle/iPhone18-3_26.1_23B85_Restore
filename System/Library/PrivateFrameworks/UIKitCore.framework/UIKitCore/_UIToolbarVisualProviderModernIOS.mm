@interface _UIToolbarVisualProviderModernIOS
- (BOOL)toolbarIsSmall;
- (CGRect)_backgroundFrame;
- (CGRect)backgroundFrame;
- (CGSize)defaultSizeForOrientation:(int64_t)orientation;
- (NSDirectionalEdgeInsets)contentViewMargins;
- (id)_currentCustomBackground;
- (id)currentBackgroundView;
- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection;
- (void)_itemDidChangeWidth:(id)width;
- (void)_setViewOwnersAndUpdateContentViewForItems:(id)items withOldItems:(id)oldItems animated:(BOOL)animated;
- (void)_updateBackgroundLegacyForPosition:(int64_t)position;
- (void)_updateBackgroundModern;
- (void)_updateContentView;
- (void)setBackgroundTransitionProgress:(double)progress;
- (void)setCustomBackgroundView:(id)view;
- (void)setUseModernAppearance:(BOOL)appearance;
- (void)updateAppearance;
- (void)updateBackgroundGroupName;
- (void)updateBarBackground;
- (void)updateBarBackgroundSize;
- (void)updateBarForStyle:(int64_t)style;
- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate;
@end

@implementation _UIToolbarVisualProviderModernIOS

- (void)_setViewOwnersAndUpdateContentViewForItems:(id)items withOldItems:(id)oldItems animated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  oldItemsCopy = oldItems;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 isSystemItem] && objc_msgSend(v14, "systemItem") == 6)
        {
          [v14 _setViewOwner:self];
        }
      }

      v11 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(_UIToolbarContentView *)self->_contentView updateWithItems:itemsCopy fromOldItems:oldItemsCopy animate:animatedCopy];
}

- (void)_updateContentView
{
  if (!self->_contentView)
  {
    return;
  }

  [(UIView *)self->super._toolbar bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIToolbarContentView *)self->_contentView setItemDistribution:self->_itemDistribution];
  [(_UIBarContentView *)self->_contentView setCenterTextButtons:[(UIToolbar *)self->super._toolbar centerTextButtons]];
  toolbarIsSmall = [(_UIToolbarVisualProviderModernIOS *)self toolbarIsSmall];
  [(_UIToolbarContentView *)self->_contentView setCompactMetrics:toolbarIsSmall];
  window = [(UIView *)self->super._toolbar window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    _interfaceOrientation = [windowScene _interfaceOrientation];
  }

  else
  {
    _interfaceOrientation = 1;
  }

  [(_UIToolbarVisualProviderModernIOS *)self defaultSizeForOrientation:_interfaceOrientation];
  if (v10 == v14)
  {
    [(_UIToolbarVisualProviderModernIOS *)self contentViewMargins];
    [(_UIToolbarContentView *)self->_contentView setPadding:?];
  }

  if (self->_useModernAppearance)
  {
    if (_UIBarsApplyChromelessEverywhere())
    {
      [(_UIToolbarVisualProviderModernIOS *)self backgroundTransitionProgress];
      if (toolbarIsSmall)
      {
        if (v15 > 0.25)
        {
          compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar compactScrollEdgeAppearance];
          if (compactScrollEdgeAppearance)
          {
            goto LABEL_23;
          }

          compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
          if (compactScrollEdgeAppearance)
          {
            goto LABEL_23;
          }

          v17 = 1;
          goto LABEL_17;
        }

LABEL_16:
        v17 = 0;
LABEL_17:
        compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar compactAppearance];
        if (compactScrollEdgeAppearance)
        {
          goto LABEL_23;
        }

        if (!v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
        if (!compactScrollEdgeAppearance)
        {
          goto LABEL_22;
        }

LABEL_23:
        v18 = compactScrollEdgeAppearance;
        _plainButtonAppearanceData = [compactScrollEdgeAppearance _plainButtonAppearanceData];
        [(_UIToolbarContentView *)self->_contentView setPlainItemAppearance:_plainButtonAppearanceData];

        _prominentButtonAppearanceData = [v18 _prominentButtonAppearanceData];
        [(_UIToolbarContentView *)self->_contentView setDoneItemAppearance:_prominentButtonAppearanceData];

        goto LABEL_24;
      }

      if (v15 > 0.25)
      {
        goto LABEL_21;
      }
    }

    else if (toolbarIsSmall)
    {
      goto LABEL_16;
    }

LABEL_22:
    compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar standardAppearance];
    goto LABEL_23;
  }

LABEL_24:
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
}

- (void)updateWithItems:(id)items fromOldItems:(id)oldItems animate:(BOOL)animate
{
  animateCopy = animate;
  itemsCopy = items;
  oldItemsCopy = oldItems;
  if (!self->_contentView)
  {
    v9 = [_UIToolbarContentView alloc];
    [(UIView *)self->super._toolbar bounds];
    v10 = [(_UIBarContentView *)v9 initWithFrame:?];
    contentView = self->_contentView;
    self->_contentView = v10;

    _UIBarsSetAccessibilityLimits(self->_contentView);
    [(UIView *)self->super._toolbar addSubview:self->_contentView];
  }

  [(_UIToolbarVisualProviderModernIOS *)self _updateContentView];
  [(_UIToolbarVisualProviderModernIOS *)self _setViewOwnersAndUpdateContentViewForItems:itemsCopy withOldItems:oldItemsCopy animated:animateCopy];
}

- (NSDirectionalEdgeInsets)contentViewMargins
{
  traitCollection = [(UIView *)self->super._toolbar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (_UIBarsUseNewPadHeights())
  {
    if (userInterfaceIdiom == 5)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 3.0;
    }

    v6 = v5;
  }

  else
  {
    v7 = self->super._toolbar;
    if ([(UIToolbar *)v7 barPosition]!= 4 && ([(UIToolbar *)v7 barPosition]!= 1 || _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(v7, 0) <= 0.0) || (v6 = 5.0, [(UIToolbar *)v7 isMinibar]))
    {
      v6 = 0.0;
    }

    v5 = 0.0;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = v6;
  result.trailing = v9;
  result.bottom = v5;
  result.leading = v8;
  result.top = v10;
  return result;
}

- (void)_itemDidChangeWidth:(id)width
{
  contentView = self->_contentView;
  items = [(UIToolbar *)self->super._toolbar items];
  [(_UIToolbarContentView *)contentView reloadWithItems:items];
}

- (void)setBackgroundTransitionProgress:(double)progress
{
  backgroundTransitionProgress = self->_backgroundTransitionProgress;
  v4 = fmax(fmin(progress, 1.0), 0.0);
  self->_backgroundTransitionProgress = v4;
  if (backgroundTransitionProgress != v4)
  {
    [(_UIToolbarVisualProviderModernIOS *)self updateAppearance];
  }
}

- (CGRect)_backgroundFrame
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(UIView *)self->super._toolbar bounds];
  v6 = v5;
  v8 = v7;
  if (-[UIToolbar barPosition](self->super._toolbar, "barPosition") == 3 && (-[UIView traitCollection](self->super._toolbar, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 userInterfaceIdiom], v9, v10 != 3))
  {
    window = [(UIView *)self->super._toolbar window];
    v14 = __UIStatusBarManagerForWindow(window);
    [v14 statusBarHeight];
    v16 = v15;

    v4 = v4 - v16;
    v8 = v8 + v16;
  }

  else
  {
    backgroundViewLayout = self->_backgroundViewLayout;
    if (backgroundViewLayout)
    {
      [(_UIBarBackgroundLayout *)backgroundViewLayout topInset];
      v4 = v4 - v12;
      v8 = v8 + v12;
    }
  }

  v17 = v8 + _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(self->super._toolbar, 0);
  v18 = v3;
  v19 = v4;
  v20 = v6;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)updateBarBackgroundSize
{
  [(_UIToolbarVisualProviderModernIOS *)self _backgroundFrame];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setSize:v3, v4];
}

- (void)setCustomBackgroundView:(id)view
{
  objc_storeStrong(&self->_customBackgroundView, view);
  viewCopy = view;
  [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:viewCopy];
}

- (id)currentBackgroundView
{
  customBackgroundView = self->_customBackgroundView;
  if (!customBackgroundView)
  {
    customBackgroundView = self->_backgroundView;
  }

  return customBackgroundView;
}

- (CGRect)backgroundFrame
{
  [(UIView *)self->_backgroundView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateBarForStyle:(int64_t)style
{
  barTintColor = [(UIToolbar *)self->super._toolbar barTintColor];
  _screen = [(UIView *)self->super._toolbar _screen];
  LOBYTE(style) = _UIBarStyleWithTintColorIsTranslucentOnScreen(style, barTintColor, _screen);

  if ((style & 1) == 0)
  {
    [(UIView *)self->super._toolbar setOpaque:[(UIToolbar *)self->super._toolbar isTranslucent]^ 1];
  }
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

      [(_UIToolbarVisualProviderModernIOS *)self updateAppearance];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIToolbarVisualProviderModernIOS.m" lineNumber:244 description:@"Downgrading modern appearance flag from YES to NO not supported"];
  }
}

- (void)updateAppearance
{
  [(_UIToolbarVisualProviderModernIOS *)self updateBarBackground];
  [(_UIToolbarVisualProviderModernIOS *)self _updateContentView];
  contentView = self->_contentView;

  [(_UIToolbarContentView *)contentView updateContent];
}

- (void)_updateBackgroundLegacyForPosition:(int64_t)position
{
  v5 = self->_backgroundViewLayout;
  if (!v5)
  {
    v5 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
    backgroundViewLayout = self->_backgroundViewLayout;
    self->_backgroundViewLayout = &v5->super;
  }

  traitCollection = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  isTranslucent = [(UIToolbar *)self->super._toolbar isTranslucent];
  barTintColor = [(UIToolbar *)self->super._toolbar barTintColor];
  barStyle = [(UIToolbar *)self->super._toolbar barStyle];
  if (barStyle == 4)
  {
    _currentCustomBackground = 0;
  }

  else
  {
    _currentCustomBackground = [(_UIToolbarVisualProviderModernIOS *)self _currentCustomBackground];
  }

  _hidesShadow = [(UIToolbar *)self->super._toolbar _hidesShadow];
  backgroundEffects = [(UIToolbar *)self->super._toolbar backgroundEffects];
  v14 = position & 0xFFFFFFFFFFFFFFFELL;
  if (backgroundEffects)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureWithEffects:backgroundEffects];
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  if (!_currentCustomBackground)
  {
    traitCollection3 = [(UIView *)self->super._toolbar traitCollection];
    userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      [(_UIBarBackgroundLayoutLegacy *)v5 configureAsTransparent];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v5 configureEffectForStyle:barStyle backgroundTintColor:barTintColor forceOpaque:!isTranslucent];
    }

    goto LABEL_8;
  }

  [_currentCustomBackground size];
  v20 = v19;
  [_currentCustomBackground capInsets];
  v15 = 0;
  if (position == 3 && v21 == 0.0 && v22 == 0.0)
  {
    v33 = barTintColor;
    window = [(UIView *)self->super._toolbar window];
    v24 = __UIStatusBarManagerForWindow(window);
    isStatusBarHidden = [v24 isStatusBarHidden];

    if (isStatusBarHidden)
    {
      v15 = 0;
    }

    else
    {
      [(UIView *)self->super._toolbar bounds];
      v15 = v20 == v32;
    }

    barTintColor = v33;
  }

  v35 = 0;
  [_currentCustomBackground _isInvisibleAndGetIsTranslucent:&v35];
  if (isTranslucent)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:_currentCustomBackground forceTranslucent:(v35 & 1) == 0];
  }

  else if (barTintColor)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:_currentCustomBackground forceOpaque:v35 backgroundTintColor:barTintColor];
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:_currentCustomBackground forceOpaque:v35 barStyle:barStyle];
  }

LABEL_9:
  __appearanceStorage = [(UIToolbar *)self->super._toolbar __appearanceStorage];
  v17 = __appearanceStorage;
  if (v14 == 2)
  {
    [__appearanceStorage topShadowImage];
  }

  else
  {
    [__appearanceStorage shadowImage];
  }
  v18 = ;

  if (v18)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureShadowImage:v18];
  }

  else if (_hidesShadow)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureWithoutShadow];
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureShadowForBarStyle:barStyle];
  }

  v26 = 0.0;
  if (v15)
  {
    window2 = [(UIView *)self->super._toolbar window];
    v28 = __UIStatusBarManagerForWindow(window2);
    [v28 defaultStatusBarHeightInOrientation:1];
    v26 = v29;
  }

  [(_UIBarBackgroundLayoutLegacy *)v5 setTopInset:v26];
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

  traitCollection = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](p_super, "setInterfaceIdiom:", [traitCollection userInterfaceIdiom]);

  traitCollection2 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](p_super, "setInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

  LODWORD(traitCollection2) = _UIBarsApplyChromelessEverywhere();
  toolbarIsSmall = [(_UIToolbarVisualProviderModernIOS *)self toolbarIsSmall];
  toolbar = self->super._toolbar;
  if (traitCollection2)
  {
    if (toolbarIsSmall)
    {
      v9 = toolbar;
      compactAppearance = [(UIToolbar *)v9 compactAppearance];
      v11 = compactAppearance;
      if (compactAppearance)
      {
        standardAppearance = compactAppearance;
      }

      else
      {
        standardAppearance = [(UIToolbar *)v9 standardAppearance];
      }

      v17 = standardAppearance;

      _backgroundData = [v17 _backgroundData];

      compactScrollEdgeAppearance = [(UIToolbar *)self->super._toolbar compactScrollEdgeAppearance];
      v19 = compactScrollEdgeAppearance;
      if (compactScrollEdgeAppearance)
      {
        scrollEdgeAppearance = compactScrollEdgeAppearance;
      }

      else
      {
        scrollEdgeAppearance = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
      }

      scrollEdgeAppearance2 = scrollEdgeAppearance;
    }

    else
    {
      standardAppearance2 = [(UIToolbar *)toolbar standardAppearance];
      _backgroundData = [standardAppearance2 _backgroundData];

      scrollEdgeAppearance2 = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
    }

    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:_backgroundData];
    if (scrollEdgeAppearance2)
    {
      [scrollEdgeAppearance2 _backgroundData];
    }

    else
    {
      +[_UIBarBackgroundAppearanceData transparentBackgroundData];
    }
    v14_backgroundData = ;
    [(_UIBarBackgroundLayout *)p_super setBackgroundData2:v14_backgroundData];
  }

  else
  {
    if (toolbarIsSmall)
    {
      [(UIToolbar *)toolbar compactAppearance];
    }

    else
    {
      [(UIToolbar *)toolbar standardAppearance];
    }
    _backgroundData = ;
    v14_backgroundData = [_backgroundData _backgroundData];
    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:v14_backgroundData];
  }
}

- (void)updateBarBackground
{
  _canDrawContent = [(UIView *)self->super._toolbar _canDrawContent];
  backgroundView = self->_backgroundView;
  if (_canDrawContent)
  {

    [(UIView *)backgroundView removeFromSuperview];
  }

  else
  {
    if (!backgroundView)
    {
      v5 = [_UIBarBackground alloc];
      [(_UIToolbarVisualProviderModernIOS *)self _backgroundFrame];
      v6 = [(_UIBarBackground *)v5 initWithFrame:?];
      v7 = self->_backgroundView;
      self->_backgroundView = v6;
    }

    barPosition = [(UIToolbar *)self->super._toolbar barPosition];
    [(_UIBarBackground *)self->_backgroundView setTopAligned:(barPosition & 0xFFFFFFFFFFFFFFFELL) == 2];
    [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:self->_customBackgroundView];
    if (self->_customBackgroundView)
    {
      backgroundViewLayout = self->_backgroundViewLayout;
      self->_backgroundViewLayout = 0;
    }

    else if (self->_useModernAppearance)
    {
      [(_UIToolbarVisualProviderModernIOS *)self _updateBackgroundModern];
    }

    else
    {
      [(_UIToolbarVisualProviderModernIOS *)self _updateBackgroundLegacyForPosition:barPosition];
    }

    [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setDisableTinting:[(UIToolbar *)self->super._toolbar _disableBlurTinting]];
    useModernAppearance = self->_useModernAppearance;
    [(_UIToolbarVisualProviderModernIOS *)self backgroundTransitionProgress];
    if (useModernAppearance)
    {
      [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setBackgroundTransitionProgress:?];
    }

    else
    {
      [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setBackgroundAlpha:1.0 - v11];
    }

    [(_UIBarBackground *)self->_backgroundView setLayout:self->_backgroundViewLayout];
    [(UIView *)self->super._toolbar insertSubview:self->_backgroundView atIndex:0];
    [(_UIToolbarVisualProviderModernIOS *)self updateBackgroundGroupName];
    [(_UIToolbarVisualProviderModernIOS *)self _backgroundFrame];
    [(UIView *)self->_backgroundView setFrame:?];
    v12 = self->_backgroundView;

    [(_UIBarBackground *)v12 transitionBackgroundViews];
  }
}

- (void)updateBackgroundGroupName
{
  traitCollection = [(UIView *)self->super._toolbar traitCollection];
  v3 = objc_opt_self();
  v4 = [traitCollection objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (id)_currentCustomBackground
{
  _barPosition = [(UIToolbar *)self->super._toolbar _barPosition];
  __appearanceStorage = [(UIToolbar *)self->super._toolbar __appearanceStorage];
  v5 = [__appearanceStorage backgroundImageForBarPosition:_barPosition barMetrics:0];

  if (_barPosition == 3 && v5 == 0)
  {
    _barPosition = 2;
  }

  if (!v5)
  {
    if (_barPosition == [(UIToolbar *)self->super._toolbar _barPosition])
    {
      v5 = 0;
    }

    else
    {
      __appearanceStorage2 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v5 = [__appearanceStorage2 backgroundImageForBarPosition:_barPosition barMetrics:0];
    }
  }

  isMinibar = [(UIToolbar *)self->super._toolbar isMinibar];
  if (v5)
  {
    v9 = !isMinibar;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    __appearanceStorage3 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
    v11 = [__appearanceStorage3 backgroundImageForBarPosition:-[UIToolbar _barPosition](self->super._toolbar barMetrics:{"_barPosition"), 1}];

    if (v11)
    {
      __appearanceStorage4 = v5;
      v5 = v11;
    }

    else
    {
      if (_barPosition == [(UIToolbar *)self->super._toolbar _barPosition])
      {
LABEL_19:

        goto LABEL_20;
      }

      __appearanceStorage4 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v13 = [__appearanceStorage4 backgroundImageForBarPosition:_barPosition barMetrics:1];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v5;
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
    v11 = [(UIToolbar *)self->super._toolbar barStyle]- 1;
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
  v14 = 0;
  if ((_UIBarsUseDynamicType() & 1) == 0 && preferredContentSizeCategory)
  {
    if ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryL"])
    {
      v14 = 0;
    }

    else
    {
      v14 = @"UICTContentSizeCategoryL";
    }
  }

  v15 = v8;
  v16 = v15;
  if (v9 || (v17 = v15, v14))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81___UIToolbarVisualProviderModernIOS_traitCollectionForChild_baseTraitCollection___block_invoke;
    v19[3] = &unk_1E70F8D50;
    v21 = v9;
    v20 = v14;
    v17 = [v16 traitCollectionByModifyingTraits:v19];
  }

  return v17;
}

- (CGSize)defaultSizeForOrientation:(int64_t)orientation
{
  if (_UIBarsUseNewPadHeights())
  {
    _screen = [(UIView *)self->super._toolbar _screen];
    [_screen bounds];
    v7 = v6;

    traitCollection = [(UIView *)self->super._toolbar traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v10 = 38.0;
    }

    else
    {
      v10 = 50.0;
    }
  }

  else
  {
    v11 = _UIUseMiniHeightInLandscape((orientation - 3) < 2);
    _screen2 = [(UIView *)self->super._toolbar _screen];
    [_screen2 bounds];
    v7 = v13;

    if (v11)
    {
      v10 = 32.0;
    }

    else
    {
      v14 = self->super._toolbar;
      if (([(UIToolbar *)v14 barPosition]== 4 || [(UIToolbar *)v14 barPosition]== 1 && _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(v14, 0) > 0.0) && ![(UIToolbar *)v14 isMinibar])
      {
        v10 = 49.0;
      }

      else
      {
        v10 = 44.0;
      }
    }
  }

  v15 = v7;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)toolbarIsSmall
{
  traitCollection = [(UIView *)self->super._toolbar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = _UIUseMiniHeightInLandscape(1u);
  if (v5)
  {
    if (userInterfaceIdiom == 5)
    {
      v6 = 34.0;
    }

    else
    {
      v6 = 44.0;
    }

    [(UIView *)self->super._toolbar bounds];
    LOBYTE(v5) = v7 < v6;
  }

  return v5;
}

@end