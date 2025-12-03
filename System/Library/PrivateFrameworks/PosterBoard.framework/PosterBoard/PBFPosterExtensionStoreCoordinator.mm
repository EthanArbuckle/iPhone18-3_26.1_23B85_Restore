@interface PBFPosterExtensionStoreCoordinator
+ (id)providerInfoURLForContainerURL:(id)l;
- (BOOL)commitStagedWithError:(id *)error;
- (BOOL)providerInfoSetObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)teardownConfigurationStoreCoordinatorForPosterUUID:(id)d error:(id *)error;
- (BOOL)teardownConfigurationStoreCoordinatorForPosterUUID:(id)d version:(unint64_t)version error:(id *)error;
- (BOOL)teardownDynamicDescriptorStoreCoordinatorForPosterUUID:(id)d error:(id *)error;
- (BOOL)updateSuggestionDescriptors:(id)descriptors forConfigurationUUID:(id)d error:(id *)error;
- (BSBuildVersion)lastRefreshStashedBuildVersion;
- (NSDate)lastRefreshDescriptorDate;
- (NSString)description;
- (NSString)lastRefreshDescriptorReason;
- (PBFPosterExtensionStoreCoordinator)init;
- (PBFPosterExtensionStoreCoordinator)initWithContainerURL:(id)l extensionIdentifier:(id)identifier readonly:(BOOL)readonly;
- (char)_containerURLForType:(char *)type;
- (id)_accessLock_createModelStoreCoordinator:(void *)coordinator posterUUID:(void *)d descriptorIdentifier:(void *)identifier role:(void *)role error:;
- (id)_accessLock_deleteEnvironment;
- (id)_accessLock_lastRefreshDescriptorDate;
- (id)_accessLock_lastRefreshDescriptorReason;
- (id)_accessLock_lastRefreshStashedBuildVersion;
- (id)_accessLock_modelStoreCoordinatorForPosterUUID:(uint64_t)d type:;
- (id)_accessLock_modelStoreCoordinatorSetForType:(void *)type error:;
- (id)_accessLock_modelStoreCoordinatorsForType:(uint64_t)type;
- (id)_accessLock_providerInfo;
- (id)_accessLock_setupEnvironmentIfNecessary;
- (id)_accessLock_stageNewConfigurationStoreCoordinatorForPosterUUID:(void *)d descriptorIdentifier:(void *)identifier role:(void *)role error:;
- (id)_accessLock_transientInternalInfo;
- (id)_modelStoreCoordinatorSetForType:(void *)type error:;
- (id)_modelStoreCoordinatorsForType:(uint64_t)type;
- (id)configurationStoreCoordinatorForPosterUUID:(id)d;
- (id)createConfigurationStoreCoordinatorForPosterUUID:(id)d descriptorIdentifier:(id)identifier role:(id)role error:(id *)error;
- (id)createDynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role error:(id *)error;
- (id)createStaticDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role error:(id *)error;
- (id)deleteEnvironment;
- (id)determineRefreshStateWithContext:(id)context;
- (id)dynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier;
- (id)dynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role createIfNil:(BOOL)nil error:(id *)error;
- (id)dynamicDescriptorStoreCoordinatorForPosterUUID:(id)d;
- (id)dynamicPosterDescriptorLatestVersionPaths;
- (id)ensureFileSystemIntegrity;
- (id)latestPosterConfigurationForUUID:(id)d;
- (id)modelStoreCoordinatorForPosterUUID:(id)d;
- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity;
- (id)posterStaticDescriptorLatestVersionPaths;
- (id)providerInfoObjectForKey:(id)key;
- (id)setupEnvironmentIfNecessary;
- (id)stageNewConfigurationStoreCoordinatorForPosterUUID:(id)d descriptorIdentifier:(id)identifier role:(id)role error:(id *)error;
- (id)staticDescriptorStoreCoordinatorForIdentifier:(id)identifier;
- (id)staticDescriptorStoreCoordinatorForPosterUUID:(id)d;
- (id)staticDescriptorStoreCoordinatorsWithError:(id *)error;
- (id)suggestionDescriptorPathsForConfigurationUUID:(id)d;
- (id)suggestionDescriptorStoreCoordinatorForPosterUUID:(id)d;
- (id)suggestionDescriptorStoreCoordinatorsForConfigurationUUID:(id)d;
- (uint64_t)_accessLock_bumpLastRefreshBuildVersion;
- (uint64_t)_accessLock_deleteProviderInfo;
- (uint64_t)_accessLock_providerInfoSetObject:(void *)object forKey:(uint64_t)key error:;
- (uint64_t)_accessLock_teardownModelStoreCoordinator:(void *)coordinator posterUUID:(uint64_t)d version:(void *)version error:;
- (uint64_t)_accessLock_teardownModelStoreCoordinator:(void *)coordinator posterUUID:(void *)d error:;
- (uint64_t)_accessLock_writeTransientInternalInfo:(void *)info error:;
- (void)_accessLock_bumpLastRefreshDescriptorDate:(void *)date reason:;
- (void)_accessLock_enumerateModelStoreCoordinators:(uint64_t)coordinators;
- (void)_correctPermissionsForInternalDirectories;
- (void)_invalidateAndDeleteStoreCoordinatorsForType:(uint64_t)type;
- (void)abortStaged;
- (void)deleteProviderInfo;
- (void)enumerateConfigurationStoreCoordinators:(id)coordinators;
- (void)enumerateDescriptorStoreCoordinators:(id)coordinators;
- (void)enumerateDynamicDescriptorStoreCoordinators:(id)coordinators;
- (void)enumerateStaticDescriptorStoreCoordinators:(id)coordinators;
- (void)invalidate;
- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators;
- (void)reapEverythingExceptLatestVersion;
- (void)removeLastRefreshDescriptorDate;
- (void)teardownAllSuggestionDescriptorStoreCoordinators;
- (void)updateLastRefreshDescriptorDateWithReason:(id)reason;
@end

@implementation PBFPosterExtensionStoreCoordinator

- (PBFPosterExtensionStoreCoordinator)initWithContainerURL:(id)l extensionIdentifier:(id)identifier readonly:(BOOL)readonly
{
  lCopy = l;
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    [PBFPosterExtensionStoreCoordinator initWithContainerURL:a2 extensionIdentifier:? readonly:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionStoreCoordinator initWithContainerURL:a2 extensionIdentifier:? readonly:?];
  }

  v11 = lCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v11)
  {
    [PBFPosterExtensionStoreCoordinator initWithContainerURL:a2 extensionIdentifier:? readonly:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionStoreCoordinator initWithContainerURL:a2 extensionIdentifier:? readonly:?];
  }

  v44.receiver = self;
  v44.super_class = PBFPosterExtensionStoreCoordinator;
  v12 = [(PBFPosterExtensionStoreCoordinator *)&v44 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    extensionIdentifier = v12->_extensionIdentifier;
    v12->_extensionIdentifier = v13;

    v12->_readonly = readonly;
    uRLByStandardizingPath = [v11 URLByStandardizingPath];
    containerURL = v12->_containerURL;
    v12->_containerURL = uRLByStandardizingPath;

    v17 = [objc_opt_class() providerInfoURLForContainerURL:v12->_containerURL];
    providerInfoURL = v12->_providerInfoURL;
    v12->_providerInfoURL = v17;

    v19 = MEMORY[0x277CBEBC0];
    v20 = PFTemporaryDirectory();
    v21 = [v19 fileURLWithPath:v20 isDirectory:1];
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    pbf_sha256Hash = [v24 pbf_sha256Hash];
    pbf_sha256Hash2 = [(NSString *)v12->_extensionIdentifier pbf_sha256Hash];
    pbf_bootInstanceIdentifier = [MEMORY[0x277CCACA8] pbf_bootInstanceIdentifier];
    v28 = [v22 stringWithFormat:@"TransientInfo-%@-%@-%@.plist", pbf_sha256Hash, pbf_sha256Hash2, pbf_bootInstanceIdentifier];
    v29 = [v21 URLByAppendingPathComponent:v28];
    transientInternalInfoURL = v12->_transientInternalInfoURL;
    v12->_transientInternalInfoURL = v29;

    v31 = [MEMORY[0x277CBEBC0] pf_posterPathTypeURLForProviderURL:v12->_containerURL type:2];
    staticDescriptorsContainerURL = v12->_staticDescriptorsContainerURL;
    v12->_staticDescriptorsContainerURL = v31;

    v33 = [MEMORY[0x277CBEBC0] pf_posterPathTypeURLForProviderURL:v12->_containerURL type:4];
    suggestionDescriptorsContainerURL = v12->_suggestionDescriptorsContainerURL;
    v12->_suggestionDescriptorsContainerURL = v33;

    v35 = [MEMORY[0x277CBEBC0] pf_posterPathTypeURLForProviderURL:v12->_containerURL type:1];
    descriptorsContainerURL = v12->_descriptorsContainerURL;
    v12->_descriptorsContainerURL = v35;

    v37 = [MEMORY[0x277CBEBC0] pf_posterPathTypeURLForProviderURL:v12->_containerURL type:3];
    configurationContainerURL = v12->_configurationContainerURL;
    v12->_configurationContainerURL = v37;

    v39 = objc_opt_new();
    accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID = v12->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID;
    v12->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID = v39;

    v12->_accessLock._os_unfair_lock_opaque = 0;
    v41 = objc_opt_new();
    fileManager = v12->_fileManager;
    v12->_fileManager = v41;
  }

  return v12;
}

- (PBFPosterExtensionStoreCoordinator)init
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Please use initWithContainerURL:extensionIdentifier:readonly:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"PBFPosterExtensionStoreCoordinator.m";
    v17 = 1024;
    v18 = 92;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_extensionIdentifier withName:@"extensionIdentifier"];
  build = [v3 build];

  return build;
}

- (id)setupEnvironmentIfNecessary
{
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_setupEnvironmentIfNecessary = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_setupEnvironmentIfNecessary];
  os_unfair_lock_unlock(&self->_accessLock);

  return _accessLock_setupEnvironmentIfNecessary;
}

- (id)deleteEnvironment
{
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_deleteEnvironment = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_deleteEnvironment];
  os_unfair_lock_unlock(&self->_accessLock);

  return _accessLock_deleteEnvironment;
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    os_unfair_lock_lock(&self->_accessLock);
    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_enumerateModelStoreCoordinators:?];
    [(NSMutableDictionary *)self->_accessLock_posterDescriptorStoreCoordinatorsForUUID removeAllObjects];
    [(NSMutableDictionary *)self->_accessLock_suggestionDescriptorStoreCoordinatorsForUUID removeAllObjects];
    [(NSMutableDictionary *)self->_accessLock_staticPosterDescriptorStoreCoordinatorsForUUID removeAllObjects];
    [(NSMutableDictionary *)self->_accessLock_posterConfigurationStoreCoordinatorsForUUID removeAllObjects];
    [(NSMutableDictionary *)self->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID removeAllObjects];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)reapEverythingExceptLatestVersion
{
  v23 = *MEMORY[0x277D85DE8];
  if (!self->_readonly && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_accessLock);
    v3 = PBFLogReaper();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "Reaping everything except latest version.", buf, 2u);
    }

    v4 = objc_opt_new();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__PBFPosterExtensionStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke;
    v19[3] = &unk_2782C8B38;
    v5 = v4;
    v20 = v5;
    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_enumerateModelStoreCoordinators:v19];
    objectEnumerator = [(NSMutableDictionary *)self->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    [v5 addObjectsFromArray:allObjects];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          posterUUID = [*(*(&v15 + 1) + 8 * v12) posterUUID];
          type = [objc_opt_class() type];
          [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:type posterUUID:posterUUID error:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v10);
    }

    [(NSMutableDictionary *)self->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID removeAllObjects];
    os_unfair_lock_unlock(&self->_accessLock);
  }
}

void __71__PBFPosterExtensionStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 reapEverythingExceptLatestVersion];
  if (([v3 hasKnownVersions] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)enumerateDescriptorStoreCoordinators:(id)coordinators
{
  v39 = *MEMORY[0x277D85DE8];
  coordinatorsCopy = coordinators;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    os_unfair_lock_lock(&self->_accessLock);
    v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorSetForType:0 error:?];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] set];
    }

    v8 = v7;

    v9 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorSetForType:0 error:?];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] set];
    }

    v12 = v11;

    os_unfair_lock_unlock(&self->_accessLock);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v37[0] = v12;
    v37[1] = v8;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      v25 = *v33;
      v26 = v8;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v29;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v29 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v28 + 1) + 8 * j);
                v27 = 0;
                coordinatorsCopy[2](coordinatorsCopy, v24, &v27);
                if (v27)
                {

                  v8 = v26;
                  goto LABEL_26;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v16 = v25;
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
        v8 = v26;
      }

      while (v15);
    }

LABEL_26:
  }
}

