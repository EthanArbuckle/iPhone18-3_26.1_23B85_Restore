@interface _UITabElement
+ (id)_searchElement;
- (UIViewController)_viewController;
- (_UITabElement)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5;
- (void)_setViewController:(id)a3;
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

- (void)_setViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__viewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->__viewController, obj);
    v6 = [(UITab *)self _isBridgedItem];
    v5 = obj;
    if (!v6)
    {
      [(UITab *)self _updateLinkedTabBarItem];
      v5 = obj;
    }
  }
}

- (_UITabElement)initWithIdentifier:(id)a3 title:(id)a4 image:(id)a5
{
  v6.receiver = self;
  v6.super_class = _UITabElement;
  return [(UITab *)&v6 initWithTitle:a4 image:a5 identifier:a3 viewControllerProvider:0];
}

@end