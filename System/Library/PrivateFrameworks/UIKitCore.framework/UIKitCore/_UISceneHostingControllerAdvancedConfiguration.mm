@interface _UISceneHostingControllerAdvancedConfiguration
- (_UISceneHostingControllerAdvancedConfiguration)initWithClientIdentity:(id)a3;
- (_UISceneHostingControllerAdvancedConfiguration)initWithProcessIdentity:(id)a3;
- (id)sceneHostingSpecification;
- (void)setSceneIdentifier:(id)a3;
- (void)setSceneSpecification:(id)a3;
- (void)setSceneWorkspace:(id)a3;
@end

@implementation _UISceneHostingControllerAdvancedConfiguration

- (_UISceneHostingControllerAdvancedConfiguration)initWithClientIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UISceneHostingControllerAdvancedConfiguration;
  v6 = [(_UISceneHostingControllerAdvancedConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, a3);
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneSpecification:0];
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneWorkspace:0];
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneIdentifier:0];
  }

  return v7;
}

- (_UISceneHostingControllerAdvancedConfiguration)initWithProcessIdentity:(id)a3
{
  v4 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:a3];
  v5 = [(_UISceneHostingControllerAdvancedConfiguration *)self initWithClientIdentity:v4];

  return v5;
}

- (void)setSceneSpecification:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[(FBSSceneSpecification *)_UISceneHostingSceneSpecification];
  }

  sceneSpecification = self->_sceneSpecification;
  self->_sceneSpecification = v5;
}

- (void)setSceneWorkspace:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
    sceneWorkspace = self->_sceneWorkspace;
    self->_sceneWorkspace = v5;
  }

  else
  {
    v7 = +[_UISceneHostingWorkspaceController sharedInstance];
    sceneWorkspace = v7;
    if (v7)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_sceneWorkspace, v8);
  }
}

- (void)setSceneIdentifier:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (v4)
  {
    v5 = v4;
    sceneIdentifier = self->_sceneIdentifier;
    self->_sceneIdentifier = v5;
  }

  else
  {
    sceneIdentifier = [(FBSSceneClientIdentity *)self->_clientIdentity processIdentity];
    v7 = [sceneIdentifier embeddedApplicationIdentifier];
    if (v7 || ([sceneIdentifier xpcServiceIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = MEMORY[0x1E696AEC0];
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      v12 = [v9 stringWithFormat:@"UIHostedScene-%@-%@", v8, v11];
      v13 = self->_sceneIdentifier;
      self->_sceneIdentifier = v12;
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v10 = [v8 UUIDString];
      v15 = [v14 stringWithFormat:@"UIHostedScene-%@", v10];
      v11 = self->_sceneIdentifier;
      self->_sceneIdentifier = v15;
    }
  }
}

- (id)sceneHostingSpecification
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_sceneSpecification;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end