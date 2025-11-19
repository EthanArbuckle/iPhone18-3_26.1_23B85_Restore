@interface SBApplicationSceneHandleRequest
+ (id)defaultRequestForApplication:(id)a3 sceneIdentity:(id)a4 displayIdentity:(id)a5;
+ (id)defaultSceneSpecificationForDisplayIdentity:(id)a3;
- (SBApplicationSceneHandleRequest)initWithApplication:(id)a3 sceneDefinition:(id)a4 displayIdentity:(id)a5;
@end

@implementation SBApplicationSceneHandleRequest

+ (id)defaultSceneSpecificationForDisplayIdentity:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 expectsSecureRendering];
  v5 = [v3 sb_displayWindowingMode];
  if (v4)
  {
    v6 = 0x277D75138;
    goto LABEL_10;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
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
      v14 = v3;
      _os_log_error_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] asked for a display we don't really know about. falling back to default spec: %{public}@", &v11, 0x16u);
    }
  }

  v6 = 0x277D75180;
LABEL_10:
  v8 = [*v6 specification];

  return v8;
}

+ (id)defaultRequestForApplication:(id)a3 sceneIdentity:(id)a4 displayIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 defaultSceneSpecificationForDisplayIdentity:v10];
  v12 = [v8 _dataStore];
  v13 = [v9 identifier];
  v14 = [v12 sceneStoreForIdentifier:v13 creatingIfNecessary:0];

  if (v14)
  {
    v15 = [v14 objectForKey:@"sceneSessionRole"];
    v16 = v15;
    if (v15 && [v15 isEqualToString:*MEMORY[0x277D76E60]])
    {
      v17 = [MEMORY[0x277D75908] specification];

      v11 = v17;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v18 setIdentity:v9];
  v19 = MEMORY[0x277D0ADA8];
  v20 = [v8 info];
  v21 = [v20 processIdentity];
  v22 = [v19 identityForProcessIdentity:v21];
  [v18 setClientIdentity:v22];

  [v18 setSpecification:v11];
  v23 = [[a1 alloc] initWithApplication:v8 sceneDefinition:v18 displayIdentity:v10];

  return v23;
}

- (SBApplicationSceneHandleRequest)initWithApplication:(id)a3 sceneDefinition:(id)a4 displayIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = SBApplicationSceneHandleRequest;
  v12 = [(SBApplicationSceneHandleRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, a3);
    v14 = [v10 copy];
    sceneDefinition = v13->_sceneDefinition;
    v13->_sceneDefinition = v14;

    v16 = [v11 copy];
    displayIdentity = v13->_displayIdentity;
    v13->_displayIdentity = v16;
  }

  return v13;
}

@end