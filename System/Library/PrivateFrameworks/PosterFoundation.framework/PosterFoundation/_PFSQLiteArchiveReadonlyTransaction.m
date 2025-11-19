@interface _PFSQLiteArchiveReadonlyTransaction
- (BOOL)inReadTransaction:(id)a3 error:(id *)a4;
- (_PFSQLiteArchiveReadonlyTransaction)init;
- (_PFSQLiteArchiveReadonlyTransaction)initWithDatabaseConnection:(id)a3 classToObjectMap:(id)a4 queryCache:(id)a5;
- (id)objectsOfClass:(Class)a3 column:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 error:(id *)a8;
- (id)setupObjectDescriptorForClass:(Class)a3 expectedObjectDescriptor:(id)a4 error:(id *)a5;
- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 error:(id *)a7;
- (uint64_t)_accessDatabase:(void *)a3 error:;
- (uint64_t)executeQuery:(void *)a3 error:;
- (uint64_t)setupForDescriptor:(uint64_t)a1 forClass:(void *)a2 error:(uint64_t)a3;
@end

@implementation _PFSQLiteArchiveReadonlyTransaction

- (_PFSQLiteArchiveReadonlyTransaction)initWithDatabaseConnection:(id)a3 classToObjectMap:(id)a4 queryCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _PFSQLiteArchiveReadonlyTransaction;
  v12 = [(_PFSQLiteArchiveReadonlyTransaction *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }

    classToObjectMap = v13->_classToObjectMap;
    v13->_classToObjectMap = v14;

    objc_storeStrong(&v13->_queryCache, a5);
  }

  return v13;
}

- (_PFSQLiteArchiveReadonlyTransaction)init
{
  [(_PFSQLiteArchiveReadonlyTransaction *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)inReadTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___PFSQLiteArchiveReadonlyTransaction_inReadTransaction_error___block_invoke;
  v9[3] = &unk_1E81892C0;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [(_PFSQLiteArchiveReadonlyTransaction *)self _accessDatabase:v9 error:a4];

  return a4;
}

- (uint64_t)_accessDatabase:(void *)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      (*(v5 + 2))(v5, *(a1 + 24), a3);
      a1 = 0;
    }

    else
    {
      *(a1 + 16) = 1;
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy_;
      v20 = __Block_byref_object_dispose_;
      v21 = 0;
      v7 = [*(a1 + 8) description];
      v8 = *(a1 + 8);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __61___PFSQLiteArchiveReadonlyTransaction__accessDatabase_error___block_invoke;
      v12[3] = &unk_1E81892E8;
      v12[4] = a1;
      v14 = v6;
      v15 = &v16;
      v9 = v7;
      v13 = v9;
      [(PFSQLiteDatabaseConnection *)v8 performSyncWithDatabase:v12];
      v10 = v17[5];
      a1 = v10 == 0;
      if (a3 && v10)
      {
        *a3 = v10;
      }

      _Block_object_dispose(&v16, 8);
    }
  }

  return a1;
}

- (uint64_t)executeQuery:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 24);
    if (!v6)
    {
      [_PFSQLiteArchiveReadonlyTransaction executeQuery:a1 error:?];
    }

    a1 = PFSQLite_prepare_and_stepThrough_withBlock(v6, v5, 3, 100000, 0, 0, 0, 0, a3);
  }

  return a1;
}

