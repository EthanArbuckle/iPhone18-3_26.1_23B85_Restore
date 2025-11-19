@interface PROverlaySceneObserverImpl
- (PROverlaySceneObserverImpl)initWithScene:(id)a3 observer:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation PROverlaySceneObserverImpl

- (PROverlaySceneObserverImpl)initWithScene:(id)a3 observer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PROverlaySceneObserverImpl;
  v9 = [(PROverlaySceneObserverImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scene, a3);
    objc_storeStrong(&v10->_observer, a4);
    [(FBSScene *)v10->_scene addObserver:v10];
  }

  return v10;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = [v6 settingsDiff];
  v8 = [v6 settings];

  v9 = [MEMORY[0x1E69DCE70] _sceneForFBSScene:v7];

  if ([v16 pr_posterHostedContentSettingsDidChange] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    observer = self->_observer;
    v11 = [v8 pr_posterHostedContentSettings];
    [(PROverlaySceneObserving *)observer scene:v9 didUpdatePosterHostedContentSettingsTo:v11];
  }

  if ([v16 pr_posterTitleStyleConfigurationDidChange] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = [v8 pr_posterTitleStyleConfiguration];
    v13 = v12;
    if (v12)
    {
      v14 = MEMORY[0x1E696AD98];
      [v12 contentsLuminance];
      v15 = [v14 numberWithDouble:?];
    }

    else
    {
      v15 = 0;
    }

    [(PROverlaySceneObserving *)self->_observer scene:v9 didUpdatePosterContentsLuminanceTo:v15];
  }
}

@end