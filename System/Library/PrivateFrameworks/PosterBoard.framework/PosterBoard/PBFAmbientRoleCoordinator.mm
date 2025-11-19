@interface PBFAmbientRoleCoordinator
+ (id)subscribedEvents;
+ (id)supportedAttributes;
+ (id)supportedChangeTypes;
- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)a3 newAmbientChargerConfiguration:(id)a4 currentCollection:(id)a5 storage:(id)a6 error:(id *)a7;
- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10;
- (BOOL)finalizeChangesWithChangeHandler:(id)a3 outEvents:(id *)a4 error:(id *)a5;
- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4;
- (BOOL)validateEventIsRelevant:(id)a3;
- (PBFAmbientRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5;
- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)a3 referenceIncomingPosterConfiguration:(id)a4 error:(id *)a5;
- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)a3;
- (id)defaultAttribute:(id)a3 forNewPosterFromProvider:(id)a4;
- (id)defaultAttributesForNewPosterFromProvider:(id)a3;
- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4;
- (id)sortedPosterUUIDsFromStorage:(id)a3;
- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)a3;
- (void)noteDidResetRoleCoordinator:(id)a3;
@end

@implementation PBFAmbientRoleCoordinator

- (PBFAmbientRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5
{
  v8 = *MEMORY[0x277D3EE98];
  v10.receiver = self;
  v10.super_class = PBFAmbientRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:a3 modelCoordinatorProvider:a4 providers:a5];
}

- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v6];
  }

  else
  {
    [(PBFPosterRoleCoordinator *)self posterCollection];
  }
  v8 = ;
  v9 = [(PBFPosterRoleCoordinator *)self role];
  v10 = [v7 pbf_activeChargerIdentifier];
  v11 = [v7 pbf_currentActivePosterForRole:v9];
  v12 = v11;
  if (v10)
  {
    v13 = [v8 orderedPosters];
    v14 = [v13 array];

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke;
    v25 = &unk_2782C6CD0;
    v15 = v8;
    v26 = v15;
    v16 = v10;
    v27 = v16;
    v17 = [v14 bs_firstObjectPassingTest:&v22];
    if (!v17)
    {
      if (v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = [v15 selectedPoster];
      }

      v17 = v18;
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
      v19 = v11;
    }

    else
    {
      v19 = [v8 selectedPoster];
    }

    v17 = v19;
  }

  return v17;
}

uint64_t __82__PBFAmbientRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) attributeForPoster:a2 ofType:*MEMORY[0x277D3EEA0]];
  v4 = [v3 isAssociatedWithChargerIdentifier:*(a1 + 40)];

  return v4;
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v57.receiver = self;
  v57.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v57 synchronizeFileSystemAttributesForStorage:v6 error:a4])
  {
    v42 = [(PBFPosterRoleCoordinator *)self role];
    v7 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v59 = v42;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] synchronizeFileSystemAttributesForStorage", buf, 0xCu);
    }

    v41 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v8 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v6];
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
      v39 = a4;
      v40 = v6;
      v47 = self;
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
          v11 = [v10 pbf_posterProvider];
          v12 = [objc_opt_class() supportedAttributes];
          v13 = [v8 attributesForPoster:v10 ofTypes:v12];

          v14 = [v13 objectForKeyedSubscript:v51];

          if (!v14)
          {
            v15 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v51 forNewPosterFromProvider:v11];
            v16 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v51, 0, 0, v15, 0, v6, a4);

            if (!v16)
            {
              goto LABEL_29;
            }
          }

          v17 = [v8 configuredPropertiesForPoster:v10];
          v18 = [v17 ambientConfiguration];

          v19 = [v13 objectForKey:v52];
          if (![v11 isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"] || objc_msgSend(v18, "supportedDataLayout") == 2 && objc_msgSend(v19, "supportedDataLayout") == 2)
          {
            v20 = PBFLogRoleCoordinator();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v59 = v42;
              v60 = 2114;
              v61 = v10;
              _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            v21 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v52, v18, v19, 0, 0, v6, a4);
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
            v22 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:v52 forNewPosterFromProvider:v11];
            v25 = [v10 _path];
            v26 = [v25 serverIdentity];
            v27 = [v26 descriptorIdentifier];

            v28 = [v41 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v11 error:0];
            v29 = [v28 dynamicDescriptorStoreCoordinatorForIdentifier:v27];
            v30 = v29;
            v44 = v28;
            v45 = v27;
            if (v29)
            {
              v31 = v29;
            }

            else
            {
              v31 = [v28 staticDescriptorStoreCoordinatorForIdentifier:v27];
            }

            v32 = v31;

            v33 = MEMORY[0x277D3EDE8];
            v34 = [v32 pathOfLatestVersion];
            v24 = [v33 loadAmbientConfigurationForPath:v34 error:0];

            v35 = PBFLogRoleCoordinator();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v59 = v42;
              v60 = 2114;
              v61 = v10;
              _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to fix Ambient configuration for poster %{public}@", buf, 0x16u);
            }

            v6 = v40;
            v36 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v10, v52, 0, 0, v22, v24, v40, v39);

            a4 = v39;
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

          self = v47;
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

