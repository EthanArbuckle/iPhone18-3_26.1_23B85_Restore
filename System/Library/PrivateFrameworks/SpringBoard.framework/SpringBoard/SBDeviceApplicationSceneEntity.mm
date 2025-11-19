@interface SBDeviceApplicationSceneEntity
+ (SBDeviceApplicationSceneEntity)entityWithApplication:(id)a3 scenePersistenceIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6;
+ (SBDeviceApplicationSceneEntity)entityWithApplicationForMainDisplay:(id)a3 withScenePersistenceIdentifier:(id)a4;
+ (id)defaultEntityWithApplication:(id)a3 targetContentIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6;
+ (id)defaultEntityWithApplicationForMainDisplay:(id)a3;
+ (id)defaultEntityWithApplicationForMainDisplay:(id)a3 targetContentIdentifier:(id)a4;
+ (id)newEntityWithApplication:(id)a3 sceneHandleProvider:(id)a4 displayIdentity:(id)a5;
+ (id)newEntityWithApplicationForMainDisplay:(id)a3;
- (BOOL)supportsPresentationAtAnySize;
- (BOOL)supportsSplitView;
- (BOOL)wantsExclusiveForeground;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 generatingNewPrimarySceneIfRequired:(BOOL)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 generatingNewSceneIfRequiredWithSpecification:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 uniqueIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 uniqueIdentifier:(id)a4 targetContentIdentifier:(id)a5 sceneHandleProvider:(id)a6 displayIdentity:(id)a7;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 generatingNewPrimarySceneIfRequired:(BOOL)a4;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 generatingNewSceneIfRequiredWithSpecification:(id)a4;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 targetContentIdentifier:(id)a4;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 uniqueIdentifier:(id)a4;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainSecureDisplay:(id)a3;
- (SBDeviceApplicationSceneEntity)initWithApplicationSceneHandle:(id)a3;
- (id)supportedLayoutRoles;
@end

@implementation SBDeviceApplicationSceneEntity

- (BOOL)supportsSplitView
{
  v3 = [(SBApplicationSceneEntity *)self sceneHandle];
  v4 = [v3 _windowScene];
  v5 = [v4 switcherController];

  v6 = [(SBApplicationSceneEntity *)self application];
  v7 = [v5 windowManagementContext];
  v8 = [v5 displayIdentity];
  v9 = [v6 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v7 displayIdentity:v8];

  return v9;
}

- (id)supportedLayoutRoles
{
  if ([(SBDeviceApplicationSceneEntity *)self supportsPresentationAtAnySize])
  {
    v3 = SBLayoutRoleSetAppAndFloatingLayout();
  }

  else if ([(SBDeviceApplicationSceneEntity *)self supportsSplitView])
  {
    v3 = SBLayoutRoleSetForRole2(1, 2);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBDeviceApplicationSceneEntity;
    v3 = [(SBApplicationSceneEntity *)&v5 supportedLayoutRoles];
  }

  return v3;
}

- (BOOL)supportsPresentationAtAnySize
{
  v2 = [(SBApplicationSceneEntity *)self application];
  v3 = [v2 isMedusaCapable];

  return v3;
}

- (BOOL)wantsExclusiveForeground
{
  v2 = [(SBApplicationSceneEntity *)self application];
  v3 = [v2 info];
  v4 = [v3 wantsExclusiveForeground];

  return v4;
}

+ (id)defaultEntityWithApplication:(id)a3 targetContentIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithApplication:v13 targetContentIdentifier:v12 sceneHandleProvider:v11 displayIdentity:v10];

  return v14;
}

+ (SBDeviceApplicationSceneEntity)entityWithApplication:(id)a3 scenePersistenceIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4)
  {
    v13 = a4;
    v14 = objc_opt_class();
    v15 = v11;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 existingSceneHandleForPersistenceIdentifier:v13];

    a4 = [v18 sceneIdentifier];
  }

  v19 = [[a1 alloc] initWithApplication:v10 uniqueIdentifier:a4 sceneHandleProvider:v11 displayIdentity:v12];

  return v19;
}

