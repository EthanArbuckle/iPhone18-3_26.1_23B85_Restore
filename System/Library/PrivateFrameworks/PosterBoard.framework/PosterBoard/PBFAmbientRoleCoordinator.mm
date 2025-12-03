@interface PBFAmbientRoleCoordinator
+ (id)subscribedEvents;
+ (id)supportedAttributes;
+ (id)supportedChangeTypes;
- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)d newAmbientChargerConfiguration:(id)configuration currentCollection:(id)collection storage:(id)storage error:(id *)error;
- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0;
- (BOOL)finalizeChangesWithChangeHandler:(id)handler outEvents:(id *)events error:(id *)error;
- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error;
- (BOOL)validateEventIsRelevant:(id)relevant;
- (PBFAmbientRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers;
- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)descriptor referenceIncomingPosterConfiguration:(id)configuration error:(id *)error;
- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)storage;
- (id)defaultAttribute:(id)attribute forNewPosterFromProvider:(id)provider;
- (id)defaultAttributesForNewPosterFromProvider:(id)provider;
- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context;
- (id)sortedPosterUUIDsFromStorage:(id)storage;
- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)identifier;
- (void)noteDidResetRoleCoordinator:(id)coordinator;
@end

@implementation PBFAmbientRoleCoordinator

- (PBFAmbientRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers
{
  v8 = *MEMORY[0x277D3EE98];
  v10.receiver = self;
  v10.super_class = PBFAmbientRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:storage modelCoordinatorProvider:provider providers:providers];
}

- (id)determineActivePosterConfigurationForStorage:(id)storage context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  contextCopy = context;
  if (storageCopy)
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
  }

  else
  {
    [(PBFPosterRoleCoordinator *)self posterCollection];
  }
  v8 = ;
  role = [(PBFPosterRoleCoordinator *)self role];
  pbf_activeChargerIdentifier = [contextCopy pbf_activeChargerIdentifier];
  v11 = [contextCopy pbf_currentActivePosterForRole:role];
  v12 = v11;
  if (pbf_activeChargerIdentifier)
  {
    orderedPosters = [v8 orderedPosters];
    array = [orderedPosters array];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke;
    v25 = &unk_2782C6CD0;
    v15 = v8;
    v26 = v15;
    v16 = pbf_activeChargerIdentifier;
    v27 = v16;
    v17 = [array bs_firstObjectPassingTest:&v22];
    if (!v17)
    {
      if (v12)
      {
        selectedPoster = v12;
      }

      else
      {
        selectedPoster = [v15 selectedPoster];
      }

      v17 = selectedPoster;
      v20 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v29 = v16;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "No existing configuration tied to charger identifier %{public}@, selecting the active configuration %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v11)
    {
      selectedPoster2 = v11;
    }

    else
    {
      selectedPoster2 = [v8 selectedPoster];
    }

    v17 = selectedPoster2;
  }

  return v17;
}

uint64_t __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) attributeForPoster:a2 ofType:*MEMORY[0x277D3EEA0]];
  v4 = [v3 isAssociatedWithChargerIdentifier:*(a1 + 40)];

  return v4;
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)storage error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v57.receiver = self;
  v57.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v57 synchronizeFileSystemAttributesForStorage:storageCopy error:error])
  {
    role = [(PBFPosterRoleCoordinator *)self role];
    v7 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = role;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] synchronizeFileSystemAttributesForStorage", buf, 0xCu);
    }

    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v8 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [v8 orderedPosters];
    v50 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v50)
    {
      v49 = *v54;
      v51 = *MEMORY[0x277D3EEA0];
      v52 = *MEMORY[0x277D3EEA8];
      errorCopy = error;
      v40 = storageCopy;
      selfCopy = self;
      v48 = v8;
      while (2)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v54 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v53 + 1) + 8 * i);
          pbf_posterProvider = [v10 pbf_posterProvider];
          supportedAttributes = [objc_opt_class() supportedAttributes];
          v13 = [v8 attributesForPoster:v10 ofTypes:supportedAttributes];

          v14 = [v13 objectForKeyedSubscript:v51];

          if (!v14)
          {
            v15 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v51 forNewPosterFromProvider:pbf_posterProvider];
            v16 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v51, 0, 0, v15, 0, storageCopy, error);

            if (!v16)
            {
              goto LABEL_29;
            }
          }

          v17 = [v8 configuredPropertiesForPoster:v10];
          ambientConfiguration = [v17 ambientConfiguration];

          v19 = [v13 objectForKey:v52];
          if (![pbf_posterProvider isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"] || objc_msgSend(ambientConfiguration, "supportedDataLayout") == 2 && objc_msgSend(v19, "supportedDataLayout") == 2)
          {
            v20 = PBFLogRoleCoordinator();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v59 = role;
              v60 = 2114;
              v61 = v10;
              _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            v21 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v52, ambientConfiguration, v19, 0, 0, storageCopy, error);
            v22 = 0;
            v23 = v19;
            v24 = 0;
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v46 = v19;
            v22 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v52 forNewPosterFromProvider:pbf_posterProvider];
            _path = [v10 _path];
            serverIdentity = [_path serverIdentity];
            descriptorIdentifier = [serverIdentity descriptorIdentifier];

            v28 = [modelCoordinatorProvider pbf_posterExtensionStoreCoordinatorForProviderIdentifier:pbf_posterProvider error:0];
            v29 = [v28 dynamicDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
            v30 = v29;
            v44 = v28;
            v45 = descriptorIdentifier;
            if (v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = [v28 staticDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
            }

            v32 = v31;

            v33 = MEMORY[0x277D3EDE8];
            pathOfLatestVersion = [v32 pathOfLatestVersion];
            v24 = [v33 loadAmbientConfigurationForPath:pathOfLatestVersion error:0];

            v35 = PBFLogRoleCoordinator();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v59 = role;
              v60 = 2114;
              v61 = v10;
              _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to fix Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            storageCopy = v40;
            v36 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v52, 0, 0, v22, v24, v40, errorCopy);

            error = errorCopy;
            v23 = v46;
            if ((v36 & 1) == 0)
            {
LABEL_28:

              v8 = v48;
LABEL_29:

              v37 = 0;
              goto LABEL_30;
            }
          }

          self = selfCopy;
          v8 = v48;
        }

        v50 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v37 = 1;
LABEL_30:
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)defaultAttributesForNewPosterFromProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = PBFAmbientRoleCoordinator;
  v5 = [(PBFPosterRoleCoordinator *)&v13 defaultAttributesForNewPosterFromProvider:providerCopy];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x277D3EEA0];
  v8 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA0] forNewPosterFromProvider:providerCopy];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277D3EEA8];
  v10 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA8] forNewPosterFromProvider:providerCopy];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:v9];
  }

  v11 = [v6 copy];

  return v11;
}

