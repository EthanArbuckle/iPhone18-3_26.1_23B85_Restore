@interface BFFStyle
+ (id)sharedStyle;
- (CGSize)_effectiveSizeForIconSize:(CGSize)a3 inView:(id)a4;
- (CGSize)sizeForContinueButtonInAncestor:(id)a3;
- (UIEdgeInsets)edgeInsetsForHeaderView:(id)a3;
- (UIEdgeInsets)edgeInsetsForTable:(id)a3;
- (UIEdgeInsets)horizontalInsetsForContainingInView:(id)a3 width:(double)a4;
- (double)headerIconBaselineOffsetForView:(id)a3;
- (double)headerTitleBaselineOffsetForView:(id)a3 hasIcon:(BOOL)a4;
- (double)headerTitleBaselineOffsetForView:(id)a3 iconSize:(CGSize)a4;
- (double)headerYOffsetForIcon:(id)a3 inView:(id)a4;
- (double)headerYOffsetForIconSize:(CGSize)a3 inView:(id)a4;
- (id)continueButtonWithTitle:(id)a3 inView:(id)a4;
- (id)headerTitleFont;
- (id)tableCellFont;
- (void)applyAutomaticScrollToEdgeBehaviorOnNavigationItem:(id)a3;
- (void)applyThemeToAllTableViews;
- (void)applyThemeToLabel:(id)a3;
- (void)applyThemeToNavigationController:(id)a3 allowUnderlap:(BOOL)a4;
- (void)applyThemeToRemoteUIWebViewController:(id)a3;
- (void)applyThemeToSectionHeaderLabel:(id)a3;
- (void)applyThemeToTableCell:(id)a3;
- (void)applyThemeToTextView:(id)a3;
- (void)applyThemeToTitleLabel:(id)a3;
@end

@implementation BFFStyle

+ (id)sharedStyle
{
  if (sharedStyle_onceToken != -1)
  {
    +[BFFStyle sharedStyle];
  }

  v3 = sharedStyle__instance;

  return v3;
}

uint64_t __23__BFFStyle_sharedStyle__block_invoke()
{
  sharedStyle__instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)headerTitleFont
{
  v2 = MEMORY[0x277D74310];
  v3 = _BFFHeaderTextStyle();
  v4 = [v2 preferredFontDescriptorWithTextStyle:v3];

  v5 = MEMORY[0x277D74300];
  v6 = [v4 fontDescriptorWithSymbolicTraits:2];
  v7 = [v5 fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (CGSize)_effectiveSizeForIconSize:(CGSize)a3 inView:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = v6;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  if (width != *MEMORY[0x277CBF3A8] || height != v9)
  {
    [v6 bounds];
    if (width >= v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = width;
    }

    [v7 bounds];
    if (width >= v12)
    {
      [v7 bounds];
      v9 = height * (v13 / width);
    }

    else
    {
      v9 = height;
    }
  }

  v14 = v8;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)headerYOffsetForIconSize:(CGSize)a3 inView:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(BFFStyle *)self _effectiveSizeForIconSize:v7 inView:width, height];
  v10 = v9;
  if (v9 >= 100.001)
  {
    if (v8 < v9)
    {
      v8 = v9;
    }

    v12 = 0.0;
    if (v8 < 160.001)
    {
      v13 = [v7 window];
      [v13 frame];
      v15 = -(_BFFIconTitleBaselineOffset(v7) - v14 * 0.34) - v10;

      v12 = fmax(v15, 0.0);
    }
  }

  else
  {
    v11 = _BFFCGFloatByDeviceHeight(v7, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);
    v12 = fmax(v11 - _CGFloatByIdiom(v7, 0.0, 24.0, 0.0) - v10, 0.0);
  }

  return v12;
}

- (double)headerTitleBaselineOffsetForView:(id)a3 iconSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  v9 = a3;
  v10 = v9;
  if (width == v7 && height == v8)
  {
    v18 = _BFFCGFloatByDeviceHeight(v9, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);

    return v18;
  }

  else
  {
    [(BFFStyle *)self _effectiveSizeForIconSize:v9 inView:width, height];
    v13 = v12;
    [(BFFStyle *)self headerYOffsetForIconSize:v10 inView:width, height];
    v15 = v14 + v13;
    v16 = _BFFIconTitleBaselineOffset(v10);

    return v15 + v16;
  }
}

