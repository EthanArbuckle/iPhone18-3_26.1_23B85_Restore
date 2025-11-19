@interface UIViewController(SUScriptViewControllerAdditions)
- (uint64_t)copyScriptViewController;
@end

@implementation UIViewController(SUScriptViewControllerAdditions)

- (uint64_t)copyScriptViewController
{
  v2 = [a1 parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SUScriptNavigationController;
LABEL_8:
    v4 = objc_alloc_init(v3);
    [v4 setNativeViewController:a1];
    return v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = SUScriptMediaPickerController;
    goto LABEL_8;
  }

  if (!v2 || [a1 _remoteViewControllerProxy])
  {
    v3 = SUScriptViewController;
    goto LABEL_8;
  }

  return [v2 copyScriptViewController];
}

@end