- (void)enumerateConfigurationStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  v6 = [(PBFPosterExtensionStoreCoordinator *)self configurationStoreCoordinatorsWithError:0];
  v5 = [v6 copy];
  [v5 enumerateObjectsUsingBlock:coordinatorsCopy];
}

- (void)enumerateDynamicDescriptorStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  v6 = [(PBFPosterExtensionStoreCoordinator *)self dynamicDescriptorStoreCoordinatorsWithError:0];
  v5 = [v6 copy];
  [v5 enumerateObjectsUsingBlock:coordinatorsCopy];
}

- (void)enumerateStaticDescriptorStoreCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  v6 = [(PBFPosterExtensionStoreCoordinator *)self staticDescriptorStoreCoordinatorsWithError:0];
  v5 = [v6 copy];
  [v5 enumerateObjectsUsingBlock:coordinatorsCopy];
}

- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy type];
  v5 = [PBFPosterExtensionStoreCoordinator _modelStoreCoordinatorsForType:?];
  posterUUID = [identityCopy posterUUID];
  v7 = [v5 objectForKey:posterUUID];
  v8 = [v7 pbf_posterSnapshotCoordinatorForIdentity:identityCopy];

  return v8;
}

- (void)pbf_enumerateSnapshotCoordinators:(id)coordinators
{
  coordinatorsCopy = coordinators;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__PBFPosterExtensionStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke;
  v13 = &unk_2782C8B88;
  v5 = coordinatorsCopy;
  v14 = v5;
  v15 = &v16;
  v6 = _Block_copy(&v10);
  v7 = [(PBFPosterExtensionStoreCoordinator *)self dynamicDescriptorStoreCoordinatorsWithError:0, v10, v11, v12, v13];
  [v7 enumerateObjectsUsingBlock:v6];

  if ((v17[3] & 1) == 0)
  {
    v8 = [(PBFPosterExtensionStoreCoordinator *)self staticDescriptorStoreCoordinatorsWithError:0];
    [v8 enumerateObjectsUsingBlock:v6];

    if ((v17[3] & 1) == 0)
    {
      v9 = [(PBFPosterExtensionStoreCoordinator *)self configurationStoreCoordinatorsWithError:0];
      [v9 enumerateObjectsUsingBlock:v6];
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __72__PBFPosterExtensionStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__PBFPosterExtensionStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke_2;
  v6[3] = &unk_2782C8B60;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v5 pbf_enumerateSnapshotCoordinators:v6];
  if (*(v10 + 24) == 1)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __72__PBFPosterExtensionStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (id)modelStoreCoordinatorForPosterUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:dCopy type:1];
  if (!v5)
  {
    v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:dCopy type:2];
    if (!v5)
    {
      v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:dCopy type:3];
    }
  }

  v6 = v5;
  os_unfair_lock_unlock(&self->_accessLock);

  return v6;
}

- (id)latestPosterConfigurationForUUID:(id)d
{
  v3 = [(PBFPosterExtensionStoreCoordinator *)self configurationStoreCoordinatorForPosterUUID:d];
  pathOfLatestVersion = [v3 pathOfLatestVersion];

  if (pathOfLatestVersion)
  {
    v5 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:pathOfLatestVersion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __85__PBFPosterExtensionStoreCoordinator_dynamicDescriptorStoreCoordinatorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)dynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role createIfNil:(BOOL)nil error:(id *)error
{
  nilCopy = nil;
  v38[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  roleCopy = role;
  if ([(__CFString *)identifierCopy length])
  {
    if ((PFPosterRoleIsValid() & 1) == 0)
    {
      [PBFPosterExtensionStoreCoordinator dynamicDescriptorStoreCoordinatorForIdentifier:roleCopy role:a2 createIfNil:? error:?];
    }

    os_unfair_lock_lock(&self->_accessLock);
    v32 = 0;
    v18 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorSetForType:&v32 error:?];
    v15 = v32;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __108__PBFPosterExtensionStoreCoordinator_dynamicDescriptorStoreCoordinatorForIdentifier_role_createIfNil_error___block_invoke;
    v30[3] = &unk_2782C8BB0;
    v19 = identifierCopy;
    v31 = v19;
    v16 = [v18 bs_firstObjectPassingTest:v30];

    if (v15)
    {
      goto LABEL_23;
    }

    if (v16)
    {
      role = [v16 role];
      v21 = [role isEqual:roleCopy];

      if ((v21 & 1) == 0)
      {

        v22 = MEMORY[0x277CCA9B8];
        v35[0] = *MEMORY[0x277CCA470];
        v35[1] = @"role";
        v23 = @"(null role)";
        if (roleCopy)
        {
          v23 = roleCopy;
        }

        v36[0] = @"Descriptor store coordinator exists but does not match the requested role";
        v36[1] = v23;
        uUID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
        v15 = [v22 pbf_extensionStoreCoordinatorErrorWithCode:-1107 userInfo:uUID];
        v16 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      if (nilCopy)
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        v29 = 0;
        v16 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_createModelStoreCoordinator:uUID posterUUID:v19 descriptorIdentifier:roleCopy role:&v29 error:?];
        v15 = v29;
LABEL_19:

LABEL_23:
        os_unfair_lock_unlock(&self->_accessLock);
        if (!(v16 | v15))
        {
          v25 = MEMORY[0x277CCA9B8];
          v33[0] = *MEMORY[0x277CCA470];
          v33[1] = @"role";
          v26 = @"(null role)";
          if (roleCopy)
          {
            v26 = roleCopy;
          }

          v34[0] = @"Descriptor store coordinator could not fulfill request for role";
          v34[1] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
          v15 = [v25 pbf_extensionStoreCoordinatorErrorWithCode:-1111 userInfo:v27];
        }

        if (error && v15)
        {
          v28 = v15;
          *error = v15;
        }

        goto LABEL_7;
      }

      v16 = 0;
    }

    v15 = 0;
    goto LABEL_23;
  }

  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    if (identifierCopy)
    {
      v14 = identifierCopy;
    }

    else
    {
      v14 = @"(null descriptorIdentifier)";
    }

    v37 = @"descriptorIdentifier";
    v38[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v13 pbf_extensionStoreCoordinatorErrorWithCode:-1105 userInfo:v15];
    *error = v16 = 0;
LABEL_7:

    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

uint64_t __108__PBFPosterExtensionStoreCoordinator_dynamicDescriptorStoreCoordinatorForIdentifier_role_createIfNil_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)createDynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  roleCopy = role;
  if ([(__CFString *)identifierCopy length])
  {
    os_unfair_lock_lock(&self->_accessLock);
    uUID = [MEMORY[0x277CCAD78] UUID];
    error = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_createModelStoreCoordinator:uUID posterUUID:identifierCopy descriptorIdentifier:roleCopy role:error error:?];

    os_unfair_lock_unlock(&self->_accessLock);
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    if (identifierCopy)
    {
      v11 = identifierCopy;
    }

    else
    {
      v11 = @"(null descriptorIdentifier)";
    }

    v15 = @"descriptorIdentifier";
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v10 pbf_extensionStoreCoordinatorErrorWithCode:-1105 userInfo:v12];

    error = 0;
  }

  return error;
}

- (id)suggestionDescriptorStoreCoordinatorsForConfigurationUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorsForType:?];
  v6 = [v5 objectForKey:dCopy];

  v7 = [v6 objectForKeyedSubscript:@"suggestionDescriptors"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__PBFPosterExtensionStoreCoordinator_suggestionDescriptorStoreCoordinatorsForConfigurationUUID___block_invoke;
  v10[3] = &unk_2782C8BF8;
  v10[4] = self;
  v8 = [v7 bs_mapNoNulls:v10];
  os_unfair_lock_unlock(&self->_accessLock);

  return v8;
}

id __96__PBFPosterExtensionStoreCoordinator_suggestionDescriptorStoreCoordinatorsForConfigurationUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAD78] pf_UUIDFromString:a2];
  v4 = [*(*(a1 + 32) + 80) objectForKey:v3];

  return v4;
}

- (id)suggestionDescriptorPathsForConfigurationUUID:(id)d
{
  v3 = [(PBFPosterExtensionStoreCoordinator *)self suggestionDescriptorStoreCoordinatorsForConfigurationUUID:d];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = [v3 valueForKey:@"pathOfLatestVersion"];

  return v5;
}

- (id)suggestionDescriptorStoreCoordinatorForPosterUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSMutableDictionary *)self->_accessLock_suggestionDescriptorStoreCoordinatorsForUUID objectForKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

uint64_t __84__PBFPosterExtensionStoreCoordinator_staticDescriptorStoreCoordinatorForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)createStaticDescriptorStoreCoordinatorForIdentifier:(id)identifier role:(id)role error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  roleCopy = role;
  if ([(__CFString *)identifierCopy length])
  {
    os_unfair_lock_lock(&self->_accessLock);
    uUID = [MEMORY[0x277CCAD78] UUID];
    error = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_createModelStoreCoordinator:uUID posterUUID:identifierCopy descriptorIdentifier:roleCopy role:error error:?];

    os_unfair_lock_unlock(&self->_accessLock);
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    if (identifierCopy)
    {
      v11 = identifierCopy;
    }

    else
    {
      v11 = @"(null descriptorIdentifier)";
    }

    v15 = @"descriptorIdentifier";
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v10 pbf_extensionStoreCoordinatorErrorWithCode:-1105 userInfo:v12];

    error = 0;
  }

  return error;
}

- (BOOL)teardownConfigurationStoreCoordinatorForPosterUUID:(id)d version:(unint64_t)version error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  LOBYTE(error) = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:dCopy posterUUID:version version:error error:?];

  os_unfair_lock_unlock(&self->_accessLock);
  return error;
}

- (id)stageNewConfigurationStoreCoordinatorForPosterUUID:(id)d descriptorIdentifier:(id)identifier role:(id)role error:(id *)error
{
  roleCopy = role;
  identifierCopy = identifier;
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v13 = [(PBFPosterExtensionStoreCoordinator *)&self->super.isa _accessLock_stageNewConfigurationStoreCoordinatorForPosterUUID:dCopy descriptorIdentifier:identifierCopy role:roleCopy error:error];

  os_unfair_lock_unlock(&self->_accessLock);

  return v13;
}

- (void)abortStaged
{
  if (!self->_readonly && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v3 = self->_fileManager;
    os_unfair_lock_lock(&self->_accessLock);
    accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID = self->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__PBFPosterExtensionStoreCoordinator_abortStaged__block_invoke;
    v6[3] = &unk_2782C8C48;
    v7 = v3;
    v5 = v3;
    [(NSMutableDictionary *)accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID enumerateKeysAndObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID removeAllObjects];
    os_unfair_lock_unlock(&self->_accessLock);
  }
}

void __49__PBFPosterExtensionStoreCoordinator_abortStaged__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 identifierURL];
  [v4 invalidate];

  [*(a1 + 32) removeItemAtURL:v5 error:0];
}