- (double)headerYOffsetForIcon:(id)a3 inView:(id)a4
{
  v6 = a4;
  [a3 size];
  [(BFFStyle *)self headerYOffsetForIconSize:v6 inView:?];
  v8 = v7;

  return v8;
}

- (double)headerIconBaselineOffsetForView:(id)a3
{
  v3 = a3;
  v4 = _BFFCGFloatByDeviceHeight(v3, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);
  v5 = _CGFloatByIdiom(v3, 0.0, 24.0, 0.0);

  return v4 - v5;
}

- (double)headerTitleBaselineOffsetForView:(id)a3 hasIcon:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BFFStyle *)self headerIconBaselineOffsetForView:v6];
  v8 = v7;
  if (v4)
  {
    v9 = _BFFIconTitleBaselineOffset(v6);

    return v8 + v9;
  }

  else
  {
  }

  return v8;
}

- (UIEdgeInsets)edgeInsetsForHeaderView:(id)a3
{
  v4 = a3;
  v5 = [v4 _shouldReverseLayoutDirection];
  v6 = _CGFloatByIdiom(v4, 15.0, 15.0, 15.0);
  v7 = _CGFloatByIdiom(v4, 15.0, 0.0, 0.0);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    v6 = v7;
  }

  [(BFFStyle *)self baselineInsetForHeaderTitle];
  v10 = v9;
  v11 = [(BFFStyle *)self headerTitleFont];
  [v11 ascender];
  v13 = v10 + v12;

  v14 = _BFFCGFloatByDeviceHeight(v4, 27.5, 35.5, 39.3333333, 52.5, 52.5, 32.0, 32.0, 32.0);
  v15 = v13;
  v16 = v6;
  v17 = v14;
  v18 = v8;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)tableCellFont
{
  v2 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];
  v5 = [v4 isEqualToString:@"ja"];

  v6 = MEMORY[0x277D74410];
  if (v5)
  {
    v6 = MEMORY[0x277D74420];
  }

  v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*v6];
  v8 = [v2 scaledFontForFont:v7];

  return v8;
}

- (UIEdgeInsets)horizontalInsetsForContainingInView:(id)a3 width:(double)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 16);
  if (_useCompactMetrics(v5))
  {
    _BFFTableInset(v5);
    v9 = v8;
    v10 = v8;
  }

  else
  {
    [v5 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v5 window];
    if (v17)
    {
      [v5 window];
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
    }
    v18 = ;
    [v18 bounds];
    v20 = v19;

    v21 = [v5 window];
    [v5 convertRect:v21 toView:{v12, v14, a4, v16}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v39.origin.x = v23;
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v29;
    MinX = CGRectGetMinX(v39);
    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    MaxX = CGRectGetMaxX(v40);
    v32 = (v20 + -536.0) * 0.5;
    v33 = v32 - (v20 - MaxX);
    v34 = fmin(v32 - MinX, v33) < 0.0;
    if (v34)
    {
      v9 = 24.0;
    }

    else
    {
      v9 = v33;
    }

    if (v34)
    {
      v10 = 24.0;
    }

    else
    {
      v10 = v32 - MinX;
    }
  }

  v35 = v6;
  v36 = v10;
  v37 = v7;
  v38 = v9;
  result.right = v38;
  result.bottom = v37;
  result.left = v36;
  result.top = v35;
  return result;
}

