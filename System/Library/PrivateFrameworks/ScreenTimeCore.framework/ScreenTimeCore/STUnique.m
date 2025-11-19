@interface STUnique
+ (BOOL)addHistoryToken:(id)a3 toMetadataForStore:(id)a4 error:(id *)a5;
+ (Class)_internalClassForSerializableClassName:(id)a3;
+ (id)cloudToLocalMapping;
+ (id)historyTokenFromStore:(id)a3;
+ (id)localToCloudMapping;
+ (id)mirroredEntityNames;
- (BOOL)areLocalChangesInterestingWithError:(id *)a3;
- (BOOL)migrateWithError:(id *)a3;
- (BOOL)migrateWithExportNeeded:(BOOL *)a3 error:(id *)a4;
- (STUnique)initWithPersistenceController:(id)a3;
- (void)newResolveConflictsBetweenLocalDeltas:(id)a3 cloudDeltas:(id)a4;
- (void)resolveConflictsBetweenLocalDeltas:(id)a3 cloudDeltas:(id)a4;
@end

@implementation STUnique

- (STUnique)initWithPersistenceController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STUnique;
  v6 = [(STUnique *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistenceController, a3);
  }

  return v7;
}

+ (id)localToCloudMapping
{
  if (localToCloudMapping_oneTime != -1)
  {
    +[STUnique localToCloudMapping];
  }

  v3 = localToCloudMapping_entityMapping;

  return v3;
}

void __31__STUnique_localToCloudMapping__block_invoke()
{
  v0 = localToCloudMapping_entityMapping;
  localToCloudMapping_entityMapping = &unk_1F3059E58;
}

+ (id)cloudToLocalMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__STUnique_cloudToLocalMapping__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cloudToLocalMapping_oneTime != -1)
  {
    dispatch_once(&cloudToLocalMapping_oneTime, block);
  }

  v2 = cloudToLocalMapping_entityMapping;

  return v2;
}

void __31__STUnique_cloudToLocalMapping__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) localToCloudMapping];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v1 objectForKeyedSubscript:v8];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = cloudToLocalMapping_entityMapping;
  cloudToLocalMapping_entityMapping = v2;

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)mirroredEntityNames
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__STUnique_mirroredEntityNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (mirroredEntityNames_oneTime != -1)
  {
    dispatch_once(&mirroredEntityNames_oneTime, block);
  }

  v2 = mirroredEntityNames_entityNames;

  return v2;
}

void __31__STUnique_mirroredEntityNames__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) localToCloudMapping];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{2 * objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v2 addObject:v8];
        v9 = [v1 objectForKeyedSubscript:v8];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = mirroredEntityNames_entityNames;
  mirroredEntityNames_entityNames = v2;

  v11 = *MEMORY[0x1E69E9840];
}

+ (Class)_internalClassForSerializableClassName:(id)a3
{
  v3 = _internalClassForSerializableClassName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[STUnique _internalClassForSerializableClassName:];
  }

  v5 = [_internalClassForSerializableClassName__mapping objectForKeyedSubscript:v4];

  v6 = NSClassFromString(v5);

  return v6;
}

void __51__STUnique__internalClassForSerializableClassName___block_invoke()
{
  v14[10] = *MEMORY[0x1E69E9840];
  v0 = +[STTestSyncableObject serializableClassName];
  v14[0] = @"STTestSyncableObject";
  v1 = +[STBlueprint serializableClassName];
  v13[1] = v1;
  v14[1] = @"STBlueprint";
  v2 = +[STFamilyOrganizationSettings serializableClassName];
  v13[2] = v2;
  v14[2] = @"STFamilyOrganizationSettings";
  v3 = +[STiCloudOrganizationSettings serializableClassName];
  v13[3] = v3;
  v14[3] = @"STiCloudOrganizationSettings";
  v4 = +[STUserDeviceState serializableClassName];
  v13[4] = v4;
  v14[4] = @"STUserDeviceState";
  v5 = +[STInstalledApp serializableClassName];
  v13[5] = v5;
  v14[5] = @"STInstalledApp";
  v6 = +[STLocalOrganization serializableClassName];
  v13[6] = v6;
  v14[6] = @"STLocalOrganization";
  v7 = +[STiCloudOrganization serializableClassName];
  v13[7] = v7;
  v14[7] = @"STiCloudOrganization";
  v8 = +[STFamilyOrganization serializableClassName];
  v13[8] = v8;
  v14[8] = @"STFamilyOrganization";
  v9 = +[STAppException serializableClassName];
  v13[9] = v9;
  v14[9] = @"STAppException";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:10];
  v11 = _internalClassForSerializableClassName__mapping;
  _internalClassForSerializableClassName__mapping = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)areLocalChangesInterestingWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v5 = [(STUnique *)self persistenceController];
  v6 = [v5 localStore];
  if (v6)
  {
    v7 = [v5 newBackgroundContext];
    [v7 setName:@"Analyze"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__STUnique_areLocalChangesInterestingWithError___block_invoke;
    v12[3] = &unk_1E7CE7A10;
    v12[4] = self;
    v13 = v6;
    v8 = v7;
    v14 = v8;
    v15 = &v17;
    v16 = &v23;
    [v8 performBlockAndWait:v12];
    if (a3)
    {
      v9 = v18[5];
      if (v9)
      {
        *a3 = v9;
      }
    }

    v10 = *(v24 + 24);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:6 userInfo:0];
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v10 & 1;
}

