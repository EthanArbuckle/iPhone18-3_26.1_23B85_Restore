@interface UIViewController(SUScriptViewControllerAdditions)
- (uint64_t)copyScriptViewController;
@end

@implementation UIViewController(SUScriptViewControllerAdditions)

- (uint64_t)copyScriptViewController
{
  parentViewController = [self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SUScriptNavigationController;
LABEL_8:
    v4 = objc_alloc_init(v3);
    [v4 setNativeViewController:self];
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SUScriptMediaPickerController;
    goto LABEL_8;
  }

  if (!parentViewController || [self _remoteViewControllerProxy])
  {
    v3 = SUScriptViewController;
    goto LABEL_8;
  }

  return [parentViewController copyScriptViewController];
}

@end