@interface UIStickerPresentationController
- (BOOL)_shouldRestoreFirstResponder;
- (CGRect)frameOfPresentedViewInContainerView;
@end

@implementation UIStickerPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = [(UIPresentationController *)self containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_shouldRestoreFirstResponder
{
  v2 = self;
  v3 = [(UIPresentationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIPresentationController *)v2 presentedViewController];
    LODWORD(v2) = [v5 keyWindowChangedDuringInsert] ^ 1;
  }

  else
  {
    v6 = _stickersLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected presented controller", buf, 2u);
    }

    v8.receiver = v2;
    v8.super_class = UIStickerPresentationController;
    LOBYTE(v2) = [(UIPresentationController *)&v8 _shouldRestoreFirstResponder];
  }

  return v2;
}

@end