@interface SBSUIStatusBarSceneHostComponent
- (SBSUIStatusBarSceneHostComponentDelegate)delegate;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 willUpdateSettings:(id)a4;
@end

@implementation SBSUIStatusBarSceneHostComponent

- (void)scene:(id)a3 willUpdateSettings:(id)a4
{
  v9 = [a4 mutableSettings];
  if ([v9 isUISubclass])
  {
    v5 = v9;
    v6 = [v5 displayConfiguration];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained statusBarForDisplayConfiguration:v6 statusBarSceneHostComponent:self];

    [v8 heightForOrientation:1];
    [v5 setDefaultStatusBarHeight:1 forOrientation:?];
    [v8 heightForOrientation:2];
    [v5 setDefaultStatusBarHeight:2 forOrientation:?];
    [v8 heightForOrientation:4];
    [v5 setDefaultStatusBarHeight:4 forOrientation:?];
    [v8 heightForOrientation:3];
    [v5 setDefaultStatusBarHeight:3 forOrientation:?];
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = [v6 previousSettings];
  v8 = [v6 transitionContext];

  v9 = [v7 clientSettings];

  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = v18;
    v15 = [v13 statusBarHidden];
    if (v15 != [v14 statusBarHidden])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v17 = [v8 animationSettings];
      [WeakRetained statusBarSceneHostComponent:self didChangePreferredStatusBarVisibilityWithAnimationSettings:v17];
    }
  }
}

- (SBSUIStatusBarSceneHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end