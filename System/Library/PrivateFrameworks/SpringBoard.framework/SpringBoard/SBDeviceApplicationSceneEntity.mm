@interface SBDeviceApplicationSceneEntity
+ (SBDeviceApplicationSceneEntity)entityWithApplication:(id)application scenePersistenceIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity;
+ (SBDeviceApplicationSceneEntity)entityWithApplicationForMainDisplay:(id)display withScenePersistenceIdentifier:(id)identifier;
+ (id)defaultEntityWithApplication:(id)application targetContentIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity;
+ (id)defaultEntityWithApplicationForMainDisplay:(id)display;
+ (id)defaultEntityWithApplicationForMainDisplay:(id)display targetContentIdentifier:(id)identifier;
+ (id)newEntityWithApplication:(id)application sceneHandleProvider:(id)provider displayIdentity:(id)identity;
+ (id)newEntityWithApplicationForMainDisplay:(id)display;
- (BOOL)supportsPresentationAtAnySize;
- (BOOL)supportsSplitView;
- (BOOL)wantsExclusiveForeground;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application generatingNewPrimarySceneIfRequired:(BOOL)required sceneHandleProvider:(id)provider displayIdentity:(id)identity;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application generatingNewSceneIfRequiredWithSpecification:(id)specification sceneHandleProvider:(id)provider displayIdentity:(id)identity;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application uniqueIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity;
- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application uniqueIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier sceneHandleProvider:(id)provider displayIdentity:(id)identity;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display generatingNewPrimarySceneIfRequired:(BOOL)required;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display generatingNewSceneIfRequiredWithSpecification:(id)specification;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display targetContentIdentifier:(id)identifier;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display uniqueIdentifier:(id)identifier;
- (SBDeviceApplicationSceneEntity)initWithApplicationForMainSecureDisplay:(id)display;
- (SBDeviceApplicationSceneEntity)initWithApplicationSceneHandle:(id)handle;
- (id)supportedLayoutRoles;
@end

@implementation SBDeviceApplicationSceneEntity

- (BOOL)supportsSplitView
{
  sceneHandle = [(SBApplicationSceneEntity *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  switcherController = [_windowScene switcherController];

  application = [(SBApplicationSceneEntity *)self application];
  windowManagementContext = [switcherController windowManagementContext];
  displayIdentity = [switcherController displayIdentity];
  v9 = [application supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext displayIdentity:displayIdentity];

  return v9;
}

- (id)supportedLayoutRoles
{
  if ([(SBDeviceApplicationSceneEntity *)self supportsPresentationAtAnySize])
  {
    supportedLayoutRoles = SBLayoutRoleSetAppAndFloatingLayout();
  }

  else if ([(SBDeviceApplicationSceneEntity *)self supportsSplitView])
  {
    supportedLayoutRoles = SBLayoutRoleSetForRole2(1, 2);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBDeviceApplicationSceneEntity;
    supportedLayoutRoles = [(SBApplicationSceneEntity *)&v5 supportedLayoutRoles];
  }

  return supportedLayoutRoles;
}

- (BOOL)supportsPresentationAtAnySize
{
  application = [(SBApplicationSceneEntity *)self application];
  isMedusaCapable = [application isMedusaCapable];

  return isMedusaCapable;
}

- (BOOL)wantsExclusiveForeground
{
  application = [(SBApplicationSceneEntity *)self application];
  info = [application info];
  wantsExclusiveForeground = [info wantsExclusiveForeground];

  return wantsExclusiveForeground;
}

+ (id)defaultEntityWithApplication:(id)application targetContentIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  identityCopy = identity;
  providerCopy = provider;
  identifierCopy = identifier;
  applicationCopy = application;
  v14 = [[self alloc] initWithApplication:applicationCopy targetContentIdentifier:identifierCopy sceneHandleProvider:providerCopy displayIdentity:identityCopy];

  return v14;
}

+ (SBDeviceApplicationSceneEntity)entityWithApplication:(id)application scenePersistenceIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  applicationCopy = application;
  providerCopy = provider;
  identityCopy = identity;
  if (identifier)
  {
    identifierCopy = identifier;
    v14 = objc_opt_class();
    v15 = providerCopy;
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

    v18 = [v17 existingSceneHandleForPersistenceIdentifier:identifierCopy];

    identifier = [v18 sceneIdentifier];
  }

  v19 = [[self alloc] initWithApplication:applicationCopy uniqueIdentifier:identifier sceneHandleProvider:providerCopy displayIdentity:identityCopy];

  return v19;
}

