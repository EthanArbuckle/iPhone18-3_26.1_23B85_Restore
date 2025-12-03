@interface SBSUIIdleTimerSceneHostComponent
- (SBSUIIdleTimerSceneHostComponentDelegate)delegate;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBSUIIdleTimerSceneHostComponent

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  previousSettings = [settings previousSettings];
  clientSettings = [sceneCopy clientSettings];

  v8 = objc_opt_class();
  v9 = clientSettings;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = previousSettings;
    idleTimerDisabled = [v11 idleTimerDisabled];
    if (idleTimerDisabled != [v12 idleTimerDisabled])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained idleTimerSceneHostComponentDidChangeShouldDisableIdleTimer:self];
    }
  }
}

- (SBSUIIdleTimerSceneHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end