+ (id)newEntityWithApplication:(id)a3 sceneHandleProvider:(id)a4 displayIdentity:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 newSceneIdentityForApplication:v10];
  v12 = [a1 alloc];
  v13 = [v11 identifier];
  v14 = [v12 initWithApplication:v10 uniqueIdentifier:v13 targetContentIdentifier:0 sceneHandleProvider:v9 displayIdentity:v8];

  return v14;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 generatingNewPrimarySceneIfRequired:(BOOL)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [SBApplicationSceneHandleRequest defaultSceneSpecificationForDisplayIdentity:v10];
  v14 = [v13 uiSceneSessionRole];
  v15 = [v11 sceneIdentityForApplication:v12 createPrimaryIfRequired:v7 sceneSessionRole:v14];

  v16 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v16 setIdentity:v15];
  v17 = MEMORY[0x277D0ADA8];
  v18 = [v12 info];
  v19 = [v18 processIdentity];
  v20 = [v17 identityForProcessIdentity:v19];
  [v16 setClientIdentity:v20];

  [v16 setSpecification:v13];
  v21 = [[SBApplicationSceneHandleRequest alloc] initWithApplication:v12 sceneDefinition:v16 displayIdentity:v10];

  v22 = [v11 fetchOrCreateApplicationSceneHandleForRequest:v21];

  v23 = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v22];
  return v23;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 generatingNewSceneIfRequiredWithSpecification:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 uiSceneSessionRole];
  v15 = [v11 sceneIdentityForApplication:v13 createPrimaryIfRequired:1 sceneSessionRole:v14];

  v16 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v16 setIdentity:v15];
  v17 = MEMORY[0x277D0ADA8];
  v18 = [v13 info];
  v19 = [v18 processIdentity];
  v20 = [v17 identityForProcessIdentity:v19];
  [v16 setClientIdentity:v20];

  [v16 setSpecification:v12];
  v21 = [[SBApplicationSceneHandleRequest alloc] initWithApplication:v13 sceneDefinition:v16 displayIdentity:v10];

  v22 = [v11 fetchOrCreateApplicationSceneHandleForRequest:v21];

  v23 = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v22];
  return v23;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 uniqueIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayIdentity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 info];
  v15 = [v14 supportsMultiwindow];

  if ((v15 & 1) == 0)
  {

    v11 = 0;
  }

  v16 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v10 uniqueIdentifier:v11 targetContentIdentifier:0 sceneHandleProvider:v12 displayIdentity:v13];

  return v16;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)a3 uniqueIdentifier:(id)a4 targetContentIdentifier:(id)a5 sceneHandleProvider:(id)a6 displayIdentity:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (!v16)
    {
      [SBDeviceApplicationSceneEntity initWithApplication:a2 uniqueIdentifier:self targetContentIdentifier:? sceneHandleProvider:? displayIdentity:?];
    }

    v18 = [v13 info];
    if ([v18 supportsMultiwindow])
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v16 sceneIdentityForApplication:v13 uniqueIdentifier:v20 targetContentIdentifier:v15];
    v22 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v13 sceneIdentity:v21 displayIdentity:v17];

    v23 = [v16 fetchOrCreateApplicationSceneHandleForRequest:v22];
    self = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v23];

    v14 = v20;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationSceneHandle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBDeviceApplicationSceneEntity *)v5 initWithApplicationSceneHandle:a2, self];
    }

    self = [(SBApplicationSceneEntity *)self _initWithSceneHandle:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)defaultEntityWithApplicationForMainDisplay:(id)a3
{
  v4 = a3;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v6 = [v5 displayIdentity];
  v7 = [a1 defaultEntityWithApplication:v4 sceneHandleProvider:v5 displayIdentity:v6];

  return v7;
}

+ (id)defaultEntityWithApplicationForMainDisplay:(id)a3 targetContentIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v9 = [v8 displayIdentity];
  v10 = [a1 defaultEntityWithApplication:v7 targetContentIdentifier:v6 sceneHandleProvider:v8 displayIdentity:v9];

  return v10;
}

+ (SBDeviceApplicationSceneEntity)entityWithApplicationForMainDisplay:(id)a3 withScenePersistenceIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v9 = [v8 displayIdentity];
  v10 = [a1 entityWithApplication:v7 scenePersistenceIdentifier:v6 sceneHandleProvider:v8 displayIdentity:v9];

  return v10;
}

+ (id)newEntityWithApplicationForMainDisplay:(id)a3
{
  v4 = a3;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v6 = [v5 displayIdentity];
  v7 = [a1 newEntityWithApplication:v4 sceneHandleProvider:v5 displayIdentity:v6];

  return v7;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3
{
  v4 = a3;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v6 = [v5 displayIdentity];
  v7 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v4 sceneHandleProvider:v5 displayIdentity:v6];

  return v7;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 generatingNewPrimarySceneIfRequired:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v8 = [v7 displayIdentity];
  v9 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v6 generatingNewPrimarySceneIfRequired:v4 sceneHandleProvider:v7 displayIdentity:v8];

  return v9;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 generatingNewSceneIfRequiredWithSpecification:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v9 = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v7 generatingNewSceneIfRequiredWithSpecification:v6 sceneHandleProvider:v8 displayIdentity:v9];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 targetContentIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v9 = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v7 targetContentIdentifier:v6 sceneHandleProvider:v8 displayIdentity:v9];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v9 = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v7 uniqueIdentifier:v6 sceneHandleProvider:v8 displayIdentity:v9];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainSecureDisplay:(id)a3
{
  v4 = a3;
  v5 = +[SBSceneManagerCoordinator secureMainDisplaySceneManager];
  v6 = [v5 displayIdentity];
  v7 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:v4 uniqueIdentifier:0 targetContentIdentifier:0 sceneHandleProvider:v5 displayIdentity:v6];

  return v7;
}

- (void)initWithApplication:(uint64_t)a1 uniqueIdentifier:(uint64_t)a2 targetContentIdentifier:sceneHandleProvider:displayIdentity:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneEntity.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"sceneHandleProvider"}];
}

- (void)initWithApplicationSceneHandle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:a2 object:a3 file:@"SBDeviceApplicationSceneEntity.m" lineNumber:111 description:{@"Scene handle expected type SBDeviceApplicationSceneHandle, but it was %@.", v6}];
}

@end