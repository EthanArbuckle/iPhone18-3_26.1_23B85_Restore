@interface _UIToolbarVisualProviderModernIOS
- (BOOL)toolbarIsSmall;
- (CGRect)_backgroundFrame;
- (CGRect)backgroundFrame;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (NSDirectionalEdgeInsets)contentViewMargins;
- (id)_currentCustomBackground;
- (id)currentBackgroundView;
- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4;
- (void)_itemDidChangeWidth:(id)a3;
- (void)_setViewOwnersAndUpdateContentViewForItems:(id)a3 withOldItems:(id)a4 animated:(BOOL)a5;
- (void)_updateBackgroundLegacyForPosition:(int64_t)a3;
- (void)_updateBackgroundModern;
- (void)_updateContentView;
- (void)setBackgroundTransitionProgress:(double)a3;
- (void)setCustomBackgroundView:(id)a3;
- (void)setUseModernAppearance:(BOOL)a3;
- (void)updateAppearance;
- (void)updateBackgroundGroupName;
- (void)updateBarBackground;
- (void)updateBarBackgroundSize;
- (void)updateBarForStyle:(int64_t)a3;
- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5;
@end

@implementation _UIToolbarVisualProviderModernIOS

- (void)_setViewOwnersAndUpdateContentViewForItems:(id)a3 withOldItems:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 isSystemItem] && objc_msgSend(v14, "systemItem") == 6)
        {
          [v14 _setViewOwner:self];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(_UIToolbarContentView *)self->_contentView updateWithItems:v8 fromOldItems:v9 animate:v5];
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
  v11 = [(_UIToolbarVisualProviderModernIOS *)self toolbarIsSmall];
  [(_UIToolbarContentView *)self->_contentView setCompactMetrics:v11];
  v12 = [(UIView *)self->super._toolbar window];
  v21 = [v12 windowScene];

  if (v21)
  {
    v13 = [v21 _interfaceOrientation];
  }

  else
  {
    v13 = 1;
  }

  [(_UIToolbarVisualProviderModernIOS *)self defaultSizeForOrientation:v13];
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
      if (v11)
      {
        if (v15 > 0.25)
        {
          v16 = [(UIToolbar *)self->super._toolbar compactScrollEdgeAppearance];
          if (v16)
          {
            goto LABEL_23;
          }

          v16 = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
          if (v16)
          {
            goto LABEL_23;
          }

          v17 = 1;
          goto LABEL_17;
        }

LABEL_16:
        v17 = 0;
LABEL_17:
        v16 = [(UIToolbar *)self->super._toolbar compactAppearance];
        if (v16)
        {
          goto LABEL_23;
        }

        if (!v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        v16 = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
        if (!v16)
        {
          goto LABEL_22;
        }

LABEL_23:
        v18 = v16;
        v19 = [v16 _plainButtonAppearanceData];
        [(_UIToolbarContentView *)self->_contentView setPlainItemAppearance:v19];

        v20 = [v18 _prominentButtonAppearanceData];
        [(_UIToolbarContentView *)self->_contentView setDoneItemAppearance:v20];

        goto LABEL_24;
      }

      if (v15 > 0.25)
      {
        goto LABEL_21;
      }
    }

    else if (v11)
    {
      goto LABEL_16;
    }

LABEL_22:
    v16 = [(UIToolbar *)self->super._toolbar standardAppearance];
    goto LABEL_23;
  }

LABEL_24:
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
}

- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
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
  [(_UIToolbarVisualProviderModernIOS *)self _setViewOwnersAndUpdateContentViewForItems:v12 withOldItems:v8 animated:v5];
}

