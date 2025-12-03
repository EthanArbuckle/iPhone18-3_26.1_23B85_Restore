@interface PFSQLiteKeyedArchiver
- (BOOL)BOOLForKey:(id)key;
- (BOOL)accessWithBlock:(id)block error:(id *)error;
- (BOOL)mutateWithBlock:(id)block error:(id *)error;
- (BOOL)setDouble:(double)double forKey:(id)key;
- (BOOL)setFloat:(float)float forKey:(id)key;
- (BOOL)setInteger:(int64_t)integer forKey:(id)key;
- (BOOL)setObject:(id)object forKey:(id)key;
- (BOOL)setURL:(id)l forKey:(id)key;
- (PFGenericValueTransformer)archiver;
- (PFSQLiteKeyedArchiver)init;
- (PFSQLiteKeyedArchiver)initWithDatabaseConnection:(id)connection error:(id *)error;
- (PFSQLiteKeyedArchiver)initWithDatabaseURL:(id)l error:(id *)error;
- (double)doubleForKey:(id)key;
- (float)floatForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dateCreatedForKey:(id)key;
- (id)lastModifiedForKey:(id)key;
- (id)objectForKey:(id)key ofClass:(Class)class;
- (id)objectForKey:(id)key ofClasses:(id)classes;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setArchiver:(id)archiver;
@end

@implementation PFSQLiteKeyedArchiver

