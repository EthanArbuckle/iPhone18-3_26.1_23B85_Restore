@interface PXCuratedLibraryOverlayButton
+ (CGSize)_sizeOfTitle:(id)a3 withFont:(id)a4;
+ (CGSize)sizeWithConfiguration:(id)a3;
+ (NSCache)buttonSizeCache;
+ (NSCache)titleSizeCache;
+ (UIFont)defaultTitleFont;
+ (id)iconImageSymbolConfigurationFromConfiguration:(id)a3;
+ (void)_getSize:(CGSize *)a3 titleFrame:(CGRect *)a4 captionFrame:(CGRect *)a5 iconFrame:(CGRect *)a6 forConfiguration:(id)a7 title:(id)a8;
- (CGRect)clippingRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (PXCuratedLibraryOverlayButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_accessibilitySettingsChanged:(id)a3;
- (void)_performAction:(id)a3;
- (void)_performMenuAction:(id)a3;
- (void)_platformSpecificViewSetup;
- (void)_setupViews;
- (void)_updateBackgroundView;
- (void)_updateButtonSystemWithConfiguration:(id)a3;
- (void)_updateButtonWithConfiguration:(id)a3;
- (void)_updateEffectView;
- (void)_updateEffectViewBackgroundStyle;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setUserData:(id)a3;
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1639 description:@"Shouldn't be called if button system is used."];
  }

  [(PXCuratedLibraryOverlayButton *)self effectView];
  if (objc_claimAutoreleasedReturnValue())
  {
    v4 = [(PXCuratedLibraryOverlayButton *)self userData];
    [(PXCuratedLibraryOverlayButton *)self _updateEffectViewBackgroundStyle];
    v5 = v4;
    [v5 segment];
    v6 = [v5 spec];
    [v6 buttonHeight];

    [v5 style];
    v7 = [v5 spec];

    [v7 layoutDirection];
    PXFloatApproximatelyEqualToFloat();
  }
}

- (void)_updateEffectViewBackgroundStyle
{
  if ([objc_opt_class() usesButtonSystem])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1564 description:@"Shouldn't be called if button system is used."];
  }

  v4 = [(PXCuratedLibraryOverlayButton *)self effectView];
  if (v4)
  {
    v19 = v4;
    v5 = [MEMORY[0x1E69DC888] clearColor];
    v6 = [(PXCuratedLibraryOverlayButton *)self userData];
    v7 = [v6 style];

    v8 = 1;
    if (v7 <= 8)
    {
      if (v7 <= 5)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            v9 = 0;
            v10 = 0;
            if ((v7 - 2) < 4)
            {
              v18 = [MEMORY[0x1E696AAA8] currentHandler];
              [v18 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1618 description:@"Code which should be unreachable has been reached"];

              abort();
            }

            goto LABEL_24;
          }

          goto LABEL_18;
        }

        goto LABEL_19;
      }

      if (v7 == 6)
      {
        goto LABEL_19;
      }

      if (v7 == 7)
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
      if (v7 <= 11)
      {
        if (v7 != 10)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 = @"UIBlurEffectStyleSystemUltraThinMaterial";
        v10 = 6;
        goto LABEL_24;
      }

      switch(v7)
      {
        case 12:
          v13 = [MEMORY[0x1E69DC888] systemBlueColor];

          v10 = 6;
          v5 = v13;
          v9 = @"UIBlurEffectStyleSystemUltraThinMaterial";
          break;
        case 13:
          v14 = [MEMORY[0x1E69DC888] systemBlueColor];

          v10 = 7;
          v5 = v14;
          v9 = @"UIBlurEffectStyleSystemThinMaterial";
          break;
        case 14:
          v11 = [(PXCuratedLibraryOverlayButton *)self userData];
          v12 = [v11 backgroundColor];

          v9 = 0;
          v8 = 0;
          v10 = 0;
          v5 = v12;
          break;
        default:
          v9 = 0;
          v10 = 0;
          break;
      }
    }

