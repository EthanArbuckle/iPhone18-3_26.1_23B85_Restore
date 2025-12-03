@interface PLModelMigrationAction_AddMissingExtendedAttributes_2024
- (id)requestWithManagedObjectContext:(id)context;
- (id)startDate;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)updateSleetPropertiesForAsset:(id)asset metadata:(id)metadata;
- (void)updateSpatialPropertiesForAsset:(id)asset metadata:(id)metadata;
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

- (id)requestWithManagedObjectContext:(id)context
{
  v26[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v6 = contextCopy;
  if (resumeMarker)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:resumeMarker];
  }

  else
  {
    v7 = 0;
  }

  persistentStoreCoordinator = [v6 persistentStoreCoordinator];
  v9 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v7];

  v10 = MEMORY[0x1E695D5E0];
  v11 = +[PLManagedAsset entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = MEMORY[0x1E696AE18];
  startDate = [(PLModelMigrationAction_AddMissingExtendedAttributes_2024 *)self startDate];
  v16 = [v14 predicateWithFormat:@"%K >= %@", @"dateCreated", startDate];
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

- (void)updateSpatialPropertiesForAsset:(id)asset metadata:(id)metadata
{
  assetCopy = asset;
  metadataCopy = metadata;
  if (![assetCopy kind])
  {
    if ([assetCopy hasAdjustments])
    {
      v6 = [assetCopy fullSizeResourceMetadataFromMediaPropertiesOrFullSizeResourceOrOptionalURL:0];
    }

    else
    {
      v6 = metadataCopy;
    }

    v7 = v6;
    if ([assetCopy hasAdjustments] && !v7)
    {
      v7 = metadataCopy;
    }

    [assetCopy setSpatialTypeFromMetadata:v7];
  }
}

- (void)updateSleetPropertiesForAsset:(id)asset metadata:(id)metadata
{
  assetCopy = asset;
  metadataCopy = metadata;
  if (![assetCopy currentSleetCast])
  {
    if ([assetCopy hasAdjustments])
    {
      [assetCopy updateAssetPropertiesFromAdjustmentFile];
    }

    else
    {
      [assetCopy setCurrentSleetCastFromMetadata:metadataCopy];
    }
  }

  if (![assetCopy kind])
  {
    additionalAttributes = [assetCopy additionalAttributes];
    sleetIsReversible = [additionalAttributes sleetIsReversible];

    if (sleetIsReversible != 1)
    {
      extendedAttributes = [assetCopy extendedAttributes];
      sleetCast = [extendedAttributes sleetCast];
      integerValue = [sleetCast integerValue];

      if (integerValue >= 1)
      {
        smartStyleIsReversible = [metadataCopy smartStyleIsReversible];

        if (!smartStyleIsReversible)
        {
          primaryStoreOriginalResource = [assetCopy primaryStoreOriginalResource];
          uniformTypeIdentifier = [primaryStoreOriginalResource uniformTypeIdentifier];
          if ([uniformTypeIdentifier conformsToHEIF])
          {
            additionalAttributes2 = [assetCopy additionalAttributes];
            [additionalAttributes2 setSleetIsReversible:1];
          }
        }
      }
    }
  }
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [(PLModelMigrationAction_AddMissingExtendedAttributes_2024 *)self requestWithManagedObjectContext:contextCopy];
  v15[4] = self;
  v16 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__PLModelMigrationAction_AddMissingExtendedAttributes_2024_performActionWithManagedObjectContext_error___block_invoke;
  v15[3] = &unk_1E756C850;
  v8 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:contextCopy fetchRequest:v7 useObjectIDResumeMarker:1 error:&v16 processingBlock:v15];

  v9 = v16;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v10 = v9;
  v11 = v10;
  if (v8 != 1 && error != 0)
  {
    v13 = v10;
    *error = v11;
  }

  return v8;
}

@end