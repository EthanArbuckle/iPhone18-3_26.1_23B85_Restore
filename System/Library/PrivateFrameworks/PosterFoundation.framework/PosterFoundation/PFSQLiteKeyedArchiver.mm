@interface PFSQLiteKeyedArchiver
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)accessWithBlock:(id)a3 error:(id *)a4;
- (BOOL)mutateWithBlock:(id)a3 error:(id *)a4;
- (BOOL)setDouble:(double)a3 forKey:(id)a4;
- (BOOL)setFloat:(float)a3 forKey:(id)a4;
- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4;
- (BOOL)setObject:(id)a3 forKey:(id)a4;
- (BOOL)setURL:(id)a3 forKey:(id)a4;
- (PFGenericValueTransformer)archiver;
- (PFSQLiteKeyedArchiver)init;
- (PFSQLiteKeyedArchiver)initWithDatabaseConnection:(id)a3 error:(id *)a4;
- (PFSQLiteKeyedArchiver)initWithDatabaseURL:(id)a3 error:(id *)a4;
- (double)doubleForKey:(id)a3;
- (float)floatForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dateCreatedForKey:(id)a3;
- (id)lastModifiedForKey:(id)a3;
- (id)objectForKey:(id)a3 ofClass:(Class)a4;
- (id)objectForKey:(id)a3 ofClasses:(id)a4;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setArchiver:(id)a3;
@end

@implementation PFSQLiteKeyedArchiver

- (PFSQLiteKeyedArchiver)initWithDatabaseConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PFSQLiteKeyedArchiver;
  v7 = [(PFSQLiteKeyedArchiver *)&v15 init];
  if (v7 && (v14 = 0, v8 = [[PFSQLiteArchiver alloc] initWithDatabaseConnection:v6 error:&v14], v9 = v14, sqliteArchiver = v7->_sqliteArchiver, v7->_sqliteArchiver = v8, sqliteArchiver, v9))
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v9;
    }

    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (PFSQLiteKeyedArchiver)initWithDatabaseURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PFSQLiteKeyedArchiver;
  v7 = [(PFSQLiteKeyedArchiver *)&v15 init];
  if (v7 && (v14 = 0, [PFSQLiteArchiver archiverForDatabaseAtURL:v6 sqliteOptions:6 dataProtectionClass:1 error:&v14], v8 = objc_claimAutoreleasedReturnValue(), v9 = v14, sqliteArchiver = v7->_sqliteArchiver, v7->_sqliteArchiver = v8, sqliteArchiver, v9))
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v9;
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

- (BOOL)accessWithBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    sqliteArchiver = v7->_sqliteArchiver;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__PFSQLiteKeyedArchiver_accessWithBlock_error___block_invoke;
    v14[3] = &unk_1E8189780;
    v14[4] = v7;
    v15 = v6;
    v13 = 0;
    [(PFSQLiteArchiver *)sqliteArchiver access:v14 error:&v13];
    v9 = v13;

    objc_sync_exit(v7);
    v10 = v9 == 0;
    if (a4 && v9)
    {
      v11 = v9;
      *a4 = v9;
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

- (BOOL)mutateWithBlock:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    sqliteArchiver = v8->_sqliteArchiver;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__PFSQLiteKeyedArchiver_mutateWithBlock_error___block_invoke;
    v20[3] = &unk_1E81897A8;
    v20[4] = v8;
    v21 = v7;
    v19 = 0;
    LOBYTE(sqliteArchiver) = [(PFSQLiteArchiver *)sqliteArchiver mutate:v20 error:&v19];
    v10 = v19;

    objc_sync_exit(v8);
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

        v10 = PFGeneralErrorFromObjectWithLocalizedFailureReason(v8, v16, 0, 0, 0, @"mutation failed for unknown reason", v13, v14, 0);
      }

      if (a4)
      {
        v17 = v10;
        *a4 = v10;
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
  v2 = self;
  objc_sync_enter(v2);
  archiver = v2->_archiver;
  if (archiver)
  {
    v4 = archiver;
  }

  else
  {
    v4 = [MEMORY[0x1E696B0A0] pf_NSKeyedArchivingValueTransformer];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (void)setArchiver:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  archiver = obj->_archiver;
  obj->_archiver = v4;

  objc_sync_exit(obj);
}

- (id)objectForKey:(id)a3 ofClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v8->_sqliteArchiver;
  v11 = [(PFSQLiteKeyedArchiver *)v8 archiver];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v9 initWithPFSQLiteMutator:sqliteArchiver archiver:v11];
  v13 = [(_PFSQLiteKeyedArchiverTransaction *)v12 objectForKey:v6 ofClasses:v7];

  objc_sync_exit(v8);

  return v13;
}