- (NSDirectionalEdgeInsets)contentViewMargins
{
  v3 = [(UIView *)self->super._toolbar traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (_UIBarsUseNewPadHeights())
  {
    if (v4 == 5)
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

- (void)_itemDidChangeWidth:(id)a3
{
  contentView = self->_contentView;
  v4 = [(UIToolbar *)self->super._toolbar items];
  [(_UIToolbarContentView *)contentView reloadWithItems:v4];
}

- (void)setBackgroundTransitionProgress:(double)a3
{
  backgroundTransitionProgress = self->_backgroundTransitionProgress;
  v4 = fmax(fmin(a3, 1.0), 0.0);
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
    v13 = [(UIView *)self->super._toolbar window];
    v14 = __UIStatusBarManagerForWindow(v13);
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

- (void)setCustomBackgroundView:(id)a3
{
  objc_storeStrong(&self->_customBackgroundView, a3);
  v5 = a3;
  [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:v5];
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

- (void)updateBarForStyle:(int64_t)a3
{
  v6 = [(UIToolbar *)self->super._toolbar barTintColor];
  v5 = [(UIView *)self->super._toolbar _screen];
  LOBYTE(a3) = _UIBarStyleWithTintColorIsTranslucentOnScreen(a3, v6, v5);

  if ((a3 & 1) == 0)
  {
    [(UIView *)self->super._toolbar setOpaque:[(UIToolbar *)self->super._toolbar isTranslucent]^ 1];
  }
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

      [(_UIToolbarVisualProviderModernIOS *)self updateAppearance];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIToolbarVisualProviderModernIOS.m" lineNumber:244 description:@"Downgrading modern appearance flag from YES to NO not supported"];
  }
}

- (void)updateAppearance
{
  [(_UIToolbarVisualProviderModernIOS *)self updateBarBackground];
  [(_UIToolbarVisualProviderModernIOS *)self _updateContentView];
  contentView = self->_contentView;

  [(_UIToolbarContentView *)contentView updateContent];
}

- (void)_updateBackgroundLegacyForPosition:(int64_t)a3
{
  v5 = self->_backgroundViewLayout;
  if (!v5)
  {
    v5 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
    backgroundViewLayout = self->_backgroundViewLayout;
    self->_backgroundViewLayout = &v5->super;
  }

  v7 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [v7 userInterfaceIdiom]);

  v8 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [v8 userInterfaceStyle]);

  v9 = [(UIToolbar *)self->super._toolbar isTranslucent];
  v10 = [(UIToolbar *)self->super._toolbar barTintColor];
  v11 = [(UIToolbar *)self->super._toolbar barStyle];
  if (v11 == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(_UIToolbarVisualProviderModernIOS *)self _currentCustomBackground];
  }

  v34 = [(UIToolbar *)self->super._toolbar _hidesShadow];
  v13 = [(UIToolbar *)self->super._toolbar backgroundEffects];
  v14 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (v13)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureWithEffects:v13];
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  if (!v12)
  {
    v30 = [(UIView *)self->super._toolbar traitCollection];
    v31 = [v30 userInterfaceIdiom];

    if (v31 == 3)
    {
      [(_UIBarBackgroundLayoutLegacy *)v5 configureAsTransparent];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v5 configureEffectForStyle:v11 backgroundTintColor:v10 forceOpaque:!v9];
    }

    goto LABEL_8;
  }

  [v12 size];
  v20 = v19;
  [v12 capInsets];
  v15 = 0;
  if (a3 == 3 && v21 == 0.0 && v22 == 0.0)
  {
    v33 = v10;
    v23 = [(UIView *)self->super._toolbar window];
    v24 = __UIStatusBarManagerForWindow(v23);
    v25 = [v24 isStatusBarHidden];

    if (v25)
    {
      v15 = 0;
    }

    else
    {
      [(UIView *)self->super._toolbar bounds];
      v15 = v20 == v32;
    }

    v10 = v33;
  }

  v35 = 0;
  [v12 _isInvisibleAndGetIsTranslucent:&v35];
  if (v9)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:v12 forceTranslucent:(v35 & 1) == 0];
  }

  else if (v10)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:v12 forceOpaque:v35 backgroundTintColor:v10];
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureImage:v12 forceOpaque:v35 barStyle:v11];
  }

