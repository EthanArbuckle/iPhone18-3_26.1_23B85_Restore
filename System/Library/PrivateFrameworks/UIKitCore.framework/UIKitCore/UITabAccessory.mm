@interface UITabAccessory
- (UITabAccessory)initWithContentView:(id)view;
- (void)_setEnvironment:(void *)environment;
- (void)_setTabBarController:(id *)controller;
- (void)_updateContentViewTraits;
@end

@implementation UITabAccessory

- (void)_updateContentViewTraits
{
  environment = self->_environment;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);

  if (WeakRetained)
  {
    v5 = environment;
  }

  else
  {
    v5 = 1;
  }

  contentView = [(UITabAccessory *)self contentView];
  _internalTraitOverrides = [(UIView *)contentView _internalTraitOverrides];
  [_internalTraitOverrides setTabAccessoryEnvironment:v5];
}

- (UITabAccessory)initWithContentView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = UITabAccessory;
  v6 = [(UITabAccessory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, view);
    v7->_environment = 1;
    [(UITabAccessory *)v7 _updateContentViewTraits];
  }

  return v7;
}

- (void)_setEnvironment:(void *)environment
{
  if (environment)
  {
    if (*(environment + 1) != a2)
    {
      *(environment + 1) = a2;
      return [environment _updateContentViewTraits];
    }
  }

  return environment;
}

- (void)_setTabBarController:(id *)controller
{
  v3 = a2;
  if (controller)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained(controller + 2);

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak(controller + 2, obj);
      [controller _updateContentViewTraits];
      v3 = obj;
    }
  }
}

@end