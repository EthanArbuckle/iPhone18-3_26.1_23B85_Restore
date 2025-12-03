@interface VCVoiceShortcutPeaceMigrator
+ (void)migrateFromCloudKitIntoDatabaseIfNecessary:(id)necessary;
- (BOOL)migrateObject:(id)object error:(id *)error;
- (BOOL)migrateWithError:(id *)error;
- (BOOL)saveRecord:(id)record withIdentifier:(id)identifier error:(id *)error;
- (VCVoiceShortcutPeaceMigrator)initWithDatabase:(id)database;
@end

@implementation VCVoiceShortcutPeaceMigrator

- (BOOL)saveRecord:(id)record withIdentifier:(id)identifier error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  identifierCopy = identifier;
  database = [(VCVoiceShortcutPeaceMigrator *)self database];
  name = [recordCopy name];

  if (name)
  {
    v71 = 0;
    v12 = [[WFWorkflow alloc] initWithRecord:recordCopy reference:0 storageProvider:0 error:&v71];
    v13 = v71;
    if (v12)
    {
      v14 = [identifierCopy length];
      v15 = getWFPeaceMigrationLogObject();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
          v74 = 2114;
          v75 = identifierCopy;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Migrating voice shortcut with identifier %{public}@", buf, 0x16u);
        }

        actions = [(WFWorkflow *)v12 actions];
        firstObject = [actions firstObject];

        v19 = firstObject;
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v24 = v20;

        intent = [v24 intent];

        if (!intent || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v32 = [database referenceForWorkflowID:identifierCopy];
          if (v32)
          {
            intent = v32;
            v27 = getWFPeaceMigrationLogObject();
            v21 = 1;
            if (os_log_type_enabled(&v27->super, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
              v74 = 2114;
              v75 = identifierCopy;
              _os_log_impl(&dword_1CA256000, &v27->super, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) was migrated previously", buf, 0x16u);
            }
          }

          else
          {
            v67 = v19;
            v27 = [[WFWorkflowCreationOptions alloc] initWithRecord:recordCopy];
            [(WFWorkflowCreationOptions *)v27 setIdentifier:identifierCopy];
            [recordCopy addWatchWorkflowTypeIfEligible];
            v69 = 0;
            v33 = [database createWorkflowWithOptions:v27 error:&v69];
            v34 = v69;
            v21 = v33 != 0;

            if (!v33)
            {
              v35 = v27;
              v36 = getWFPeaceMigrationLogObject();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315650;
                v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
                v74 = 2114;
                v75 = identifierCopy;
                v76 = 2114;
                v77 = v34;
                _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_FAULT, "%s Failed to save new shortcut for voice shortcut (%{public}@): %{public}@", buf, 0x20u);
              }

              v27 = v35;
              if (error)
              {
                v37 = v34;
                *error = v34;
              }
            }

            intent = 0;
            v19 = v67;
          }

          goto LABEL_52;
        }

        v26 = [intent workflowForIntentInDatabase:database];
        v27 = v26;
        if (!v26)
        {
          v31 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            workflow = [intent workflow];
            spokenPhrase = [workflow spokenPhrase];
            workflow2 = [intent workflow];
            [workflow2 vocabularyIdentifier];
            v40 = v39 = v31;
            *buf = 136315906;
            v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v74 = 2114;
            v75 = identifierCopy;
            v76 = 2112;
            v77 = spokenPhrase;
            v78 = 2114;
            v79 = v40;
            _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_ERROR, "%s Voice shortcut (%{public}@) references a nonexistent shortcut %@, with identifier %{public}@", buf, 0x2Au);

            v31 = v39;
            v27 = 0;
          }

          v21 = 0;
          goto LABEL_51;
        }

        v66 = v19;
        [(WFWorkflowCreationOptions *)v26 name];
        v28 = v65 = v27;
        name2 = [recordCopy name];
        v30 = [v28 isEqualToString:name2];

        if (v30)
        {
          v27 = v65;
          v31 = getWFPeaceMigrationLogObject();
          v21 = 1;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v74 = 2114;
            v75 = identifierCopy;
            _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut of the same name", buf, 0x16u);
          }

          v19 = v66;
          goto LABEL_51;
        }

        [MEMORY[0x1E695DFD8] setWithObjects:{@"name", @"legacyName", 0}];
        v70[1] = 0;
        v62 = v27 = v65;
        v41 = [database recordWithDescriptor:v65 properties:? error:?];
        v64 = 0;
        v61 = v41;
        if (!v41)
        {
          v46 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            name3 = [(WFWorkflowCreationOptions *)v65 name];
            identifier = [(WFWorkflowCreationOptions *)v65 identifier];
            *buf = 136315906;
            v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v74 = 2114;
            v75 = identifierCopy;
            v76 = 2112;
            v77 = name3;
            v78 = 2114;
            v79 = identifier;
            _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_FAULT, "%s Voice shortcut (%{public}@) failed to load existing shortcut %@, with identifier %{public}@", buf, 0x2Au);

            v27 = v65;
          }

          v45 = v46;
          v21 = 0;
          v19 = v66;
          goto LABEL_49;
        }

        legacyName = [v41 legacyName];
        v43 = [legacyName length];

        if (v43)
        {
          v44 = getWFPeaceMigrationLogObject();
          v21 = 1;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v74 = 2114;
            v75 = identifierCopy;
            _os_log_impl(&dword_1CA256000, v44, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut that already has a legacy name", buf, 0x16u);
          }

          v45 = v44;
          v27 = v65;
          v19 = v66;
          goto LABEL_49;
        }

        name4 = [v41 name];
        [v41 setLegacyName:name4];

        name5 = [recordCopy name];
        [v41 setName:name5];

        getWFPeaceMigrationLogObject();
        v54 = v53 = v41;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          name6 = [v53 name];
          legacyName2 = [v53 legacyName];
          *buf = 136315906;
          v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
          v74 = 2114;
          v75 = identifierCopy;
          v76 = 2112;
          v77 = name6;
          v78 = 2112;
          v79 = legacyName2;
          v56 = legacyName2;
          _os_log_impl(&dword_1CA256000, v54, OS_LOG_TYPE_INFO, "%s Voice shortcut (%{public}@) references a shortcut with a different name. Swapping the name to %@ and moving %@ to the legacyName", buf, 0x2Au);
        }

        v70[0] = 0;
        v27 = v65;
        v57 = [database saveRecord:v53 withDescriptor:v65 error:v70];
        v60 = v70[0];
        if (v57)
        {
          v21 = 1;
          v19 = v66;
        }

        else
        {
          v58 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
            v74 = 2114;
            v75 = identifierCopy;
            v76 = 2114;
            v77 = v60;
            _os_log_impl(&dword_1CA256000, v58, OS_LOG_TYPE_FAULT, "%s Failed to save existing shortcut for voice shortcut (%{public}@): %{public}@", buf, 0x20u);
          }

          v19 = v66;
          if (error)
          {
            v45 = v60;
            v21 = 0;
            *error = v45;
LABEL_49:
            v31 = v64;
LABEL_50:

LABEL_51:
LABEL_52:

            goto LABEL_53;
          }

          v21 = 0;
        }

        v31 = v64;
        v45 = v60;
        goto LABEL_50;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Voice shortcut record does not have an associated identifier", buf, 0xCu);
      }
    }

    else
    {
      v22 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
        v74 = 2114;
        v75 = v13;
        _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Voice shortcut workflow data failed to open: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v23 = v13;
        v21 = 0;
        *error = v13;
LABEL_53:

        goto LABEL_54;
      }
    }

    v21 = 0;
    goto LABEL_53;
  }

  v13 = getWFPeaceMigrationLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v73 = "[VCVoiceShortcutPeaceMigrator saveRecord:withIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Workflow record is missing a name and cannot be migrated", buf, 0xCu);
  }

  v21 = 0;
