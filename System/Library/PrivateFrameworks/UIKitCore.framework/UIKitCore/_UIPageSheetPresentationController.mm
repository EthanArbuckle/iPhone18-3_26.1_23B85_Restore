@interface _UIPageSheetPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
@end

@implementation _UIPageSheetPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = _UISheetPresentationControllerStylesSheetsAsCards(v3);

  if (v4)
  {
    v14.receiver = self;
    v14.super_class = _UIPageSheetPresentationController;
    [(_UIFormSheetPresentationController *)&v14 frameOfPresentedViewInContainerView];
  }

  else
  {
    v9 = [(UIPresentationController *)self containerView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    if (v11 >= v13)
    {
      v7 = v13;
    }

    else
    {
      v7 = v11;
    }

    v5 = (v11 - v7) * 0.5;
    v8 = v13 + -20.0;
    v6 = 20.0;
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end