- (id)defaultAttribute:(id)attribute forNewPosterFromProvider:(id)provider
{
  attributeCopy = attribute;
  providerCopy = provider;
  if ([attributeCopy isEqual:*MEMORY[0x277D3EEA8]])
  {
    if ([providerCopy isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"])
    {
      v7 = 2;
    }

    else if ([providerCopy isEqual:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"])
    {
      v7 = 1;
    }

    else if ([providerCopy isEqual:@"com.apple.ClockPoster.ClockPosterExtension"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:v7];
  }

  else
  {
    if (![attributeCopy isEqual:*MEMORY[0x277D3EEA0]])
    {
      v9 = 0;
      goto LABEL_14;
    }

    v8 = objc_alloc_init(MEMORY[0x277D3ED20]);
  }

  v9 = v8;
LABEL_14:

  return v9;
}

+ (id)supportedAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PBFAmbientRoleCoordinator_supportedAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedAttributes_onceToken_1 != -1)
  {
    dispatch_once(&supportedAttributes_onceToken_1, block);
  }

  v2 = supportedAttributes_supportedAttributes_1;

  return v2;
}

void __48__PBFAmbientRoleCoordinator_supportedAttributes__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
  v1 = objc_msgSendSuper2(&v8, sel_supportedAttributes);
  v2 = [v1 mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  [v5 addObject:*MEMORY[0x277D3EEA8]];
  [v5 addObject:*MEMORY[0x277D3EEA0]];
  v6 = [v5 copy];
  v7 = supportedAttributes_supportedAttributes_1;
  supportedAttributes_supportedAttributes_1 = v6;
}

+ (id)subscribedEvents
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PBFAmbientRoleCoordinator_subscribedEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (subscribedEvents_onceToken_0 != -1)
  {
    dispatch_once(&subscribedEvents_onceToken_0, block);
  }

  v2 = subscribedEvents_subscribedEvents_0;

  return v2;
}

void __45__PBFAmbientRoleCoordinator_subscribedEvents__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB58];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
  v2 = objc_msgSendSuper2(&v6, sel_subscribedEvents);
  v3 = [v1 setWithSet:v2];

  [v3 addObject:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"];
  [v3 addObject:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  [v3 addObject:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"];
  v4 = [v3 copy];
  v5 = subscribedEvents_subscribedEvents_0;
  subscribedEvents_subscribedEvents_0 = v4;
}

- (BOOL)validateEventIsRelevant:(id)relevant
{
  v34 = *MEMORY[0x277D85DE8];
  relevantCopy = relevant;
  v31.receiver = self;
  v31.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v31 validateEventIsRelevant:relevantCopy])
  {
    eventType = [relevantCopy eventType];
    if (([eventType isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"] & 1) == 0 && !objc_msgSend(eventType, "isEqual:", @"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"))
    {
      v21 = 1;
      goto LABEL_25;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    fromValue = [relevantCopy fromValue];
    v7 = [fromValue countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(fromValue);
        }

        role = [*(*(&v27 + 1) + 8 * v10) role];
        role2 = [(PBFPosterRoleCoordinator *)self role];
        v13 = [role isEqual:role2];

        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [fromValue countByEnumeratingWithState:&v27 objects:v33 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      fromValue = [relevantCopy toValue];
      v14 = [fromValue countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (!v14)
      {
        v21 = 1;
        goto LABEL_23;
      }

      v15 = v14;
      v16 = *v24;
LABEL_14:
      v17 = 0;
      while (1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(fromValue);
        }

        role3 = [*(*(&v23 + 1) + 8 * v17) role];
        role4 = [(PBFPosterRoleCoordinator *)self role];
        v20 = [role3 isEqual:role4];

        if (!v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [fromValue countByEnumeratingWithState:&v23 objects:v32 count:16];
          v21 = 1;
          if (v15)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

    v21 = 0;
LABEL_23:

LABEL_25:
    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (BOOL)notifyEventWasReceived:(id)received changes:(id *)changes storage:(id)storage
{
  v239 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  storageCopy = storage;
  if (![(PBFAmbientRoleCoordinator *)self validateEventIsRelevant:receivedCopy])
  {
    LOBYTE(v12) = 0;
    goto LABEL_145;
  }

  role = [(PBFPosterRoleCoordinator *)self role];
  eventType = [receivedCopy eventType];
  v10 = objc_opt_new();
  selfCopy = self;
  if (storageCopy)
  {
    storage = storageCopy;
  }

  else
  {
    storage = [(PBFPosterRoleCoordinator *)self storage];
  }

  v156 = storage;
  v155 = receivedCopy;
  if ([eventType isEqual:{@"PBFPosterDataStoreEventTypeDescriptorsUpdated", storageCopy}])
  {
    if (![eventType isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
    {
      goto LABEL_12;
    }

LABEL_10:
    v14 = [PBFPosterRoleCoordinatorChange refreshRoleCoordinator:role];
    [v10 addObject:v14];

    v15 = 0;
    goto LABEL_137;
  }

  v13 = [eventType isEqual:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  if ([eventType isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
  {
    goto LABEL_10;
  }

  if (!v13)
  {
    goto LABEL_91;
  }

LABEL_12:
  if (![MEMORY[0x277D3EF30] ambientPosterAutocreationSupported])
  {
LABEL_91:
    v15 = 0;
LABEL_92:
    v185.receiver = selfCopy;
    v185.super_class = PBFAmbientRoleCoordinator;
    v186 = 0;
    v12 = [(PBFPosterRoleCoordinator *)&v185 notifyEventWasReceived:v155 changes:&v186 storage:v156];
    changesCopy2 = changes;
    if (v12)
    {
      [v10 addObjectsFromArray:v186];
    }

    goto LABEL_138;
  }

  v16 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v156];
  if ([eventType isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"])
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  relatedProviders = [v155 relatedProviders];
  anyObject = [relatedProviders anyObject];

  relatedProviders2 = [v155 relatedProviders];
  v21 = [relatedProviders2 count];

  if (v21 != 1)
  {
    [PBFAmbientRoleCoordinator notifyEventWasReceived:a2 changes:self storage:?];
  }

  v159 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:anyObject];
  toValue = [v155 toValue];
  v170 = anyObject;
  if ([anyObject isEqual:@"com.apple.PosterTester.SamplePoster"])
  {
    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v24 = [modelCoordinatorProvider providerForExtensionIdentifier:anyObject];

    posterExtensionInfoPlist = [v24 posterExtensionInfoPlist];
    pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

    if ((pbf_supportsGallery & 1) == 0)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v28 = [standardUserDefaults stringArrayForKey:@"ShowSamplePoster"];
      v29 = [v28 containsObject:anyObject];

      if ((v29 & 1) == 0)
      {

        toValue = MEMORY[0x277CBEBF8];
      }
    }
  }

  v162 = v10;
  v167 = objc_opt_new();
  v169 = objc_opt_new();
  v171 = objc_opt_new();
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v30 = toValue;
  v31 = [v30 countByEnumeratingWithState:&v222 objects:v238 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v223;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v223 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v222 + 1) + 8 * i);
        _path = [v35 _path];
        serverIdentity = [_path serverIdentity];
        type = [serverIdentity type];

        if (type == v17)
        {
          _path2 = [v35 _path];
          descriptorIdentifier = [_path2 descriptorIdentifier];

          if (descriptorIdentifier)
          {
            [v169 setObject:v35 forKeyedSubscript:descriptorIdentifier];
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v222 objects:v238 count:16];
    }

    while (v32);
  }

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v178 = v16;
  orderedPosters = [v16 orderedPosters];
  v42 = [orderedPosters countByEnumeratingWithState:&v218 objects:v237 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v219;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v219 != v44)
        {
          objc_enumerationMutation(orderedPosters);
        }

        v46 = *(*(&v218 + 1) + 8 * j);
        pbf_posterProvider = [v46 pbf_posterProvider];
        v48 = [pbf_posterProvider isEqual:v170];

        if (v48)
        {
          _path3 = [v46 _path];
          descriptorIdentifier2 = [_path3 descriptorIdentifier];

          if (descriptorIdentifier2 || ([v46 pbf_posterProvider], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "isEqualToString:", @"com.apple.ambient.AmbientUI.InfographPoster"), v51, descriptorIdentifier2 = @"InfographPoster", v52))
          {
            v53 = [v169 objectForKeyedSubscript:descriptorIdentifier2];

            if (v53)
            {
              v54 = [v171 objectForKey:descriptorIdentifier2];
              if (!v54)
              {
                v54 = objc_opt_new();
                [v171 setObject:v54 forKeyedSubscript:descriptorIdentifier2];
              }

              [v54 addObject:v46];
            }

            else
            {
              [v167 addObject:v46];
            }
          }
        }
      }

      v43 = [orderedPosters countByEnumeratingWithState:&v218 objects:v237 count:16];
    }

    while (v43);
  }

  v168 = objc_opt_new();
  v173 = objc_opt_new();
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v55 = v30;
  v56 = [v55 countByEnumeratingWithState:&v214 objects:v236 count:16];
  v10 = v162;
  if (!v56)
  {
LABEL_90:

    goto LABEL_99;
  }

  v57 = v56;
  v58 = *v215;
  v172 = *MEMORY[0x277D3EEA8];
  v160 = *v215;
  v161 = v55;
LABEL_51:
  v59 = 0;
  v163 = v57;
  while (1)
  {
    if (*v215 != v58)
    {
      objc_enumerationMutation(v55);
    }

    v60 = *(*(&v214 + 1) + 8 * v59);
    _path4 = [v60 _path];
    descriptorIdentifier3 = [_path4 descriptorIdentifier];

    v63 = [v171 objectForKeyedSubscript:descriptorIdentifier3];
    v176 = v60;
    if ([v63 count])
    {
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v177 = v63;
      v64 = [v177 countByEnumeratingWithState:&v210 objects:v235 count:16];
      if (v64)
      {
        v65 = v64;
        v164 = v59;
        v165 = v63;
        v166 = descriptorIdentifier3;
        v66 = *v211;
        v68 = v60;
        v67 = v177;
        v175 = *v211;
        do
        {
          v69 = 0;
          v180 = v65;
          do
          {
            if (*v211 != v66)
            {
              objc_enumerationMutation(v67);
            }

            v70 = *(*(&v210 + 1) + 8 * v69);
            v71 = [v70 loadAmbientConfigurationWithError:0];
            if (![v71 creationBehavior])
            {
              ambientConfiguration = [v68 ambientConfiguration];
              displayNameLocalizationKey = [v68 displayNameLocalizationKey];
              displayNameLocalizationKey2 = [v70 displayNameLocalizationKey];
              v75 = BSEqualStrings();

              v76 = [ambientConfiguration isEqualToAmbientConfiguration:v71];
              v77 = v76;
              if (!v75 || (v76 & 1) == 0)
              {
                v78 = [v70 loadConfiguredPropertiesWithError:0];
                v183 = [v78 mutableCopy];

                supportedAttributes = [objc_opt_class() supportedAttributes];
                v80 = [v178 attributesForPoster:v70 ofTypes:supportedAttributes];
                v81 = [v80 mutableCopy];
                v82 = v81;
                if (v81)
                {
                  v83 = v81;
                }

                else
                {
                  v83 = objc_opt_new();
                }

                obj = v83;

                if ((v75 & 1) == 0)
                {
                  v84 = [objc_alloc(MEMORY[0x277D3EDD0]) initWithDisplayNameLocalizationKey:displayNameLocalizationKey];
                  [v183 setOtherMetadata:v84];
                }

                if ((v77 & 1) == 0)
                {
                  [v183 setAmbientConfiguration:ambientConfiguration];
                  [obj setObject:ambientConfiguration forKeyedSubscript:v172];
                }

                v85 = [MEMORY[0x277D3EB88] temporaryPathForRole:role];
                _path5 = [v70 _path];
                [v85 copyContentsOfPath:_path5 error:0];

                v87 = objc_alloc(MEMORY[0x277D3ECE0]);
                pbf_posterUUID = [v70 pbf_posterUUID];
                _path6 = [v70 _path];
                serverIdentity2 = [_path6 serverIdentity];
                v91 = [v87 initWithUpdatedPath:v85 updatedPosterUUID:pbf_posterUUID sourceIdentity:serverIdentity2 configuredProperties:v183 attributes:obj];

                [v91 trackTemporaryState:v85];
                [v173 addObject:v91];

                v68 = v176;
                v67 = v177;
                v66 = v175;
              }

              v65 = v180;
            }

            ++v69;
          }

          while (v65 != v69);
          v65 = [v67 countByEnumeratingWithState:&v210 objects:v235 count:16];
        }

        while (v65);
        v55 = v161;
        v10 = v162;
        v58 = v160;
        v57 = v163;
        v59 = v164;
        v63 = v165;
        descriptorIdentifier3 = v166;
      }

      goto LABEL_88;
    }

    ambientConfiguration2 = [v60 ambientConfiguration];
    v93 = ambientConfiguration2;
    if (ambientConfiguration2)
    {
      v94 = ambientConfiguration2;
    }

    else
    {
      v95 = [v159 objectForKeyedSubscript:v172];
      v96 = v95;
      if (v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = objc_opt_new();
      }

      v94 = v97;
    }

    v177 = v94;
    if ([v94 creationBehavior])
    {
      v98 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v232 = v176;
        _os_log_impl(&dword_21B526000, v98, OS_LOG_TYPE_DEFAULT, "Skipping descriptor '%{public}@'; creation behavior is to not auto-create", buf, 0xCu);
      }

      goto LABEL_87;
    }

    v209 = 0;
    v98 = [(PBFAmbientRoleCoordinator *)selfCopy _ambientIncomingPosterConfigurationForDescriptor:v176 referenceIncomingPosterConfiguration:0 error:&v209];
    v99 = v209;
    v100 = v99;
    if (v99 || !v98)
    {
      break;
    }

    [v168 setObject:v98 forKeyedSubscript:descriptorIdentifier3];
LABEL_87:

LABEL_88:
    if (++v59 == v57)
    {
      v57 = [v55 countByEnumeratingWithState:&v214 objects:v236 count:16];
      if (v57)
      {
        goto LABEL_51;
      }

      goto LABEL_90;
    }
  }

  if (v99)
  {
    v102 = v99;
  }

  else
  {
    v103 = MEMORY[0x277CCA9B8];
    v233 = *MEMORY[0x277CCA470];
    v234 = @"notifyEventWasReceived; Unable to copy descriptor into new configuration; bailing descriptor update.";
    v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
    v102 = [v103 pbf_generalErrorWithCode:0 userInfo:v104];
  }

  if (v102)
  {

    v15 = v178;
    goto LABEL_92;
  }

LABEL_99:
  v105 = objc_opt_new();
  v106 = [v55 sortedArrayUsingComparator:&__block_literal_global_35];

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  obja = v106;
  v107 = [obja countByEnumeratingWithState:&v205 objects:v230 count:16];
  if (v107)
  {
    v108 = v107;
    v184 = *v206;
    do
    {
      for (k = 0; k != v108; ++k)
      {
        if (*v206 != v184)
        {
          objc_enumerationMutation(obja);
        }

        _path7 = [*(*(&v205 + 1) + 8 * k) _path];
        descriptorIdentifier4 = [_path7 descriptorIdentifier];

        v112 = [v171 objectForKey:descriptorIdentifier4];
        v203[0] = MEMORY[0x277D85DD0];
        v203[1] = 3221225472;
        v203[2] = __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke_2;
        v203[3] = &unk_2782C6498;
        v204 = v178;
        [v112 sortUsingComparator:v203];
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v113 = v112;
        v114 = [v113 countByEnumeratingWithState:&v199 objects:v229 count:16];
        if (v114)
        {
          v115 = v114;
          v116 = *v200;
          do
          {
            for (m = 0; m != v115; ++m)
            {
              if (*v200 != v116)
              {
                objc_enumerationMutation(v113);
              }

              pbf_posterUUID2 = [*(*(&v199 + 1) + 8 * m) pbf_posterUUID];
              [v105 addObject:pbf_posterUUID2];
            }

            v115 = [v113 countByEnumeratingWithState:&v199 objects:v229 count:16];
          }

          while (v115);
        }

        v119 = [v168 objectForKey:descriptorIdentifier4];
        v120 = v119;
        if (v119)
        {
          destinationUUID = [v119 destinationUUID];
          [v105 addObject:destinationUUID];
        }
      }

      v108 = [obja countByEnumeratingWithState:&v205 objects:v230 count:16];
    }

    while (v108);
  }

  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v122 = v167;
  v123 = [v122 countByEnumeratingWithState:&v195 objects:v228 count:16];
  v10 = v162;
  if (v123)
  {
    v124 = v123;
    v125 = *v196;
    do
    {
      for (n = 0; n != v124; ++n)
      {
        if (*v196 != v125)
        {
          objc_enumerationMutation(v122);
        }

        pbf_posterUUID3 = [*(*(&v195 + 1) + 8 * n) pbf_posterUUID];
        v128 = [PBFPosterRoleCoordinatorChange removePosterFromRole:role matchingUUID:pbf_posterUUID3];
        [v162 addObject:v128];
      }

      v124 = [v122 countByEnumeratingWithState:&v195 objects:v228 count:16];
    }

    while (v124);
  }

  v194 = 0u;
  v192 = 0u;
  v193 = 0u;
  v191 = 0u;
  objectEnumerator = [v168 objectEnumerator];
  v130 = [objectEnumerator countByEnumeratingWithState:&v191 objects:v227 count:16];
  v15 = v178;
  if (v130)
  {
    v131 = v130;
    v132 = *v192;
    do
    {
      for (ii = 0; ii != v131; ++ii)
      {
        if (*v192 != v132)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v134 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:*(*(&v191 + 1) + 8 * ii)];
        [v162 addObject:v134];
      }

      v131 = [objectEnumerator countByEnumeratingWithState:&v191 objects:v227 count:16];
    }

    while (v131);
  }

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v135 = v173;
  v136 = [v135 countByEnumeratingWithState:&v187 objects:v226 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v188;
    do
    {
      for (jj = 0; jj != v137; ++jj)
      {
        if (*v188 != v138)
        {
          objc_enumerationMutation(v135);
        }

        v140 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:role incomingPoster:*(*(&v187 + 1) + 8 * jj)];
        [v162 addObject:v140];
      }

      v137 = [v135 countByEnumeratingWithState:&v187 objects:v226 count:16];
    }

    while (v137);
  }

  v141 = [(PBFAmbientRoleCoordinator *)selfCopy _sortedPosterUUIDsByExtensionIdentifierFromStorage:v156];
  v142 = [v141 mutableCopy];

  v143 = [v105 copy];
  [v142 setObject:v143 forKeyedSubscript:v170];

  v144 = [(PBFAmbientRoleCoordinator *)selfCopy sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v142];
  v145 = [PBFPosterRoleCoordinatorChange reorderPostersForRole:role sortedPosterUUIDs:v144];
  [v162 addObject:v145];

LABEL_137:
  v12 = 1;
  changesCopy2 = changes;
LABEL_138:
  v146 = [v10 count];
  if (changesCopy2 && v146)
  {
    *changesCopy2 = [v10 copy];
  }

  v147 = objc_opt_class();
  role2 = [(PBFPosterRoleCoordinator *)selfCopy role];
  if (v15)
  {
    v149 = v147;
    receivedCopy = v155;
    [v149 dumpResultsForEvent:v155 role:role2 posterCollection:v15 changes:v10 eventWasHandled:v12];
    v150 = v156;
  }

  else
  {
    v150 = v156;
    v151 = [(PBFPosterRoleCoordinator *)selfCopy buildNewPosterCollectionFromStorage:v156];
    v152 = v147;
    receivedCopy = v155;
    [v152 dumpResultsForEvent:v155 role:role2 posterCollection:v151 changes:v10 eventWasHandled:v12];
  }

  storageCopy = v154;
LABEL_145:

  return v12;
}

uint64_t __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 ambientConfiguration];
  v6 = [v5 displayOrder];

  v7 = [v4 ambientConfiguration];

  v8 = [v7 displayOrder];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

uint64_t __68__PBFAmbientRoleCoordinator_notifyEventWasReceived_changes_storage___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x277D3EED8];
  v7 = a3;
  v8 = [v5 attributeForPoster:a2 ofType:v6];
  v9 = [*(a1 + 32) attributeForPoster:v7 ofType:v6];

  v10 = [v8 creationDate];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v13 = v12;

  v14 = [v9 creationDate];
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

  if (v13)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (v13)
    {
      v19 = -1;
    }

    else
    {
      v19 = v17 != 0;
    }
  }

  else
  {
    v19 = [v17 compare:v13];
  }

  return v19;
}

- (BOOL)finalizeChangesWithChangeHandler:(id)handler outEvents:(id *)events error:(id *)error
{
  v147 = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = PBFAmbientRoleCoordinator;
  handlerCopy = handler;
  errorCopy = error;
  if (![PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:sel_finalizeChangesWithChangeHandler_outEvents_error_ outEvents:? error:?])
  {
    v33 = 0;
    goto LABEL_109;
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  role = [(PBFPosterRoleCoordinator *)self role];
  role2 = [(PBFPosterRoleCoordinator *)self role];
  v8 = [handlerCopy sortedPosterUUIDsForRole:role2 error:0];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v106 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v124 objects:v146 count:16];
  if (v10)
  {
    v11 = *v125;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v125 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v124 + 1) + 8 * i);
        v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];
        if (v14)
        {
          [v9 setObject:v14 forKey:v13];
        }

        else
        {
          v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.ambient.AmbientUI.InfographPoster"];
          if (v14)
          {
            [v106 setObject:v14 forKey:v13];
          }

          else
          {
            v14 = [(PBFPosterRoleCoordinator *)self posterWithUUID:v13 extensionIdentifier:@"com.apple.ClockPoster.ClockPosterExtension"];
            if (v14)
            {
              [v105 setObject:v14 forKey:v13];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v124 objects:v146 count:16];
    }

    while (v10);
  }

  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __78__PBFAmbientRoleCoordinator_finalizeChangesWithChangeHandler_outEvents_error___block_invoke;
  v123[3] = &unk_2782C9518;
  v123[4] = &v128;
  [v9 enumerateKeysAndObjectsUsingBlock:v123];
  if ((v129[3] & 1) == 0 && [v9 count])
  {
    v15 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "All photo posters are hidden!", buf, 2u);
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v16 = obj;
    v17 = [v16 countByEnumeratingWithState:&v119 objects:v145 count:16];
    if (!v17)
    {
      goto LABEL_31;
    }

    v102 = *v120;
    v99 = v16;
