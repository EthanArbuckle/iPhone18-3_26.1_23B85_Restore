@interface PLModelMigrationHistory
- (BOOL)isLibraryOlderThanVersion:(unsigned __int16)version;
- (BOOL)libraryWasEverRebuilt;
- (PLModelMigrationHistory)initWithManagedObjectContext:(id)context;
- (id)libraryVersionHistorySinceLastRebuildOnly:(BOOL)only;
@end

@implementation PLModelMigrationHistory

- (id)libraryVersionHistorySinceLastRebuildOnly:(BOOL)only
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__77380;
  v14 = __Block_byref_object_dispose__77381;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  managedObjectContext = self->_managedObjectContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PLModelMigrationHistory_libraryVersionHistorySinceLastRebuildOnly___block_invoke;
  v8[3] = &unk_1E7573CD8;
  v8[4] = self;
  v8[5] = &v10;
  onlyCopy = only;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v8];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

uint64_t __69__PLModelMigrationHistory_libraryVersionHistorySinceLastRebuildOnly___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__PLModelMigrationHistory_libraryVersionHistorySinceLastRebuildOnly___block_invoke_2;
  v3[3] = &unk_1E7571DB0;
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __69__PLModelMigrationHistory_libraryVersionHistorySinceLastRebuildOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 migrationType];
  if (v4 > 1)
  {
    if (v4 - 2 < 2)
    {
LABEL_9:
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "modelVersion")}];
      [v8 addObject:v9];

      goto LABEL_10;
    }

    if (v4 != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (*(a1 + 40) == 1)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Migration type not specified, skipping version record", v11, 2u);
    }
  }

LABEL_10:
}

- (BOOL)libraryWasEverRebuilt
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = self->_managedObjectContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PLModelMigrationHistory_libraryWasEverRebuilt__block_invoke;
  v5[3] = &unk_1E7578910;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__PLModelMigrationHistory_libraryWasEverRebuilt__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PLModelMigrationHistory_libraryWasEverRebuilt__block_invoke_2;
  v3[3] = &unk_1E7571D88;
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

uint64_t __48__PLModelMigrationHistory_libraryWasEverRebuilt__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 migrationType];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isLibraryOlderThanVersion:(unsigned __int16)version
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  managedObjectContext = self->_managedObjectContext;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PLModelMigrationHistory_isLibraryOlderThanVersion___block_invoke;
  v6[3] = &unk_1E75726C0;
  versionCopy = version;
  v6[4] = self;
  v6[5] = &v8;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v6];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __53__PLModelMigrationHistory_isLibraryOlderThanVersion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PLModelMigrationHistory_isLibraryOlderThanVersion___block_invoke_2;
  v3[3] = &unk_1E7571D60;
  v4 = *(a1 + 48);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __53__PLModelMigrationHistory_isLibraryOlderThanVersion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 sourceModelVersion];
  if ([v7 integerValue] <= 0)
  {
    v9 = [v6 modelVersion];
  }

  else
  {
    v8 = [v6 sourceModelVersion];

    v9 = [v8 integerValue];
    v6 = v8;
  }

  if (v9 < *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (PLModelMigrationHistory)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationHistory.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"ctx"}];
  }

  v18.receiver = self;
  v18.super_class = PLModelMigrationHistory;
  v7 = [(PLModelMigrationHistory *)&v18 init];
  if (v7)
  {
    v8 = v7;
    objc_storeStrong(&v7->_managedObjectContext, context);
    managedObjectContext = v8->_managedObjectContext;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PLModelMigrationHistory_initWithManagedObjectContext___block_invoke;
    v15[3] = &unk_1E7578848;
    v10 = v8;
    v16 = v10;
    v17 = contextCopy;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v15];
    if (!v10->_migrationHistory)
    {
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to identify migration history", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __56__PLModelMigrationHistory_initWithManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [PLMigrationHistory migrationHistoryWithManagedObjectContext:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

@end