void __48__STUnique_areLocalChangesInterestingWithError___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) historyTokenFromStore:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v15 = 0;
  v7 = [v2 deltasForStore:v4 inManagedObjectContext:v5 sinceToken:v3 ignoreAuthor:@"STUnique" finalToken:&v15 error:&obj];
  v8 = v15;
  objc_storeStrong((v6 + 40), obj);
  if ([v7 count])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
    [v9 addHistoryToken:v8 toMetadataForStore:v10 error:&v13];
    objc_storeStrong((v11 + 40), v13);
    v12 = +[STLog mirroring];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __48__STUnique_areLocalChangesInterestingWithError___block_invoke_cold_1();
    }
  }
}

- (BOOL)migrateWithExportNeeded:(BOOL *)a3 error:(id *)a4
{
  v10 = 0;
  v6 = [(STUnique *)self migrateWithError:&v10];
  v7 = v10;
  if (a3)
  {
    *a3 = v6;
  }

  if (a4)
  {
    v7 = v7;
    *a4 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (BOOL)migrateWithError:(id *)a3
{
  v5 = +[STLog mirroring];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STUnique migrateWithError:v5];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v6 = [(STUnique *)self persistenceController];
  v7 = [v6 localStore];
  v8 = [v6 cloudStore];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v6 newBackgroundContext];
    [v10 setTransactionAuthor:@"STUnique"];
    [v10 setName:@"Migrate"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__STUnique_migrateWithError___block_invoke;
    v16[3] = &unk_1E7CE7A38;
    v11 = v10;
    v17 = v11;
    v18 = v9;
    v19 = v7;
    v20 = self;
    v21 = &v34;
    v22 = &v30;
    v23 = &v24;
    [v11 performBlockAndWait:v16];
    if (a3)
    {
      if ((v31[3] & 1) == 0)
      {
        v12 = v25[5];
        if (v12)
        {
          *a3 = v12;
        }
      }
    }

    v13 = +[STLog mirroring];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [STUnique migrateWithError:v13];
    }

    v14 = *(v35 + 24);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:6 userInfo:0];
    *a3 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return v14 & 1;
}

