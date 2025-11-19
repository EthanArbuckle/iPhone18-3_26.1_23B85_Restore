@interface PBFPosterRoleCoordinator
+ (NSSet)protectedAttributes;
+ (NSSet)subscribedEvents;
+ (NSSet)supportedAttributes;
+ (NSSet)supportedChangeTypes;
+ (id)buildInitialStateSetupEventsForRoleCoordinator:(id)a3 extensionHandlers:(id)a4 extensionStoreCoordinators:(id)a5;
+ (void)dumpResultsForEvent:(id)a3 role:(id)a4 posterCollection:(id)a5 changes:(id)a6 eventWasHandled:(BOOL)a7;
- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6;
- (BOOL)_ingestIncomingPosterConfiguration:(id)a3 change:(id)a4 currentCollection:(id)a5 storage:(id)a6 outEvents:(id *)a7 error:(id *)a8;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10;
- (BOOL)finalizeChangesWithChangeHandler:(id)a3 outEvents:(id *)a4 error:(id *)a5;
- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4;
- (BOOL)updateCoordinatorWithChange:(id)a3 changeHandler:(id)a4 emitEvents:(id *)a5 error:(id *)a6;
- (BOOL)validateEventIsRelevant:(id)a3;
- (PBFPosterRoleCoordinator)initWithRole:(id)a3 storage:(id)a4 modelCoordinatorProvider:(id)a5 providers:(id)a6;
- (PBFPosterRoleCoordinatorDelegate)delegate;
- (PRPosterCollection)posterCollection;
- (id)_addChangesForInitialPostersTo:(id)a3 modelCoordinatorProvider:(id)a4 role:(id)a5;
- (id)attributesForConfiguration:(id)a3 ofType:(id)a4 storage:(id)a5;
- (id)buildNewPosterCollectionFromStorage:(id)a3;
- (id)configurationStoreCoordinatorForPosterUUID:(id)a3 extensionIdentifier:(id)a4;
- (id)defaultAttributesForNewPosterFromProvider:(id)a3;
- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4;
- (id)lastActivatedDatesForPosterCollection:(id)a3;
- (id)posterConfigurationsSortedByLastActivatedDate:(id)a3;
- (id)posterWithUUID:(id)a3;
- (id)posterWithUUID:(id)a3 extensionIdentifier:(id)a4;
- (id)setupRoleIfNecessaryWithStorage:(id)a3;
- (id)sortedPosterUUIDsFromStorage:(id)a3;
- (void)_transactionLock_markPosterCollectionDirty;
- (void)decrementTransactionCount;
- (void)finalizeTransactionCount;
- (void)incrementTransactionCount;
- (void)invalidate;
- (void)markPosterCollectionDirty;
- (void)noteDidResetRoleCoordinator:(id)a3;
@end

@implementation PBFPosterRoleCoordinator

- (PBFPosterRoleCoordinator)initWithRole:(id)a3 storage:(id)a4 modelCoordinatorProvider:(id)a5 providers:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v13;
  if (!v16)
  {
    [PBFPosterRoleCoordinator initWithRole:a2 storage:? modelCoordinatorProvider:? providers:?];
  }

  v17 = v16;
  if (([v16 conformsToProtocol:&unk_282D473E8] & 1) == 0)
  {
    [PBFPosterRoleCoordinator initWithRole:a2 storage:? modelCoordinatorProvider:? providers:?];
  }

  v18 = v14;
  if (!v18)
  {
    [PBFPosterRoleCoordinator initWithRole:a2 storage:? modelCoordinatorProvider:? providers:?];
  }

  v19 = v18;
  if (([v18 conformsToProtocol:&unk_282D232E0] & 1) == 0)
  {
    [PBFPosterRoleCoordinator initWithRole:a2 storage:? modelCoordinatorProvider:? providers:?];
  }

  v27.receiver = self;
  v27.super_class = PBFPosterRoleCoordinator;
  v20 = [(PBFPosterRoleCoordinator *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_role, a3);
    objc_storeStrong(&v21->_storage, a4);
    objc_storeStrong(&v21->_modelCoordinatorProvider, a5);
    v22 = objc_alloc_init(MEMORY[0x277CF0B80]);
    invalidationSignal = v21->_invalidationSignal;
    v21->_invalidationSignal = v22;

    [(PBFPosterRoleCoordinator *)v21 setMaximumNumberOfPosters:200];
    v24 = [v15 copy];
    knownExtensionIdentifiers = v21->_knownExtensionIdentifiers;
    v21->_knownExtensionIdentifiers = v24;

    v21->_transactionLock._os_unfair_lock_opaque = 0;
  }

  return v21;
}

- (id)setupRoleIfNecessaryWithStorage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v5 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  }

  else
  {
    v6 = [(PBFPosterRoleCoordinator *)self role];
    v7 = [v4 roleIdentifiersWithError:0];
    if (([v7 containsObject:v6] & 1) != 0 || (v13 = 0, objc_msgSend(v4, "addRole:displayName:error:", v6, v6, &v13), (v5 = v13) == 0))
    {
      v12 = 0;
      v8 = [(PBFPosterRoleCoordinator *)self synchronizeFileSystemAttributesForStorage:v4 error:&v12];
      v5 = v12;
      v9 = PBFLogRoleCoordinator();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v15 = v6;
          _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Role synchronization compelted successfully", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterRoleCoordinator setupRoleIfNecessaryWithStorage:];
      }
    }

    [(PBFPosterRoleCoordinator *)self markPosterCollectionDirty];
  }

  return v5;
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled];
  if (v7)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    }
  }

  else
  {
    v8 = [(PBFPosterRoleCoordinator *)self role];
    v9 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v6];
    v10 = [v9 selectedPoster];
    if (v10)
    {
      v11 = [v9 orderedPosters];
      v12 = [v11 containsObject:v10];

      if ((v12 & 1) == 0)
      {
        v13 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v8;
          _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Discovered selected poster not part of ordered posters; correcting...", buf, 0xCu);
        }

        v14 = [v10 pbf_posterUUID];
        v18 = 0;
        [v6 assignPosterUUID:v14 toRole:v8 error:&v18];
        v15 = v18;

        if (v15)
        {
          v16 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [PBFPosterRoleCoordinator synchronizeFileSystemAttributesForStorage:error:];
          }
        }
      }
    }
  }

  return v7 ^ 1;
}

- (id)posterWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterRoleCoordinator *)self storage];
  v6 = [v5 extensionIdentifierForPosterUUID:v4 error:0];

  if (v6 && (-[PBFPosterRoleCoordinator knownExtensionIdentifiers](self, "knownExtensionIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v6], v7, v8))
  {
    v9 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v4 extensionIdentifier:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)posterWithUUID:(id)a3 extensionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
  v9 = [v8 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v6 error:0];

  v10 = [v9 latestPosterConfigurationForUUID:v7];

  return v10;
}

- (id)configurationStoreCoordinatorForPosterUUID:(id)a3 extensionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
  v9 = [v8 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v6 error:0];

  v10 = [v9 configurationStoreCoordinatorForPosterUUID:v7];

  return v10;
}

- (id)lastActivatedDatesForPosterCollection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 orderedPosters];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277D3EED8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v3 attributeForPoster:v11 ofType:v9];
        v13 = [v12 lastActivatedDate];
        if (v13)
        {
          v14 = [v11 pbf_posterUUID];
          [v4 setObject:v13 forKeyedSubscript:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)posterConfigurationsSortedByLastActivatedDate:(id)a3
{
  v4 = a3;
  if ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v5 = [MEMORY[0x277CBEB70] orderedSet];
  }

  else
  {
    v6 = [(PBFPosterRoleCoordinator *)self lastActivatedDatesForPosterCollection:v4];
    v7 = [v4 orderedPosters];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__PBFPosterRoleCoordinator_posterConfigurationsSortedByLastActivatedDate___block_invoke;
    v11[3] = &unk_2782C6498;
    v12 = v6;
    v8 = v6;
    v9 = [v7 sortedArrayUsingComparator:v11];

    v5 = [MEMORY[0x277CBEB70] orderedSetWithArray:v9];
  }

  return v5;
}

uint64_t __74__PBFPosterRoleCoordinator_posterConfigurationsSortedByLastActivatedDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 pbf_posterUUID];
  v8 = [v5 objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v11 = v10;

  v12 = *(a1 + 32);
  v13 = [v6 pbf_posterUUID];

  v14 = [v12 objectForKey:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v17 = v16;

  v18 = [v11 compare:v17];
  return v18;
}

- (PRPosterCollection)posterCollection
{
  os_unfair_lock_lock(&self->_transactionLock);
  if (self->_transactionLock_isInTransaction)
  {
    v3 = [(PBFPosterRoleCoordinator *)self storage];
    v4 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v3];
  }

  else
  {
    posterCollection = self->_posterCollection;
    if (posterCollection)
    {
      v4 = posterCollection;
    }

    else
    {
      v6 = [(PBFPosterRoleCoordinator *)self storage];
      v4 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v6];
      objc_storeStrong(&self->_posterCollection, v4);
    }
  }

  os_unfair_lock_unlock(&self->_transactionLock);

  return v4;
}

- (void)markPosterCollectionDirty
{
  os_unfair_lock_lock(&self->_transactionLock);
  [(PBFPosterRoleCoordinator *)self _transactionLock_markPosterCollectionDirty];

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (void)_transactionLock_markPosterCollectionDirty
{
  posterCollection = self->_posterCollection;
  self->_posterCollection = 0;
}

- (id)defaultAttributesForNewPosterFromProvider:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D3EED8];
  v3 = objc_opt_new();
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    os_unfair_lock_lock(&self->_transactionLock);
    modelCoordinatorProvider = self->_modelCoordinatorProvider;
    self->_modelCoordinatorProvider = 0;

    storage = self->_storage;
    self->_storage = 0;

    os_unfair_lock_unlock(&self->_transactionLock);
  }
}

+ (NSSet)supportedAttributes
{
  if (supportedAttributes_onceToken != -1)
  {
    +[PBFPosterRoleCoordinator supportedAttributes];
  }

  v3 = supportedAttributes_supportedAttributes;

  return v3;
}

void __47__PBFPosterRoleCoordinator_supportedAttributes__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D3EED8], *MEMORY[0x277D3EEB0], *MEMORY[0x277D3EEC8], 0}];
  v1 = supportedAttributes_supportedAttributes;
  supportedAttributes_supportedAttributes = v0;
}

+ (NSSet)protectedAttributes
{
  if (protectedAttributes_onceToken != -1)
  {
    +[PBFPosterRoleCoordinator protectedAttributes];
  }

  v3 = protectedAttributes_protectedAttributes;

  return v3;
}

void __47__PBFPosterRoleCoordinator_protectedAttributes__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D3EED8], *MEMORY[0x277D3EEB0], *MEMORY[0x277D3EEC8], 0}];
  v1 = protectedAttributes_protectedAttributes;
  protectedAttributes_protectedAttributes = v0;
}

- (id)attributesForConfiguration:(id)a3 ofType:(id)a4 storage:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled];
  v11 = MEMORY[0x277CBEC10];
  if ((v10 & 1) == 0 && v8 && [v9 count])
  {
    if (!v30)
    {
      storage = self->_storage;
      if (!storage)
      {
        goto LABEL_29;
      }

      v30 = storage;
    }

    v13 = [(PBFPosterRoleCoordinator *)self role];
    v27 = v8;
    v14 = [v8 pbf_posterUUID];
    v28 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v9;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v31 = 0;
          v20 = [(PBFPosterExtensionDataStorageRetrieving *)v30 attributeForPoster:v14 roleId:v13 attributeId:v19 error:&v31, v26];
          v21 = v31;
          v22 = PBFLogRoleCoordinator();
          v23 = v22;
          if (v20 | v21)
          {
            if (v21)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138544130;
                v37 = v13;
                v38 = 2114;
                v39 = v14;
                v40 = 2114;
                v41 = v19;
                v42 = 2114;
                v43 = v21;
                _os_log_error_impl(&dword_21B526000, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch attribute %{public}@ for posterUUID %{public}@: %{public}@", buf, 0x2Au);
              }
            }

            else
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v37 = v13;
                v38 = 2114;
                v39 = v19;
                v40 = 2114;
                v41 = v14;
                _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_INFO, "[%{public}@] Fetched attribute data for attribute %{public}@ / posterUUID %{public}@", buf, 0x20u);
              }

              v23 = PRPosterRoleAttributeForData();
              if (v23)
              {
                [v28 setObject:v23 forKeyedSubscript:v19];
              }

              else
              {
                v24 = PBFLogRoleCoordinator();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543874;
                  v37 = v13;
                  v38 = 2114;
                  v39 = v19;
                  v40 = 2114;
                  v41 = v14;
                  _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_INFO, "[%{public}@] Unable to decode attribute data for attribute %{public}@ / posterUUID %{public}@", buf, 0x20u);
                }
              }
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            v37 = v13;
            v38 = 2114;
            v39 = v19;
            v40 = 2114;
            v41 = v14;
            _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_INFO, "[%{public}@] No attribute data for attribute %{public}@ / posterUUID %{public}@", buf, 0x20u);
          }
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v16);
    }

    v11 = [v28 copy];
    v9 = v26;
    v8 = v27;
  }

LABEL_29:

  return v11;
}