LABEL_21:
    v18 = 0;
    while (1)
    {
      if (*v120 != v102)
      {
        objc_enumerationMutation(v99);
      }

      v19 = *(*(&v119 + 1) + 8 * v18);
      v20 = [v9 objectForKey:v19];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 loadConfiguredPropertiesWithError:0];
        v23 = [v22 mutableCopy];

        ambientConfiguration = [v23 ambientConfiguration];
        v25 = [ambientConfiguration mutableCopy];

        [v25 setHidden:0];
        [v23 setAmbientConfiguration:v25];
        v26 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v23 forPosterWithinRole:role matchingUUID:v19];
        v118 = 0;
        v27 = [(PBFAmbientRoleCoordinator *)self _executeChange:v26 storage:handlerCopy outEvents:events error:&v118];
        v28 = v118;

        if (v27)
        {
          v35 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v142 = v21;
            _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "All photo posters are hidden so choosing to unhide poster: %@{public}", buf, 0xCu);
          }

          v34 = v99;
          goto LABEL_42;
        }

        v29 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v142 = v21;
          v143 = 2114;
          v144 = v28;
          _os_log_error_impl(&dword_21B526000, v29, OS_LOG_TYPE_ERROR, "failed to unhide poster %{public}@: %{public}@", buf, 0x16u);
        }
      }

      if (v17 == ++v18)
      {
        v16 = v99;
        v17 = [v99 countByEnumeratingWithState:&v119 objects:v145 count:16];
        if (!v17)
        {
LABEL_31:

          v30 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:v30 outEvents:? error:?];
          }

          if (errorCopy)
          {
            v31 = MEMORY[0x277CCA9B8];
            v139 = *MEMORY[0x277CCA470];
            v140 = @"Photos posters are all hidden and no poster could be found to un-hide";
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            [v31 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v32];
            *errorCopy = v33 = 0;
            goto LABEL_107;
          }

          v33 = 0;
          goto LABEL_108;
        }

        goto LABEL_21;
      }
    }
  }

  if (![v9 count])
  {
    v34 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "No photo posters found; not checking for hidden", buf, 2u);
    }

