@interface PROverlaySceneObserverImpl
- (PROverlaySceneObserverImpl)initWithScene:(id)scene observer:(id)observer;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation PROverlaySceneObserverImpl

- (PROverlaySceneObserverImpl)initWithScene:(id)scene observer:(id)observer
{
  sceneCopy = scene;
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = PROverlaySceneObserverImpl;
  v9 = [(PROverlaySceneObserverImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scene, scene);
    objc_storeStrong(&v10->_observer, observer);
    [(FBSScene *)v10->_scene addObserver:v10];
  }

  return v10;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  settingsDiff = [settingsCopy settingsDiff];
  settings = [settingsCopy settings];

  v9 = [MEMORY[0x1E69DCE70] _sceneForFBSScene:sceneCopy];

  if ([settingsDiff pr_posterHostedContentSettingsDidChange] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    observer = self->_observer;
    pr_posterHostedContentSettings = [settings pr_posterHostedContentSettings];
    [(PROverlaySceneObserving *)observer scene:v9 didUpdatePosterHostedContentSettingsTo:pr_posterHostedContentSettings];
  }

  if ([settingsDiff pr_posterTitleStyleConfigurationDidChange] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    pr_posterTitleStyleConfiguration = [settings pr_posterTitleStyleConfiguration];
    v13 = pr_posterTitleStyleConfiguration;
    if (pr_posterTitleStyleConfiguration)
    {
      v14 = MEMORY[0x1E696AD98];
      [pr_posterTitleStyleConfiguration contentsLuminance];
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