- (UIEdgeInsets)edgeInsetsForTable:(id)a3
{
  v3 = a3;
  _BFFTableInset(v3);
  v5 = v4;
  [v3 contentInset];
  v7 = v6;
  [v3 separatorInset];
  v9 = v5 - v8;
  v10 = _BFFHeightByDeviceSize(v3);

  if (v10 == 7)
  {
    v11 = 212.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = v7;
  v13 = v9;
  v14 = v5;
  result.right = v14;
  result.bottom = v11;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)applyThemeToNavigationController:(id)a3 allowUnderlap:(BOOL)a4
{
  v4 = [a3 navigationBar];
  [v4 _setHidesShadow:1];
}

- (void)applyAutomaticScrollToEdgeBehaviorOnNavigationItem:(id)a3
{
  v3 = a3;
  if (([v3 _isManualScrollEdgeAppearanceEnabled] & 1) == 0)
  {
    [v3 _setAutoScrollEdgeTransitionDistance:16.0];
    [v3 _setManualScrollEdgeAppearanceEnabled:1];
  }
}

- (id)continueButtonWithTitle:(id)a3 inView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [BFFContinueButton buttonWithType:0];
  [v7 setTitle:v6 forState:0];

  v8 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76988]];
  [v7 frame];
  v10 = v9;
  v12 = v11;
  [v8 scaledValueForValue:50.0];
  if (v13 <= 100.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 100.0;
  }

  [v7 setFrame:{v10, v12, 288.0, v14}];
  [v5 addSubview:v7];

  return v7;
}

- (CGSize)sizeForContinueButtonInAncestor:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [(BFFStyle *)self horizontalInsetsForContainingInView:v4 width:v5];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v10 scaledValueForValue:50.0];
  if (v11 <= 100.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 100.0;
  }

  [v4 bounds];
  v14 = v13;

  if (v14 - v7 - v9 <= 327.0)
  {
    v15 = v14 - v7 - v9;
  }

  else
  {
    v15 = 327.0;
  }

  v16 = v15;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)applyThemeToLabel:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 _labelColor];
  [v4 setTextColor:v5];

  v6 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v6];
}

- (void)applyThemeToTextView:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x277D75348] _labelColor];
  [v4 setTextColor:v6];
}

- (void)applyThemeToRemoteUIWebViewController:(id)a3
{
  v5 = [a3 webView];
  v4 = [(BFFStyle *)self backgroundColor];
  [v5 setBackgroundColor:v4];
}

- (void)applyThemeToAllTableViews
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75B40] appearance];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.300000012];
  [v3 setSeparatorBottomShadowColor:v4];

  v5 = MEMORY[0x277D756B8];
  v18[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [v5 appearanceWhenContainedInInstancesOfClasses:v6];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = MEMORY[0x277D756B8];
  v17 = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v11 = [v9 appearanceWhenContainedInInstancesOfClasses:v10];
  v12 = [MEMORY[0x277D75348] _labelColor];
  [v11 setTextColor:v12];

  v13 = [MEMORY[0x277D75B40] appearance];
  v14 = [MEMORY[0x277D75348] _systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = [MEMORY[0x277D75B48] appearance];
  v16 = [(BFFStyle *)self backgroundColor];
  [v15 setBackgroundColor:v16];
}

- (void)applyThemeToTitleLabel:(id)a3
{
  v4 = MEMORY[0x277D75348];
  v9 = a3;
  v5 = [v4 _labelColor];
  [v9 setTextColor:v5];

  v6 = [(BFFStyle *)self backgroundColor];
  [v9 setBackgroundColor:v6];

  v7 = +[BFFStyle sharedStyle];
  v8 = [v7 headerTitleFont];
  [v9 setFont:v8];

  [v9 setTextAlignment:1];
  [v9 setNumberOfLines:0];
}

- (void)applyThemeToTableCell:(id)a3
{
  v3 = a3;
  v8 = [v3 textLabel];
  v4 = +[BFFStyle sharedStyle];
  v5 = [v4 tableCellFont];
  [v8 setFont:v5];

  [v8 setAdjustsFontSizeToFitWidth:1];
  v6 = [v8 font];
  [v6 pointSize];
  [v8 setMinimumScaleFactor:12.0 / v7];

  [v3 setAccessoryType:1];
}

- (void)applyThemeToSectionHeaderLabel:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 _secondaryLabelColor];
  [v4 setTextColor:v5];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v4 setFont:v6];

  [v4 setTextAlignment:4];
  v7 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v7];
}

@end