- (PFSQLiteKeyedArchiver)initWithDatabaseConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PFSQLiteKeyedArchiver;
  v7 = [(PFSQLiteKeyedArchiver *)&v15 init];
  if (v7 && (v14 = 0, v8 = [[PFSQLiteArchiver alloc] initWithDatabaseConnection:connectionCopy error:&v14], v9 = v14, sqliteArchiver = v7->_sqliteArchiver, v7->_sqliteArchiver = v8, sqliteArchiver, v9))
  {
    if (error)
    {
      v11 = v9;
      *error = v9;
    }

    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (PFSQLiteKeyedArchiver)initWithDatabaseURL:(id)l error:(id *)error
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PFSQLiteKeyedArchiver;
  v7 = [(PFSQLiteKeyedArchiver *)&v15 init];
  if (v7 && (v14 = 0, [PFSQLiteArchiver archiverForDatabaseAtURL:lCopy sqliteOptions:6 dataProtectionClass:1 error:&v14], v8 = objc_claimAutoreleasedReturnValue(), v9 = v14, sqliteArchiver = v7->_sqliteArchiver, v7->_sqliteArchiver = v8, sqliteArchiver, v9))
  {
    if (error)
    {
      v11 = v9;
      *error = v9;
    }

    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (PFSQLiteKeyedArchiver)init
{
  [(PFSQLiteKeyedArchiver *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)accessWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if (blockCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sqliteArchiver = selfCopy->_sqliteArchiver;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__PFSQLiteKeyedArchiver_accessWithBlock_error___block_invoke;
    v14[3] = &unk_1E8189780;
    v14[4] = selfCopy;
    v15 = blockCopy;
    v13 = 0;
    [(PFSQLiteArchiver *)sqliteArchiver access:v14 error:&v13];
    v9 = v13;

    objc_sync_exit(selfCopy);
    v10 = v9 == 0;
    if (error && v9)
    {
      v11 = v9;
      *error = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __47__PFSQLiteKeyedArchiver_accessWithBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_PFSQLiteKeyedArchiverTransaction alloc];
  v5 = [*(a1 + 32) archiver];
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)v4 initWithPFSQLiteAccessor:v3 archiver:v5];

  (*(*(a1 + 40) + 16))();
}

- (BOOL)mutateWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if (blockCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sqliteArchiver = selfCopy->_sqliteArchiver;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__PFSQLiteKeyedArchiver_mutateWithBlock_error___block_invoke;
    v20[3] = &unk_1E81897A8;
    v20[4] = selfCopy;
    v21 = blockCopy;
    v19 = 0;
    LOBYTE(sqliteArchiver) = [(PFSQLiteArchiver *)sqliteArchiver mutate:v20 error:&v19];
    v10 = v19;

    objc_sync_exit(selfCopy);
    v11 = (v10 == 0) & sqliteArchiver;
    if (v11)
    {
      v10 = 0;
    }

    else
    {
      if (!v10)
      {
        v12 = PFFunctionNameForAddress(v4);
        v15 = v12;
        if (v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = @"(Unknown Location)";
        }

        v10 = PFGeneralErrorFromObjectWithLocalizedFailureReason(selfCopy, v16, 0, 0, 0, @"mutation failed for unknown reason", v13, v14, 0);
      }

      if (error)
      {
        v17 = v10;
        *error = v10;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __47__PFSQLiteKeyedArchiver_mutateWithBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_PFSQLiteKeyedArchiverTransaction alloc];
  v5 = [*(a1 + 32) archiver];
  v6 = [(_PFSQLiteKeyedArchiverTransaction *)v4 initWithPFSQLiteMutator:v3 archiver:v5];

  v7 = (*(*(a1 + 40) + 16))();
  return v7;
}

- (PFGenericValueTransformer)archiver
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  archiver = selfCopy->_archiver;
  if (archiver)
  {
    pf_NSKeyedArchivingValueTransformer = archiver;
  }

  else
  {
    pf_NSKeyedArchivingValueTransformer = [MEMORY[0x1E696B0A0] pf_NSKeyedArchivingValueTransformer];
  }

  v5 = pf_NSKeyedArchivingValueTransformer;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setArchiver:(id)archiver
{
  archiverCopy = archiver;
  obj = self;
  objc_sync_enter(obj);
  archiver = obj->_archiver;
  obj->_archiver = archiverCopy;

  objc_sync_exit(obj);
}

- (id)objectForKey:(id)key ofClasses:(id)classes
{
  keyCopy = key;
  classesCopy = classes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v9 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v13 = [(_PFSQLiteKeyedArchiverTransaction *)v12 objectForKey:keyCopy ofClasses:classesCopy];

  objc_sync_exit(selfCopy);

  return v13;
}

- (id)objectForKey:(id)key ofClass:(Class)class
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v11 objectForKey:keyCopy ofClass:class];

  objc_sync_exit(selfCopy);

  return v12;
}

- (BOOL)setObject:(id)object forKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__PFSQLiteKeyedArchiver_setObject_forKey___block_invoke;
  v16[3] = &unk_1E81897D0;
  v8 = objectCopy;
  v17 = v8;
  v9 = keyCopy;
  v18 = v9;
  v15 = 0;
  v10 = [(PFSQLiteKeyedArchiver *)self mutateWithBlock:v16 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = PFLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_1C269D000, v12, OS_LOG_TYPE_DEFAULT, "Unable to set value '%@' for key %{public}@ becasue error: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v8 = [(_PFSQLiteKeyedArchiverTransaction *)v5 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  [(_PFSQLiteKeyedArchiverTransaction *)v8 removeObjectForKey:keyCopy];

  objc_sync_exit(selfCopy);
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 stringForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 dataForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 integerForKey:keyCopy];

  objc_sync_exit(selfCopy);
  return v10;
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  [(_PFSQLiteKeyedArchiverTransaction *)v9 floatForKey:keyCopy];
  v11 = v10;

  objc_sync_exit(selfCopy);
  return v11;
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  [(_PFSQLiteKeyedArchiverTransaction *)v9 doubleForKey:keyCopy];
  v11 = v10;

  objc_sync_exit(selfCopy);
  return v11;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  LOBYTE(v6) = [(_PFSQLiteKeyedArchiverTransaction *)v9 BOOLForKey:keyCopy];

  objc_sync_exit(selfCopy);
  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 URLForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  LOBYTE(integer) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setInteger:integer forKey:keyCopy];

  objc_sync_exit(selfCopy);
  return integer;
}

- (BOOL)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  *&v12 = float;
  LOBYTE(v8) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setFloat:keyCopy forKey:v12];

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  LOBYTE(v8) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setDouble:keyCopy forKey:double];

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)setURL:(id)l forKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v9 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  LOBYTE(v9) = [(_PFSQLiteKeyedArchiverTransaction *)v12 setURL:lCopy forKey:keyCopy];

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)removeAllObjects
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = obj->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)obj archiver];
  v5 = [(_PFSQLiteKeyedArchiverTransaction *)v2 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  [(_PFSQLiteKeyedArchiverTransaction *)v5 removeAllObjects];

  objc_sync_exit(obj);
}

- (id)dateCreatedForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 dateCreatedForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)lastModifiedForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = selfCopy->_sqliteArchiver;
  archiver = [(PFSQLiteKeyedArchiver *)selfCopy archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:archiver];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 lastModifiedForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

@end