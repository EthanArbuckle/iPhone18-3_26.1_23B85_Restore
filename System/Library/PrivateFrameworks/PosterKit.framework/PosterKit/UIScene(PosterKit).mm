@interface UIScene(PosterKit)
- (PROverlaySceneObserverImpl)addEditorOverlaySceneObserver:()PosterKit;
- (id)pr_posterContentsLuminance;
- (id)pr_posterHostedContentSettings;
@end

@implementation UIScene(PosterKit)

- (id)pr_posterHostedContentSettings
{
  _FBSScene = [self _FBSScene];
  v2 = _FBSScene;
  if (_FBSScene)
  {
    settings = [_FBSScene settings];
    pr_posterHostedContentSettings = [settings pr_posterHostedContentSettings];
  }

  else
  {
    pr_posterHostedContentSettings = 0;
  }

  return pr_posterHostedContentSettings;
}

- (id)pr_posterContentsLuminance
{
  _FBSScene = [self _FBSScene];
  v2 = _FBSScene;
  if (_FBSScene)
  {
    settings = [_FBSScene settings];
    pr_posterTitleStyleConfiguration = [settings pr_posterTitleStyleConfiguration];

    if (pr_posterTitleStyleConfiguration)
    {
      v5 = MEMORY[0x1E696AD98];
      [pr_posterTitleStyleConfiguration contentsLuminance];
      v6 = [v5 numberWithDouble:?];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PROverlaySceneObserverImpl)addEditorOverlaySceneObserver:()PosterKit
{
  v4 = a3;
  v5 = [PROverlaySceneObserverImpl alloc];
  _FBSScene = [self _FBSScene];
  v7 = [(PROverlaySceneObserverImpl *)v5 initWithScene:_FBSScene observer:v4];

  return v7;
}

@end