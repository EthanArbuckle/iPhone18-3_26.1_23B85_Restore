@interface PXCuratedLibraryOverlayButton
+ (CGSize)_sizeOfTitle:(id)title withFont:(id)font;
+ (CGSize)sizeWithConfiguration:(id)configuration;
+ (NSCache)buttonSizeCache;
+ (NSCache)titleSizeCache;
+ (UIFont)defaultTitleFont;
+ (id)iconImageSymbolConfigurationFromConfiguration:(id)configuration;
+ (void)_getSize:(CGSize *)size titleFrame:(CGRect *)frame captionFrame:(CGRect *)captionFrame iconFrame:(CGRect *)iconFrame forConfiguration:(id)configuration title:(id)title;
- (CGRect)clippingRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (PXCuratedLibraryOverlayButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_accessibilitySettingsChanged:(id)changed;
- (void)_performAction:(id)action;
- (void)_performMenuAction:(id)action;
- (void)_platformSpecificViewSetup;
- (void)_setupViews;
- (void)_updateBackgroundView;
- (void)_updateButtonSystemWithConfiguration:(id)configuration;
- (void)_updateButtonWithConfiguration:(id)configuration;
- (void)_updateEffectView;
- (void)_updateEffectViewBackgroundStyle;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setUserData:(id)data;
@end

@implementation PXCuratedLibraryOverlayButton

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

- (void)_updateEffectView
{
  if ([objc_opt_class() usesButtonSystem])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1639 description:@"Shouldn't be called if button system is used."];
  }

  [(PXCuratedLibraryOverlayButton *)self effectView];
  if (objc_claimAutoreleasedReturnValue())
  {
    userData = [(PXCuratedLibraryOverlayButton *)self userData];
    [(PXCuratedLibraryOverlayButton *)self _updateEffectViewBackgroundStyle];
    v5 = userData;
    [v5 segment];
    spec = [v5 spec];
    [spec buttonHeight];

    [v5 style];
    spec2 = [v5 spec];

    [spec2 layoutDirection];
    PXFloatApproximatelyEqualToFloat();
  }
}

- (void)_updateEffectViewBackgroundStyle
{
  if ([objc_opt_class() usesButtonSystem])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1564 description:@"Shouldn't be called if button system is used."];
  }

  effectView = [(PXCuratedLibraryOverlayButton *)self effectView];
  if (effectView)
  {
    v19 = effectView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    userData = [(PXCuratedLibraryOverlayButton *)self userData];
    style = [userData style];

    v8 = 1;
    if (style <= 8)
    {
      if (style <= 5)
      {
        if (style)
        {
          if (style != 1)
          {
            v9 = 0;
            v10 = 0;
            if ((style - 2) < 4)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1618 description:@"Code which should be unreachable has been reached"];

              abort();
            }

            goto LABEL_24;
          }

          goto LABEL_18;
        }

        goto LABEL_19;
      }

      if (style == 6)
      {
        goto LABEL_19;
      }

      if (style == 7)
      {
LABEL_18:
        v9 = @"UIBlurEffectStyleSystemUltraThinMaterialDark";
        v10 = 16;
        goto LABEL_24;
      }

      v9 = @"UIBlurEffectStyleSystemThinMaterial";
      v8 = 1;
      v10 = 7;
    }

    else
    {
      if (style <= 11)
      {
        if (style != 10)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 = @"UIBlurEffectStyleSystemUltraThinMaterial";
        v10 = 6;
        goto LABEL_24;
      }

      switch(style)
      {
        case 12:
          systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];

          v10 = 6;
          clearColor = systemBlueColor;
          v9 = @"UIBlurEffectStyleSystemUltraThinMaterial";
          break;
        case 13:
          systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];

          v10 = 7;
          clearColor = systemBlueColor2;
          v9 = @"UIBlurEffectStyleSystemThinMaterial";
          break;
        case 14:
          userData2 = [(PXCuratedLibraryOverlayButton *)self userData];
          backgroundColor = [userData2 backgroundColor];

          v9 = 0;
          v8 = 0;
          v10 = 0;
          clearColor = backgroundColor;
          break;
        default:
          v9 = 0;
          v10 = 0;
          break;
      }
    }

LABEL_24:
    contentView = [(PXCuratedLibraryOverlayButton *)self contentView];
    [contentView setBackgroundColor:clearColor];

    if (v8)
    {
      v16 = [MEMORY[0x1E69DC730] effectWithStyle:v10];
      [v19 setEffect:v16];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXCuratedLibraryOverlayButton-%@", v9];
      [v19 _setGroupName:v9];
    }

    else
    {
      [v19 setEffect:0];
    }

    effectView = v19;
  }
}

- (void)_platformSpecificViewSetup
{
  v3 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
  [(PXCuratedLibraryOverlayButton *)self addInteraction:v3];
  [(PXCuratedLibraryOverlayButton *)self setPointerInteraction:v3];
}

