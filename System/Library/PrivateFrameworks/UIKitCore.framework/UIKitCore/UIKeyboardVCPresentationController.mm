@interface UIKeyboardVCPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
@end

@implementation UIKeyboardVCPresentationController

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  if ([UIApp _isClassic])
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
  }

  else
  {
    containerView = [(UIPresentationController *)self containerView];
    mainScreen = [containerView _window];

    if (([mainScreen _isTextEffectsWindow] & 1) == 0)
    {
      v18.receiver = self;
      v18.super_class = UIKeyboardVCPresentationController;
      [(UIPresentationController *)&v18 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
      v12 = v14;
      v13 = v15;
      goto LABEL_7;
    }

    [mainScreen actualSceneFrame];
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
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  [(UIKeyboardVCPresentationController *)self sizeForChildContentContainer:presentedViewController withParentContainerSize:v7, v8];
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