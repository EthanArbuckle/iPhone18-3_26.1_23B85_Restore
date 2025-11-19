@interface SBSUIIdleTimerSceneHostComponent
- (SBSUIIdleTimerSceneHostComponentDelegate)delegate;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation SBSUIIdleTimerSceneHostComponent

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v15 = [a4 previousSettings];
  v7 = [v6 clientSettings];

  v8 = objc_opt_class();
  v9 = v7;
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
    v12 = v15;
    v13 = [v11 idleTimerDisabled];
    if (v13 != [v12 idleTimerDisabled])
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