+ (NSSet)subscribedEvents
{
  if (subscribedEvents_onceToken != -1)
  {
    +[PBFPosterRoleCoordinator subscribedEvents];
  }

  v3 = subscribedEvents_subscribedEvents;

  return v3;
}

void __44__PBFPosterRoleCoordinator_subscribedEvents__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"PBFPosterDataStoreEventTypeExtensionsUpdated";
  v4[1] = @"PBFPosterDataStoreEventTypePosterDeleted";
  v4[2] = @"PBFPosterDataStoreEventTypePosterActivated";
  v4[3] = @"PBFPosterDataStoreEventTypeRoleCoordinatorReset";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = subscribedEvents_subscribedEvents;
  subscribedEvents_subscribedEvents = v2;
}

- (BOOL)validateEventIsRelevant:(id)a3
{
  v4 = a3;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v5 = [objc_opt_class() subscribedEvents];
    v6 = [v4 eventType];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v8 = [v4 eventType];
      v9 = [v8 isEqual:@"PBFPosterDataStoreEventTypeRoleCoordinatorReset"];

      if (v9)
      {
        v10 = [(PBFPosterRoleCoordinator *)self role];
        v11 = [v4 toValue];
        v12 = [v10 isEqualToString:v11];
      }

      else
      {
        v13 = [v4 eventType];
        v14 = [v13 isEqual:@"PBFPosterDataStoreEventTypePosterDeleted"];

        if (v14)
        {
          v15 = [v4 fromValue];
          v10 = v15;
          if (!v15)
          {
            v12 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          v16 = [v4 eventType];
          v17 = [v16 isEqual:@"PBFPosterDataStoreEventTypePosterActivated"];

          if (!v17)
          {
            v12 = 1;
            goto LABEL_14;
          }

          v15 = [v4 toValue];
          v10 = v15;
        }

        v11 = [v15 role];
        v18 = [(PBFPosterRoleCoordinator *)self role];
        v12 = [v11 isEqual:v18];
      }

LABEL_13:
      goto LABEL_14;
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5
{
  v184 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0 && [(PBFPosterRoleCoordinator *)self validateEventIsRelevant:v8])
  {
    v10 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(PBFPosterRoleCoordinator *)self storage];
    }

    v13 = v11;
    v14 = [(PBFPosterRoleCoordinator *)self role];
    v120 = self;
    v15 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v13];
    v16 = objc_opt_new();
    v17 = [v8 eventType];
    v18 = [v17 isEqual:@"PBFPosterDataStoreEventTypeRoleCoordinatorReset"];

    v134 = v15;
    if (v18)
    {
      v140 = v13;
      v123 = a4;
      v127 = v10;
      v130 = v9;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v19 = [v15 orderedPosters];
      v20 = [v19 countByEnumeratingWithState:&v168 objects:v183 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v169;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v169 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v168 + 1) + 8 * i) pbf_posterUUID];
            v25 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v14 matchingUUID:v24];

            [v16 bs_safeAddObject:v25];
          }

          v21 = [v19 countByEnumeratingWithState:&v168 objects:v183 count:16];
        }

        while (v21);
      }

      v26 = [PBFPosterRoleCoordinatorChange resetRole:v14];
      [v16 bs_safeAddObject:v26];

      v10 = v127;
      v9 = v130;
      a4 = v123;
LABEL_16:
      v13 = v140;
LABEL_99:
      v112 = [v16 count];
      LOBYTE(v12) = 1;
      if (a4)
      {
        v15 = v134;
        if (v112)
        {
          *a4 = [v16 copy];
        }
      }

      else
      {
        v15 = v134;
      }

      goto LABEL_103;
    }

    v27 = [v8 eventType];
    v28 = [v27 isEqual:@"PBFPosterDataStoreEventTypeExtensionsUpdated"];

    if (v28)
    {
      v141 = v13;
      v124 = a4;
      v128 = v10;
      v131 = v9;
      v138 = objc_opt_new();
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v29 = [v8 toValue];
      v30 = [v29 countByEnumeratingWithState:&v164 objects:v182 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v165;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v165 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v164 + 1) + 8 * j);
            v35 = [v34 supportedRoles];
            v36 = [v35 containsObject:v14];

            if (v36)
            {
              v37 = [v34 posterExtensionBundleIdentifier];
              [v138 addObject:v37];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v164 objects:v182 count:16];
        }

        while (v31);
      }

      v38 = v134;
      v39 = [v134 selectedPoster];
      v116 = [v39 pbf_posterUUID];

      v40 = objc_opt_new();
      v41 = [(PBFPosterRoleCoordinator *)v120 knownExtensionIdentifiers];
      v118 = v8;
      if ([v41 isEqualToSet:v138])
      {
        v42 = v128;
        v13 = v141;
      }

      else
      {
        v114 = v41;
        v67 = [v41 mutableCopy];
        [v67 minusSet:v138];
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        obja = v67;
        v68 = [obja countByEnumeratingWithState:&v160 objects:v181 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v161;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v161 != v70)
              {
                objc_enumerationMutation(obja);
              }

              v72 = *(*(&v160 + 1) + 8 * k);
              v156 = 0u;
              v157 = 0u;
              v158 = 0u;
              v159 = 0u;
              v73 = [v141 posterUUIDsForExtensionIdentifier:v72 role:v14 error:0];
              v74 = [v73 countByEnumeratingWithState:&v156 objects:v180 count:16];
              if (v74)
              {
                v75 = v74;
                v76 = *v157;
                do
                {
                  for (m = 0; m != v75; ++m)
                  {
                    if (*v157 != v76)
                    {
                      objc_enumerationMutation(v73);
                    }

                    [v40 addObject:*(*(&v156 + 1) + 8 * m)];
                  }

                  v75 = [v73 countByEnumeratingWithState:&v156 objects:v180 count:16];
                }

                while (v75);
              }
            }

            v69 = [obja countByEnumeratingWithState:&v160 objects:v181 count:16];
          }

          while (v69);
        }

        v78 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          knownExtensionIdentifiers = v120->_knownExtensionIdentifiers;
          *buf = 138543874;
          v175 = v120;
          v176 = 2112;
          v177 = knownExtensionIdentifiers;
          v178 = 2112;
          v179 = v138;
          _os_log_impl(&dword_21B526000, v78, OS_LOG_TYPE_DEFAULT, "<%{public}@> Updating knownExtensionIdentifiers.\n\tfromValue: %@\n\ttoValue: %@", buf, 0x20u);
        }

        v41 = [v138 copy];
        objc_storeStrong(&v120->_knownExtensionIdentifiers, v41);

        v8 = v118;
        v42 = v128;
        v13 = v141;
        v38 = v134;
      }

      v80 = [v38 orderedPosterUUIDs];
      v81 = [v80 set];
      v82 = [v81 mutableCopy];

      [v82 minusSet:v40];
      v115 = v82;
      if ([v82 count])
      {
        v83 = v116;
        v10 = v42;
      }

      else
      {
        v10 = v42;
        v93 = [(PBFPosterRoleCoordinator *)v120 _addChangesForInitialPostersTo:v16 modelCoordinatorProvider:v42 role:v14];
        v94 = v93;
        v114 = v41;
        if (v93)
        {
          v95 = v93;
        }

        else
        {
          v95 = v116;
        }

        v83 = v95;
      }

      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 3221225472;
      v151[2] = __67__PBFPosterRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke;
      v151[3] = &unk_2782C7A20;
      v117 = v83;
      v152 = v117;
      v96 = v134;
      v153 = v96;
      v97 = v41;
      v154 = v97;
      objb = v40;
      v155 = objb;
      if (__67__PBFPosterRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke(v151))
      {
        v98 = [(PBFPosterRoleCoordinator *)v120 posterConfigurationsSortedByLastActivatedDate:v96];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v99 = [v98 reverseObjectEnumerator];
        v100 = [v99 countByEnumeratingWithState:&v147 objects:v173 count:16];
        if (v100)
        {
          v101 = v100;
          v114 = v98;
          v122 = v97;
          v102 = *v148;
          while (2)
          {
            for (n = 0; n != v101; ++n)
            {
              if (*v148 != v102)
              {
                objc_enumerationMutation(v99);
              }

              v104 = *(*(&v147 + 1) + 8 * n);
              v105 = [v96 configuredPropertiesForPoster:{v104, v114}];
              v106 = [v105 focusConfiguration];

              if (!v106)
              {
                v107 = [v104 pbf_posterUUID];
                if (![objb containsObject:v107])
                {
                  v108 = v107;

                  v109 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v14 matchingUUID:v108];

                  [v16 addObject:v109];
                  v10 = v128;
                  v97 = v122;
                  goto LABEL_91;
                }
              }
            }

            v101 = [v99 countByEnumeratingWithState:&v147 objects:v173 count:16];
            if (v101)
            {
              continue;
            }

            break;
          }

          v10 = v128;
          v97 = v122;
          v108 = v117;
LABEL_91:
          v98 = v114;
        }

        else
        {
          v108 = v117;
        }

        v9 = v131;
        a4 = v124;
        v13 = v141;
        v8 = v118;
      }

      else
      {
        v9 = v131;
        a4 = v124;
        v108 = v117;
      }

      goto LABEL_99;
    }

    v43 = [v8 eventType];
    v44 = [v43 isEqual:@"PBFPosterDataStoreEventTypePosterDeleted"];

    if (v44)
    {
      v45 = [v15 selectedPoster];
      v139 = [v45 pbf_posterUUID];

      v119 = v8;
      obj = [v8 fromValue];
      v46 = [obj pbf_posterUUID];
      v47 = [v15 orderedPosterUUIDs];
      v48 = [v47 containsObject:v46];

      if (v48)
      {
        v125 = a4;
        v49 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v14 matchingUUID:v46];
        [v16 addObject:v49];

        v50 = [v15 orderedPosterUUIDs];
        v51 = [v50 set];
        v52 = [v51 mutableCopy];

        [v52 removeObject:v46];
        if (![v52 count])
        {
          v53 = [(PBFPosterRoleCoordinator *)v120 _addChangesForInitialPostersTo:v16 modelCoordinatorProvider:v10 role:v14];
          v54 = v53;
          if (v53)
          {
            v55 = v53;
          }

          else
          {
            v55 = v139;
          }

          v56 = v55;

          v139 = v56;
        }

        a4 = v125;

        v15 = v134;
      }

      if ([v139 isEqual:v46])
      {
        v142 = v13;
        v129 = v10;
        v57 = [(PBFPosterRoleCoordinator *)v120 posterConfigurationsSortedByLastActivatedDate:v15];
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v58 = [v57 reverseObjectEnumerator];
        v59 = [v58 countByEnumeratingWithState:&v143 objects:v172 count:16];
        if (v59)
        {
          v60 = v59;
          v121 = v57;
          v126 = a4;
          v132 = v9;
          v61 = *v144;
          while (2)
          {
            for (ii = 0; ii != v60; ++ii)
            {
              if (*v144 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = *(*(&v143 + 1) + 8 * ii);
              v64 = [v134 configuredPropertiesForPoster:v63];
              v65 = [v64 focusConfiguration];

              if (!v65)
              {
                v66 = [v63 pbf_posterUUID];
                if (![v66 isEqual:v46])
                {
                  v110 = v66;

                  v111 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v14 matchingUUID:v110];

                  [v16 addObject:v111];
                  v139 = v110;
                  goto LABEL_96;
                }
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v143 objects:v172 count:16];
            if (v60)
            {
              continue;
            }

            break;
          }

LABEL_96:
          v9 = v132;
          v57 = v121;
          a4 = v126;
        }

        v10 = v129;
        v13 = v142;
      }

      v8 = v119;
      goto LABEL_99;
    }

    v84 = [v8 eventType];
    v12 = [v84 isEqual:@"PBFPosterDataStoreEventTypePosterActivated"];

    if (v12)
    {
      v133 = v9;
      v85 = [v8 toValue];
      v86 = [v85 pbf_posterUUID];

      v87 = [v15 orderedPosterUUIDs];
      v12 = [v87 containsObject:v86];

      if (v12)
      {
        v140 = v13;
        v88 = a4;
        v89 = [v15 posterWithUUID:v86];
        v90 = [v15 attributeForPoster:v89 ofType:*MEMORY[0x277D3EED8]];
        if (!v90)
        {
          v90 = objc_opt_new();
        }

        v91 = [v90 usageMetadataWithUpdatedLastActivatedDate];

        v92 = [PBFPosterRoleCoordinatorChange assignAttributeToPosterWithinRole:v14 matchingUUID:v86 attribute:v91];
        [v16 addObject:v92];

        v9 = v133;
        a4 = v88;
        goto LABEL_16;
      }

      v9 = v133;
    }

LABEL_103:

    goto LABEL_104;
  }

  LOBYTE(v12) = 0;
LABEL_104:

  return v12;
}

