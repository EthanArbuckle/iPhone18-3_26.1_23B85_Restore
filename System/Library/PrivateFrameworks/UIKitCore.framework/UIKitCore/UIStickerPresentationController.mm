@interface UIStickerPresentationController
- (BOOL)_shouldRestoreFirstResponder;
- (CGRect)frameOfPresentedViewInContainerView;
@end

@implementation UIStickerPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
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
  selfCopy = self;
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentedViewController2 = [(UIPresentationController *)selfCopy presentedViewController];
    LODWORD(selfCopy) = [presentedViewController2 keyWindowChangedDuringInsert] ^ 1;
  }

  else
  {
    v6 = _stickersLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unexpected presented controller", buf, 2u);
    }

    v8.receiver = selfCopy;
    v8.super_class = UIStickerPresentationController;
    LOBYTE(selfCopy) = [(UIPresentationController *)&v8 _shouldRestoreFirstResponder];
  }

  return selfCopy;
}

@end