- (id)defaultAttributesForNewPosterFromProvider:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PBFAmbientRoleCoordinator;
  v5 = [(PBFPosterRoleCoordinator *)&v13 defaultAttributesForNewPosterFromProvider:v4];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x277D3EEA0];
  v8 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA0] forNewPosterFromProvider:v4];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  v9 = *MEMORY[0x277D3EEA8];
  v10 = [(PBFAmbientRoleCoordinator *)self defaultAttribute:*MEMORY[0x277D3EEA8] forNewPosterFromProvider:v4];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:v9];
  }

  v11 = [v6 copy];

  return v11;
}

- (id)defaultAttribute:(id)a3 forNewPosterFromProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqual:*MEMORY[0x277D3EEA8]])
  {
    if ([v6 isEqual:@"com.apple.ambient.AmbientUI.InfographPoster"])
    {
      v7 = 2;
    }

    else if ([v6 isEqual:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"])
    {
      v7 = 1;
    }

    else if ([v6 isEqual:@"com.apple.ClockPoster.ClockPosterExtension"])
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
    if (![v5 isEqual:*MEMORY[0x277D3EEA0]])
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
  block[4] = a1;
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
  block[4] = a1;
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

- (BOOL)validateEventIsRelevant:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PBFAmbientRoleCoordinator;
  if ([(PBFPosterRoleCoordinator *)&v31 validateEventIsRelevant:v4])
  {
    v5 = [v4 eventType];
    if (([v5 isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"] & 1) == 0 && !objc_msgSend(v5, "isEqual:", @"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"))
    {
      v21 = 1;
      goto LABEL_25;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v4 fromValue];
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * v10) role];
        v12 = [(PBFPosterRoleCoordinator *)self role];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
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
      v6 = [v4 toValue];
      v14 = [v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v18 = [*(*(&v23 + 1) + 8 * v17) role];
        v19 = [(PBFPosterRoleCoordinator *)self role];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
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

- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5
{
  v239 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (![(PBFAmbientRoleCoordinator *)self validateEventIsRelevant:v8])
  {
    LOBYTE(v12) = 0;
    goto LABEL_145;
  }

  v179 = [(PBFPosterRoleCoordinator *)self role];
  v158 = [v8 eventType];
  v10 = objc_opt_new();
  v174 = self;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(PBFPosterRoleCoordinator *)self storage];
  }

  v156 = v11;
  v155 = v8;
  if ([v158 isEqual:{@"PBFPosterDataStoreEventTypeDescriptorsUpdated", v9}])
  {
    if (![v158 isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
    {
      goto LABEL_12;
    }

LABEL_10:
    v14 = [PBFPosterRoleCoordinatorChange refreshRoleCoordinator:v179];
    [v10 addObject:v14];

    v15 = 0;
    goto LABEL_137;
  }

  v13 = [v158 isEqual:@"PBFPosterDataStoreEventTypeStaticDescriptorsUpdated"];
  if ([v158 isEqual:@"PBFPosterDataStoreEventTypeActiveChargerIdentifierUpdated"])
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
    v185.receiver = v174;
    v185.super_class = PBFAmbientRoleCoordinator;
    v186 = 0;
    v12 = [(PBFPosterRoleCoordinator *)&v185 notifyEventWasReceived:v155 changes:&v186 storage:v156];
    v101 = a4;
    if (v12)
    {
      [v10 addObjectsFromArray:v186];
    }

    goto LABEL_138;
  }

  v16 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v156];
  if ([v158 isEqual:@"PBFPosterDataStoreEventTypeDescriptorsUpdated"])
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = [v155 relatedProviders];
  v19 = [v18 anyObject];

  v20 = [v155 relatedProviders];
  v21 = [v20 count];

  if (v21 != 1)
  {
    [PBFAmbientRoleCoordinator notifyEventWasReceived:a2 changes:self storage:?];
  }

  v159 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:v19];
  v22 = [v155 toValue];
  v170 = v19;
  if ([v19 isEqual:@"com.apple.PosterTester.SamplePoster"])
  {
    v23 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v24 = [v23 providerForExtensionIdentifier:v19];

    v25 = [v24 posterExtensionInfoPlist];
    v26 = [v25 pbf_supportsGallery];

    if ((v26 & 1) == 0)
    {
      v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v28 = [v27 stringArrayForKey:@"ShowSamplePoster"];
      v29 = [v28 containsObject:v19];

      if ((v29 & 1) == 0)
      {

        v22 = MEMORY[0x277CBEBF8];
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
  v30 = v22;
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
        v36 = [v35 _path];
        v37 = [v36 serverIdentity];
        v38 = [v37 type];

        if (v38 == v17)
        {
          v39 = [v35 _path];
          v40 = [v39 descriptorIdentifier];

          if (v40)
          {
            [v169 setObject:v35 forKeyedSubscript:v40];
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
  v41 = [v16 orderedPosters];
  v42 = [v41 countByEnumeratingWithState:&v218 objects:v237 count:16];
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
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v218 + 1) + 8 * j);
        v47 = [v46 pbf_posterProvider];
        v48 = [v47 isEqual:v170];

        if (v48)
        {
          v49 = [v46 _path];
          v50 = [v49 descriptorIdentifier];

          if (v50 || ([v46 pbf_posterProvider], v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "isEqualToString:", @"com.apple.ambient.AmbientUI.InfographPoster"), v51, v50 = @"InfographPoster", v52))
          {
            v53 = [v169 objectForKeyedSubscript:v50];

            if (v53)
            {
              v54 = [v171 objectForKey:v50];
              if (!v54)
              {
                v54 = objc_opt_new();
                [v171 setObject:v54 forKeyedSubscript:v50];
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

      v43 = [v41 countByEnumeratingWithState:&v218 objects:v237 count:16];
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
    v61 = [v60 _path];
    v62 = [v61 descriptorIdentifier];

    v63 = [v171 objectForKeyedSubscript:v62];
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
        v166 = v62;
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
              v72 = [v68 ambientConfiguration];
              v73 = [v68 displayNameLocalizationKey];
              v74 = [v70 displayNameLocalizationKey];
              v75 = BSEqualStrings();

              v76 = [v72 isEqualToAmbientConfiguration:v71];
              v77 = v76;
              if (!v75 || (v76 & 1) == 0)
              {
                v78 = [v70 loadConfiguredPropertiesWithError:0];
                v183 = [v78 mutableCopy];

                v79 = [objc_opt_class() supportedAttributes];
                v80 = [v178 attributesForPoster:v70 ofTypes:v79];
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
                  v84 = [objc_alloc(MEMORY[0x277D3EDD0]) initWithDisplayNameLocalizationKey:v73];
                  [v183 setOtherMetadata:v84];
                }

                if ((v77 & 1) == 0)
                {
                  [v183 setAmbientConfiguration:v72];
                  [obj setObject:v72 forKeyedSubscript:v172];
                }

                v85 = [MEMORY[0x277D3EB88] temporaryPathForRole:v179];
                v86 = [v70 _path];
                [v85 copyContentsOfPath:v86 error:0];

                v87 = objc_alloc(MEMORY[0x277D3ECE0]);
                v88 = [v70 pbf_posterUUID];
                v89 = [v70 _path];
                v90 = [v89 serverIdentity];
                v91 = [v87 initWithUpdatedPath:v85 updatedPosterUUID:v88 sourceIdentity:v90 configuredProperties:v183 attributes:obj];

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
        v62 = v166;
      }

      goto LABEL_88;
    }

    v92 = [v60 ambientConfiguration];
    v93 = v92;
    if (v92)
    {
      v94 = v92;
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
    v98 = [(PBFAmbientRoleCoordinator *)v174 _ambientIncomingPosterConfigurationForDescriptor:v176 referenceIncomingPosterConfiguration:0 error:&v209];
    v99 = v209;
    v100 = v99;
    if (v99 || !v98)
    {
      break;
    }

    [v168 setObject:v98 forKeyedSubscript:v62];
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

        v110 = [*(*(&v205 + 1) + 8 * k) _path];
        v111 = [v110 descriptorIdentifier];

        v112 = [v171 objectForKey:v111];
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

              v118 = [*(*(&v199 + 1) + 8 * m) pbf_posterUUID];
              [v105 addObject:v118];
            }

            v115 = [v113 countByEnumeratingWithState:&v199 objects:v229 count:16];
          }

          while (v115);
        }

        v119 = [v168 objectForKey:v111];
        v120 = v119;
        if (v119)
        {
          v121 = [v119 destinationUUID];
          [v105 addObject:v121];
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

        v127 = [*(*(&v195 + 1) + 8 * n) pbf_posterUUID];
        v128 = [PBFPosterRoleCoordinatorChange removePosterFromRole:v179 matchingUUID:v127];
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
  v129 = [v168 objectEnumerator];
  v130 = [v129 countByEnumeratingWithState:&v191 objects:v227 count:16];
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
          objc_enumerationMutation(v129);
        }

        v134 = [PBFPosterRoleCoordinatorChange addPosterToRole:v179 incomingPoster:*(*(&v191 + 1) + 8 * ii)];
        [v162 addObject:v134];
      }

      v131 = [v129 countByEnumeratingWithState:&v191 objects:v227 count:16];
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

        v140 = [PBFPosterRoleCoordinatorChange updatePosterWithinRole:v179 incomingPoster:*(*(&v187 + 1) + 8 * jj)];
        [v162 addObject:v140];
      }

      v137 = [v135 countByEnumeratingWithState:&v187 objects:v226 count:16];
    }

    while (v137);
  }

  v141 = [(PBFAmbientRoleCoordinator *)v174 _sortedPosterUUIDsByExtensionIdentifierFromStorage:v156];
  v142 = [v141 mutableCopy];

  v143 = [v105 copy];
  [v142 setObject:v143 forKeyedSubscript:v170];

  v144 = [(PBFAmbientRoleCoordinator *)v174 sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v142];
  v145 = [PBFPosterRoleCoordinatorChange reorderPostersForRole:v179 sortedPosterUUIDs:v144];
  [v162 addObject:v145];

LABEL_137:
  v12 = 1;
  v101 = a4;
LABEL_138:
  v146 = [v10 count];
  if (v101 && v146)
  {
    *v101 = [v10 copy];
  }

  v147 = objc_opt_class();
  v148 = [(PBFPosterRoleCoordinator *)v174 role];
  if (v15)
  {
    v149 = v147;
    v8 = v155;
    [v149 dumpResultsForEvent:v155 role:v148 posterCollection:v15 changes:v10 eventWasHandled:v12];
    v150 = v156;
  }

  else
  {
    v150 = v156;
    v151 = [(PBFPosterRoleCoordinator *)v174 buildNewPosterCollectionFromStorage:v156];
    v152 = v147;
    v8 = v155;
    [v152 dumpResultsForEvent:v155 role:v148 posterCollection:v151 changes:v10 eventWasHandled:v12];
  }

  v9 = v154;
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

- (BOOL)finalizeChangesWithChangeHandler:(id)a3 outEvents:(id *)a4 error:(id *)a5
{
  v147 = *MEMORY[0x277D85DE8];
  v132.receiver = self;
  v132.super_class = PBFAmbientRoleCoordinator;
  v98 = a3;
  v91 = a5;
  if (![PBFPosterRoleCoordinator finalizeChangesWithChangeHandler:sel_finalizeChangesWithChangeHandler_outEvents_error_ outEvents:? error:?])
  {
    v33 = 0;
    goto LABEL_109;
  }

  v128 = 0;
  v129 = &v128;
  v130 = 0x2020000000;
  v131 = 0;
  v96 = [(PBFPosterRoleCoordinator *)self role];
  v7 = [(PBFPosterRoleCoordinator *)self role];
  v8 = [v98 sortedPosterUUIDsForRole:v7 error:0];

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

        v24 = [v23 ambientConfiguration];
        v25 = [v24 mutableCopy];

        [v25 setHidden:0];
        [v23 setAmbientConfiguration:v25];
        v26 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v23 forPosterWithinRole:v96 matchingUUID:v19];
        v118 = 0;
        v27 = [(PBFAmbientRoleCoordinator *)self _executeChange:v26 storage:v98 outEvents:a4 error:&v118];
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

          if (v91)
          {
            v31 = MEMORY[0x277CCA9B8];
            v139 = *MEMORY[0x277CCA470];
            v140 = @"Photos posters are all hidden and no poster could be found to un-hide";
            v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            [v31 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v32];
            *v91 = v33 = 0;
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
      v95 = [v105 allValues];
      v56 = [v95 countByEnumeratingWithState:&v109 objects:v135 count:16];
      v32 = v95;
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
            objc_enumerationMutation(v95);
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
          v61 = [v58 _path];
          v62 = [v60 _initWithPath:v61];

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
            v67 = [(PBFPosterRoleCoordinator *)self role];
            v104 = [v66 defaultConfiguredPropertiesForRole:v67];
          }

          v68 = [v62 displayNameLocalizationKey];
          v69 = [v104 otherMetadata];
          v70 = [v69 displayNameLocalizationKey];
          v71 = [v68 isEqual:v70];

          if ((v71 & 1) == 0)
          {
            v72 = objc_alloc(MEMORY[0x277D3EDD0]);
            v73 = [v62 displayNameLocalizationKey];
            v74 = [v72 initWithDisplayNameLocalizationKey:v73];
            [v104 setOtherMetadata:v74];
          }

          v101 = [v62 ambientConfiguration];
          v75 = [v58 loadAmbientConfigurationWithError:0];
          v76 = [v101 editingBehavior];
          if (v76 != [v75 editingBehavior])
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
            v56 = [v95 countByEnumeratingWithState:&v109 objects:v135 count:16];
            v33 = 1;
            if (v56)
            {
              goto LABEL_69;
            }

            goto LABEL_106;
          }
        }

        v77 = [v75 mutableCopy];
        [v77 setEditingBehavior:{objc_msgSend(v101, "editingBehavior")}];
        v78 = [v77 copy];
        [v104 setAmbientConfiguration:v78];

