@interface PLModelMigrationAction_AddMissingExtendedAttributes_2024
- (id)requestWithManagedObjectContext:(id)a3;
- (id)startDate;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)updateSleetPropertiesForAsset:(id)a3 metadata:(id)a4;
- (void)updateSpatialPropertiesForAsset:(id)a3 metadata:(id)a4;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributes_2024

- (id)startDate
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:1];
  [v2 setMonth:1];
  [v2 setYear:2024];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 dateFromComponents:v2];

  return v5;
}

- (id)requestWithManagedObjectContext:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
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
  v15 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2024 *)self startDate];
  v16 = [v14 predicateWithFormat:@"%K >= %@", @"dateCreated", v15];
  v26[0] = v16;
  if (v9)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v9];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v17 = ;
  v26[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v19 = [v13 andPredicateWithSubpredicates:v18];
  [v12 setPredicate:v19];

  v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v25 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v12 setSortDescriptors:v21];

  v24[0] = @"master.mediaMetadata";
  v24[1] = @"additionalAttributes.mediaMetadata";
  v24[2] = @"modernResources";
  v24[3] = @"extendedAttributes";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v12 setRelationshipKeyPathsForPrefetching:v22];

  return v12;
}

- (void)updateSpatialPropertiesForAsset:(id)a3 metadata:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (![v8 kind])
  {
    if ([v8 hasAdjustments])
    {
      v6 = [v8 fullSizeResourceMetadataFromMediaPropertiesOrFullSizeResourceOrOptionalURL:0];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
    if ([v8 hasAdjustments] && !v7)
    {
      v7 = v5;
    }

    [v8 setSpatialTypeFromMetadata:v7];
  }
}

- (void)updateSleetPropertiesForAsset:(id)a3 metadata:(id)a4
{
  v15 = a3;
  v5 = a4;
  if (![v15 currentSleetCast])
  {
    if ([v15 hasAdjustments])
    {
      [v15 updateAssetPropertiesFromAdjustmentFile];
    }

    else
    {
      [v15 setCurrentSleetCastFromMetadata:v5];
    }
  }

  if (![v15 kind])
  {
    v6 = [v15 additionalAttributes];
    v7 = [v6 sleetIsReversible];

    if (v7 != 1)
    {
      v8 = [v15 extendedAttributes];
      v9 = [v8 sleetCast];
      v10 = [v9 integerValue];

      if (v10 >= 1)
      {
        v11 = [v5 smartStyleIsReversible];

        if (!v11)
        {
          v12 = [v15 primaryStoreOriginalResource];
          v13 = [v12 uniformTypeIdentifier];
          if ([v13 conformsToHEIF])
          {
            v14 = [v15 additionalAttributes];
            [v14 setSleetIsReversible:1];
          }
        }
      }
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2024 *)self requestWithManagedObjectContext:v6];
  v15[4] = self;
  v16 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__PLModelMigrationAction_AddMissingExtendedAttributes_2024_performActionWithManagedObjectContext_error___block_invoke;
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

@end