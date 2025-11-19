@interface UIAlertControllerVisualStyleAlertCar
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (double)marginAboveTitleLabelFirstBaseline;
- (double)marginBelowLastLabelLastBaseline;
- (double)marginBelowMessageLabelLastBaseline;
- (id)messageLabelColor;
- (id)messageLabelFont;
- (id)titleLabelFont;
@end

@implementation UIAlertControllerVisualStyleAlertCar

- (id)titleLabelFont
{
  if (_UISolariumEnabled())
  {
    v5.receiver = self;
    v5.super_class = UIAlertControllerVisualStyleAlertCar;
    v3 = [(UIAlertControllerVisualStyleAlert *)&v5 titleLabelFont];
  }

  else
  {
    v3 = [off_1E70ECC18 boldSystemFontOfSize:16.0];
  }

  return v3;
}

- (double)marginAboveTitleLabelFirstBaseline
{
  if ((_UISolariumEnabled() & 1) != 0 || (-[UIAlertControllerVisualStyle descriptor](self, "descriptor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 hasMessage], v4, result = 22.0, (v5 & 1) == 0))
  {
    v6.receiver = self;
    v6.super_class = UIAlertControllerVisualStyleAlertCar;
    [(UIAlertControllerVisualStyleAlert *)&v6 marginAboveTitleLabelFirstBaseline];
  }

  return result;
}

- (double)marginBelowLastLabelLastBaseline
{
  if ((_UISolariumEnabled() & 1) != 0 || (-[UIAlertControllerVisualStyle descriptor](self, "descriptor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 hasMessage], v4, result = 14.0, (v5 & 1) == 0))
  {
    v6.receiver = self;
    v6.super_class = UIAlertControllerVisualStyleAlertCar;
    [(UIAlertControllerVisualStyleAlert *)&v6 marginBelowLastLabelLastBaseline];
  }

  return result;
}

- (double)marginBelowMessageLabelLastBaseline
{
  if ((_UISolariumEnabled() & 1) != 0 || (-[UIAlertControllerVisualStyle descriptor](self, "descriptor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 hasTitle], v4, result = 14.0, (v5 & 1) == 0))
  {
    v6.receiver = self;
    v6.super_class = UIAlertControllerVisualStyleAlertCar;
    [(UIAlertControllerVisualStyleAlert *)&v6 marginBelowMessageLabelLastBaseline];
  }

  return result;
}

- (id)messageLabelFont
{
  if (_UISolariumEnabled())
  {
    v5.receiver = self;
    v5.super_class = UIAlertControllerVisualStyleAlertCar;
    v3 = [(UIAlertControllerVisualStyleAlert *)&v5 messageLabelFont];
  }

  else
  {
    v3 = [off_1E70ECC18 systemFontOfSize:16.0];
  }

  return v3;
}

- (id)messageLabelColor
{
  if (_UISolariumEnabled() && (-[UIAlertControllerVisualStyle descriptor](self, "descriptor"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hasTitle], v3, v4))
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v5 = [(UIAlertControllerVisualStyleAlertCar *)self titleLabelColor];
  }

  return v5;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = a3;
  [v3 safeAreaInsets];
  v5 = v4;
  [v3 safeAreaInsets];
  v7 = v5 + v6;
  [v3 bounds];
  Width = CGRectGetWidth(v21);
  v9 = fmax((Width - v7 - fmin(Width - v7, 420.0)) * 0.5, 8.0);
  v10 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(v3, 8.0, v9, 8.0, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

@end