void __29__STUnique_migrateWithError___block_invoke(uint64_t a1)
{
  v164 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v152 = 0;
  v122 = v2;
  v6 = [v2 initializeCachesWithManagedObjectContext:v3 withCloudStore:v4 andLocalStore:v5 error:&v152];
  v7 = v152;
  v8 = v7;
  v9 = 0x1E7CE5000uLL;
  if (!v6)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if (!v7)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  v10 = objc_opt_new();
  v11 = [*(a1 + 56) historyTokenFromStore:*(a1 + 48)];
  v113 = [*(a1 + 56) historyTokenFromStore:*(a1 + 40)];
  v12 = +[STLog mirroring];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __29__STUnique_migrateWithError___block_invoke_cold_1();
  }

  v13 = +[STLog mirroring];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __29__STUnique_migrateWithError___block_invoke_cold_2();
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v150 = v8;
  v151 = 0;
  v16 = v8;
  v17 = [v10 deltasForStore:v14 inManagedObjectContext:v15 sinceToken:v11 ignoreAuthor:@"STUnique" finalToken:&v151 error:&v150];
  v112 = v151;
  v18 = v150;

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v148 = v18;
  v149 = 0;
  v21 = [v10 deltasForStore:v19 inManagedObjectContext:v20 sinceToken:v113 ignoreAuthor:@"STUnique" finalToken:&v149 error:&v148];
  v111 = v149;
  v123 = v148;

  v114 = v17;
  if ([v17 count] && objc_msgSend(v21, "count"))
  {
    [*(a1 + 56) newResolveConflictsBetweenLocalDeltas:v17 cloudDeltas:v21];
  }

  v119 = a1;
  v109 = v11;
  v110 = v10;
  v107 = v21;
  if ([v21 count])
  {
    v115 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count", v21)}];
    v22 = +[STLog mirroring];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v21 count];
      *buf = 134217984;
      v158 = v23;
      _os_log_impl(&dword_1B831F000, v22, OS_LOG_TYPE_DEFAULT, "Detected %lu cloud changes", buf, 0xCu);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v24 = [v21 allValues];
    v25 = [v24 countByEnumeratingWithState:&v144 objects:v163 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v145;
      v117 = v24;
      v116 = *v145;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v145 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v144 + 1) + 8 * i);
          if ([v29 changeType] != 2)
          {
            v34 = [v29 dictionary];
            v32 = [v34 objectForKeyedSubscript:@"class"];

            if (v32)
            {
              v35 = [STUnique _internalClassForSerializableClassName:v32];
              if (v35)
              {
                v36 = v35;
                v37 = [v29 dictionary];
                v38 = *(a1 + 32);
                v140 = v123;
                v39 = [(objc_class *)v36 fetchOrCreateWithDictionaryRepresentation:v37 inContext:v38 error:&v140];
                v40 = v140;

                if (v37 && v39)
                {
                  v162[0] = v39;
                  v161[0] = @"object";
                  v161[1] = @"dictionary";
                  v41 = [v29 dictionary];
                  v162[1] = v41;
                  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v162 forKeys:v161 count:2];
                  [v115 addObject:v42];

                  v24 = v117;
                }

                else
                {
                  v41 = +[STLog mirroring];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v158 = v40;
                    _os_log_error_impl(&dword_1B831F000, v41, OS_LOG_TYPE_ERROR, "Could not find/create local object: %{public}@", buf, 0xCu);
                  }
                }

                v43 = +[STLog mirroring];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v29 uniqueIdentifier];
                  *buf = 138543618;
                  v158 = v36;
                  v159 = 2114;
                  v160 = v44;
                  _os_log_impl(&dword_1B831F000, v43, OS_LOG_TYPE_DEFAULT, "Mirroring change: Updated local object (%{public}@) %{public}@", buf, 0x16u);

                  v24 = v117;
                }

                v27 = v116;
                goto LABEL_36;
              }

              v37 = [*(v9 + 3824) mirroring];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v158 = v32;
                _os_log_error_impl(&dword_1B831F000, v37, OS_LOG_TYPE_ERROR, "External to internal mapping missing for: %@", buf, 0xCu);
              }
            }

            else
            {
              v37 = [*(v9 + 3824) mirroring];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                __29__STUnique_migrateWithError___block_invoke_cold_3(&v141, v142, v37);
              }
            }

            v40 = v123;
LABEL_36:

            v123 = v40;
            a1 = v119;
            v9 = 0x1E7CE5000;
            goto LABEL_37;
          }

          v30 = [*(v9 + 3824) mirroring];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v29 uniqueIdentifier];
            *buf = 138543362;
            v158 = v31;
            _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "Mirroring change: Deleted local copy of %{public}@", buf, 0xCu);
          }

          v32 = [v29 uniqueIdentifier];
          v33 = *(a1 + 32);
          v143 = 0;
          [v122 deleteLocalObjectWithUniqueIdentifier:v32 managedObjectContext:v33 error:&v143];