- (void)_updateBackgroundView
{
  if ([objc_opt_class() usesButtonSystem])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1529 description:@"Shouldn't be called if button system is used."];
  }

  userData = [(PXCuratedLibraryOverlayButton *)self userData];
  style = [userData style];

  if (style >= 0xF)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _PXNeedsEffectViewForStyle(PXCuratedLibraryOverlayButtonStyle)"];
    [currentHandler2 handleFailureInFunction:v16 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = 0x7FC3u >> style;
  effectView = [(PXCuratedLibraryOverlayButton *)self effectView];

  if ((v6 & 1) == 0 || effectView)
  {
    if ((v6 & 1) != 0 || !effectView)
    {
      return;
    }

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PXCuratedLibraryOverlayButton *)self bounds];
    v17 = [v12 initWithFrame:?];
    [v17 setUserInteractionEnabled:0];
    [v17 setAutoresizingMask:18];
    [(PXCuratedLibraryOverlayButton *)self setContentView:v17];
    [(PXCuratedLibraryOverlayButton *)self addSubview:v17];
    effectView2 = [(PXCuratedLibraryOverlayButton *)self effectView];
    [effectView2 removeFromSuperview];

    [(PXCuratedLibraryOverlayButton *)self setEffectView:0];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69DD298]);
    [(PXCuratedLibraryOverlayButton *)self bounds];
    v17 = [v8 initWithFrame:?];
    [v17 setUserInteractionEnabled:0];
    [v17 setAutoresizingMask:18];
    [(PXCuratedLibraryOverlayButton *)self setEffectView:v17];
    contentView = [(PXCuratedLibraryOverlayButton *)self contentView];
    contentView2 = [v17 contentView];
    [(PXCuratedLibraryOverlayButton *)self setContentView:contentView2];

    effectView3 = [(PXCuratedLibraryOverlayButton *)self effectView];
    [(PXCuratedLibraryOverlayButton *)self addSubview:effectView3];

    [contentView removeFromSuperview];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(PXCuratedLibraryOverlayButton *)self userData:interaction];
  segment = [v5 segment];
  spec = [v5 spec];
  [spec buttonHeight];
  v9 = v8 * 0.5;

  style = [v5 style];
  v11 = 0.0;
  v12 = 4.0;
  v13 = 5.0;
  if (((1 << style) & 0xC0) == 0)
  {
    v13 = 0.0;
  }

  if (((1 << style) & 0x1C00) != 0)
  {
    v13 = 0.0;
  }

  else
  {
    v12 = v9;
  }

  if (((1 << style) & 0x3C) != 0)
  {
    v13 = 0.0;
    v12 = 0.0;
  }

  if (style > 0xC)
  {
    v12 = v9;
  }

  else
  {
    v11 = v13;
  }

  if (segment == 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (segment == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  spec2 = [v5 spec];
  layoutDirection = [spec2 layoutDirection];

  if (layoutDirection == 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (layoutDirection == 2)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  v20 = v19;
  v21 = v18;
  [objc_opt_class() sizeWithConfiguration:v5];
  v24 = [MEMORY[0x1E69DC728] px_bezierPathWithRoundedRect:0.0 topLeftCornerRadius:0.0 topRightCornerRadius:v22 bottomLeftCornerRadius:v23 bottomRightCornerRadius:{v21, v20, v21, v20}];
  v25 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  [v25 setVisiblePath:v24];
  v26 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v25];
  v27 = [MEMORY[0x1E69DCDB8] effectWithPreview:v26];
  v28 = [MEMORY[0x1E69DCDD0] styleWithEffect:v27 shape:0];

  return v28;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = [(PXCuratedLibraryOverlayButton *)self userData:interaction];
  spec = [v6 spec];
  isFloating = [spec isFloating];

  if ((isFloating & 1) != 0 || [v6 forcePointerInteractionEnabled])
  {
    v9 = MEMORY[0x1E69DCDC0];
    [(PXCuratedLibraryOverlayButton *)self bounds];
    v10 = [v9 regionWithRect:@"curatedLibraryOverylayButton" identifier:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryOverlayButton;
  [(PXCuratedLibraryOverlayButton *)&v11 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  userData = [(PXCuratedLibraryOverlayButton *)self userData];
  willDismissMenuActionHandler = [userData willDismissMenuActionHandler];

  if (willDismissMenuActionHandler)
  {
    userData2 = [(PXCuratedLibraryOverlayButton *)self userData];
    willDismissMenuActionHandler2 = [userData2 willDismissMenuActionHandler];
    willDismissMenuActionHandler2[2]();
  }

  menu = [(PXCuratedLibraryOverlayButton *)self menu];
  [menu didClose];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryOverlayButton;
  [(PXCuratedLibraryOverlayButton *)&v11 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  userData = [(PXCuratedLibraryOverlayButton *)self userData];
  willDisplayMenuActionHandler = [userData willDisplayMenuActionHandler];

  if (willDisplayMenuActionHandler)
  {
    userData2 = [(PXCuratedLibraryOverlayButton *)self userData];
    willDisplayMenuActionHandler2 = [userData2 willDisplayMenuActionHandler];
    willDisplayMenuActionHandler2[2]();
  }

  menu = [(PXCuratedLibraryOverlayButton *)self menu];
  [menu willOpen];
}

- (void)_accessibilitySettingsChanged:(id)changed
{
  customTitleLabel = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
  [customTitleLabel _setWantsUnderlineForAccessibilityButtonShapesEnabled:UIAccessibilityButtonShapesEnabled()];
}

- (void)setContentView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([objc_opt_class() usesButtonSystem])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1446 description:@"Shouldn't be called if button system is used."];
  }

  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v8 = contentView;
    objc_storeStrong(&self->_contentView, view);
    if (viewCopy && v8)
    {
      [(UIView *)v8 frame];
      [(UIView *)viewCopy setFrame:?];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      subviews = [(UIView *)v8 subviews];
      v10 = [subviews copy];

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(UIView *)viewCopy addSubview:*(*(&v16 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      [(PXCuratedLibraryOverlayButton *)self insertSubview:viewCopy aboveSubview:v8];
    }
  }
}

- (void)_performMenuAction:(id)action
{
  actionCopy = action;
  userData = [(PXCuratedLibraryOverlayButton *)self userData];
  actionPerformer = [userData actionPerformer];
  menuActionHandler = [userData menuActionHandler];
  v8 = menuActionHandler;
  if (actionPerformer && menuActionHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1435 description:{@"Invalid parameter not satisfying: %@", @"PX_NAND(actionPerformer, actionHandler)"}];
  }

  [actionPerformer setSender:actionCopy];
  [actionPerformer performActionWithCompletionHandler:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_performAction:(id)action
{
  actionCopy = action;
  userData = [(PXCuratedLibraryOverlayButton *)self userData];
  actionPerformer = [userData actionPerformer];
  actionHandler = [userData actionHandler];
  v8 = actionHandler;
  if (actionPerformer && actionHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1420 description:{@"Invalid parameter not satisfying: %@", @"PX_NAND(actionPerformer, actionHandler)"}];
  }

  [actionPerformer setSender:actionCopy];
  [actionPerformer performActionWithCompletionHandler:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_updateButtonWithConfiguration:(id)configuration
{
  v47 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ([objc_opt_class() usesButtonSystem])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1351 description:@"Shouldn't be called if button system is used."];
  }

  [(PXCuratedLibraryOverlayButton *)self _updateBackgroundView];
  [(PXCuratedLibraryOverlayButton *)self _updateEffectView];
  customIconImageView = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
  tintedIconImage = [configurationCopy tintedIconImage];
  [customIconImageView setImage:tintedIconImage];

  highlightedIconImage = [configurationCopy highlightedIconImage];
  [customIconImageView setHighlightedImage:highlightedIconImage];

  tintColor = [configurationCopy tintColor];
  [customIconImageView setTintColor:tintColor];

  pointerInteraction = [(PXCuratedLibraryOverlayButton *)self pointerInteraction];
  [pointerInteraction invalidate];

  v11 = configurationCopy;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  systemImageName = [v11 systemImageName];
  v16 = [off_1E7721928 alloc];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "style")}];
  v18 = v17;
  if (systemImageName)
  {
    v44 = v17;
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v45 = preferredContentSizeCategory2;
    v46 = systemImageName;
    v21 = MEMORY[0x1E695DEC8];
    v22 = 3;
  }

  else
  {
    v44 = v17;
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v45 = preferredContentSizeCategory2;
    v21 = MEMORY[0x1E695DEC8];
    v22 = 2;
  }

  v23 = [v21 arrayWithObjects:&v44 count:v22];
  v24 = [v16 initWithObjects:v23];

  v25 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v24];
  if (v25)
  {
LABEL_33:

    [customIconImageView setPreferredSymbolConfiguration:v25];
    [v11 hitTestOutsets];
    sub_1A524D1F4();
  }

  style = [v11 style];
  if (style <= 0xE)
  {
    if (((1 << style) & 0x6FC0) != 0)
    {
LABEL_11:
      v27 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v27 = MEMORY[0x1E69DDC70];
      }

      v28 = *v27;
      spec = [v11 spec];
      options = [spec options];

      v31 = MEMORY[0x1E69DDCF8];
      if ((options & 4) == 0)
      {
        v31 = MEMORY[0x1E69DDD78];
      }

      v32 = *v31;
      v33 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v32 maxContentSizeCategory:v28 withSymbolicTraits:32770];
      if ((options & 4) != 0 || ([systemImageName isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(systemImageName, "isEqualToString:", @"person.2.fill"))
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      v35 = MEMORY[0x1E69DCAD8];
      [v33 pointSize];
      v25 = [v35 configurationWithPointSize:6 weight:v34 scale:?];

      goto LABEL_31;
    }

    if (((1 << style) & 0x30) != 0)
    {
      v28 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
      v36 = MEMORY[0x1E69DCAD8];
      [v28 pointSize];
      v38 = v37 + 2.0;
LABEL_26:
      v40 = v36;
      v41 = 6;
      goto LABEL_30;
    }

    if (style == 12)
    {
      v39 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v39 = MEMORY[0x1E69DDC70];
      }

      v28 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD78] maxContentSizeCategory:*v39 withSymbolicTraits:32770];
      v36 = MEMORY[0x1E69DCAD8];
      [v28 pointSize];
      goto LABEL_26;
    }
  }

  if (style < 2)
  {
    goto LABEL_11;
  }

  if (style - 2 > 1)
  {
    v25 = 0;
    goto LABEL_32;
  }

  v28 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
  v42 = MEMORY[0x1E69DCAD8];
  [v28 pointSize];
  v40 = v42;
  v41 = 4;
