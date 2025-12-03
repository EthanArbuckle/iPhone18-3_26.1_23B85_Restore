@interface _PFSQLiteArchiveReadwriteTransaction
- (BOOL)archiveObject:(id)object error:(id *)error;
- (BOOL)archiveObjects:(id)objects error:(id *)error;
- (BOOL)deleteObject:(id)object error:(id *)error;
- (BOOL)deleteObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error;
- (BOOL)inWriteTransaction:(id)transaction error:(id *)error;
- (BOOL)replaceObject:(id)object withObject:(id)withObject error:(id *)error;
- (BOOL)updateObject:(id)object error:(id *)error;
- (id)setupObjectDescriptorForClass:(Class)class expectedObjectDescriptor:(id)descriptor error:(id *)error;
- (uint64_t)_accessDatabase:(void *)database error:;
@end

@implementation _PFSQLiteArchiveReadwriteTransaction

- (BOOL)inWriteTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___PFSQLiteArchiveReadwriteTransaction_inWriteTransaction_error___block_invoke;
  v9[3] = &unk_1E81892C0;
  v9[4] = self;
  v10 = transactionCopy;
  v7 = transactionCopy;
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v9 error:error];

  return error;
}

- (uint64_t)_accessDatabase:(void *)database error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (*(self + 16) == 1)
    {
      v7 = (*(v5 + 2))(v5, *(self + 24), database);
    }

    else
    {
      *(self + 16) = 1;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy_;
      v22 = __Block_byref_object_dispose_;
      v23 = 0;
      v8 = [*(self + 8) description];
      v9 = *(self + 8);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62___PFSQLiteArchiveReadwriteTransaction__accessDatabase_error___block_invoke;
      v13[3] = &unk_1E8189428;
      v13[4] = self;
      v10 = v8;
      v14 = v10;
      v15 = v6;
      v16 = &v24;
      v17 = &v18;
      [(PFSQLiteDatabaseConnection *)v9 performSyncWithDatabase:v13];
      v11 = v19[5];
      if (v11)
      {
        v7 = 0;
        if (database)
        {
          *database = v11;
        }
      }

      else
      {
        v7 = *(v25 + 24);
      }

      _Block_object_dispose(&v18, 8);
      _Block_object_dispose(&v24, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)archiveObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_new();
    [objectCopy encodeWithCoder:v9];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60___PFSQLiteArchiveReadwriteTransaction_archiveObject_error___block_invoke;
    v22[3] = &unk_1E8189470;
    v22[4] = self;
    v24 = v8;
    v10 = v9;
    v23 = v10;
    v21 = 0;
    LOBYTE(v9) = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v22 error:&v21];
    v11 = v21;
    v12 = 0;
    v13 = (v11 == 0) & v9;
    if (!v13)
    {
      v12 = v11;
      if (!v11)
      {
        v14 = PFFunctionNameForAddress(v4);
        v17 = v14;
        if (v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = @"(Unknown Location)";
        }

        v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v18, 0, 0, 1, @"Unknown error archiving object %@", v15, v16, objectCopy);
      }

      if (error)
      {
        v19 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)archiveObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v7 = objc_opt_new();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___PFSQLiteArchiveReadwriteTransaction_archiveObjects_error___block_invoke;
    v14[3] = &unk_1E8189498;
    v15 = objectsCopy;
    v8 = v7;
    v16 = v8;
    selfCopy = self;
    v13 = 0;
    v9 = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v14 error:&v13];
    v10 = v13;
    if (v13)
    {
      if (error)
      {
        v10 = v13;
        v9 = 0;
        *error = v10;
      }

      else
      {
        v9 = 0;
      }
    }

    v11 = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)deleteObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v9 = predicateCopy;
  if (class)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77___PFSQLiteArchiveReadwriteTransaction_deleteObjectsOfClass_predicate_error___block_invoke;
    v16[3] = &unk_1E8189470;
    v16[4] = self;
    classCopy = class;
    v17 = predicateCopy;
    v15 = 0;
    v10 = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v16 error:&v15];
    v11 = v15;
    if (v15)
    {
      if (error)
      {
        v11 = v15;
        v10 = 0;
        *error = v11;
      }

      else
      {
        v10 = 0;
      }
    }

    v12 = v17;
    v13 = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)deleteObject:(id)object error:(id *)error
{
  if (!object)
  {
    return 0;
  }

  objectCopy = object;
  v7 = objc_opt_class();
  v8 = objc_opt_new();
  [objectCopy encodeWithCoder:v8];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59___PFSQLiteArchiveReadwriteTransaction_deleteObject_error___block_invoke;
  v16[3] = &unk_1E8189470;
  v16[4] = self;
  v18 = v7;
  v9 = v8;
  v17 = v9;
  v15 = 0;
  v10 = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v16 error:&v15];
  v11 = v15;
  if (v15)
  {
    if (error)
    {
      v11 = v15;
      v10 = 0;
      *error = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = v17;
  v13 = v11;

  return v10;
}

- (BOOL)replaceObject:(id)object withObject:(id)withObject error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  withObjectCopy = withObject;
  v10 = withObjectCopy;
  if (objectCopy && withObjectCopy)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_new();
    [objectCopy encodeWithCoder:v13];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71___PFSQLiteArchiveReadwriteTransaction_replaceObject_withObject_error___block_invoke;
    v23[3] = &unk_1E81894C0;
    v23[4] = self;
    v26 = v11;
    v27 = v12;
    v14 = v13;
    v24 = v14;
    v25 = v10;
    v22 = 0;
    v15 = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v23 error:&v22];
    v16 = v22;
    if (v22)
    {
      if (error)
      {
        v16 = v22;
        v15 = 0;
        *error = v16;
      }

      else
      {
        v15 = 0;
      }
    }

    v18 = v25;
    v19 = v16;

    goto LABEL_11;
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v29[0] = @"objects passed in are incorrect";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [v17 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v14];
    *error = v15 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)updateObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_new();
    [objectCopy encodeWithCoder:v8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___PFSQLiteArchiveReadwriteTransaction_updateObject_error___block_invoke;
    v11[3] = &unk_1E8189470;
    v11[4] = self;
    v13 = v7;
    v12 = objectCopy;
    v9 = [(_PFSQLiteArchiveReadwriteTransaction *)self _accessDatabase:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)setupObjectDescriptorForClass:(Class)class expectedObjectDescriptor:(id)descriptor error:(id *)error
{
  v101[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v74 = self->super._classToObjectMap;
  objc_sync_enter(v74);
  v84.receiver = self;
  v84.super_class = _PFSQLiteArchiveReadwriteTransaction;
  errorCopy = error;
  v10 = [(_PFSQLiteArchiveReadonlyTransaction *)&v84 setupObjectDescriptorForClass:class expectedObjectDescriptor:descriptorCopy error:error];
  v73 = descriptorCopy;
  if (v10)
  {
    pf_sqliteCodingDescriptor = v10;
    v12 = pf_sqliteCodingDescriptor;
    goto LABEL_40;
  }

  if (descriptorCopy)
  {
    pf_sqliteCodingDescriptor = descriptorCopy;
    goto LABEL_5;
  }

  if (([(objc_class *)class pf_supportsPFSQLiteCoding]& 1) == 0)
  {
    if (error)
    {
      v43 = MEMORY[0x1E696ABC0];
      v100 = *MEMORY[0x1E696A588];
      v44 = MEMORY[0x1E696AEC0];
      v45 = NSStringFromClass(class);
      v46 = [v44 stringWithFormat:@"%@ does not support PFSQLiteCoding", v45];
      v101[0] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
      *errorCopy = [v43 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v47];
    }

    goto LABEL_35;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (error)
    {
      v48 = MEMORY[0x1E696ABC0];
      v98 = *MEMORY[0x1E696A588];
      v49 = MEMORY[0x1E696AEC0];
      v50 = NSStringFromClass(class);
      v51 = [v49 stringWithFormat:@"%@ does not respond to PFSQLiteCoding protocol", v50];
      v99 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      *errorCopy = [v48 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v52];
    }

    goto LABEL_35;
  }

  pf_sqliteCodingDescriptor = [(objc_class *)class pf_sqliteCodingDescriptor];
  if (!pf_sqliteCodingDescriptor)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v96 = *MEMORY[0x1E696A588];
      v18 = MEMORY[0x1E696AEC0];
      v19 = NSStringFromClass(class);
      v20 = [v18 stringWithFormat:@"%@ returned nil for sqliteCodingDescriptor", v19];
      v97 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      *errorCopy = [v17 errorWithDomain:@"PFSQLiteArchiver" code:-1 userInfo:v21];
    }

LABEL_35:
    pf_sqliteCodingDescriptor = 0;
LABEL_36:
    v12 = 0;
    goto LABEL_40;
  }

LABEL_5:
  txDatabase = self->super._txDatabase;
  if (!txDatabase)
  {
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"database != NULL"];
    v56 = MEMORY[0x1E69E9C10];
    v57 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(a2);
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138544642;
      *&buf[4] = v58;
      *&buf[12] = 2114;
      *&buf[14] = v60;
      *&buf[22] = 2048;
      selfCopy = self;
      v90 = 2114;
      v91 = @"PFSQLiteArchiver.m";
      v92 = 1024;
      v93 = 890;
      v94 = 2114;
      v95 = v55;
      _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v61 = v55;
    [v55 UTF8String];
    v62 = _bs_set_crash_log_message();
    [_PFSQLiteArchiveReadwriteTransaction setupObjectDescriptorForClass:v62 expectedObjectDescriptor:? error:?];
  }

  if (sqlite3_db_readonly(self->super._txDatabase, 0))
  {
    if (errorCopy)
    {
      v14 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A588];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database is readonly and is not setup for object %@", pf_sqliteCodingDescriptor];
      v87 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      *errorCopy = [v14 errorWithDomain:@"PFSQLiteArchiver" code:-4 userInfo:v16];
    }

    goto LABEL_36;
  }

  selfCopy2 = self;
  v68 = txDatabase;
  classCopy = class;
  v66 = pf_sqliteCodingDescriptor;
  columns = [pf_sqliteCodingDescriptor columns];
  v65 = [columns bs_mapNoNulls:&__block_literal_global_227];

  tableName = [pf_sqliteCodingDescriptor tableName];
  v23 = 0x1E696A000uLL;
  v24 = MEMORY[0x1E696AEC0];
  v25 = [v65 componentsJoinedByString:{@", "}];
  v64 = [v24 stringWithFormat:@"CREATE TABLE %@ (%@)", tableName, v25];;

  v26 = v64;
  if (([(_PFSQLiteArchiveReadonlyTransaction *)self executeQuery:v64 error:errorCopy]& 1) != 0)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    indices = [v66 indices];
    v28 = [indices countByEnumeratingWithState:&v80 objects:v85 count:16];
    obj = indices;
    if (v28)
    {
      v71 = *v81;
      while (2)
      {
        v72 = v28;
        for (i = 0; i != v72; ++i)
        {
          if (*v81 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v80 + 1) + 8 * i);
          name = [v30 name];
          type = [v30 type];
          if (type != 1)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(selfCopy) = 0;
            v33 = [*(v23 + 3776) stringWithFormat:@"PRAGMA index_list('%@')", name];
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __101___PFSQLiteArchiveReadwriteTransaction_setupObjectDescriptorForClass_expectedObjectDescriptor_error___block_invoke_2;
            v76[3] = &unk_1E81894E8;
            v78 = buf;
            v79 = type;
            v34 = name;
            v77 = v34;
            v35 = MEMORY[0x1C691C400](v76);
            if ((PFSQLite_prepare_and_stepThrough_withBlock(v68, v33, 3, 100000, selfCopy2->super._queryCache, 0, 0, v35, errorCopy) & 1) == 0)
            {
              goto LABEL_37;
            }

            if ((*(*&buf[8] + 24) & 1) == 0)
            {
              v36 = v23;
              v37 = *(v23 + 3776);
              v38 = [v30 pf_toSQLWithBindings:0];
              v39 = v38;
              v40 = &stru_1F425B6D8;
              if (type == 2)
              {
                v40 = @" UNIQUE";
              }

              v41 = [v37 stringWithFormat:@"CREATE INDEX '%@'%@ ON table '%@' (%@)", v34, v40, tableName, v38];

              v42 = [(_PFSQLiteArchiveReadonlyTransaction *)selfCopy2 executeQuery:v41 error:errorCopy];
              v23 = v36;
              if (!v42)
              {
LABEL_37:

                _Block_object_dispose(buf, 8);
                v12 = 0;
                goto LABEL_38;
              }
            }

            _Block_object_dispose(buf, 8);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    [(NSMapTable *)selfCopy2->super._classToObjectMap setObject:v66 forKey:classCopy];
    v12 = v66;
LABEL_38:
    v26 = v64;
  }

  else
  {
    v12 = 0;
  }

  pf_sqliteCodingDescriptor = v66;
LABEL_40:

  objc_sync_exit(v74);
  v53 = *MEMORY[0x1E69E9840];

  return v12;
}

@end