LABEL_24:
    v15 = [(PXCuratedLibraryOverlayButton *)self contentView];
    [v15 setBackgroundColor:v5];

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

    v4 = v19;
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
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1529 description:@"Shouldn't be called if button system is used."];
  }

  v4 = [(PXCuratedLibraryOverlayButton *)self userData];
  v5 = [v4 style];

  if (v5 >= 0xF)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _PXNeedsEffectViewForStyle(PXCuratedLibraryOverlayButtonStyle)"];
    [v15 handleFailureInFunction:v16 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = 0x7FC3u >> v5;
  v7 = [(PXCuratedLibraryOverlayButton *)self effectView];

  if ((v6 & 1) == 0 || v7)
  {
    if ((v6 & 1) != 0 || !v7)
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
    v13 = [(PXCuratedLibraryOverlayButton *)self effectView];
    [v13 removeFromSuperview];

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
    v9 = [(PXCuratedLibraryOverlayButton *)self contentView];
    v10 = [v17 contentView];
    [(PXCuratedLibraryOverlayButton *)self setContentView:v10];

    v11 = [(PXCuratedLibraryOverlayButton *)self effectView];
    [(PXCuratedLibraryOverlayButton *)self addSubview:v11];

    [v9 removeFromSuperview];
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(PXCuratedLibraryOverlayButton *)self userData:a3];
  v6 = [v5 segment];
  v7 = [v5 spec];
  [v7 buttonHeight];
  v9 = v8 * 0.5;

  v10 = [v5 style];
  v11 = 0.0;
  v12 = 4.0;
  v13 = 5.0;
  if (((1 << v10) & 0xC0) == 0)
  {
    v13 = 0.0;
  }

  if (((1 << v10) & 0x1C00) != 0)
  {
    v13 = 0.0;
  }

  else
  {
    v12 = v9;
  }

  if (((1 << v10) & 0x3C) != 0)
  {
    v13 = 0.0;
    v12 = 0.0;
  }

  if (v10 > 0xC)
  {
    v12 = v9;
  }

  else
  {
    v11 = v13;
  }

  if (v6 == 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v6 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v16 = [v5 spec];
  v17 = [v16 layoutDirection];

  if (v17 == 2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 == 2)
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = [(PXCuratedLibraryOverlayButton *)self userData:a3];
  v7 = [v6 spec];
  v8 = [v7 isFloating];

  if ((v8 & 1) != 0 || [v6 forcePointerInteractionEnabled])
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

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryOverlayButton;
  [(PXCuratedLibraryOverlayButton *)&v11 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  v6 = [(PXCuratedLibraryOverlayButton *)self userData];
  v7 = [v6 willDismissMenuActionHandler];

  if (v7)
  {
    v8 = [(PXCuratedLibraryOverlayButton *)self userData];
    v9 = [v8 willDismissMenuActionHandler];
    v9[2]();
  }

  v10 = [(PXCuratedLibraryOverlayButton *)self menu];
  [v10 didClose];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryOverlayButton;
  [(PXCuratedLibraryOverlayButton *)&v11 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  v6 = [(PXCuratedLibraryOverlayButton *)self userData];
  v7 = [v6 willDisplayMenuActionHandler];

  if (v7)
  {
    v8 = [(PXCuratedLibraryOverlayButton *)self userData];
    v9 = [v8 willDisplayMenuActionHandler];
    v9[2]();
  }

  v10 = [(PXCuratedLibraryOverlayButton *)self menu];
  [v10 willOpen];
}

- (void)_accessibilitySettingsChanged:(id)a3
{
  v3 = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
  [v3 _setWantsUnderlineForAccessibilityButtonShapesEnabled:UIAccessibilityButtonShapesEnabled()];
}

- (void)setContentView:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([objc_opt_class() usesButtonSystem])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1446 description:@"Shouldn't be called if button system is used."];
  }

  contentView = self->_contentView;
  if (contentView != v6)
  {
    v8 = contentView;
    objc_storeStrong(&self->_contentView, a3);
    if (v6 && v8)
    {
      [(UIView *)v8 frame];
      [(UIView *)v6 setFrame:?];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(UIView *)v8 subviews];
      v10 = [v9 copy];

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

            [(UIView *)v6 addSubview:*(*(&v16 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      [(PXCuratedLibraryOverlayButton *)self insertSubview:v6 aboveSubview:v8];
    }
  }
}

- (void)_performMenuAction:(id)a3
{
  v10 = a3;
  v5 = [(PXCuratedLibraryOverlayButton *)self userData];
  v6 = [v5 actionPerformer];
  v7 = [v5 menuActionHandler];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1435 description:{@"Invalid parameter not satisfying: %@", @"PX_NAND(actionPerformer, actionHandler)"}];
  }

  [v6 setSender:v10];
  [v6 performActionWithCompletionHandler:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_performAction:(id)a3
{
  v10 = a3;
  v5 = [(PXCuratedLibraryOverlayButton *)self userData];
  v6 = [v5 actionPerformer];
  v7 = [v5 actionHandler];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1420 description:{@"Invalid parameter not satisfying: %@", @"PX_NAND(actionPerformer, actionHandler)"}];
  }

  [v6 setSender:v10];
  [v6 performActionWithCompletionHandler:0];
  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_updateButtonWithConfiguration:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([objc_opt_class() usesButtonSystem])
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1351 description:@"Shouldn't be called if button system is used."];
  }

  [(PXCuratedLibraryOverlayButton *)self _updateBackgroundView];
  [(PXCuratedLibraryOverlayButton *)self _updateEffectView];
  v6 = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
  v7 = [v5 tintedIconImage];
  [v6 setImage:v7];

  v8 = [v5 highlightedIconImage];
  [v6 setHighlightedImage:v8];

  v9 = [v5 tintColor];
  [v6 setTintColor:v9];

  v10 = [(PXCuratedLibraryOverlayButton *)self pointerInteraction];
  [v10 invalidate];

  v11 = v5;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  v13 = [v12 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

  v15 = [v11 systemImageName];
  v16 = [off_1E7721928 alloc];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "style")}];
  v18 = v17;
  if (v15)
  {
    v44 = v17;
    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    v20 = [v19 preferredContentSizeCategory];
    v45 = v20;
    v46 = v15;
    v21 = MEMORY[0x1E695DEC8];
    v22 = 3;
  }

  else
  {
    v44 = v17;
    v19 = [MEMORY[0x1E69DC668] sharedApplication];
    v20 = [v19 preferredContentSizeCategory];
    v45 = v20;
    v21 = MEMORY[0x1E695DEC8];
    v22 = 2;
  }

  v23 = [v21 arrayWithObjects:&v44 count:v22];
  v24 = [v16 initWithObjects:v23];

  v25 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v24];
  if (v25)
  {
LABEL_33:

    [v6 setPreferredSymbolConfiguration:v25];
    [v11 hitTestOutsets];
    sub_1A524D1F4();
  }

  v26 = [v11 style];
  if (v26 <= 0xE)
  {
    if (((1 << v26) & 0x6FC0) != 0)
    {
LABEL_11:
      v27 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v27 = MEMORY[0x1E69DDC70];
      }

      v28 = *v27;
      v29 = [v11 spec];
      v30 = [v29 options];

      v31 = MEMORY[0x1E69DDCF8];
      if ((v30 & 4) == 0)
      {
        v31 = MEMORY[0x1E69DDD78];
      }

      v32 = *v31;
      v33 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v32 maxContentSizeCategory:v28 withSymbolicTraits:32770];
      if ((v30 & 4) != 0 || ([v15 isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"person.2.fill"))
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

    if (((1 << v26) & 0x30) != 0)
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

    if (v26 == 12)
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

  if (v26 < 2)
  {
    goto LABEL_11;
  }

  if (v26 - 2 > 1)
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

- (void)_updateButtonSystemWithConfiguration:(id)a3
{
  v89 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([objc_opt_class() usesButtonSystem] & 1) == 0)
  {
    v80 = [MEMORY[0x1E696AAA8] currentHandler];
    [v80 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryOverlayButton.m" lineNumber:1203 description:@"Shouldn't be called if button system is not used."];
  }

  v6 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  if (v5)
  {
    v7 = v5;
    v8 = [v7 segment];
    v9 = [v7 spec];
    [v9 buttonHeight];
    v11 = v10 * 0.5;

    v12 = [v7 style];
    v13 = 0.0;
    if (v12 <= 0xC)
    {
      if (((1 << v12) & 0x3C) != 0)
      {
        v11 = 0.0;
      }

      else if (((1 << v12) & 0x1C00) != 0)
      {
        v11 = 4.0;
      }

      else if (((1 << v12) & 0xC0) != 0)
      {
        v13 = 5.0;
      }
    }

    if (v8 == 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (v8 == 1)
    {
      v11 = v13;
    }

    v15 = [v7 spec];

    v16 = [v15 layoutDirection];
    if (v16 == 2)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (v16 == 2)
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

    [v6 setCornerStyle:4];
    if (v19 == 0.0)
    {
      [v6 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    }
  }

  v20 = [v5 iconImageWithoutConfiguration];

  if (v20)
  {
    v21 = [v5 iconImageWithoutConfiguration];
    [v6 setImage:v21];
  }

  v22 = v5;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  v23 = [MEMORY[0x1E69DC668] sharedApplication];
  v24 = [v23 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v24);

  v25 = [v22 systemImageName];
  v26 = [off_1E7721928 alloc];
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "style")}];
  v28 = v27;
  if (v25)
  {
    v86 = v27;
    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 preferredContentSizeCategory];
    v87 = v30;
    v88 = v25;
    v31 = MEMORY[0x1E695DEC8];
    v32 = 3;
  }

  else
  {
    v86 = v27;
    v29 = [MEMORY[0x1E69DC668] sharedApplication];
    v30 = [v29 preferredContentSizeCategory];
    v87 = v30;
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

    [v6 setPreferredSymbolConfigurationForImage:v36];
    v55 = [v22 title];

    if (v55)
    {
      v56 = [v22 title];
      [v6 setTitle:v56];

      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke;
      v84[3] = &unk_1E7741BF8;
      v85 = v22;
      [v6 setTitleTextAttributesTransformer:v84];
    }

    v57 = [v22 caption];

    if (v57)
    {
      v58 = [v22 caption];
      [v6 setSubtitle:v58];

      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __70__PXCuratedLibraryOverlayButton__updateButtonSystemWithConfiguration___block_invoke_2;
      v82[3] = &unk_1E7741BF8;
      v83 = v22;
      [v6 setSubtitleTextAttributesTransformer:v82];
    }

    v59 = [v22 style];
    v60 = 0;
    if (v59 > 8)
    {
      if (v59 <= 11)
      {
        if (v59 != 10)
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      if (v59 == 12)
      {
        v61 = [MEMORY[0x1E69DC730] effectWithStyle:6];
        v62 = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_82;
      }

      if (v59 != 13)
      {
        v62 = 0;
        v61 = 0;
        if (v59 == 14)
        {
          v62 = [v22 backgroundColor];
          v60 = 0;
          v61 = 0;
        }

LABEL_83:
        [v6 setTitleLineBreakMode:2];
        [v6 setSubtitleLineBreakMode:2];
        if (v61)
        {
          v63 = [(PXCuratedLibraryOverlayButton *)self effectView];

          if (v63)
          {
            v64 = [(PXCuratedLibraryOverlayButton *)self effectView];
            [v64 setEffect:v61];
          }

          else
          {
            v64 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v61];
            [(PXCuratedLibraryOverlayButton *)self setEffectView:v64];
          }

          v65 = [(PXCuratedLibraryOverlayButton *)self effectView];
          v66 = [v65 contentView];
          [v66 setBackgroundColor:v62];

          [v65 _setGroupName:v60];
          v67 = [MEMORY[0x1E69DC888] clearColor];
          v68 = [v6 background];
          [v68 setBackgroundColor:v67];

          v69 = [v6 background];
          [v69 setCustomView:v65];
        }

        else
        {
          if (!v62)
          {
            goto LABEL_91;
          }

          v65 = [v6 background];
          [v65 setBackgroundColor:v62];
        }

LABEL_91:
        v70 = [*(v37 + 1640) sharedApplication];
        v71 = [v70 preferredContentSizeCategory];
        v72 = UIContentSizeCategoryIsAccessibilityCategory(v71);

        if (v72)
        {
          [(PXCuratedLibraryOverlayButton *)self setShowsLargeContentViewer:1];
          v73 = objc_alloc_init(MEMORY[0x1E69DCC18]);
          [(PXCuratedLibraryOverlayButton *)self addInteraction:v73];

          v74 = [v22 accessibilityTitle];
          if (v74)
          {
            [(PXCuratedLibraryOverlayButton *)self setLargeContentTitle:v74];
          }

          else
          {
            v75 = [v22 title];
            [(PXCuratedLibraryOverlayButton *)self setLargeContentTitle:v75];
          }

          v76 = [v22 largeContentViewerImage];
          [(PXCuratedLibraryOverlayButton *)self setLargeContentImage:v76];

          [(PXCuratedLibraryOverlayButton *)self setScalesLargeContentImage:1];
        }

        v77 = [v22 accessibilityTitle];
        [(PXCuratedLibraryOverlayButton *)self setAccessibilityLabel:v77];

        v78 = [v22 contentColor];
        [(PXCuratedLibraryOverlayButton *)self setTintColor:v78];

        v79 = [v22 accessibilityTitle];
        [(PXCuratedLibraryOverlayButton *)self setAccessibilityLabel:v79];

        [v22 hitTestOutsets];
        sub_1A524D1F4();
      }

      v61 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      v62 = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_80:
      v60 = @"UIBlurEffectStyleSystemThinMaterial";
      goto LABEL_83;
    }

    if (v59 <= 5)
    {
      if (v59)
      {
        v62 = 0;
        v61 = 0;
        if (v59 != 1)
        {
          goto LABEL_83;
        }

        goto LABEL_77;
      }
    }

    else if (v59 != 6)
    {
      if (v59 == 7)
      {
LABEL_77:
        v61 = [MEMORY[0x1E69DC730] effectWithStyle:16];
        v62 = 0;
        v60 = @"UIBlurEffectStyleSystemUltraThinMaterialDark";
        goto LABEL_83;
      }

      v61 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      v62 = 0;
      goto LABEL_80;
    }

LABEL_78:
    v61 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v62 = 0;
LABEL_82:
    v60 = @"UIBlurEffectStyleSystemUltraThinMaterial";
    goto LABEL_83;
  }

  v38 = [v22 style];
  if (v38 <= 0xE)
  {
    if (((1 << v38) & 0x6FC0) != 0)
    {
LABEL_37:
      v39 = MEMORY[0x1E69DDC50];
      if (!IsAccessibilityCategory)
      {
        v39 = MEMORY[0x1E69DDC70];
      }

      v40 = *v39;
      v41 = [v22 spec];
      v42 = [v41 options];

      v43 = MEMORY[0x1E69DDCF8];
      if ((v42 & 4) == 0)
      {
        v43 = MEMORY[0x1E69DDD78];
      }

      v44 = *v43;
      v45 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v44 maxContentSizeCategory:v40 withSymbolicTraits:32770];
      if ((v42 & 4) != 0 || ([v25 isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"person.2.fill"))
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

    if (((1 << v38) & 0x30) != 0)
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

    if (v38 == 12)
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

  if (v38 < 2)
  {
    goto LABEL_37;
  }

  if (v38 - 2 > 1)
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
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(PXCuratedLibraryOverlayButton *)self setBackgroundColor:v3];

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

    v15 = [(PXCuratedLibraryOverlayButton *)self contentView];
    [v15 addSubview:v14];

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

  v21 = [(PXCuratedLibraryOverlayButton *)self layer];
  [v21 setAllowsGroupOpacity:0];

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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([objc_opt_class() usesButtonSystem])
  {
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v9 setHighlighted:v3];
  }

  else if ([(PXCuratedLibraryOverlayButton *)self isHighlighted]!= v3)
  {
    v8.receiver = self;
    v8.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v8 setHighlighted:v3];
    v5 = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    [v5 setHighlighted:v3];

    v6 = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    [v6 setHighlighted:v3];

    v7 = [(PXCuratedLibraryOverlayButton *)self customCaptionLabel];
    [v7 setHighlighted:v3];
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
    v3 = [(PXCuratedLibraryOverlayButton *)self userData];
    v50 = 0uLL;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v4 = objc_opt_class();
    v5 = [v3 title];
    [v4 _getSize:&v50 titleFrame:&v48 captionFrame:&v46 iconFrame:&v44 forConfiguration:v3 title:v5];

    [(PXCuratedLibraryOverlayButton *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(PXCuratedLibraryOverlayButton *)self effectiveUserInterfaceLayoutDirection];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PXCuratedLibraryOverlayButton_layoutSubviews__block_invoke;
    aBlock[3] = &__block_descriptor_81_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = v7;
    *&aBlock[5] = v9;
    *&aBlock[6] = v11;
    *&aBlock[7] = v13;
    v42 = v50;
    v43 = v14 == 1;
    v15 = _Block_copy(aBlock);
    v16 = [(PXCuratedLibraryOverlayButton *)self contentView];
    [v16 setFrame:{v7, v9, v11, v13}];

    v17 = v15[2](v15, *&v48, *(&v48 + 1), *&v49, *(&v49 + 1));
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    [v24 setFrame:{v17, v19, v21, v23}];

    v25 = v15[2](v15, *&v46, *(&v46 + 1), *&v47, *(&v47 + 1));
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(PXCuratedLibraryOverlayButton *)self customCaptionLabel];
    [v32 setFrame:{v25, v27, v29, v31}];

    v33 = v15[2](v15, *&v44, *(&v44 + 1), *&v45, *(&v45 + 1));
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    [v40 setFrame:{v33, v35, v37, v39}];
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

