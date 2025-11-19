@interface PLPersonContactInfoMigrator
+ (id)migrationQueue;
+ (void)migratePersonContactInfoInPhotoLibrary:(id)a3;
- (PLPersonContactInfoMigrator)init;
- (id)enumerateResultsWithIncrementalSaveUsingFetchRequest:(id)a3 inContext:(id)a4 withBlock:(id)a5;
- (void)migratePerson:(id)a3;
- (void)migratePersonContactInfoInContext:(id)a3;
- (void)migratePersonContactInfoInPhotoLibrary:(id)a3;
- (void)populateMatchingDictionaryOfPerson:(id)a3 withContact:(id)a4;
- (void)updateNameOfPerson:(id)a3 withContact:(id)a4;
@end

@implementation PLPersonContactInfoMigrator

- (void)populateMatchingDictionaryOfPerson:(id)a3 withContact:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 contactMatchingDictionary];

  if (!v7)
  {
    v8 = [PLContactStoreUtilitiesWorkaround matchingDictionaryForContact:v6 contactStore:self->_contactStore];
    [v9 setContactMatchingDictionary:v8];
    ++self->_populateMatchingDictionaryCount;
  }
}

- (void)updateNameOfPerson:(id)a3 withContact:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 fullName];
  if (v7)
  {
    v8 = v7;
    v9 = [v12 displayName];

    if (!v9)
    {
      v10 = [PLPerson fullNameFromContact:v6];
      v11 = [PLPerson displayNameFromContact:v6];
      [v12 setFullName:v10];
      [v12 setDisplayName:v11];
      ++self->_updateNameCount;
    }
  }
}

- (void)migratePerson:(id)a3
{
  v6 = a3;
  v4 = [v6 personUri];
  v5 = [(CNContactStore *)self->_contactStore unifiedContactWithIdentifier:v4 keysToFetch:self->_keysToFetch error:0];
  if (v5)
  {
    [(PLPersonContactInfoMigrator *)self updateNameOfPerson:v6 withContact:v5];
    [(PLPersonContactInfoMigrator *)self populateMatchingDictionaryOfPerson:v6 withContact:v5];
  }

  else
  {
    [v6 setPersonUri:0];
  }
}

- (id)enumerateResultsWithIncrementalSaveUsingFetchRequest:(id)a3 inContext:(id)a4 withBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0;
  v9 = [v7 executeFetchRequest:a3 error:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [v7 enumerateWithIncrementalSaveUsingObjects:v9 shouldRefreshAfterSave:1 withBlock:v8];

    v10 = v11;
  }

  v12 = v10;

  return v10;
}

- (void)migratePersonContactInfoInContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = +[PLPerson entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType == %d && personUri != nil", 1];
  [v8 setPredicate:v9];

  [v8 setFetchBatchSize:100];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PLPersonContactInfoMigrator_migratePersonContactInfoInContext___block_invoke;
  v21[3] = &unk_1E7572300;
  v21[4] = self;
  v10 = [(PLPersonContactInfoMigrator *)self enumerateResultsWithIncrementalSaveUsingFetchRequest:v8 inContext:v6 withBlock:v21];

  v11 = PLMigrationGetLog();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v10;
      v14 = "%@ failed to migrate person contacts info: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 22;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v15, v16, v14, buf, v17);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      updateNameCount = self->_updateNameCount;
      *buf = 138412546;
      v23 = v18;
      v24 = 1024;
      LODWORD(v25) = updateNameCount;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%@ update names for %d people", buf, 0x12u);
    }

    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      populateMatchingDictionaryCount = self->_populateMatchingDictionaryCount;
      *buf = 138412546;
      v23 = v13;
      v24 = 1024;
      LODWORD(v25) = populateMatchingDictionaryCount;
      v14 = "%@ populate matching dictionary for %d people";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 18;
      goto LABEL_8;
    }
  }
}

- (void)migratePersonContactInfoInPhotoLibrary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PLPersonContactInfoMigrator_migratePersonContactInfoInPhotoLibrary___block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 performTransactionAndWait:v6];
}

void __70__PLPersonContactInfoMigrator_migratePersonContactInfoInPhotoLibrary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) managedObjectContext];
  [v1 migratePersonContactInfoInContext:v2];
}

{
  v2 = sDidMigrate;
  v3 = PLMigrationGetLog();
  v4 = os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, &v3->super, OS_LOG_TYPE_DEFAULT, "Already migrated person contacts info", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, &v3->super, OS_LOG_TYPE_DEFAULT, "Migrating person contacts info", v5, 2u);
    }

    v3 = objc_alloc_init(PLPersonContactInfoMigrator);
    [(PLPersonContactInfoMigrator *)v3 migratePersonContactInfoInPhotoLibrary:*(a1 + 32)];
    sDidMigrate = 1;
  }
}

- (PLPersonContactInfoMigrator)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PLPersonContactInfoMigrator;
  v2 = [(PLPersonContactInfoMigrator *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v12[0] = v5;
    v6 = [(CNContactStore *)v2->_contactStore descriptorForRequiredKeysForMatchingDictionary];
    v12[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    keysToFetch = v2->_keysToFetch;
    v2->_keysToFetch = v7;

    v9 = v2;
  }

  return v2;
}

+ (void)migratePersonContactInfoInPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [a1 migrationQueue];
  v7 = v4;
  v6 = v4;
  pl_dispatch_sync();
}

+ (id)migrationQueue
{
  pl_dispatch_once();
  v2 = migrationQueue_pl_once_object_1;

  return v2;
}

void __45__PLPersonContactInfoMigrator_migrationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.photos.personContactInfoMigrator", 0);
  v1 = migrationQueue_pl_once_object_1;
  migrationQueue_pl_once_object_1 = v0;
}

@end