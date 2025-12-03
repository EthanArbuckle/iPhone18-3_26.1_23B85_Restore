@interface _UISceneHostingControllerAdvancedConfiguration
- (_UISceneHostingControllerAdvancedConfiguration)initWithClientIdentity:(id)identity;
- (_UISceneHostingControllerAdvancedConfiguration)initWithProcessIdentity:(id)identity;
- (id)sceneHostingSpecification;
- (void)setSceneIdentifier:(id)identifier;
- (void)setSceneSpecification:(id)specification;
- (void)setSceneWorkspace:(id)workspace;
@end

@implementation _UISceneHostingControllerAdvancedConfiguration

- (_UISceneHostingControllerAdvancedConfiguration)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = _UISceneHostingControllerAdvancedConfiguration;
  v6 = [(_UISceneHostingControllerAdvancedConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, identity);
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneSpecification:0];
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneWorkspace:0];
    [(_UISceneHostingControllerAdvancedConfiguration *)v7 setSceneIdentifier:0];
  }

  return v7;
}

- (_UISceneHostingControllerAdvancedConfiguration)initWithProcessIdentity:(id)identity
{
  v4 = [MEMORY[0x1E699FBD8] identityForProcessIdentity:identity];
  v5 = [(_UISceneHostingControllerAdvancedConfiguration *)self initWithClientIdentity:v4];

  return v5;
}

- (void)setSceneSpecification:(id)specification
{
  specificationCopy = specification;
  v7 = specificationCopy;
  if (specificationCopy)
  {
    v5 = specificationCopy;
  }

  else
  {
    v5 = +[(FBSSceneSpecification *)_UISceneHostingSceneSpecification];
  }

  sceneSpecification = self->_sceneSpecification;
  self->_sceneSpecification = v5;
}

- (void)setSceneWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v9 = workspaceCopy;
  if (workspaceCopy)
  {
    v5 = workspaceCopy;
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

- (void)setSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = identifierCopy;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    sceneIdentifier = self->_sceneIdentifier;
    self->_sceneIdentifier = v5;
  }

  else
  {
    sceneIdentifier = [(FBSSceneClientIdentity *)self->_clientIdentity processIdentity];
    embeddedApplicationIdentifier = [sceneIdentifier embeddedApplicationIdentifier];
    if (embeddedApplicationIdentifier || ([sceneIdentifier xpcServiceIdentifier], (embeddedApplicationIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uUID2 = embeddedApplicationIdentifier;
      v9 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [v9 stringWithFormat:@"UIHostedScene-%@-%@", uUID2, uUIDString];
      v13 = self->_sceneIdentifier;
      self->_sceneIdentifier = v12;
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      uUID = [uUID2 UUIDString];
      v15 = [v14 stringWithFormat:@"UIHostedScene-%@", uUID];
      uUIDString = self->_sceneIdentifier;
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