LABEL_54:

  v49 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)migrateObject:(id)object error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  entity = [objectCopy entity];
  name = [entity name];
  v9 = [name isEqualToString:@"VCVoiceShortcutManagedObject"];

  if (v9)
  {
    v10 = [objectCopy valueForKey:@"identifier"];
    v11 = objc_opt_class();
    v12 = v10;
    if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = getWFGeneralLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v33 = "WFEnforceClass";
        v34 = 2114;
        v35 = v12;
        v36 = 2114;
        v37 = objc_opt_class();
        v38 = 2114;
        v39 = v11;
        v16 = v37;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Previously migrated voice shortcuts, will not migrate them again", buf, 0x2Au);
      }

      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v31 = 0;
    v17 = [[WFWorkflowRecord alloc] initWithPeaceCoreDataModel:objectCopy error:&v31];
    v18 = v31;
    if (v17)
    {
      uUIDString = [v13 UUIDString];
      v30 = 0;
      v14 = [(VCVoiceShortcutPeaceMigrator *)self saveRecord:v17 withIdentifier:uUIDString error:&v30];
      v20 = v30;

      v21 = getWFPeaceMigrationLogObject();
      v22 = v21;
      if (v14)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          uUIDString2 = [v13 UUIDString];
          *buf = 136315394;
          v33 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
          v34 = 2114;
          v35 = uUIDString2;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_INFO, "%s Successfully saved voice shortcut (%{public}@) to database", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315650;
          v33 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
          v34 = 2112;
          v35 = objectCopy;
          v36 = 2114;
          v37 = v18;
          _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Failed to convert %@ to a workflow record: %{public}@", buf, 0x20u);
        }

        if (error)
        {
          v27 = v20;
          *error = v20;
        }
      }
    }

    else
    {
      v24 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        uUIDString3 = [v13 UUIDString];
        *buf = 136315650;
        v33 = "[VCVoiceShortcutPeaceMigrator migrateObject:error:]";
        v34 = 2114;
        v35 = uUIDString3;
        v36 = 2114;
        v37 = v18;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Failed to convert voice shortcut (%{public}@) to a workflow record: %{public}@", buf, 0x20u);
      }

      if (error)
      {
        v26 = v18;
        v14 = 0;
        *error = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)migrateWithError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = os_transaction_create();
  database = [(VCVoiceShortcutPeaceMigrator *)self database];
  context = [database context];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__19437;
  v30 = __Block_byref_object_dispose__19438;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke;
  aBlock[3] = &unk_1E83764D8;
  v8 = context;
  v22 = v8;
  selfCopy = self;
  v24 = &v26;
  v25 = &v32;
  v9 = _Block_copy(aBlock);
  database2 = [(VCVoiceShortcutPeaceMigrator *)self database];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke_205;
  v19[3] = &unk_1E8376500;
  v11 = v9;
  v20 = v11;
  [database2 performTransactionWithReason:@"peace migration" block:v19 error:0];

  if (v27[5])
  {
    v12 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v27[5];
      *buf = 136315394;
      v37 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
      v38 = 2114;
      v39 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Shortcut migration from CoreData failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v14 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v37 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_INFO, "%s Shortcut migration from CoreData succeeded", buf, 0xCu);
    }

    if (v33[3])
    {
      v15 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v37 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]";
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s At least one voice shortcut was migrated, marking migration as complete", buf, 0xCu);
      }

      [WFCloudKitSyncSession setVoiceShortcutMigrationDidRun:1];
    }
  }

  if (error)
  {
    *error = v27[5];
  }

  v16 = v27[5] == 0;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __49__VCVoiceShortcutPeaceMigrator_migrateWithError___block_invoke(void *a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = 0x1E695D000uLL;
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"VCVoiceShortcutManagedObject"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isMarkedAsDeleted == NO"];
  [v3 setPredicate:v4];

  v5 = a1[4];
  v57 = 0;
  v6 = [v5 executeFetchRequest:v3 error:&v57];
  v7 = v57;
  v43 = v6;
  v44 = v3;
  v42 = v57;
  if (v42)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    v8 = getWFPeaceMigrationLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
LABEL_5:

      goto LABEL_6;
    }

    v9 = *(*(a1[6] + 8) + 40);
    *buf = 136315394;
    v59 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
    v60 = 2114;
    v61 = v9;
    v10 = "%s Failed to fetch voice shortcuts from CoreData: %{public}@";
    v11 = v8;
    v12 = OS_LOG_TYPE_FAULT;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_1CA256000, v11, v12, v10, buf, v13);
    goto LABEL_5;
  }

  if (![v6 count])
  {
    v8 = getWFPeaceMigrationLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    *buf = 136315138;
    v59 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
    v10 = "%s No voice shortcuts found in CoreData database";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_4;
  }

  v56 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v54;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v54 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = a1[5];
        v52 = 0;
        v23 = [v22 migrateObject:v20 error:&v52];
        v24 = v52;
        v25 = v52;
        if (v23)
        {
          ++*(*(a1[7] + 8) + 24);
        }

        else
        {
          v26 = *(a1[6] + 8);
          v28 = *(v26 + 40);
          v27 = (v26 + 40);
          if (!v28)
          {
            objc_storeStrong(v27, v24);
          }
        }

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v15 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v17);
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = [&unk_1F4A9B4A0 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v46)
    {
      v45 = *v49;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v49 != v45)
          {
            objc_enumerationMutation(&unk_1F4A9B4A0);
          }

          v30 = *(*(&v48 + 1) + 8 * j);
          v31 = v2;
          v32 = [*(v2 + 1504) fetchRequestWithEntityName:v30];
          v33 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v32];
          v34 = a1[4];
          v47 = 0;
          v35 = [v34 executeRequest:v33 error:&v47];
          v36 = v47;
          v37 = [v35 result];
          if (v37)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;

          v40 = [v39 BOOLValue];
          if ((v40 & 1) == 0)
          {
            v41 = getWFPeaceMigrationLogObject();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315650;
              v59 = "[VCVoiceShortcutPeaceMigrator migrateWithError:]_block_invoke";
              v60 = 2114;
              v61 = v30;
              v62 = 2114;
              v63 = v36;
              _os_log_impl(&dword_1CA256000, v41, OS_LOG_TYPE_FAULT, "%s Failed to delete migrated %{public}@s: %{public}@", buf, 0x20u);
            }
          }

          v2 = v31;
        }

        v46 = [&unk_1F4A9B4A0 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v46);
    }
  }

LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
}

- (VCVoiceShortcutPeaceMigrator)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcutPeaceMigrator.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v12.receiver = self;
  v12.super_class = VCVoiceShortcutPeaceMigrator;
  v7 = [(VCVoiceShortcutPeaceMigrator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_database, database);
    v9 = v8;
  }

  return v8;
}

+ (void)migrateFromCloudKitIntoDatabaseIfNecessary:(id)necessary
{
  v24 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (+[WFCloudKitSyncSession voiceShortcutMigrationDidRun])
  {
    v4 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Previously migrated voice shortcuts, will not migrate them again", buf, 0xCu);
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v4 = [v5 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0] allowPlaceholder:0 error:0];
    applicationState = [v4 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      v8 = os_transaction_create();
      v9 = [[VCVoiceShortcutPeaceMigrator alloc] initWithDatabase:necessaryCopy];
      v10 = [VCCKVoiceShortcutFetcher alloc];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke;
      v20[3] = &unk_1E8376F80;
      v21 = v9;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke_175;
      v18 = &unk_1E8379BE0;
      v19 = v8;
      v11 = v8;
      v12 = v9;
      v13 = [(VCCKVoiceShortcutFetcher *)v10 initWithRecordHandler:v20 completionHandler:&v15];
      [(VCCKVoiceShortcutFetcher *)v13 start:v15];
    }

    else
    {
      v12 = getWFPeaceMigrationLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]";
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, "%s Shortcuts app is not installed, will not attempt to migrate voice shortcuts from Peace", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v17 = 0;
  v5 = [[WFWorkflowRecord alloc] initWithPeaceCloudKitRecord:v3 error:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v3 recordID];
    v9 = [v8 recordName];
    v16 = 0;
    v10 = [v7 saveRecord:v5 withIdentifier:v9 error:&v16];
    v11 = v16;

    if ((v10 & 1) == 0)
    {
      v12 = getWFPeaceMigrationLogObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v13 = [v3 recordID];
      v14 = [v13 recordName];
      *buf = 136315650;
      v19 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to save CloudKit record (%{public}@): %{public}@", buf, 0x20u);

LABEL_7:
      goto LABEL_8;
    }
  }

  else
  {
    v11 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 recordID];
      v13 = [v12 recordName];
      *buf = 136315650;
      v19 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to convert CloudKit record (%{public}@) into a workflow record: %{public}@", buf, 0x20u);
      goto LABEL_7;
    }
  }

LABEL_9:

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x1E69E9840];
}

void __75__VCVoiceShortcutPeaceMigrator_migrateFromCloudKitIntoDatabaseIfNecessary___block_invoke_175(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFPeaceMigrationLogObject();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s Successfully migrated voice shortcuts from CloudKit", &v8, 0xCu);
    }

    [WFCloudKitSyncSession setVoiceShortcutMigrationDidRun:1];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[VCVoiceShortcutPeaceMigrator migrateFromCloudKitIntoDatabaseIfNecessary:]_block_invoke";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to migrate all CloudKit records: %{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end