- (id)setupObjectDescriptorForClass:(Class)a3 expectedObjectDescriptor:(id)a4 error:(id *)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = self->_classToObjectMap;
  objc_sync_enter(v9);
  v10 = [(NSMapTable *)self->_classToObjectMap objectForKey:a3];
  v11 = v10;
  if (!v8 || !v10)
  {
    if (v10)
    {
      goto LABEL_10;
    }

    if (v8)
    {
      v11 = v8;
      goto LABEL_13;
    }

    if (([(objc_class *)a3 pf_supportsPFSQLiteCoding]& 1) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(objc_class *)a3 pf_sqliteCodingDescriptor];
        if (v11)
        {
LABEL_13:
          v13 = [v11 tableName];
          if ([v13 length])
          {
            v17 = [v11 columns];
            v18 = [v17 count];

            if (v18)
            {
              v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA table_info('%@')", v13];
              v37 = 0;
              v38 = &v37;
              v39 = 0x2020000000;
              v40 = 0;
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __100___PFSQLiteArchiveReadonlyTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke;
              v33[3] = &unk_1E8189360;
              v11 = v11;
              v34 = v11;
              v14 = v19;
              v35 = v14;
              v36 = &v37;
              [(_PFSQLiteArchiveReadonlyTransaction *)self _accessDatabase:v33 error:a5];
              if (*(v38 + 24) == 1)
              {
                [(NSMapTable *)self->_classToObjectMap setObject:v11 forKey:a3];
                v16 = v11;
              }

              else
              {
                v16 = 0;
              }

              _Block_object_dispose(&v37, 8);
              goto LABEL_7;
            }

            if (a5)
            {
              v27 = MEMORY[0x1E696ABC0];
              v41 = *MEMORY[0x1E696A588];
              v42 = @"Configuration does not specify any columns";
              v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
              v15 = [v27 errorWithDomain:@"PFSQLiteArchiver" code:-2 userInfo:v14];
              goto LABEL_6;
            }
          }

          else if (a5)
          {
            v23 = MEMORY[0x1E696ABC0];
            v43 = *MEMORY[0x1E696A588];
            v44 = @"Table name is not valid for configuration";
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v15 = [v23 errorWithDomain:@"PFSQLiteArchiver" code:-2 userInfo:v14];
            goto LABEL_6;
          }

          v16 = 0;
          goto LABEL_8;
        }

        if (a5)
        {
          v20 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A588];
          v21 = MEMORY[0x1E696AEC0];
          v13 = NSStringFromClass(a3);
          v14 = [v21 stringWithFormat:@"%@ returned nil for sqliteCodingDescriptor", v13];
          v46 = v14;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          *a5 = [v20 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v22];

LABEL_33:
          v11 = 0;
          v16 = 0;
          goto LABEL_7;
        }
      }

      else if (a5)
      {
        v28 = MEMORY[0x1E696ABC0];
        v47 = *MEMORY[0x1E696A588];
        v29 = MEMORY[0x1E696AEC0];
        v13 = NSStringFromClass(a3);
        v14 = [v29 stringWithFormat:@"%@ does not respond to PFSQLiteCoding protocol", v13];
        v48 = v14;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        *a5 = [v28 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v30];

        goto LABEL_33;
      }
    }

    else if (a5)
    {
      v24 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v25 = MEMORY[0x1E696AEC0];
      v13 = NSStringFromClass(a3);
      v14 = [v25 stringWithFormat:@"%@ does not support PFSQLiteCoding", v13];
      v50 = v14;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      *a5 = [v24 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v26];

      goto LABEL_33;
    }

    v11 = 0;
    goto LABEL_35;
  }

  if ([v10 isEqual:v8])
  {
LABEL_10:
    objc_sync_exit(v9);

    v11 = v11;
    v16 = v11;
    goto LABEL_37;
  }

  if (!a5)
  {
LABEL_35:
    v16 = 0;
    goto LABEL_36;
  }

  v12 = MEMORY[0x1E696ABC0];
  v51 = *MEMORY[0x1E696A588];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expectedObjectDescriptor did not match objectDescriptor. Bailing."];
  v52[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v15 = [v12 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v14];
LABEL_6:
  v16 = 0;
  *a5 = v15;
LABEL_7:

LABEL_8:
LABEL_36:
  objc_sync_exit(v9);

LABEL_37:
  v31 = *MEMORY[0x1E69E9840];

  return v16;
}

- (uint64_t)setupForDescriptor:(uint64_t)a1 forClass:(void *)a2 error:(uint64_t)a3
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 40);
    objc_sync_enter(v6);
    v7 = [*(a1 + 40) objectForKey:a3];
    v8 = [v7 isEqual:v5];

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101___PFSQLiteArchiveReadonlyTransaction_unarchiveObjectsOfClass_predicate_limitOffset_orderedBy_error___block_invoke;
  v25[3] = &unk_1E81893D8;
  v25[4] = self;
  v30 = a3;
  v15 = v13;
  v26 = v15;
  v16 = v12;
  v27 = v16;
  v17 = v14;
  v28 = v17;
  v29 = &v31;
  v24 = 0;
  [(_PFSQLiteArchiveReadonlyTransaction *)self _accessDatabase:v25 error:&v24];
  v18 = v24;
  v19 = v18;
  if (v18)
  {
    if (a7)
    {
      v20 = v18;
      *a7 = v19;
    }

    v21 = v32[5];
    v32[5] = 0;
  }

  v22 = v32[5];

  _Block_object_dispose(&v31, 8);

  return v22;
}

- (id)objectsOfClass:(Class)a3 column:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __99___PFSQLiteArchiveReadonlyTransaction_objectsOfClass_column_predicate_limitOffset_orderedBy_error___block_invoke;
  v29[3] = &unk_1E8189400;
  v29[4] = self;
  v35 = a3;
  v18 = v14;
  v30 = v18;
  v19 = v15;
  v31 = v19;
  v20 = v16;
  v32 = v20;
  v21 = v17;
  v33 = v21;
  v34 = &v36;
  v28 = 0;
  [(_PFSQLiteArchiveReadonlyTransaction *)self _accessDatabase:v29 error:&v28];
  v22 = v28;
  v23 = v22;
  if (v22)
  {
    if (a8)
    {
      v24 = v22;
      *a8 = v23;
    }

    v25 = v37[5];
    v37[5] = 0;
  }

  v26 = v37[5];

  _Block_object_dispose(&v36, 8);

  return v26;
}

- (void)executeQuery:(const char *)a1 error:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_txDatabase != NULL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v15 = @"PFSQLiteArchiver.m";
    v16 = 1024;
    v17 = 304;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end