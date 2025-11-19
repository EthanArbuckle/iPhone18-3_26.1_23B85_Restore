@interface UIKeyboardVCPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
@end

@implementation UIKeyboardVCPresentationController

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([UIApp _isClassic])
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
  }

  else
  {
    v11 = [(UIPresentationController *)self containerView];
    v8 = [v11 _window];

    if (([v8 _isTextEffectsWindow] & 1) == 0)
    {
      v18.receiver = self;
      v18.super_class = UIKeyboardVCPresentationController;
      [(UIPresentationController *)&v18 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
      v12 = v14;
      v13 = v15;
      goto LABEL_7;
    }

    [v8 actualSceneFrame];
  }

  v12 = v9;
  v13 = v10;
LABEL_7:

  v16 = v12;
  v17 = v13;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = [(UIPresentationController *)self presentedViewController];
  v6 = [(UIPresentationController *)self containerView];
  [v6 bounds];
  [(UIKeyboardVCPresentationController *)self sizeForChildContentContainer:v5 withParentContainerSize:v7, v8];
  v10 = v9;
  v12 = v11;

  v13 = v3;
  v14 = v4;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end