uint64_t __67__PBFPosterRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 1;
  }

  v2 = [*(a1 + 40) posterWithUUID:?];
  v3 = *(a1 + 48);
  v4 = [v2 pbf_posterProvider];
  LODWORD(v3) = [v3 containsObject:v4];

  if (v3 && (v5 = MEMORY[0x277D3EDE8], [*(a1 + 40) posterWithUUID:*(a1 + 32)], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "_path"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "loadFocusConfigurationForPath:error:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v8))
  {
    v9 = [*(a1 + 56) containsObject:*(a1 + 32)];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_addChangesForInitialPostersTo:(id)a3 modelCoordinatorProvider:(id)a4 role:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PBFInitialPosterHelper initialPosterConfigurationsWithModelCoordinatorProvider:v8 role:v9];
  v11 = v10;
  if (v10 && (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, (v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16]) != 0))
  {
    v13 = v12;
    v14 = 0;
    v15 = *v26;
    v16 = 1;
    obj = v11;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [PBFPosterRoleCoordinatorChange addPosterToRole:v9 incomingPoster:v18];
        [v7 addObject:v19];

        if (v16)
        {
          v20 = [v18 destinationUUID];
          v21 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v9 matchingUUID:v20];
          [v7 addObject:v21];

          v22 = [v18 destinationUUID];

          v14 = v22;
        }

        v16 = 0;
      }

      v11 = obj;
      v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v16 = 0;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4
{
  if (a3)
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:a3, a4];
  }

  else
  {
    [(PBFPosterRoleCoordinator *)self posterCollection:0];
  }
  v4 = ;
  v5 = [v4 selectedPoster];

  return v5;
}

+ (NSSet)supportedChangeTypes
{
  if (supportedChangeTypes_onceToken != -1)
  {
    +[PBFPosterRoleCoordinator supportedChangeTypes];
  }

  v3 = supportedChangeTypes_supportedChangeTypes;

  return v3;
}

void __48__PBFPosterRoleCoordinator_supportedChangeTypes__block_invoke()
{
  v4[10] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"PBFPosterRoleCoordinatorChangeTypeAddPoster";
  v4[1] = @"PBFPosterRoleCoordinatorChangeTypeUpdatePoster";
  v4[2] = @"PBFPosterRoleCoordinatorChangeTypeRemovePoster";
  v4[3] = @"PBFPosterRoleCoordinatorChangeTypeReorderPosters";
  v4[4] = @"PBFPosterRoleCoordinatorChangeTypeDuplicatePoster";
  v4[5] = @"PBFPosterRoleCoordinatorChangeTypeSelectPoster";
  v4[6] = @"PBFPosterRoleCoordinatorChangeTypeAssignAttribute";
  v4[7] = @"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute";
  v4[8] = @"PBFPosterRoleCoordinatorChangeTypeRefreshRoleCoordinator";
  v4[9] = @"PBFPosterRoleCoordinatorChangeTypeResetRoleCoordinator";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = supportedChangeTypes_supportedChangeTypes;
  supportedChangeTypes_supportedChangeTypes = v2;
}

- (BOOL)updateCoordinatorWithChange:(id)a3 changeHandler:(id)a4 emitEvents:(id *)a5 error:(id *)a6
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v13 = [v10 changeType];
    v14 = [objc_opt_class() supportedChangeTypes];
    v15 = [v14 containsObject:v13];

    if (v15)
    {
      [(PBFPosterRoleCoordinator *)self incrementTransactionCount];
      v16 = objc_opt_new();
      v27 = 0;
      v28 = 0;
      v17 = [(PBFPosterRoleCoordinator *)self _executeChange:v10 storage:v11 outEvents:&v28 error:&v27];
      v18 = v28;
      v19 = v27;
      if (v17)
      {
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = MEMORY[0x277CBEBF8];
        }

        [v16 addObjectsFromArray:v20];
      }

      if (a6 && v19)
      {
        v21 = v19;
        *a6 = v19;
      }

      if (a5 && [v16 count])
      {
        *a5 = [v16 copy];
      }

      [(PBFPosterRoleCoordinator *)self decrementTransactionCount];
      if (v19)
      {
        v12 = 0;
      }

      else
      {
        v12 = v17;
      }
    }

    else
    {
      if (!a6)
      {
        v12 = 0;
        goto LABEL_26;
      }

      v22 = MEMORY[0x277CCA9B8];
      v29[0] = @"supportedChangeTypes";
      v16 = [objc_opt_class() supportedChangeTypes];
      v23 = [v16 allObjects];
      v19 = v23;
      v24 = MEMORY[0x277CBEBF8];
      if (v23)
      {
        v24 = v23;
      }

      v29[1] = @"changeType";
      v30[0] = v24;
      v25 = @"(null change type)";
      if (v13)
      {
        v25 = v13;
      }

      v30[1] = v25;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [v22 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:1 userInfo:v18];
      *a6 = v12 = 0;
    }

LABEL_26:
    goto LABEL_28;
  }

  if (a6)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *a6 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (void)incrementTransactionCount
{
  os_unfair_lock_lock(&self->_transactionLock);
  ++self->_transactionLock_txCount;

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (void)decrementTransactionCount
{
  os_unfair_lock_lock(&self->_transactionLock);
  v3 = self->_transactionLock_txCount - 1;
  self->_transactionLock_txCount = v3;
  if (!v3)
  {
    [(PBFPosterRoleCoordinator *)self _transactionLock_markPosterCollectionDirty];
  }

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (void)finalizeTransactionCount
{
  os_unfair_lock_lock(&self->_transactionLock);
  self->_transactionLock_txCount = 0;

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (BOOL)finalizeChangesWithChangeHandler:(id)a3 outEvents:(id *)a4 error:(id *)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v66 = v8;
  if (![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v10 = [(PBFPosterRoleCoordinator *)self role];
    v62 = self;
    v11 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v8];
    v12 = [v11 orderedPosters];
    v13 = [v12 count];

    v68 = a4;
    v69 = a5;
    if (v13)
    {
      v14 = v62;
      goto LABEL_6;
    }

    v16 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
    }

    v14 = v62;
    v17 = [(PBFPosterRoleCoordinator *)v62 modelCoordinatorProvider];
    v18 = [PBFInitialPosterHelper initialPosterConfigurationsWithModelCoordinatorProvider:v17 role:v10];

    if (!v18)
    {
      v38 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
      }

      goto LABEL_71;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v18 = v18;
    v67 = [v18 countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v67)
    {
      v61 = v11;
      v71 = 0;
      v19 = 0;
      v64 = *v81;
      v20 = 0x2782C4000uLL;
      v65 = v10;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          v70 = v19;
          if (*v81 != v64)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v80 + 1) + 8 * i);
          v23 = [*(v20 + 1032) addPosterToRole:v10 incomingPoster:{v22, v61}];
          v24 = [(PBFPosterRoleCoordinator *)v62 _executeChange:v23 storage:v66 outEvents:v68 error:v69];

          if (v71 || !v24)
          {
            v19 = v24 | v70;
          }

          else
          {
            v25 = *(v20 + 1032);
            v26 = [v22 destinationUUID];
            v27 = [v25 selectPosterForRole:v10 matchingUUID:v26];
            v71 = [(PBFPosterRoleCoordinator *)v62 _executeChange:v27 storage:v66 outEvents:v68 error:v69];

            v19 = 1;
          }

          v10 = v65;
          v20 = 0x2782C4000;
        }

        v67 = [v18 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v67);

      v8 = v66;
      v11 = v61;
      if (v19 & v71)
      {

        v28 = [(PBFPosterRoleCoordinator *)v62 buildNewPosterCollectionFromStorage:v66];

        v11 = v28;
LABEL_6:
        v15 = [v11 selectedPoster];

        if (v15)
        {
          v9 = 1;
LABEL_73:

          goto LABEL_74;
        }

        v29 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
        }

        [(PBFPosterRoleCoordinator *)v14 posterConfigurationsSortedByLastActivatedDate:v11];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = v79 = 0u;
        v30 = [obj reverseObjectEnumerator];
        v31 = [v30 countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v77;
LABEL_28:
          v34 = 0;
          while (1)
          {
            if (*v77 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v76 + 1) + 8 * v34);
            v36 = [v11 configuredPropertiesForPoster:v35];
            v37 = [v36 focusConfiguration];

            if (!v37)
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = [v30 countByEnumeratingWithState:&v76 objects:v87 count:16];
              if (v32)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }

          v38 = [v35 pbf_posterUUID];

          if (!v38)
          {
            goto LABEL_41;
          }

          v39 = PBFLogRoleCoordinator();
          v40 = v62;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
          }

LABEL_39:
          v41 = [PBFPosterRoleCoordinatorChange selectPosterForRole:v10 matchingUUID:v38];
          v42 = [(PBFPosterRoleCoordinator *)v40 _executeChange:v41 storage:v8 outEvents:v68 error:v69];

          if (v42)
          {
            v9 = 1;
LABEL_65:
            v18 = obj;
LABEL_72:

            goto LABEL_73;
          }

          goto LABEL_70;
        }

LABEL_34:

LABEL_41:
        v43 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v86 = v10;
          _os_log_impl(&dword_21B526000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] don't have any non-focus posters for role", buf, 0xCu);
        }

        v44 = [(PBFPosterRoleCoordinator *)v62 modelCoordinatorProvider];
        v45 = [PBFInitialPosterHelper initialPosterConfigurationsWithModelCoordinatorProvider:v44 role:v10];

        if (v45)
        {
          v46 = v11;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v47 = v45;
          v48 = [v47 countByEnumeratingWithState:&v72 objects:v84 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = 0;
            v51 = *v73;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v73 != v51)
                {
                  objc_enumerationMutation(v47);
                }

                v53 = [PBFPosterRoleCoordinatorChange addPosterToRole:v10 incomingPoster:*(*(&v72 + 1) + 8 * j)];
                v50 |= [(PBFPosterRoleCoordinator *)v62 _executeChange:v53 storage:v8 outEvents:v68 error:v69];
              }

              v49 = [v47 countByEnumeratingWithState:&v72 objects:v84 count:16];
            }

            while (v49);

            v40 = v62;
            if (v50)
            {
              v54 = [v47 firstObject];
              v38 = [v54 destinationUUID];

              v11 = v46;
              if (v38)
              {
                goto LABEL_39;
              }

LABEL_62:
              v57 = v11;
              v58 = PBFLogRoleCoordinator();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
              }

              v38 = 0;
              v9 = 1;
              v11 = v57;
              goto LABEL_65;
            }
          }

          else
          {
          }

          v59 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:v10 outEvents:v47 error:?];
          }

          v38 = 0;
          v11 = v46;
LABEL_70:
          v18 = obj;
LABEL_71:
          v9 = 0;
          goto LABEL_72;
        }

        v55 = v11;
        v56 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
        }

        v11 = v55;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v38 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:v10 outEvents:v18 error:?];
    }

    goto LABEL_71;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_74:

  return v9;
}

+ (id)buildInitialStateSetupEventsForRoleCoordinator:(id)a3 extensionHandlers:(id)a4 extensionStoreCoordinators:(id)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v63 = objc_opt_new();
  v10 = [v7 role];
  v55 = v7;
  v11 = [objc_opt_class() subscribedEvents];
  v56 = v11;
  if ([v11 containsObject:@"PBFPosterDataStoreEventTypeExtensionsUpdated"])
  {
    v12 = [MEMORY[0x277CBEB98] set];
    v13 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v14 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v15 = [PBFPosterDataStoreEventBuilder extensionsUpdatedFrom:v12 to:v13 supportedRoles:v14];
    v16 = [v15 buildWithError:0];

    v11 = v56;
    [v63 bs_safeAddObject:v16];
  }

  v54 = v8;
  if ([v11 containsObject:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v9;
    v61 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    if (v61)
    {
      v59 = *v85;
      do
      {
        v17 = 0;
        do
        {
          if (*v85 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v84 + 1) + 8 * v17);
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v64 = v18;
          v66 = v17;
          v19 = [v18 staticDescriptorStoreCoordinatorsWithError:0];
          v20 = [v19 countByEnumeratingWithState:&v80 objects:v90 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = 0;
            v23 = *v81;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v81 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v80 + 1) + 8 * i);
                v26 = [v25 role];
                v27 = [v26 isEqual:v10];

                if (v27)
                {
                  if (!v22)
                  {
                    v22 = objc_opt_new();
                  }

                  v28 = [v25 pathOfLatestVersion];
                  if (v28)
                  {
                    v29 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v28];
                    [v22 bs_safeAddObject:v29];
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v80 objects:v90 count:16];
            }

            while (v21);
          }

          else
          {
            v22 = 0;
          }

          if ([v22 count])
          {
            v30 = [v64 providerInfoObjectForKey:@"kProactiveStaticPosterDescriptorOrdering"];
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __120__PBFPosterRoleCoordinator_buildInitialStateSetupEventsForRoleCoordinator_extensionHandlers_extensionStoreCoordinators___block_invoke;
            v78[3] = &unk_2782C67F8;
            v79 = v30;
            v31 = v30;
            [v22 sortUsingComparator:v78];
            v32 = [v64 extensionIdentifier];
            v33 = [PBFPosterDataStoreEventBuilder staticDescriptorsUpdatedForProvider:v32 role:v10 from:MEMORY[0x277CBEBF8] to:v22];

            v34 = [v33 buildWithError:0];
            [v63 bs_safeAddObject:v34];
          }

          v17 = v66 + 1;
        }

        while (v66 + 1 != v61);
        v61 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
      }

      while (v61);
    }

    v8 = v54;
    v11 = v56;
  }

  if ([v11 containsObject:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"])
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obja = v9;
    v62 = [obja countByEnumeratingWithState:&v74 objects:v89 count:16];
    if (v62)
    {
      v60 = *v75;
      do
      {
        v35 = 0;
        do
        {
          if (*v75 != v60)
          {
            objc_enumerationMutation(obja);
          }

          v36 = *(*(&v74 + 1) + 8 * v35);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v65 = v36;
          v67 = v35;
          v37 = [v36 dynamicDescriptorStoreCoordinatorsWithError:0];
          v38 = [v37 countByEnumeratingWithState:&v70 objects:v88 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = 0;
            v41 = *v71;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v71 != v41)
                {
                  objc_enumerationMutation(v37);
                }

                v43 = *(*(&v70 + 1) + 8 * j);
                v44 = [v43 role];
                v45 = [v44 isEqual:v10];

                if (v45)
                {
                  if (!v40)
                  {
                    v40 = objc_opt_new();
                  }

                  v46 = [v43 pathOfLatestVersion];
                  if (v46)
                  {
                    v47 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v46];
                    [v40 bs_safeAddObject:v47];
                  }
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v70 objects:v88 count:16];
            }

            while (v39);
          }

          else
          {
            v40 = 0;
          }

          if ([v40 count])
          {
            v48 = [v65 providerInfoObjectForKey:@"kProactiveDynamicPosterDescriptorOrdering"];
            v68[0] = MEMORY[0x277D85DD0];
            v68[1] = 3221225472;
            v68[2] = __120__PBFPosterRoleCoordinator_buildInitialStateSetupEventsForRoleCoordinator_extensionHandlers_extensionStoreCoordinators___block_invoke_2;
            v68[3] = &unk_2782C67F8;
            v69 = v48;
            v49 = v48;
            [v40 sortUsingComparator:v68];
            v50 = [v65 extensionIdentifier];
            v51 = [PBFPosterDataStoreEventBuilder descriptorsUpdatedForProvider:v50 role:v10 from:MEMORY[0x277CBEBF8] to:v40];

            v52 = [v51 buildWithError:0];
            [v63 bs_safeAddObject:v52];
          }

          v35 = v67 + 1;
        }

        while (v67 + 1 != v62);
        v62 = [obja countByEnumeratingWithState:&v74 objects:v89 count:16];
      }

      while (v62);
    }

    v8 = v54;
    v11 = v56;
  }

  return v63;
}

