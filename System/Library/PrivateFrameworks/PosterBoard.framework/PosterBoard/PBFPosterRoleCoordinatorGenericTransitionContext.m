@interface PBFPosterRoleCoordinatorGenericTransitionContext
- (BOOL)pbf_transitionFromIncomingFocusModeChange;
- (NSString)description;
- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)a3 activeChargerIdentifier:(id)a4 extensionStoreCoordinators:(id)a5 currentActivePosterForRole:(id)a6;
- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)a3 activeChargerIdentifier:(id)a4 extensionStoreCoordinators:(id)a5 currentActivePosterForRole:(id)a6 affectedRoles:(id)a7;
- (id)pbf_desiredActiveConfigurationForRole:(id)a3;
- (id)pbf_transitionContextIdentifier;
- (void)setDesiredActiveConfiguration:(id)a3 forRole:(id)a4;
- (void)setTransitionFromIncomingFocusModeChange:(BOOL)a3;
@end

@implementation PBFPosterRoleCoordinatorGenericTransitionContext

- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)a3 activeChargerIdentifier:(id)a4 extensionStoreCoordinators:(id)a5 currentActivePosterForRole:(id)a6
{
  v10 = MEMORY[0x277CCA940];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 set];
  v16 = [(PBFPosterRoleCoordinatorGenericTransitionContext *)self initWithActiveFocusMode:v14 activeChargerIdentifier:v13 extensionStoreCoordinators:v12 currentActivePosterForRole:v11 affectedRoles:v15];

  return v16;
}

- (PBFPosterRoleCoordinatorGenericTransitionContext)initWithActiveFocusMode:(id)a3 activeChargerIdentifier:(id)a4 extensionStoreCoordinators:(id)a5 currentActivePosterForRole:(id)a6 affectedRoles:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = PBFPosterRoleCoordinatorGenericTransitionContext;
  v18 = [(PBFPosterRoleCoordinatorGenericTransitionContext *)&v30 init];
  if (v18)
  {
    v19 = [v15 copy];
    extensionStoreCoordinatorForProviderIdentifier = v18->_extensionStoreCoordinatorForProviderIdentifier;
    v18->_extensionStoreCoordinatorForProviderIdentifier = v19;

    v21 = [v16 copy];
    currentActivePosterForRole = v18->_currentActivePosterForRole;
    v18->_currentActivePosterForRole = v21;

    objc_storeStrong(&v18->_activeFocusMode, a3);
    v23 = [MEMORY[0x277CCAD78] UUID];
    transitionContextIdentifier = v18->_transitionContextIdentifier;
    v18->_transitionContextIdentifier = v23;

    v25 = [v14 copy];
    activeChargerIdentifier = v18->_activeChargerIdentifier;
    v18->_activeChargerIdentifier = v25;

    v27 = [v17 copy];
    affectedRoles = v18->_affectedRoles;
    v18->_affectedRoles = v27;
  }

  return v18;
}

- (void)setDesiredActiveConfiguration:(id)a3 forRole:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  desiredActivePosterConfigurationForRole = v7->_desiredActivePosterConfigurationForRole;
  if (!desiredActivePosterConfigurationForRole)
  {
    v9 = objc_opt_new();
    v10 = v7->_desiredActivePosterConfigurationForRole;
    v7->_desiredActivePosterConfigurationForRole = v9;

    desiredActivePosterConfigurationForRole = v7->_desiredActivePosterConfigurationForRole;
  }

  [(NSMutableDictionary *)desiredActivePosterConfigurationForRole setObject:v11 forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

- (id)pbf_desiredActiveConfigurationForRole:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_desiredActivePosterConfigurationForRole objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setTransitionFromIncomingFocusModeChange:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_transitionFromIncomingFocusModeChange = a3;
  objc_sync_exit(obj);
}

- (BOOL)pbf_transitionFromIncomingFocusModeChange
{
  v2 = self;
  objc_sync_enter(v2);
  transitionFromIncomingFocusModeChange = v2->_transitionFromIncomingFocusModeChange;
  objc_sync_exit(v2);

  return transitionFromIncomingFocusModeChange;
}

- (id)pbf_transitionContextIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_transitionContextIdentifier;
  objc_sync_exit(v2);

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
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(NSUUID *)v6->_transitionContextIdentifier UUIDString];
    v8 = [v7 substringToIndex:7];
    [v5 appendString:v8 withName:@"id"];

    [v5 appendString:v6->_activeChargerIdentifier withName:@"activeChargerIdentifier"];
    v9 = [v5 appendBool:v6->_transitionFromIncomingFocusModeChange withName:@"fromFocusModeChange" ifEqualTo:1];
    v10 = [v5 appendBool:v6->_initialUpdate withName:@"isInitialUpdate" ifEqualTo:1];
    v11 = [(FCActivityDescribing *)v6->_activeFocusMode activityUniqueIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v12 substringToIndex:7];
    v14 = [v5 appendObject:v13 withName:@"_activeFocusMode" skipIfNil:1];

    [v5 appendDictionarySection:v6->_desiredActivePosterConfigurationForRole withName:@"desiredActiveConfigurationFromRole" skipIfEmpty:1];
    [v5 appendDictionarySection:v6->_currentActivePosterForRole withName:@"currentActivePosterForRole" skipIfEmpty:1];
    [v5 appendDictionarySection:v6->_extensionStoreCoordinatorForProviderIdentifier withName:@"extensionStoreCoordinatorForProviderIdentifier" skipIfEmpty:1];
    objc_sync_exit(v6);

    v15 = [v5 build];
    v16 = self->_description;
    self->_description = v15;

    v3 = self->_description;
  }

  return v3;
}

@end