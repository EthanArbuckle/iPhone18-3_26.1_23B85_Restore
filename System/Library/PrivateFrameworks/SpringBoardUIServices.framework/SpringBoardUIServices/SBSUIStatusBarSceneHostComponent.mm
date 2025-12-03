@interface SBSUIStatusBarSceneHostComponent
- (SBSUIStatusBarSceneHostComponentDelegate)delegate;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene willUpdateSettings:(id)settings;
@end

@implementation SBSUIStatusBarSceneHostComponent

- (void)scene:(id)scene willUpdateSettings:(id)settings
{
  mutableSettings = [settings mutableSettings];
  if ([mutableSettings isUISubclass])
  {
    v5 = mutableSettings;
    displayConfiguration = [v5 displayConfiguration];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained statusBarForDisplayConfiguration:displayConfiguration statusBarSceneHostComponent:self];

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

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  clientSettings = [sceneCopy clientSettings];

  v10 = objc_opt_class();
  v11 = clientSettings;
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
    v14 = previousSettings;
    statusBarHidden = [v13 statusBarHidden];
    if (statusBarHidden != [v14 statusBarHidden])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      animationSettings = [transitionContext animationSettings];
      [WeakRetained statusBarSceneHostComponent:self didChangePreferredStatusBarVisibilityWithAnimationSettings:animationSettings];
    }
  }
}

- (SBSUIStatusBarSceneHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end