uint64_t __120__PBFPosterRoleCoordinator_buildInitialStateSetupEventsForRoleCoordinator_extensionHandlers_extensionStoreCoordinators___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 pbf_posterUUID];
  v8 = [v7 UUIDString];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 pbf_posterUUID];

  v12 = [v11 UUIDString];
  v13 = [v10 indexOfObject:v12];

  v14 = -1;
  if (v9 >= v13)
  {
    v14 = 1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t __120__PBFPosterRoleCoordinator_buildInitialStateSetupEventsForRoleCoordinator_extensionHandlers_extensionStoreCoordinators___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 pbf_posterUUID];
  v8 = [v7 UUIDString];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 pbf_posterUUID];

  v12 = [v11 UUIDString];
  v13 = [v10 indexOfObject:v12];

  v14 = -1;
  if (v9 >= v13)
  {
    v14 = 1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

- (id)sortedPosterUUIDsFromStorage:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterRoleCoordinator *)self role];
  v6 = [v4 sortedPosterUUIDsForRole:v5 error:0];

  return v6;
}

- (id)buildNewPosterCollectionFromStorage:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45 = [(PBFPosterRoleCoordinator *)self role];
  v5 = [v4 selectedPosterUUIDForRole:? error:?];
  v6 = [(PBFPosterRoleCoordinator *)self sortedPosterUUIDsFromStorage:v4];
  v7 = [(PBFPosterRoleCoordinator *)self knownExtensionIdentifiers];
  v40 = [objc_opt_class() supportedAttributes];
  v36 = v5;
  if (v5)
  {
    v8 = [v4 extensionIdentifierForPosterUUID:v5 error:0];
    v35 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v5 extensionIdentifier:v8];
  }

  else
  {
    v35 = 0;
  }

  v9 = MEMORY[0x277CBEB70];
  v10 = [v6 array];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __64__PBFPosterRoleCoordinator_buildNewPosterCollectionFromStorage___block_invoke;
  v59[3] = &unk_2782C7A48;
  v11 = v4;
  v60 = v11;
  v34 = v7;
  v61 = v34;
  v62 = self;
  v44 = self;
  v12 = [v10 bs_mapNoNulls:v59];
  v33 = [v9 orderedSetWithArray:v12];

  v39 = objc_opt_new();
  v43 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v13 = v45;
  v46 = v11;
  v41 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v41)
  {
    v38 = *v56;
    v47 = *MEMORY[0x277D3EEB0];
    do
    {
      v14 = 0;
      do
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v14;
        v15 = *(*(&v55 + 1) + 8 * v14);
        v48 = objc_opt_new();
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v16 = v40;
        v17 = [v16 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v52;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v52 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v51 + 1) + 8 * i);
              v22 = [v11 attributeForPoster:v15 roleId:v13 attributeId:v21 error:0];
              if (v22)
              {
                v23 = PRPosterRoleAttributeForData();
                if (v23)
                {
                  [v48 setObject:v23 forKeyedSubscript:v21];
                  if ([v21 isEqualToString:v47])
                  {
                    v23 = v23;
                    v24 = [v23 childPosterUUID];
                    v25 = [v23 providerIdentifier];

                    v26 = [(PBFPosterRoleCoordinator *)v44 posterWithUUID:v24 extensionIdentifier:v25];

                    if (v26)
                    {
                      [v43 setObject:v26 forKey:v15];
                    }

                    v13 = v45;
                    v11 = v46;
                  }
                }
              }

              else
              {
                v23 = 0;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v18);
        }

        v27 = [v48 copy];
        [v39 setObject:v27 forKeyedSubscript:v15];

        v11 = v46;
        v14 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v41);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PBFPosterRoleCoordinator_buildNewPosterCollectionFromStorage___block_invoke_2;
  aBlock[3] = &unk_2782C7A70;
  v50 = v39;
  v28 = v39;
  v29 = _Block_copy(aBlock);
  v30 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v64 = v33;
    v65 = 2112;
    v66 = v35;
    _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "buildNewPosterCollectionFromStorage with orderedPosters: %@ and selectedPoster: %@", buf, 0x16u);
  }

  v31 = [objc_alloc(MEMORY[0x277D3ED30]) initWithSelectedPoster:v35 posters:v33 associatedPosterMap:v43 attributeProvider:v29];

  return v31;
}

id __64__PBFPosterRoleCoordinator_buildNewPosterCollectionFromStorage___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] extensionIdentifierForPosterUUID:v3 error:0];
  v5 = 0;
  if ([a1[5] containsObject:v4])
  {
    v5 = [a1[6] posterWithUUID:v3 extensionIdentifier:v4];
  }

  return v5;
}

id __64__PBFPosterRoleCoordinator_buildNewPosterCollectionFromStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pbf_posterUUID];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  return v4;
}

- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6
{
  v308[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v13 = MEMORY[0x277CCA9B8];
    v307 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
    v308[0] = @"(null change)";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v308 forKeys:&v307 count:1];
    *a6 = [v13 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:1 userInfo:v14];

    LOBYTE(v12) = 0;
    goto LABEL_96;
  }

  if (![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v15 = objc_opt_new();
    v251 = objc_opt_new();
    v244 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v11];
    v16 = [(PBFPosterRoleCoordinator *)self role];
    v17 = [v10 changeType];
    v252 = v11;
    v255 = v16;
    v245 = v17;
    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeResetRoleCoordinator"])
    {
      v18 = [v10 role];
      v19 = [v18 isEqual:v16];

      if (!v19)
      {
LABEL_93:
        LOBYTE(v12) = 0;
LABEL_94:
        v27 = v244;
LABEL_95:

        goto LABEL_96;
      }

      v20 = [v11 roleIdentifiersWithError:0];
      if ((![v20 containsObject:v16] || objc_msgSend(v11, "removeRole:error:", v16, a6)) && objc_msgSend(v11, "addRole:displayName:error:", v16, v16, a6))
      {
        [(PBFPosterRoleCoordinator *)self noteDidResetRoleCoordinator:v11];
        v21 = [(PBFPosterRoleCoordinator *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v270 = 0;
          [v21 roleCoordinatorWasReset:self processInitialStateSetupEvents:&v270];
          v22 = v270;
        }

        else
        {
          v22 = 0;
        }

        v48 = [v22 count];
        if (a5 && v48)
        {
          *a5 = [v22 copy];
        }

        goto LABEL_43;
      }

LABEL_92:

      goto LABEL_93;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRefreshRoleCoordinator"])
    {
LABEL_44:
      if ([v15 count] || objc_msgSend(v251, "count"))
      {
        v238 = v10;
        v241 = v15;
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        v49 = v15;
        v50 = [v49 countByEnumeratingWithState:&v261 objects:v272 count:16];
        v51 = 0x277D3E000uLL;
        if (v50)
        {
          v52 = v50;
          v53 = *v262;
          v54 = *MEMORY[0x277D3EED8];
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v262 != v53)
              {
                objc_enumerationMutation(v49);
              }

              v56 = *(*(&v261 + 1) + 8 * i);
              v57 = *(v51 + 3640);
              v58 = [v11 attributeForPoster:v56 roleId:v16 attributeId:v54 error:0];
              v59 = [v57 decodeObjectWithJSON:v58];
              v60 = v59;
              if (v59)
              {
                v61 = v59;
              }

              else
              {
                v61 = objc_opt_new();
              }

              v62 = v61;

              v63 = [v62 usageMetadataWithUpdatedLastModifiedDate];
              if ([v251 containsObject:v56])
              {
                v64 = [v62 usageMetadataWithUpdatedLastSelectedDate];

                v63 = v64;
              }

              v65 = [v63 encodeJSON];
              v11 = v252;
              [v252 mutateAttributeForPoster:v56 roleId:v255 attributeId:v54 attributePayload:v65 error:0];

              v16 = v255;
              v51 = 0x277D3E000;
            }

            v52 = [v49 countByEnumeratingWithState:&v261 objects:v272 count:16];
          }

          while (v52);
        }

        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        obja = v251;
        v66 = [obja countByEnumeratingWithState:&v257 objects:v271 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v258;
          v69 = *MEMORY[0x277D3EED8];
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v258 != v68)
              {
                objc_enumerationMutation(obja);
              }

              v71 = *(*(&v257 + 1) + 8 * j);
              if (([v49 containsObject:v71] & 1) == 0)
              {
                v72 = MEMORY[0x277D3EE38];
                v73 = [v11 attributeForPoster:v71 roleId:v16 attributeId:v69 error:0];
                v74 = [v72 decodeObjectWithJSON:v73];
                v75 = v74;
                if (v74)
                {
                  v76 = v74;
                }

                else
                {
                  v76 = objc_opt_new();
                }

                v77 = v76;

                v78 = [v77 usageMetadataWithUpdatedLastSelectedDate];
                v79 = [v78 encodeJSON];
                [v252 mutateAttributeForPoster:v71 roleId:v255 attributeId:v69 attributePayload:v79 error:0];

                v11 = v252;
                v16 = v255;
              }
            }

            v67 = [obja countByEnumeratingWithState:&v257 objects:v271 count:16];
          }

          while (v67);
        }

        LOBYTE(v12) = 1;
        v10 = v238;
        v15 = v241;
      }

      else
      {
        LOBYTE(v12) = 1;
      }

      goto LABEL_94;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeAddPoster"])
    {
      v23 = [v10 userInfo];
      v20 = [v23 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration"];

      if (v20)
      {
        if ([v20 incomingPosterType] == 4 || objc_msgSend(v20, "incomingPosterType") == 1) && (objc_msgSend(v245, "isEqualToString:", @"PBFPosterRoleCoordinatorChangeTypeAddPoster"))
        {
          v24 = [(PBFPosterRoleCoordinator *)self _ingestIncomingPosterConfiguration:v20 change:v10 currentCollection:v244 storage:v11 outEvents:a5 error:a6];

          if (!v24)
          {
            goto LABEL_93;
          }

          goto LABEL_44;
        }

        v41 = MEMORY[0x277CCA9B8];
        v303[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v42 = [v10 description];
        v43 = v42;
        v44 = @"(null change)";
        if (v42)
        {
          v44 = v42;
        }

        v303[1] = *MEMORY[0x277CCA470];
        v304[0] = v44;
        v304[1] = @"PBFPosterRoleCoordinatorChangeTypeAddPoster only supports PRIncomingPosterTypeNew";
        v45 = MEMORY[0x277CBEAC0];
        v46 = v304;
        v47 = v303;
        goto LABEL_86;
      }

      v41 = MEMORY[0x277CCA9B8];
      v305 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v80 = [v10 description];
      v43 = v80;
      v81 = @"(null change)";
      if (v80)
      {
        v81 = v80;
      }

      v306 = v81;
      v45 = MEMORY[0x277CBEAC0];
      v46 = &v306;
      v47 = &v305;
LABEL_90:
      v98 = 1;
      goto LABEL_91;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeUpdatePoster"])
    {
      v25 = [v10 userInfo];
      v20 = [v25 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration"];

      if (!v20)
      {
        v41 = MEMORY[0x277CCA9B8];
        v301 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v99 = [v10 description];
        v43 = v99;
        v100 = @"(null change)";
        if (v99)
        {
          v100 = v99;
        }

        v302 = v100;
        v45 = MEMORY[0x277CBEAC0];
        v46 = &v302;
        v47 = &v301;
        goto LABEL_90;
      }

      if ([v20 incomingPosterType] != 5 && objc_msgSend(v20, "incomingPosterType") != 2 || (objc_msgSend(v245, "isEqualToString:", @"PBFPosterRoleCoordinatorChangeTypeUpdatePoster") & 1) == 0)
      {
        v41 = MEMORY[0x277CCA9B8];
        v299[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v96 = [v10 description];
        v43 = v96;
        v97 = @"(null change)";
        if (v96)
        {
          v97 = v96;
        }

        v299[1] = *MEMORY[0x277CCA470];
        v300[0] = v97;
        v300[1] = @"PBFPosterRoleCoordinatorChangeTypeUpdatePoster only supports PRIncomingPosterTypeUpdate";
        v45 = MEMORY[0x277CBEAC0];
        v46 = v300;
        v47 = v299;
LABEL_86:
        v98 = 2;
LABEL_91:
        v101 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:v98];
        *a6 = [v41 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v101];

        goto LABEL_92;
      }

      v26 = self;
      v27 = v244;
      if ([(PBFPosterRoleCoordinator *)v26 _ingestIncomingPosterConfiguration:v20 change:v10 currentCollection:v244 storage:v11 outEvents:a5 error:a6])
      {
        v22 = [v20 destinationUUID];
        [v15 addObject:v22];
LABEL_43:

        goto LABEL_44;
      }

LABEL_110:
      LOBYTE(v12) = 0;
      goto LABEL_95;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeDuplicatePoster"])
    {
      v28 = [v10 userInfo];
      v29 = [v28 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      v30 = [v10 userInfo];
      v31 = [v30 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyOutPosterUUID"];

      if (v29 && v31)
      {
        v32 = [v244 posterWithUUID:v29];
        if (!v32)
        {
          v133 = MEMORY[0x277CCA9B8];
          v295[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v134 = [v10 description];
          v254 = v31;
          v135 = v134;
          v136 = @"(null change)";
          if (v134)
          {
            v136 = v134;
          }

          v296[0] = v136;
          v295[1] = @"posterUUID";
          [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v29];
          v138 = v137 = v15;
          v296[1] = v138;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v296 forKeys:v295 count:2];
          v12 = v139 = v29;
          *a6 = [v133 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:2 userInfo:v12];

          v15 = v137;
          v16 = v255;

          LOBYTE(v12) = 0;
          v27 = v244;
          goto LABEL_95;
        }

        v240 = v32;
        v33 = [v244 posterWithUUID:v31];
        if (v33)
        {
          obj = v29;
          v34 = v33;
          v35 = MEMORY[0x277CCA9B8];
          v293[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v36 = [v10 description];
          v37 = v36;
          v38 = @"(null change)";
          if (v36)
          {
            v38 = v36;
          }

          v294[0] = v38;
          v293[1] = @"posterUUID";
          v256 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v31];
          v294[1] = v256;
          v293[2] = @"duplicateOutPoster";
          v39 = [v34 description];
          v294[2] = v39;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v294 forKeys:v293 count:3];
          v40 = v253 = v31;
          *a6 = [v35 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v40];
        }

        else
        {
          if (![v31 isEqual:v29])
          {
            v175 = [objc_alloc(MEMORY[0x277D3ECE0]) initWithConfigurationToDuplicate:v240 destinationPosterUUID:v31];
            v176 = [(PBFPosterRoleCoordinator *)self _ingestIncomingPosterConfiguration:v175 change:v10 currentCollection:v244 storage:v11 outEvents:a5 error:a6];
            v177 = v31;
            v178 = v176;

            if (v178)
            {
              goto LABEL_44;
            }

            goto LABEL_93;
          }

          v237 = MEMORY[0x277CCA9B8];
          v291[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v161 = [v10 description];
          v162 = v31;
          v163 = v29;
          v37 = v161;
          v164 = @"(null change)";
          if (v161)
          {
            v164 = v161;
          }

          v292[0] = v164;
          v291[1] = @"posterUUID";
          [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v162];
          v256 = v253 = v162;
          v292[1] = v256;
          v291[2] = @"posterUUIDToDuplicateOutUUID";
          v39 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v162];
          v292[2] = v39;
          v291[3] = @"posterUUIDToDuplicate";
          obj = v163;
          v40 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v163];
          v292[3] = v40;
          v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v292 forKeys:v291 count:4];
          *a6 = [v237 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v165];

          v34 = 0;
        }
      }

      else
      {
        v103 = MEMORY[0x277CCA9B8];
        v297[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v104 = [v10 description];
        v105 = v31;
        v106 = v104;
        v107 = @"(null change)";
        if (v104)
        {
          v107 = v104;
        }

        v298[0] = v107;
        v297[1] = @"posterUUIDToDuplicateOutUUID";
        [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v105];
        v109 = v108 = v15;
        v298[1] = v109;
        v297[2] = @"posterUUIDToDuplicate";
        [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v29];
        v110 = obj = v29;
        v298[2] = v110;
        v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v298 forKeys:v297 count:3];
        *a6 = [v103 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v111];

        v11 = v252;
        v15 = v108;
      }

      v149 = obj;
      goto LABEL_147;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRemovePoster"])
    {
      v82 = [v10 userInfo];
      v83 = [v82 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      v84 = [v244 posterWithUUID:v83];
      v85 = [v244 associatedPosterForUUID:v83];
      objb = objc_opt_new();
      v236 = v84;
      v239 = v85;
      if (!v85)
      {
        v128 = [v244 associatedPosterForPoster:v84];
        if ([v11 unassignPosterUUID:v83 fromRole:v16 error:a6] && v84)
        {
          v129 = [PBFPosterDataStoreEventBuilder posterDeleted:v84];
          v130 = [v129 buildWithError:a6];
          if (v130)
          {
            [objb addObject:v130];
          }

          v84 = v236;
        }

        if (v128)
        {
          v131 = [PBFPosterDataStoreEventBuilder posterDeleted:v128];
          v132 = [v131 buildWithError:a6];
          if (v132)
          {
            [objb addObject:v132];
          }

          v84 = v236;
        }

        v95 = objb;
        goto LABEL_121;
      }

      v235 = v83;
      v269 = 0;
      [v244 isPosterConfigurationAnAssociatedPoster:v84 parentPoster:&v269];
      v86 = v269;
      v87 = [v86 pbf_posterUUID];
      v88 = *MEMORY[0x277D3EEB0];
      v268 = 0;
      v89 = [v11 mutateAttributeForPoster:v87 roleId:v16 attributeId:v88 attributePayload:0 error:&v268];
      v90 = v268;

      if (v89)
      {
        v242 = v15;
        v91 = [PBFPosterDataStoreEventBuilder posterDeleted:v239];
        v92 = [v91 buildWithError:a6];
        if (v92)
        {
          [objb addObject:v92];
        }

        v93 = [PBFPosterDataStoreEventBuilder posterUpdatedFrom:v86 to:v86];

        v94 = [v93 buildWithError:a6];

        v95 = objb;
        if (v94)
        {
          [objb addObject:v94];
        }

        v11 = v252;
        v15 = v242;
        v83 = v235;
        v84 = v236;
LABEL_121:
        if ([v95 count])
        {
          *a5 = [v95 copy];
        }

        goto LABEL_44;
      }

      if (!v90)
      {
        v140 = MEMORY[0x277CCA9B8];
        v289[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v141 = [v10 description];
        v142 = v141;
        v143 = @"(null change)";
        if (v141)
        {
          v143 = v141;
        }

        v144 = @"(null uuid)";
        if (v235)
        {
          v144 = v235;
        }

        v290[0] = v143;
        v290[1] = v144;
        v145 = *MEMORY[0x277CCA470];
        v289[1] = @"posterUUIDToRemove";
        v289[2] = v145;
        v290[2] = @"Failed to remove assoc poster attribute";
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v290 forKeys:v289 count:3];
        v147 = v146 = v15;
        v90 = [v140 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v147];

        v15 = v146;
        v16 = v255;
      }

      v148 = v90;
      *a6 = v90;

      v149 = v235;
LABEL_147:

      goto LABEL_93;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeReorderPosters"])
    {
      v112 = [v10 userInfo];
      v113 = [v112 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyOrderedUUIDs"];

      if (!v113)
      {
        v166 = MEMORY[0x277CCA9B8];
        v287[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v167 = [v10 description];
        v168 = v167;
        v169 = @"(null change)";
        if (v167)
        {
          v169 = v167;
        }

        v287[1] = @"sortedPosterUUIDs";
        v288[0] = v169;
        v288[1] = @"(null sorted poster uuids)";
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v288 forKeys:v287 count:2];
        v171 = v170 = v15;
        *a6 = [v166 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v171];

        v15 = v170;
        v16 = v255;

        v149 = 0;
        goto LABEL_147;
      }

      if ([v11 mutateSortOrder:v113 roleId:v16 error:a6])
      {
        v243 = v113;
        v114 = v16;
        v115 = v15;
        objc = [v244 orderedPosters];
        v116 = MEMORY[0x277CBEB70];
        v267 = 0;
        v117 = [v11 sortedPosterUUIDsForRole:v114 error:&v267];
        v118 = v267;
        v119 = [v117 array];
        v265[0] = MEMORY[0x277D85DD0];
        v265[1] = 3221225472;
        v265[2] = __67__PBFPosterRoleCoordinator__executeChange_storage_outEvents_error___block_invoke;
        v265[3] = &unk_2782C7A98;
        v265[4] = self;
        v266 = v11;
        v120 = [v119 bs_mapNoNulls:v265];
        v121 = [v116 orderedSetWithArray:v120];

        if (v118)
        {
          v122 = v118;
          *a6 = v118;
        }

        else
        {
          v196 = [PBFPosterDataStoreEventBuilder postersReorderedFrom:objc to:v121];
          v197 = [v196 buildWithError:a6];
          v198 = v197;
          if (v197)
          {
            v286 = v197;
            *a5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v286 count:1];
          }
        }

        v11 = v252;
        v15 = v115;

        v16 = v255;
        v149 = v243;
        if (!v118)
        {

          goto LABEL_44;
        }

        goto LABEL_147;
      }

LABEL_205:

      goto LABEL_93;
    }

    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeSelectPoster"])
    {
      v123 = [v10 userInfo];
      v124 = [v123 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      v125 = [v244 posterWithUUID:v124];
      objd = v124;
      if (v125)
      {
        v126 = [v244 selectedPoster];
        v127 = [v126 isEqual:v125];

        if (v127)
        {
          LOBYTE(v12) = 1;
LABEL_170:

          goto LABEL_94;
        }

        v188 = MEMORY[0x277D3EDE8];
        v189 = [v125 _path];
        v190 = [v188 loadFocusConfigurationForPath:v189 error:0];

        if (!v190)
        {
          v113 = objd;
          if ([v11 markPosterUUIDAsSelected:objd roleId:v16 error:a6])
          {
            v218 = v15;
            v219 = [v244 posterWithUUID:objd];
            v220 = [v244 selectedPoster];
            v221 = [PBFPosterDataStoreEventBuilder posterSelected:v219 previous:v220];

            v222 = [v221 buildWithError:a6];
            v223 = v222;
            if (v222)
            {
              v281 = v222;
              *a5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v281 count:1];
            }

            [v251 bs_safeAddObject:objd];

            v15 = v218;
            v16 = v255;
            goto LABEL_44;
          }

          goto LABEL_205;
        }

        v191 = MEMORY[0x277CCA9B8];
        v282[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v192 = [v10 description];
        v12 = v192;
        v193 = @"(null change)";
        if (v192)
        {
          v193 = v192;
        }

        v283[0] = v193;
        v282[1] = @"posterUUID";
        v194 = [(__CFString *)objd UUIDString];
        v183 = v194;
        v195 = @"(null posterUUIDToSelect)";
        if (v194)
        {
          v195 = v194;
        }

        v282[2] = *MEMORY[0x277CCA470];
        v283[1] = v195;
        v283[2] = @"Unable to select a poster which has a focus mode associated with it (rdar://problem/110546596)";
        v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v283 forKeys:v282 count:3];
        v186 = v191;
        v187 = 4;
      }

      else
      {
        v179 = MEMORY[0x277CCA9B8];
        v284[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v180 = [v10 description];
        v12 = v180;
        v181 = @"(null change)";
        if (v180)
        {
          v181 = v180;
        }

        v285[0] = v181;
        v284[1] = @"posterUUID";
        v182 = [(__CFString *)v124 UUIDString];
        v183 = v182;
        v184 = @"(null poster to select)";
        if (v182)
        {
          v184 = v182;
        }

        v285[1] = v184;
        v185 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v285 forKeys:v284 count:2];
        v186 = v179;
        v187 = 2;
      }

      *a6 = [v186 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:v187 userInfo:v185];

      LOBYTE(v12) = 0;
      goto LABEL_170;
    }

    v27 = v244;
    if ([v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeAssignAttribute"])
    {
      v150 = [v10 userInfo];
      v151 = [v150 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      v152 = [v244 posterWithUUID:v151];
      if (!v152)
      {
        v199 = MEMORY[0x277CCA9B8];
        v279[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
        v200 = [v10 description];
        v201 = v200;
        v202 = @"(null change)";
        if (v200)
        {
          v202 = v200;
        }

        v280[0] = v202;
        v279[1] = @"posterUUID";
        v203 = [v151 UUIDString];
        v204 = v15;
        v205 = v203;
        v206 = @"(null posterUUID)";
        if (v203)
        {
          v206 = v203;
        }

        v280[1] = v206;
        v207 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v280 forKeys:v279 count:2];
        *a6 = [v199 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:2 userInfo:v207];

        v15 = v204;
        v16 = v255;

        goto LABEL_110;
      }

      v12 = v152;
      v153 = v15;
      v154 = [v10 userInfo];
      v155 = [v154 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute"];

      if (v155)
      {
        v156 = [v155 attributeType];
        v157 = [v155 encodeJSON];
        v158 = [v11 mutateAttributeForPoster:v151 roleId:v16 attributeId:v156 attributePayload:v157 error:a6];

        if (v158)
        {
          v159 = [v155 attributeType];
          v160 = [v159 isEqualToString:*MEMORY[0x277D3EED8]];

          if ((v160 & 1) == 0)
          {
            [v153 bs_safeAddObject:v151];
          }

          v11 = v252;
          v15 = v153;
          goto LABEL_44;
        }

        LOBYTE(v12) = 0;
        v11 = v252;
        goto LABEL_208;
      }

      v208 = MEMORY[0x277CCA9B8];
      v277[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v209 = [v10 description];
      v210 = v209;
      if (v209)
      {
        v211 = v209;
      }

      else
      {
        v211 = @"(null change)";
      }

      v278[0] = v211;
      v277[1] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v212 = [v10 description];
      v213 = v212;
      if (v212)
      {
        v214 = v212;
      }

      else
      {
        v214 = @"(null change)";
      }

      v278[1] = v214;
      v215 = MEMORY[0x277CBEAC0];
      v216 = v278;
      v217 = v277;
    }

    else
    {
      if (![v17 isEqualToString:@"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute"])
      {
        goto LABEL_110;
      }

      v172 = [v10 userInfo];
      v151 = [v172 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      v12 = [v244 posterWithUUID:v151];
      if (!v12)
      {
        v224 = MEMORY[0x277CCA9B8];
        v275 = @"posterUUID";
        v225 = [v151 UUIDString];
        v226 = v225;
        v227 = @"(posterUUID)";
        if (v225)
        {
          v227 = v225;
        }

        v276 = v227;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
        v229 = v228 = v15;
        *a6 = [v224 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:2 userInfo:v229];

        v15 = v228;
        v16 = v255;

        goto LABEL_95;
      }

      v153 = v15;
      v173 = [v10 userInfo];
      v174 = [v173 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType"];

      if (v174)
      {
        if ([v11 mutateAttributeForPoster:v151 roleId:v16 attributeId:v174 attributePayload:0 error:a6])
        {
          [v15 bs_safeAddObject:v151];

          goto LABEL_44;
        }

        goto LABEL_207;
      }

      v208 = MEMORY[0x277CCA9B8];
      v273[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v230 = [v10 description];
      v210 = v230;
      if (v230)
      {
        v231 = v230;
      }

      else
      {
        v231 = @"(null change)";
      }

      v274[0] = v231;
      v273[1] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v232 = [v10 description];
      v213 = v232;
      if (v232)
      {
        v233 = v232;
      }

      else
      {
        v233 = @"(null change)";
      }

      v274[1] = v233;
      v215 = MEMORY[0x277CBEAC0];
      v216 = v274;
      v217 = v273;
    }

    v234 = [v215 dictionaryWithObjects:v216 forKeys:v217 count:2];
    *a6 = [v208 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v234];

    v11 = v252;
LABEL_207:

    LOBYTE(v12) = 0;
LABEL_208:
    v15 = v153;
    goto LABEL_94;
  }

  [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  *a6 = LOBYTE(v12) = 0;
LABEL_96:

  return v12;
}

id __67__PBFPosterRoleCoordinator__executeChange_storage_outEvents_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 extensionIdentifierForPosterUUID:v4 error:0];
  v6 = [v2 posterWithUUID:v4 extensionIdentifier:v5];

  return v6;
}

- (BOOL)_ingestIncomingPosterConfiguration:(id)a3 change:(id)a4 currentCollection:(id)a5 storage:(id)a6 outEvents:(id *)a7 error:(id *)a8
{
  v342[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
  {
    v257 = a7;
    v271 = a8;
    v264 = objc_opt_new();
    v20 = [(PBFPosterRoleCoordinator *)self role];
    v272 = [v15 path];
    v21 = [v272 role];
    v22 = BSEqualObjects();

    if ((v22 & 1) == 0)
    {
      [PBFPosterRoleCoordinator _ingestIncomingPosterConfiguration:a2 change:? currentCollection:? storage:? outEvents:? error:?];
    }

    v270 = v16;
    v261 = [v15 parentPosterUUID];
    v265 = [v17 posterWithUUID:?];
    v23 = [v265 _path];
    v263 = [v23 serverIdentity];

    v24 = [v15 sourceIdentity];
    v269 = [v24 provider];
    v267 = [v15 destinationUUID];
    v25 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v26 = [v24 provider];
    v27 = [v25 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v26 error:0];

    v28 = [v24 posterUUID];
    v260 = v27;
    v29 = [v27 modelStoreCoordinatorForPosterUUID:v28];
    v268 = v24;
    v30 = [v29 pathForIdentity:v24];

    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v272;
    }

    v262 = [MEMORY[0x277D3EDE8] loadConfigurableOptionsForPath:v31 error:0];
    v32 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v33 = v269;
    v34 = [v32 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v269 error:v271];

    v266 = v34;
    if (!v34)
    {
      v19 = 0;
      v46 = v263;
LABEL_209:

      v16 = v270;
      goto LABEL_210;
    }

    v259 = v20;
    v35 = [v15 incomingPosterType];
    v36 = v35;
    if ((v35 - 3) >= 2)
    {
      if (v35 == 2)
      {
        v250 = v30;
        v48 = v18;
        [v17 posterWithUUID:v267];
        v50 = v49 = v17;
        if (v50)
        {
          v51 = [objc_opt_class() supportedAttributes];
          v52 = v49;
          v47 = [v49 attributesForPoster:v50 ofTypes:v51];

          v33 = v269;
          if (![v47 count])
          {
            v54 = [(PBFPosterRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:v269];

            v47 = v54;
          }
        }

        else
        {
          v52 = v49;
          v53 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            v142 = [v52 orderedPosterUUIDs];
            *buf = 138543874;
            v336 = v267;
            v337 = 2114;
            v338 = v142;
            v339 = 2114;
            v340 = v259;
            _os_log_fault_impl(&dword_21B526000, v53, OS_LOG_TYPE_FAULT, "Invalid existing poster for UUID: %{public}@ -- poster collection UUIDs %{public}@ -- role %{public}@", buf, 0x20u);
          }

          v33 = v269;
          v47 = [(PBFPosterRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:v269];
        }

        v17 = v52;
        v18 = v48;
        v30 = v250;
        goto LABEL_26;
      }

      if (v35 != 1)
      {
        v47 = 0;
        goto LABEL_26;
      }
    }

    v37 = [v17 orderedPosters];
    v38 = [v37 count];

    if (v38 + 1 > [(PBFPosterRoleCoordinator *)self maximumNumberOfPosters])
    {
      v39 = MEMORY[0x277CCA9B8];
      v341[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v40 = [v270 description];
      v41 = v40;
      v42 = @"(null change)";
      if (v40)
      {
        v42 = v40;
      }

      v341[1] = *MEMORY[0x277CCA470];
      v342[0] = v42;
      v342[1] = @"Exceeded data store poster configuration limit";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v342 forKeys:v341 count:2];
      v44 = v39;
      v45 = v43;
      [v44 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v43];
      *v271 = v19 = 0;
      v20 = v259;
      v46 = v263;
      v33 = v269;
      goto LABEL_208;
    }

    v47 = 0;
    v33 = v269;
LABEL_26:
    v55 = [v15 configuredProperties];
    v258 = [v15 attributes];
    objc_opt_class();
    v255 = v15;
    v256 = v47;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v72 = v30;
      v73 = v55;
      v74 = MEMORY[0x277CCA9B8];
      v333 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v75 = [v270 description];
      v76 = v75;
      v77 = @"(null change)";
      if (v75)
      {
        v77 = v75;
      }

      v334 = v77;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v334 forKeys:&v333 count:1];
      v79 = v74;
      v45 = v73;
      [v79 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v78];
      *v271 = v19 = 0;
      v20 = v259;
      v46 = v263;
      goto LABEL_207;
    }

    v252 = v55;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v72 = v30;
      v80 = MEMORY[0x277CCA9B8];
      v331 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v81 = [v270 description];
      v76 = v81;
      v82 = @"(null change)";
      if (v81)
      {
        v82 = v81;
      }

      v332 = v82;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v332 forKeys:&v331 count:1];
      [v80 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v78];
      *v271 = v19 = 0;
      v20 = v259;
      v46 = v263;
      v45 = v252;
      goto LABEL_207;
    }

    v56 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v57 = [v56 providerForExtensionIdentifier:v33];

    v244 = v57;
    v245 = v17;
    if (!v57)
    {
      v72 = v30;
      v83 = MEMORY[0x277CCA9B8];
      v329[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v84 = [v270 description];
      v85 = @"(null change)";
      v246 = v84;
      if (v84)
      {
        v85 = v84;
      }

      v329[1] = *MEMORY[0x277CCA470];
      v330[0] = v85;
      v330[1] = @"Extension does not exist";
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v330 forKeys:v329 count:2];
      [v83 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v86];
      *v271 = v19 = 0;
      v20 = v259;
      v46 = v263;
      v45 = v252;
      goto LABEL_206;
    }

    v251 = v30;
    v58 = [v57 supportedRoles];
    v59 = [v58 containsObject:v259];

    if ((v59 & 1) == 0)
    {
      v87 = MEMORY[0x277CCA9B8];
      v327[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v88 = [v270 description];
      v89 = @"(null change)";
      v246 = v88;
      if (v88)
      {
        v89 = v88;
      }

      v327[1] = *MEMORY[0x277CCA470];
      v328[0] = v89;
      v328[1] = @"Extension does not support role";
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v328 forKeys:v327 count:2];
      [v87 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v86];
      *v271 = v19 = 0;
      v20 = v259;
      v46 = v263;
      v33 = v269;
      v72 = v30;
      v45 = v252;
      goto LABEL_206;
    }

    v246 = [v266 configurationStoreCoordinatorForPosterUUID:v267];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke;
    aBlock[3] = &unk_2782C7AC0;
    v315 = v268;
    v60 = v259;
    v316 = v60;
    v243 = _Block_copy(aBlock);
    v310[0] = MEMORY[0x277D85DD0];
    v310[1] = 3221225472;
    v310[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_3;
    v310[3] = &unk_2782C7AE8;
    v310[4] = self;
    v311 = v256;
    v61 = v17;
    v312 = v61;
    v62 = v60;
    v313 = v62;
    v63 = _Block_copy(v310);
    v242 = v63;
    if (v36 <= 2)
    {
      v46 = v263;
      v64 = v251;
      if (v36)
      {
        if (v36 != 1)
        {
          v33 = v269;
          if (v36 != 2)
          {
            v130 = v246;
            v20 = v259;
LABEL_95:
            v45 = v252;
            goto LABEL_120;
          }

          v20 = v259;
          v45 = v252;
          if (!v246)
          {
            v143 = MEMORY[0x277CCA9B8];
            v323[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
            v144 = [v270 description];
            v145 = v144;
            v146 = @"(null change)";
            if (v144)
            {
              v146 = v144;
            }

            v147 = *MEMORY[0x277CCA470];
            v324[0] = v146;
            v324[1] = @"No Configuration store coordinator found to update";
            v323[1] = v147;
            v323[2] = @"posterUUID";
            v148 = [v267 UUIDString];
            v149 = v148;
            v150 = @"(null destinationPosterUUID)";
            if (v148)
            {
              v150 = v148;
            }

            v324[2] = v150;
            v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v324 forKeys:v323 count:3];
            v152 = v143;
            v45 = v252;
            *v271 = [v152 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v151];

            v33 = v269;
            v141 = v242;
            v246 = 0;
            v19 = 0;
            goto LABEL_205;
          }

          if (!v63[2](v63, v267, v258, v18, v271))
          {
            v19 = 0;
            goto LABEL_204;
          }

          v65 = objc_alloc(MEMORY[0x277D3ED58]);
          v66 = [v246 pathOfLatestVersion];
          v67 = [v65 _initWithPath:v66];

          if ([v272 isServerPosterPath])
          {
            v68 = [v272 serverIdentity];
            v69 = [v68 posterUUID];
            v70 = [v15 originalPosterUUID];
            v71 = [v69 isEqual:v70];
          }

          else
          {
            v71 = 0;
          }

          v176 = [objc_opt_class() supportsSupplementalUpdates];
          if (v71 && v176)
          {
            v304 = 0;
            v177 = v246;
            v178 = [v246 stageNewSupplementWithError:&v304];
            v179 = v304;
          }

          else
          {
            v180 = [v272 contentsURL];
            v303 = 0;
            v177 = v246;
            v178 = [v246 stageNewVersionWithContents:v180 error:&v303];
            v179 = v303;
          }

          v45 = v252;
          v181 = [v177 pathForIdentity:v178];
          v182 = v181;
          v33 = v269;
          if (v178 && !v179)
          {
            if (__112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2(v181, v181, v252, v262, v271))
            {
              v183 = objc_alloc(MEMORY[0x277D3ED58]);
              v184 = [v246 pathForIdentity:v178];
              v185 = [v183 _initWithPath:v184];

              v186 = [PBFPosterDataStoreEventBuilder posterUpdatedFrom:v67 to:v185];
              [v186 setOriginatingRoleCoordinatorChange:v270];
              v299[0] = MEMORY[0x277D85DD0];
              v299[1] = 3221225472;
              v299[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_5;
              v299[3] = &unk_2782C7B38;
              v300 = v266;
              v301 = v267;
              v302 = v178;
              v187 = v178;
              [v186 setRevertBlock:v299];
              v188 = [v186 buildWithError:v271];
              if (v188)
              {
                [v264 addObject:v188];
              }

              if (v188)
              {
                v130 = v246;
                v20 = v259;
                v46 = v263;
                v33 = v269;
                goto LABEL_95;
              }

              v19 = 0;
              goto LABEL_131;
            }

            [v266 teardownConfigurationStoreCoordinatorForPosterUUID:v267 version:objc_msgSend(v178 error:{"version"), 0}];
          }

          v19 = 0;
          v20 = v259;
          v46 = v263;
          goto LABEL_204;
        }

        v33 = v269;
        if ([v18 addPosterUUID:v267 provider:v269 error:v271])
        {
          v20 = v259;
          if (![v18 assignPosterUUID:v267 toRole:v62 error:v271] || !v242[2](v242, v267, v258, v18, v271))
          {
            goto LABEL_202;
          }

          v309 = v246;
          v120 = v243[2](v243, v266, v267, &v309, v271);
          v121 = v309;

          if (v120)
          {
            v122 = [v272 contentsURL];
            v308 = 0;
            v246 = v121;
            v123 = [v121 stageNewVersionWithContents:v122 error:&v308];
            v124 = v308;

            if (!v123 || v124)
            {
              v232 = v124;
              *v271 = v124;
            }

            else
            {
              v125 = [v246 pathForIdentity:v123];
              if (__112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2(v125, v125, v252, v262, v271))
              {
                v126 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v125];
                v127 = [PBFPosterDataStoreEventBuilder posterAdded:v126];
                [v127 setOriginatingRoleCoordinatorChange:v270];
                v305[0] = MEMORY[0x277D85DD0];
                v305[1] = 3221225472;
                v305[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_4;
                v305[3] = &unk_2782C7B10;
                v306 = v266;
                v307 = v267;
                [v127 setRevertBlock:v305];
                v128 = [v127 buildWithError:v271];
                if (v128)
                {
                  v129 = v128;
                  [v264 addObject:v128];

                  v20 = v259;
                  v46 = v263;
                  v33 = v269;
                  v64 = v251;
                  v45 = v252;
                  v130 = v246;
                  goto LABEL_120;
                }

                v19 = 0;
LABEL_199:
                v20 = v259;
                v46 = v263;
                v33 = v269;
                v64 = v251;
                goto LABEL_203;
              }

              [v266 teardownConfigurationStoreCoordinatorForPosterUUID:v267 error:0];

              v20 = v259;
              v46 = v263;
              v33 = v269;
              v64 = v251;
            }

LABEL_202:
            v19 = 0;
            goto LABEL_203;
          }

          v19 = 0;
          v246 = v121;
          v45 = v252;
          v141 = v242;
LABEL_205:
          v72 = v64;

          v86 = v315;
LABEL_206:

          v76 = v244;
          v17 = v245;
          v78 = v246;
LABEL_207:

          v30 = v72;
          v15 = v255;
          v41 = v256;
LABEL_208:

          goto LABEL_209;
        }

LABEL_192:
        v19 = 0;
        v20 = v259;
        goto LABEL_203;
      }

      v113 = MEMORY[0x277CCA9B8];
      v325[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v114 = [v270 description];
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = @"(null change)";
      }

      v326[0] = v115;
      v326[1] = @"PRIncomingPosterTypeUnknown";
      v325[1] = @"incomingPosterType";
      v325[2] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v116 = [v270 description];
      v117 = v116;
      if (v116)
      {
        v118 = v116;
      }

      else
      {
        v118 = @"(null change)";
      }

      v64 = v251;
      v326[2] = v118;
      v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v326 forKeys:v325 count:3];
      *v271 = [v113 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v119];

LABEL_92:
      v141 = v242;
      v19 = 0;
      v20 = v259;
      v33 = v269;
      v45 = v252;
      goto LABEL_205;
    }

    v64 = v251;
    if ((v36 - 4) >= 2)
    {
      v45 = v252;
      if (v36 == 3)
      {
        v104 = [v15 originalPosterUUID];
        v105 = [v61 posterWithUUID:v104];
        v20 = v259;
        if (!v105)
        {
          [PBFPosterRoleCoordinator _ingestIncomingPosterConfiguration:a2 change:? currentCollection:? storage:? outEvents:? error:?];
        }

        v236 = v105;
        v238 = [v105 _path];
        v106 = [v270 userInfo];
        v107 = [v106 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];
        v248 = v104;
        v108 = BSEqualObjects();

        if ((v108 & 1) == 0)
        {
          [PBFPosterRoleCoordinator _ingestIncomingPosterConfiguration:a2 change:? currentCollection:? storage:? outEvents:? error:?];
        }

        v109 = [v270 userInfo];
        v110 = [v109 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyOutPosterUUID"];
        v111 = v110;
        if (v110)
        {
          v112 = v110;
        }

        else
        {
          v112 = [MEMORY[0x277CCAD78] UUID];
        }

        v153 = v112;
        v46 = v263;

        v33 = v269;
        v241 = v153;
        if ([v18 addPosterUUID:v153 provider:v269 error:v271] && objc_msgSend(v18, "assignPosterUUID:toRole:error:", v153, v62, v271))
        {
          v298 = v246;
          LODWORD(v153) = v243[2](v243, v266, v153, &v298, v271);
          v130 = v298;

          if (v153)
          {
            v247 = v130;
            v296 = 0u;
            v297 = 0u;
            v294 = 0u;
            v295 = 0u;
            v254 = v18;
            v154 = [v18 attributeIdentifiersForPoster:v248 roleId:v62 error:0];
            v155 = [v154 countByEnumeratingWithState:&v294 objects:v322 count:16];
            if (v155)
            {
              v156 = v155;
              v157 = 0;
              v158 = *v295;
              do
              {
                for (i = 0; i != v156; ++i)
                {
                  if (*v295 != v158)
                  {
                    objc_enumerationMutation(v154);
                  }

                  v160 = *(*(&v294 + 1) + 8 * i);
                  if (!v157)
                  {
                    v157 = objc_opt_new();
                  }

                  v161 = [v254 attributeForPoster:v248 roleId:v62 attributeId:v160 error:0];
                  if (v161)
                  {
                    [v157 setObject:v161 forKeyedSubscript:v160];
                  }
                }

                v156 = [v154 countByEnumeratingWithState:&v294 objects:v322 count:16];
              }

              while (v156);
            }

            else
            {
              v157 = 0;
            }

            v292 = 0u;
            v293 = 0u;
            v290 = 0u;
            v291 = 0u;
            v207 = [v258 keyEnumerator];
            v208 = [v207 countByEnumeratingWithState:&v290 objects:v321 count:16];
            v18 = v254;
            if (v208)
            {
              v209 = v208;
              v210 = *v291;
              do
              {
                for (j = 0; j != v209; ++j)
                {
                  if (*v291 != v210)
                  {
                    objc_enumerationMutation(v207);
                  }

                  v212 = *(*(&v290 + 1) + 8 * j);
                  v213 = [v258 objectForKeyedSubscript:v212];
                  v214 = [v213 encodeJSON];

                  if (v214)
                  {
                    [v157 setObject:v214 forKeyedSubscript:v212];
                  }

                  v18 = v254;
                }

                v209 = [v207 countByEnumeratingWithState:&v290 objects:v321 count:16];
              }

              while (v209);
            }

            if (v242[2](v242, v241, v258, v18, v271))
            {
              v215 = [v272 contentsURL];
              v289 = 0;
              v130 = v247;
              v216 = [v247 stageNewVersionWithContents:v215 error:&v289];
              v217 = v289;

              if (!v216 || v217)
              {
                v233 = v217;
                LOBYTE(v153) = 0;
                *v271 = v217;
                v33 = v269;
              }

              else
              {
                v218 = [v247 pathForIdentity:v216];
                if (__112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2(v218, v218, v252, v262, v271))
                {
                  v219 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
                  v220 = [v238 serverIdentity];
                  v221 = [v219 pbf_posterSnapshotCoordinatorForIdentity:v220];

                  v153 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
                  v235 = v216;
                  v222 = [v153 pbf_posterSnapshotCoordinatorForIdentity:v216];

                  [v222 ingestSnapshotsFromCoordinator:v221];
                  v223 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v218];
                  v224 = [PBFPosterDataStoreEventBuilder posterAdded:v223];
                  v225 = [v224 buildWithError:v271];
                  [v224 setOriginatingRoleCoordinatorChange:v270];
                  v286[0] = MEMORY[0x277D85DD0];
                  v286[1] = 3221225472;
                  v286[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_249;
                  v286[3] = &unk_2782C7B10;
                  v287 = v266;
                  v288 = v241;
                  [v224 setRevertBlock:v286];
                  LOBYTE(v153) = v225 != 0;
                  if (v225)
                  {
                    [v264 addObject:v225];
                  }

                  v18 = v254;
                  v33 = v269;
                  v130 = v247;
                  v216 = v235;
                }

                else
                {
                  [v266 teardownConfigurationStoreCoordinatorForPosterUUID:v241 error:0];

                  LOBYTE(v153) = 0;
                  v18 = v254;
                  v33 = v269;
                  v130 = v247;
                }
              }
            }

            else
            {
              LOBYTE(v153) = 0;
              v33 = v269;
              v130 = v247;
            }

            v20 = v259;
            v46 = v263;
          }
        }

        else
        {
          LOBYTE(v153) = 0;
          v130 = v246;
        }

        if ((v153 & 1) == 0)
        {
          v19 = 0;
          v246 = v130;
          v64 = v251;
          v45 = v252;
          goto LABEL_204;
        }

        v64 = v251;
        v45 = v252;
      }

      else
      {
        v130 = v246;
        v20 = v259;
        v46 = v263;
        v33 = v269;
      }

LABEL_120:
      *v257 = [v264 copy];
      v19 = 1;
      v246 = v130;
LABEL_204:
      v141 = v242;
      goto LABEL_205;
    }

    if (!v265)
    {
      v131 = MEMORY[0x277CCA9B8];
      v319[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v132 = [v270 description];
      v114 = v132;
      v133 = @"(null change)";
      if (v132)
      {
        v133 = v132;
      }

      v134 = *MEMORY[0x277CCA470];
      v320[0] = v133;
      v320[1] = @"No parent configuration specified for associated configuration";
      v319[1] = v134;
      v319[2] = @"posterUUID";
      v46 = v263;
      [v263 posterUUID];
      v136 = v135 = v18;
      v137 = [v136 UUIDString];
      v138 = v137;
      v139 = @"(parent poster uuid)";
      if (v137)
      {
        v139 = v137;
      }

      v320[2] = v139;
      v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v320 forKeys:v319 count:3];
      *v271 = [v131 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v140];

      v18 = v135;
      v64 = v251;
      goto LABEL_92;
    }

    v253 = v18;
    v90 = v36 == 4 || v246 == 0;
    v91 = v90;
    if (v90)
    {
      v285 = v246;
      v92 = v243[2](v243, v266, v267, &v285, v271);
      v93 = v285;

      if (!v92)
      {
        v19 = 0;
        v246 = v93;
        goto LABEL_130;
      }

      v246 = v93;
    }

    v94 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v95 = [v263 provider];
    v96 = [v94 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v95 error:v271];

    v97 = v96;
    if (!v96)
    {
      v19 = 0;
      v18 = v253;
      v20 = v259;
      v46 = v263;
LABEL_132:
      v33 = v269;
LABEL_203:
      v45 = v252;
      goto LABEL_204;
    }

    v98 = [v263 posterUUID];
    v99 = [v96 configurationStoreCoordinatorForPosterUUID:v98];

    if (v99)
    {
      v240 = v97;
      if ([v272 isServerPosterPath])
      {
        v100 = [v272 serverIdentity];
        v101 = [v100 posterUUID];
        v102 = [v15 originalPosterUUID];
        v103 = [v101 isEqual:v102];
      }

      else
      {
        v103 = 0;
      }

      v172 = [objc_opt_class() supportsSupplementalUpdates];
      v173 = [v246 pathOfLatestVersion];
      if (v173)
      {
        v174 = objc_alloc(MEMORY[0x277D3ED58]);
        v175 = [v246 pathOfLatestVersion];
        v249 = [v174 _initWithPath:v175];
      }

      else
      {
        v249 = 0;
      }

      v18 = v253;

      if ((v103 & v172) == 1)
      {
        v284 = 0;
        v189 = [v246 stageNewSupplementWithError:&v284];
        v190 = v284;
      }

      else
      {
        v191 = [v272 contentsURL];
        v283 = 0;
        v189 = [v246 stageNewVersionWithContents:v191 error:&v283];
        v190 = v283;
      }

      v33 = v269;
      if (!v189 || v190)
      {
        v205 = v99;
        v206 = v190;
        *v271 = v190;
        v46 = v263;
      }

      else
      {
        v192 = [v246 pathForIdentity:v189];
        if (__112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2(v192, v192, v252, v262, v271))
        {
          v239 = v192;
          v193 = [objc_alloc(MEMORY[0x277D3ED58]) _initWithPath:v192];
          v237 = v189;
          if (v91)
          {
            v194 = objc_alloc(MEMORY[0x277D3EC68]);
            v195 = [v193 pbf_posterUUID];
            v196 = [MEMORY[0x277CBEAA8] date];
            v197 = [v193 pbf_posterProvider];
            v198 = [v194 initWithChildPosterUUID:v195 dateCreated:v196 providerIdentifier:v197];

            v199 = *MEMORY[0x277D3EEB0];
            v200 = [v198 encodeJSON];
            LODWORD(v199) = [v253 mutateAttributeForPoster:v261 roleId:v62 attributeId:v199 attributePayload:v200 error:v271];

            v201 = v193;
            if (!v199)
            {

              v202 = 0;
              goto LABEL_197;
            }

            v202 = [PBFPosterDataStoreEventBuilder posterAdded:v193];
            v203 = v270;
            [v202 setOriginatingRoleCoordinatorChange:v270];
            v280[0] = MEMORY[0x277D85DD0];
            v280[1] = 3221225472;
            v280[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2_257;
            v280[3] = &unk_2782C7B10;
            v281 = v266;
            v282 = v267;
            [v202 setRevertBlock:v280];
            v204 = [v202 buildWithError:v271];
          }

          else
          {
            v202 = [PBFPosterDataStoreEventBuilder posterUpdatedFrom:v249 to:v193];
            v203 = v270;
            [v202 setOriginatingRoleCoordinatorChange:v270];
            v276[0] = MEMORY[0x277D85DD0];
            v276[1] = 3221225472;
            v276[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_3_258;
            v276[3] = &unk_2782C7B38;
            v277 = v266;
            v278 = v267;
            v279 = v189;
            [v202 setRevertBlock:v276];
            v204 = [v202 buildWithError:v271];

            v198 = v277;
            v201 = v193;
          }

          if (v204)
          {
            [v264 addObject:v204];
            v226 = [v246 providerInfo];
            [v263 posterUUID];
            v228 = v227 = v204;
            [v246 setObject:v228 forKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];

            v229 = [PBFPosterDataStoreEventBuilder posterUpdatedFrom:v265 to:v265];

            [v229 setOriginatingRoleCoordinatorChange:v203];
            v273[0] = MEMORY[0x277D85DD0];
            v273[1] = 3221225472;
            v273[2] = __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_4_259;
            v273[3] = &unk_2782C7B10;
            v246 = v246;
            v274 = v246;
            v275 = v226;
            v230 = v226;
            [v229 setRevertBlock:v273];
            v231 = [v229 buildWithError:v271];

            if (v231)
            {
              [v264 addObject:v231];
            }

            if (v231)
            {
              v130 = v246;
              v18 = v253;
              v20 = v259;
              v46 = v263;
              v33 = v269;
              v64 = v251;
              goto LABEL_95;
            }

            goto LABEL_198;
          }

LABEL_197:

LABEL_198:
          v19 = 0;
          v18 = v253;
          goto LABEL_199;
        }

        v205 = v99;
        v46 = v263;
        if (v91)
        {
          [v266 teardownConfigurationStoreCoordinatorForPosterUUID:v267 error:0];
        }

        else
        {
          [v266 teardownConfigurationStoreCoordinatorForPosterUUID:v267 version:objc_msgSend(v189 error:{"version"), 0}];
        }
      }

      goto LABEL_192;
    }

    v162 = MEMORY[0x277CCA9B8];
    v317[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
    v163 = [v270 description];
    v164 = v163;
    v165 = @"(null change)";
    if (v163)
    {
      v165 = v163;
    }

    v166 = *MEMORY[0x277CCA470];
    v318[0] = v165;
    v318[1] = @"No Configuration store coordinator found to update";
    v317[1] = v166;
    v317[2] = @"posterUUID";
    v167 = [v267 UUIDString];
    v168 = v97;
    v169 = v167;
    v170 = @"(null destinationPosterUUID)";
    if (v167)
    {
      v170 = v167;
    }

    v318[2] = v170;
    v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v318 forKeys:v317 count:3];
    *v271 = [v162 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v171];

    v19 = 0;
LABEL_130:
    v18 = v253;
LABEL_131:
    v20 = v259;
    v46 = v263;
    goto LABEL_132;
  }

  [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  *a8 = v19 = 0;
LABEL_210:

  return v19;
}

uint64_t __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (*a4)
  {
    v5 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = a3;
    v12 = a2;
    v13 = [v10 descriptorIdentifier];
    v14 = *(a1 + 40);
    v21 = 0;
    v15 = [v12 stageNewConfigurationStoreCoordinatorForPosterUUID:v11 descriptorIdentifier:v13 role:v14 error:&v21];

    v16 = v21;
    v17 = v15 != 0;
    v18 = v16 == 0;
    v5 = v17 && v18;
    if (v17 && v18)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v17 && v18)
    {
      a5 = a4;
    }

    *a5 = v19;
  }

  return v5 & 1;
}

uint64_t __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    if (![MEMORY[0x277D3EDE8] storeConfiguredPropertiesForPath:v8 configuredProperties:v9 error:a5])
    {
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

    v11 = [v9 otherMetadata];
    if (v11)
    {
      goto LABEL_6;
    }

    v12 = [v10 displayNameLocalizationKey];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277D3EDD0]);
      v14 = [v10 displayNameLocalizationKey];
      v11 = [v13 initWithDisplayNameLocalizationKey:v14];

      [MEMORY[0x277D3EDE8] storeOtherMetadataForPath:v8 otherMetadata:v11 error:0];
LABEL_6:
    }
  }

  if (v10 && ![MEMORY[0x277D3EDE8] storeConfigurableOptionsForPath:v8 configurableOptions:v10 error:a5])
  {
    goto LABEL_10;
  }

  v15 = 1;
LABEL_11:

  return v15;
}

uint64_t __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_3(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a1[4];
  v12 = a1[5];
  v39 = 0;
  v40 = 0;
  v13 = [v11 _prepareAttributesForIngestionForPoster:v9 existingAttributes:v12 incomingAttributes:a3 proposedAttributesToDelete:&v40 proposedAttributesToUpdate:&v39 storage:v10 currentCollection:a1[6] error:a5];
  v14 = v40;
  v30 = v39;
  if (v13)
  {
    if ([v14 count] || objc_msgSend(v30, "count"))
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = v14;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![v10 mutateAttributeForPoster:v9 roleId:a1[7] attributeId:*(*(&v35 + 1) + 8 * i) attributePayload:0 error:a5])
            {
              v26 = 0;
              goto LABEL_23;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = [v30 keyEnumerator];
      v20 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v29 = *v32;
LABEL_14:
        v22 = 0;
        while (1)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          v24 = [v30 objectForKey:v23];
          v25 = [v24 encodeJSON];
          v26 = [v10 mutateAttributeForPoster:v9 roleId:a1[7] attributeId:v23 attributePayload:v25 error:a5];

          if (!v26)
          {
            break;
          }

          if (v21 == ++v22)
          {
            v21 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
            v26 = 1;
            if (v21)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      else
      {
        v26 = 1;
      }

LABEL_23:
      v14 = v28;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) version];

  return [v1 teardownConfigurationStoreCoordinatorForPosterUUID:v2 version:v3 error:0];
}

uint64_t __112__PBFPosterRoleCoordinator__ingestIncomingPosterConfiguration_change_currentCollection_storage_outEvents_error___block_invoke_3_258(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) version];

  return [v1 teardownConfigurationStoreCoordinatorForPosterUUID:v2 version:v3 error:0];
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10
{
  v48 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled];
  if (v18)
  {
    *a10 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  }

  else
  {
    v40 = a7;
    v41 = v15;
    v19 = MEMORY[0x277CBEB98];
    v20 = [v16 allKeys];
    v21 = [v19 setWithArray:v20];

    v39 = v21;
    v22 = [v21 mutableCopy];
    v23 = MEMORY[0x277CBEB98];
    v24 = [v17 allKeys];
    v25 = [v23 setWithArray:v24];
    [v22 minusSet:v25];

    v26 = [objc_opt_class() protectedAttributes];
    if ([v22 intersectsSet:v26])
    {
      v27 = [v22 mutableCopy];
      [v27 intersectSet:v26];
      v28 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(PBFPosterRoleCoordinator *)self role];
        *buf = 138543874;
        v43 = v29;
        v44 = 2114;
        v45 = v41;
        v46 = 2114;
        v47 = v27;
        _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Blocked deletion of protected attribute(s) from poster %{public}@: %{public}@", buf, 0x20u);
      }

      [v22 minusSet:v26];
    }

    v30 = [v17 mutableCopy];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = objc_opt_new();
    }

    v33 = v32;

    v34 = *MEMORY[0x277D3EED8];
    v35 = [v33 objectForKey:*MEMORY[0x277D3EED8]];

    if (v35)
    {
      v36 = [v33 objectForKeyedSubscript:v34];
      v37 = [v36 usageMetadataWithUpdatedLastModifiedDate];
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277D3EE38]);
    }

    [v33 setObject:v37 forKeyedSubscript:v34];

    if (a6)
    {
      *a6 = [v22 copy];
    }

    v15 = v41;
    if (v40)
    {
      *v40 = [v33 copy];
    }
  }

  return v18 ^ 1;
}

- (void)noteDidResetRoleCoordinator:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PBFPosterRoleCoordinator *)self role];
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = self;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did reset role coordinator %{public}@", &v6, 0x16u);
  }
}