LABEL_42:
  }

  if (![v106 count])
  {
    v37 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "No Infograph posters found; skipping bad ambient configuration state check", buf, 2u);
    }

LABEL_66:

    if ([v105 count])
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      allValues = [v105 allValues];
      v56 = [allValues countByEnumeratingWithState:&v109 objects:v135 count:16];
      v32 = allValues;
      if (v56)
      {
        v92 = *v110;
LABEL_69:
        v94 = v56;
        v57 = 0;
        while (1)
        {
          if (*v110 != v92)
          {
            objc_enumerationMutation(allValues);
          }

          v58 = *(*(&v109 + 1) + 8 * v57);
          v59 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v142 = v58;
            _os_log_impl(&dword_21B526000, v59, OS_LOG_TYPE_DEFAULT, "Checking %{public}@ for bad ambient configuration.. ", buf, 0xCu);
          }

          v60 = objc_alloc(MEMORY[0x277D3ED80]);
          _path = [v58 _path];
          v62 = [v60 _initWithPath:_path];

          if (!v62)
          {
            goto LABEL_89;
          }

          v63 = [v58 loadConfiguredPropertiesWithError:0];
          v64 = [v63 mutableCopy];
          v65 = v64;
          if (v64)
          {
            v104 = v64;
          }

          else
          {
            v66 = MEMORY[0x277D3EDD8];
            role3 = [(PBFPosterRoleCoordinator *)self role];
            v104 = [v66 defaultConfiguredPropertiesForRole:role3];
          }

          displayNameLocalizationKey = [v62 displayNameLocalizationKey];
          otherMetadata = [v104 otherMetadata];
          displayNameLocalizationKey2 = [otherMetadata displayNameLocalizationKey];
          v71 = [displayNameLocalizationKey isEqual:displayNameLocalizationKey2];

          if ((v71 & 1) == 0)
          {
            v72 = objc_alloc(MEMORY[0x277D3EDD0]);
            displayNameLocalizationKey3 = [v62 displayNameLocalizationKey];
            v74 = [v72 initWithDisplayNameLocalizationKey:displayNameLocalizationKey3];
            [v104 setOtherMetadata:v74];
          }

          ambientConfiguration2 = [v62 ambientConfiguration];
          v75 = [v58 loadAmbientConfigurationWithError:0];
          editingBehavior = [ambientConfiguration2 editingBehavior];
          if (editingBehavior != [v75 editingBehavior])
          {
            break;
          }

          if ((v71 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_88:

LABEL_89:
          if (v94 == ++v57)
          {
            v56 = [allValues countByEnumeratingWithState:&v109 objects:v135 count:16];
            v33 = 1;
            if (v56)
            {
              goto LABEL_69;
            }

            goto LABEL_106;
          }
        }

        v77 = [v75 mutableCopy];
        [v77 setEditingBehavior:{objc_msgSend(ambientConfiguration2, "editingBehavior")}];
        v78 = [v77 copy];
        [v104 setAmbientConfiguration:v78];

LABEL_84:
        pbf_posterUUID = [v58 pbf_posterUUID];
        v80 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v104 forPosterWithinRole:role matchingUUID:pbf_posterUUID];
        v108 = 0;
        v81 = [(PBFAmbientRoleCoordinator *)self _executeChange:v80 storage:handlerCopy outEvents:events error:&v108];
        v82 = v108;

        if (!v81)
        {
          v87 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
          }

          if (errorCopy)
          {
            v88 = MEMORY[0x277CCA9B8];
            v133 = *MEMORY[0x277CCA470];
            v134 = @"Unable to correct editing behavior for clock poster";
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
            *errorCopy = [v88 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v89];
          }

          goto LABEL_105;
        }

        v83 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v142 = v58;
          _os_log_impl(&dword_21B526000, v83, OS_LOG_TYPE_DEFAULT, "Correcting editing behavior for poster %{public}@", buf, 0xCu);
        }

        goto LABEL_88;
      }
    }

    else
    {
      v32 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v32, OS_LOG_TYPE_DEFAULT, "No Clock posters found; skipping bad ambient configuration state check", buf, 2u);
      }
    }

    v33 = 1;
    goto LABEL_107;
  }

  v117 = 0u;
  v115 = 0u;
  v116 = 0u;
  v114 = 0u;
  allValues = [v106 allValues];
  v36 = [allValues countByEnumeratingWithState:&v114 objects:v138 count:16];
  v37 = allValues;
  if (!v36)
  {
    goto LABEL_66;
  }

  v93 = *v115;
