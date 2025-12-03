@interface WFProgressiveCoreDataMigrator
+ (BOOL)migrateDatabaseAtPersistentStoreDescription:(id)description error:(id *)error;
+ (id)customModificationsStepForSchemaWithIdentifier:(id)identifier;
@end

@implementation WFProgressiveCoreDataMigrator

+ (BOOL)migrateDatabaseAtPersistentStoreDescription:(id)description error:(id *)error
{
  v155[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v117 = [descriptionCopy URL];
  v116 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v103 = [v116 URLForResource:@"Shortcuts" withExtension:@"momd"];
  v4 = *MEMORY[0x1E695D4A8];
  v134 = 0;
  v104 = v4;
  v106 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:? URL:? options:? error:?];
  v101 = 0;
  if (!v106)
  {
    v12 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v149 = 2114;
      v150 = v101;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Not migrating, since persistent store metadata creation failed (likely no store has been created yet): %{public}@", buf, 0x16u);
    }

    v13 = 1;
    goto LABEL_122;
  }

  context = v103;
  v112 = v106;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v139 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:context includingPropertiesForKeys:0 options:0 error:&v139];
  v110 = v139;
  v119 = [v6 mutableCopy];

  if (v119)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"lastPathComponent.pathExtension", @"mom"];
    [v119 filterUsingPredicate:v7];

    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastPathComponent" ascending:0 comparator:&__block_literal_global_9751];
    v155[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:1];
    [v119 sortUsingDescriptors:v9];

    v121 = objc_opt_new();
    v10 = [v112 objectForKeyedSubscript:*MEMORY[0x1E695D4B0]];
    if (v10)
    {
      objc_opt_class();
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

    v16 = v11;

    firstObject = [v16 firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = firstObject;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    reverseObjectEnumerator = v119;
    v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v135 objects:buf count:16];
    if (v21)
    {
      v22 = *v136;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v136 != v22)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v24 = *(*(&v135 + 1) + 8 * i);
          v25 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v24];
          if (!v25)
          {
            v30 = getWFDatabaseLogObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *v143 = 136315394;
              v144 = "WFManagedObjectModelsFromCurrentToLatest";
              v145 = 2114;
              v146 = v24;
              _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Failed to create managed object model from URL %{public}@", v143, 0x16u);
            }

            goto LABEL_37;
          }

          [v121 addObject:v25];
          versionIdentifiers = [v25 versionIdentifiers];
          anyObject = [versionIdentifiers anyObject];
          v28 = [anyObject isEqualToString:v19];

          if (v28)
          {
            goto LABEL_30;
          }
        }

        v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v135 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v29 = [v121 count];
    if (v29 == [reverseObjectEnumerator count])
    {
      reverseObjectEnumerator = getWFDatabaseLogObject();
      if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT))
      {
        *v143 = 136315138;
        v144 = "WFManagedObjectModelsFromCurrentToLatest";
        _os_log_impl(&dword_1CA256000, reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT, "%s None of the models are compatible with with the store metadata, the database was likely truncated before.", v143, 0xCu);
      }

LABEL_37:
      allObjects = MEMORY[0x1E695E0F0];
    }

    else
    {
      reverseObjectEnumerator = [v121 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
    }
  }

  else
  {
    v14 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v148 = "WFManagedObjectModelsFromCurrentToLatest";
      v149 = 2114;
      v150 = context;
      v151 = 2114;
      v152 = v110;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get model URLs in directory %{public}@: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v15 = v110;
      *error = v110;
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  if ([allObjects count]<= 1)
  {
    oslog = getWFDatabaseLogObject();
    v13 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v31 = [allObjects count];
      *buf = 136315394;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v149 = 2050;
      v150 = v31;
      _os_log_impl(&dword_1CA256000, oslog, OS_LOG_TYPE_INFO, "%s Found %{public}lu models, Core Data migration not necessary, bailing out.", buf, 0x16u);
    }

    goto LABEL_121;
  }

  oslog = [MEMORY[0x1E6996F68] createTemporaryDirectoryWithFilename:@"ProgressiveMigration"];
  if (!oslog)
  {
    v36 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s Failed to perform Core Data migration because a temporary directory could not be created.", buf, 0xCu);
    }

    goto LABEL_112;
  }

  firstObject2 = [allObjects firstObject];
  v33 = [firstObject2 isConfiguration:0 compatibleWithStoreMetadata:v112];

  if ((v33 & 1) == 0)
  {
    v34 = objc_alloc(MEMORY[0x1E695D6C0]);
    firstObject3 = [allObjects firstObject];
    v36 = [v34 initWithManagedObjectModel:firstObject3];

    v37 = *MEMORY[0x1E695D318];
    v141[0] = *MEMORY[0x1E695D380];
    v141[1] = v37;
    v142[0] = MEMORY[0x1E695E118];
    v142[1] = MEMORY[0x1E695E118];
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:2];
    type = [descriptionCopy type];
    configuration = [descriptionCopy configuration];
    v41 = [descriptionCopy URL];
    v42 = [v36 addPersistentStoreWithType:type configuration:configuration URL:v41 options:v38 error:error];
    v43 = v42 == 0;

    if (!v43)
    {

      goto LABEL_46;
    }

    v91 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v91, OS_LOG_TYPE_ERROR, "%s Failed to perform Core Data migration because current model can not be mapped to the same version's model", buf, 0xCu);
    }

