@interface UIViewController(PUToolbarViewModel)
- (PUToolbarViewModel)pu_toolbarViewModel;
@end

@implementation UIViewController(PUToolbarViewModel)

- (PUToolbarViewModel)pu_toolbarViewModel
{
  v2 = objc_getAssociatedObject(self, "com.apple.photosui.toolbarViewModel");
  if (!v2)
  {
    v2 = objc_alloc_init(PUToolbarViewModel);
    [(PUToolbarViewModel *)v2 _setViewController:self];
    objc_setAssociatedObject(self, "com.apple.photosui.toolbarViewModel", v2, 1);
  }

  return v2;
}

@end