LABEL_37:
        }

        v26 = [v24 countByEnumeratingWithState:&v144 objects:v163 count:16];
      }

      while (v26);
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v115;
    v45 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v137;
      v48 = @"class";
      v49 = @"object";
      do
      {
        v50 = 0;
        v118 = v46;
        do
        {
          if (*v137 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v136 + 1) + 8 * v50);
          v52 = [v51 objectForKeyedSubscript:v49];
          v53 = [v51 objectForKeyedSubscript:@"dictionary"];
          [v52 updateWithDictionaryRepresentation:v53];
          v54 = [v53 objectForKeyedSubscript:v48];
          if ([(objc_class *)[STUnique _internalClassForSerializableClassName:?], "isEqual:", objc_opt_class()])
          {
            v55 = [v53 objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
            v56 = v55;
            if (v55)
            {
              v57 = v48;
              v58 = v47;
              v59 = v49;
              v60 = [v55 BOOLValue];
              v61 = *(v119 + 32);
              v135 = 0;
              v62 = [STUnique _updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:v60 inContext:v61 error:&v135];
              v63 = v135;
              if (!v62)
              {
                v64 = +[STLog mirroring];
                if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543362;
                  v158 = v63;
                  _os_log_fault_impl(&dword_1B831F000, v64, OS_LOG_TYPE_FAULT, "Failed to update Screen Time settings: %{public}@", buf, 0xCu);
                }
              }

              v49 = v59;
              v47 = v58;
              v48 = v57;
              v46 = v118;
            }
          }

          ++v50;
        }

        while (v46 != v50);
        v46 = [obj countByEnumeratingWithState:&v136 objects:v156 count:16];
      }

      while (v46);
    }

    a1 = v119;
    v11 = v109;
    v10 = v110;
  }

  if ([v114 count])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v65 = +[STLog mirroring];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v114 count];
      *buf = 134217984;
      v158 = v66;
      _os_log_impl(&dword_1B831F000, v65, OS_LOG_TYPE_DEFAULT, "Detected %lu local changes", buf, 0xCu);
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v67 = [v114 allValues];
    obja = [v67 countByEnumeratingWithState:&v131 objects:v155 count:16];
    if (obja)
    {
      v68 = *v132;
      do
      {
        v69 = 0;
        do
        {
          if (*v132 != v68)
          {
            objc_enumerationMutation(v67);
          }

          v70 = *(*(&v131 + 1) + 8 * v69);
          if ([v70 changeType] == 2)
          {
            v71 = [v70 uniqueIdentifier];
            v72 = *(a1 + 32);
            v130 = 0;
            v73 = [v122 deleteCloudObjectWithUniqueIdentifier:v71 managedObjectContext:v72 error:&v130];
            v74 = v130;

            if (v73)
            {
              v75 = [v73 BOOLValue];
              v76 = +[STLog mirroring];
              v77 = v76;
              if (v75)
              {
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = [v70 uniqueIdentifier];
                  *buf = 138543362;
                  v158 = v78;
                  _os_log_impl(&dword_1B831F000, v77, OS_LOG_TYPE_DEFAULT, "Mirroring change: Deleted cloud copy of %{public}@", buf, 0xCu);
                  goto LABEL_68;
                }
              }

              else if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                __29__STUnique_migrateWithError___block_invoke_cold_5(v153, v70, &v154, v77);
              }
            }

            else
            {
              v77 = +[STLog mirroring];
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                v78 = [v70 uniqueIdentifier];
                *buf = 138543618;
                v158 = v78;
                v159 = 2114;
                v160 = v74;
                _os_log_error_impl(&dword_1B831F000, v77, OS_LOG_TYPE_ERROR, "Mirroring change: Failed to delete cloud copy of %{public}@: %{public}@", buf, 0x16u);
LABEL_68:
              }
            }

            goto LABEL_81;
          }

          v79 = [v70 dictionary];
          v74 = [v79 objectForKeyedSubscript:@"class"];

          if (v74)
          {
            v80 = [STUnique _internalClassForSerializableClassName:v74];
            if (v80)
            {
              v81 = v80;
              v82 = [v70 uniqueIdentifier];
              v83 = [v70 dictionary];
              v84 = *(a1 + 32);
              v127 = v123;
              v85 = [v122 updateCloudObjectWithUniqueIdentifier:v82 dictionary:v83 managedObjectContext:v84 error:&v127];
              v86 = v127;

              v73 = +[STLog mirroring];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v87 = [v70 uniqueIdentifier];
                *buf = 138543618;
                v158 = v81;
                v159 = 2114;
                v160 = v87;
                _os_log_impl(&dword_1B831F000, v73, OS_LOG_TYPE_DEFAULT, "Mirroring change: Updated cloud object (%{public}@) %{public}@", buf, 0x16u);
              }

              v123 = v86;
              a1 = v119;
            }

            else
            {
              v73 = +[STLog mirroring];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v158 = v74;
                _os_log_error_impl(&dword_1B831F000, v73, OS_LOG_TYPE_ERROR, "External to internal mapping missing for: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v73 = +[STLog mirroring];
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              __29__STUnique_migrateWithError___block_invoke_cold_4(&v128, v129, v73);
            }
          }

