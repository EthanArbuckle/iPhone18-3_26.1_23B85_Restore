@interface UIAlertControllerVisualStyleAlertAlternativeTV
- (UIEdgeInsets)contentInsetsForContainerView:(id)view;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginAboveTitleLabelFirstBaseline;
@end

@implementation UIAlertControllerVisualStyleAlertAlternativeTV

- (double)marginAboveTitleLabelFirstBaseline
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  result = 58.0;
  if (IsAccessibilityCategory)
  {
    return 29.0;
  }

  return result;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  descriptor = [(UIAlertControllerVisualStyle *)self descriptor];
  hasTitle = [descriptor hasTitle];

  if (hasTitle)
  {
    return 44.0;
  }

  [(UIAlertControllerVisualStyleAlertAlternativeTV *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)view
{
  v3 = 24.0;
  v4 = 24.0;
  v5 = 24.0;
  v6 = 24.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end