@interface SBSecureRenderingClientComponent
- (void)_injectSecureRenderingSceneSettingToHostScene;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation SBSecureRenderingClientComponent

- (void)_injectSecureRenderingSceneSettingToHostScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  secureDisplayStateProvider = [WeakRetained secureDisplayStateProvider];
  isInSecureDisplayMode = [secureDisplayStateProvider isInSecureDisplayMode];

  v6 = objc_loadWeakRetained(&self->_hostScene);
  settings = [v6 settings];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(&location, WeakRetained);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__SBSecureRenderingClientComponent__injectSecureRenderingSceneSettingToHostScene__block_invoke;
    v9[3] = &unk_2783C1660;
    objc_copyWeak(&v10, &location);
    v11 = isInSecureDisplayMode;
    [v6 updateWhenMutable:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __81__SBSecureRenderingClientComponent__injectSecureRenderingSceneSettingToHostScene__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    v7 = [WeakRetained _synchronizedDrawingFence];
  }

  else
  {
    v7 = 0;
  }

  [v8 setAnimationFence:v7];
  [v5 setSecureRenderingEnabled:BSSettingFlagForBool()];
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v14.receiver = self;
  v14.super_class = SBSecureRenderingClientComponent;
  [(FBSSceneComponent *)&v14 setScene:sceneCopy];
  v5 = objc_opt_class();
  v6 = sceneCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  settings = [v8 settings];

  transientLocalSettings = [settings transientLocalSettings];
  v11 = [transientLocalSettings objectForSetting:732775916];

  fbScene = [v11 fbScene];
  objc_storeWeak(&self->_hostScene, fbScene);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__willEnableSecureDisplay_ name:*MEMORY[0x277D66028] object:0];
  [defaultCenter addObserver:self selector:sel__didDisableSecureDisplay_ name:*MEMORY[0x277D66020] object:0];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  if (!WeakRetained)
  {
    v7 = [MEMORY[0x277D75DA8] _sceneForFBSScene:sceneCopy];
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

    objc_storeWeak(&self->_sbWindowScene, v11);
    [(SBSecureRenderingClientComponent *)self _injectSecureRenderingSceneSettingToHostScene];
  }

  MEMORY[0x2821F9730](v6);
}

@end