LABEL_81:

          v69 = v69 + 1;
        }

        while (obja != v69);
        v88 = [v67 countByEnumeratingWithState:&v131 objects:v155 count:16];
        obja = v88;
      }

      while (v88);
    }

    v11 = v109;
    v10 = v110;
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (v112)
    {
      v90 = *(a1 + 48);
      v89 = *(a1 + 56);
      v126 = v123;
      [v89 addHistoryToken:v112 toMetadataForStore:v90 error:&v126];
      v91 = v126;

      v92 = +[STLog mirroring];
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
      {
        __48__STUnique_areLocalChangesInterestingWithError___block_invoke_cold_1();
      }

      v123 = v91;
    }

    if (v111)
    {
      v93 = *(a1 + 56);
      v94 = *(a1 + 40);
      v125 = v123;
      [v93 addHistoryToken:v111 toMetadataForStore:v94 error:&v125];
      v95 = v125;

      v96 = +[STLog mirroring];
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        __29__STUnique_migrateWithError___block_invoke_cold_7();
      }

      v97 = v95;
    }

    else
    {
      v97 = v123;
    }

    v98 = [*(a1 + 56) persistenceController];
    v99 = *(a1 + 32);
    v124 = v97;
    v100 = [v98 saveContext:v99 error:&v124];
    v101 = v124;

    *(*(*(a1 + 72) + 8) + 24) = v100;
    v123 = v101;
  }

  v8 = v123;
  if (v123)
  {
LABEL_101:
    v102 = +[STLog mirroring];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      __29__STUnique_migrateWithError___block_invoke_cold_8();
    }

    v103 = STXPCSafeErrorFromCoreDataError(v8, 6);
    v104 = *(*(a1 + 80) + 8);
    v105 = *(v104 + 40);
    *(v104 + 40) = v103;
  }

LABEL_104:

  v106 = *MEMORY[0x1E69E9840];
}

- (void)newResolveConflictsBetweenLocalDeltas:(id)a3 cloudDeltas:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543362;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v21}];
        v15 = [v6 objectForKeyedSubscript:v13];
        v16 = v15;
        if (v15)
        {
          if ([v15 changeType] == 1)
          {
            if ([v14 changeType] == 1)
            {
              [v5 removeObjectForKey:v13];
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v21;
                v27 = v13;
                v18 = v17;
                v19 = "Conflict: remote change and local change: %{public}@";
                goto LABEL_15;
              }

LABEL_16:

              goto LABEL_17;
            }

            [v6 removeObjectForKey:v13];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = v21;
            v27 = v13;
            v18 = v17;
            v19 = "Conflict: remote change and local delete: %{public}@";
          }

          else
          {
            [v5 removeObjectForKey:v13];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_16;
            }

            *buf = v21;
            v27 = v13;
            v18 = v17;
            v19 = "Conflict: remote delete: %{public}@";
          }

LABEL_15:
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          goto LABEL_16;
        }

