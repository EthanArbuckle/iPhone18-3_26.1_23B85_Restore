@interface SBApplicationSceneHandleRequest
+ (id)defaultRequestForApplication:(id)application sceneIdentity:(id)identity displayIdentity:(id)displayIdentity;
+ (id)defaultSceneSpecificationForDisplayIdentity:(id)identity;
- (SBApplicationSceneHandleRequest)initWithApplication:(id)application sceneDefinition:(id)definition displayIdentity:(id)identity;
@end

@implementation SBApplicationSceneHandleRequest

+ (id)defaultSceneSpecificationForDisplayIdentity:(id)identity
{
  v15 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  expectsSecureRendering = [identityCopy expectsSecureRendering];
  sb_displayWindowingMode = [identityCopy sb_displayWindowingMode];
  if (expectsSecureRendering)
  {
    v6 = 0x277D75138;
    goto LABEL_10;
  }

  if (sb_displayWindowingMode != 1)
  {
    if (sb_displayWindowingMode == 2)
    {
      v6 = 0x277D75140;
      goto LABEL_10;
    }

    v7 = SBLogWorkspace();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = _SBFLoggingMethodProem();
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = identityCopy;
      _os_log_error_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] asked for a display we don't really know about. falling back to default spec: %{public}@", &v11, 0x16u);
    }
  }

  v6 = 0x277D75180;
LABEL_10:
  specification = [*v6 specification];

  return specification;
}

+ (id)defaultRequestForApplication:(id)application sceneIdentity:(id)identity displayIdentity:(id)displayIdentity
{
  applicationCopy = application;
  identityCopy = identity;
  displayIdentityCopy = displayIdentity;
  v11 = [self defaultSceneSpecificationForDisplayIdentity:displayIdentityCopy];
  _dataStore = [applicationCopy _dataStore];
  identifier = [identityCopy identifier];
  v14 = [_dataStore sceneStoreForIdentifier:identifier creatingIfNecessary:0];

  if (v14)
  {
    v15 = [v14 objectForKey:@"sceneSessionRole"];
    v16 = v15;
    if (v15 && [v15 isEqualToString:*MEMORY[0x277D76E60]])
    {
      specification = [MEMORY[0x277D75908] specification];

      v11 = specification;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v18 setIdentity:identityCopy];
  v19 = MEMORY[0x277D0ADA8];
  info = [applicationCopy info];
  processIdentity = [info processIdentity];
  v22 = [v19 identityForProcessIdentity:processIdentity];
  [v18 setClientIdentity:v22];

  [v18 setSpecification:v11];
  v23 = [[self alloc] initWithApplication:applicationCopy sceneDefinition:v18 displayIdentity:displayIdentityCopy];

  return v23;
}

- (SBApplicationSceneHandleRequest)initWithApplication:(id)application sceneDefinition:(id)definition displayIdentity:(id)identity
{
  applicationCopy = application;
  definitionCopy = definition;
  identityCopy = identity;
  v19.receiver = self;
  v19.super_class = SBApplicationSceneHandleRequest;
  v12 = [(SBApplicationSceneHandleRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, application);
    v14 = [definitionCopy copy];
    sceneDefinition = v13->_sceneDefinition;
    v13->_sceneDefinition = v14;

    v16 = [identityCopy copy];
    displayIdentity = v13->_displayIdentity;
    v13->_displayIdentity = v16;
  }

  return v13;
}

@end