- (BOOL)commitStagedWithError:(id *)error
{
  errorCopy = error;
  v77 = *MEMORY[0x277D85DE8];
  if (self->_readonly)
  {
    if (error)
    {
      v4 = [MEMORY[0x277CCA9B8] pbf_extensionStoreCoordinatorErrorWithCode:-1106 userInfo:0];
LABEL_7:
      v6 = 0;
      *errorCopy = v4;
      return v6;
    }

    return 0;
  }

  selfCopy = self;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (errorCopy)
    {
      v4 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      goto LABEL_7;
    }

    return 0;
  }

  v7 = selfCopy->_fileManager;
  os_unfair_lock_lock(&selfCopy->_accessLock);
  v48 = objc_opt_new();
  v54 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = selfCopy->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID;
  v52 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v69 objects:v76 count:16];
  v53 = selfCopy;
  if (v52)
  {
    obj = v8;
    v47 = errorCopy;
    v9 = 0;
    v51 = *v70;
    v50 = 1;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v70 != v51)
      {
        objc_enumerationMutation(obj);
      }

      [(NSMutableDictionary *)selfCopy->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID objectForKey:*(*(&v69 + 1) + 8 * v10)];
      v12 = v11 = selfCopy;
      extensionIdentifier = [v12 extensionIdentifier];
      posterUUID = [v12 posterUUID];
      [v12 invalidate];
      configurationContainerURL = v11->_configurationContainerURL;
      uUIDString = [posterUUID UUIDString];
      v17 = [(NSURL *)configurationContainerURL URLByAppendingPathComponent:uUIDString isDirectory:1];

      identifierURL = [v12 identifierURL];
      v68 = v9;
      v19 = [(NSFileManager *)v7 moveItemAtURL:identifierURL toURL:v17 error:&v68];
      v20 = v68;

      [v54 addObject:v17];
      v55 = extensionIdentifier;
      if (v19)
      {
        v21 = [(PBFPosterModelStoreCoordinator *)[PBFPosterConfigurationStoreCoordinator alloc] initWithProvider:extensionIdentifier identifierURL:v17 posterUUID:posterUUID];
        checkEnvironmentConsistency = [(PBFPosterModelStoreCoordinator *)v21 checkEnvironmentConsistency];
        v23 = checkEnvironmentConsistency;
        v24 = checkEnvironmentConsistency == 0;
        if (checkEnvironmentConsistency)
        {
          v25 = checkEnvironmentConsistency;

          v20 = v25;
        }

        else
        {
          [v48 setObject:v21 forKey:posterUUID];
          v50 = 1;
        }
      }

      else
      {
        v24 = 0;
        v50 = 0;
      }

      v9 = v20;

      selfCopy = v53;
      if (!v24)
      {
        break;
      }

      if (v52 == ++v10)
      {
        v52 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v69 objects:v76 count:16];
        if (v52)
        {
          goto LABEL_11;
        }

        break;
      }
    }

    if ((v50 & 1) == 0)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      keyEnumerator = [(NSMutableDictionary *)v53->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID keyEnumerator];
      v34 = [keyEnumerator countByEnumeratingWithState:&v64 objects:v75 count:16];
      errorCopy = v47;
      if (v34)
      {
        v35 = v34;
        v36 = *v65;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v65 != v36)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v38 = [(NSMutableDictionary *)v53->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID objectForKey:*(*(&v64 + 1) + 8 * i)];
            identifierURL2 = [v38 identifierURL];
            [(NSFileManager *)v7 removeItemAtURL:identifierURL2 error:0];
          }

          v35 = [keyEnumerator countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v35);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v40 = v54;
      v41 = [v40 countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v61;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v61 != v43)
            {
              objc_enumerationMutation(v40);
            }

            [(NSFileManager *)v7 removeItemAtURL:*(*(&v60 + 1) + 8 * j) error:0];
          }

          v42 = [v40 countByEnumeratingWithState:&v60 objects:v74 count:16];
        }

        while (v42);
      }

      v6 = 0;
      goto LABEL_49;
    }

    errorCopy = v47;
  }

  else
  {

    v9 = 0;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  objectEnumerator = [v48 objectEnumerator];
  v27 = [objectEnumerator countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v57;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v57 != v29)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v31 = MEMORY[0x277D3EDE0];
        pathOfLatestVersion = [*(*(&v56 + 1) + 8 * k) pathOfLatestVersion];
        [v31 invalidateModelObjectCacheForPath:pathOfLatestVersion];
      }

      v28 = [objectEnumerator countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v28);
  }

  selfCopy = v53;
  [(NSMutableDictionary *)v53->_accessLock_posterConfigurationStoreCoordinatorsForUUID addEntriesFromDictionary:v48];
  v6 = 1;
LABEL_49:
  [(NSMutableDictionary *)selfCopy->_accessLock_stagedPosterConfigurationStoreCoordinatorsForUUID removeAllObjects];
  os_unfair_lock_unlock(&selfCopy->_accessLock);
  if (errorCopy && v9)
  {
    v45 = v9;
    *errorCopy = v9;
  }

  return v6;
}

- (NSDate)lastRefreshDescriptorDate
{
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_lastRefreshDescriptorDate = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_lastRefreshDescriptorDate];
  os_unfair_lock_unlock(&self->_accessLock);

  return _accessLock_lastRefreshDescriptorDate;
}

- (BSBuildVersion)lastRefreshStashedBuildVersion
{
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_lastRefreshStashedBuildVersion = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_lastRefreshStashedBuildVersion];
  os_unfair_lock_unlock(&self->_accessLock);

  return _accessLock_lastRefreshStashedBuildVersion;
}

- (NSString)lastRefreshDescriptorReason
{
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_lastRefreshDescriptorReason = [(PBFPosterExtensionStoreCoordinator *)&self->super.isa _accessLock_lastRefreshDescriptorReason];
  os_unfair_lock_unlock(&self->_accessLock);

  return _accessLock_lastRefreshDescriptorReason;
}

- (void)updateLastRefreshDescriptorDateWithReason:(id)reason
{
  if (!self->_readonly)
  {
    v5 = MEMORY[0x277CBEAA8];
    reasonCopy = reason;
    date = [v5 date];
    os_unfair_lock_lock(&self->_accessLock);
    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_bumpLastRefreshDescriptorDate:date reason:reasonCopy];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)removeLastRefreshDescriptorDate
{
  v2 = OUTLINED_FUNCTION_14_0(self);
  os_unfair_lock_lock(v2);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = OUTLINED_FUNCTION_28();
  [(PBFPosterExtensionStoreCoordinator *)v4 _accessLock_bumpLastRefreshDescriptorDate:v5 reason:v6];

  os_unfair_lock_unlock(v1 + 34);
}

- (id)providerInfoObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_accessLock);
  _accessLock_providerInfo = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_providerInfo];
  os_unfair_lock_unlock(&self->_accessLock);
  v6 = [_accessLock_providerInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)providerInfoSetObject:(id)object forKey:(id)key error:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  v11 = keyCopy;
  if (self->_readonly)
  {
    v12 = 0;
  }

  else
  {
    v14 = keyCopy;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v14)
    {
      [PBFPosterExtensionStoreCoordinator providerInfoSetObject:a2 forKey:? error:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterExtensionStoreCoordinator providerInfoSetObject:a2 forKey:? error:?];
    }

    v15 = objectCopy;
    v16 = v15;
    if (v15 && ([v15 conformsToProtocol:&unk_282D60B50] & 1) == 0)
    {
      [PBFPosterExtensionStoreCoordinator providerInfoSetObject:a2 forKey:? error:?];
    }

    os_unfair_lock_lock(&self->_accessLock);
    v12 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_providerInfoSetObject:v16 forKey:v14 error:error];
    os_unfair_lock_unlock(&self->_accessLock);
  }

  return v12;
}

- (void)deleteProviderInfo
{
  if (!self->_readonly)
  {
    os_unfair_lock_lock(&self->_accessLock);
    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_deleteProviderInfo];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

+ (id)providerInfoURLForContainerURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"ProviderInfo"];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

void __83__PBFPosterExtensionStoreCoordinator__invalidateAndDeleteStoreCoordinatorsForType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 invalidate];
  v5 = *(a1 + 32);
  v6 = [v4 identifierURL];

  [v5 removeItemAtURL:v6 error:0];
}