- (id)objectForKey:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v7->_sqliteArchiver;
  v10 = [(PFSQLiteKeyedArchiver *)v7 archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:v10];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v11 objectForKey:v6 ofClass:a4];

  objc_sync_exit(v7);

  return v12;
}

- (BOOL)setObject:(id)a3 forKey:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__PFSQLiteKeyedArchiver_setObject_forKey___block_invoke;
  v16[3] = &unk_1E81897D0;
  v8 = v6;
  v17 = v8;
  v9 = v7;
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

- (void)removeObjectForKey:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v4->_sqliteArchiver;
  v7 = [(PFSQLiteKeyedArchiver *)v4 archiver];
  v8 = [(_PFSQLiteKeyedArchiverTransaction *)v5 initWithPFSQLiteMutator:sqliteArchiver archiver:v7];
  [(_PFSQLiteKeyedArchiverTransaction *)v8 removeObjectForKey:v9];

  objc_sync_exit(v4);
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 stringForKey:v4];

  objc_sync_exit(v5);

  return v10;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 dataForKey:v4];

  objc_sync_exit(v5);

  return v10;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 integerForKey:v4];

  objc_sync_exit(v5);
  return v10;
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  [(_PFSQLiteKeyedArchiverTransaction *)v9 floatForKey:v4];
  v11 = v10;

  objc_sync_exit(v5);
  return v11;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  [(_PFSQLiteKeyedArchiverTransaction *)v9 doubleForKey:v4];
  v11 = v10;

  objc_sync_exit(v5);
  return v11;
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  LOBYTE(v6) = [(_PFSQLiteKeyedArchiverTransaction *)v9 BOOLForKey:v4];

  objc_sync_exit(v5);
  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 URLForKey:v4];

  objc_sync_exit(v5);

  return v10;
}

- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v7->_sqliteArchiver;
  v10 = [(PFSQLiteKeyedArchiver *)v7 archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:v10];
  LOBYTE(a3) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setInteger:a3 forKey:v6];

  objc_sync_exit(v7);
  return a3;
}

- (BOOL)setFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v7->_sqliteArchiver;
  v10 = [(PFSQLiteKeyedArchiver *)v7 archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:v10];
  *&v12 = a3;
  LOBYTE(v8) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setFloat:v6 forKey:v12];

  objc_sync_exit(v7);
  return v8;
}

- (BOOL)setDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v7->_sqliteArchiver;
  v10 = [(PFSQLiteKeyedArchiver *)v7 archiver];
  v11 = [(_PFSQLiteKeyedArchiverTransaction *)v8 initWithPFSQLiteMutator:sqliteArchiver archiver:v10];
  LOBYTE(v8) = [(_PFSQLiteKeyedArchiverTransaction *)v11 setDouble:v6 forKey:a3];

  objc_sync_exit(v7);
  return v8;
}

- (BOOL)setURL:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v8->_sqliteArchiver;
  v11 = [(PFSQLiteKeyedArchiver *)v8 archiver];
  v12 = [(_PFSQLiteKeyedArchiverTransaction *)v9 initWithPFSQLiteMutator:sqliteArchiver archiver:v11];
  LOBYTE(v9) = [(_PFSQLiteKeyedArchiverTransaction *)v12 setURL:v6 forKey:v7];

  objc_sync_exit(v8);
  return v9;
}

- (void)removeAllObjects
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = obj->_sqliteArchiver;
  v4 = [(PFSQLiteKeyedArchiver *)obj archiver];
  v5 = [(_PFSQLiteKeyedArchiverTransaction *)v2 initWithPFSQLiteMutator:sqliteArchiver archiver:v4];
  [(_PFSQLiteKeyedArchiverTransaction *)v5 removeAllObjects];

  objc_sync_exit(obj);
}

- (id)dateCreatedForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 dateCreatedForKey:v4];

  objc_sync_exit(v5);

  return v10;
}

- (id)lastModifiedForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [_PFSQLiteKeyedArchiverTransaction alloc];
  sqliteArchiver = v5->_sqliteArchiver;
  v8 = [(PFSQLiteKeyedArchiver *)v5 archiver];
  v9 = [(_PFSQLiteKeyedArchiverTransaction *)v6 initWithPFSQLiteMutator:sqliteArchiver archiver:v8];
  v10 = [(_PFSQLiteKeyedArchiverTransaction *)v9 lastModifiedForKey:v4];

  objc_sync_exit(v5);

  return v10;
}

@end