LABEL_112:
    v13 = 0;
    goto LABEL_120;
  }

LABEL_46:
  v44 = objc_alloc(MEMORY[0x1E695D6C0]);
  lastObject = [allObjects lastObject];
  v46 = [v44 initWithManagedObjectModel:lastObject];

  v47 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke;
  aBlock[3] = &unk_1E837F870;
  v107 = v47;
  v132 = v107;
  v98 = v46;
  v133 = v98;
  v99 = _Block_copy(aBlock);
  v48 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
    _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_INFO, "%s Starting Core Data migration", buf, 0xCu);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v50 = 0;
  v51 = 0;
  v52 = allObjects;
  while (v50 < [v52 count]- 1)
  {
    contexta = objc_autoreleasePoolPush();
    v53 = [allObjects objectAtIndexedSubscript:v50];
    v54 = v50 + 1;
    v122 = [allObjects objectAtIndexedSubscript:v54];
    lastObject2 = [v107 lastObject];
    v56 = lastObject2;
    v57 = v117;
    if (lastObject2)
    {
      v57 = lastObject2;
    }

    v120 = v57;

    v113 = v54 - 1;
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shortcuts-%@-%lu.sqlite", uUIDString, v54 - 1];
    v59 = [oslog URLByAppendingPathComponent:v58];

    v60 = MEMORY[0x1E695D648];
    v140 = v116;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
    v62 = [v60 mappingModelFromBundles:v61 forSourceModel:v53 destinationModel:v122];

    if (v62)
    {
      v63 = v51;
    }

    else
    {
      v64 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        _os_log_impl(&dword_1CA256000, v64, OS_LOG_TYPE_DEFAULT, "%s Could not find explicit mapping model, trying to construct inferred one", buf, 0xCu);
      }

      v130 = v51;
      v62 = [MEMORY[0x1E695D648] inferredMappingModelForSourceModel:v53 destinationModel:v122 error:&v130];
      v63 = v130;

      if (!v62)
      {
        v62 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          _os_log_impl(&dword_1CA256000, v62, OS_LOG_TYPE_ERROR, "%s Failed to create mapping model, bailing out", buf, 0xCu);
        }

        v83 = 0;
        v51 = v63;
        goto LABEL_99;
      }
    }

    versionIdentifiers2 = [v53 versionIdentifiers];
    anyObject2 = [versionIdentifiers2 anyObject];

    if (anyObject2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = anyObject2;
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {
      v67 = 0;
    }

    v111 = v67;

    versionIdentifiers3 = [v122 versionIdentifiers];
    anyObject3 = [versionIdentifiers3 anyObject];

    if (anyObject3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = anyObject3;
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    v71 = v70;

    v72 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v149 = 2114;
      v150 = v71;
      _os_log_impl(&dword_1CA256000, v72, OS_LOG_TYPE_INFO, "%s Migrating to schema with identifier %{public}@", buf, 0x16u);
    }

    v73 = [self customModificationsStepForSchemaWithIdentifier:v71];
    if (objc_opt_respondsToSelector())
    {
      v129 = v63;
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke_178;
      v127[3] = &unk_1E83754E8;
      v128 = v73;
      v74 = WFPerformCustomModificationsStep(v53, v120, &v129, v127);
      v51 = v129;

      if (!v74)
      {
        v85 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          v149 = 2114;
          v150 = v71;
          v151 = 2114;
          v152 = v51;
          _os_log_impl(&dword_1CA256000, v85, OS_LOG_TYPE_ERROR, "%s Failed to perform custom database modifications for Core Data schema with identifier %{public}@: %{public}@", buf, 0x20u);
        }

        v83 = 0;
        v77 = v128;
        goto LABEL_98;
      }
    }

    else
    {
      v51 = v63;
    }

    if (([v71 isEqualToString:@"v2"] & 1) != 0 || objc_msgSend(v71, "isEqualToString:", @"v3"))
    {
      v75 = MEMORY[0x1E696B0A0];
      v76 = objc_opt_new();
      [v75 setValueTransformer:v76 forName:@"WFOrderedSetValue"];
    }

    v77 = [objc_alloc(MEMORY[0x1E695D658]) initWithSourceModel:v53 destinationModel:v122];
    v126 = v51;
    v78 = [v77 migrateStoreFromURL:v120 type:v104 options:0 withMappingModel:v62 toDestinationURL:v59 destinationType:v104 destinationOptions:0 error:&v126];
    v79 = v126;

    if ((v78 & 1) == 0)
    {
      v84 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v149 = 2114;
        v150 = v111;
        v151 = 2114;
        v152 = v71;
        v153 = 2114;
        v154 = v79;
        _os_log_impl(&dword_1CA256000, v84, OS_LOG_TYPE_ERROR, "%s Failed to migrate from schema with identifier %{public}@ to %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v83 = 0;
      goto LABEL_96;
    }

    [v107 addObject:v59];
    if (v73)
    {
      v80 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v149 = 2114;
        v150 = v71;
        _os_log_impl(&dword_1CA256000, v80, OS_LOG_TYPE_INFO, "%s Running custom modifications step after migrating to schema with identifier %{public}@", buf, 0x16u);
      }

      v125 = v79;
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke_192;
      v123[3] = &unk_1E83754E8;
      v124 = v73;
      v81 = WFPerformCustomModificationsStep(v122, v59, &v125, v123);
      v82 = v125;

      if (v81)
      {
        v83 = 1;
      }

      else
      {
        v86 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          v149 = 2114;
          v150 = v71;
          v151 = 2114;
          v152 = v82;
          _os_log_impl(&dword_1CA256000, v86, OS_LOG_TYPE_ERROR, "%s Failed to perform custom database modifications for Core Data schema with identifier %{public}@: %{public}@", buf, 0x20u);
        }

        v83 = 0;
      }

      v84 = v124;
      v79 = v82;