LABEL_17:
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)resolveConflictsBetweenLocalDeltas:(id)a3 cloudDeltas:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    v37 = v6;
    v38 = v5;
    v35 = *v56;
    v36 = v7;
    do
    {
      v11 = 0;
      v39 = v9;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (v14)
        {
          v46 = v13;
          v15 = v12;
          v16 = v14;
          v40 = v11;
          v41 = v14;
          if ([v14 changeType] == 1)
          {
            if ([v13 changeType] == 1)
            {
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v62 = v15;
                v18 = v17;
                v19 = "Conflict: remote insert and local insert: %{public}@";
                goto LABEL_44;
              }

LABEL_45:
              v13 = v46;
LABEL_46:

              v11 = v40;
              v14 = v41;
              goto LABEL_47;
            }

            if ([v13 changeType] == 2)
            {
              [v13 inserted];
              v17 = +[STLog mirroring];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v62 = v15;
                _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Conflict: remote insert and local update: %{public}@", buf, 0xCu);
              }

              goto LABEL_46;
            }

            [v6 removeObjectForKey:v15];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_45;
            }

            *buf = 138543362;
            v62 = v15;
            v18 = v17;
            v19 = "Conflict: remote insert and local delete: %{public}@";
          }

          else if ([v16 changeType] == 2)
          {
            v20 = v15;
            if ([v13 changeType] == 1)
            {
              v17 = +[STLog mirroring];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 138543362;
              v62 = v15;
              v18 = v17;
              v19 = "Conflict: remote update and local insert: %{public}@";
            }

            else
            {
              if ([v13 changeType] == 2)
              {
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                obj = [v41 updatedProperties];
                v44 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
                if (v44)
                {
                  v43 = *v52;
                  do
                  {
                    v21 = 0;
                    do
                    {
                      if (*v52 != v43)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v45 = v21;
                      v22 = *(*(&v51 + 1) + 8 * v21);
                      v47 = 0u;
                      v48 = 0u;
                      v49 = 0u;
                      v50 = 0u;
                      v23 = [v46 updatedProperties];
                      v24 = [v23 copy];

                      v25 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
                      if (v25)
                      {
                        v26 = v25;
                        v27 = *v48;
                        do
                        {
                          for (i = 0; i != v26; ++i)
                          {
                            if (*v48 != v27)
                            {
                              objc_enumerationMutation(v24);
                            }

                            v29 = *(*(&v47 + 1) + 8 * i);
                            v30 = [v22 name];
                            v31 = [v29 name];
                            v32 = [v30 isEqualToString:v31];

                            if (v32)
                            {
                              v33 = [v29 name];
                              [v46 removePropertyWithName:v33];
                            }
                          }

                          v20 = v15;
                          v26 = [v24 countByEnumeratingWithState:&v47 objects:v59 count:16];
                        }

                        while (v26);
                      }

                      v21 = v45 + 1;
                    }

                    while (v45 + 1 != v44);
                    v44 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
                  }

                  while (v44);
                }

                v17 = +[STLog mirroring];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v62 = v20;
                  _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Conflict: remote update and local update: %{public}@", buf, 0xCu);
                }

                v6 = v37;
                v5 = v38;
                v10 = v35;
                v7 = v36;
                v9 = v39;
                goto LABEL_45;
              }

              [v6 removeObjectForKey:v15];
              v17 = +[STLog mirroring];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 138543362;
              v62 = v15;
              v18 = v17;
              v19 = "Conflict: remote update and local delete: %{public}@";
            }
          }

          else
          {
            [v5 removeObjectForKey:v15];
            v17 = +[STLog mirroring];
            if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_45;
            }

            *buf = 138543362;
            v62 = v15;
            v18 = v17;
            v19 = "Conflict: remote delete: %{public}@";
          }

LABEL_44:
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          goto LABEL_45;
        }

LABEL_47:

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v9);
  }

  v34 = *MEMORY[0x1E69E9840];
}

+ (id)historyTokenFromStore:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 objectForKeyedSubscript:@"STUnique"];

  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v10];
    v7 = v10;
    if (!v6)
    {
      v8 = +[STLog mirroring];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(STUnique *)v3 historyTokenFromStore:v7, v8];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)addHistoryToken:(id)a3 toMetadataForStore:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 metadata];
  v10 = [v9 mutableCopy];

  if (!v7)
  {
    [v10 removeObjectForKey:@"STUnique"];
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a5];
  if (v11)
  {
    [v10 setObject:v11 forKeyedSubscript:@"STUnique"];

LABEL_5:
    [v8 setMetadata:v10];
    LOBYTE(v11) = 1;
  }

  return v11;
}

void __48__STUnique_areLocalChangesInterestingWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, v0, v1, "Saved token - local: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __29__STUnique_migrateWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, v0, v1, "Previous token - local: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __29__STUnique_migrateWithError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, v0, v1, "Previous token - cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __29__STUnique_migrateWithError___block_invoke_cold_3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Cloud delta missing class key", buf, 2u);
}

void __29__STUnique_migrateWithError___block_invoke_cold_4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Local delta missing class key", buf, 2u);
}

void __29__STUnique_migrateWithError___block_invoke_cold_5(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1B831F000, a4, OS_LOG_TYPE_ERROR, "Mirroring change: Unable to delete cloud copy of %{public}@ : Missing cloud object", a1, 0xCu);
}

void __29__STUnique_migrateWithError___block_invoke_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1B831F000, v0, v1, "Saved token - cloud: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __29__STUnique_migrateWithError___block_invoke_cold_8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "Error occurred during mirroring migration: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)historyTokenFromStore:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138543874;
  v5 = @"STUnique";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize history token for '%{public}@' in store: %{public}@\n%{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch local user: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_updateScreenTimeSettingsForAppAndWebsiteActivityEnabled:inContext:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to find Screen Time Settings: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end