+ (void)dumpResultsForEvent:(id)a3 role:(id)a4 posterCollection:(id)a5 changes:(id)a6 eventWasHandled:(BOOL)a7
{
  v7 = a7;
  v60 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v43 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  v16 = [v15 substringToIndex:7];

  v17 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v55 = v16;
    v56 = 2114;
    v57 = v11;
    v58 = 2114;
    v59 = v43;
    _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@]\tExecution report for notifyEventWasReceived:%{public}@ for role %{public}@", buf, 0x20u);
  }

  v18 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = v16;
    v56 = 1024;
    LODWORD(v57) = v7;
    _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]\tWas event handled: '%{BOOL}u'", buf, 0x12u);
  }

  v19 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v16;
    _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]\tEvent Description:", buf, 0xCu);
  }

  v20 = PBFLogRoleCoordinator();
  [v11 dumpLongDescriptionWithPreamble:v16 log:v20 type:16];

  v21 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v12 selectedPoster];
    *buf = 138543618;
    v55 = v16;
    v56 = 2114;
    v57 = v22;
    _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\tCurrent selected poster: %{public}@", buf, 0x16u);
  }

  v42 = v11;

  v23 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v16;
    _os_log_impl(&dword_21B526000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\tCurrent poster collection:", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = v12;
  v24 = [v12 orderedPosters];
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        v30 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v55 = v16;
          v56 = 2114;
          v57 = v29;
          _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\t\t%{public}@", buf, 0x16u);
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v26);
  }

  v31 = [v13 count];
  v32 = PBFLogRoleCoordinator();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    v34 = v42;
    if (v33)
    {
      *buf = 138543618;
      v55 = v16;
      v56 = 2114;
      v57 = v42;
      _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\tProposed changes in response to event '%{public}@':", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = v13;
    v35 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v45;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v32);
          }

          v39 = *(*(&v44 + 1) + 8 * j);
          v40 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v55 = v16;
            v56 = 2114;
            v57 = v39;
            _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\t\t%{public}@", buf, 0x16u);
          }
        }

        v36 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v36);
      v34 = v42;
    }
  }

  else
  {
    v34 = v42;
    if (v33)
    {
      *buf = 138543618;
      v55 = v16;
      v56 = 2114;
      v57 = v42;
      _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]\t\t0 Proposed changes in response to event '%{public}@':", buf, 0x16u);
    }
  }
}