LABEL_9:
  v16 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
  v17 = v16;
  if (v14 == 2)
  {
    [v16 topShadowImage];
  }

  else
  {
    [v16 shadowImage];
  }
  v18 = ;

  if (v18)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureShadowImage:v18];
  }

  else if (v34)
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureWithoutShadow];
  }

  else
  {
    [(_UIBarBackgroundLayoutLegacy *)v5 configureShadowForBarStyle:v11];
  }

  v26 = 0.0;
  if (v15)
  {
    v27 = [(UIView *)self->super._toolbar window];
    v28 = __UIStatusBarManagerForWindow(v27);
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

  v5 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceIdiom:](p_super, "setInterfaceIdiom:", [v5 userInterfaceIdiom]);

  v6 = [(UIView *)self->super._toolbar traitCollection];
  -[_UIBarBackgroundLayout setInterfaceStyle:](p_super, "setInterfaceStyle:", [v6 userInterfaceStyle]);

  LODWORD(v6) = _UIBarsApplyChromelessEverywhere();
  v7 = [(_UIToolbarVisualProviderModernIOS *)self toolbarIsSmall];
  toolbar = self->super._toolbar;
  if (v6)
  {
    if (v7)
    {
      v9 = toolbar;
      v10 = [(UIToolbar *)v9 compactAppearance];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [(UIToolbar *)v9 standardAppearance];
      }

      v17 = v12;

      v14 = [v17 _backgroundData];

      v18 = [(UIToolbar *)self->super._toolbar compactScrollEdgeAppearance];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
      }

      v15 = v20;
    }

    else
    {
      v13 = [(UIToolbar *)toolbar standardAppearance];
      v14 = [v13 _backgroundData];

      v15 = [(UIToolbar *)self->super._toolbar scrollEdgeAppearance];
    }

    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:v14];
    if (v15)
    {
      [v15 _backgroundData];
    }

    else
    {
      +[_UIBarBackgroundAppearanceData transparentBackgroundData];
    }
    v16 = ;
    [(_UIBarBackgroundLayout *)p_super setBackgroundData2:v16];
  }

  else
  {
    if (v7)
    {
      [(UIToolbar *)toolbar compactAppearance];
    }

    else
    {
      [(UIToolbar *)toolbar standardAppearance];
    }
    v14 = ;
    v16 = [v14 _backgroundData];
    [(_UIBarBackgroundLayout *)p_super setBackgroundData1:v16];
  }
}

- (void)updateBarBackground
{
  v3 = [(UIView *)self->super._toolbar _canDrawContent];
  backgroundView = self->_backgroundView;
  if (v3)
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

    v8 = [(UIToolbar *)self->super._toolbar barPosition];
    [(_UIBarBackground *)self->_backgroundView setTopAligned:(v8 & 0xFFFFFFFFFFFFFFFELL) == 2];
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
      [(_UIToolbarVisualProviderModernIOS *)self _updateBackgroundLegacyForPosition:v8];
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
  v5 = [(UIView *)self->super._toolbar traitCollection];
  v3 = objc_opt_self();
  v4 = [v5 objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (id)_currentCustomBackground
{
  v3 = [(UIToolbar *)self->super._toolbar _barPosition];
  v4 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
  v5 = [v4 backgroundImageForBarPosition:v3 barMetrics:0];

  if (v3 == 3 && v5 == 0)
  {
    v3 = 2;
  }

  if (!v5)
  {
    if (v3 == [(UIToolbar *)self->super._toolbar _barPosition])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v5 = [v7 backgroundImageForBarPosition:v3 barMetrics:0];
    }
  }

  v8 = [(UIToolbar *)self->super._toolbar isMinibar];
  if (v5)
  {
    v9 = !v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
    v11 = [v10 backgroundImageForBarPosition:-[UIToolbar _barPosition](self->super._toolbar barMetrics:{"_barPosition"), 1}];

    if (v11)
    {
      v12 = v5;
      v5 = v11;
    }

    else
    {
      if (v3 == [(UIToolbar *)self->super._toolbar _barPosition])
      {
LABEL_19:

        goto LABEL_20;
      }

      v12 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v13 = [v12 backgroundImageForBarPosition:v3 barMetrics:1];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v5;
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
    v11 = [(UIToolbar *)self->super._toolbar barStyle]- 1;
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
  v14 = 0;
  if ((_UIBarsUseDynamicType() & 1) == 0 && v13)
  {
    if ([v13 isEqualToString:@"UICTContentSizeCategoryL"])
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

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  if (_UIBarsUseNewPadHeights())
  {
    v5 = [(UIView *)self->super._toolbar _screen];
    [v5 bounds];
    v7 = v6;

    v8 = [(UIView *)self->super._toolbar traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5)
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
    v11 = _UIUseMiniHeightInLandscape((a3 - 3) < 2);
    v12 = [(UIView *)self->super._toolbar _screen];
    [v12 bounds];
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
  v3 = [(UIView *)self->super._toolbar traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = _UIUseMiniHeightInLandscape(1u);
  if (v5)
  {
    if (v4 == 5)
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