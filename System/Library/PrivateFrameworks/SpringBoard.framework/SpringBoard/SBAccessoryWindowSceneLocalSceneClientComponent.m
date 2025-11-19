@interface SBAccessoryWindowSceneLocalSceneClientComponent
- (SBAccessoryWindowSceneLocalSceneClientComponent)initWithScene:(id)a3;
- (id)associatedHostScene;
- (void)_associateWithHostSceneLocalComponentIfPossible;
- (void)setScene:(id)a3;
@end

@implementation SBAccessoryWindowSceneLocalSceneClientComponent

- (SBAccessoryWindowSceneLocalSceneClientComponent)initWithScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBAccessoryWindowSceneLocalSceneClientComponent;
  v3 = [(FBSSceneComponent *)&v6 initWithScene:a3];
  v4 = v3;
  if (v3)
  {
    [(SBAccessoryWindowSceneLocalSceneClientComponent *)v3 _associateWithHostSceneLocalComponentIfPossible];
  }

  return v4;
}

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBAccessoryWindowSceneLocalSceneClientComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(SBAccessoryWindowSceneLocalSceneClientComponent *)self _associateWithHostSceneLocalComponentIfPossible];
}

- (id)associatedHostScene
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 identityToken];

  v4 = +[SBWindowSceneAccessorySceneProvider sceneWorkspace];
  v5 = [v4 sceneWithIdentityToken:v3];

  return v5;
}

- (void)_associateWithHostSceneLocalComponentIfPossible
{
  v9 = [(SBAccessoryWindowSceneLocalSceneClientComponent *)self associatedHostScene];
  v3 = [v9 _localComponent];
  v4 = [(FBSSceneComponent *)self clientScene];
  v5 = objc_opt_class();
  v6 = v4;
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

  [v3 setAssociatedClientScene:v8];
}

@end