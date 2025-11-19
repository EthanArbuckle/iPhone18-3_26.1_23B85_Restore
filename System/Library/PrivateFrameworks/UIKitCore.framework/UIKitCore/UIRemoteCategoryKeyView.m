@interface UIRemoteCategoryKeyView
- (id)contentViewController;
- (id)emojiKeyManager;
@end

@implementation UIRemoteCategoryKeyView

- (id)contentViewController
{
  viewController = self->_viewController;
  if (!viewController)
  {
    gotLoadHelper_x8__OBJC_CLASS___STKCategoryViewController(v2);
    v6 = objc_alloc_init(*(v5 + 2536));
    v7 = self->_viewController;
    self->_viewController = v6;

    viewController = self->_viewController;
  }

  return viewController;
}

- (id)emojiKeyManager
{
  WeakRetained = objc_loadWeakRetained(&self->_emojiKeyManager);

  return WeakRetained;
}

@end