+ (id)newEntityWithApplication:(id)application sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  identityCopy = identity;
  providerCopy = provider;
  applicationCopy = application;
  v11 = [providerCopy newSceneIdentityForApplication:applicationCopy];
  v12 = [self alloc];
  identifier = [v11 identifier];
  v14 = [v12 initWithApplication:applicationCopy uniqueIdentifier:identifier targetContentIdentifier:0 sceneHandleProvider:providerCopy displayIdentity:identityCopy];

  return v14;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application generatingNewPrimarySceneIfRequired:(BOOL)required sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  requiredCopy = required;
  identityCopy = identity;
  providerCopy = provider;
  applicationCopy = application;
  v13 = [SBApplicationSceneHandleRequest defaultSceneSpecificationForDisplayIdentity:identityCopy];
  uiSceneSessionRole = [v13 uiSceneSessionRole];
  v15 = [providerCopy sceneIdentityForApplication:applicationCopy createPrimaryIfRequired:requiredCopy sceneSessionRole:uiSceneSessionRole];

  v16 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v16 setIdentity:v15];
  v17 = MEMORY[0x277D0ADA8];
  info = [applicationCopy info];
  processIdentity = [info processIdentity];
  v20 = [v17 identityForProcessIdentity:processIdentity];
  [v16 setClientIdentity:v20];

  [v16 setSpecification:v13];
  v21 = [[SBApplicationSceneHandleRequest alloc] initWithApplication:applicationCopy sceneDefinition:v16 displayIdentity:identityCopy];

  v22 = [providerCopy fetchOrCreateApplicationSceneHandleForRequest:v21];

  v23 = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v22];
  return v23;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application generatingNewSceneIfRequiredWithSpecification:(id)specification sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  identityCopy = identity;
  providerCopy = provider;
  specificationCopy = specification;
  applicationCopy = application;
  uiSceneSessionRole = [specificationCopy uiSceneSessionRole];
  v15 = [providerCopy sceneIdentityForApplication:applicationCopy createPrimaryIfRequired:1 sceneSessionRole:uiSceneSessionRole];

  v16 = objc_alloc_init(MEMORY[0x277D0AD48]);
  [v16 setIdentity:v15];
  v17 = MEMORY[0x277D0ADA8];
  info = [applicationCopy info];
  processIdentity = [info processIdentity];
  v20 = [v17 identityForProcessIdentity:processIdentity];
  [v16 setClientIdentity:v20];

  [v16 setSpecification:specificationCopy];
  v21 = [[SBApplicationSceneHandleRequest alloc] initWithApplication:applicationCopy sceneDefinition:v16 displayIdentity:identityCopy];

  v22 = [providerCopy fetchOrCreateApplicationSceneHandleForRequest:v21];

  v23 = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v22];
  return v23;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application uniqueIdentifier:(id)identifier sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  applicationCopy = application;
  identifierCopy = identifier;
  providerCopy = provider;
  identityCopy = identity;
  info = [applicationCopy info];
  supportsMultiwindow = [info supportsMultiwindow];

  if ((supportsMultiwindow & 1) == 0)
  {

    identifierCopy = 0;
  }

  v16 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:applicationCopy uniqueIdentifier:identifierCopy targetContentIdentifier:0 sceneHandleProvider:providerCopy displayIdentity:identityCopy];

  return v16;
}

