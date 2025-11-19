@interface PBFLockScreenRoleCoordinator
+ (id)supportedAttributes;
+ (id)supportedChangeTypes;
- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6;
- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10;
- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5;
- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4;
- (PBFLockScreenRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5;
- (id)defaultAttributesForNewPosterFromProvider:(id)a3;
- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4;
@end

@implementation PBFLockScreenRoleCoordinator

- (PBFLockScreenRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5
{
  v8 = *MEMORY[0x277D3EEF0];
  v10.receiver = self;
  v10.super_class = PBFLockScreenRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:a3 modelCoordinatorProvider:a4 providers:a5];
}

- (BOOL)synchronizeFileSystemAttributesForStorage:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = PBFLockScreenRoleCoordinator;
  v25 = a4;
  if ([(PBFPosterRoleCoordinator *)&v30 synchronizeFileSystemAttributesForStorage:v6 error:a4])
  {
    [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v6];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v29 = 0u;
    obj = [v24 orderedPosters];
    v23 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v23)
    {
      v22 = *v27;
      v7 = *MEMORY[0x277D3EEB8];
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          v10 = self;
          v11 = [objc_opt_class() supportedAttributes];
          v12 = [v24 attributesForPoster:v9 ofTypes:v11];

          v13 = [v24 configuredPropertiesForPoster:v9];
          v14 = [v13 focusConfiguration];

          v15 = [v12 objectForKey:v7];
          v16 = PBFLogRoleCoordinator();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(PBFPosterRoleCoordinator *)v10 role];
            *buf = 138543874;
            v32 = v17;
            v33 = 2112;
            v34 = v9;
            v35 = 2112;
            v36 = v14;
            _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synchronizing configuration for poster %@ with disk focus %@", buf, 0x20u);
          }

          v18 = _PBFPosterRoleCoordinatorSynchronizeAttribute(v9, v7, v14, v15, 0, 0, v6, v25);
          if (!v18)
          {
            v19 = 0;
            goto LABEL_15;
          }

          self = v10;
        }

        v23 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_15:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)defaultAttributesForNewPosterFromProvider:(id)a3
{
  v12.receiver = self;
  v12.super_class = PBFLockScreenRoleCoordinator;
  v4 = a3;
  v5 = [(PBFPosterRoleCoordinator *)&v12 defaultAttributesForNewPosterFromProvider:v4];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x277D3EDB0];
  v8 = [(PBFPosterRoleCoordinator *)self role];
  v9 = [v7 defaultHomeScreenConfigurationForProvider:v4 role:v8];

  [v6 setObject:v9 forKey:*MEMORY[0x277D3EEC0]];
  v10 = [v6 copy];

  return v10;
}

