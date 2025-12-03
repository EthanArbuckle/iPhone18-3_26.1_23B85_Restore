@interface PBFPosterExtensionDataStoreIntrospector
- (BOOL)assocPostersExist;
- (BOOL)descriptorsExist;
- (BOOL)legacyAssocPostersExist;
- (BOOL)multipleVersionsForConfigurationDataExists;
- (BOOL)snapshotsExist;
- (BOOL)userConfigurationDataExists;
- (NSSet)roles;
- (PBFPosterExtensionDataStoreIntrospector)initWithURL:(id)l error:(id *)error;
- (id)_openDatabaseIfPossible:(id *)possible;
- (id)associatedPosterForRole:(id)role parentPosterUUID:(id)d;
- (id)associatedPosterUUIDForPosterUUIDForRole:(id)role error:(id *)error;
- (id)associatedPosterUUIDForRole:(id)role parentPosterUUID:(id)d error:(id *)error;
- (id)extensionStoreCoordinatorForProvider:(id)provider;
- (id)legacyAssociatedPosterForParentPosterUUID:(id)d;
- (id)legacyAssociatedPosterParentUUIDToChildUUIDWithError:(id *)error;
- (id)legacyAssociatedPosterUUIDForPosterUUID:(id)d error:(id *)error;
- (id)legacySelectedPosterUUIDWithError:(id *)error;
- (id)legacySortedPosterUUIDsWithError:(id *)error;
- (id)posterWithUUID:(id)d;
- (id)selectedPosterUUIDForRole:(id)role error:(id *)error;
- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error;
- (unint64_t)numberOfPostersForRole:(id)role;
- (void)_hydrate;
@end

@implementation PBFPosterExtensionDataStoreIntrospector

- (PBFPosterExtensionDataStoreIntrospector)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (![lCopy checkResourceIsReachableAndReturnError:error])
  {
    goto LABEL_6;
  }

  v18.receiver = self;
  v18.super_class = PBFPosterExtensionDataStoreIntrospector;
  self = [(PBFPosterExtensionDataStoreIntrospector *)&v18 init];
  if (self)
  {
    v7 = [lCopy copy];
    dataStoreURL = self->_dataStoreURL;
    self->_dataStoreURL = v7;

    v9 = [MEMORY[0x277CBEBC0] pbf_dataStoreExtensionContainerURLForVersionDataStoreURL:self->_dataStoreURL];
    dataStoreExtensionsURL = self->_dataStoreExtensionsURL;
    self->_dataStoreExtensionsURL = v9;

    v11 = [MEMORY[0x277CBEBC0] pbf_dataStoreSQLiteDatabaseURLForDataStoreURL:self->_dataStoreURL];
    dataStoreDatabaseURL = self->_dataStoreDatabaseURL;
    self->_dataStoreDatabaseURL = v11;

    v13 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(self->_dataStoreExtensionsURL, 1u);
    extensionStoreCoordinators = self->_extensionStoreCoordinators;
    self->_extensionStoreCoordinators = v13;

    self->_dataStoreDatabaseExists = [(NSURL *)self->_dataStoreDatabaseURL checkResourceIsReachableAndReturnError:0];
    lastPathComponent = [lCopy lastPathComponent];
    self->_dataStoreVersion = [lastPathComponent integerValue];

    if ([(NSArray *)self->_extensionStoreCoordinators count])
    {
      [(PBFPosterExtensionDataStoreIntrospector *)self _hydrate];
      goto LABEL_5;
    }

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (id)posterWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_extensionStoreCoordinators;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) latestPosterConfigurationForUUID:{dCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)numberOfPostersForRole:(id)role
{
  v21 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_extensionStoreCoordinators;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) configurationStoreCoordinatorsWithError:0];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __66__PBFPosterExtensionDataStoreIntrospector_numberOfPostersForRole___block_invoke;
        v14[3] = &unk_2782C92A8;
        v15 = roleCopy;
        v11 = [v10 bs_filter:v14];
        v7 += [v11 count];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __66__PBFPosterExtensionDataStoreIntrospector_numberOfPostersForRole___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)associatedPosterForRole:(id)role parentPosterUUID:(id)d
{
  roleCopy = role;
  if (!roleCopy)
  {
    roleCopy = *MEMORY[0x277D3EEF0];
  }

  v7 = [(PBFPosterExtensionDataStoreIntrospector *)self associatedPosterUUIDForRole:roleCopy parentPosterUUID:d error:0];
  v8 = [(PBFPosterExtensionDataStoreIntrospector *)self posterWithUUID:v7];

  return v8;
}