- (id)determineRefreshStateWithContext:(id)context
{
  v103[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  component = [contextCopy component];
  userInfo = [contextCopy userInfo];
  v8 = [userInfo objectForKey:@"extension"];

  posterExtensionBundleIdentifier = [v8 posterExtensionBundleIdentifier];
  userInfo2 = [contextCopy userInfo];
  v10 = [userInfo2 objectForKey:@"refreshStrategy"];
  if (v10)
  {
    userInfo3 = [contextCopy userInfo];
    v12 = [userInfo3 objectForKey:@"refreshStrategy"];
    unsignedIntegerValue = [v12 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  if ([component isEqual:@"PBFDataComponentSnapshots"])
  {
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__12;
    v100 = __Block_byref_object_dispose__12;
    v101 = 0;
    v14 = +[PBFGenericDisplayContext mainScreen];
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__12;
    v94 = __Block_byref_object_dispose__12;
    v95 = MEMORY[0x277CBEBF8];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __103__PBFPosterExtensionStoreCoordinator_PBFDataFreshnessStateAdditions__determineRefreshStateWithContext___block_invoke;
    aBlock[3] = &unk_2782C98B8;
    aBlock[4] = &v90;
    aBlock[5] = &v96;
    v15 = _Block_copy(aBlock);
    v16 = +[PBFPosterSnapshotDefinition defaultConfigurationDefinitions];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __103__PBFPosterExtensionStoreCoordinator_PBFDataFreshnessStateAdditions__determineRefreshStateWithContext___block_invoke_2;
    v87[3] = &unk_2782C8980;
    v17 = v14;
    v88 = v17;
    v18 = [v16 bs_mapNoNulls:v87];
    v19 = v91[5];
    v91[5] = v18;

    [(PBFPosterExtensionStoreCoordinator *)self enumerateConfigurationStoreCoordinators:v15];
    if (!v97[5] && ((unsignedIntegerValue == 3) & [v8 pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:0]) == 1)
    {
      v20 = +[PBFPosterSnapshotDefinition gallerySnapshotWithComplicationsDefinition];
      v103[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __103__PBFPosterExtensionStoreCoordinator_PBFDataFreshnessStateAdditions__determineRefreshStateWithContext___block_invoke_3;
      v85[3] = &unk_2782C8980;
      v86 = v17;
      v22 = [v21 bs_mapNoNulls:v85];
      v23 = v91[5];
      v91[5] = v22;

      [(PBFPosterExtensionStoreCoordinator *)self enumerateDescriptorStoreCoordinators:v15];
      if (!v97[5])
      {
        [(PBFPosterExtensionStoreCoordinator *)self enumerateStaticDescriptorStoreCoordinators:v15];
      }
    }

    v24 = v97[5];
    if (!v24)
    {
      v25 = [[PBFDataRefreshState alloc] initWithNeedsRefresh:0 reason:@"snapshots are up to date for %@", posterExtensionBundleIdentifier];
      v26 = v97[5];
      v97[5] = v25;

      v24 = v97[5];
    }

    v27 = v24;

    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v96, 8);

    goto LABEL_43;
  }

  posterExtensionInfoPlist = [v8 posterExtensionInfoPlist];
  pbf_refreshDescriptorsFrequency = [posterExtensionInfoPlist pbf_refreshDescriptorsFrequency];

  posterExtensionInfoPlist2 = [v8 posterExtensionInfoPlist];
  if ([posterExtensionInfoPlist2 pbf_supportsDynamicDescriptors])
  {
    v31 = [v8 pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:0];
  }

  else
  {
    v31 = 0;
  }

  if ([component isEqualToString:@"PBFDataComponentStaticDescriptors"])
  {
    posterExtensionInfoPlist3 = [v8 posterExtensionInfoPlist];
    pbf_staticDescriptorIdentifiers = [posterExtensionInfoPlist3 pbf_staticDescriptorIdentifiers];
    v34 = [pbf_staticDescriptorIdentifiers count];

    if (v34 || (-[PBFPosterExtensionStoreCoordinator staticDescriptorStoreCoordinatorsWithError:](self, "staticDescriptorStoreCoordinatorsWithError:", 0), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 count], v45, !v46))
    {
      v35 = [(PBFPosterExtensionStoreCoordinator *)self providerInfoObjectForKey:@"StaticPersistentIdentifier"];
      if (v35)
      {
        persistentIdentifier = [v8 persistentIdentifier];
        v37 = _LSPersistentIdentifierCompare();
        v38 = [PBFDataRefreshState alloc];
        v39 = _LSPersistentIdentifierGetDebugDescription();
        if (v37)
        {
          v27 = [(PBFDataRefreshState *)v38 initWithNeedsRefresh:0 reason:@"Static descriptors are up to date (%@)", v39];
        }

        else
        {
          v47 = _LSPersistentIdentifierGetDebugDescription();
          v27 = [(PBFDataRefreshState *)v38 initWithNeedsRefresh:1 reason:@"Static descriptors are not up to date; persistent identifier was different -- an updated is needed! (old %@ vs new %@)", v39, v47];
        }
      }

      else
      {
        v27 = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"No persistent identifier; an update is needed!"];
      }
    }

    else
    {
      v27 = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"data store mismatch w/ number of identifiers; an update is needed!"];
    }

    goto LABEL_43;
  }

  if ([component isEqualToString:@"PBFDataComponentDynamicDescriptors"])
  {
    v40 = [(PBFPosterExtensionStoreCoordinator *)self dynamicDescriptorStoreCoordinatorsWithError:0];
    v41 = [v40 count];
    if (v31)
    {
      if (unsignedIntegerValue)
      {
        if (pbf_refreshDescriptorsFrequency)
        {
          if (unsignedIntegerValue == 3)
          {
            v42 = [PBFDataRefreshState alloc];
            v72 = posterExtensionBundleIdentifier;
            v43 = @"(%@) refreshStrategy is PBFDescriptorRefreshStrategyRefreshAlways; so that's what we'll do.";
LABEL_29:
            v44 = 1;
LABEL_41:
            v27 = [(PBFDataRefreshState *)v42 initWithNeedsRefresh:v44 reason:v43, v72, v73];
LABEL_42:

LABEL_43:

            return v27;
          }

          v49 = objc_alloc_init(MEMORY[0x277CF0BB0]);
          lastRefreshStashedBuildVersion = [(PBFPosterExtensionStoreCoordinator *)self lastRefreshStashedBuildVersion];
          if (lastRefreshStashedBuildVersion)
          {
            if ([v49 isEqual:lastRefreshStashedBuildVersion])
            {
              lastRefreshDescriptorDate = [(PBFPosterExtensionStoreCoordinator *)self lastRefreshDescriptorDate];
              v52 = lastRefreshDescriptorDate;
              if (lastRefreshDescriptorDate)
              {
                distantPast = lastRefreshDescriptorDate;
              }

              else
              {
                distantPast = [MEMORY[0x277CBEAA8] distantPast];
              }

              v57 = [contextCopy now];
              [v57 timeIntervalSinceDate:distantPast];
              v59 = v58;

              if (unsignedIntegerValue == 1)
              {
                updated = 28800.0;
                if (v59 <= 28800.0)
                {
                  updated = [[PBFDataRefreshState alloc] initWithNeedsRefresh:0 reason:@"(%@) refreshStrategy is PBFDescriptorRefreshStrategyRefreshIfEmpty; extension hosts %lu dynamic descriptors & last refresh date was %@; next sync needed in %f", posterExtensionBundleIdentifier, v41, distantPast, v59 + -28800.0];
                }

                else
                {
                  if (v41)
                  {
                    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
                    v62 = [distantPast isEqual:distantPast2];

                    if (v62)
                    {
                      v83 = 0u;
                      v84 = 0u;
                      v81 = 0u;
                      v82 = 0u;
                      obj = v40;
                      v78 = [obj countByEnumeratingWithState:&v81 objects:v102 count:16];
                      if (v78)
                      {
                        v77 = *v82;
                        while (2)
                        {
                          for (i = 0; i != v78; ++i)
                          {
                            if (*v82 != v77)
                            {
                              objc_enumerationMutation(obj);
                            }

                            pathOfLatestVersion = [*(*(&v81 + 1) + 8 * i) pathOfLatestVersion];
                            if (pathOfLatestVersion)
                            {
                              v65 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:pathOfLatestVersion];
                              pbf_isInitialPosterDescriptor = [v65 pbf_isInitialPosterDescriptor];

                              if (pbf_isInitialPosterDescriptor)
                              {
                                continue;
                              }
                            }

                            goto LABEL_69;
                          }

                          v78 = [obj countByEnumeratingWithState:&v81 objects:v102 count:16];
                          if (v78)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      updated = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"(%@) refreshStrategy is PBFDescriptorRefreshStrategyRefreshIfEmpty; all stored descriptors are initial placeholders, so an update is needed!", posterExtensionBundleIdentifier];
                      goto LABEL_74;
                    }

                    goto LABEL_69;
                  }

                  updated = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"(%@) refreshStrategy is PBFDescriptorRefreshStrategyRefreshIfEmpty; there are no descriptors and no refresh attempt within the last 8 hours, so an update is needed!", posterExtensionBundleIdentifier, v73, v74, v75];
                }

LABEL_74:
                v27 = updated;

                goto LABEL_75;
              }

              component2 = [contextCopy component];
              updated = PBFDefaultUpdateIntervalForDataComponent(component2);

LABEL_69:
              v69 = [PBFDataRefreshState alloc];
              if (v59 <= updated)
              {
                updated = [(PBFDataRefreshState *)v69 initWithNeedsRefresh:0 reason:@"Dynamic descriptors are up to date, update needed in %f seconds", updated - v59];
              }

              else
              {
                updated = [(PBFDataRefreshState *)v69 initWithNeedsRefresh:1 reason:@"Dynamic descriptors have exceeded expiration interval '%f' by %f seconds; needs update", *&updated, v59 - updated];
              }

              goto LABEL_74;
            }

            v56 = [PBFDataRefreshState alloc];
            v54 = PBFDescriptorRefreshStrategyToString(unsignedIntegerValue);
            v55 = [(PBFDataRefreshState *)v56 initWithNeedsRefresh:1 reason:@"(%@) refreshStrategy is %@; stashed build version (%@) does not match current build version (%@)", posterExtensionBundleIdentifier, v54, lastRefreshStashedBuildVersion, v49];
          }

          else
          {
            v53 = [PBFDataRefreshState alloc];
            v54 = PBFDescriptorRefreshStrategyToString(unsignedIntegerValue);
            v55 = [(PBFDataRefreshState *)v53 initWithNeedsRefresh:1 reason:@"(%@) refreshStrategy is %@; however there is no stashedBuildVersion, so we should proceed (%@)", posterExtensionBundleIdentifier, v54, v49, v75];
          }

          v27 = v55;

LABEL_75:
          goto LABEL_42;
        }

        v42 = [PBFDataRefreshState alloc];
        v72 = posterExtensionBundleIdentifier;
        v43 = @"(%@) Extension requested no automatic updates ever";
      }

      else
      {
        v42 = [PBFDataRefreshState alloc];
        v72 = posterExtensionBundleIdentifier;
        v43 = @"(%@) Refresh Strategy was PBFDescriptorRefreshStrategyRefreshNo; skipping all refresh checks.";
      }
    }

    else
    {
      v42 = [PBFDataRefreshState alloc];
      if (v41)
      {
        v72 = posterExtensionBundleIdentifier;
        v73 = v41;
        v43 = @"(%@) Dynamic descriptors are not supported, but the data store has %lu; an updated is needed!";
        goto LABEL_29;
      }

      v72 = posterExtensionBundleIdentifier;
      v73 = 0;
      v43 = @"(%@) Dynamic descriptors are not supported, but the data store has %lu - no update is needed.";
    }

    v44 = 0;
    goto LABEL_41;
  }

  v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"unhandled component: %@", component];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(PBFPosterExtensionStoreCoordinator(PBFDataFreshnessStateAdditions) *)a2 determineRefreshStateWithContext:v70];
  }

  v71 = v70;
  [v70 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __103__PBFPosterExtensionStoreCoordinator_PBFDataFreshnessStateAdditions__determineRefreshStateWithContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 role];
  v7 = [v6 isEqual:*MEMORY[0x277D3EBC0]];

  if (v7)
  {
    v8 = [v5 identityOfLatestVersion];
    v9 = [v5 pbf_posterSnapshotCoordinatorForIdentity:v8];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          if (([v9 snapshotExistsForContext:v15] & 1) == 0)
          {
            v16 = [PBFDataRefreshState alloc];
            v17 = [v15 definition];
            v18 = [v17 uniqueIdentifier];
            v19 = [v15 displayContext];
            v20 = [v19 pbf_interfaceOrientation];
            v21 = [(PBFDataRefreshState *)v16 initWithNeedsRefresh:1 reason:@"snapshot missing for definition %@ and orientation %lu", v18, v20, v24];
            v22 = *(*(a1 + 40) + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;

            *a3 = 1;
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)_accessLock_setupEnvironmentIfNecessary
{
  if (self)
  {
    if ([*(self + 128) getFlag])
    {
      OUTLINED_FUNCTION_10_0();
      v3 = [v2 pbf_generalErrorWithCode:? userInfo:?];
      goto LABEL_24;
    }

    v4 = *(self + 140);
    v5 = *(self + 40);
    v6 = *(self + 8);
    v26 = *(self + 32);
    v7 = *(self + 16);
    v8 = *(self + 24);
    v9 = *(self + 120);
    if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0 && (v4 & 1) == 0)
    {
      v10 = PFFileProtectionNoneAttributes();
      v12 = OUTLINED_FUNCTION_20(v9, v11, v5);
      v3 = 0;

      if (!v12)
      {
        goto LABEL_23;
      }
    }

    if (([v6 checkResourceIsReachableAndReturnError:{0, v26}] & 1) == 0 && (v4 & 1) == 0)
    {
      v13 = PFFileProtectionNoneAttributes();
      v15 = OUTLINED_FUNCTION_20(v9, v14, v6);
      v3 = 0;

      if (!v15)
      {
        goto LABEL_23;
      }
    }

    if (([v7 checkResourceIsReachableAndReturnError:0] & 1) == 0 && (v4 & 1) == 0)
    {
      v16 = PFFileProtectionNoneAttributes();
      v18 = OUTLINED_FUNCTION_20(v9, v17, v7);
      v3 = 0;

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    if ([v26 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (v4)
    {
LABEL_20:
      if (([v8 checkResourceIsReachableAndReturnError:0] & 1) == 0 && (v4 & 1) == 0)
      {
        v22 = PFFileProtectionNoneAttributes();
        v24 = OUTLINED_FUNCTION_20(v9, v23, v8);
        v3 = 0;

        if (!v24)
        {
          goto LABEL_23;
        }
      }

      [(PBFPosterExtensionStoreCoordinator *)self _correctPermissionsForInternalDirectories];
      v3 = 0;
      goto LABEL_23;
    }

    v19 = PFFileProtectionNoneAttributes();
    v21 = OUTLINED_FUNCTION_20(v9, v20, v26);
    v3 = 0;

    if (v21)
    {

      goto LABEL_20;
    }

LABEL_23:

    goto LABEL_24;
  }

  v3 = 0;
LABEL_24:

  return v3;
}

- (id)_accessLock_deleteEnvironment
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = OUTLINED_FUNCTION_14_0(self);
    PBFDebug_os_unfair_lock_assert_owner(v2);
    if (*(v1 + 140) == 1)
    {
      OUTLINED_FUNCTION_12_0();
      v4 = [v3 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
LABEL_6:
      v6 = v4;
      goto LABEL_9;
    }

    if ([*(v1 + 128) getFlag])
    {
      OUTLINED_FUNCTION_10_0();
      v4 = [v5 pbf_generalErrorWithCode:? userInfo:?];
      goto LABEL_6;
    }

    if (*(v1 + 140))
    {
      v7 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA470];
      v16 = @"Cannot delete environment; readonly extension store coordinator";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v6 = [v7 pbf_generalErrorWithCode:1 userInfo:v8];
    }

    else
    {
      [(PBFPosterExtensionStoreCoordinator *)v1 _accessLock_enumerateModelStoreCoordinators:?];
      v10 = *(v1 + 120);
      v11 = *(v1 + 40);
      v14 = 0;
      [v10 removeItemAtURL:v11 error:&v14];
      v6 = v14;
      v12 = PBFLogReaper();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v1 + 40);
        *buf = 138543618;
        v18 = v1;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting environment %{public}@", buf, 0x16u);
      }

      [*(v1 + 96) removeAllObjects];
      [*(v1 + 88) removeAllObjects];
      [*(v1 + 80) removeAllObjects];
      [*(v1 + 104) removeAllObjects];
      [*(v1 + 112) removeAllObjects];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (void)_accessLock_enumerateModelStoreCoordinators:(uint64_t)coordinators
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (coordinators)
  {
    PBFDebug_os_unfair_lock_assert_owner(coordinators + 136);
    if (v3)
    {
      v4 = [(PBFPosterExtensionStoreCoordinator *)coordinators _accessLock_modelStoreCoordinatorsForType:?];
      v5 = [(PBFPosterExtensionStoreCoordinator *)coordinators _accessLock_modelStoreCoordinatorsForType:?];
      v6 = [(PBFPosterExtensionStoreCoordinator *)coordinators _accessLock_modelStoreCoordinatorsForType:?];
      v7 = [(PBFPosterExtensionStoreCoordinator *)coordinators _accessLock_modelStoreCoordinatorsForType:?];
      v8 = MEMORY[0x277CBEC10];
      v9 = vdupq_n_s64(MEMORY[0x277CBEC10]);
      v10 = vbslq_s8(vceqzq_s64(*(coordinators + 88)), v9, *(coordinators + 88));
      v11 = vbslq_s8(vceqzq_s64(*(coordinators + 104)), v9, *(coordinators + 104));
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v34[0] = v10;
      v34[1] = v11;
      if (*(coordinators + 80))
      {
        v8 = *(coordinators + 80);
      }

      v35 = v8;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            objectEnumerator = [v17 objectEnumerator];
            v19 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v26;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v26 != v21)
                  {
                    objc_enumerationMutation(objectEnumerator);
                  }

                  v23 = *(*(&v25 + 1) + 8 * j);
                  v24 = 0;
                  v3[2](v3, v23, &v24);
                  if (v24)
                  {

                    goto LABEL_23;
                  }
                }

                v20 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v36 count:16];
        }

        while (v14);
      }

LABEL_23:
    }
  }
}

