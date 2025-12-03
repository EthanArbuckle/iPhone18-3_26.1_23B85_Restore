@interface SBAccessoryWindowSceneLocalSceneClientComponent
- (SBAccessoryWindowSceneLocalSceneClientComponent)initWithScene:(id)scene;
- (id)associatedHostScene;
- (void)_associateWithHostSceneLocalComponentIfPossible;
- (void)setScene:(id)scene;
@end

@implementation SBAccessoryWindowSceneLocalSceneClientComponent

- (SBAccessoryWindowSceneLocalSceneClientComponent)initWithScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = SBAccessoryWindowSceneLocalSceneClientComponent;
  v3 = [(FBSSceneComponent *)&v6 initWithScene:scene];
  v4 = v3;
  if (v3)
  {
    [(SBAccessoryWindowSceneLocalSceneClientComponent *)v3 _associateWithHostSceneLocalComponentIfPossible];
  }

  return v4;
}

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = SBAccessoryWindowSceneLocalSceneClientComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  [(SBAccessoryWindowSceneLocalSceneClientComponent *)self _associateWithHostSceneLocalComponentIfPossible];
}

- (id)associatedHostScene
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  identityToken = [clientScene identityToken];

  v4 = +[SBWindowSceneAccessorySceneProvider sceneWorkspace];
  v5 = [v4 sceneWithIdentityToken:identityToken];

  return v5;
}

- (void)_associateWithHostSceneLocalComponentIfPossible
{
  associatedHostScene = [(SBAccessoryWindowSceneLocalSceneClientComponent *)self associatedHostScene];
  _localComponent = [associatedHostScene _localComponent];
  clientScene = [(FBSSceneComponent *)self clientScene];
  v5 = objc_opt_class();
  v6 = clientScene;
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

  [_localComponent setAssociatedClientScene:v8];
}

@end