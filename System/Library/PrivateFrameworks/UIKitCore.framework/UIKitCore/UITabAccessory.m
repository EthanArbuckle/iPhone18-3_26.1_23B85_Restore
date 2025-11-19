@interface UITabAccessory
- (UITabAccessory)initWithContentView:(id)a3;
- (void)_setEnvironment:(void *)a1;
- (void)_setTabBarController:(id *)a1;
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

  v7 = [(UITabAccessory *)self contentView];
  v6 = [(UIView *)v7 _internalTraitOverrides];
  [v6 setTabAccessoryEnvironment:v5];
}

- (UITabAccessory)initWithContentView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UITabAccessory;
  v6 = [(UITabAccessory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentView, a3);
    v7->_environment = 1;
    [(UITabAccessory *)v7 _updateContentViewTraits];
  }

  return v7;
}

- (void)_setEnvironment:(void *)a1
{
  if (a1)
  {
    if (*(a1 + 1) != a2)
    {
      *(a1 + 1) = a2;
      return [a1 _updateContentViewTraits];
    }
  }

  return a1;
}

- (void)_setTabBarController:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained(a1 + 2);

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak(a1 + 2, obj);
      [a1 _updateContentViewTraits];
      v3 = obj;
    }
  }
}

@end