- (SBDeviceApplicationSceneEntity)initWithApplication:(id)application uniqueIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier sceneHandleProvider:(id)provider displayIdentity:(id)identity
{
  applicationCopy = application;
  identifierCopy = identifier;
  contentIdentifierCopy = contentIdentifier;
  providerCopy = provider;
  identityCopy = identity;
  if (applicationCopy)
  {
    if (!providerCopy)
    {
      [SBDeviceApplicationSceneEntity initWithApplication:a2 uniqueIdentifier:self targetContentIdentifier:? sceneHandleProvider:? displayIdentity:?];
    }

    info = [applicationCopy info];
    if ([info supportsMultiwindow])
    {
      v19 = identifierCopy;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [providerCopy sceneIdentityForApplication:applicationCopy uniqueIdentifier:v20 targetContentIdentifier:contentIdentifierCopy];
    v22 = [SBApplicationSceneHandleRequest defaultRequestForApplication:applicationCopy sceneIdentity:v21 displayIdentity:identityCopy];

    v23 = [providerCopy fetchOrCreateApplicationSceneHandleForRequest:v22];
    self = [(SBDeviceApplicationSceneEntity *)self initWithApplicationSceneHandle:v23];

    identifierCopy = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBDeviceApplicationSceneEntity *)handleCopy initWithApplicationSceneHandle:a2, self];
    }

    self = [(SBApplicationSceneEntity *)self _initWithSceneHandle:handleCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)defaultEntityWithApplicationForMainDisplay:(id)display
{
  displayCopy = display;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v5 displayIdentity];
  v7 = [self defaultEntityWithApplication:displayCopy sceneHandleProvider:v5 displayIdentity:displayIdentity];

  return v7;
}

+ (id)defaultEntityWithApplicationForMainDisplay:(id)display targetContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayCopy = display;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v8 displayIdentity];
  v10 = [self defaultEntityWithApplication:displayCopy targetContentIdentifier:identifierCopy sceneHandleProvider:v8 displayIdentity:displayIdentity];

  return v10;
}

+ (SBDeviceApplicationSceneEntity)entityWithApplicationForMainDisplay:(id)display withScenePersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayCopy = display;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v8 displayIdentity];
  v10 = [self entityWithApplication:displayCopy scenePersistenceIdentifier:identifierCopy sceneHandleProvider:v8 displayIdentity:displayIdentity];

  return v10;
}

+ (id)newEntityWithApplicationForMainDisplay:(id)display
{
  displayCopy = display;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v5 displayIdentity];
  v7 = [self newEntityWithApplication:displayCopy sceneHandleProvider:v5 displayIdentity:displayIdentity];

  return v7;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display
{
  displayCopy = display;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v5 displayIdentity];
  v7 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy sceneHandleProvider:v5 displayIdentity:displayIdentity];

  return v7;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display generatingNewPrimarySceneIfRequired:(BOOL)required
{
  requiredCopy = required;
  displayCopy = display;
  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v7 displayIdentity];
  v9 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy generatingNewPrimarySceneIfRequired:requiredCopy sceneHandleProvider:v7 displayIdentity:displayIdentity];

  return v9;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display generatingNewSceneIfRequiredWithSpecification:(id)specification
{
  specificationCopy = specification;
  displayCopy = display;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy generatingNewSceneIfRequiredWithSpecification:specificationCopy sceneHandleProvider:v8 displayIdentity:displayIdentity];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display targetContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayCopy = display;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy targetContentIdentifier:identifierCopy sceneHandleProvider:v8 displayIdentity:displayIdentity];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainDisplay:(id)display uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayCopy = display;
  v8 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  displayIdentity = [v8 displayIdentity];
  v10 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy uniqueIdentifier:identifierCopy sceneHandleProvider:v8 displayIdentity:displayIdentity];

  return v10;
}

- (SBDeviceApplicationSceneEntity)initWithApplicationForMainSecureDisplay:(id)display
{
  displayCopy = display;
  v5 = +[SBSceneManagerCoordinator secureMainDisplaySceneManager];
  displayIdentity = [v5 displayIdentity];
  v7 = [(SBDeviceApplicationSceneEntity *)self initWithApplication:displayCopy uniqueIdentifier:0 targetContentIdentifier:0 sceneHandleProvider:v5 displayIdentity:displayIdentity];

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