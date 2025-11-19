@interface PFSQLiteArchiver
- (BOOL)access:(id)a3 error:(id *)a4;
- (BOOL)archiveObject:(id)a3 error:(id *)a4;
- (BOOL)archiveObjects:(id)a3 error:(id *)a4;
- (BOOL)deleteObject:(id)a3 error:(id *)a4;
- (BOOL)deleteObjectsOfClass:(Class)a3 predicate:(id)a4 error:(id *)a5;
- (BOOL)mutate:(id)a3 error:(id *)a4;
- (BOOL)replaceObject:(id)a3 withObject:(id)a4 error:(id *)a5;
- (BOOL)setupForDescriptor:(id)a3 forClass:(Class)a4 error:(id *)a5;
- (BOOL)updateObject:(id)a3 error:(id *)a4;
- (PFSQLiteArchiver)init;
- (id)initWithDatabaseConnection:(char)a3 shouldInvalidateOnDealloc:(void *)a4 error:;
- (id)objectsOfClass:(Class)a3 column:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 error:(id *)a8;
- (id)unarchiveObjectsOfClass:(Class)a3 error:(id *)a4;
- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 error:(id *)a5;
- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 error:(id *)a7;
- (uint64_t)_connectionQueue_cleanupQueryCache;
- (void)dealloc;
@end

@implementation PFSQLiteArchiver

- (id)initWithDatabaseConnection:(char)a3 shouldInvalidateOnDealloc:(void *)a4 error:
{
  v8 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  v25.receiver = a1;
  v25.super_class = PFSQLiteArchiver;
  v9 = objc_msgSendSuper2(&v25, sel_init);
  a1 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  objc_storeStrong(v9 + 4, a2);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PFSQLiteArchiver_initWithDatabaseConnection_shouldInvalidateOnDealloc_error___block_invoke;
  v18[3] = &unk_1E8189248;
  v18[4] = &v19;
  [(PFSQLiteDatabaseConnection *)v8 performSyncWithDatabase:v18];
  v10 = v20[5];
  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }
  }

  else
  {
    [v8 addObserver:a1];
    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v13 = a1[2];
    a1[2] = v12;

    v14 = objc_opt_new();
    v15 = a1[3];
    a1[3] = v14;

    *(a1 + 8) = a3;
  }

  _Block_object_dispose(&v19, 8);

  if (v10)
  {
LABEL_8:
    v16 = 0;
  }

  else
  {
LABEL_9:
    a1 = a1;
    v16 = a1;
  }

  return v16;
}

void __79__PFSQLiteArchiver_initWithDatabaseConnection_shouldInvalidateOnDealloc_error___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v5 = 0;
  PFSQLite_checkDatabaseForWALMode(a2, 3, 3000, 100000, &v5);
  v3 = v5;
  v4 = v5;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  }
}

- (PFSQLiteArchiver)init
{
  v3 = [[PFSQLiteDatabaseConnection alloc] initWithInMemoryDatabase];
  [(PFSQLiteDatabaseConnection *)v3 executeQuery:@"PRAGMA journal_mode=WAL;" error:0];
  v4 = [(PFSQLiteArchiver *)&self->super.isa initWithDatabaseConnection:v3 shouldInvalidateOnDealloc:1 error:0];
  if (!v4)
  {
    [(PFSQLiteDatabaseConnection *)v3 invalidate];
  }

  return v4;
}

- (void)dealloc
{
  connection = self->_connection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PFSQLiteArchiver_dealloc__block_invoke;
  v5[3] = &unk_1E8189270;
  v5[4] = self;
  [(PFSQLiteDatabaseConnection *)connection performSyncWithDatabase:v5];
  if (self->_shouldInvalidateOnDealloc)
  {
    [(PFSQLiteDatabaseConnection *)self->_connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = PFSQLiteArchiver;
  [(PFSQLiteArchiver *)&v4 dealloc];
}

- (BOOL)setupForDescriptor:(id)a3 forClass:(Class)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PFSQLiteArchiver_setupForDescriptor_forClass_error___block_invoke;
  v13[3] = &unk_1E8189298;
  v15 = v8;
  v16 = a4;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  LOBYTE(a5) = [(_PFSQLiteArchiveReadwriteTransaction *)v11 inWriteTransaction:v13 error:a5];

  return a5;
}

BOOL __54__PFSQLiteArchiver_setupForDescriptor_forClass_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:*(a1 + 40) error:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)unarchiveObjectsOfClass:(Class)a3 error:(id *)a4
{
  v6 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)v6 unarchiveObjectsOfClass:a3 error:a4];

  return v7;
}

- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v10 = [(_PFSQLiteArchiveReadonlyTransaction *)v9 unarchiveObjectsOfClass:a3 predicate:v8 error:a5];

  return v10;
}

- (id)unarchiveObjectsOfClass:(Class)a3 predicate:(id)a4 limitOffset:(id)a5 orderedBy:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v16 = [(_PFSQLiteArchiveReadonlyTransaction *)v15 unarchiveObjectsOfClass:a3 predicate:v14 limitOffset:v13 orderedBy:v12 error:a7];

  return v16;
}

- (id)objectsOfClass:(Class)a3 column:(id)a4 predicate:(id)a5 limitOffset:(id)a6 orderedBy:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v19 = [(_PFSQLiteArchiveReadonlyTransaction *)v18 objectsOfClass:a3 column:v17 predicate:v16 limitOffset:v15 orderedBy:v14 error:a8];

  return v19;
}

- (BOOL)archiveObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 archiveObject:v6 error:a4];

  return a4;
}

- (BOOL)archiveObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 archiveObjects:v6 error:a4];

  return a4;
}

- (BOOL)deleteObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 deleteObject:v6 error:a4];

  return a4;
}

- (BOOL)deleteObjectsOfClass:(Class)a3 predicate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a5) = [(_PFSQLiteArchiveReadwriteTransaction *)v9 deleteObjectsOfClass:a3 predicate:v8 error:a5];

  return a5;
}

- (BOOL)replaceObject:(id)a3 withObject:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a5) = [(_PFSQLiteArchiveReadwriteTransaction *)v10 replaceObject:v9 withObject:v8 error:a5];

  return a5;
}

- (BOOL)updateObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 updateObject:v6 error:a4];

  return a4;
}

- (BOOL)mutate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 inWriteTransaction:v6 error:a4];

  return a4;
}

- (BOOL)access:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(a4) = [(_PFSQLiteArchiveReadonlyTransaction *)v7 inReadTransaction:v6 error:a4];

  return a4;
}

- (uint64_t)_connectionQueue_cleanupQueryCache
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [*(result + 32) queue];
    BSDispatchQueueAssert();

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [*(v1 + 24) objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          sqlite3_finalize([*(*(&v9 + 1) + 8 * v7++) pointerValue]);
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    result = [*(v1 + 24) removeAllObjects];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end