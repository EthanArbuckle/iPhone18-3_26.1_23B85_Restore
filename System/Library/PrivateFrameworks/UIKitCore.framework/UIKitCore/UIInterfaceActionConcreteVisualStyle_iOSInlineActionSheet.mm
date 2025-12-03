@interface UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet
- (CGSize)minimumActionContentSize;
- (UIEdgeInsets)contentMargin;
- (double)_actionTitleFontSize;
- (id)_preferredActionFont;
- (id)_regularActionFont;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newGroupBackgroundViewWithGroupViewState:(id)state;
@end

@implementation UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet

- (CGSize)minimumActionContentSize
{
  v2 = 62.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)contentMargin
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v9.receiver = self;
    v9.super_class = UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet;
    [(UIInterfaceActionConcreteVisualStyle_iOSSheet *)&v9 contentMargin];
  }

  else
  {
    v6 = 23.0;
    v5 = 12.0;
    v7 = 12.0;
    v8 = 23.0;
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  if ((_UISolariumEnabled() & 1) != 0 || ![stateCopy isHighlighted])
  {
    v4 = 0;
  }

  else
  {
    v4 = [[_UIAlertControlleriOSHighlightedBackgroundView alloc] initWithStyle:0];
  }

  return v4;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)state
{
  inlineBackgroundView = self->_inlineBackgroundView;
  if (!inlineBackgroundView)
  {
    v5 = [[_UIDimmingKnockoutBackdropView alloc] initWithStyle:2];
    v6 = self->_inlineBackgroundView;
    self->_inlineBackgroundView = v5;

    inlineBackgroundView = self->_inlineBackgroundView;
  }

  return inlineBackgroundView;
}

- (double)_actionTitleFontSize
{
  v11[11] = *MEMORY[0x1E69E9840];
  v10[0] = @"UICTContentSizeCategoryXS";
  v10[1] = @"UICTContentSizeCategoryS";
  v11[0] = &unk_1EFE2E1A8;
  v11[1] = &unk_1EFE2E1A8;
  v10[2] = @"UICTContentSizeCategoryM";
  v10[3] = @"UICTContentSizeCategoryL";
  v11[2] = &unk_1EFE2E1A8;
  v11[3] = &unk_1EFE2E1A8;
  v10[4] = @"UICTContentSizeCategoryXL";
  v10[5] = @"UICTContentSizeCategoryXXL";
  v11[4] = &unk_1EFE2E128;
  v11[5] = &unk_1EFE2E1B8;
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
    v8 = 22.0;
  }

  return v8;
}

- (id)_regularActionFont
{
  [(UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet *)self _actionTitleFontSize];

  return [off_1E70ECC18 systemFontOfSize:?];
}

- (id)_preferredActionFont
{
  [(UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet *)self _actionTitleFontSize];

  return [off_1E70ECC18 boldSystemFontOfSize:?];
}

@end