- (id)determineActivePosterConfigurationForStorage:(id)a3 context:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
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
  v10 = [v7 pbf_desiredActiveConfigurationForRole:v9];

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__9;
  v64 = __Block_byref_object_dispose__9;
  v65 = [v8 posterWithUUID:v10];
  v52 = [(PBFPosterRoleCoordinator *)self posterConfigurationsSortedByLastActivatedDate:v8];
  if (v10)
  {
    v11 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PBFPosterRoleCoordinator *)self role];
      v13 = v61[5];
      *buf = 138543874;
      v67 = v12;
      v68 = 2114;
      v69 = v13;
      v70 = 2114;
      v71 = v10;
      _os_log_impl(&dword_21B526000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: %{public}@/%{public}@ as active poster configuration", buf, 0x20u);
    }
  }

  v14 = [v7 pbf_activeFocusMode];
  if (v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 == 0;
  }

  v16 = !v15;

  if (v16)
  {
    v17 = [v7 pbf_activeFocusMode];
    v18 = [v17 activityUniqueIdentifier];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke;
    v56[3] = &unk_2782C9328;
    v19 = v8;
    v57 = v19;
    v20 = v18;
    v58 = v20;
    v59 = &v60;
    [v52 enumerateObjectsWithOptions:2 usingBlock:v56];
    if (v61[5])
    {
      v21 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v20;
        v50 = v6;
        v51 = [(PBFPosterRoleCoordinator *)self role];
        v22 = v61[5];
        v23 = [v19 configuredPropertiesForPoster:v22];
        v24 = [v23 focusConfiguration];
        v25 = [v7 pbf_activeFocusMode];
        v26 = [v25 activityUniqueIdentifier];
        *buf = 138544130;
        v67 = v51;
        v68 = 2112;
        v69 = v22;
        v70 = 2112;
        v71 = v24;
        v72 = 2112;
        v73 = v26;
        _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: %@ with focus configuration: %@ associated with active focus mode identifier: %@ as active poster configuration", buf, 0x2Au);

        v20 = v49;
        v6 = v50;
      }
    }

    else
    {
      v21 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v20;
        v28 = [(PBFPosterRoleCoordinator *)self role];
        v29 = [v7 pbf_activeFocusMode];
        v30 = [v29 activityUniqueIdentifier];
        *buf = 138543618;
        v67 = v28;
        v68 = 2112;
        v69 = v30;
        _os_log_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: did not find poster associated with active focus mode identifier: %@", buf, 0x16u);

        v20 = v27;
      }
    }
  }

  if (!v61[5])
  {
    v31 = [v8 selectedPoster];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [v8 selectedPoster];
      v34 = v61[5];
      v61[5] = v33;

      v35 = PBFLogRoleCoordinator();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(PBFPosterRoleCoordinator *)self role];
        v37 = v61[5];
        *buf = 138543618;
        v67 = v36;
        v68 = 2112;
        v69 = v37;
        _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: using selected poster: %@ as active poster configuration", buf, 0x16u);
      }

      v38 = [v8 configuredPropertiesForPoster:v61[5]];
      v39 = [v38 focusConfiguration];

      if (v39)
      {
        v40 = PBFLogRoleCoordinator();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [(PBFPosterRoleCoordinator *)self role];
          v42 = v61[5];
          *buf = 138543618;
          v67 = v41;
          v68 = 2112;
          v69 = v42;
          _os_log_impl(&dword_21B526000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: selected poster: %@ is still tied to a focus", buf, 0x16u);
        }
      }
    }
  }

  v43 = v61[5];
  if (!v43)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke_5;
    v53[3] = &unk_2782C9350;
    v54 = v8;
    v55 = &v60;
    [v52 enumerateObjectsWithOptions:2 usingBlock:v53];
    v44 = PBFLogRoleCoordinator();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [(PBFPosterRoleCoordinator *)self role];
      v46 = v61[5];
      *buf = 138543618;
      v67 = v45;
      v68 = 2112;
      v69 = v46;
      _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Choosing active poster: using most recently used poster: %@ with no focus as active poster configuration", buf, 0x16u);
    }

    v43 = v61[5];
  }

  v47 = v43;

  _Block_object_dispose(&v60, 8);

  return v47;
}

void __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1 + 32) configuredPropertiesForPoster:?];
  v8 = [v7 focusConfiguration];

  v9 = [v8 activityUUID];
  v10 = [v9 isEqual:*(a1 + 40)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __85__PBFLockScreenRoleCoordinator_determineActivePosterConfigurationForStorage_context___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) configuredPropertiesForPoster:?];
  v8 = [v7 focusConfiguration];

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)notifyEventWasReceived:(id)a3 changes:(id *)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(PBFPosterRoleCoordinator *)self validateEventIsRelevant:v8])
  {
    v10 = [(PBFPosterRoleCoordinator *)self role];
    v11 = objc_opt_new();
    v17.receiver = self;
    v17.super_class = PBFLockScreenRoleCoordinator;
    v18 = 0;
    v12 = [(PBFPosterRoleCoordinator *)&v17 notifyEventWasReceived:v8 changes:&v18 storage:v9];
    if (v12)
    {
      [v11 addObjectsFromArray:v18];
    }

    v13 = [v11 count];
    if (a4 && v13)
    {
      *a4 = [v11 copy];
    }

    v14 = objc_opt_class();
    v15 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v9];
    [v14 dumpResultsForEvent:v8 role:v10 posterCollection:v15 changes:v11 eventWasHandled:v12];
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)supportedAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBFLockScreenRoleCoordinator_supportedAttributes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedAttributes_onceToken_0 != -1)
  {
    dispatch_once(&supportedAttributes_onceToken_0, block);
  }

  v2 = supportedAttributes_supportedAttributes_0;

  return v2;
}

