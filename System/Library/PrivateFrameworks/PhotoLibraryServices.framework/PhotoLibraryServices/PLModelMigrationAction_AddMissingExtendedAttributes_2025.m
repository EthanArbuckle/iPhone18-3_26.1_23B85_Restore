@interface PLModelMigrationAction_AddMissingExtendedAttributes_2025
- (id)predicateForMigrationAction;
- (id)requestWithManagedObjectContext:(id)a3;
- (id)startDate;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)setup;
- (void)updateVideoProResPropertiesForAsset:(id)a3 metadata:(id)a4;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributes_2025

- (id)startDate
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:1];
  [v2 setMonth:10];
  [v2 setYear:2024];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 dateFromComponents:v2];

  return v5;
}

- (id)predicateForMigrationAction
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"extendedAttributes.codec", self->_codecs];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v3 andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)requestWithManagedObjectContext:(id)a3
{
  v27[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLModelMigrationActionBackground *)self resumeMarker];
  v6 = v4;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 persistentStoreCoordinator];
  v9 = [v8 managedObjectIDForURIRepresentation:v7];

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLManagedAsset entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = MEMORY[0x1E696AE18];
  v15 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2025 *)self startDate];
  v16 = [v14 predicateWithFormat:@"%K >= %@", @"dateCreated", v15];
  v27[0] = v16;
  v17 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2025 *)self predicateForMigrationAction];
  v27[1] = v17;
  if (v9)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v9];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v18 = ;
  v27[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  v20 = [v13 andPredicateWithSubpredicates:v19];
  [v12 setPredicate:v20];

  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v26 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v12 setSortDescriptors:v22];

  v25[0] = @"master.mediaMetadata";
  v25[1] = @"additionalAttributes.mediaMetadata";
  v25[2] = @"modernResources";
  v25[3] = @"extendedAttributes";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v12 setRelationshipKeyPathsForPrefetching:v23];

  return v12;
}

- (void)updateVideoProResPropertiesForAsset:(id)a3 metadata:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 kind] == 1)
  {
    v8 = [v6 extendedAttributes];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_codecs;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          v15 = [v8 codec];
          LODWORD(v14) = [v15 isEqualToString:v14];

          if (v14)
          {
            [v6 updateVideoAttributesFromMetadata:v7 overwriteOriginalProperties:0];
            goto LABEL_12;
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2025 *)self requestWithManagedObjectContext:v6];
  v15[4] = self;
  v16 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__PLModelMigrationAction_AddMissingExtendedAttributes_2025_performActionWithManagedObjectContext_error___block_invoke;
  v15[3] = &unk_1E756C850;
  v8 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:v6 fetchRequest:v7 useObjectIDResumeMarker:1 error:&v16 processingBlock:v15];

  v9 = v16;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v10 = v9;
  v11 = v10;
  if (v8 != 1 && a4 != 0)
  {
    v13 = v10;
    *a4 = v11;
  }

  return v8;
}

- (void)setup
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C0708] stringFromFourCharCode:1634759278];
  v7[0] = v3;
  v4 = [MEMORY[0x1E69C0708] stringFromFourCharCode:1634759272];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  codecs = self->_codecs;
  self->_codecs = v5;
}

@end