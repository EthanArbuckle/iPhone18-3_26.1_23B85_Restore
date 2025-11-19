@interface STMigrationContext
- (BOOL)deleteLocalObjectWithUniqueIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)initializeCachesWithManagedObjectContext:(id)a3 withCloudStore:(id)a4 andLocalStore:(id)a5 error:(id *)a6;
- (STMigrationContext)init;
- (id)deleteCloudObjectWithUniqueIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)updateCloudObjectWithUniqueIdentifier:(id)a3 dictionary:(id)a4 managedObjectContext:(id)a5 error:(id *)a6;
@end

@implementation STMigrationContext

- (STMigrationContext)init
{
  v12.receiver = self;
  v12.super_class = STMigrationContext;
  v2 = [(STMigrationContext *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uniqueIdentifierToCloudObjectID = v2->_uniqueIdentifierToCloudObjectID;
    v2->_uniqueIdentifierToCloudObjectID = v3;

    v5 = objc_opt_new();
    uniqueIdentifierToLocalObjectID = v2->_uniqueIdentifierToLocalObjectID;
    v2->_uniqueIdentifierToLocalObjectID = v5;

    v7 = objc_opt_new();
    deletedObjectIDs = v2->_deletedObjectIDs;
    v2->_deletedObjectIDs = v7;

    v9 = objc_opt_new();
    filledObjectIDs = v2->_filledObjectIDs;
    v2->_filledObjectIDs = v9;
  }

  return v2;
}

- (BOOL)initializeCachesWithManagedObjectContext:(id)a3 withCloudStore:(id)a4 andLocalStore:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v13 = self->_uniqueIdentifierToCloudObjectID;
  v14 = self->_uniqueIdentifierToLocalObjectID;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__STMigrationContext_initializeCachesWithManagedObjectContext_withCloudStore_andLocalStore_error___block_invoke;
  v23[3] = &unk_1E7CE7A60;
  v29 = &v37;
  v15 = v10;
  v24 = v15;
  v30 = &v31;
  v16 = v11;
  v25 = v16;
  v17 = v13;
  v26 = v17;
  v18 = v12;
  v27 = v18;
  v19 = v14;
  v28 = v19;
  [v15 performBlockAndWait:v23];
  v20 = *(v38 + 24);
  if (a6 && (v38[3] & 1) == 0)
  {
    v21 = v32[5];
    if (v21)
    {
      *a6 = v21;
      v20 = *(v38 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v20 & 1;
}

void __98__STMigrationContext_initializeCachesWithManagedObjectContext_withCloudStore_andLocalStore_error___block_invoke(uint64_t a1)
{
  v61[6] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v2 = +[STCloudActivation entity];
  v61[0] = v2;
  v3 = +[STBlueprint entity];
  v61[1] = v3;
  v4 = +[STFamilyOrganizationSettings entity];
  v61[2] = v4;
  v5 = +[STiCloudOrganizationSettings entity];
  v61[3] = v5;
  v6 = +[STInstalledApp entity];
  v61[4] = v6;
  v7 = +[STTestSyncableObject entity];
  v61[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];

  v9 = a1;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v8;
  v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v41)
  {
    v40 = *v52;
LABEL_3:
    v10 = 0;
LABEL_4:
    if (*v52 != v40)
    {
      objc_enumerationMutation(obj);
    }

    v11 = MEMORY[0x1E695D5E0];
    v12 = [*(*(&v51 + 1) + 8 * v10) name];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = *(v9 + 32);
    v15 = *(*(v9 + 80) + 8);
    v50 = *(v15 + 40);
    v16 = [v14 executeFetchRequest:v13 error:&v50];
    objc_storeStrong((v15 + 40), v50);
    if (v16)
    {
      v42 = v13;
      v43 = v10;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = v16;
      v17 = [v44 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v17;
      v45 = *v47;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v45)
          {
            objc_enumerationMutation(v44);
          }

          v20 = *(*(&v46 + 1) + 8 * i);
          v21 = [v20 valueForKey:@"uniqueIdentifier"];
          if (v21)
          {
            v22 = [v20 objectID];
            v23 = [v22 persistentStore];
            v24 = [v23 identifier];
            [*(v9 + 40) identifier];
            v26 = v25 = v9;
            v27 = [v24 isEqualToString:v26];

            v28 = [v20 objectID];
            v29 = v28;
            if (v27)
            {
              v30 = *(v25 + 48);
              goto LABEL_17;
            }

            v31 = [v28 persistentStore];
            v32 = [v31 identifier];
            v33 = [*(v25 + 56) identifier];
            v34 = [v32 isEqualToString:v33];

            if (v34)
            {
              v29 = [v20 objectID];
              v30 = *(v25 + 64);
LABEL_17:
              [v30 setObject:v29 forKeyedSubscript:v21];
            }

            else
            {
              v29 = +[STLog mirroring];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v35 = [v20 objectID];
                v36 = [v35 persistentStore];
                v37 = [v36 identifier];
                *buf = 138543618;
                v56 = v37;
                v57 = 2114;
                v58 = v20;
                _os_log_error_impl(&dword_1B831F000, v29, OS_LOG_TYPE_ERROR, "Asked to cache object from an unknown store: %{public}@\n%{public}@", buf, 0x16u);
              }
            }

            v9 = v25;
          }
        }

        v18 = [v44 countByEnumeratingWithState:&v46 objects:v59 count:16];
        if (!v18)
        {
LABEL_23:

          v10 = v43 + 1;
          if (v43 + 1 == v41)
          {
            v41 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (!v41)
            {
              goto LABEL_27;
            }

            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }

    *(*(*(v9 + 72) + 8) + 24) = 0;
  }

LABEL_27:

  v38 = *MEMORY[0x1E69E9840];
}

- (id)updateCloudObjectWithUniqueIdentifier:(id)a3 dictionary:(id)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v30 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:&v30];
  v14 = v30;
  if (v13)
  {
    v28 = [v11 objectForKeyedSubscript:@"class"];
    v15 = +[STLog mirroring];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v28;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Looking up cloud object (%{public}@) matching ID: %{public}@", buf, 0x16u);
    }

    v16 = [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID objectForKeyedSubscript:v10];
    v17 = +[STLog mirroring];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 138543618;
        v32 = v28;
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Corresponding cloud object (%{public}@) already exists: %{public}@", buf, 0x16u);
      }

      v29 = v14;
      v19 = [v12 existingObjectWithID:v16 error:&v29];
      v20 = v29;

      if (!v19)
      {
        v21 = +[STLog mirroring];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [STMigrationContext updateCloudObjectWithUniqueIdentifier:v20 dictionary:v21 managedObjectContext:? error:?];
        }

        if (a6)
        {
          v22 = v20;
          v19 = 0;
          *a6 = v20;
        }

        else
        {
          v19 = 0;
        }
      }

      v14 = v20;
    }

    else
    {
      if (v18)
      {
        *buf = 138543618;
        v32 = v28;
        v33 = 2114;
        v34 = v10;
        _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Corresponding cloud object (%{public}@) now being created: %{public}@", buf, 0x16u);
      }

      v19 = [[STCloudActivation alloc] initWithContext:v12];
      v25 = [(STCloudActivation *)v19 objectID];
      [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID setObject:v25 forKeyedSubscript:v10];
    }

    [(STCloudActivation *)v19 setIdentifier:v10];
    [(STCloudActivation *)v19 setActivationType:1];
    [(STCloudActivation *)v19 setActivationPlist:v13];
  }

  else
  {
    v23 = +[STLog mirroring];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [STMigrationContext updateCloudObjectWithUniqueIdentifier:dictionary:managedObjectContext:error:];
    }

    if (a6)
    {
      v24 = v14;
      v19 = 0;
      *a6 = v14;
    }

    else
    {
      v19 = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)deleteLocalObjectWithUniqueIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_uniqueIdentifierToLocalObjectID objectForKeyedSubscript:a3];
  if (v9)
  {
    v16 = 0;
    v10 = [v8 existingObjectWithID:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    v13 = v10 != 0;
    if (v10)
    {
      [v8 deleteObject:v10];
    }

    else if (a5 && v11)
    {
      v14 = v11;
      *a5 = v12;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)deleteCloudObjectWithUniqueIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID objectForKeyedSubscript:a3];
  if (v9)
  {
    v16 = 0;
    v10 = [v8 existingObjectWithID:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v10)
    {
      [v8 deleteObject:v10];
      v13 = MEMORY[0x1E695E118];
    }

    else
    {
      v13 = 0;
      if (a5 && v11)
      {
        v14 = v11;
        v13 = 0;
        *a5 = v12;
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  return v13;
}

- (void)updateCloudObjectWithUniqueIdentifier:(uint64_t)a1 dictionary:(NSObject *)a2 managedObjectContext:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = 0;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve existing cloud object with id (%{public}@): %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateCloudObjectWithUniqueIdentifier:dictionary:managedObjectContext:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_1B831F000, v1, OS_LOG_TYPE_FAULT, "Unable to update cloud object with dictionary: %{public}@\n%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end