- (uint64_t)_accessLock_teardownModelStoreCoordinator:(void *)coordinator posterUUID:(void *)d error:
{
  v30[1] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (self)
  {
    PBFDebug_os_unfair_lock_assert_owner(self + 136);
    if ([*(self + 128) getFlag])
    {
      if (d)
      {
        OUTLINED_FUNCTION_10_0();
        v9 = [v8 pbf_generalErrorWithCode:? userInfo:?];
LABEL_8:
        self = 0;
        *d = v9;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (*(self + 140) == 1)
    {
      if (d)
      {
        OUTLINED_FUNCTION_12_0();
        v9 = [v10 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
        goto LABEL_8;
      }

LABEL_9:
      self = 0;
      goto LABEL_10;
    }

    v12 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:coordinatorCopy type:a2];
    v13 = v12;
    if (v12)
    {
      [v12 invalidate];
      switch(a2)
      {
        case 0:
          if (!d)
          {
            goto LABEL_18;
          }

          v14 = MEMORY[0x277CCA9B8];
          v25 = @"posterUUID";
          v15 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:coordinatorCopy];
          v26 = v15;
          v16 = MEMORY[0x277CBEAC0];
          v17 = &v26;
          v18 = &v25;
          goto LABEL_17;
        case 1:
          v20 = (self + 88);
          goto LABEL_26;
        case 2:
          v20 = (self + 96);
          goto LABEL_26;
        case 3:
          v20 = (self + 104);
          v21 = [*(self + 104) objectForKey:coordinatorCopy];

          if (v21)
          {
            goto LABEL_26;
          }

          v20 = (self + 112);
          v22 = [*(self + 112) objectForKey:coordinatorCopy];

          if (v22)
          {
            goto LABEL_26;
          }

          if (!d)
          {
            goto LABEL_18;
          }

          v14 = MEMORY[0x277CCA9B8];
          v27 = @"posterUUID";
          v15 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:coordinatorCopy];
          v28 = v15;
          v16 = MEMORY[0x277CBEAC0];
          v17 = &v28;
          v18 = &v27;
          goto LABEL_17;
        case 4:
          v20 = (self + 80);
LABEL_26:
          [*v20 removeObjectForKey:coordinatorCopy];
          goto LABEL_27;
        default:
LABEL_27:
          v23 = *(self + 120);
          identifierURL = [v13 identifierURL];
          self = [v23 removeItemAtURL:identifierURL error:d];

          goto LABEL_28;
      }
    }

    if (d)
    {
      v14 = MEMORY[0x277CCA9B8];
      v29 = @"posterUUID";
      v15 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:coordinatorCopy];
      v30[0] = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v30;
      v18 = &v29;
LABEL_17:
      v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
      *d = [v14 pbf_extensionStoreCoordinatorErrorWithCode:-1109 userInfo:v19];
    }

LABEL_18:
    self = 0;
LABEL_28:
  }

LABEL_10:

  return self;
}

- (id)_accessLock_modelStoreCoordinatorSetForType:(void *)type error:
{
  if (!self)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  PBFDebug_os_unfair_lock_assert_owner(self + 136);
  if ([*(self + 128) getFlag])
  {
    if (type)
    {
      OUTLINED_FUNCTION_10_0();
      [v6 pbf_generalErrorWithCode:? userInfo:?];
      *type = v7 = 0;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorsForType:a2];
  allValues = [v9 allValues];

  v7 = [MEMORY[0x277CBEB98] setWithArray:allValues];

LABEL_6:

  return v7;
}

- (id)ensureFileSystemIntegrity
{
  v3 = OUTLINED_FUNCTION_14_0(self);
  os_unfair_lock_lock(v3);
  [(PBFPosterExtensionStoreCoordinator *)v2 _accessLock_enumerateModelStoreCoordinators:?];
  [(PBFPosterExtensionStoreCoordinator *)v2 _correctPermissionsForInternalDirectories];
  os_unfair_lock_unlock((v2 + 136));
  return 0;
}

- (void)_correctPermissionsForInternalDirectories
{
  v60 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = PBFLogPosterContents();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = self[5];
      *buf = 138412290;
      v57 = v3;
      _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "[PBFPosterExtensionStoreCoordinator ensureFileSystemIntegrity]> Correcting filesystem permissions for URLs related to %@", buf, 0xCu);
    }

    v4 = objc_opt_new();
    [v4 bs_safeAddObject:self[5]];
    [v4 bs_safeAddObject:self[7]];
    [v4 bs_safeAddObject:self[6]];
    [v4 bs_safeAddObject:self[4]];
    [v4 bs_safeAddObject:self[1]];
    [v4 bs_safeAddObject:self[2]];
    [v4 bs_safeAddObject:self[3]];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v53;
      v10 = *MEMORY[0x277CBE800];
      *&v7 = 138412546;
      v48 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v52 + 1) + 8 * v11);
          v51 = 0;
          v13 = [v12 pbf_setFileProtection:v10 error:{&v51, v48}];
          v14 = v51;
          v15 = v14;
          if ((v13 & 1) == 0)
          {
            pf_isFileNotFoundError = [v14 pf_isFileNotFoundError];
            v17 = PBFLogPosterContents();
            v18 = v17;
            if (pf_isFileNotFoundError)
            {
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v57 = v12;
                _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[PBFPosterExtensionStoreCoordinator _correctPermissionsForInternalDirectories]> skipping nonexistent file %@", buf, 0xCu);
              }

              goto LABEL_25;
            }

            v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            if (v19)
            {
              OUTLINED_FUNCTION_5_3(v19, v20, v21, v22, v23, v24, v25, v26, v48);
              v58 = v15;
              _os_log_error_impl(&dword_21B526000, v18, OS_LOG_TYPE_ERROR, "[PBFPosterExtensionStoreCoordinator _correctPermissionsForInternalDirectories]> failed to correct file protection for file %@: %{public}@", buf, 0x16u);
            }
          }

          v50 = 0;
          v27 = [v12 pbf_setPurgable:0 error:&v50];
          v18 = v50;
          if ((v27 & 1) == 0)
          {
            v28 = PBFLogPosterContents();
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            if (v29)
            {
              OUTLINED_FUNCTION_5_3(v29, v30, v31, v32, v33, v34, v35, v36, v48);
              v58 = v18;
              _os_log_error_impl(&dword_21B526000, v28, OS_LOG_TYPE_ERROR, "[PBFPosterExtensionStoreCoordinator _correctPermissionsForInternalDirectories]> failed to correct purgability for file %@: %{public}@", buf, 0x16u);
            }
          }

          v49 = 0;
          v37 = [v12 pf_setExcludedFromBackup:0 error:&v49];
          v38 = v49;
          if ((v37 & 1) == 0)
          {
            v39 = PBFLogPosterContents();
            v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
            if (v40)
            {
              OUTLINED_FUNCTION_5_3(v40, v41, v42, v43, v44, v45, v46, v47, v48);
              v58 = v38;
              _os_log_error_impl(&dword_21B526000, v39, OS_LOG_TYPE_ERROR, "[PBFPosterExtensionStoreCoordinator _correctPermissionsForInternalDirectories]> failed to correct exclude from backup state for file %@: %{public}@", buf, 0x16u);
            }
          }

LABEL_25:
          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v8);
    }
  }
}

