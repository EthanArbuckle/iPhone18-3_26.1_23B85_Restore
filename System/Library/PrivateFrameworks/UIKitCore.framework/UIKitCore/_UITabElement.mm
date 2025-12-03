@interface _UITabElement
+ (id)_searchElement;
- (UIViewController)_viewController;
- (_UITabElement)initWithIdentifier:(id)identifier title:(id)title image:(id)image;
- (void)_setViewController:(id)controller;
@end

@implementation _UITabElement

+ (id)_searchElement
{
  v2 = objc_alloc_init(_UITabSearchElement);

  return v2;
}

- (UIViewController)_viewController
{
  WeakRetained = objc_loadWeakRetained(&self->__viewController);

  return WeakRetained;
}

- (void)_setViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->__viewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__viewController, obj);
    _isBridgedItem = [(UITab *)self _isBridgedItem];
    v5 = obj;
    if (!_isBridgedItem)
    {
      [(UITab *)self _updateLinkedTabBarItem];
      v5 = obj;
    }
  }
}

- (_UITabElement)initWithIdentifier:(id)identifier title:(id)title image:(id)image
{
  v6.receiver = self;
  v6.super_class = _UITabElement;
  return [(UITab *)&v6 initWithTitle:title image:image identifier:identifier viewControllerProvider:0];
}

@end