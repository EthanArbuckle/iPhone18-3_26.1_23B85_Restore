@interface SBSceneIdentityProvider
- (SBSceneIdentityProvider)initWithDisplayIdentity:(id)identity;
- (id)newSceneIdentityForApplication:(id)application;
- (id)sceneIdentityForApplication:(id)application;
- (id)sceneIdentityForApplication:(id)application createPrimaryIfRequired:(BOOL)required sceneSessionRole:(id)role;
- (id)sceneIdentityForApplication:(id)application excludingIdentifiers:(id)identifiers;
- (id)sceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier;
- (id)sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier;
@end

@implementation SBSceneIdentityProvider

- (SBSceneIdentityProvider)initWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = SBSceneIdentityProvider;
  v6 = [(SBSceneIdentityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, identity);
  }

  return v7;
}

- (id)newSceneIdentityForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v6 = [(SBSceneIdentityProvider *)self _sceneIdentifierForBundleIdentifier:bundleIdentifier];

  v7 = [(SBSceneIdentityProvider *)self sceneIdentityForApplication:applicationCopy uniqueIdentifier:v6];

  return v7;
}

- (id)sceneIdentityForApplication:(id)application
{
  v3 = [(SBSceneIdentityProvider *)self newSceneIdentityForApplication:application];

  return v3;
}

- (id)sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v8 = identifierCopy;
  }

  else
  {
    bundleIdentifier = [application bundleIdentifier];
    v8 = [(SBSceneIdentityProvider *)self _sceneIdentifierForBundleIdentifier:bundleIdentifier];
  }

  v10 = [MEMORY[0x277D0ADC0] identityForIdentifier:v8];

  return v10;
}

- (id)sceneIdentityForApplication:(id)application targetContentIdentifier:(id)identifier
{
  identifier = [(SBSceneIdentityProvider *)self newSceneIdentityForApplication:application, identifier];

  return identifier;
}

- (id)sceneIdentityForApplication:(id)application excludingIdentifiers:(id)identifiers
{
  identifiers = [(SBSceneIdentityProvider *)self newSceneIdentityForApplication:application, identifiers];

  return identifiers;
}

- (id)sceneIdentityForApplication:(id)application createPrimaryIfRequired:(BOOL)required sceneSessionRole:(id)role
{
  requiredCopy = required;
  applicationCopy = application;
  v8 = [(SBSceneIdentityProvider *)self sceneIdentityForApplication:applicationCopy];
  if (!v8 && requiredCopy)
  {
    v8 = [(SBSceneIdentityProvider *)self newSceneIdentityForApplication:applicationCopy];
  }

  return v8;
}

@end