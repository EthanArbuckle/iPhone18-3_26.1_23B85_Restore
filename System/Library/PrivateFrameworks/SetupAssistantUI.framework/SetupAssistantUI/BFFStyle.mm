@interface BFFStyle
+ (id)sharedStyle;
- (CGSize)_effectiveSizeForIconSize:(CGSize)size inView:(id)view;
- (CGSize)sizeForContinueButtonInAncestor:(id)ancestor;
- (UIEdgeInsets)edgeInsetsForHeaderView:(id)view;
- (UIEdgeInsets)edgeInsetsForTable:(id)table;
- (UIEdgeInsets)horizontalInsetsForContainingInView:(id)view width:(double)width;
- (double)headerIconBaselineOffsetForView:(id)view;
- (double)headerTitleBaselineOffsetForView:(id)view hasIcon:(BOOL)icon;
- (double)headerTitleBaselineOffsetForView:(id)view iconSize:(CGSize)size;
- (double)headerYOffsetForIcon:(id)icon inView:(id)view;
- (double)headerYOffsetForIconSize:(CGSize)size inView:(id)view;
- (id)continueButtonWithTitle:(id)title inView:(id)view;
- (id)headerTitleFont;
- (id)tableCellFont;
- (void)applyAutomaticScrollToEdgeBehaviorOnNavigationItem:(id)item;
- (void)applyThemeToAllTableViews;
- (void)applyThemeToLabel:(id)label;
- (void)applyThemeToNavigationController:(id)controller allowUnderlap:(BOOL)underlap;
- (void)applyThemeToRemoteUIWebViewController:(id)controller;
- (void)applyThemeToSectionHeaderLabel:(id)label;
- (void)applyThemeToTableCell:(id)cell;
- (void)applyThemeToTextView:(id)view;
- (void)applyThemeToTitleLabel:(id)label;
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

- (CGSize)_effectiveSizeForIconSize:(CGSize)size inView:(id)view
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v7 = viewCopy;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  if (width != *MEMORY[0x277CBF3A8] || height != v9)
  {
    [viewCopy bounds];
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

- (double)headerYOffsetForIconSize:(CGSize)size inView:(id)view
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  [(BFFStyle *)self _effectiveSizeForIconSize:viewCopy inView:width, height];
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
      window = [viewCopy window];
      [window frame];
      v15 = -(_BFFIconTitleBaselineOffset(viewCopy) - v14 * 0.34) - v10;

      v12 = fmax(v15, 0.0);
    }
  }

  else
  {
    v11 = _BFFCGFloatByDeviceHeight(viewCopy, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);
    v12 = fmax(v11 - _CGFloatByIdiom(viewCopy, 0.0, 24.0, 0.0) - v10, 0.0);
  }

  return v12;
}

- (double)headerTitleBaselineOffsetForView:(id)view iconSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  viewCopy = view;
  v10 = viewCopy;
  if (width == v7 && height == v8)
  {
    v18 = _BFFCGFloatByDeviceHeight(viewCopy, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);

    return v18;
  }

  else
  {
    [(BFFStyle *)self _effectiveSizeForIconSize:viewCopy inView:width, height];
    v13 = v12;
    [(BFFStyle *)self headerYOffsetForIconSize:v10 inView:width, height];
    v15 = v14 + v13;
    v16 = _BFFIconTitleBaselineOffset(v10);

    return v15 + v16;
  }
}

- (double)headerYOffsetForIcon:(id)icon inView:(id)view
{
  viewCopy = view;
  [icon size];
  [(BFFStyle *)self headerYOffsetForIconSize:viewCopy inView:?];
  v8 = v7;

  return v8;
}

- (double)headerIconBaselineOffsetForView:(id)view
{
  viewCopy = view;
  v4 = _BFFCGFloatByDeviceHeight(viewCopy, 37.0, 44.0, 44.0, 50.0, 119.0, 250.0, 119.0, 55.0);
  v5 = _CGFloatByIdiom(viewCopy, 0.0, 24.0, 0.0);

  return v4 - v5;
}

- (double)headerTitleBaselineOffsetForView:(id)view hasIcon:(BOOL)icon
{
  iconCopy = icon;
  viewCopy = view;
  [(BFFStyle *)self headerIconBaselineOffsetForView:viewCopy];
  v8 = v7;
  if (iconCopy)
  {
    v9 = _BFFIconTitleBaselineOffset(viewCopy);

    return v8 + v9;
  }

  else
  {
  }

  return v8;
}

- (UIEdgeInsets)edgeInsetsForHeaderView:(id)view
{
  viewCopy = view;
  _shouldReverseLayoutDirection = [viewCopy _shouldReverseLayoutDirection];
  v6 = _CGFloatByIdiom(viewCopy, 15.0, 15.0, 15.0);
  v7 = _CGFloatByIdiom(viewCopy, 15.0, 0.0, 0.0);
  if (_shouldReverseLayoutDirection)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (_shouldReverseLayoutDirection)
  {
    v6 = v7;
  }

  [(BFFStyle *)self baselineInsetForHeaderTitle];
  v10 = v9;
  headerTitleFont = [(BFFStyle *)self headerTitleFont];
  [headerTitleFont ascender];
  v13 = v10 + v12;

  v14 = _BFFCGFloatByDeviceHeight(viewCopy, 27.5, 35.5, 39.3333333, 52.5, 52.5, 32.0, 32.0, 32.0);
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v5 = [localeIdentifier isEqualToString:@"ja"];

  v6 = MEMORY[0x277D74410];
  if (v5)
  {
    v6 = MEMORY[0x277D74420];
  }

  v7 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*v6];
  v8 = [v2 scaledFontForFont:v7];

  return v8;
}