- (id)_modelStoreCoordinatorsForType:(uint64_t)type
{
  if (type)
  {
    v2 = OUTLINED_FUNCTION_14_0(type);
    os_unfair_lock_lock(v2);
    v3 = OUTLINED_FUNCTION_28();
    v5 = [(PBFPosterExtensionStoreCoordinator *)v3 _accessLock_modelStoreCoordinatorsForType:v4];
    os_unfair_lock_unlock(v1 + 34);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessLock_modelStoreCoordinatorForPosterUUID:(uint64_t)d type:
{
  if (self)
  {
    v5 = a2;
    PBFDebug_os_unfair_lock_assert_owner(self + 136);
    v6 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorsForType:d];
    v7 = [v6 objectForKey:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_modelStoreCoordinatorSetForType:(void *)type error:
{
  if (self)
  {
    v6 = OUTLINED_FUNCTION_14_0(self);
    os_unfair_lock_lock(v6);
    v7 = [(PBFPosterExtensionStoreCoordinator *)v3 _accessLock_modelStoreCoordinatorSetForType:a2 error:type];
    os_unfair_lock_unlock(v3 + 34);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dynamicDescriptorStoreCoordinatorForPosterUUID:(id)d
{
  dCopy = d;
  v5 = OUTLINED_FUNCTION_16_0();
  v6 = [PBFPosterExtensionStoreCoordinator _modelStoreCoordinatorsForType:v5];
  v7 = [v6 objectForKey:v3];

  return v7;
}

- (id)dynamicDescriptorStoreCoordinatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = OUTLINED_FUNCTION_16_0();
  v6 = [PBFPosterExtensionStoreCoordinator _modelStoreCoordinatorsForType:v5];
  allValues = [v6 allValues];
  OUTLINED_FUNCTION_2_5();
  v12 = 3221225472;
  v13 = __85__PBFPosterExtensionStoreCoordinator_dynamicDescriptorStoreCoordinatorForIdentifier___block_invoke;
  v14 = &unk_2782C8BB0;
  v15 = v3;
  v8 = v3;
  v9 = [allValues bs_firstObjectPassingTest:v11];

  return v9;
}

- (id)dynamicPosterDescriptorLatestVersionPaths
{
  v2 = [(PBFPosterExtensionStoreCoordinator *)self _modelStoreCoordinatorSetForType:0 error:?];
  v3 = [v2 bs_map:&__block_literal_global_51];

  return v3;
}

- (id)_accessLock_createModelStoreCoordinator:(void *)coordinator posterUUID:(void *)d descriptorIdentifier:(void *)identifier role:(void *)role error:
{
  v90 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  dCopy = d;
  identifierCopy = identifier;
  if (!self)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  PBFDebug_os_unfair_lock_assert_owner(self + 136);
  if ([*(self + 128) getFlag])
  {
    if (role)
    {
      OUTLINED_FUNCTION_10_0();
      v15 = [v14 pbf_generalErrorWithCode:? userInfo:?];
LABEL_8:
      v17 = 0;
      *role = v15;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (*(self + 140) == 1)
  {
    if (role)
    {
      OUTLINED_FUNCTION_12_0();
      v15 = [v16 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v19 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:coordinatorCopy type:a2];
  v20 = v19;
  if (!v19)
  {
    if (PFPosterRoleIsValid())
    {
      v21 = identifierCopy;
    }

    else
    {
      v21 = PRPosterRoleLookupForExtensionBundleIdentifier(*(self + 144), dCopy);

      v22 = PBFLogPosterContents();
      if (OUTLINED_FUNCTION_21(v22))
      {
        *buf = 136446466;
        v87 = "[PBFPosterExtensionStoreCoordinator _accessLock_createModelStoreCoordinator:posterUUID:descriptorIdentifier:role:error:]";
        v88 = 2112;
        v89 = v21;
        OUTLINED_FUNCTION_9_1();
        _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      }
    }

    v28 = [(PBFPosterExtensionStoreCoordinator *)self _containerURLForType:a2];
    uUIDString = [coordinatorCopy UUIDString];
    v77 = [v28 URLByAppendingPathComponent:uUIDString isDirectory:1];

    switch(a2)
    {
      case 0:
        if (role)
        {
          [MEMORY[0x277CCA9B8] pbf_extensionStoreCoordinatorErrorWithCode:-1111 userInfo:0];
          *role = v17 = 0;
        }

        else
        {
          v17 = 0;
        }

        v43 = v77;
        goto LABEL_54;
      case 1:
        OUTLINED_FUNCTION_4_4();
        v31 = [v40 descriptorIdentityWithProvider:? identifier:? role:? posterUUID:? version:?];
        OUTLINED_FUNCTION_25();
        [v41 pathWithProviderURL:? identity:?];
        v79 = 0;
        v75 = v33 = &v79;
        v34 = [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:"createNewStoreCoordinatorWithPath:error:" error:?];
        v35 = 88;
        goto LABEL_28;
      case 2:
        OUTLINED_FUNCTION_4_4();
        v31 = [v36 staticDescriptorIdentityWithProvider:? identifier:? role:? posterUUID:? version:?];
        OUTLINED_FUNCTION_25();
        [v37 pathWithProviderURL:? identity:?];
        v80 = 0;
        v75 = v33 = &v80;
        v34 = [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:"createNewStoreCoordinatorWithPath:error:" error:?];
        v35 = 96;
        goto LABEL_28;
      case 3:
        OUTLINED_FUNCTION_4_4();
        v31 = [v38 configurationIdentityWithProvider:? identifier:? role:? posterUUID:? version:? supplement:?];
        OUTLINED_FUNCTION_25();
        [v39 pathWithProviderURL:? identity:?];
        v81 = 0;
        v75 = v33 = &v81;
        v34 = [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:"createNewStoreCoordinatorWithPath:error:" error:?];
        v35 = 104;
        goto LABEL_28;
      case 4:
        OUTLINED_FUNCTION_4_4();
        v31 = [v30 suggestionDescriptorIdentityWithProvider:? identifier:? role:? posterUUID:? version:?];
        OUTLINED_FUNCTION_25();
        [v32 pathWithProviderURL:? identity:?];
        v78 = 0;
        v75 = v33 = &v78;
        v34 = [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:"createNewStoreCoordinatorWithPath:error:" error:?];
        v35 = 80;
LABEL_28:
        v42 = *v33;
        v76 = *(self + v35);
        v43 = v77;
        if (!v42)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      default:
        v75 = [MEMORY[0x277D3EBA0] pathWithProviderURL:*(self + 40) identity:0];
        v76 = 0;
        v34 = 0;
        v31 = 0;
        v43 = v77;
LABEL_31:
        identifierURL = [v34 identifierURL];
        v45 = [identifierURL isEqual:v43];

        v74 = v31;
        if (v45)
        {
          v42 = 0;
        }

        else
        {
          v73 = v21;
          v46 = MEMORY[0x277CCA9B8];
          v47 = *MEMORY[0x277CCA470];
          v85[0] = @"unexpected identifierURL for model store coordinator";
          v48 = *MEMORY[0x277CCA760];
          v84[0] = v47;
          v84[1] = v48;
          v49 = v43;
          if (!v43)
          {
            v49 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"file://null"];
          }

          v85[1] = v49;
          v84[2] = *MEMORY[0x277CCA748];
          identifierURL2 = [v34 identifierURL];
          v51 = identifierURL2;
          if (!identifierURL2)
          {
            v51 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"file://null"];
          }

          v85[2] = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
          v42 = [v46 pbf_extensionStoreCoordinatorErrorWithCode:-1111 userInfo:v52];

          if (!identifierURL2)
          {
          }

          v43 = v77;
          if (!v77)
          {
          }

          v21 = v73;
        }

        ensureFileSystemIntegrity = [v34 ensureFileSystemIntegrity];
        v54 = PBFLogPosterContents();
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
        if (ensureFileSystemIntegrity)
        {
          if (!v55)
          {
            goto LABEL_46;
          }

          *buf = 138543618;
          v87 = coordinatorCopy;
          v88 = 2114;
          v89 = ensureFileSystemIntegrity;
          OUTLINED_FUNCTION_17();
        }

        else
        {
          if (!v55)
          {
            goto LABEL_46;
          }

          *buf = 138543362;
          v87 = coordinatorCopy;
          v56 = &dword_21B526000;
          v59 = "file system integrity assuaged for %{public}@";
          v60 = buf;
          v57 = v54;
          v58 = OS_LOG_TYPE_ERROR;
          v61 = 12;
        }

        _os_log_error_impl(v56, v57, v58, v59, v60, v61);
LABEL_46:

        if (v42)
        {
          v31 = v74;
LABEL_48:
          if (role)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        v31 = v74;
        if (v76)
        {
          [v76 bs_setSafeObject:v34 forKey:coordinatorCopy];
        }

        else
        {
          v65 = MEMORY[0x277CCA9B8];
          v82 = *MEMORY[0x277CCA470];
          v83 = @"model store coordinator could not be created";
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v42 = [v65 pbf_extensionStoreCoordinatorErrorWithCode:-1111 userInfo:v66];

          [0 bs_setSafeObject:v34 forKey:coordinatorCopy];
          if (v42)
          {
            v76 = 0;
            if (role)
            {
LABEL_49:
              v62 = v42;
              *role = v42;
            }

LABEL_50:
            v63 = PBFLogPosterContents();
            v64 = v75;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v87 = "[PBFPosterExtensionStoreCoordinator _accessLock_createModelStoreCoordinator:posterUUID:descriptorIdentifier:role:error:]";
              v88 = 2112;
              v89 = v42;
              OUTLINED_FUNCTION_17();
              _os_log_error_impl(v67, v68, v69, v70, v71, v72);
            }

            v17 = 0;
LABEL_53:

LABEL_54:
            identifierCopy = v21;
            goto LABEL_15;
          }
        }

        v34 = v34;
        v17 = v34;
        v64 = v75;
        goto LABEL_53;
    }
  }

  v17 = v19;
LABEL_15:

LABEL_10:

  return v17;
}

- (BOOL)teardownDynamicDescriptorStoreCoordinatorForPosterUUID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  LOBYTE(error) = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:dCopy posterUUID:error error:?];

  os_unfair_lock_unlock(&self->_accessLock);
  return error;
}

- (void)_invalidateAndDeleteStoreCoordinatorsForType:(uint64_t)type
{
  if (type && (OUTLINED_FUNCTION_22(type) & 1) == 0 && (*(v2 + 140) & 1) == 0)
  {
    v4 = *(v2 + 120);
    os_unfair_lock_lock((v2 + 136));
    v5 = OUTLINED_FUNCTION_28();
    v7 = [(PBFPosterExtensionStoreCoordinator *)v5 _accessLock_modelStoreCoordinatorsForType:v6];
    OUTLINED_FUNCTION_2_5();
    v14 = 3221225472;
    v15 = __83__PBFPosterExtensionStoreCoordinator__invalidateAndDeleteStoreCoordinatorsForType___block_invoke;
    v16 = &unk_2782C8C70;
    v8 = v4;
    v17 = v8;
    [v7 bs_each:v13];

    v9 = OUTLINED_FUNCTION_28();
    v11 = [(PBFPosterExtensionStoreCoordinator *)v9 _containerURLForType:v10];
    [OUTLINED_FUNCTION_30() removeItemAtURL:? error:?];
    v12 = PFFileProtectionNoneAttributes();
    [OUTLINED_FUNCTION_30() createDirectoryAtURL:? withIntermediateDirectories:? attributes:? error:?];

    if ((a2 - 1) <= 3)
    {
      [*(v2 + qword_21B6D77F0[a2 - 1]) removeAllObjects];
    }

    os_unfair_lock_unlock((v2 + 136));
  }
}

- (id)_accessLock_modelStoreCoordinatorsForType:(uint64_t)type
{
  v183 = *MEMORY[0x277D85DE8];
  if (!type)
  {
LABEL_4:
    v7 = 0;
    goto LABEL_100;
  }

  v6 = OUTLINED_FUNCTION_14_0(type);
  PBFDebug_os_unfair_lock_assert_owner(v6);
  switch(a2)
  {
    case 0:
      v7 = MEMORY[0x277CBEC10];
      goto LABEL_100;
    case 1:
      v8 = *(v2 + 88);
      if (!v8)
      {
        OUTLINED_FUNCTION_8_1();
        v129 = [v128 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
        v130 = objc_opt_new();
        v131 = *(v2 + 88);
        *(v2 + 88) = v130;

        memset(v178, 0, sizeof(v178));
        v132 = v129;
        v134 = OUTLINED_FUNCTION_32(v132, v133, v178, v182);
        if (v134)
        {
          v135 = v134;
          OUTLINED_FUNCTION_27();
          *&v136 = 138543874;
          v172 = v136;
          do
          {
            OUTLINED_FUNCTION_29();
            do
            {
              OUTLINED_FUNCTION_13_1();
              if (!v18)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v178[0] + 1) + 8 * v129) lastPathComponent];
              objc_claimAutoreleasedReturnValue();
              v137 = [OUTLINED_FUNCTION_33() initWithUUIDString:v4];
              if (v137)
              {
                v138 = [PBFPosterDescriptorStoreCoordinator alloc];
                v140 = OUTLINED_FUNCTION_11_1(v138, v139);
                checkEnvironmentConsistency = [v140 checkEnvironmentConsistency];
                v143 = checkEnvironmentConsistency;
                if (!v140 || checkEnvironmentConsistency)
                {
                  OUTLINED_FUNCTION_26();
                  v144 = PBFLogReaper();
                  v145 = OUTLINED_FUNCTION_21(v144);
                  if (v3)
                  {
                    if (v145)
                    {
                      OUTLINED_FUNCTION_0_4(v145, v146, v147, v148, v149, v150, v151, v152, v153);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v154, v155, v156, "Consistency error for descriptor store coordinator '%{public}@': %{public}@... readonly... skipping... %{public}@", v157, 0x20u);
                    }
                  }

                  else
                  {
                    if (v145)
                    {
                      OUTLINED_FUNCTION_0_4(v145, v146, v147, v148, v149, v150, v151, v152, v153);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v158, v159, v160, "Consistency error for descriptor store coordinator '%{public}@': %{public}@... deleting %{public}@", v161, 0x20u);
                    }

                    OUTLINED_FUNCTION_19();
                  }

                  OUTLINED_FUNCTION_7_0();
                }

                else
                {
                  OUTLINED_FUNCTION_34(*(v2 + 88), v142);
                }
              }

              OUTLINED_FUNCTION_24();
            }

            while (!v18);
            v135 = OUTLINED_FUNCTION_31(v162, v163, v178, v182, v164, v165, v166, v167, v172, *(&v172 + 1), v173, obj);
          }

          while (v135);
        }

        v8 = *(v2 + 88);
      }

      goto LABEL_99;
    case 2:
      v8 = *(v2 + 96);
      if (!v8)
      {
        OUTLINED_FUNCTION_8_1();
        v51 = [v50 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
        v52 = objc_opt_new();
        v53 = *(v2 + 96);
        *(v2 + 96) = v52;

        memset(v177, 0, sizeof(v177));
        v54 = v51;
        v56 = OUTLINED_FUNCTION_32(v54, v55, v177, v181);
        if (v56)
        {
          v57 = v56;
          OUTLINED_FUNCTION_27();
          *&v58 = 138543874;
          v170 = v58;
          do
          {
            OUTLINED_FUNCTION_29();
            do
            {
              OUTLINED_FUNCTION_13_1();
              if (!v18)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v177[0] + 1) + 8 * v51) lastPathComponent];
              objc_claimAutoreleasedReturnValue();
              v59 = [OUTLINED_FUNCTION_33() initWithUUIDString:v4];
              if (v59)
              {
                v60 = [PBFStaticPosterDescriptorStoreCoordinator alloc];
                v62 = OUTLINED_FUNCTION_11_1(v60, v61);
                checkEnvironmentConsistency2 = [v62 checkEnvironmentConsistency];
                v65 = checkEnvironmentConsistency2;
                if (!v62 || checkEnvironmentConsistency2)
                {
                  OUTLINED_FUNCTION_26();
                  v66 = PBFLogReaper();
                  v67 = OUTLINED_FUNCTION_21(v66);
                  if (v3)
                  {
                    if (v67)
                    {
                      OUTLINED_FUNCTION_0_4(v67, v68, v69, v70, v71, v72, v73, v74, v75);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v76, v77, v78, "Consistency error for static descriptor store coordinator '%{public}@': %{public}@... readonly... skipping... %{public}@", v79, 0x20u);
                    }
                  }

                  else
                  {
                    if (v67)
                    {
                      OUTLINED_FUNCTION_0_4(v67, v68, v69, v70, v71, v72, v73, v74, v75);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v80, v81, v82, "Consistency error for static descriptor store coordinator '%{public}@': %{public}@... deleting %{public}@", v83, 0x20u);
                    }

                    OUTLINED_FUNCTION_19();
                  }

                  OUTLINED_FUNCTION_7_0();
                }

                else
                {
                  OUTLINED_FUNCTION_34(*(v2 + 96), v64);
                }
              }

              OUTLINED_FUNCTION_24();
            }

            while (!v18);
            v57 = OUTLINED_FUNCTION_31(v84, v85, v177, v181, v86, v87, v88, v89, v170, *(&v170 + 1), v173, obj);
          }

          while (v57);
        }

        v8 = *(v2 + 96);
      }

      goto LABEL_99;
    case 3:
      if (*(v2 + 104))
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_8_1();
      v91 = [v90 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
      v92 = objc_opt_new();
      v93 = *(v2 + 104);
      *(v2 + 104) = v92;

      memset(v175, 0, sizeof(v175));
      v94 = v91;
      v96 = OUTLINED_FUNCTION_32(v94, v95, v175, v179);
      if (!v96)
      {
        goto LABEL_72;
      }

      v97 = v96;
      OUTLINED_FUNCTION_27();
      *&v98 = 138543874;
      v171 = v98;
      break;
    case 4:
      v8 = *(v2 + 80);
      if (!v8)
      {
        OUTLINED_FUNCTION_8_1();
        v10 = [v9 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
        v11 = objc_opt_new();
        v12 = *(v2 + 80);
        *(v2 + 80) = v11;

        memset(v176, 0, sizeof(v176));
        v13 = v10;
        v15 = OUTLINED_FUNCTION_32(v13, v14, v176, v180);
        if (v15)
        {
          v16 = v15;
          OUTLINED_FUNCTION_27();
          *&v17 = 138543874;
          v169 = v17;
          do
          {
            OUTLINED_FUNCTION_29();
            do
            {
              OUTLINED_FUNCTION_13_1();
              if (!v18)
              {
                objc_enumerationMutation(obj);
              }

              [*(*(&v176[0] + 1) + 8 * v10) lastPathComponent];
              objc_claimAutoreleasedReturnValue();
              v19 = [OUTLINED_FUNCTION_33() initWithUUIDString:v4];
              if (v19)
              {
                v20 = [PBFSuggestionDescriptorStoreCoordinator alloc];
                v22 = OUTLINED_FUNCTION_11_1(v20, v21);
                checkEnvironmentConsistency3 = [v22 checkEnvironmentConsistency];
                v25 = checkEnvironmentConsistency3;
                if (!v22 || checkEnvironmentConsistency3)
                {
                  OUTLINED_FUNCTION_26();
                  v26 = PBFLogReaper();
                  v27 = OUTLINED_FUNCTION_21(v26);
                  if (v3)
                  {
                    if (v27)
                    {
                      OUTLINED_FUNCTION_0_4(v27, v28, v29, v30, v31, v32, v33, v34, v35);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v36, v37, v38, "Consistency error for suggestion descriptor store coordinator '%{public}@': %{public}@... readonly... skipping... %{public}@", v39, 0x20u);
                    }
                  }

                  else
                  {
                    if (v27)
                    {
                      OUTLINED_FUNCTION_0_4(v27, v28, v29, v30, v31, v32, v33, v34, v35);
                      OUTLINED_FUNCTION_9_1();
                      _os_log_impl(v40, v41, v42, "Consistency error for suggestion descriptor store coordinator '%{public}@': %{public}@... deleting %{public}@", v43, 0x20u);
                    }

                    OUTLINED_FUNCTION_19();
                  }

                  OUTLINED_FUNCTION_7_0();
                }

                else
                {
                  OUTLINED_FUNCTION_34(*(v2 + 80), v24);
                }
              }

              OUTLINED_FUNCTION_24();
            }

            while (!v18);
            v16 = OUTLINED_FUNCTION_31(v44, v45, v176, v180, v46, v47, v48, v49, v169, *(&v169 + 1), v173, obj);
          }

          while (v16);
        }

        v8 = *(v2 + 80);
      }

      goto LABEL_99;
    default:
      goto LABEL_4;
  }

  do
  {
    OUTLINED_FUNCTION_29();
    do
    {
      OUTLINED_FUNCTION_13_1();
      if (!v18)
      {
        objc_enumerationMutation(obj);
      }

      v99 = *(*(&v175[0] + 1) + 8 * v91);
      [v99 lastPathComponent];
      objc_claimAutoreleasedReturnValue();
      v100 = [OUTLINED_FUNCTION_33() initWithUUIDString:v4];
      if (v100)
      {
        v101 = [(PBFPosterModelStoreCoordinator *)[PBFPosterConfigurationStoreCoordinator alloc] initWithProvider:*(v2 + 144) identifierURL:v99 posterUUID:v100 readonly:*(v2 + 140)];
        checkEnvironmentConsistency4 = [(PBFPosterModelStoreCoordinator *)v101 checkEnvironmentConsistency];
        v104 = checkEnvironmentConsistency4;
        if (v101 && !checkEnvironmentConsistency4)
        {
          OUTLINED_FUNCTION_34(*(v2 + 104), v103);
LABEL_68:

          goto LABEL_69;
        }

        OUTLINED_FUNCTION_26();
        v105 = PBFLogReaper();
        v106 = OUTLINED_FUNCTION_21(v105);
        if (v3)
        {
          if (v106)
          {
            OUTLINED_FUNCTION_1_4(v106, v107, v108, v109, v110, v111, v112, v113, v114);
            OUTLINED_FUNCTION_23(v115);
            OUTLINED_FUNCTION_9_1();
            v120 = "Consistency error for configuration store coordinator '%{public}@': %{public}@... readonly... skipping... %{public}@";
            goto LABEL_66;
          }
        }

        else if (v106)
        {
          OUTLINED_FUNCTION_1_4(v106, v107, v108, v109, v110, v111, v112, v113, v114);
          OUTLINED_FUNCTION_23(v121);
          OUTLINED_FUNCTION_9_1();
          v120 = "Consistency error for configuration store coordinator '%{public}@': %{public}@... deleting %{public}@";
LABEL_66:
          _os_log_impl(v116, v117, v118, v120, v119, 0x20u);
        }

        OUTLINED_FUNCTION_7_0();
        goto LABEL_68;
      }

LABEL_69:

      OUTLINED_FUNCTION_24();
    }

    while (!v18);
    v97 = OUTLINED_FUNCTION_31(v122, v123, v175, v179, v124, v125, v126, v127, v171, *(&v171 + 1), v173, obj);
  }

  while (v97);
