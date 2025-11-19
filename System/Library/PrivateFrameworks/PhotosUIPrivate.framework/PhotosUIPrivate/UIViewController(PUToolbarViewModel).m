@interface UIViewController(PUToolbarViewModel)
- (PUToolbarViewModel)pu_toolbarViewModel;
@end

@implementation UIViewController(PUToolbarViewModel)

- (PUToolbarViewModel)pu_toolbarViewModel
{
  v2 = objc_getAssociatedObject(a1, "com.apple.photosui.toolbarViewModel");
  if (!v2)
  {
    v2 = objc_alloc_init(PUToolbarViewModel);
    [(PUToolbarViewModel *)v2 _setViewController:a1];
    objc_setAssociatedObject(a1, "com.apple.photosui.toolbarViewModel", v2, 1);
  }

  return v2;
}

@end