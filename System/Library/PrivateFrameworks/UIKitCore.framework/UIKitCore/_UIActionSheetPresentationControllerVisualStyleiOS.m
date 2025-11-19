@interface _UIActionSheetPresentationControllerVisualStyleiOS
- (UIEdgeInsets)contentInsetsForContainerView:(id)a3;
- (_UIActionSheetPresentationControllerVisualStyleiOS)init;
@end

@implementation _UIActionSheetPresentationControllerVisualStyleiOS

- (_UIActionSheetPresentationControllerVisualStyleiOS)init
{
  v7.receiver = self;
  v7.super_class = _UIActionSheetPresentationControllerVisualStyleiOS;
  v2 = [(_UIActionSheetPresentationControllerVisualStyleiOS *)&v7 init];
  if (v2)
  {
    v3 = [UIActionSheetiOSDismissActionView alloc];
    [(_UIActionSheetPresentationControllerVisualStyleiOS *)v2 cornerRadius];
    v4 = [(UIActionSheetiOSDismissActionView *)v3 initWithContinuousCornerRadius:?];
    dismissActionView = v2->_dismissActionView;
    v2->_dismissActionView = v4;
  }

  return v2;
}

- (UIEdgeInsets)contentInsetsForContainerView:(id)a3
{
  v3 = _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(a3, 8.0, 8.0, 8.0, 8.0);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end