LABEL_46:
  v100 = v36;
  v38 = 0;
  while (1)
  {
    if (*v115 != v93)
    {
      objc_enumerationMutation(allValues);
    }

    v39 = *(*(&v114 + 1) + 8 * v38);
    v40 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v142 = v39;
      _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "Checking %{public}@ for bad ambient configuration supported data layout state", buf, 0xCu);
    }

    v41 = [v39 loadAmbientConfigurationWithError:0];
    if ([v41 supportedDataLayout] == 2)
    {
      goto LABEL_61;
    }

    v42 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      supportedDataLayout = [v41 supportedDataLayout];
      *buf = 138543618;
      v142 = v39;
      v143 = 2048;
      v144 = supportedDataLayout;
      _os_log_impl(&dword_21B526000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ has bad supported data layout state: %lu", buf, 0x16u);
    }

    v44 = [v41 mutableCopy];
    [v44 setSupportedDataLayout:2];
    v45 = [v39 loadConfiguredPropertiesWithError:0];
    v46 = [v45 mutableCopy];
    v47 = v46;
    if (v46)
    {
      v103 = v46;
    }

    else
    {
      v48 = MEMORY[0x277D3EDD8];
      role4 = [(PBFPosterRoleCoordinator *)self role];
      v103 = [v48 defaultConfiguredPropertiesForRole:role4];
    }

    v50 = [v44 copy];
    [v103 setAmbientConfiguration:v50];

    pbf_posterUUID2 = [v39 pbf_posterUUID];
    v52 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v103 forPosterWithinRole:role matchingUUID:pbf_posterUUID2];
    v113 = 0;
    v53 = [(PBFAmbientRoleCoordinator *)self _executeChange:v52 storage:handlerCopy outEvents:events error:&v113];
    v54 = v113;

    if (!v53)
    {
      break;
    }

    v55 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v142 = v39;
      _os_log_impl(&dword_21B526000, v55, OS_LOG_TYPE_DEFAULT, "correcting ambient widget configuration for poster %{public}@", buf, 0xCu);
    }