LABEL_30:
  v25 = [v40 configurationWithPointSize:v41 weight:3 scale:v38];
LABEL_31:

LABEL_32:
  [_PXIconImageSymbolConfiguration_configsCache setObject:v25 forKey:v24];
  goto LABEL_33;
}

- (void)_updateButtonSystemWithConfiguration:(id)configuration
{
  v89 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (([objc_opt_class() usesButtonSystem] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1203 description:@"Shouldn't be called if button system is not used."];
  }

  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  if (configurationCopy)
  {
    v7 = configurationCopy;
    segment = [v7 segment];
    spec = [v7 spec];
    [spec buttonHeight];
    v11 = v10 * 0.5;

    style = [v7 style];
    v13 = 0.0;
    if (style <= 0xC)
    {
      if (((1 << style) & 0x3C) != 0)
      {
        v11 = 0.0;
      }

      else if (((1 << style) & 0x1C00) != 0)
      {
        v11 = 4.0;
      }

      else if (((1 << style) & 0xC0) != 0)
      {
        v13 = 5.0;
      }
    }

    if (segment == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (segment == 1)
    {
      v11 = v13;
    }

    spec2 = [v7 spec];

    layoutDirection = [spec2 layoutDirection];
    if (layoutDirection == 2)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (layoutDirection == 2)
    {
      v18 = v14;
    }

    else
    {
      v18 = v11;
    }

    if (v17 >= v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    [plainButtonConfiguration setCornerStyle:4];
    if (v19 == 0.0)
    {
      [plainButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    }
  }

  iconImageWithoutConfiguration = [configurationCopy iconImageWithoutConfiguration];

  if (iconImageWithoutConfiguration)
  {
    iconImageWithoutConfiguration2 = [configurationCopy iconImageWithoutConfiguration];
    [plainButtonConfiguration setImage:iconImageWithoutConfiguration2];
  }

  v22 = configurationCopy;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  systemImageName = [v22 systemImageName];
  v26 = [off_1E7721928 alloc];
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "style")}];
  v28 = v27;
  if (systemImageName)
  {
    v86 = v27;
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v87 = preferredContentSizeCategory2;
    v88 = systemImageName;
    v31 = MEMORY[0x1E695DEC8];
    v32 = 3;
  }

  else
  {
    v86 = v27;
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v87 = preferredContentSizeCategory2;
    v31 = MEMORY[0x1E695DEC8];
    v32 = 2;
  }

  v33 = [v31 arrayWithObjects:&v86 count:v32];
  v34 = [v26 initWithObjects:v33];

  v35 = &lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
  v36 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v34];
  v37 = 0x1E69DC000uLL;
  if (v36)
  {
LABEL_59:

    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v36];
    title = [v22 title];

    if (title)
    {
      title2 = [v22 title];
      [plainButtonConfiguration setTitle:title2];

      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke;
      v84[3] = &unk_1E7741BF8;
      v85 = v22;
      [plainButtonConfiguration setTitleTextAttributesTransformer:v84];
    }

    caption = [v22 caption];

    if (caption)
    {
      caption2 = [v22 caption];
      [plainButtonConfiguration setSubtitle:caption2];

      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke_2;
      v82[3] = &unk_1E7741BF8;
      v83 = v22;
      [plainButtonConfiguration setSubtitleTextAttributesTransformer:v82];
    }

    style2 = [v22 style];
    v60 = 0;
    if (style2 > 8)
    {
      if (style2 <= 11)
      {
        if (style2 != 10)
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      if (style2 == 12)
      {
        v61 = [MEMORY[0x1E69DC730] effectWithStyle:6];
        systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_82;
      }

      if (style2 != 13)
      {
        systemBlueColor = 0;
        v61 = 0;
        if (style2 == 14)
        {
          systemBlueColor = [v22 backgroundColor];
          v60 = 0;
          v61 = 0;
        }

LABEL_83:
        [plainButtonConfiguration setTitleLineBreakMode:2];
        [plainButtonConfiguration setSubtitleLineBreakMode:2];
        if (v61)
        {
          effectView = [(PXCuratedLibraryOverlayButton *)self effectView];

          if (effectView)
          {
            effectView2 = [(PXCuratedLibraryOverlayButton *)self effectView];
            [effectView2 setEffect:v61];
          }

          else
          {
            effectView2 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v61];
            [(PXCuratedLibraryOverlayButton *)self setEffectView:effectView2];
          }

          effectView3 = [(PXCuratedLibraryOverlayButton *)self effectView];
          contentView = [effectView3 contentView];
          [contentView setBackgroundColor:systemBlueColor];

          [effectView3 _setGroupName:v60];
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          background = [plainButtonConfiguration background];
          [background setBackgroundColor:clearColor];

          background2 = [plainButtonConfiguration background];
          [background2 setCustomView:effectView3];
        }

        else
        {
          if (!systemBlueColor)
          {
            goto LABEL_91;
          }

          effectView3 = [plainButtonConfiguration background];
          [effectView3 setBackgroundColor:systemBlueColor];
        }

LABEL_91:
        sharedApplication = [*(v37 + 1640) sharedApplication];
        preferredContentSizeCategory3 = [sharedApplication preferredContentSizeCategory];
        v72 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

        if (v72)
        {
          [(PXCuratedLibraryOverlayButton *)self setShowsLargeContentViewer:1];
          v73 = objc_alloc_init(MEMORY[0x1E69DCC18]);
          [(PXCuratedLibraryOverlayButton *)self addInteraction:v73];

          accessibilityTitle = [v22 accessibilityTitle];
          if (accessibilityTitle)
          {
            [(PXCuratedLibraryOverlayButton *)self setLargeContentTitle:accessibilityTitle];
          }

          else
          {
            title3 = [v22 title];
            [(PXCuratedLibraryOverlayButton *)self setLargeContentTitle:title3];
          }

          largeContentViewerImage = [v22 largeContentViewerImage];
          [(PXCuratedLibraryOverlayButton *)self setLargeContentImage:largeContentViewerImage];

          [(PXCuratedLibraryOverlayButton *)self setScalesLargeContentImage:1];
        }

        accessibilityTitle2 = [v22 accessibilityTitle];
        [(PXCuratedLibraryOverlayButton *)self setAccessibilityLabel:accessibilityTitle2];

        contentColor = [v22 contentColor];
        [(PXCuratedLibraryOverlayButton *)self setTintColor:contentColor];

        accessibilityTitle3 = [v22 accessibilityTitle];
        [(PXCuratedLibraryOverlayButton *)self setAccessibilityLabel:accessibilityTitle3];

        [v22 hitTestOutsets];
        sub_1A524D1F4();
      }

      v61 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_80:
      v60 = @"UIBlurEffectStyleSystemThinMaterial";
      goto LABEL_83;
    }

    if (style2 <= 5)
    {
      if (style2)
      {
        systemBlueColor = 0;
        v61 = 0;
        if (style2 != 1)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      }
    }

    else if (style2 != 6)
    {
      if (style2 == 7)
      {
LABEL_77:
        v61 = [MEMORY[0x1E69DC730] effectWithStyle:16];
        systemBlueColor = 0;
        v60 = @"UIBlurEffectStyleSystemUltraThinMaterialDark";
        goto LABEL_83;
      }

      v61 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      systemBlueColor = 0;
      goto LABEL_80;
    }

