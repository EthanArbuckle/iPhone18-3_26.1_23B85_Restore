@interface UIAlertControllerVisualStyleAlertAlternativeTV
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (double)marginAboveMessageLabelFirstBaseline;
- (double)marginAboveTitleLabelFirstBaseline;
@end

@implementation UIAlertControllerVisualStyleAlertAlternativeTV

- (double)marginAboveTitleLabelFirstBaseline
{
  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  result = 58.0;
  if (IsAccessibilityCategory)
  {
    return 29.0;
  }

  return result;
}

- (double)marginAboveMessageLabelFirstBaseline
{
  v3 = [(UIAlertControllerVisualStyle *)self descriptor];
  v4 = [v3 hasTitle];

  if (v4)
  {
    return 44.0;
  }

  [(UIAlertControllerVisualStyleAlertAlternativeTV *)self marginAboveTitleLabelFirstBaseline];
  return result;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
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