- (id)legacyAssociatedPosterForParentPosterUUID:(id)d
{
  v4 = [(PBFPosterExtensionDataStoreIntrospector *)self legacyAssociatedPosterUUIDForPosterUUID:d error:0];
  v5 = [(PBFPosterExtensionDataStoreIntrospector *)self posterWithUUID:v4];

  return v5;
}

- (id)extensionStoreCoordinatorForProvider:(id)provider
{
  providerCopy = provider;
  extensionStoreCoordinators = self->_extensionStoreCoordinators;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__PBFPosterExtensionDataStoreIntrospector_extensionStoreCoordinatorForProvider___block_invoke;
  v9[3] = &unk_2782C92D0;
  v10 = providerCopy;
  v6 = providerCopy;
  v7 = [(NSArray *)extensionStoreCoordinators bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __80__PBFPosterExtensionDataStoreIntrospector_extensionStoreCoordinatorForProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 extensionIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)legacySortedPosterUUIDsWithError:(id *)error
{
  legacySortedPosterUUIDs = self->_legacySortedPosterUUIDs;
  if (legacySortedPosterUUIDs)
  {
    v4 = legacySortedPosterUUIDs;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] pbf_switcherConfigurationOrderingURLForDataStoreURL:self->_dataStoreURL];
    if ([v6 checkResourceIsReachableAndReturnError:0])
    {
      v7 = MEMORY[0x277CBEB70];
      v25 = 0;
      v8 = [v6 pf_loadFromPlistWithError:&v25];
      v9 = v25;
      v10 = objc_opt_class();
      v11 = v8;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = MEMORY[0x277CBEBF8];
      }

      v15 = [v7 orderedSetWithArray:v14];

      if (!v9)
      {
        v16 = MEMORY[0x277CBEB70];
        array = [v15 array];
        v18 = [array bs_mapNoNulls:&__block_literal_global_30];
        v19 = [v16 orderedSetWithArray:v18];
        v20 = self->_legacySortedPosterUUIDs;
        self->_legacySortedPosterUUIDs = v19;
      }
    }

    v21 = self->_legacySortedPosterUUIDs;
    if (!v21)
    {
      v22 = objc_opt_new();
      v23 = self->_legacySortedPosterUUIDs;
      self->_legacySortedPosterUUIDs = v22;

      v21 = self->_legacySortedPosterUUIDs;
    }

    v4 = v21;
  }

  return v4;
}

id __76__PBFPosterExtensionDataStoreIntrospector_legacySortedPosterUUIDsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)legacyAssociatedPosterUUIDForPosterUUID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [(PBFPosterExtensionDataStoreIntrospector *)self legacyAssociatedPosterParentUUIDToChildUUIDWithError:error];
  v8 = [v7 objectForKey:dCopy];

  return v8;
}

- (id)legacyAssociatedPosterParentUUIDToChildUUIDWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  legacyPosterToAssociatedPoster = self->_legacyPosterToAssociatedPoster;
  if (legacyPosterToAssociatedPoster)
  {
    v4 = legacyPosterToAssociatedPoster;
  }

  else
  {
    v6 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    selfCopy = self;
    obj = self->_extensionStoreCoordinators;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = [v10 configurationStoreCoordinatorsWithError:0];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                v17 = [v16 objectForKeyedSubscript:@"kConfigurationAssociatedPosterUUIDKey"];
                posterUUID = [v16 posterUUID];
                if (posterUUID)
                {
                  v19 = v17 == 0;
                }

                else
                {
                  v19 = 1;
                }

                if (!v19)
                {
                  [v6 setObject:posterUUID forKeyedSubscript:v17];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v20 = [v6 copy];
    v21 = selfCopy->_legacyPosterToAssociatedPoster;
    selfCopy->_legacyPosterToAssociatedPoster = v20;

    v4 = selfCopy->_legacyPosterToAssociatedPoster;
  }

  return v4;
}