- (PBFPosterRoleCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithRole:(char *)a1 storage:modelCoordinatorProvider:providers:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterExtensionDataStorage)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRole:(char *)a1 storage:modelCoordinatorProvider:providers:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFModelCoordinatorProviding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRole:(char *)a1 storage:modelCoordinatorProvider:providers:.cold.3(char *a1)
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

- (void)initWithRole:(char *)a1 storage:modelCoordinatorProvider:providers:.cold.4(char *a1)
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

- (void)finalizeChangesWithChangeHandler:(uint64_t)a1 outEvents:(void *)a2 error:.cold.4(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v2, v3, "[%{public}@] unable to add any of %lu initial posters for role", v4, v5, v6, v7, v8);
}

- (void)finalizeChangesWithChangeHandler:(uint64_t)a1 outEvents:(void *)a2 error:.cold.7(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v2, v3, "[%{public}@] unable to add & select any of %lu initial posters for role", v4, v5, v6, v7, v8);
}

- (void)_ingestIncomingPosterConfiguration:(char *)a1 change:currentCollection:storage:outEvents:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects(role, [path role])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_ingestIncomingPosterConfiguration:(char *)a1 change:currentCollection:storage:outEvents:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"BSEqualObjects(originalPosterUUID, [[change userInfo] objectForKey:PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID])", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_ingestIncomingPosterConfiguration:(char *)a1 change:currentCollection:storage:outEvents:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"originalPosterConfiguration != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end