- (UIEdgeInsets)horizontalInsetsForContainingInView:(id)view width:(double)width
{
  viewCopy = view;
  v6 = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 16);
  if (_useCompactMetrics(viewCopy))
  {
    _BFFTableInset(viewCopy);
    v9 = v8;
    v10 = v8;
  }

  else
  {
    [viewCopy bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    window = [viewCopy window];
    if (window)
    {
      [viewCopy window];
    }

    else
    {
      [MEMORY[0x277D759A0] mainScreen];
    }
    v18 = ;
    [v18 bounds];
    v20 = v19;

    window2 = [viewCopy window];
    [viewCopy convertRect:window2 toView:{v12, v14, width, v16}];
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

- (UIEdgeInsets)edgeInsetsForTable:(id)table
{
  tableCopy = table;
  _BFFTableInset(tableCopy);
  v5 = v4;
  [tableCopy contentInset];
  v7 = v6;
  [tableCopy separatorInset];
  v9 = v5 - v8;
  v10 = _BFFHeightByDeviceSize(tableCopy);

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

- (void)applyThemeToNavigationController:(id)controller allowUnderlap:(BOOL)underlap
{
  navigationBar = [controller navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)applyAutomaticScrollToEdgeBehaviorOnNavigationItem:(id)item
{
  itemCopy = item;
  if (([itemCopy _isManualScrollEdgeAppearanceEnabled] & 1) == 0)
  {
    [itemCopy _setAutoScrollEdgeTransitionDistance:16.0];
    [itemCopy _setManualScrollEdgeAppearanceEnabled:1];
  }
}

- (id)continueButtonWithTitle:(id)title inView:(id)view
{
  viewCopy = view;
  titleCopy = title;
  v7 = [BFFContinueButton buttonWithType:0];
  [v7 setTitle:titleCopy forState:0];

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
  [viewCopy addSubview:v7];

  return v7;
}

- (CGSize)sizeForContinueButtonInAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  [ancestorCopy bounds];
  [(BFFStyle *)self horizontalInsetsForContainingInView:ancestorCopy width:v5];
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

  [ancestorCopy bounds];
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

- (void)applyThemeToLabel:(id)label
{
  v3 = MEMORY[0x277D75348];
  labelCopy = label;
  _labelColor = [v3 _labelColor];
  [labelCopy setTextColor:_labelColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [labelCopy setBackgroundColor:clearColor];
}

- (void)applyThemeToTextView:(id)view
{
  v3 = MEMORY[0x277D75348];
  viewCopy = view;
  clearColor = [v3 clearColor];
  [viewCopy setBackgroundColor:clearColor];

  _labelColor = [MEMORY[0x277D75348] _labelColor];
  [viewCopy setTextColor:_labelColor];
}

- (void)applyThemeToRemoteUIWebViewController:(id)controller
{
  webView = [controller webView];
  backgroundColor = [(BFFStyle *)self backgroundColor];
  [webView setBackgroundColor:backgroundColor];
}

- (void)applyThemeToAllTableViews
{
  v18[1] = *MEMORY[0x277D85DE8];
  appearance = [MEMORY[0x277D75B40] appearance];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.300000012];
  [appearance setSeparatorBottomShadowColor:v4];

  v5 = MEMORY[0x277D756B8];
  v18[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [v5 appearanceWhenContainedInInstancesOfClasses:v6];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  v9 = MEMORY[0x277D756B8];
  v17 = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v11 = [v9 appearanceWhenContainedInInstancesOfClasses:v10];
  _labelColor = [MEMORY[0x277D75348] _labelColor];
  [v11 setTextColor:_labelColor];

  appearance2 = [MEMORY[0x277D75B40] appearance];
  _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
  [appearance2 setBackgroundColor:_systemBackgroundColor];

  appearance3 = [MEMORY[0x277D75B48] appearance];
  backgroundColor = [(BFFStyle *)self backgroundColor];
  [appearance3 setBackgroundColor:backgroundColor];
}

- (void)applyThemeToTitleLabel:(id)label
{
  v4 = MEMORY[0x277D75348];
  labelCopy = label;
  _labelColor = [v4 _labelColor];
  [labelCopy setTextColor:_labelColor];

  backgroundColor = [(BFFStyle *)self backgroundColor];
  [labelCopy setBackgroundColor:backgroundColor];

  v7 = +[BFFStyle sharedStyle];
  headerTitleFont = [v7 headerTitleFont];
  [labelCopy setFont:headerTitleFont];

  [labelCopy setTextAlignment:1];
  [labelCopy setNumberOfLines:0];
}

- (void)applyThemeToTableCell:(id)cell
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  v4 = +[BFFStyle sharedStyle];
  tableCellFont = [v4 tableCellFont];
  [textLabel setFont:tableCellFont];

  [textLabel setAdjustsFontSizeToFitWidth:1];
  font = [textLabel font];
  [font pointSize];
  [textLabel setMinimumScaleFactor:12.0 / v7];

  [cellCopy setAccessoryType:1];
}

- (void)applyThemeToSectionHeaderLabel:(id)label
{
  v3 = MEMORY[0x277D75348];
  labelCopy = label;
  _secondaryLabelColor = [v3 _secondaryLabelColor];
  [labelCopy setTextColor:_secondaryLabelColor];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [labelCopy setFont:v6];

  [labelCopy setTextAlignment:4];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [labelCopy setBackgroundColor:clearColor];
}

@end