LABEL_96:

      goto LABEL_97;
    }

    v83 = 1;
LABEL_97:
    v51 = v79;
LABEL_98:

LABEL_99:
    objc_autoreleasePoolPop(contexta);
    v52 = allObjects;
    v50 = v113 + 1;
    if ((v83 & 1) == 0)
    {
      break;
    }
  }

  if (v51)
  {
    if (error)
    {
      v87 = v51;
      v13 = 0;
      *error = v51;
      goto LABEL_119;
    }

LABEL_118:
    v13 = 0;
  }

  else
  {
    lastObject3 = [v107 lastObject];
    v89 = [v98 replacePersistentStoreAtURL:v117 destinationOptions:0 withPersistentStoreFromURL:lastObject3 sourceOptions:0 storeType:v104 error:error];

    if ((v89 & 1) == 0)
    {
      v92 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        lastObject4 = [v107 lastObject];
        v94 = lastObject4;
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 136315906;
        v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v149 = 2114;
        v150 = v117;
        v151 = 2114;
        v152 = lastObject4;
        v153 = 2114;
        v154 = errorCopy;
        _os_log_impl(&dword_1CA256000, v92, OS_LOG_TYPE_ERROR, "%s Failed to replace persistent store at %{public}@ with %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      goto LABEL_118;
    }

    v90 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v148 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v90, OS_LOG_TYPE_INFO, "%s Core Data migration completed successfully", buf, 0xCu);
    }

    v13 = 1;
  }

LABEL_119:

  v99[2]();
  v36 = v98;
LABEL_120:

LABEL_121:
  v12 = allObjects;
LABEL_122:

  v96 = *MEMORY[0x1E69E9840];
  return v13;
}

void __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    v6 = *MEMORY[0x1E695D4A8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 40);
        v15 = 0;
        v11 = [v10 destroyPersistentStoreAtURL:v8 withType:v6 options:0 error:&v15];
        v12 = v15;
        if ((v11 & 1) == 0)
        {
          v13 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v21 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]_block_invoke";
            v22 = 2114;
            v23 = v12;
            _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to destroy temporary persistent store after migration: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)customModificationsStepForSchemaWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"identifierCopy"])
  {
    v4 = off_1E836F278;
LABEL_11:
    v5 = *v4;
    v6 = objc_opt_new();
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"v5"])
  {
    v4 = off_1E836F280;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"v7"])
  {
    v4 = off_1E836DCF0;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"v10"])
  {
    v4 = off_1E836F268;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"v12"])
  {
    v4 = off_1E836F270;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

@end