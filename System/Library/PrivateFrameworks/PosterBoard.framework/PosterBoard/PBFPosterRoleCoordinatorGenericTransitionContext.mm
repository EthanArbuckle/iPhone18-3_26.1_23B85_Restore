@interface PBFPosterRoleCoordinatorGenericTransitionContext
- (BOOL)pbf_transitionFromIncomingFocusModeChange;
- (NSString)description;
- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)mode activeChargerIdentifier:(id)identifier extensionStoreCoordinators:(id)coordinators currentActivePosterForRole:(id)role;
- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)mode activeChargerIdentifier:(id)identifier extensionStoreCoordinators:(id)coordinators currentActivePosterForRole:(id)role affectedRoles:(id)roles;
- (id)pbf_desiredActiveConfigurationForRole:(id)role;
- (id)pbf_transitionContextIdentifier;
- (void)setDesiredActiveConfiguration:(id)configuration forRole:(id)role;
- (void)setTransitionFromIncomingFocusModeChange:(BOOL)change;
@end

@implementation PBFPosterRoleCoordinatorGenericTransitionContext

- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)mode activeChargerIdentifier:(id)identifier extensionStoreCoordinators:(id)coordinators currentActivePosterForRole:(id)role
{
  v10 = MEMORY[0x277CCA940];
  roleCopy = role;
  coordinatorsCopy = coordinators;
  identifierCopy = identifier;
  modeCopy = mode;
  v15 = [v10 set];
  v16 = [(PBFPosterRoleCoordinatorGenericTransitionContext *)self initWithActiveFocusMode:modeCopy activeChargerIdentifier:identifierCopy extensionStoreCoordinators:coordinatorsCopy currentActivePosterForRole:roleCopy affectedRoles:v15];

  return v16;
}

- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)mode activeChargerIdentifier:(id)identifier extensionStoreCoordinators:(id)coordinators currentActivePosterForRole:(id)role affectedRoles:(id)roles
{
  modeCopy = mode;
  identifierCopy = identifier;
  coordinatorsCopy = coordinators;
  roleCopy = role;
  rolesCopy = roles;
  v30.receiver = self;
  v30.super_class = PBFPosterRoleCoordinatorGenericTransitionContext;
  v18 = [(PBFPosterRoleCoordinatorGenericTransitionContext *)&v30 init];
  if (v18)
  {
    v19 = [coordinatorsCopy copy];
    extensionStoreCoordinatorForProviderIdentifier = v18->_extensionStoreCoordinatorForProviderIdentifier;
    v18->_extensionStoreCoordinatorForProviderIdentifier = v19;

    v21 = [roleCopy copy];
    currentActivePosterForRole = v18->_currentActivePosterForRole;
    v18->_currentActivePosterForRole = v21;

    objc_storeStrong(&v18->_activeFocusMode, mode);
    uUID = [MEMORY[0x277CCAD78] UUID];
    transitionContextIdentifier = v18->_transitionContextIdentifier;
    v18->_transitionContextIdentifier = uUID;

    v25 = [identifierCopy copy];
    activeChargerIdentifier = v18->_activeChargerIdentifier;
    v18->_activeChargerIdentifier = v25;

    v27 = [rolesCopy copy];
    affectedRoles = v18->_affectedRoles;
    v18->_affectedRoles = v27;
  }

  return v18;
}

- (void)setDesiredActiveConfiguration:(id)configuration forRole:(id)role
{
  configurationCopy = configuration;
  roleCopy = role;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  desiredActivePosterConfigurationForRole = selfCopy->_desiredActivePosterConfigurationForRole;
  if (!desiredActivePosterConfigurationForRole)
  {
    v9 = objc_opt_new();
    v10 = selfCopy->_desiredActivePosterConfigurationForRole;
    selfCopy->_desiredActivePosterConfigurationForRole = v9;

    desiredActivePosterConfigurationForRole = selfCopy->_desiredActivePosterConfigurationForRole;
  }

  [(NSMutableDictionary *)desiredActivePosterConfigurationForRole setObject:configurationCopy forKeyedSubscript:roleCopy];
  objc_sync_exit(selfCopy);
}

- (id)pbf_desiredActiveConfigurationForRole:(id)role
{
  roleCopy = role;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_desiredActivePosterConfigurationForRole objectForKeyedSubscript:roleCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setTransitionFromIncomingFocusModeChange:(BOOL)change
{
  obj = self;
  objc_sync_enter(obj);
  obj->_transitionFromIncomingFocusModeChange = change;
  objc_sync_exit(obj);
}

- (BOOL)pbf_transitionFromIncomingFocusModeChange
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transitionFromIncomingFocusModeChange = selfCopy->_transitionFromIncomingFocusModeChange;
  objc_sync_exit(selfCopy);

  return transitionFromIncomingFocusModeChange;
}

- (id)pbf_transitionContextIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transitionContextIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)description
{
  description = self->_description;
  if (description)
  {
    v3 = description;
  }

  else
  {
    v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    uUIDString = [(NSUUID *)selfCopy->_transitionContextIdentifier UUIDString];
    v8 = [uUIDString substringToIndex:7];
    [v5 appendString:v8 withName:@"id"];

    [v5 appendString:selfCopy->_activeChargerIdentifier withName:@"activeChargerIdentifier"];
    v9 = [v5 appendBool:selfCopy->_transitionFromIncomingFocusModeChange withName:@"fromFocusModeChange" ifEqualTo:1];
    v10 = [v5 appendBool:selfCopy->_initialUpdate withName:@"isInitialUpdate" ifEqualTo:1];
    activityUniqueIdentifier = [(FCActivityDescribing *)selfCopy->_activeFocusMode activityUniqueIdentifier];
    uUIDString2 = [activityUniqueIdentifier UUIDString];
    v13 = [uUIDString2 substringToIndex:7];
    v14 = [v5 appendObject:v13 withName:@"_activeFocusMode" skipIfNil:1];

    [v5 appendDictionarySection:selfCopy->_desiredActivePosterConfigurationForRole withName:@"desiredActiveConfigurationFromRole" skipIfEmpty:1];
    [v5 appendDictionarySection:selfCopy->_currentActivePosterForRole withName:@"currentActivePosterForRole" skipIfEmpty:1];
    [v5 appendDictionarySection:selfCopy->_extensionStoreCoordinatorForProviderIdentifier withName:@"extensionStoreCoordinatorForProviderIdentifier" skipIfEmpty:1];
    objc_sync_exit(selfCopy);

    build = [v5 build];
    v16 = self->_description;
    self->_description = build;

    v3 = self->_description;
  }

  return v3;
}

@end