LABEL_84:
        v79 = [v58 pbf_posterUUID];
        v80 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v104 forPosterWithinRole:v96 matchingUUID:v79];
        v108 = 0;
        v81 = [(PBFAmbientRoleCoordinator *)self _executeChange:v80 storage:v98 outEvents:a4 error:&v108];
        v82 = v108;

        if (!v81)
        {
          v87 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            [PBFAmbientRoleCoordinator finalizeChangesWithChangeHandler:outEvents:error:];
          }

          if (v91)
          {
            v88 = MEMORY[0x277CCA9B8];
            v133 = *MEMORY[0x277CCA470];
            v134 = @"Unable to correct editing behavior for clock poster";
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
            *v91 = [v88 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v89];
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
  v95 = [v106 allValues];
  v36 = [v95 countByEnumeratingWithState:&v114 objects:v138 count:16];
  v37 = v95;
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
      objc_enumerationMutation(v95);
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
      v43 = [v41 supportedDataLayout];
      *buf = 138543618;
      v142 = v39;
      v143 = 2048;
      v144 = v43;
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
      v49 = [(PBFPosterRoleCoordinator *)self role];
      v103 = [v48 defaultConfiguredPropertiesForRole:v49];
    }

    v50 = [v44 copy];
    [v103 setAmbientConfiguration:v50];

    v51 = [v39 pbf_posterUUID];
    v52 = [PBFPosterRoleCoordinatorChange updateConfiguredProperties:v103 forPosterWithinRole:v96 matchingUUID:v51];
    v113 = 0;
    v53 = [(PBFAmbientRoleCoordinator *)self _executeChange:v52 storage:v98 outEvents:a4 error:&v113];
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
      v36 = [v95 countByEnumeratingWithState:&v114 objects:v138 count:16];
      if (!v36)
      {
        v37 = v95;
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

  if (v91)
  {
    v85 = MEMORY[0x277CCA9B8];
    v136 = *MEMORY[0x277CCA470];
    v137 = @"Unable to correct invalid supported data layout type for infograph";
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    *v91 = [v85 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:-3341 userInfo:v86];
  }

LABEL_105:
  v33 = 0;
LABEL_106:
  v32 = v95;
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
  block[4] = a1;
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

- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6
{
  v99[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 changeType];
  if (![v12 isEqual:@"PBFPosterRoleCoordinatorChangeTypeAddPoster"])
  {
    goto LABEL_24;
  }

  v13 = [v10 userInfo];
  v14 = [v13 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyIncomingPosterConfiguration"];

  if (v14)
  {
    v15 = [v14 attributes];
    v16 = [v15 count];

    if (v16)
    {
LABEL_23:

LABEL_24:
      v38 = [v10 userInfo];
      v14 = [v38 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttributeType"];

      v39 = [v10 userInfo];
      v40 = [v39 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

      if ([v14 isEqual:*MEMORY[0x277D3EEA0]] && ((objc_msgSend(v12, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeAssignAttribute") & 1) != 0 || objc_msgSend(v12, "isEqual:", @"PBFPosterRoleCoordinatorChangeTypeRemoveAttribute")))
      {
        v41 = [v10 userInfo];
        v42 = [v41 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyAttribute"];

        v43 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v11];
        v30 = [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:v40 newAmbientChargerConfiguration:v42 currentCollection:v43 storage:v11 error:a6];
      }

      else if ([v12 isEqual:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"])
      {
        v90 = v12;
        v92 = v11;
        v94 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v11];
        v44 = [v94 posterWithUUID:v40];
        v45 = [v10 userInfo];
        v46 = [v45 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties"];

        if (v40 && v44 && v46)
        {
          v83 = a5;
          v84 = v46;
          v47 = [v44 _path];
          v48 = [v47 serverIdentity];

          v86 = self;
          v49 = [objc_opt_class() supportedAttributes];
          v50 = [v94 attributesForPoster:v44 ofTypes:v49];
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
          v88 = a6;

          v62 = [v84 ambientConfiguration];
          if (v62)
          {
            v63 = *MEMORY[0x277D3EEA8];
            v64 = [v61 objectForKey:*MEMORY[0x277D3EEA8]];
            v65 = [v62 isEqual:v64];

            if ((v65 & 1) == 0)
            {
              [v61 setObject:v62 forKeyedSubscript:v63];
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

              v71 = [v70 usageMetadataWithUpdatedLastModifiedDate];

              [v61 setObject:v71 forKeyedSubscript:v66];
            }
          }

          v72 = objc_alloc(MEMORY[0x277D3ECE0]);
          v73 = [v44 _path];
          v74 = [v44 pbf_posterUUID];
          v75 = v48;
          v81 = v48;
          v46 = v84;
          v79 = v61;
          v76 = [v72 initWithUpdatedPath:v73 updatedPosterUUID:v74 sourceIdentity:v75 configuredProperties:v84 attributes:v61];

          v77 = v62;
          v60 = v94;
          v30 = [(PBFPosterRoleCoordinator *)v86 _ingestIncomingPosterConfiguration:v76 change:v10 currentCollection:v94 storage:v92 outEvents:v83 error:v88];
        }

        else
        {
          v54 = MEMORY[0x277CCA9B8];
          v96[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
          v55 = [v10 description];
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
          *a6 = [v54 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v59];

          v30 = 0;
          v60 = v94;
        }

        v12 = v90;
        v11 = v92;
      }

      else
      {
        v95.receiver = self;
        v95.super_class = PBFAmbientRoleCoordinator;
        v30 = [(PBFPosterRoleCoordinator *)&v95 _executeChange:v10 storage:v11 outEvents:a5 error:a6];
      }

      goto LABEL_52;
    }

    v17 = [v14 sourceIdentity];
    v18 = [v17 provider];

    v19 = [v14 sourceIdentity];
    v20 = [v19 descriptorIdentifier];

    if (![v20 length])
    {
LABEL_22:

      goto LABEL_23;
    }

    v85 = self;
    v21 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
    v87 = a6;
    v22 = [v21 pbf_posterExtensionStoreCoordinatorForProviderIdentifier:v18 error:a6];
    if (v22)
    {
      v23 = v22;
      v93 = v21;
      v24 = [v22 dynamicDescriptorStoreCoordinatorForIdentifier:v20];
      v25 = v24;
      v82 = a5;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = [v23 staticDescriptorStoreCoordinatorForIdentifier:v20];
      }

      v31 = v26;

      v32 = [v31 pathOfLatestVersion];
      v91 = v32;
      if (v32)
      {
        v89 = v31;
        v80 = [objc_alloc(MEMORY[0x277D3ED80]) _initWithPath:v32];
        v33 = [PBFAmbientRoleCoordinator _ambientIncomingPosterConfigurationForDescriptor:v85 referenceIncomingPosterConfiguration:"_ambientIncomingPosterConfigurationForDescriptor:referenceIncomingPosterConfiguration:error:" error:?];

        if (v33)
        {
          v34 = [(PBFPosterRoleCoordinator *)v85 role];
          v35 = [PBFPosterRoleCoordinatorChange addPosterToRole:v34 incomingPoster:v33];

          v14 = v33;
          v10 = v35;
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

      self = v85;
      a6 = v87;
      a5 = v82;
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

  if (a6)
  {
    v27 = MEMORY[0x277CCA9B8];
    v98 = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
    v28 = [v10 description];
    v14 = v28;
    v29 = @"(null change)";
    if (v28)
    {
      v29 = v28;
    }

    v99[0] = v29;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    *a6 = [v27 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v18];
    goto LABEL_41;
  }

  v30 = 0;
LABEL_53:

  return v30;
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v36 = 0;
  v37 = 0;
  v35.receiver = self;
  v35.super_class = PBFAmbientRoleCoordinator;
  LODWORD(a4) = [(PBFPosterRoleCoordinator *)&v35 _prepareAttributesForIngestionForPoster:v15 existingAttributes:a4 incomingAttributes:v16 proposedAttributesToDelete:&v37 proposedAttributesToUpdate:&v36 storage:v17 currentCollection:v18 error:a10];
  v19 = v37;
  v20 = v36;
  v21 = v20;
  if (a4)
  {
    v31 = a7;
    v22 = [v20 mutableCopy];
    v23 = *MEMORY[0x277D3EEA8];
    v32 = v22;
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D3EEA8]];
    if (!v24)
    {
      v24 = [objc_alloc(MEMORY[0x277D3ED28]) initWithSupportedDataLayout:3];
      [v32 setObject:v24 forKeyedSubscript:v23];
    }

    v25 = [v16 objectForKey:*MEMORY[0x277D3EEA0]];
    if (v25 && (v34 = 0, [(PBFAmbientRoleCoordinator *)self _executeAmbientChargerConfigurationUpdateForPosterUUID:v15 newAmbientChargerConfiguration:v25 currentCollection:v18 storage:v17 error:&v34], (v26 = v34) != 0))
    {
      if (a10)
      {
        v26 = v26;
        *a10 = v26;
      }

      v27 = 0;
      v28 = v32;
    }

    else
    {
      v28 = v32;
      if (a6)
      {
        v29 = v19;
        *a6 = v19;
      }

      if (v31)
      {
        *v31 = [v32 copy];
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

- (BOOL)_executeAmbientChargerConfigurationUpdateForPosterUUID:(id)a3 newAmbientChargerConfiguration:(id)a4 currentCollection:(id)a5 storage:(id)a6 error:(id *)a7
{
  v97 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v76 = a6;
  v13 = [v12 posterWithUUID:v10];
  v14 = [v12 posterWithUUID:v10];
  v15 = *MEMORY[0x277D3EEA0];
  v16 = [v12 attributeForPoster:v14 ofType:*MEMORY[0x277D3EEA0]];

  v77 = v16;
  if ([v16 isEqual:v11])
  {
    v17 = 1;
  }

  else
  {
    v72 = v15;
    v65 = v13;
    v68 = v10;
    v69 = v12;
    v18 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v19 = [v11 associatedChargerIdentifiers];
    v20 = [v19 countByEnumeratingWithState:&v90 objects:v96 count:16];
    v71 = v11;
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v90 + 1) + 8 * i);
          v25 = [v77 associatedChargerIdentifiers];
          if ([v25 containsObject:v24])
          {
          }

          else
          {
            v26 = [v11 associatedChargerIdentifiers];
            v27 = [v26 containsObject:v24];

            v11 = v71;
            if (v27)
            {
              [v18 addObject:v24];
              goto LABEL_15;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v90 objects:v96 count:16];
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
    v10 = v68;
    v12 = v69;
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
          v33 = [v12 orderedPosters];
          v34 = [v33 array];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __147__PBFAmbientRoleCoordinator__executeAmbientChargerConfigurationUpdateForPosterUUID_newAmbientChargerConfiguration_currentCollection_storage_error___block_invoke;
          v83[3] = &unk_2782C6CD0;
          v73 = v12;
          v74 = v32;
          v84 = v73;
          v85 = v32;
          v35 = [v34 bs_filter:v83];

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
                  v43 = [v42 associatedChargerIdentifiers];
                  v44 = [v43 count];

                  if (!v44)
                  {

                    v42 = 0;
                  }

                  v45 = [v40 pbf_posterUUID];
                  v46 = [(PBFPosterRoleCoordinator *)self role];
                  v47 = [v42 encodeJSON];
                  v78 = 0;
                  v48 = [v76 mutateAttributeForPoster:v45 roleId:v46 attributeId:v29 attributePayload:v47 error:&v78];
                  v49 = v78;

                  if ((v48 & 1) == 0)
                  {
                    if (a7)
                    {
                      v57 = v49;
                      *a7 = v49;
                    }

                    v17 = 0;
                    v58 = v84;
                    v28 = v63;
                    v56 = v63;
                    v10 = v68;
                    v11 = v71;
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

            v10 = v68;
            v12 = v69;
            v11 = v71;
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

    v50 = [(PBFPosterRoleCoordinator *)self role];
    v51 = [v11 encodeJSON];
    v52 = [v76 mutateAttributeForPoster:v10 roleId:v50 attributeId:v29 attributePayload:v51 error:a7];

    if (v52)
    {
      v53 = *MEMORY[0x277D3EED8];
      v54 = [v12 attributeForPoster:v65 ofType:*MEMORY[0x277D3EED8]];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 usageMetadataWithUpdatedLastModifiedDate];
      }

      else
      {
        v56 = objc_opt_new();
      }

      v58 = [(PBFPosterRoleCoordinator *)self role];
      v59 = [v56 encodeJSON];
      [v76 mutateAttributeForPoster:v10 roleId:v58 attributeId:v53 attributePayload:v59 error:0];

      v17 = 1;
LABEL_43:

      v12 = v69;
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

- (id)sortedPosterUUIDsFromStorage:(id)a3
{
  v4 = MEMORY[0x277D3EF30];
  v5 = a3;
  if ([v4 ambientPosterDateCreatedOrderingSupported])
  {
    v9.receiver = self;
    v9.super_class = PBFAmbientRoleCoordinator;
    v6 = [(PBFPosterRoleCoordinator *)&v9 sortedPosterUUIDsFromStorage:v5];
  }

  else
  {
    v7 = [(PBFAmbientRoleCoordinator *)self _sortedPosterUUIDsByExtensionIdentifierFromStorage:v5];

    v6 = [(PBFAmbientRoleCoordinator *)self sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:v7];
  }

  return v6;
}

- (id)sortedPosterUUIDsUsingSortedPosterUUIDsByExtensionIdentifier:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v3 = [v39 mutableCopy];
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
        v17 = [(PBFPosterRoleCoordinator *)self modelCoordinatorProvider];
        v18 = [v17 providerForExtensionIdentifier:v13];

        v19 = [v18 posterExtensionInfoPlist];
        v20 = [v19 pbf_supportsGallery];

        if ((v20 & 1) != 0 || ([MEMORY[0x277CBEBD0] standardUserDefaults], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "stringArrayForKey:", @"ShowSamplePoster"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v13), v22, v21, v23))
        {

          v10 = v16;
          v6 = v15;
          v11 = v14;
          v7 = v37;
LABEL_13:
          v18 = [v39 objectForKeyedSubscript:v13];
          v24 = [v18 array];
          [v7 addObjectsFromArray:v24];

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
  v26 = [v6 allKeys];
  v27 = [v26 sortedArrayUsingSelector:sel_localizedCompare_];

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
        v33 = [v39 objectForKeyedSubscript:v32];
        v34 = [v33 array];
        [v7 addObjectsFromArray:v34];

        [v6 removeObjectForKey:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v29);
  }

  v35 = [v7 copy];

  return v35;
}

- (id)_sortedPosterUUIDsByExtensionIdentifierFromStorage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PBFPosterRoleCoordinator *)self role];
  v6 = [v4 sortedPosterUUIDsForRole:v5 error:0];

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
        v14 = [v4 extensionIdentifierForPosterUUID:v13 error:{0, v18}];
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

- (void)noteDidResetRoleCoordinator:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = PBFLogRoleCoordinator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PBFPosterRoleCoordinator *)self role];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Populating ambient role coordinator epoch after role reset", &v6, 0xCu);
  }
}

- (id)_ambientIncomingPosterConfigurationForDescriptor:(id)a3 referenceIncomingPosterConfiguration:(id)a4 error:(id *)a5
{
  v63[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v60 = a4;
  v9 = [(PBFPosterRoleCoordinator *)self role];
  v10 = [v8 _path];
  v11 = [v10 serverIdentity];
  v12 = [v11 provider];

  v13 = [v8 _path];
  v14 = [v13 serverIdentity];
  v15 = [v14 descriptorIdentifier];

  v16 = [MEMORY[0x277D3ECF8] mutableConfigurationWithRole:v9];
  v17 = [v8 _path];
  v61 = 0;
  LOBYTE(v14) = [v16 copyContentsOfPath:v17 error:&v61];
  v18 = v61;

  if (v14)
  {
    v55 = a5;
    v19 = [(PBFAmbientRoleCoordinator *)self defaultAttributesForNewPosterFromProvider:v12];
    v20 = [v8 ambientConfiguration];
    v21 = v20;
    v58 = v19;
    v59 = v15;
    v56 = v18;
    if (v20)
    {
      v22 = v20;
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

    v33 = [MEMORY[0x277D3ED60] defaultConfiguredPropertiesForRole:v9];
    v34 = [v33 mutableCopy];

    v35 = [v19 mutableCopy];
    v36 = [v22 copy];
    [v35 setObject:v36 forKeyedSubscript:v23];

    v54 = v22;
    [v34 setAmbientConfiguration:v22];
    v37 = [v8 displayNameLocalizationKey];
    if (v37)
    {
      [v16 setDisplayNameLocalizationKey:v37];
    }

    v52 = v37;
    v38 = [MEMORY[0x277CCAD78] UUID];
    v53 = [MEMORY[0x277D3EB98] descriptorIdentityWithProvider:v12 identifier:v59 role:v9 posterUUID:v38 version:0];
    v57 = v12;
    if (v60)
    {
      v51 = v9;
      v39 = [v60 configuredProperties];
      [v34 mergeConfiguredProperties:v39];
      v40 = [v60 attributes];
      if ([v40 count])
      {
        [v35 addEntriesFromDictionary:v40];
      }

      v50 = v35;
      v41 = [v60 _path];
      v42 = [v16 copyContentsOfPath:v41 error:v55];

      if (!v42)
      {

        v25 = 0;
        v35 = v50;
        v9 = v51;
        v12 = v57;
        v48 = v58;
        v43 = v34;
        v47 = v53;
        goto LABEL_23;
      }

      v43 = v34;
      v44 = [v60 destinationUUID];

      v38 = v44;
      v35 = v50;
      v9 = v51;
    }

    else
    {
      v43 = v34;
    }

    v45 = objc_alloc(MEMORY[0x277D3ECE0]);
    v46 = [v16 _path];
    v47 = v53;
    v25 = [v45 initWithNewPath:v46 destinationPosterUUID:v38 sourceIdentity:v53 configuredProperties:v43 attributes:v35];

    [v25 trackTemporaryState:v16];
    v12 = v57;
    v48 = v58;
LABEL_23:

    v15 = v59;
    v18 = v56;
    goto LABEL_24;
  }

  if (a5)
  {
    if (v18)
    {
      v24 = v18;
      v25 = 0;
      *a5 = v18;
      goto LABEL_24;
    }

    v29 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA470];
    v63[0] = @"_ambientIncomingPosterConfigurationForDescriptor initial copy; Unable to copy descriptor; bailing descriptor update.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v31 = [v29 pbf_generalErrorWithCode:0 userInfo:v30];
    *a5 = v31;
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