@interface UIScene(PosterKit)
- (PROverlaySceneObserverImpl)addEditorOverlaySceneObserver:()PosterKit;
- (id)pr_posterContentsLuminance;
- (id)pr_posterHostedContentSettings;
@end

@implementation UIScene(PosterKit)

- (id)pr_posterHostedContentSettings
{
  v1 = [a1 _FBSScene];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 settings];
    v4 = [v3 pr_posterHostedContentSettings];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pr_posterContentsLuminance
{
  v1 = [a1 _FBSScene];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 settings];
    v4 = [v3 pr_posterTitleStyleConfiguration];

    if (v4)
    {
      v5 = MEMORY[0x1E696AD98];
      [v4 contentsLuminance];
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
  v6 = [a1 _FBSScene];
  v7 = [(PROverlaySceneObserverImpl *)v5 initWithScene:v6 observer:v4];

  return v7;
}

@end