LABEL_72:

LABEL_73:
  if ([*(v2 + 112) count])
  {
    v7 = [*(v2 + 112) mutableCopy];
    [v7 addEntriesFromDictionary:*(v2 + 104)];
  }

  else
  {
    v8 = *(v2 + 104);
LABEL_99:
    v7 = v8;
  }

LABEL_100:

  return v7;
}

- (BOOL)updateSuggestionDescriptors:(id)descriptors forConfigurationUUID:(id)d error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorsForType:?];
  v11 = [v10 objectForKey:dCopy];

  if (!v11)
  {
    v12 = 0;
    goto LABEL_3;
  }

  v49 = dCopy;
  errorCopy = error;
  selfCopy = self;
  v15 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:dCopy type:3];
  role = [v15 role];

  v48 = v11;
  v16 = [v11 objectForKeyedSubscript:@"suggestionDescriptors"];
  v17 = objc_opt_new();
  memset(v58, 0, sizeof(v58));
  v18 = descriptorsCopy;
  v19 = [v18 countByEnumeratingWithState:v58 objects:v60 count:16];
  v51 = v16;
  if (!v19)
  {

    v11 = v48;
    goto LABEL_28;
  }

  v20 = v19;
  v47 = descriptorsCopy;
  v12 = 0;
  do
  {
    v21 = 0;
    do
    {
      OUTLINED_FUNCTION_13_1();
      if (!v22)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v58[0] + 1) + 8 * v21);
      if ([v23 isServerPosterPath])
      {
        serverIdentity = [v23 serverIdentity];
        posterUUID = [serverIdentity posterUUID];
        uUIDString = [posterUUID UUIDString];
        [v17 addObject:uUIDString];

        goto LABEL_14;
      }

      uUID = [MEMORY[0x277CCAD78] UUID];
      descriptorIdentifier = [v23 descriptorIdentifier];
      v57 = 0;
      v54 = descriptorIdentifier;
      v29 = [(PBFPosterExtensionStoreCoordinator *)selfCopy _accessLock_createModelStoreCoordinator:uUID posterUUID:descriptorIdentifier descriptorIdentifier:role role:&v57 error:?];
      v30 = v57;
      if (v30)
      {
        v31 = v30;
        [v29 invalidate];
        v32 = v31;
LABEL_18:
        uUIDString2 = v32;

        v34 = 0;
        v12 = uUIDString2;
        goto LABEL_21;
      }

      contentsURL = [v23 contentsURL];
      v56 = 0;
      v36 = [v29 addNewVersionWithContents:contentsURL error:&v56];
      v37 = v56;

      if (v37)
      {
        [(PBFPosterExtensionStoreCoordinator *)selfCopy _accessLock_teardownModelStoreCoordinator:uUID posterUUID:0 error:?];
        [v29 invalidate];
        v32 = v37;
        goto LABEL_18;
      }

      uUIDString2 = [uUID UUIDString];
      [v17 addObject:uUIDString2];
      v34 = 1;
LABEL_21:

      if (!v34)
      {
        goto LABEL_25;
      }

LABEL_14:
      ++v21;
    }

    while (v20 != v21);
    v38 = [v18 countByEnumeratingWithState:v58 objects:v60 count:16];
    v20 = v38;
  }

  while (v38);
LABEL_25:

  descriptorsCopy = v47;
  v11 = v48;
  self = selfCopy;
  v16 = v51;
  if (!v12)
  {
LABEL_28:
    array = [v17 array];
    v40 = [array copy];
    [v11 setObject:v40 forKeyedSubscript:@"suggestionDescriptors"];

    memset(v55, 0, sizeof(v55));
    v41 = v16;
    v42 = [v41 countByEnumeratingWithState:v55 objects:v59 count:16];
    if (v42)
    {
      v43 = v42;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          OUTLINED_FUNCTION_13_1();
          if (!v22)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v55[0] + 1) + 8 * i);
          if (([v17 containsObject:v45] & 1) == 0)
          {
            v46 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v45];
            [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:v46 posterUUID:0 error:?];
          }
        }

        v43 = [v41 countByEnumeratingWithState:v55 objects:v59 count:16];
      }

      while (v43);
    }

    v12 = 0;
    v16 = v51;
  }

  dCopy = v49;
  error = errorCopy;
LABEL_3:
  os_unfair_lock_unlock(&self->_accessLock);
  if (error && v12)
  {
    v13 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (void)teardownAllSuggestionDescriptorStoreCoordinators
{
  [(PBFPosterExtensionStoreCoordinator *)self _invalidateAndDeleteStoreCoordinatorsForType:?];

  [(PBFPosterExtensionStoreCoordinator *)self enumerateConfigurationStoreCoordinators:&__block_literal_global_84];
}

- (id)staticDescriptorStoreCoordinatorsWithError:(id *)error
{
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorSetForType:error error:?];
  os_unfair_lock_unlock(&self->_accessLock);

  return v5;
}

- (id)posterStaticDescriptorLatestVersionPaths
{
  v2 = [(PBFPosterExtensionStoreCoordinator *)self _modelStoreCoordinatorSetForType:0 error:?];
  v3 = [v2 bs_map:&__block_literal_global_86];

  return v3;
}

- (id)staticDescriptorStoreCoordinatorForPosterUUID:(id)d
{
  dCopy = d;
  v5 = OUTLINED_FUNCTION_16_0();
  v6 = [PBFPosterExtensionStoreCoordinator _modelStoreCoordinatorsForType:v5];
  v7 = [v6 objectForKey:v3];

  return v7;
}

- (id)staticDescriptorStoreCoordinatorForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = OUTLINED_FUNCTION_16_0();
  v6 = [(PBFPosterExtensionStoreCoordinator *)v5 _modelStoreCoordinatorSetForType:0 error:?];
  OUTLINED_FUNCTION_2_5();
  v11 = 3221225472;
  v12 = __84__PBFPosterExtensionStoreCoordinator_staticDescriptorStoreCoordinatorForIdentifier___block_invoke;
  v13 = &unk_2782C8C20;
  v14 = v3;
  v7 = v3;
  v8 = [v6 bs_firstObjectPassingTest:v10];

  return v8;
}

- (id)configurationStoreCoordinatorForPosterUUID:(id)d
{
  dCopy = d;
  v5 = OUTLINED_FUNCTION_16_0();
  v6 = [PBFPosterExtensionStoreCoordinator _modelStoreCoordinatorsForType:v5];
  v7 = [v6 objectForKey:v3];

  return v7;
}

- (id)createConfigurationStoreCoordinatorForPosterUUID:(id)d descriptorIdentifier:(id)identifier role:(id)role error:(id *)error
{
  roleCopy = role;
  identifierCopy = identifier;
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  v13 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_createModelStoreCoordinator:dCopy posterUUID:identifierCopy descriptorIdentifier:roleCopy role:error error:?];

  os_unfair_lock_unlock(&self->_accessLock);

  return v13;
}

- (uint64_t)_accessLock_teardownModelStoreCoordinator:(void *)coordinator posterUUID:(uint64_t)d version:(void *)version error:
{
  v46[3] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (!self)
  {
    goto LABEL_9;
  }

  PBFDebug_os_unfair_lock_assert_owner(self + 136);
  if (![*(self + 128) getFlag])
  {
    if (*(self + 140) == 1)
    {
      if (version)
      {
        OUTLINED_FUNCTION_12_0();
        v11 = [v12 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
        goto LABEL_8;
      }

LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }

    v15 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:coordinatorCopy type:a2];
    v16 = v15;
    if (v15)
    {
      v36 = a2;
      allPosterPaths = [v15 allPosterPaths];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = [allPosterPaths countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        selfCopy = self;
        versionCopy = version;
        v20 = v16;
        v39 = coordinatorCopy;
        v21 = 0;
        v22 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(allPosterPaths);
            }

            v24 = *(*(&v40 + 1) + 8 * i);
            identity = [v24 identity];
            version = [identity version];

            if (version == d)
            {
              identity2 = [v24 identity];
              supplement = [identity2 supplement];
              identity3 = [v24 identity];
              [v20 removeSupplement:supplement forVersion:objc_msgSend(identity3 error:{"version"), 0}];

              ++v21;
            }
          }

          v19 = [allPosterPaths countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v19);
        v13 = v21 != 0;
        version = versionCopy;
        coordinatorCopy = v39;
        v16 = v20;
        self = selfCopy;
      }

      else
      {
        v13 = 0;
      }

      if (([v16 hasKnownVersions] & 1) == 0)
      {
        v13 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:v36 posterUUID:coordinatorCopy error:version];
      }
    }

    else
    {
      if (!version)
      {
        v13 = 0;
        goto LABEL_28;
      }

      v30 = MEMORY[0x277CCA9B8];
      v45[0] = @"posterUUID";
      v31 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:coordinatorCopy];
      v32 = a2;
      allPosterPaths = v31;
      v46[0] = v31;
      v45[1] = @"type";
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
      v46[1] = v33;
      v45[2] = @"version";
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:d];
      v46[2] = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      *version = [v30 pbf_extensionStoreCoordinatorErrorWithCode:-1108 userInfo:v35];

      v13 = 0;
    }

LABEL_28:
    goto LABEL_10;
  }

  if (!version)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_0();
  v11 = [v10 pbf_generalErrorWithCode:? userInfo:?];
LABEL_8:
  v13 = 0;
  *version = v11;
LABEL_10:

  return v13;
}

- (BOOL)teardownConfigurationStoreCoordinatorForPosterUUID:(id)d error:(id *)error
{
  dCopy = d;
  os_unfair_lock_lock(&self->_accessLock);
  LOBYTE(error) = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_teardownModelStoreCoordinator:dCopy posterUUID:error error:?];

  os_unfair_lock_unlock(&self->_accessLock);
  return error;
}