LABEL_78:
    v61 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    systemBlueColor = 0;
LABEL_82:
    v60 = @"UIBlurEffectStyleSystemUltraThinMaterial";
    goto LABEL_83;
  }

  style3 = [v22 style];
  if (style3 <= 0xE)
  {
    if (((1 << style3) & 0x6FC0) != 0)
    {
LABEL_37:
      v39 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v39 = MEMORY[0x1E69DDC70];
      }

      v40 = *v39;
      spec3 = [v22 spec];
      options = [spec3 options];

      v43 = MEMORY[0x1E69DDCF8];
      if ((options & 4) == 0)
      {
        v43 = MEMORY[0x1E69DDD78];
      }

      v44 = *v43;
      v45 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v44 maxContentSizeCategory:v40 withSymbolicTraits:32770];
      if ((options & 4) != 0 || ([systemImageName isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(systemImageName, "isEqualToString:", @"person.2.fill"))
      {
        v46 = 1;
      }

      else
      {
        v46 = 2;
      }

      v47 = MEMORY[0x1E69DCAD8];
      [v45 pointSize];
      v36 = [v47 configurationWithPointSize:6 weight:v46 scale:?];

      v37 = 0x1E69DC000;
      v35 = &lastSeenSuggestionsDateAccessor_lastSeenSuggestionsDateAccessor;
      goto LABEL_57;
    }

    if (((1 << style3) & 0x30) != 0)
    {
      v40 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
      v48 = MEMORY[0x1E69DCAD8];
      [v40 pointSize];
      v50 = v49 + 2.0;
LABEL_52:
      v52 = v48;
      v53 = 6;
      goto LABEL_56;
    }

    if (style3 == 12)
    {
      v51 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v51 = MEMORY[0x1E69DDC70];
      }

      v40 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD78] maxContentSizeCategory:*v51 withSymbolicTraits:32770];
      v48 = MEMORY[0x1E69DCAD8];
      [v40 pointSize];
      goto LABEL_52;
    }
  }

  if (style3 < 2)
  {
    goto LABEL_37;
  }

  if (style3 - 2 > 1)
  {
    v36 = 0;
    goto LABEL_58;
  }

  v40 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
  v54 = MEMORY[0x1E69DCAD8];
  [v40 pointSize];
  v52 = v54;
  v53 = 4;
LABEL_56:
  v36 = [v52 configurationWithPointSize:v53 weight:3 scale:v50];
LABEL_57:

LABEL_58:
  [v35[118] setObject:v36 forKey:v34];
  goto LABEL_59;
}

