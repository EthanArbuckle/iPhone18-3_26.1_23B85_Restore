@interface NSKeyedUnarchiver(PLKeyedUnarchiverAdditions)
+ (id)pl_safeUnarchiveObjectFromData:()PLKeyedUnarchiverAdditions class:;
+ (id)pl_safeUnarchiveObjectFromData:()PLKeyedUnarchiverAdditions classes:;
- (id)pl_safeInitForReadingFromData:()PLKeyedUnarchiverAdditions;
@end

@implementation NSKeyedUnarchiver(PLKeyedUnarchiverAdditions)

- (id)pl_safeInitForReadingFromData:()PLKeyedUnarchiverAdditions
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [self initForReadingFromData:a3 error:&v8];
  v4 = v8;
  v5 = v3;
  if (!v5)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Data was corrupt; forcing [NSKeyedUnarchiver initForReadingFromData:error:] to return nil, error: %@", buf, 0xCu);
    }
  }

  return v5;
}

+ (id)pl_safeUnarchiveObjectFromData:()PLKeyedUnarchiverAdditions classes:
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [self unarchivedObjectOfClasses:a4 fromData:a3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Data was corrupt; forcing +[NSKeyedUnarchiver unarchivedObjectOfClasses:fromData:error:] to return nil, error: %@", buf, 0xCu);
    }
  }

  return v4;
}

+ (id)pl_safeUnarchiveObjectFromData:()PLKeyedUnarchiverAdditions class:
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [self unarchivedObjectOfClass:a4 fromData:a3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Data was corrupt; forcing +[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:] to return nil, error: %@", buf, 0xCu);
    }
  }

  return v4;
}

@end