- (id)legacySelectedPosterUUIDWithError:(id *)error
{
  legacySelectedPosterUUID = self->_legacySelectedPosterUUID;
  if (legacySelectedPosterUUID)
  {
    v4 = legacySelectedPosterUUID;
  }

  else
  {
    v7 = [MEMORY[0x277CBEBC0] pbf_switcherSelectedConfigurationURLForDataStoreURL:self->_dataStoreURL];
    if ([v7 checkResourceIsReachableAndReturnError:0])
    {
      v8 = [v7 pf_loadFromPlistWithError:error];
      v9 = objc_opt_class();
      v10 = v8;
      if (v9)
      {
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [v12 objectForKey:@"selectedConfigurationIdentifier"];

      if ([v13 length])
      {
        v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
        v15 = self->_legacySelectedPosterUUID;
        self->_legacySelectedPosterUUID = v14;
      }
    }

    v4 = self->_legacySelectedPosterUUID;
  }

  return v4;
}

- (id)sortedPosterUUIDsForRole:(id)role error:(id *)error
{
  roleCopy = role;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreIntrospector sortedPosterUUIDsForRole:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStoreIntrospector sortedPosterUUIDsForRole:a2 error:?];
  }

  v8 = [(NSMutableDictionary *)self->_roleToSortedPosterUUID objectForKeyedSubscript:roleCopy];
  if (!v8)
  {
    if (self->_dataStoreDatabaseExists)
    {
      v9 = [(PBFPosterExtensionDataStoreIntrospector *)self _openDatabaseIfPossible:error];
      v8 = [v9 sortedPosterUUIDsForRole:roleCopy error:error];
      if (!self->_roleToSortedPosterUUID)
      {
        v10 = objc_opt_new();
        roleToSortedPosterUUID = self->_roleToSortedPosterUUID;
        self->_roleToSortedPosterUUID = v10;
      }

      if (v8)
      {
        [(NSMutableDictionary *)self->_roleToSortedPosterUUID setObject:v8 forKey:roleCopy];
      }

      [v9 invalidate];
    }

    else
    {
      v8 = 0;
    }
  }

  v12 = v8;

  return v12;
}

- (id)associatedPosterUUIDForPosterUUIDForRole:(id)role error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreIntrospector associatedPosterUUIDForPosterUUIDForRole:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStoreIntrospector associatedPosterUUIDForPosterUUIDForRole:a2 error:?];
  }

  roleToParentToChildPosterUUID = self->_roleToParentToChildPosterUUID;
  if (!roleToParentToChildPosterUUID)
  {
    v9 = objc_opt_new();
    v10 = self->_roleToParentToChildPosterUUID;
    self->_roleToParentToChildPosterUUID = v9;

    roleToParentToChildPosterUUID = self->_roleToParentToChildPosterUUID;
  }

  v11 = [(NSMutableDictionary *)roleToParentToChildPosterUUID objectForKey:roleCopy];

  if (!v11 && self->_dataStoreDatabaseExists)
  {
    selfCopy = self;
    v12 = [(PBFPosterExtensionDataStoreIntrospector *)self _openDatabaseIfPossible:error];
    v13 = [v12 sortedPosterUUIDsForRole:roleCopy error:error];
    v29 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      v17 = *MEMORY[0x277D3EEB0];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v12 attributeForPoster:v19 roleId:roleCopy attributeId:v17 error:0];
          if ([v20 length])
          {
            v21 = roleCopy;
            v22 = PRPosterRoleAttributeForData();
            childPosterUUID = [v22 childPosterUUID];

            if (childPosterUUID)
            {
              childPosterUUID2 = [v22 childPosterUUID];
              [v29 setObject:childPosterUUID2 forKeyedSubscript:v19];
            }

            roleCopy = v21;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    [v12 invalidate];
    v25 = [v29 copy];
    self = selfCopy;
    [(NSMutableDictionary *)selfCopy->_roleToParentToChildPosterUUID setObject:v25 forKeyedSubscript:roleCopy];
  }

  v26 = [(NSMutableDictionary *)self->_roleToParentToChildPosterUUID objectForKeyedSubscript:roleCopy];

  return v26;
}

