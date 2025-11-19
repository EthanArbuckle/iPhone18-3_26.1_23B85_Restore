@interface UIAlertControllerVisualStyleActionSheetCar
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
@end

@implementation UIAlertControllerVisualStyleActionSheetCar

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = a3;
  [v3 safeAreaInsets];
  v5 = v4;
  [v3 safeAreaInsets];
  v7 = v5 + v6;
  [v3 bounds];
  Width = CGRectGetWidth(v21);
  v9 = fmax((Width - v7 - fmin(Width - v7, 420.0)) * 0.5, 10.0);
  v10 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(v3, 6.0, v9, 6.0, v9);
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