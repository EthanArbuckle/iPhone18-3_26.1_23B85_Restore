@interface UIInterfaceActionConcreteVisualStyle_iOSSheet
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)contentMargin;
- (double)_systemFontSize;
- (id)_preferredActionFont;
- (id)_regularActionFont;
- (id)newActionBackgroundViewForViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_iOSSheet

- (UIEdgeInsets)contentMargin
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = [UIFontMetrics metricsForTextStyle:@"UICTFontTextStyleBody"];
    [v5 scaledValueForValue:8.0];
    v7 = v6;

    v8 = 16.0;
    v9 = v7;
    v10 = 16.0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIInterfaceActionConcreteVisualStyle_iOSSheet;
    [(UIInterfaceActionConcreteVisualStyle_iOS *)&v13 contentMargin];
    v7 = v11;
  }

  v12 = v7;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v12;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = _UISolariumEnabled();
  v3 = 48.0;
  if (!v2)
  {
    v3 = 57.0;
  }

  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  action = [stateCopy action];
  if (_shouldUseSolariumDesign(stateCopy))
  {
    action2 = [stateCopy action];
    _highlightedView = objc_alloc_init(_UIAlertControllerFilledBackgroundView);
    v8 = [(UIInterfaceActionConcreteVisualStyle_iOS *)self actionBackgroundColorForViewState:stateCopy];
    [(_UIAlertControllerFilledBackgroundView *)_highlightedView setFillColor:v8];
  }

  else if ([action type] == 1)
  {
    v9 = objc_alloc_init(_UIAlertControlleriOSActionSheetCancelBackgroundView);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__UIInterfaceActionConcreteVisualStyle_iOSSheet_newActionBackgroundViewForViewState___block_invoke;
    v13[3] = &unk_1E70F35B8;
    v10 = v9;
    v14 = v10;
    v15 = stateCopy;
    [UIView performWithoutAnimation:v13];
    v11 = v15;
    _highlightedView = v10;
  }

  else if ([stateCopy isHighlighted])
  {
    _highlightedView = [(UIInterfaceActionConcreteVisualStyle_iOS *)self _highlightedView];
  }

  else
  {
    _highlightedView = 0;
  }

  return _highlightedView;
}

- (double)_systemFontSize
{
  v11[11] = *MEMORY[0x1E69E9840];
  v10[0] = @"UICTContentSizeCategoryXS";
  v10[1] = @"UICTContentSizeCategoryS";
  v11[0] = &unk_1EFE2E128;
  v11[1] = &unk_1EFE2E128;
  v10[2] = @"UICTContentSizeCategoryM";
  v10[3] = @"UICTContentSizeCategoryL";
  v11[2] = &unk_1EFE2E128;
  v11[3] = &unk_1EFE2E128;
  v10[4] = @"UICTContentSizeCategoryXL";
  v10[5] = @"UICTContentSizeCategoryXXL";
  v11[4] = &unk_1EFE2E138;
  v11[5] = &unk_1EFE2E148;
  v10[6] = @"UICTContentSizeCategoryAccessibilityM";
  v10[7] = @"UICTContentSizeCategoryAccessibilityL";
  v11[6] = &unk_1EFE2E158;
  v11[7] = &unk_1EFE2E168;
  v10[8] = @"UICTContentSizeCategoryAccessibilityXL";
  v10[9] = @"UICTContentSizeCategoryAccessibilityXXL";
  v11[8] = &unk_1EFE2E178;
  v11[9] = &unk_1EFE2E188;
  v10[10] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v11[10] = &unk_1EFE2E198;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:11];
  v3 = UIApp;
  v4 = v2;
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];
  v6 = [v4 objectForKeyedSubscript:preferredContentSizeCategory];

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 24.0;
  }

  return v8;
}

- (id)_regularActionFont
{
  if (_UISolariumEnabled())
  {
    v5.receiver = self;
    v5.super_class = UIInterfaceActionConcreteVisualStyle_iOSSheet;
    _regularActionFont = [(UIInterfaceActionConcreteVisualStyle_iOS *)&v5 _regularActionFont];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_iOSSheet *)self _systemFontSize];
    _regularActionFont = [off_1E70ECC18 systemFontOfSize:?];
  }

  return _regularActionFont;
}

- (id)_preferredActionFont
{
  if (_UISolariumEnabled())
  {
    v5.receiver = self;
    v5.super_class = UIInterfaceActionConcreteVisualStyle_iOSSheet;
    _preferredActionFont = [(UIInterfaceActionConcreteVisualStyle_iOS *)&v5 _preferredActionFont];
  }

  else
  {
    [(UIInterfaceActionConcreteVisualStyle_iOSSheet *)self _systemFontSize];
    _preferredActionFont = [off_1E70ECC18 boldSystemFontOfSize:?];
  }

  return _preferredActionFont;
}

@end