- (id)selectedPosterUUIDForRole:(id)role error:(id *)error
{
  roleCopy = role;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!roleCopy)
  {
    [PBFPosterExtensionDataStoreIntrospector selectedPosterUUIDForRole:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterExtensionDataStoreIntrospector selectedPosterUUIDForRole:a2 error:?];
  }

  v8 = [(NSMutableDictionary *)self->_roleToSelectedPosterUUID objectForKey:roleCopy];
  if (!v8)
  {
    if (self->_dataStoreDatabaseExists)
    {
      v9 = [(PBFPosterExtensionDataStoreIntrospector *)self _openDatabaseIfPossible:error];
      v8 = [v9 selectedPosterUUIDForRole:roleCopy error:error];
      roleToSelectedPosterUUID = self->_roleToSelectedPosterUUID;
      if (!roleToSelectedPosterUUID)
      {
        v11 = objc_opt_new();
        v12 = self->_roleToSelectedPosterUUID;
        self->_roleToSelectedPosterUUID = v11;

        roleToSelectedPosterUUID = self->_roleToSelectedPosterUUID;
      }

      [(NSMutableDictionary *)roleToSelectedPosterUUID bs_setSafeObject:v8 forKey:roleCopy];
      [v9 invalidate];
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = v8;

  return v13;
}

- (id)associatedPosterUUIDForRole:(id)role parentPosterUUID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = [(PBFPosterExtensionDataStoreIntrospector *)self associatedPosterUUIDForPosterUUIDForRole:role error:error];
  v10 = [v9 objectForKey:dCopy];

  return v10;
}

- (NSSet)roles
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_roleToSortedPosterUUID allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (BOOL)snapshotsExist
{
  v21 = *MEMORY[0x277D85DE8];
  snapshotsExistSentinel = self->_snapshotsExistSentinel;
  if (snapshotsExistSentinel)
  {

    return [(NSNumber *)snapshotsExistSentinel BOOLValue];
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager enumeratorAtURL:self->_dataStoreExtensionsURL includingPropertiesForKeys:0 options:0 errorHandler:0];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v12 pbf_isLegacyPosterSnapshot] & 1) != 0 || objc_msgSend(v12, "pbf_isSnapshotBundle"))
          {
            v13 = self->_snapshotsExistSentinel;
            self->_snapshotsExistSentinel = MEMORY[0x277CBEC38];

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v14 = self->_snapshotsExistSentinel;
    if (!v14)
    {
      self->_snapshotsExistSentinel = MEMORY[0x277CBEC28];

      v14 = self->_snapshotsExistSentinel;
    }

    bOOLValue = [(NSNumber *)v14 BOOLValue];

    return bOOLValue;
  }
}

- (BOOL)descriptorsExist
{
  v21 = *MEMORY[0x277D85DE8];
  descriptorsExistSentinel = self->_descriptorsExistSentinel;
  if (descriptorsExistSentinel)
  {

    return [(NSNumber *)descriptorsExistSentinel BOOLValue];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_extensionStoreCoordinators;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 dynamicDescriptorStoreCoordinatorsWithError:{0, v16}];
          if ([v11 count])
          {

LABEL_16:
            v14 = self->_descriptorsExistSentinel;
            self->_descriptorsExistSentinel = MEMORY[0x277CBEC38];

            goto LABEL_17;
          }

          v12 = [v10 staticDescriptorStoreCoordinatorsWithError:0];
          v13 = [v12 count];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v15 = self->_descriptorsExistSentinel;
    if (!v15)
    {
      self->_descriptorsExistSentinel = MEMORY[0x277CBEC28];

      v15 = self->_descriptorsExistSentinel;
    }

    return [(NSNumber *)v15 BOOLValue];
  }
}