- (id)_accessLock_stageNewConfigurationStoreCoordinatorForPosterUUID:(void *)d descriptorIdentifier:(void *)identifier role:(void *)role error:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dCopy = d;
  identifierCopy = identifier;
  if (self)
  {
    PBFDebug_os_unfair_lock_assert_owner(self + 17);
    if ([self[16] getFlag])
    {
      if (role)
      {
        OUTLINED_FUNCTION_10_0();
        v13 = [v12 pbf_generalErrorWithCode:? userInfo:?];
LABEL_8:
        self = 0;
        *role = v13;
        goto LABEL_10;
      }

LABEL_9:
      self = 0;
      goto LABEL_10;
    }

    if (*(self + 140) == 1)
    {
      if (role)
      {
        OUTLINED_FUNCTION_12_0();
        v13 = [v14 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v16 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_modelStoreCoordinatorForPosterUUID:v9 type:3];
    v17 = v16;
    if (v16)
    {
      self = v16;
    }

    else
    {
      v39 = MEMORY[0x277CBEBC0];
      v38 = PFTemporaryDirectory();
      v18 = MEMORY[0x277CCACA8];
      uUIDString = [v9 UUIDString];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v22 = [v18 stringWithFormat:@"STAGED_CSC_%@_%f", uUIDString, v21];
      v23 = [v38 stringByAppendingPathComponent:v22];
      v24 = [v39 fileURLWithPath:v23 isDirectory:1];

      v25 = [MEMORY[0x277D3EB98] configurationIdentityWithProvider:self[18] identifier:dCopy role:identifierCopy posterUUID:v9 version:0 supplement:0];
      v40 = v24;
      v26 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v24 identity:v25];
      v41 = 0;
      v27 = [(PBFPosterModelStoreCoordinator *)PBFPosterConfigurationStoreCoordinator createNewStoreCoordinatorWithPath:v26 error:&v41];
      v28 = v41;
      v29 = v28;
      if (v28)
      {
        if (role)
        {
          v30 = v28;
          *role = v29;
        }

        v31 = PBFLogPosterContents();
        v17 = 0;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v42 = 136315394;
          v43 = "[PBFPosterExtensionStoreCoordinator _accessLock_stageNewConfigurationStoreCoordinatorForPosterUUID:descriptorIdentifier:role:error:]";
          v44 = 2112;
          v45 = v29;
          OUTLINED_FUNCTION_17();
          _os_log_error_impl(v32, v33, v34, v35, v36, v37);
        }

        self = 0;
      }

      else
      {
        if (v27)
        {
          [self[14] setObject:v27 forKey:v9];
        }

        self = v27;
        v17 = 0;
      }
    }
  }

LABEL_10:

  return self;
}

- (id)_accessLock_lastRefreshDescriptorDate
{
  if (self && (OUTLINED_FUNCTION_22(self) & 1) == 0)
  {
    _accessLock_transientInternalInfo = [(PBFPosterExtensionStoreCoordinator *)v1 _accessLock_transientInternalInfo];
    v5 = [_accessLock_transientInternalInfo objectForKeyedSubscript:@"lastRefreshDescriptorDate"];
    v6 = v5;
    if (v5)
    {
      distantPast = v5;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v2 = distantPast;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessLock_lastRefreshStashedBuildVersion
{
  if (self && (OUTLINED_FUNCTION_22(self) & 1) == 0)
  {
    _accessLock_providerInfo = [(PBFPosterExtensionStoreCoordinator *)v1 _accessLock_providerInfo];
    v5 = [_accessLock_providerInfo objectForKeyedSubscript:@"lastRefreshStashedBuildVersion"];
    if (v5)
    {
      v2 = [objc_alloc(MEMORY[0x277CF0BB0]) initWithString:v5];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessLock_lastRefreshDescriptorReason
{
  selfCopy = self;
  if (self)
  {
    if ([self[16] getFlag])
    {
      selfCopy = 0;
    }

    else
    {
      _accessLock_transientInternalInfo = [(PBFPosterExtensionStoreCoordinator *)selfCopy _accessLock_transientInternalInfo];
      v4 = [_accessLock_transientInternalInfo objectForKeyedSubscript:@"lastRefreshDescriptorReason"];
      v5 = v4;
      v6 = @"(null)";
      if (v4)
      {
        v6 = v4;
      }

      selfCopy = v6;
    }
  }

  return selfCopy;
}

- (void)_accessLock_bumpLastRefreshDescriptorDate:(void *)date reason:
{
  v15 = a2;
  dateCopy = date;
  if (self && (*(self + 140) & 1) == 0 && ([*(self + 128) getFlag] & 1) == 0)
  {
    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_bumpLastRefreshBuildVersion];
    _accessLock_transientInternalInfo = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_transientInternalInfo];
    v7 = [_accessLock_transientInternalInfo mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    if (v15)
    {
      [v10 setObject:v15 forKeyedSubscript:@"lastRefreshDescriptorDate"];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [OUTLINED_FUNCTION_30() setObject:? forKeyedSubscript:?];
    }

    v12 = [dateCopy copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"No reason!";
    }

    [v10 setObject:v14 forKeyedSubscript:@"lastRefreshDescriptorReason"];

    [(PBFPosterExtensionStoreCoordinator *)self _accessLock_writeTransientInternalInfo:v10 error:0];
  }
}

- (id)_accessLock_providerInfo
{
  if (self)
  {
    if (OUTLINED_FUNCTION_22(self))
    {
      self = 0;
    }

    else
    {
      v3 = *(v1 + 64);
      if (!v3)
      {
        [*(v1 + 56) pbf_setFileProtection:*MEMORY[0x277CBE800] error:0];
        v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:*(v1 + 56)];
        if (v4)
        {
          v5 = extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles();
          v6 = [OUTLINED_FUNCTION_30() unarchivedObjectOfClasses:? fromData:? error:?];
        }

        else
        {
          v6 = 0;
        }

        v7 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v9 = v6;
        }

        else
        {
          v9 = objc_opt_new();
        }

        v10 = *(v1 + 64);
        *(v1 + 64) = v9;

        v3 = *(v1 + 64);
      }

      self = [v3 copy];
    }

    v2 = vars8;
  }

  return self;
}

- (uint64_t)_accessLock_providerInfoSetObject:(void *)object forKey:(uint64_t)key error:
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  objectCopy = object;
  if (self && (*(self + 140) & 1) == 0)
  {
    v9 = 0;
    if (([*(self + 128) getFlag] & 1) == 0 && objectCopy)
    {
      _accessLock_providerInfo = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_providerInfo];
      v12 = [_accessLock_providerInfo mutableCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = objc_opt_new();
      }

      v15 = v14;

      if (v7)
      {
        [v15 setObject:v7 forKey:objectCopy];
      }

      else
      {
        [v15 removeObjectForKey:objectCopy];
      }

      v16 = [v15 copy];
      v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:key];
      if (v17)
      {
        objc_storeStrong((self + 64), v16);
        v18 = *(self + 56);
        v23 = 0;
        v9 = [v17 writeToURL:v18 options:268435457 error:&v23];
        v19 = v23;
        v20 = PBFLogPosterContents();
        v21 = v20;
        if (v9)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            OUTLINED_FUNCTION_15_0();
            v25 = objectCopy;
            _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "%s> Updated provider info for '%{public}@' for key: %{public}@", buf, 0x20u);
          }

          v22 = v16;
          v21 = *(self + 64);
          *(self + 64) = v22;
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_15_0();
          v25 = v19;
          _os_log_error_impl(&dword_21B526000, v21, OS_LOG_TYPE_ERROR, "%s> error archiving provider info: data could not be written for extension '%{public}@': %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_accessLock_deleteProviderInfo
{
  if (result)
  {
    result = OUTLINED_FUNCTION_22(result);
    if ((result & 1) == 0 && (*(v1 + 140) & 1) == 0)
    {
      v2 = *(v1 + 64);
      *(v1 + 64) = MEMORY[0x277CBEC10];

      v3 = *(v1 + 120);
      v4 = *(v1 + 56);

      return [v3 removeItemAtURL:v4 error:0];
    }
  }

  return result;
}

- (id)_accessLock_transientInternalInfo
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if ([self[16] getFlag])
    {
      selfCopy = 0;
      goto LABEL_12;
    }

    v2 = selfCopy[9];
    if (!v2)
    {
      if ([selfCopy[6] checkResourceIsReachableAndReturnError:0])
      {
        [selfCopy[6] pbf_setFileProtection:*MEMORY[0x277CBE800] error:0];
        v3 = selfCopy[6];
        v28 = 0;
        v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:2 error:&v28];
        v5 = v28;
        if (v5)
        {
          v6 = PBFLogPosterContents();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v29 = 136315394;
            v30 = "[PBFPosterExtensionStoreCoordinator _accessLock_transientInternalInfo]";
            v31 = 2112;
            v32 = v5;
            OUTLINED_FUNCTION_17();
            _os_log_error_impl(v15, v16, v17, v18, v19, v20);
          }

          v7 = selfCopy[9];
          selfCopy[9] = MEMORY[0x277CBEC10];
        }

        else
        {
          if (![v4 length])
          {
LABEL_22:
            selfCopy = selfCopy[9];

            goto LABEL_12;
          }

          v10 = MEMORY[0x277CCAAC8];
          v11 = extensionStoreCoordinatorSupportedArchivableClassesForInfoFiles();
          v27 = 0;
          v12 = [v10 unarchivedObjectOfClasses:v11 fromData:v4 error:&v27];
          v7 = v27;

          if (v7)
          {
            v13 = PBFLogPosterContents();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v29 = 136315394;
              v30 = "[PBFPosterExtensionStoreCoordinator _accessLock_transientInternalInfo]";
              v31 = 2112;
              v32 = v7;
              OUTLINED_FUNCTION_17();
              _os_log_error_impl(v21, v22, v23, v24, v25, v26);
            }
          }

          v14 = selfCopy[9];
          selfCopy[9] = v12;
        }

        goto LABEL_22;
      }

      v8 = selfCopy[9];
      selfCopy[9] = MEMORY[0x277CBEC10];

      v2 = selfCopy[9];
    }

    selfCopy = v2;
  }

LABEL_12:

  return selfCopy;
}

- (uint64_t)_accessLock_bumpLastRefreshBuildVersion
{
  if (!self || (*(self + 140) & 1) != 0 || ([*(self + 128) getFlag] & 1) != 0)
  {
    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x277CF0BB0]);
  stringRepresentation = [v3 stringRepresentation];
  v5 = [(PBFPosterExtensionStoreCoordinator *)self _accessLock_providerInfoSetObject:stringRepresentation forKey:@"lastRefreshStashedBuildVersion" error:0];

  return v5;
}

- (uint64_t)_accessLock_writeTransientInternalInfo:(void *)info error:
{
  v5 = a2;
  if (self)
  {
    if (*(self + 140) == 1)
    {
      if (info)
      {
        OUTLINED_FUNCTION_12_0();
        v7 = [v6 pbf_extensionStoreCoordinatorErrorWithCode:? userInfo:?];
LABEL_8:
        self = 0;
        *info = v7;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    if ([*(self + 128) getFlag])
    {
      if (info)
      {
        OUTLINED_FUNCTION_10_0();
        v7 = [v8 pbf_generalErrorWithCode:? userInfo:?];
        goto LABEL_8;
      }

LABEL_9:
      self = 0;
      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:info];
    v10 = v9;
    if (v9 && [v9 writeToURL:*(self + 48) options:268435457 error:info])
    {
      v11 = [v5 copy];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = MEMORY[0x277CBEC10];
      }

      objc_storeStrong((self + 72), v13);

      self = 1;
    }

    else
    {
      self = 0;
    }
  }

LABEL_18:

  return self;
}

- (char)_containerURLForType:(char *)type
{
  if (!type)
  {
LABEL_4:

    return type;
  }

  if ((a2 - 1) <= 3)
  {
    type = *&type[qword_21B6D7810[a2 - 1]];
    goto LABEL_4;
  }

  type = 0;

  return type;
}

- (void)initWithContainerURL:(char *)a1 extensionIdentifier:readonly:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContainerURL:(char *)a1 extensionIdentifier:readonly:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContainerURL:(char *)a1 extensionIdentifier:readonly:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContainerURL:(char *)a1 extensionIdentifier:readonly:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dynamicDescriptorStoreCoordinatorForIdentifier:(uint64_t)a1 role:(const char *)a2 createIfNil:error:.cold.1(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  PFPosterRolesSupportedForCurrentDeviceClass();
  v14 = v13 = a1;
  v5 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v15 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, 2u);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)providerInfoSetObject:(char *)a1 forKey:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)providerInfoSetObject:(char *)a1 forKey:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(NSSecureCoding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)providerInfoSetObject:(char *)a1 forKey:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end