void __51__PBFLockScreenRoleCoordinator_supportedAttributes__block_invoke(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFLockScreenRoleCoordinator;
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

  [v5 addObject:*MEMORY[0x277D3EEB8]];
  [v5 addObject:*MEMORY[0x277D3EEC0]];
  v6 = [v5 copy];
  v7 = supportedAttributes_supportedAttributes_0;
  supportedAttributes_supportedAttributes_0 = v6;
}

+ (id)supportedChangeTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PBFLockScreenRoleCoordinator_supportedChangeTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedChangeTypes_onceToken_0 != -1)
  {
    dispatch_once(&supportedChangeTypes_onceToken_0, block);
  }

  v2 = supportedChangeTypes_supportedChangeTypes_0;

  return v2;
}

void __52__PBFLockScreenRoleCoordinator_supportedChangeTypes__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v9[0] = @"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [v2 setWithArray:v3];

  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___PBFLockScreenRoleCoordinator;
  v5 = objc_msgSendSuper2(&v8, sel_supportedChangeTypes);
  [v4 unionSet:v5];

  v6 = [v4 copy];
  v7 = supportedChangeTypes_supportedChangeTypes_0;
  supportedChangeTypes_supportedChangeTypes_0 = v6;
}

- (BOOL)_executeChange:(id)a3 storage:(id)a4 outEvents:(id *)a5 error:(id *)a6
{
  v86[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 changeType];
  v13 = [v12 isEqual:@"PBFPosterRoleCoordinatorChangeTypeUpdateConfiguredProperties"];

  if (v13)
  {
    v14 = [(PBFPosterRoleCoordinator *)self buildNewPosterCollectionFromStorage:v11];
    v15 = [v10 userInfo];
    v16 = [v15 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyPosterUUID"];

    v17 = [v14 posterWithUUID:v16];
    v18 = [v10 userInfo];
    v19 = [v18 objectForKey:@"PBFPosterRoleCoordinatorChangeUserInfoKeyConfiguredProperties"];

    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    v82 = v19;
    if (v20 || v19 == 0)
    {
      v22 = MEMORY[0x277CCA9B8];
      v85[0] = @"PBFPosterRoleCoordinatorErrorUnderylingChangeUserInfoKey";
      v23 = [v10 description];
      v24 = v23;
      v25 = @"(null change)";
      if (v23)
      {
        v25 = v23;
      }

      v85[1] = @"posterUUIDToUpdate";
      v26 = @"(null uuid)";
      if (v16)
      {
        v26 = v16;
      }

      v86[0] = v25;
      v86[1] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
      v28 = v27 = v16;
      [v22 errorWithDomain:@"com.apple.PosterBoard.roleCoordinator.errorDomain" code:3 userInfo:v28];
      *a6 = v29 = 0;
      goto LABEL_39;
    }

    v78 = v16;
    v79 = a5;
    v30 = [v17 _path];
    v31 = [v30 serverIdentity];

    v83 = 0;
    v32 = [v14 isPosterConfigurationAnAssociatedPoster:v17 parentPoster:&v83];
    v33 = v83;
    v80 = a6;
    v81 = v31;
    v76 = v11;
    v77 = v17;
    v75 = self;
    if (v32)
    {
      v34 = MEMORY[0x277D3ECE0];
      v35 = v83;
      v36 = [v34 alloc];
      v37 = [v17 _path];
      v38 = [v17 pbf_posterUUID];
      v39 = [v35 pbf_posterUUID];
      v40 = [objc_opt_class() supportedAttributes];
      v41 = v17;
      v42 = v33;
      v43 = [v14 attributesForPoster:v41 ofTypes:v40];
      v24 = [v36 initWithUpdatedPath:v37 updatedPosterUUID:v38 parentPosterUUID:v39 sourceIdentity:v31 configuredProperties:v82 attributes:v43];
LABEL_38:

      v11 = v76;
      v29 = [(PBFPosterRoleCoordinator *)v75 _ingestIncomingPosterConfiguration:v24 change:v10 currentCollection:v14 storage:v76 outEvents:v79 error:v80];

      v28 = v81;
      v17 = v77;
      v27 = v78;
LABEL_39:

      goto LABEL_40;
    }

    v74 = v83;
    v44 = v83;
    v45 = [objc_opt_class() supportedAttributes];
    v73 = v14;
    v46 = [v14 attributesForPoster:v17 ofTypes:v45];
    v47 = [v46 mutableCopy];
    v48 = v47;
    if (v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = objc_opt_new();
    }

    v50 = v49;

    v38 = [v82 focusConfiguration];
    if (v38)
    {
      v51 = *MEMORY[0x277D3EEB8];
      v52 = [v50 objectForKey:*MEMORY[0x277D3EEB8]];
      v53 = [v38 isEqual:v52];

      if (v53)
      {
        v72 = 0;
      }

      else
      {
        [v50 setObject:v38 forKeyedSubscript:v51];
        v72 = 1;
      }
    }

    else
    {
      v54 = [v50 allKeys];
      v55 = *MEMORY[0x277D3EEB8];
      v72 = [v54 containsObject:*MEMORY[0x277D3EEB8]];

      [v50 removeObjectForKey:v55];
    }

    v56 = [v82 homeScreenConfiguration];
    if (v56)
    {
      v57 = *MEMORY[0x277D3EEC0];
      v58 = [v50 objectForKey:*MEMORY[0x277D3EEC0]];
      v59 = [v56 isEqual:v58];

      if (v59)
      {
        v60 = v56;
        if (!v72)
        {
LABEL_37:
          v70 = objc_alloc(MEMORY[0x277D3ECE0]);
          v40 = [v17 _path];
          v43 = [v17 pbf_posterUUID];
          v24 = [v70 initWithUpdatedPath:v40 updatedPosterUUID:v43 sourceIdentity:v81 configuredProperties:v82 attributes:v50];
          v37 = v50;
          v14 = v73;
          v42 = v74;
          v39 = v60;
          goto LABEL_38;
        }
      }

      else
      {
        v60 = v56;
        [v50 setObject:v56 forKeyedSubscript:v57];
      }
    }

    else
    {
      v60 = 0;
      v61 = [v50 allKeys];
      v62 = *MEMORY[0x277D3EEC0];
      v63 = [v61 containsObject:*MEMORY[0x277D3EEC0]];

      [v50 removeObjectForKey:v62];
      if (((v63 | v72) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v64 = *MEMORY[0x277D3EED8];
    v65 = [v50 objectForKeyedSubscript:*MEMORY[0x277D3EED8]];
    v66 = v65;
    if (v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = objc_opt_new();
    }

    v68 = v67;

    v69 = [v68 usageMetadataWithUpdatedLastModifiedDate];

    [v50 setObject:v69 forKeyedSubscript:v64];
    goto LABEL_37;
  }

  v84.receiver = self;
  v84.super_class = PBFLockScreenRoleCoordinator;
  v29 = [(PBFPosterRoleCoordinator *)&v84 _executeChange:v10 storage:v11 outEvents:a5 error:a6];
LABEL_40:

  return v29;
}

- (BOOL)_prepareAttributesForIngestionForPoster:(id)a3 existingAttributes:(id)a4 incomingAttributes:(id)a5 proposedAttributesToDelete:(id *)a6 proposedAttributesToUpdate:(id *)a7 storage:(id)a8 currentCollection:(id)a9 error:(id *)a10
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a9;
  v29.receiver = self;
  v29.super_class = PBFLockScreenRoleCoordinator;
  v18 = [(PBFPosterRoleCoordinator *)&v29 _prepareAttributesForIngestionForPoster:v16 existingAttributes:a4 incomingAttributes:a5 proposedAttributesToDelete:a6 proposedAttributesToUpdate:a7 storage:a8 currentCollection:v17 error:a10];
  if (v18 && [*a6 containsObject:*MEMORY[0x277D3EEB8]])
  {
    v19 = [v17 posterWithUUID:v16];
    v20 = MEMORY[0x277D3EDE8];
    v21 = [v19 _path];
    v22 = [v20 removeFocusConfigurationForPath:v21 error:a10];

    v23 = PBFLogRoleCoordinator();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = [(PBFPosterRoleCoordinator *)self role];
        v26 = v25;
        if (a10)
        {
          v27 = *a10;
        }

        else
        {
          v27 = @"[unknown error]";
        }

        *buf = 138543874;
        v31 = v25;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v27;
        _os_log_error_impl(&dword_21B526000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to remove focus configuration after attribute deletion for poster %{public}@: %{public}@", buf, 0x20u);
        goto LABEL_9;
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(PBFPosterRoleCoordinator *)self role];
      *buf = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed focus configuration after attribute deletion for poster %{public}@", buf, 0x16u);
LABEL_9:
    }
  }

  return v18;
}

@end