@interface PLPersonContactInfoMigrator
+ (id)migrationQueue;
+ (void)migratePersonContactInfoInPhotoLibrary:(id)library;
- (PLPersonContactInfoMigrator)init;
- (id)enumerateResultsWithIncrementalSaveUsingFetchRequest:(id)request inContext:(id)context withBlock:(id)block;
- (void)migratePerson:(id)person;
- (void)migratePersonContactInfoInContext:(id)context;
- (void)migratePersonContactInfoInPhotoLibrary:(id)library;
- (void)populateMatchingDictionaryOfPerson:(id)person withContact:(id)contact;
- (void)updateNameOfPerson:(id)person withContact:(id)contact;
@end

@implementation PLPersonContactInfoMigrator

- (void)populateMatchingDictionaryOfPerson:(id)person withContact:(id)contact
{
  personCopy = person;
  contactCopy = contact;
  contactMatchingDictionary = [personCopy contactMatchingDictionary];

  if (!contactMatchingDictionary)
  {
    v8 = [PLContactStoreUtilitiesWorkaround matchingDictionaryForContact:contactCopy contactStore:self->_contactStore];
    [personCopy setContactMatchingDictionary:v8];
    ++self->_populateMatchingDictionaryCount;
  }
}

- (void)updateNameOfPerson:(id)person withContact:(id)contact
{
  personCopy = person;
  contactCopy = contact;
  fullName = [personCopy fullName];
  if (fullName)
  {
    v8 = fullName;
    displayName = [personCopy displayName];

    if (!displayName)
    {
      v10 = [PLPerson fullNameFromContact:contactCopy];
      v11 = [PLPerson displayNameFromContact:contactCopy];
      [personCopy setFullName:v10];
      [personCopy setDisplayName:v11];
      ++self->_updateNameCount;
    }
  }
}

- (void)migratePerson:(id)person
{
  personCopy = person;
  personUri = [personCopy personUri];
  v5 = [(CNContactStore *)self->_contactStore unifiedContactWithIdentifier:personUri keysToFetch:self->_keysToFetch error:0];
  if (v5)
  {
    [(PLPersonContactInfoMigrator *)self updateNameOfPerson:personCopy withContact:v5];
    [(PLPersonContactInfoMigrator *)self populateMatchingDictionaryOfPerson:personCopy withContact:v5];
  }

  else
  {
    [personCopy setPersonUri:0];
  }
}

- (id)enumerateResultsWithIncrementalSaveUsingFetchRequest:(id)request inContext:(id)context withBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v14 = 0;
  v9 = [contextCopy executeFetchRequest:request error:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v9 shouldRefreshAfterSave:1 withBlock:blockCopy];

    v10 = v11;
  }

  v12 = v10;

  return v10;
}

- (void)migratePersonContactInfoInContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  contextCopy = context;
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
  v10 = [(PLPersonContactInfoMigrator *)self enumerateResultsWithIncrementalSaveUsingFetchRequest:v8 inContext:contextCopy withBlock:v21];

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

- (void)migratePersonContactInfoInPhotoLibrary:(id)library
{
  libraryCopy = library;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PLPersonContactInfoMigrator_migratePersonContactInfoInPhotoLibrary___block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = libraryCopy;
  v5 = libraryCopy;
  [v5 performTransactionAndWait:v6];
}

void __70__PLPersonContactInfoMigrator_migratePersonContactInfoInPhotoLibrary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) managedObjectContext];
  [v1 migratePersonContactInfoInContext:v2];
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
    descriptorForRequiredKeysForMatchingDictionary = [(CNContactStore *)v2->_contactStore descriptorForRequiredKeysForMatchingDictionary];
    v12[1] = descriptorForRequiredKeysForMatchingDictionary;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    keysToFetch = v2->_keysToFetch;
    v2->_keysToFetch = v7;

    v9 = v2;
  }

  return v2;
}

+ (void)migratePersonContactInfoInPhotoLibrary:(id)library
{
  libraryCopy = library;
  migrationQueue = [self migrationQueue];
  v7 = libraryCopy;
  v6 = libraryCopy;
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