LABEL_61:
    if (v100 == ++v38)
    {
      v36 = [allValues countByEnumeratingWithState:&v114 objects:v138 count:16];
      if (!v36)
      {
        v37 = allValues;
        goto LABEL_66;
      }

      goto LABEL_46;
    }
  }

  v84 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
  {
    [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
  }

  if (errorCopy)
  {
    v85 = MEMORY[0x277CCA9B8];
    v136 = *MEMORY[0x277CCA470];
    v137 = @"Unable to correct invalid supported data layout type for infograph";
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    *errorCopy = [v85 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v86];
  }

LABEL_105:
  v33 = 0;
LABEL_106:
  v32 = allValues;
LABEL_107:

LABEL_108:
  _Block_object_dispose(&v128, 8);
LABEL_109:

  return v33;
}

void __78__PBFAmbientRoleCoordinator_finalizeChangesWithChangeHandler_outEvents_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 loadAmbientConfigurationWithError:0];
  v7 = [v6 hidden];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)supportedChangeTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PBFAmbientRoleCoordinator_supportedChangeTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedChangeTypes_onceToken_1 != -1)
  {
    dispatch_once(&supportedChangeTypes_onceToken_1, block);
  }

  v2 = supportedChangeTypes_supportedChangeTypes_1;

  return v2;
}

void __49__PBFAmbientRoleCoordinator_supportedChangeTypes__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v9[0] = @"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 setWithArray:v3];

  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFAmbientRoleCoordinator;
  v5 = objc_msgSendSuper2(&v8, sel_supportedChangeTypes);
  [v4 unionSet:v5];

  v6 = [v4 copy];
  v7 = supportedChangeTypes_supportedChangeTypes_1;
  supportedChangeTypes_supportedChangeTypes_1 = v6;
}

