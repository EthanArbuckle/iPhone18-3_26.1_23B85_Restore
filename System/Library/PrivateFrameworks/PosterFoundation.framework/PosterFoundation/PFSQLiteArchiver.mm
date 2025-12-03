@interface PFSQLiteArchiver
- (BOOL)access:(id)access error:(id *)error;
- (BOOL)archiveObject:(id)object error:(id *)error;
- (BOOL)archiveObjects:(id)objects error:(id *)error;
- (BOOL)deleteObject:(id)object error:(id *)error;
- (BOOL)deleteObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error;
- (BOOL)mutate:(id)mutate error:(id *)error;
- (BOOL)replaceObject:(id)object withObject:(id)withObject error:(id *)error;
- (BOOL)setupForDescriptor:(id)descriptor forClass:(Class)class error:(id *)error;
- (BOOL)updateObject:(id)object error:(id *)error;
- (PFSQLiteArchiver)init;
- (id)initWithDatabaseConnection:(char)connection shouldInvalidateOnDealloc:(void *)dealloc error:;
- (id)objectsOfClass:(Class)class column:(id)column predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by error:(id *)error;
- (id)unarchiveObjectsOfClass:(Class)class error:(id *)error;
- (id)unarchiveObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error;
- (id)unarchiveObjectsOfClass:(Class)class predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by error:(id *)error;
- (uint64_t)_connectionQueue_cleanupQueryCache;
- (void)dealloc;
@end

@implementation PFSQLiteArchiver

- (id)initWithDatabaseConnection:(char)connection shouldInvalidateOnDealloc:(void *)dealloc error:
{
  v8 = a2;
  if (!self)
  {
    goto LABEL_8;
  }

  v25.receiver = self;
  v25.super_class = PFSQLiteArchiver;
  v9 = objc_msgSendSuper2(&v25, sel_init);
  self = v9;
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
    if (dealloc)
    {
      v11 = v10;
      *dealloc = v10;
    }
  }

  else
  {
    [v8 addObserver:self];
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v13 = self[2];
    self[2] = strongToStrongObjectsMapTable;

    v14 = objc_opt_new();
    v15 = self[3];
    self[3] = v14;

    *(self + 8) = connection;
  }

  _Block_object_dispose(&v19, 8);

  if (v10)
  {
LABEL_8:
    selfCopy = 0;
  }

  else
  {
LABEL_9:
    self = self;
    selfCopy = self;
  }

  return selfCopy;
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
  initWithInMemoryDatabase = [[PFSQLiteDatabaseConnection alloc] initWithInMemoryDatabase];
  [(PFSQLiteDatabaseConnection *)initWithInMemoryDatabase executeQuery:@"PRAGMA journal_mode=WAL;" error:0];
  v4 = [(PFSQLiteArchiver *)&self->super.isa initWithDatabaseConnection:initWithInMemoryDatabase shouldInvalidateOnDealloc:1 error:0];
  if (!v4)
  {
    [(PFSQLiteDatabaseConnection *)initWithInMemoryDatabase invalidate];
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

- (BOOL)setupForDescriptor:(id)descriptor forClass:(Class)class error:(id *)error
{
  descriptorCopy = descriptor;
  v9 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PFSQLiteArchiver_setupForDescriptor_forClass_error___block_invoke;
  v13[3] = &unk_1E8189298;
  v15 = descriptorCopy;
  classCopy = class;
  v14 = v9;
  v10 = descriptorCopy;
  v11 = v9;
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v11 inWriteTransaction:v13 error:error];

  return error;
}

BOOL __54__PFSQLiteArchiver_setupForDescriptor_forClass_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) setupObjectDescriptorForClass:*(a1 + 48) expectedObjectDescriptor:*(a1 + 40) error:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)unarchiveObjectsOfClass:(Class)class error:(id *)error
{
  v6 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)v6 unarchiveObjectsOfClass:class error:error];

  return v7;
}

- (id)unarchiveObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v9 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v10 = [(_PFSQLiteArchiveReadonlyTransaction *)v9 unarchiveObjectsOfClass:class predicate:predicateCopy error:error];

  return v10;
}

- (id)unarchiveObjectsOfClass:(Class)class predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by error:(id *)error
{
  byCopy = by;
  offsetCopy = offset;
  predicateCopy = predicate;
  v15 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v16 = [(_PFSQLiteArchiveReadonlyTransaction *)v15 unarchiveObjectsOfClass:class predicate:predicateCopy limitOffset:offsetCopy orderedBy:byCopy error:error];

  return v16;
}

- (id)objectsOfClass:(Class)class column:(id)column predicate:(id)predicate limitOffset:(id)offset orderedBy:(id)by error:(id *)error
{
  byCopy = by;
  offsetCopy = offset;
  predicateCopy = predicate;
  columnCopy = column;
  v18 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  v19 = [(_PFSQLiteArchiveReadonlyTransaction *)v18 objectsOfClass:class column:columnCopy predicate:predicateCopy limitOffset:offsetCopy orderedBy:byCopy error:error];

  return v19;
}

- (BOOL)archiveObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 archiveObject:objectCopy error:error];

  return error;
}

- (BOOL)archiveObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 archiveObjects:objectsCopy error:error];

  return error;
}

- (BOOL)deleteObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 deleteObject:objectCopy error:error];

  return error;
}

- (BOOL)deleteObjectsOfClass:(Class)class predicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v9 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v9 deleteObjectsOfClass:class predicate:predicateCopy error:error];

  return error;
}

- (BOOL)replaceObject:(id)object withObject:(id)withObject error:(id *)error
{
  withObjectCopy = withObject;
  objectCopy = object;
  v10 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v10 replaceObject:objectCopy withObject:withObjectCopy error:error];

  return error;
}

- (BOOL)updateObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 updateObject:objectCopy error:error];

  return error;
}

- (BOOL)mutate:(id)mutate error:(id *)error
{
  mutateCopy = mutate;
  v7 = [(_PFSQLiteArchiveReadonlyTransaction *)[_PFSQLiteArchiveReadwriteTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadwriteTransaction *)v7 inWriteTransaction:mutateCopy error:error];

  return error;
}

- (BOOL)access:(id)access error:(id *)error
{
  accessCopy = access;
  v7 = [[_PFSQLiteArchiveReadonlyTransaction alloc] initWithDatabaseConnection:self->_connection classToObjectMap:self->_classToObjectMap queryCache:self->_queryCache];
  LOBYTE(error) = [(_PFSQLiteArchiveReadonlyTransaction *)v7 inReadTransaction:accessCopy error:error];

  return error;
}

- (uint64_t)_connectionQueue_cleanupQueryCache
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    queue = [*(result + 32) queue];
    BSDispatchQueueAssert();

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    objectEnumerator = [*(v1 + 24) objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          sqlite3_finalize([*(*(&v9 + 1) + 8 * v7++) pointerValue]);
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    result = [*(v1 + 24) removeAllObjects];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end