- (void)setUserData:(id)a3
{
  v8 = a3;
  v5 = self->_userData;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXCuratedLibraryOverlayButtonConfiguration *)v5 isEqual:v8];

    if (!v7)
    {
      objc_storeStrong(&self->_userData, a3);
      if ([objc_opt_class() usesButtonSystem])
      {
        [(PXCuratedLibraryOverlayButton *)self _updateButtonSystemWithConfiguration:v8];
      }

      else
      {
        if (v8)
        {
          [(PXCuratedLibraryOverlayButton *)self _updateButtonWithConfiguration:v8];
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
    v6 = [(PXCuratedLibraryOverlayButton *)self customIconImageView];
    v7 = [v6 image];
    v8 = [(PXCuratedLibraryOverlayButton *)self customTitleLabel];
    v9 = [v8 text];
    v3 = [v4 stringWithFormat:@"<%@ icon:%@ title:%@>", v5, v7, v9];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(PXCuratedLibraryOverlayButton *)self isSizeCalculationButton])
  {
    v14.receiver = self;
    v14.super_class = PXCuratedLibraryOverlayButton;
    [(PXCuratedLibraryOverlayButton *)&v14 sizeThatFits:width, height];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = [(PXCuratedLibraryOverlayButton *)self userData];
    [v8 sizeWithConfiguration:v9];
    v11 = v10;
    v13 = v12;

    v6 = v11;
    v7 = v13;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (PXCuratedLibraryOverlayButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXCuratedLibraryOverlayButton;
  v3 = [(PXCuratedLibraryOverlayButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXCuratedLibraryOverlayButton *)v3 _setupViews];
    [(PXCuratedLibraryOverlayButton *)v4 addTarget:v4 action:sel__performAction_ forControlEvents:64];
    [(PXCuratedLibraryOverlayButton *)v4 addTarget:v4 action:sel__performMenuAction_ forControlEvents:0x4000];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__accessibilitySettingsChanged_ name:*MEMORY[0x1E69DD8A8] object:0];
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
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  v18[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v18[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v7 = [v2 initWithObjects:v6];

  v8 = [_PXFontForComponent_fontCache objectForKey:v7];
  if (!v8)
  {
    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v10 = [v9 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

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
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
    [v16 handleFailureInFunction:v17 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

    abort();
  }

LABEL_12:

  return v8;
}

+ (void)_getSize:(CGSize *)a3 titleFrame:(CGRect *)a4 captionFrame:(CGRect *)a5 iconFrame:(CGRect *)a6 forConfiguration:(id)a7 title:(id)a8
{
  v170 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a8;
  if (v12)
  {
    v14 = [v12 style];
    if (v14 > 0xE)
    {
      v138 = [MEMORY[0x1E696AAA8] currentHandler];
      v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _PXNeedsEffectViewForStyle(PXCuratedLibraryOverlayButtonStyle)"];
      [v138 handleFailureInFunction:v139 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:94 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v15 = v14;
    v156 = v13;
    v145 = a6;
    if (((1 << v14) & 0x7FC3) != 0)
    {
      v17 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
      v18 = [v13 length];
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

    v24 = v12;
    v25 = [v24 segment];
    v26 = [v24 spec];
    [v26 buttonHeight];
    v28 = v27 * 0.5;

    v29 = [v24 style];
    v30 = 0.0;
    v31 = 4.0;
    v32 = 5.0;
    if (((1 << v29) & 0xC0) == 0)
    {
      v32 = 0.0;
    }

    if (((1 << v29) & 0x1C00) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v31 = v28;
    }

    if (((1 << v29) & 0x3C) != 0)
    {
      v32 = 0.0;
      v31 = 0.0;
    }

    if (v29 > 0xC)
    {
      v31 = v28;
    }

    else
    {
      v30 = v32;
    }

    if (v25 == 2)
    {
      v33 = v30;
    }

    else
    {
      v33 = v31;
    }

    if (v25 == 1)
    {
      v34 = v30;
    }

    else
    {
      v34 = v31;
    }

    v35 = [v24 spec];

    v36 = [v35 layoutDirection];
    if (v36 == 2)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    v143 = v37;
    if (v36 == 2)
    {
      v38 = v33;
    }

    else
    {
      v38 = v34;
    }

    v141 = v38;
    v39 = [v24 spec];
    [v39 buttonHeight];
    v41 = v40;

    v42 = v16;
    v154 = v157;
    if (!v156)
    {
LABEL_58:
      v58 = [v24 caption];
      v59 = v16;
      v60 = v157;
      if (!v58)
      {
LABEL_78:
        v78 = [v24 iconImage];
        v79 = v78;
        if (v78)
        {
          [v78 size];
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
        v91 = [v24 buttonType];
        v92 = v82 - (v84 + v88);
        if (v91 == 4)
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
          p_x = &v145->origin.x;
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
          p_x = &v145->origin.x;
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

        if (a4)
        {
          a4->origin.x = v118;
          a4->origin.y = v117;
          a4->size.width = v115;
          a4->size.height = v155;
        }

        if (a5)
        {
          a5->origin.x = v149;
          a5->origin.y = v147;
          a5->size.width = v144;
          a5->size.height = v142;
        }

        if (p_x)
        {
          *p_x = v158;
          *(p_x + 1) = v151;
          *(p_x + 2) = v121;
          *(p_x + 3) = v123;
        }

        _Block_object_dispose(&v162, 8);
        v13 = v156;
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
      v64 = [MEMORY[0x1E69DC668] sharedApplication];
      v65 = [v64 preferredContentSizeCategory];
      v163 = v65;
      v66 = [MEMORY[0x1E696AD98] numberWithInteger:v62];
      v164 = v66;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:3];
      v68 = [v63 initWithObjects:v67];

      v69 = [_PXFontForComponent_fontCache objectForKey:v68];
      if (v69)
      {
LABEL_77:

        [a1 _sizeOfTitle:v58 withFont:v69];
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

      v70 = [MEMORY[0x1E69DC668] sharedApplication];
      v71 = [v70 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v71);

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
      v136 = [MEMORY[0x1E696AAA8] currentHandler];
      v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIFont *_PXFontForComponent(__strong _PXOverlayButtonComponent, PXCuratedLibraryOverlayButtonStyle)"}];
      [v136 handleFailureInFunction:v137 file:@"PXCuratedLibraryOverlayButton.m" lineNumber:176 description:@"Unexpected _PXOverlayButtonComponent passed to PXFontForComponent!"];

      abort();
    }

    if (_PXFontForComponent_onceToken != -1)
    {
      dispatch_once(&_PXFontForComponent_onceToken, &__block_literal_global_882);
    }

    v43 = [off_1E7721928 alloc];
    v162 = @"_PXOverlayButtonComponentTitle";
    v44 = [MEMORY[0x1E69DC668] sharedApplication];
    v45 = [v44 preferredContentSizeCategory];
    v163 = v45;
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:v15 - 2 < 4];
    v164 = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:3];
    v48 = [v43 initWithObjects:v47];

    v49 = [_PXFontForComponent_fontCache objectForKey:v48];
    if (v49)
    {
LABEL_57:

      [a1 _sizeOfTitle:v156 withFont:v49];
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

    v50 = [MEMORY[0x1E69DC668] sharedApplication];
    v51 = [v50 preferredContentSizeCategory];
    v52 = UIContentSizeCategoryIsAccessibilityCategory(v51);

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

  if (a3)
  {
    *a3 = *MEMORY[0x1E695F060];
  }

  v20 = MEMORY[0x1E695F058];
  if (a4)
  {
    v21 = *(MEMORY[0x1E695F058] + 16);
    a4->origin = *MEMORY[0x1E695F058];
    a4->size = v21;
  }

  if (a5)
  {
    v22 = *(v20 + 16);
    a5->origin = *v20;
    a5->size = v22;
  }

  if (a6)
  {
    v23 = *(v20 + 16);
    a6->origin = *v20;
    a6->size = v23;
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

+ (id)iconImageSymbolConfigurationFromConfiguration:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_PXIconImageSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&_PXIconImageSymbolConfiguration_onceToken, &__block_literal_global_863_140948);
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = [v3 systemImageName];
  v8 = [off_1E7721928 alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "style")}];
  v10 = v9;
  if (v7)
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 preferredContentSizeCategory];
    v37 = v12;
    v38 = v7;
    v13 = MEMORY[0x1E695DEC8];
    v14 = 3;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 preferredContentSizeCategory];
    v37 = v12;
    v13 = MEMORY[0x1E695DEC8];
    v14 = 2;
  }

  v15 = [v13 arrayWithObjects:&v36 count:v14];
  v16 = [v8 initWithObjects:v15];

  v17 = [_PXIconImageSymbolConfiguration_configsCache objectForKey:v16];
  if (!v17)
  {
    v18 = [v3 style];
    if (v18 <= 0xE)
    {
      if (((1 << v18) & 0x6FC0) != 0)
      {
LABEL_9:
        v19 = MEMORY[0x1E69DDC50];
        if (!IsAccessibilityCategory)
        {
          v19 = MEMORY[0x1E69DDC70];
        }

        v20 = *v19;
        v21 = [v3 spec];
        v22 = [v21 options];

        v23 = MEMORY[0x1E69DDCF8];
        if ((v22 & 4) == 0)
        {
          v23 = MEMORY[0x1E69DDD78];
        }

        v24 = *v23;
        v25 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v24 maxContentSizeCategory:v20 withSymbolicTraits:32770];
        if ((v22 & 4) != 0 || ([v7 isEqualToString:@"person.fill"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"person.2.fill"))
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

      if (((1 << v18) & 0x30) != 0)
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

      if (v18 == 12)
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

    if (v18 < 2)
    {
      goto LABEL_9;
    }

    if (v18 - 2 > 1)
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

+ (CGSize)sizeWithConfiguration:(id)a3
{
  v4 = a3;
  v35 = 0.0;
  v36 = 0.0;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "hash")}];
  v6 = [a1 buttonSizeCache];
  v7 = [v6 objectForKey:v5];
  if (!v7)
  {
    v11 = [v4 spec];
    v12 = [v11 extendedTraitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 5 && [objc_opt_class() usesButtonSystem])
    {
      v14 = objc_alloc_init(PXCuratedLibraryOverlayButton);
      [(PXCuratedLibraryOverlayButton *)v14 setIsSizeCalculationButton:1];
      [(PXCuratedLibraryOverlayButton *)v14 setUserData:v4];
      [(PXCuratedLibraryOverlayButton *)v14 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v16 = v15;
      v18 = v17;
      v35 = v15;
      v36 = v17;

LABEL_17:
      v8 = [MEMORY[0x1E696B098] valueWithCGSize:{v16, v18, *&v35}];
      [v6 setObject:v8 forKey:v5];

      goto LABEL_18;
    }

    v19 = [v4 possibleTitles];
    v20 = [v19 mutableCopy];
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

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [v23 addObject:v25];
    }

    v26 = [v23 allObjects];
    v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_637_141154];
    v28 = [v27 firstObject];

    [a1 _getSize:&v35 titleFrame:0 captionFrame:0 iconFrame:0 forConfiguration:v4 title:v28];
    if ([objc_opt_class() usesButtonSystem])
    {
      v29 = [v4 title];
      if (v29)
      {

LABEL_15:
        v31 = objc_alloc_init(PXCuratedLibraryOverlayButton);
        [(PXCuratedLibraryOverlayButton *)v31 setIsSizeCalculationButton:1];
        [(PXCuratedLibraryOverlayButton *)v31 setUserData:v4];
        [(PXCuratedLibraryOverlayButton *)v31 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
        v35 = v32;

        goto LABEL_16;
      }

      v30 = [v4 caption];

      if (v30)
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

+ (CGSize)_sizeOfTitle:(id)a3 withFont:(id)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 titleSizeCache];
  v9 = [off_1E7721928 alloc];
  v25[0] = v6;
  v25[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v11 = [v9 initWithObjects:v10];

  v12 = [v8 objectForKey:v11];
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
    v24 = v7;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v6 sizeWithAttributes:v18];
    v15 = v19;
    v17 = v20;

    v13 = [MEMORY[0x1E696B098] valueWithCGSize:{v15, v17}];
    [v8 setObject:v13 forKey:v11];
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