- (BOOL)_executeChange:(id)change storage:(id)storage outEvents:(id *)events error:(id *)error
{
  v99[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  storageCopy = storage;
  changeType = [changeCopy changeType];
  if (![changeType isEqual:@"PBFPosterRoleCoordinatorChangeTypeAddPoster"])
  {
    goto LABEL_24;
  }

  userInfo = [changeCopy userInfo];
  v14 = [userInfo objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration"];

  if (v14)
  {
    attributes = [v14 attributes];
    v16 = [attributes count];

    if (v16)
    {
LABEL_23:

LABEL_24:
      userInfo2 = [changeCopy userInfo];
      v14 = [userInfo2 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType"];

      userInfo3 = [changeCopy userInfo];
      v40 = [userInfo3 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      if ([v14 isEqual:*MEMORY[0x277D3EEA0]] && ((objc_msgSend(changeType, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeAssignAttribute") & 1) != 0 || objc_msgSend(changeType, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute")))
      {
        userInfo4 = [changeCopy userInfo];
        v42 = [userInfo4 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute"];

        v43 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
        v30 = [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:v40 newAmbientChargerConfiguration:v42 currentCollection:v43 storage:storageCopy error:error];
      }

      else if ([changeType isEqual:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"])
      {
        v90 = changeType;
        v92 = storageCopy;
        v94 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:storageCopy];
        v44 = [v94 posterWithUUID:v40];
        userInfo5 = [changeCopy userInfo];
        v46 = [userInfo5 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties"];

        if (v40 && v44 && v46)
        {
          eventsCopy = events;
          v84 = v46;
          _path = [v44 _path];
          serverIdentity = [_path serverIdentity];

          selfCopy = self;
          supportedAttributes = [objc_opt_class() supportedAttributes];
          v50 = [v94 attributesForPoster:v44 ofTypes:supportedAttributes];
          v51 = [v50 mutableCopy];
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = objc_opt_new();
          }

          v61 = v53;
          errorCopy = error;

          ambientConfiguration = [v84 ambientConfiguration];
          if (ambientConfiguration)
          {
            v63 = *MEMORY[0x277D3EEA8];
            v64 = [v61 objectForKey:*MEMORY[0x277D3EEA8]];
            v65 = [ambientConfiguration isEqual:v64];

            if ((v65 & 1) == 0)
            {
              [v61 setObject:ambientConfiguration forKeyedSubscript:v63];
              v66 = *MEMORY[0x277D3EED8];
              v67 = [v61 objectForKeyedSubscript:*MEMORY[0x277D3EED8]];
              v68 = v67;
              if (v67)
              {
                v69 = v67;
              }

              else
              {
                v69 = objc_opt_new();
              }

              v70 = v69;

              usageMetadataWithUpdatedLastModifiedDate = [v70 usageMetadataWithUpdatedLastModifiedDate];

              [v61 setObject:usageMetadataWithUpdatedLastModifiedDate forKeyedSubscript:v66];
            }
          }

          v72 = objc_alloc(MEMORY[0x277D3ECE0]);
          _path2 = [v44 _path];
          pbf_posterUUID = [v44 pbf_posterUUID];
          v75 = serverIdentity;
          v81 = serverIdentity;
          v46 = v84;
          v79 = v61;
          v76 = [v72 initWithUpdatedPath:_path2 updatedPosterUUID:pbf_posterUUID sourceIdentity:v75 configuredProperties:v84 attributes:v61];

          v77 = ambientConfiguration;
          v60 = v94;
          v30 = [(PBFPosterRoleCoordinator *)selfCopy _ingestIncomingPosterConfiguration:v76 change:changeCopy currentCollection:v94 storage:v92 outEvents:eventsCopy error:errorCopy];
        }

        else
        {
          v54 = MEMORY[0x277CCA9B8];
          v96[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v55 = [changeCopy description];
          v56 = v55;
          v57 = @"(null change)";
          if (v55)
          {
            v57 = v55;
          }

          v96[1] = @"posterUUIDToUpdate";
          v97[0] = v57;
          v58 = @"(null uuid)";
          if (v40)
          {
            v58 = v40;
          }

          v97[1] = v58;
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
          *error = [v54 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v59];

          v30 = 0;
          v60 = v94;
        }

        changeType = v90;
        storageCopy = v92;
      }

      else
      {
        v95.receiver = self;
        v95.super_class = PBFAmbientRoleCoordinator;
        v30 = [(PBFPosterRoleCoordinator *)&v95 _executeChange:changeCopy storage:storageCopy outEvents:events error:error];
      }

      goto LABEL_52;
    }

    sourceIdentity = [v14 sourceIdentity];
    provider = [sourceIdentity provider];

    sourceIdentity2 = [v14 sourceIdentity];
    descriptorIdentifier = [sourceIdentity2 descriptorIdentifier];

    if (![descriptorIdentifier length])
    {
LABEL_22:

      goto LABEL_23;
    }

    selfCopy2 = self;
    modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    errorCopy2 = error;
    v22 = [modelCoordinatorProvider pbf_posterExtensionStoreCoordinatorForProviderIdentifier:provider error:error];
    if (v22)
    {
      v23 = v22;
      v93 = modelCoordinatorProvider;
      v24 = [v22 dynamicDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
      v25 = v24;
      eventsCopy2 = events;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = [v23 staticDescriptorStoreCoordinatorForIdentifier:descriptorIdentifier];
      }

      v31 = v26;

      pathOfLatestVersion = [v31 pathOfLatestVersion];
      v91 = pathOfLatestVersion;
      if (pathOfLatestVersion)
      {
        v89 = v31;
        v80 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:pathOfLatestVersion];
        v33 = [PBFAmbientRoleCoordinator _ambientIncomingPosterConfigurationForDescriptor:selfCopy2 referenceIncomingPosterConfiguration:"_ambientIncomingPosterConfigurationForDescriptor:referenceIncomingPosterConfiguration:error:" error:?];

        if (v33)
        {
          role = [(PBFPosterRoleCoordinator *)selfCopy2 role];
          v35 = [PBFPosterRoleCoordinatorChange addPosterToRole:role incomingPoster:v33];

          v14 = v33;
          changeCopy = v35;
        }

        else
        {
          v14 = 0;
        }

        v37 = v93;

        v31 = v89;
        v36 = v33 != 0;
      }

      else
      {
        v36 = 1;
        v37 = v93;
      }

      self = selfCopy2;
      error = errorCopy2;
      events = eventsCopy2;
      if (v36)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_41:
    v30 = 0;
LABEL_52:

    goto LABEL_53;
  }

  if (error)
  {
    v27 = MEMORY[0x277CCA9B8];
    v98 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
    v28 = [changeCopy description];
    v14 = v28;
    v29 = @"(null change)";
    if (v28)
    {
      v29 = v28;
    }

    v99[0] = v29;
    provider = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    *error = [v27 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:provider];
    goto LABEL_41;
  }

  v30 = 0;
LABEL_53:

  return v30;
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)poster existingAttributes:(id)attributes incomingAttributes:(id)incomingAttributes proposedAttributesToDelete:(id *)delete proposedAttributesToUpdate:(id *)update storage:(id)storage currentCollection:(id)collection error:(id *)self0
{
  posterCopy = poster;
  incomingAttributesCopy = incomingAttributes;
  storageCopy = storage;
  collectionCopy = collection;
  v36 = 0;
  v37 = 0;
  v35.receiver = self;
  v35.super_class = PBFAmbientRoleCoordinator;
  LODWORD(attributes) = [(PBFPosterRoleCoordinator *)&v35 _prepareAttributesForIngestionForPoster:posterCopy existingAttributes:attributes incomingAttributes:incomingAttributesCopy proposedAttributesToDelete:&v37 proposedAttributesToUpdate:&v36 storage:storageCopy currentCollection:collectionCopy error:error];
  v19 = v37;
  v20 = v36;
  v21 = v20;
  if (attributes)
  {
    updateCopy = update;
    v22 = [v20 mutableCopy];
    v23 = *MEMORY[0x277D3EEA8];
    v32 = v22;
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D3EEA8]];
    if (!v24)
    {
      v24 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:3];
      [v32 setObject:v24 forKeyedSubscript:v23];
    }

    v25 = [incomingAttributesCopy objectForKey:*MEMORY[0x277D3EEA0]];
    if (v25 && (v34 = 0, [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:posterCopy newAmbientChargerConfiguration:v25 currentCollection:collectionCopy storage:storageCopy error:&v34], (v26 = v34) != 0))
    {
      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      v27 = 0;
      v28 = v32;
    }

    else
    {
      v28 = v32;
      if (delete)
      {
        v29 = v19;
        *delete = v19;
      }

      if (updateCopy)
      {
        *updateCopy = [v32 copy];
      }

      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)d newAmbientChargerConfiguration:(id)configuration currentCollection:(id)collection storage:(id)storage error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configurationCopy = configuration;
  collectionCopy = collection;
  storageCopy = storage;
  v13 = [collectionCopy posterWithUUID:dCopy];
  v14 = [collectionCopy posterWithUUID:dCopy];
  v15 = *MEMORY[0x277D3EEA0];
  v16 = [collectionCopy attributeForPoster:v14 ofType:*MEMORY[0x277D3EEA0]];

  v77 = v16;
  if ([v16 isEqual:configurationCopy])
  {
    v17 = 1;
  }

  else
  {
    v72 = v15;
    v65 = v13;
    v68 = dCopy;
    v69 = collectionCopy;
    v18 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    associatedChargerIdentifiers = [configurationCopy associatedChargerIdentifiers];
    v20 = [associatedChargerIdentifiers countByEnumeratingWithState:&v90 objects:v96 count:16];
    v71 = configurationCopy;
    if (v20)
    {
      v21 = v20;
      v22 = *v91;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v91 != v22)
          {
            objc_enumerationMutation(associatedChargerIdentifiers);
          }

          v24 = *(*(&v90 + 1) + 8 * i);
          associatedChargerIdentifiers2 = [v77 associatedChargerIdentifiers];
          if ([associatedChargerIdentifiers2 containsObject:v24])
          {
          }

          else
          {
            associatedChargerIdentifiers3 = [configurationCopy associatedChargerIdentifiers];
            v27 = [associatedChargerIdentifiers3 containsObject:v24];

            configurationCopy = v71;
            if (v27)
            {
              [v18 addObject:v24];
              goto LABEL_15;
            }
          }
        }

        v21 = [associatedChargerIdentifiers countByEnumeratingWithState:&v90 objects:v96 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    v86 = 0u;
    v28 = v18;
    dCopy = v68;
    collectionCopy = v69;
    v29 = v72;
    v64 = [v28 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v64)
    {
      v30 = *v87;
      v63 = v28;
      v61 = *v87;
      do
      {
        v31 = 0;
        do
        {
          if (*v87 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v66 = v31;
          v32 = *(*(&v86 + 1) + 8 * v31);
          orderedPosters = [collectionCopy orderedPosters];
          array = [orderedPosters array];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __147__PBFAmbientRoleCoordinator__executeAmbientChargerConfigurationUpdateForPosterUUID_newAmbientChargerConfiguration_currentCollection_storage_error___block_invoke;
          v83[3] = &unk_2782C6CD0;
          v73 = collectionCopy;
          v74 = v32;
          v84 = v73;
          v85 = v32;
          v35 = [array bs_filter:v83];

          if ([v35 count])
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v62 = v35;
            obj = v35;
            v36 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v80;
              while (2)
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v80 != v38)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v40 = *(*(&v79 + 1) + 8 * j);
                  v41 = [v73 attributeForPoster:v40 ofType:v29];
                  v42 = [v41 mutableCopy];
                  [v42 disassociateFromChargerIdentifier:v74];
                  associatedChargerIdentifiers4 = [v42 associatedChargerIdentifiers];
                  v44 = [associatedChargerIdentifiers4 count];

                  if (!v44)
                  {

                    v42 = 0;
                  }

                  pbf_posterUUID = [v40 pbf_posterUUID];
                  role = [(PBFPosterRoleCoordinator *)self role];
                  encodeJSON = [v42 encodeJSON];
                  v78 = 0;
                  v48 = [storageCopy mutateAttributeForPoster:pbf_posterUUID roleId:role attributeId:v29 attributePayload:encodeJSON error:&v78];
                  v49 = v78;

                  if ((v48 & 1) == 0)
                  {
                    if (error)
                    {
                      v57 = v49;
                      *error = v49;
                    }

                    v17 = 0;
                    role3 = v84;
                    v28 = v63;
                    usageMetadataWithUpdatedLastModifiedDate = v63;
                    dCopy = v68;
                    configurationCopy = v71;
                    goto LABEL_43;
                  }

                  v29 = v72;
                }

                v37 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }

            dCopy = v68;
            collectionCopy = v69;
            configurationCopy = v71;
            v35 = v62;
            v28 = v63;
            v30 = v61;
          }

          v31 = v66 + 1;
        }

        while (v66 + 1 != v64);
        v64 = [v28 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v64);
    }

    role2 = [(PBFPosterRoleCoordinator *)self role];
    encodeJSON2 = [configurationCopy encodeJSON];
    v52 = [storageCopy mutateAttributeForPoster:dCopy roleId:role2 attributeId:v29 attributePayload:encodeJSON2 error:error];

    if (v52)
    {
      v53 = *MEMORY[0x277D3EED8];
      v54 = [collectionCopy attributeForPoster:v65 ofType:*MEMORY[0x277D3EED8]];
      if (v54)
      {
        v55 = v54;
        usageMetadataWithUpdatedLastModifiedDate = [v54 usageMetadataWithUpdatedLastModifiedDate];
      }

      else
      {
        usageMetadataWithUpdatedLastModifiedDate = objc_opt_new();
      }

      role3 = [(PBFPosterRoleCoordinator *)self role];
      encodeJSON3 = [usageMetadataWithUpdatedLastModifiedDate encodeJSON];
      [storageCopy mutateAttributeForPoster:dCopy roleId:role3 attributeId:v53 attributePayload:encodeJSON3 error:0];

      v17 = 1;
LABEL_43:

      collectionCopy = v69;
    }

    else
    {
      v17 = 1;
    }

    v13 = v65;
  }

  return v17;
}

uint64_t __147__PBFAmbientRoleCoordinator__executeAmbientChargerConfigurationUpdateForPosterUUID_newAmbientChargerConfiguration_currentCollection_storage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) attributeForPoster:a2 ofType:*MEMORY[0x277D3EEA0]];
  v4 = [v3 isAssociatedWithChargerIdentifier:*(a1 + 40)];

  return v4;
}

- (id)sortedPosterUUIDsFromStorage:(id)storage
{
  v4 = MEMORY[0x277D3EF30];
  storageCopy = storage;
  if ([v4 ambientPosterDateCreatedOrderingSupported])
  {
    v9.receiver = self;
    v9.super_class = PBFAmbientRoleCoordinator;
    v6 = [(PBFPosterRoleCoordinator *)&v9 sortedPosterUUIDsFromStorage:storageCopy];
  }

  else
  {
    v7 = [(PBFAmbientRoleCoordinator *)self _sortedPosterUUIDsByExtensionIdentifierFromStorage:storageCopy];

    v6 = [(PBFAmbientRoleCoordinator *)self sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v7];
  }

  return v6;
}

- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)identifier
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v3 = [identifierCopy mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v7 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [&unk_282D0A2B8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = @"com.apple.PosterTester.SamplePoster";
    v11 = *v45;
    v37 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(&unk_282D0A2B8);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        if (![v13 isEqual:v10])
        {
          goto LABEL_13;
        }

        v14 = v11;
        v15 = v6;
        v16 = v10;
        modelCoordinatorProvider = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
        v18 = [modelCoordinatorProvider providerForExtensionIdentifier:v13];

        posterExtensionInfoPlist = [v18 posterExtensionInfoPlist];
        pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

        if ((pbf_supportsGallery & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stringArrayForKey:", @"ShowSamplePoster"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v13), v22, v21, v23))
        {

          v10 = v16;
          v6 = v15;
          v11 = v14;
          v7 = v37;
LABEL_13:
          v18 = [identifierCopy objectForKeyedSubscript:v13];
          array = [v18 array];
          [v7 addObjectsFromArray:array];

          [v6 removeObjectForKey:v13];
          goto LABEL_14;
        }

        v10 = v16;
        v6 = v15;
        v11 = v14;
        v7 = v37;
LABEL_14:

        ++v12;
      }

      while (v9 != v12);
      v25 = [&unk_282D0A2B8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      v9 = v25;
    }

    while (v25);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys = [v6 allKeys];
  v27 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];

  v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v40 + 1) + 8 * i);
        v33 = [identifierCopy objectForKeyedSubscript:v32];
        array2 = [v33 array];
        [v7 addObjectsFromArray:array2];

        [v6 removeObjectForKey:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v29);
  }

  v35 = [v7 copy];

  return v35;
}

- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)storage
{
  v23 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  role = [(PBFPosterRoleCoordinator *)self role];
  v6 = [storageCopy sortedPosterUUIDsForRole:role error:0];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [storageCopy extensionIdentifierForPosterUUID:v13 error:{0, v18}];
        v15 = [v7 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = objc_opt_new();
          [v7 setObject:v15 forKeyedSubscript:v14];
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

- (void)noteDidResetRoleCoordinator:(id)coordinator
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    role = [(PBFPosterRoleCoordinator *)self role];
    v6 = 138543362;
    v7 = role;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Populating ambient role coordinator epoch after role reset", &v6, 0xCu);
  }
}

- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)descriptor referenceIncomingPosterConfiguration:(id)configuration error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  configurationCopy = configuration;
  role = [(PBFPosterRoleCoordinator *)self role];
  _path = [descriptorCopy _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  _path2 = [descriptorCopy _path];
  serverIdentity2 = [_path2 serverIdentity];
  descriptorIdentifier = [serverIdentity2 descriptorIdentifier];

  v16 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:role];
  _path3 = [descriptorCopy _path];
  v61 = 0;
  LOBYTE(serverIdentity2) = [v16 copyContentsOfPath:_path3 error:&v61];
  v18 = v61;

  if (serverIdentity2)
  {
    errorCopy = error;
    v19 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:provider];
    ambientConfiguration = [descriptorCopy ambientConfiguration];
    v21 = ambientConfiguration;
    v58 = v19;
    v59 = descriptorIdentifier;
    v56 = v18;
    if (ambientConfiguration)
    {
      v22 = ambientConfiguration;
      v23 = *MEMORY[0x277D3EEA8];
    }

    else
    {
      v23 = *MEMORY[0x277D3EEA8];
      v26 = [v19 objectForKeyedSubscript:*MEMORY[0x277D3EEA8]];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = objc_opt_new();
      }

      v32 = v28;

      v19 = v58;
      v22 = v32;
    }

    v33 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:role];
    v34 = [v33 mutableCopy];

    v35 = [v19 mutableCopy];
    v36 = [v22 copy];
    [v35 setObject:v36 forKeyedSubscript:v23];

    v54 = v22;
    [v34 setAmbientConfiguration:v22];
    displayNameLocalizationKey = [descriptorCopy displayNameLocalizationKey];
    if (displayNameLocalizationKey)
    {
      [v16 setDisplayNameLocalizationKey:displayNameLocalizationKey];
    }

    v52 = displayNameLocalizationKey;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v53 = [MEMORY[0x277D3EB98] descriptorIdentityWithProvider:provider identifier:v59 role:role posterUUID:uUID version:0];
    v57 = provider;
    if (configurationCopy)
    {
      v51 = role;
      configuredProperties = [configurationCopy configuredProperties];
      [v34 mergeConfiguredProperties:configuredProperties];
      attributes = [configurationCopy attributes];
      if ([attributes count])
      {
        [v35 addEntriesFromDictionary:attributes];
      }

      v50 = v35;
      _path4 = [configurationCopy _path];
      v42 = [v16 copyContentsOfPath:_path4 error:errorCopy];

      if (!v42)
      {

        v25 = 0;
        v35 = v50;
        role = v51;
        provider = v57;
        v48 = v58;
        v43 = v34;
        v47 = v53;
        goto LABEL_23;
      }

      v43 = v34;
      destinationUUID = [configurationCopy destinationUUID];

      uUID = destinationUUID;
      v35 = v50;
      role = v51;
    }

    else
    {
      v43 = v34;
    }

    v45 = objc_alloc(MEMORY[0x277D3ECE0]);
    _path5 = [v16 _path];
    v47 = v53;
    v25 = [v45 initWithNewPath:_path5 destinationPosterUUID:uUID sourceIdentity:v53 configuredProperties:v43 attributes:v35];

    [v25 trackTemporaryState:v16];
    provider = v57;
    v48 = v58;
LABEL_23:

    descriptorIdentifier = v59;
    v18 = v56;
    goto LABEL_24;
  }

  if (error)
  {
    if (v18)
    {
      v24 = v18;
      v25 = 0;
      *error = v18;
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA470];
    v63[0] = @"_ambientIncomingPosterConfigurationForDescriptor initial copy; Unable to copy descriptor; bailing descriptor update.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v31 = [v29 pbf_generalErrorWithCode:0 userInfo:v30];
    *error = v31;
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (void)notifyEventWasReceived:(const char *)a1 changes:(uint64_t)a2 storage:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[event relatedProviders] count] == 1"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PBFAmbientRoleCoordinator.m";
    v16 = 1024;
    v17 = 255;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end