- (BOOL)userConfigurationDataExists
{
  v55 = *MEMORY[0x277D85DE8];
  userConfigurationDataExistsSentinel = self->_userConfigurationDataExistsSentinel;
  if (userConfigurationDataExistsSentinel)
  {

    return [(NSNumber *)userConfigurationDataExistsSentinel BOOLValue];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = self->_extensionStoreCoordinators;
    v28 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v28)
    {
      v27 = *v48;
LABEL_7:
      v5 = 0;
      while (1)
      {
        if (*v48 != v27)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v29 = v5;
        v7 = *(*(&v47 + 1) + 8 * v5);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v30 = [v7 configurationStoreCoordinatorsWithError:0];
        v32 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v32)
        {
          v31 = *v44;
LABEL_12:
          v8 = 0;
          while (1)
          {
            if (*v44 != v31)
            {
              objc_enumerationMutation(v30);
            }

            v33 = v8;
            v9 = *(*(&v43 + 1) + 8 * v8);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            allPosterPaths = [v9 allPosterPaths];
            v10 = [allPosterPaths countByEnumeratingWithState:&v39 objects:v52 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v40;
LABEL_17:
              v13 = 0;
              while (1)
              {
                if (*v40 != v12)
                {
                  objc_enumerationMutation(allPosterPaths);
                }

                v14 = *(*(&v39 + 1) + 8 * v13);
                v15 = [MEMORY[0x277D3EDE8] expectedConfigurationFilesForPath:v14];
                contentsURL = [v14 contentsURL];
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                v18 = [defaultManager enumeratorAtURL:contentsURL includingPropertiesForKeys:0 options:0 errorHandler:0];

                v19 = [v18 countByEnumeratingWithState:&v35 objects:v51 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v36;
                  while (2)
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v36 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      if (([v15 containsObject:*(*(&v35 + 1) + 8 * i)] & 1) == 0)
                      {
                        v23 = self->_userConfigurationDataExistsSentinel;
                        self->_userConfigurationDataExistsSentinel = MEMORY[0x277CBEC38];

                        goto LABEL_30;
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v35 objects:v51 count:16];
                    if (v20)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_30:

                v24 = self->_userConfigurationDataExistsSentinel;
                if (v24)
                {
                  break;
                }

                if (++v13 == v11)
                {
                  v11 = [allPosterPaths countByEnumeratingWithState:&v39 objects:v52 count:16];
                  if (v11)
                  {
                    goto LABEL_17;
                  }

                  break;
                }
              }
            }

            if (self->_userConfigurationDataExistsSentinel)
            {
              break;
            }

            v8 = v33 + 1;
            if (v33 + 1 == v32)
            {
              v32 = [v30 countByEnumeratingWithState:&v43 objects:v53 count:16];
              if (v32)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        if (self->_userConfigurationDataExistsSentinel)
        {
          break;
        }

        v5 = v29 + 1;
        if (v29 + 1 == v28)
        {
          v28 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v28)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v25 = self->_userConfigurationDataExistsSentinel;
    if (!v25)
    {
      self->_userConfigurationDataExistsSentinel = MEMORY[0x277CBEC28];

      v25 = self->_userConfigurationDataExistsSentinel;
    }

    return [(NSNumber *)v25 BOOLValue];
  }
}

- (BOOL)multipleVersionsForConfigurationDataExists
{
  v30 = *MEMORY[0x277D85DE8];
  multipleVersionsForConfigurationDataExistsSentinel = self->_multipleVersionsForConfigurationDataExistsSentinel;
  if (multipleVersionsForConfigurationDataExistsSentinel)
  {

    return [(NSNumber *)multipleVersionsForConfigurationDataExistsSentinel BOOLValue];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_extensionStoreCoordinators;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
LABEL_7:
      v8 = 0;
      while (1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v9 configurationStoreCoordinatorsWithError:0];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              allPosterPaths = [*(*(&v20 + 1) + 8 * i) allPosterPaths];
              v16 = [allPosterPaths count];

              if (v16 >= 2)
              {
                v17 = self->_multipleVersionsForConfigurationDataExistsSentinel;
                self->_multipleVersionsForConfigurationDataExistsSentinel = MEMORY[0x277CBEC38];

                goto LABEL_20;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        if (self->_multipleVersionsForConfigurationDataExistsSentinel)
        {
          break;
        }

        if (++v8 == v6)
        {
          v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v6)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v18 = self->_multipleVersionsForConfigurationDataExistsSentinel;
    if (!v18)
    {
      self->_multipleVersionsForConfigurationDataExistsSentinel = MEMORY[0x277CBEC28];

      v18 = self->_multipleVersionsForConfigurationDataExistsSentinel;
    }

    return [(NSNumber *)v18 BOOLValue];
  }
}

- (BOOL)legacyAssocPostersExist
{
  legacyPosterToAssociatedPoster = self->_legacyPosterToAssociatedPoster;
  if (!legacyPosterToAssociatedPoster)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v5 = [(PBFPosterExtensionDataStoreIntrospector *)self legacyAssociatedPosterUUIDForPosterUUID:uUID error:0];

    legacyPosterToAssociatedPoster = self->_legacyPosterToAssociatedPoster;
  }

  return [(NSDictionary *)legacyPosterToAssociatedPoster count]!= 0;
}

- (BOOL)assocPostersExist
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_dataStoreDatabaseExists)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = PFPosterRolesSupportedForCurrentDeviceClass();
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(PBFPosterExtensionDataStoreIntrospector *)self associatedPosterUUIDForPosterUUIDForRole:*(*(&v12 + 1) + 8 * i) error:0, v12];
        v9 = [v8 count];

        if (v9)
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_openDatabaseIfPossible:(id *)possible
{
  if ([(NSURL *)self->_dataStoreDatabaseURL checkResourceIsReachableAndReturnError:?])
  {
    v5 = [[PBFPosterExtensionDataStoreSQLiteDatabase alloc] initWithURL:self->_dataStoreDatabaseURL options:4 error:possible];
    v6 = v5;
    if (v5 && [(PBFPosterExtensionDataStoreSQLiteDatabase *)v5 validateDatabaseWithError:possible])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_hydrate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(PBFPosterExtensionDataStoreIntrospector *)self legacySortedPosterUUIDsWithError:0];
  v4 = [(PBFPosterExtensionDataStoreIntrospector *)self legacySelectedPosterUUIDWithError:0];
  v5 = [(PBFPosterExtensionDataStoreIntrospector *)self legacyAssociatedPosterParentUUIDToChildUUIDWithError:0];
  if (self->_dataStoreDatabaseExists)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = PFPosterRolesSupportedForCurrentDeviceClass();
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [(PBFPosterExtensionDataStoreIntrospector *)self sortedPosterUUIDsForRole:v11 error:0, v15];
          v13 = [(PBFPosterExtensionDataStoreIntrospector *)self selectedPosterUUIDForRole:v11 error:0];
          v14 = [(PBFPosterExtensionDataStoreIntrospector *)self associatedPosterUUIDForPosterUUIDForRole:v11 error:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  [(PBFPosterExtensionDataStoreIntrospector *)self snapshotsExist];
  [(PBFPosterExtensionDataStoreIntrospector *)self descriptorsExist];
  [(PBFPosterExtensionDataStoreIntrospector *)self userConfigurationDataExists];
  [(PBFPosterExtensionDataStoreIntrospector *)self multipleVersionsForConfigurationDataExists];
  [(PBFPosterExtensionDataStoreIntrospector *)self assocPostersExist];
  [(PBFPosterExtensionDataStoreIntrospector *)self legacyAssocPostersExist];
}

- (void)sortedPosterUUIDsForRole:(char *)a1 error:.cold.1(char *a1)
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

- (void)sortedPosterUUIDsForRole:(char *)a1 error:.cold.2(char *a1)
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

- (void)associatedPosterUUIDForPosterUUIDForRole:(char *)a1 error:.cold.1(char *a1)
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

- (void)associatedPosterUUIDForPosterUUIDForRole:(char *)a1 error:.cold.2(char *a1)
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

- (void)selectedPosterUUIDForRole:(char *)a1 error:.cold.1(char *a1)
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

- (void)selectedPosterUUIDForRole:(char *)a1 error:.cold.2(char *a1)
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