id __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [*(a1 + 32) style];
  if (_PXFontForComponent_onceToken != -1)
  {
    dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
  }

  v6 = v5 - 2;
  v7 = [off_1E7721928 alloc];
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  v23[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:(v5 - 2) < 4];
  v23[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v12 = [v7 initWithObjects:v11];

  v13 = [_PXFontForComponent_fontCache objectForKey:v12];
  if (!v13)
  {
    if (v6 < 4)
    {
      if (([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentTitle"] & 1) == 0 && !objc_msgSend(@"_PXOverlayButtonComponentTitle", "isEqualToString:", @"_PXOverlayButtonComponentCaption"))
      {
        goto LABEL_22;
      }

      v13 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
LABEL_17:
      if (v13)
      {
        [_PXFontForComponent_fontCache setObject:v13 forKey:v12];
        goto LABEL_19;
      }

LABEL_22:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
      [v21 handleFailureInFunction:v22 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

      abort();
    }

    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v14 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

    v17 = MEMORY[0x1E69DDC50];
    if (!IsAccessibilityCategory)
    {
      v17 = MEMORY[0x1E69DDC60];
    }

    v18 = *v17;
    if ([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentTitle"])
    {
      v19 = 2;
    }

    else
    {
      if (![@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentCaption"])
      {
        v13 = 0;
        goto LABEL_16;
      }

      v19 = 0;
    }

    v13 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:v18 withSymbolicTraits:v19];
LABEL_16:

    goto LABEL_17;
  }

LABEL_19:

  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v4;
}

id __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [*(a1 + 32) style];
  if (_PXFontForComponent_onceToken != -1)
  {
    dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
  }

  v6 = v5 - 2;
  v7 = [off_1E7721928 alloc];
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  v23[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:(v5 - 2) < 4];
  v23[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v12 = [v7 initWithObjects:v11];

  v13 = [_PXFontForComponent_fontCache objectForKey:v12];
  if (!v13)
  {
    if (v6 < 4)
    {
      if (([@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentTitle"] & 1) == 0 && !objc_msgSend(@"_PXOverlayButtonComponentCaption", "isEqualToString:", @"_PXOverlayButtonComponentCaption"))
      {
        goto LABEL_22;
      }

      v13 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
LABEL_17:
      if (v13)
      {
        [_PXFontForComponent_fontCache setObject:v13 forKey:v12];
        goto LABEL_19;
      }

LABEL_22:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
      [v21 handleFailureInFunction:v22 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

      abort();
    }

    v14 = [MEMORY[0x1E69DC668] sharedApplication];
    v15 = [v14 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v15);

    v17 = MEMORY[0x1E69DDC50];
    if (!IsAccessibilityCategory)
    {
      v17 = MEMORY[0x1E69DDC60];
    }

    v18 = *v17;
    if ([@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentTitle"])
    {
      v19 = 2;
    }

    else
    {
      if (![@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentCaption"])
      {
        v13 = 0;
        goto LABEL_16;
      }

      v19 = 0;
    }

    v13 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:v18 withSymbolicTraits:v19];
LABEL_16:

    goto LABEL_17;
  }

LABEL_19:

  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v4;
}

- (void)_setupViews
{
  if (([objc_opt_class() usesButtonSystem] & 1) == 0)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXCuratedLibraryOverlayButton *)self setBackgroundColor:clearColor];

    [(PXCuratedLibraryOverlayButton *)self _updateBackgroundView];
    [(PXCuratedLibraryOverlayButton *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v6, v8, v10}];
    [(UIImageView *)v12 setUserInteractionEnabled:0];
    customIconImageView = self->_customIconImageView;
    self->_customIconImageView = v12;
    v14 = v12;

    contentView = [(PXCuratedLibraryOverlayButton *)self contentView];
    [contentView addSubview:v14];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PXCuratedLibraryOverlayButton__setupViews__block_invoke;
    aBlock[3] = &unk_1E773D078;
    *&aBlock[5] = v5;
    *&aBlock[6] = v7;
    *&aBlock[7] = v9;
    *&aBlock[8] = v11;
    aBlock[4] = self;
    v16 = _Block_copy(aBlock);
    v17 = v16[2]();
    customTitleLabel = self->_customTitleLabel;
    self->_customTitleLabel = v17;

    v19 = (v16[2])(v16);
    customCaptionLabel = self->_customCaptionLabel;
    self->_customCaptionLabel = v19;
  }

  layer = [(PXCuratedLibraryOverlayButton *)self layer];
  [layer setAllowsGroupOpacity:0];

  [(PXCuratedLibraryOverlayButton *)self _platformSpecificViewSetup];
}

id __44__PXCuratedLibraryOverlayButton__setupViews__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v2 setUserInteractionEnabled:0];
  [v2 setLineBreakMode:2];
  [v2 setTextAlignment:1];
  v3 = [*(a1 + 32) contentView];
  [v3 addSubview:v2];

  return v2;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([objc_opt_class() usesButtonSystem])
  {
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v9 setHighlighted:highlightedCopy];
  }

  else if ([(PXCuratedLibraryOverlayButton *)self isHighlighted]!= highlightedCopy)
  {
    v8.receiver = self;
    v8.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v8 setHighlighted:highlightedCopy];
    customIconImageView = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    [customIconImageView setHighlighted:highlightedCopy];

    customTitleLabel = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    [customTitleLabel setHighlighted:highlightedCopy];

    customCaptionLabel = [(PXCuratedLibraryOverlayButton *)self customCaptionLabel];
    [customCaptionLabel setHighlighted:highlightedCopy];
  }
}

- (void)layoutSubviews
{
  if ([objc_opt_class() usesButtonSystem])
  {
    v51.receiver = self;
    v51.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v51 layoutSubviews];
  }

  else
  {
    userData = [(PXCuratedLibraryOverlayButton *)self userData];
    v50 = 0uLL;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v4 = objc_opt_class();
    title = [userData title];
    [v4 _getSize:&v50 titleFrame:&v48 captionFrame:&v46 iconFrame:&v44 forConfiguration:userData title:title];

    [(PXCuratedLibraryOverlayButton *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    effectiveUserInterfaceLayoutDirection = [(PXCuratedLibraryOverlayButton *)self effectiveUserInterfaceLayoutDirection];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PXCuratedLibraryOverlayButton_layoutSubviews__block_invoke;
    aBlock[3] = &__block_descriptor_81_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = v7;
    *&aBlock[5] = v9;
    *&aBlock[6] = v11;
    *&aBlock[7] = v13;
    v42 = v50;
    v43 = effectiveUserInterfaceLayoutDirection == 1;
    v15 = _Block_copy(aBlock);
    contentView = [(PXCuratedLibraryOverlayButton *)self contentView];
    [contentView setFrame:{v7, v9, v11, v13}];

    v17 = v15[2](v15, *&v48, *(&v48 + 1), *&v49, *(&v49 + 1));
    v19 = v18;
    v21 = v20;
    v23 = v22;
    customTitleLabel = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    [customTitleLabel setFrame:{v17, v19, v21, v23}];

    v25 = v15[2](v15, *&v46, *(&v46 + 1), *&v47, *(&v47 + 1));
    v27 = v26;
    v29 = v28;
    v31 = v30;
    customCaptionLabel = [(PXCuratedLibraryOverlayButton *)self customCaptionLabel];
    [customCaptionLabel setFrame:{v25, v27, v29, v31}];

    v33 = v15[2](v15, *&v44, *(&v44 + 1), *&v45, *(&v45 + 1));
    v35 = v34;
    v37 = v36;
    v39 = v38;
    customIconImageView = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    [customIconImageView setFrame:{v33, v35, v37, v39}];
  }
}

uint64_t __47__PXCuratedLibraryOverlayButton_layoutSubviews__block_invoke(uint64_t result, double a2, double a3, __n128 a4, __n128 a5)
{
  v5 = a2 + (*(result + 48) - *(result + 64)) * 0.5;
  v6 = a3 + (*(result + 56) - *(result + 72)) * 0.5;
  if (*(result + 80) == 1)
  {
    return MEMORY[0x1A590CE60](v5, v6, a4, a5, *(result + 32), *(result + 40));
  }

  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == dataCopy)
  {
  }

  else
  {
    v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 isEqual:dataCopy];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, data);
      if ([objc_opt_class() usesButtonSystem])
      {
        [(PXCuratedLibraryOverlayButton *)self _updateButtonSystemWithConfiguration:dataCopy];
      }

      else
      {
        if (dataCopy)
        {
          [(PXCuratedLibraryOverlayButton *)self _updateButtonWithConfiguration:dataCopy];
        }

        [(PXCuratedLibraryOverlayButton *)self setNeedsLayout];
      }
    }
  }
}

- (NSString)description
{
  if ([objc_opt_class() usesButtonSystem])
  {
    v12.receiver = self;
    v12.super_class = PXCuratedLibraryOverlayButton;
    v3 = [(PXCuratedLibraryOverlayButton *)&v12 description];
  }

  else
  {
    v4 = MEMORY[0x1E696AEC0];
    v11.receiver = self;
    v11.super_class = PXCuratedLibraryOverlayButton;
    v5 = [(PXCuratedLibraryOverlayButton *)&v11 description];
    customIconImageView = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    image = [customIconImageView image];
    customTitleLabel = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    text = [customTitleLabel text];
    v3 = [v4 stringWithFormat:@"<%@ icon:%@ title:%@>", v5, image, text];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(PXCuratedLibraryOverlayButton *)self isSizeCalculationButton])
  {
    v14.receiver = self;
    v14.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v14 sizeThatFits:width, height];
  }

  else
  {
    v8 = objc_opt_class();
    userData = [(PXCuratedLibraryOverlayButton *)self userData];
    [v8 sizeWithConfiguration:userData];
    v11 = v10;
    v13 = v12;

    v6 = v11;
    v7 = v13;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (PXCuratedLibraryOverlayButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryOverlayButton;
  v3 = [(PXCuratedLibraryOverlayButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXCuratedLibraryOverlayButton *)v3 _setupViews];
    [(PXCuratedLibraryOverlayButton *)v4 addTarget:v4 action:sel__performAction_ forControlEvents:64];
    [(PXCuratedLibraryOverlayButton *)v4 addTarget:v4 action:sel__performMenuAction_ forControlEvents:0x4000];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__accessibilitySettingsChanged_ name:*MEMORY[0x1E69DD8A8] object:0];
  }

  return v4;
}

+ (UIFont)defaultTitleFont
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (_PXFontForComponent_onceToken != -1)
  {
    dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
  }

  v2 = [off_1E7721928 alloc];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v18[1] = preferredContentSizeCategory;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v18[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v7 = [v2 initWithObjects:v6];

  v8 = [_PXFontForComponent_fontCache objectForKey:v7];
  if (!v8)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    v12 = MEMORY[0x1E69DDC50];
    if (!IsAccessibilityCategory)
    {
      v12 = MEMORY[0x1E69DDC60];
    }

    v13 = *v12;
    if ([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentTitle"])
    {
      v14 = 2;
    }

    else
    {
      if (([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentCaption"] & 1) == 0)
      {

        goto LABEL_16;
      }

      v14 = 0;
    }

    v8 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:v13 withSymbolicTraits:v14];

    if (v8)
    {
      [_PXFontForComponent_fontCache setObject:v8 forKey:v7];
      goto LABEL_12;
    }

LABEL_16:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
    [currentHandler handleFailureInFunction:v17 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

    abort();
  }

LABEL_12:

  return v8;
}

+ (void)_getSize:(CGSize *)size titleFrame:(CGRect *)frame captionFrame:(CGRect *)captionFrame iconFrame:(CGRect *)iconFrame forConfiguration:(id)configuration title:(id)title
{
  v170 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  titleCopy = title;
  if (configurationCopy)
  {
    style = [configurationCopy style];
    if (style > 0xE)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _PXNeedsEffectViewForStyle(PXCuratedLibraryOverlayButtonStyle)"];
      [currentHandler handleFailureInFunction:v139 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v15 = style;
    v156 = titleCopy;
    iconFrameCopy = iconFrame;
    if (((1 << style) & 0x7FC3) != 0)
    {
      v17 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
      v18 = [titleCopy length];
      v19 = 12.0;
      v157 = v17;
      if (!v18)
      {
        v19 = v17;
      }

      v146 = v19;
      v150 = 1;
      v153 = v16;
    }

    else
    {
      v150 = 0;
      v16 = *(MEMORY[0x1E695F060] + 8);
      v153 = 3.0;
      v146 = *MEMORY[0x1E695F060];
      v157 = *MEMORY[0x1E695F060];
    }

    v24 = configurationCopy;
    segment = [v24 segment];
    spec = [v24 spec];
    [spec buttonHeight];
    v28 = v27 * 0.5;

    style2 = [v24 style];
    v30 = 0.0;
    v31 = 4.0;
    v32 = 5.0;
    if (((1 << style2) & 0xC0) == 0)
    {
      v32 = 0.0;
    }

    if (((1 << style2) & 0x1C00) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v31 = v28;
    }

    if (((1 << style2) & 0x3C) != 0)
    {
      v32 = 0.0;
      v31 = 0.0;
    }

    if (style2 > 0xC)
    {
      v31 = v28;
    }

    else
    {
      v30 = v32;
    }

    if (segment == 2)
    {
      v33 = v30;
    }

    else
    {
      v33 = v31;
    }

    if (segment == 1)
    {
      v34 = v30;
    }

    else
    {
      v34 = v31;
    }

    spec2 = [v24 spec];

    layoutDirection = [spec2 layoutDirection];
    if (layoutDirection == 2)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    v143 = v37;
    if (layoutDirection == 2)
    {
      v38 = v33;
    }

    else
    {
      v38 = v34;
    }

    v141 = v38;
    spec3 = [v24 spec];
    [spec3 buttonHeight];
    v41 = v40;

    v42 = v16;
    v154 = v157;
    if (!v156)
    {
LABEL_58:
      caption = [v24 caption];
      v59 = v16;
      v60 = v157;
      if (!caption)
      {
LABEL_78:
        iconImage = [v24 iconImage];
        v79 = iconImage;
        if (iconImage)
        {
          [iconImage size];
          v157 = v80;
          v16 = v81;
        }

        if (v41 + v153 * -2.0 >= v42)
        {
          v82 = v41 + v153 * -2.0;
        }

        else
        {
          v82 = v42;
        }

        [v24 imageEdgeInsets];
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
        buttonType = [v24 buttonType];
        v92 = v82 - (v84 + v88);
        if (buttonType == 4)
        {
          v92 = 6.0;
        }

        v93 = v150;
        if (v16 <= 0.0)
        {
          v93 = 1;
        }

        if (!v93)
        {
          v92 = v16;
        }

        if (v92 > 0.0 && v16 > v92)
        {
          PXSizeScale();
        }

        if (v82 < v16)
        {
          v82 = v16;
        }

        v95 = v143 + v141;
        v96 = v154 > 0.0;
        v97 = v157 > 0.0;
        v98 = v96 && v97;
        v99 = 0.0;
        if (v96 && v97)
        {
          v99 = 4.0;
        }

        v100 = v90 + v157 + v86 + v154 + v146 * 2.0 + v60 + v99;
        if (v100 >= v95)
        {
          v101 = v146;
        }

        else
        {
          v101 = v146 + (v95 - v100) * 0.5;
        }

        v162 = 0;
        v163 = &v162;
        v164 = 0x4010000000;
        v165 = &unk_1A561E057;
        v166 = 0;
        v167 = v153;
        v168 = 0;
        v169 = v82;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __99__PXCuratedLibraryOverlayButton__getSize_titleFrame_captionFrame_iconFrame_forConfiguration_title___block_invoke;
        aBlock[3] = &unk_1E773D008;
        aBlock[4] = &v162;
        v102 = _Block_copy(aBlock);
        v159[0] = MEMORY[0x1E69E9820];
        v159[1] = 3221225472;
        v159[2] = __99__PXCuratedLibraryOverlayButton__getSize_titleFrame_captionFrame_iconFrame_forConfiguration_title___block_invoke_2;
        v159[3] = &unk_1E773D030;
        v103 = v102;
        v160 = v103;
        v104 = _Block_copy(v159);
        v105 = v104;
        v106 = v104[2];
        if (v150)
        {
          v106(v104, v101);
          p_x = &iconFrameCopy->origin.x;
          v108 = v103[2](v103, v60, v59);
          v142 = v110;
          v144 = v109;
          v147 = v111;
          v149 = v108;
          if (v60 > 0.0)
          {
            v163[1].origin.x = v163[1].origin.x + 2.0;
          }

          v112 = v103[2](v103, v154, v82);
          v155 = v113;
          v115 = v114;
          v117 = v116;
          v118 = v112;
          if (v98)
          {
            v105[2](v105, 4.0);
          }

          v105[2](v105, v86);
          v158 = v103[2](v103, v157, v16);
          v151 = v119;
          v121 = v120;
          v123 = v122;
          v105[2](v105, v90);
          v105[2](v105, v101);
        }

        else
        {
          v106(v104, v101);
          p_x = &iconFrameCopy->origin.x;
          v105[2](v105, v86);
          v158 = v103[2](v103, v157, v16);
          v151 = v124;
          v121 = v125;
          v123 = v126;
          v105[2](v105, v90);
          if (v98)
          {
            v105[2](v105, 4.0);
          }

          v127 = v103[2](v103, v60, v59);
          v142 = v129;
          v144 = v128;
          v147 = v130;
          v149 = v127;
          if (v60 > 0.0)
          {
            v163[1].origin.x = v163[1].origin.x + 2.0;
          }

          v131 = v103[2](v103, v154, v82);
          v155 = v132;
          v118 = v131;
          v117 = v133;
          v115 = v134;
          v105[2](v105, v101);
        }

        MaxX = CGRectGetMaxX(v163[1]);
        if (v140)
        {
          *v140 = MaxX;
          v140[1] = v82 + v153 * 2.0;
        }

        if (frame)
        {
          frame->origin.x = v118;
          frame->origin.y = v117;
          frame->size.width = v115;
          frame->size.height = v155;
        }

        if (captionFrame)
        {
          captionFrame->origin.x = v149;
          captionFrame->origin.y = v147;
          captionFrame->size.width = v144;
          captionFrame->size.height = v142;
        }

        if (p_x)
        {
          *p_x = v158;
          *(p_x + 1) = v151;
          *(p_x + 2) = v121;
          *(p_x + 3) = v123;
        }

        _Block_object_dispose(&v162, 8);
        titleCopy = v156;
        goto LABEL_121;
      }

      if (_PXFontForComponent_onceToken != -1)
      {
        dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
      }

      v61 = v15 - 2;
      v62 = v15 - 2 < 4;
      v63 = [off_1E7721928 alloc];
      v162 = @"_PXOverlayButtonComponentCaption";
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
      v163 = preferredContentSizeCategory;
      v66 = [MEMORY[0x1E696AD98] numberWithInteger:v62];
      v164 = v66;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:3];
      v68 = [v63 initWithObjects:v67];

      v69 = [_PXFontForComponent_fontCache objectForKey:v68];
      if (v69)
      {
LABEL_77:

        [self _sizeOfTitle:caption withFont:v69];
        v60 = v76;
        v59 = v77;

        goto LABEL_78;
      }

      if (v61 < 4)
      {
        if (([@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentTitle"] & 1) == 0 && !objc_msgSend(@"_PXOverlayButtonComponentCaption", "isEqualToString:", @"_PXOverlayButtonComponentCaption"))
        {
          goto LABEL_122;
        }

        v69 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
        goto LABEL_75;
      }

      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

      v73 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v73 = MEMORY[0x1E69DDC60];
      }

      v74 = *v73;
      if ([@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentTitle"])
      {
        v75 = 2;
      }

      else
      {
        if (![@"_PXOverlayButtonComponentCaption" isEqualToString:@"_PXOverlayButtonComponentCaption"])
        {
          v69 = 0;
          goto LABEL_74;
        }

        v75 = 0;
      }

      v69 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:v74 withSymbolicTraits:v75];
LABEL_74:

LABEL_75:
      if (v69)
      {
        [_PXFontForComponent_fontCache setObject:v69 forKey:v68];
        goto LABEL_77;
      }

LABEL_122:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
      [currentHandler2 handleFailureInFunction:v137 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

      abort();
    }

    if (_PXFontForComponent_onceToken != -1)
    {
      dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
    }

    v43 = [off_1E7721928 alloc];
    v162 = @"_PXOverlayButtonComponentTitle";
    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory3 = [mEMORY[0x1E69DC668]3 preferredContentSizeCategory];
    v163 = preferredContentSizeCategory3;
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:v15 - 2 < 4];
    v164 = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:3];
    v48 = [v43 initWithObjects:v47];

    v49 = [_PXFontForComponent_fontCache objectForKey:v48];
    if (v49)
    {
LABEL_57:

      [self _sizeOfTitle:v156 withFont:v49];
      v154 = v56;
      v42 = v57;

      goto LABEL_58;
    }

    if (v15 - 2 < 4)
    {
      if (([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentTitle"] & 1) == 0 && !objc_msgSend(@"_PXOverlayButtonComponentTitle", "isEqualToString:", @"_PXOverlayButtonComponentCaption"))
      {
        goto LABEL_122;
      }

      v49 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
      goto LABEL_55;
    }

    mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory4 = [mEMORY[0x1E69DC668]4 preferredContentSizeCategory];
    v52 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

    v53 = MEMORY[0x1E69DDC50];
    if (!v52)
    {
      v53 = MEMORY[0x1E69DDC60];
    }

    v54 = *v53;
    if ([@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentTitle"])
    {
      v55 = 2;
    }

    else
    {
      if (![@"_PXOverlayButtonComponentTitle" isEqualToString:@"_PXOverlayButtonComponentCaption"])
      {
        v49 = 0;
        goto LABEL_54;
      }

      v55 = 0;
    }

    v49 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:v54 withSymbolicTraits:v55];
LABEL_54:

LABEL_55:
    if (!v49)
    {
      goto LABEL_122;
    }

    [_PXFontForComponent_fontCache setObject:v49 forKey:v48];
    goto LABEL_57;
  }

  if (size)
  {
    *size = *MEMORY[0x1E695F060];
  }

  v20 = MEMORY[0x1E695F058];
  if (frame)
  {
    v21 = *(MEMORY[0x1E695F058] + 16);
    frame->origin = *MEMORY[0x1E695F058];
    frame->size = v21;
  }

  if (captionFrame)
  {
    v22 = *(v20 + 16);
    captionFrame->origin = *v20;
    captionFrame->size = v22;
  }

  if (iconFrame)
  {
    v23 = *(v20 + 16);
    iconFrame->origin = *v20;
    iconFrame->size = v23;
  }

LABEL_121:
}

double __99__PXCuratedLibraryOverlayButton__getSize_titleFrame_captionFrame_iconFrame_forConfiguration_title___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3)
{
  MinX = CGRectGetMinX(*(*(*(a1 + 32) + 8) + 32));
  v7 = CGRectGetMidY(*(*(*(a1 + 32) + 8) + 32)) + a3 * -0.5;
  v9.origin.x = MinX;
  v9.origin.y = v7;
  v9.size.width = a2;
  v9.size.height = a3;
  *(*(*(a1 + 32) + 8) + 32) = CGRectGetMaxX(v9);
  return MinX;
}

+ (id)iconImageSymbolConfigurationFromConfiguration:(id)configuration
{
  v39 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  systemImageName = [configurationCopy systemImageName];
  v8 = [off_1E7721928 alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(configurationCopy, "style")}];
  v10 = v9;
  if (systemImageName)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v37 = preferredContentSizeCategory2;
    v38 = systemImageName;
    v13 = MEMORY[0x1E695DEC8];
    v14 = 3;
  }

  else
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory2 = [mEMORY[0x1E69DC668]2 preferredContentSizeCategory];
    v37 = preferredContentSizeCategory2;
    v13 = MEMORY[0x1E695DEC8];
    v14 = 2;
  }

  v15 = [v13 arrayWithObjects:&v36 count:v14];
  v16 = [v8 initWithObjects:v15];

  v17 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v16];
  if (!v17)
  {
    style = [configurationCopy style];
    if (style <= 0xE)
    {
      if (((1 << style) & 0x6FC0) != 0)
      {
LABEL_9:
        v19 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v19 = MEMORY[0x1E69DDC70];
        }

        v20 = *v19;
        spec = [configurationCopy spec];
        options = [spec options];

        v23 = MEMORY[0x1E69DDCF8];
        if ((options & 4) == 0)
        {
          v23 = MEMORY[0x1E69DDD78];
        }

        v24 = *v23;
        v25 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v24 maxContentSizeCategory:v20 withSymbolicTraits:32770];
        if ((options & 4) != 0 || ([systemImageName isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(systemImageName, "isEqualToString:", @"person.2.fill"))
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        v27 = MEMORY[0x1E69DCAD8];
        [v25 pointSize];
        v17 = [v27 configurationWithPointSize:6 weight:v26 scale:?];

        goto LABEL_29;
      }

      if (((1 << style) & 0x30) != 0)
      {
        v20 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
        v28 = MEMORY[0x1E69DCAD8];
        [v20 pointSize];
        v30 = v29 + 2.0;
LABEL_24:
        v32 = v28;
        v33 = 6;
        goto LABEL_28;
      }

      if (style == 12)
      {
        v31 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v31 = MEMORY[0x1E69DDC70];
        }

        v20 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD78] maxContentSizeCategory:*v31 withSymbolicTraits:32770];
        v28 = MEMORY[0x1E69DCAD8];
        [v20 pointSize];
        goto LABEL_24;
      }
    }

    if (style < 2)
    {
      goto LABEL_9;
    }

    if (style - 2 > 1)
    {
      v17 = 0;
      goto LABEL_30;
    }

    v20 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:4096];
    v34 = MEMORY[0x1E69DCAD8];
    [v20 pointSize];
    v32 = v34;
    v33 = 4;
LABEL_28:
    v17 = [v32 configurationWithPointSize:v33 weight:3 scale:v30];
LABEL_29:

LABEL_30:
    [_PXIconImageSymbolConfiguration_configsCache setObject:v17 forKey:v16];
  }

  return v17;
}

+ (CGSize)sizeWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v35 = 0.0;
  v36 = 0.0;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(configurationCopy, "hash")}];
  buttonSizeCache = [self buttonSizeCache];
  v7 = [buttonSizeCache objectForKey:v5];
  if (!v7)
  {
    spec = [configurationCopy spec];
    extendedTraitCollection = [spec extendedTraitCollection];
    userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5 && [objc_opt_class() usesButtonSystem])
    {
      v14 = objc_alloc_init(PXCuratedLibraryOverlayButton);
      [(PXCuratedLibraryOverlayButton *)v14 setIsSizeCalculationButton:1];
      [(PXCuratedLibraryOverlayButton *)v14 setUserData:configurationCopy];
      [(PXCuratedLibraryOverlayButton *)v14 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v16 = v15;
      v18 = v17;
      v35 = v15;
      v36 = v17;

LABEL_17:
      v8 = [MEMORY[0x1E696B098] valueWithCGSize:{v16, v18, *&v35}];
      [buttonSizeCache setObject:v8 forKey:v5];

      goto LABEL_18;
    }

    possibleTitles = [configurationCopy possibleTitles];
    v20 = [possibleTitles mutableCopy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v23 = v22;

    title = [configurationCopy title];

    if (title)
    {
      title2 = [configurationCopy title];
      [v23 addObject:title2];
    }

    allObjects = [v23 allObjects];
    v27 = [allObjects sortedArrayUsingComparator:&__block_literal_global_637_141154];
    firstObject = [v27 firstObject];

    [self _getSize:&v35 titleFrame:0 captionFrame:0 iconFrame:0 forConfiguration:configurationCopy title:firstObject];
    if ([objc_opt_class() usesButtonSystem])
    {
      title3 = [configurationCopy title];
      if (title3)
      {

LABEL_15:
        v31 = objc_alloc_init(PXCuratedLibraryOverlayButton);
        [(PXCuratedLibraryOverlayButton *)v31 setIsSizeCalculationButton:1];
        [(PXCuratedLibraryOverlayButton *)v31 setUserData:configurationCopy];
        [(PXCuratedLibraryOverlayButton *)v31 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
        v35 = v32;

        goto LABEL_16;
      }

      caption = [configurationCopy caption];

      if (caption)
      {
        goto LABEL_15;
      }
    }

LABEL_16:

    v16 = v35;
    v18 = v36;
    goto LABEL_17;
  }

  v8 = v7;
  [v7 CGSizeValue];
  v35 = v9;
  v36 = v10;
LABEL_18:

  v33 = v35;
  v34 = v36;
  result.height = v34;
  result.width = v33;
  return result;
}

uint64_t __55__PXCuratedLibraryOverlayButton_sizeWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 sizeWithAttributes:0];
  v6 = v5;
  [v4 sizeWithAttributes:0];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

+ (CGSize)_sizeOfTitle:(id)title withFont:(id)font
{
  v25[2] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  fontCopy = font;
  titleSizeCache = [self titleSizeCache];
  v9 = [off_1E7721928 alloc];
  v25[0] = titleCopy;
  v25[1] = fontCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v11 = [v9 initWithObjects:v10];

  v12 = [titleSizeCache objectForKey:v11];
  if (v12)
  {
    v13 = v12;
    [v12 CGSizeValue];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v23 = *MEMORY[0x1E69DB648];
    v24 = fontCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [titleCopy sizeWithAttributes:v18];
    v15 = v19;
    v17 = v20;

    v13 = [MEMORY[0x1E696B098] valueWithCGSize:{v15, v17}];
    [titleSizeCache setObject:v13 forKey:v11];
  }

  v21 = v15;
  v22 = v17;
  result.height = v22;
  result.width = v21;
  return result;
}

void __61__PXCuratedLibraryOverlayButton_roundedCornerMaskImage_size___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = roundedCornerMaskImage_size__cornerMaskCache;
  roundedCornerMaskImage_size__cornerMaskCache = v0;
}

+ (NSCache)buttonSizeCache
{
  if (buttonSizeCache_onceToken != -1)
  {
    dispatch_once(&buttonSizeCache_onceToken, &__block_literal_global_627);
  }

  v3 = buttonSizeCache_buttonSizeCache;

  return v3;
}

void __48__PXCuratedLibraryOverlayButton_buttonSizeCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = buttonSizeCache_buttonSizeCache;
  buttonSizeCache_buttonSizeCache = v0;
}

+ (NSCache)titleSizeCache
{
  if (titleSizeCache_onceToken != -1)
  {
    dispatch_once(&titleSizeCache_onceToken, &__block_literal_global_625);
  }

  v3 = titleSizeCache_titleSizeCache;

  return v3;
}

void __47__PXCuratedLibraryOverlayButton_titleSizeCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = titleSizeCache_titleSizeCache;
  titleSizeCache_titleSizeCache = v0;
}

@end