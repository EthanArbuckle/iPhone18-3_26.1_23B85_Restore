@interface PLDuplicateDetector
+ (BOOL)duplicateDetectorCompletedDateBackgroundMigrationAction:(id)action;
+ (BOOL)duplicateDetectorCompletedPerceptualHashProcessingWithManagedObjectContext:(id)context pathManager:(id)manager;
+ (id)duplicateDetectorExcludeZeroByteStableHashPredicateWithProperty:(id)property;
+ (id)duplicateDetectorFilterProcessingStateWithPrefix:(id)prefix processingType:(unint64_t)type;
+ (id)duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:(id)prefix processingType:(unint64_t)type pathManager:(id)manager;
+ (id)predicateFormatToPrependAssetAttributeSubstitutionWithPrefix:(id)prefix;
@end

@implementation PLDuplicateDetector

+ (BOOL)duplicateDetectorCompletedPerceptualHashProcessingWithManagedObjectContext:(id)context pathManager:(id)manager
{
  v33[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  managerCopy = manager;
  contextCopy = context;
  v9 = [v6 alloc];
  v10 = +[PLAdditionalAssetAttributes entityName];
  v11 = [v9 initWithEntityName:v10];

  v12 = MEMORY[0x1E696AB28];
  v13 = [PLDuplicateDetector duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:@"asset" processingType:2 pathManager:managerCopy];

  v33[0] = v13;
  v14 = [PLManagedAsset predicateToExcludeAssetsMissingMasterThumbnailsWithThumbnailIndexKeyPath:@"asset.thumbnailIndex"];
  v33[1] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) = %d", @"asset", @"kind", 0];
  v33[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  v17 = [v12 andPredicateWithSubpredicates:v16];
  [v11 setPredicate:v17];

  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sceneAnalysisVersion" ascending:1];
  v32 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v11 setSortDescriptors:v19];

  [v11 setFetchLimit:1];
  v27 = 0;
  v20 = [contextCopy executeFetchRequest:v11 error:&v27];

  v21 = v27;
  if (!v20)
  {
    v25 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = @"sceneAnalysisVersion";
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ min value. Error: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (![v20 count])
  {
LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  v22 = [v20 objectAtIndexedSubscript:0];
  sceneAnalysisVersion = [v22 sceneAnalysisVersion];

  v24 = sceneAnalysisVersion == [self currentSceneAnalysisUmbrellaVersion];
LABEL_8:

  return v24;
}

+ (BOOL)duplicateDetectorCompletedDateBackgroundMigrationAction:(id)action
{
  actionCopy = action;
  if (MEMORY[0x19EAEE520]() & 1) != 0 || (PLIsInternalTool())
  {
    v4 = 1;
  }

  else if (PLIsAssetsd())
  {
    v6 = objc_opt_class();
    pathManager = [actionCopy pathManager];
    v4 = [PLBackgroundModelMigration hasCompletedBackgroundActionClass:v6 pathManager:pathManager];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)predicateFormatToPrependAssetAttributeSubstitutionWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v4 = [prefixCopy rangeOfString:@"additionalAssetAttributes"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [prefixCopy stringByAppendingFormat:@".%@", @"additionalAttributes"];
  }

  else
  {
    [prefixCopy substringToIndex:v4 + v5];
  }
  v6 = ;

  return v6;
}

+ (id)duplicateDetectorFilterProcessingStateWithPrefix:(id)prefix processingType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v7 = prefixCopy;
  v8 = 0;
  if (type > 1)
  {
    if (type != 7 && type != 4)
    {
      if (type != 2)
      {
        goto LABEL_15;
      }

      v9 = MEMORY[0x1E696AE18];
      if (prefixCopy)
      {
        v10 = [self predicateFormatToPrependAssetAttributeSubstitutionWithPrefix:prefixCopy];
        v8 = [v9 predicateWithFormat:@"noindex:(%K.%K) == %ld", v10, @"duplicateDetectorPerceptualProcessingState", 0];

        goto LABEL_15;
      }

      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) == %ld", @"additionalAttributes", @"duplicateDetectorPerceptualProcessingState", 0];
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!type)
  {
LABEL_10:
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Requesting predicate for unsupported detector type: %tu", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (type == 1)
  {
LABEL_13:
    v12 = [MEMORY[0x1E696AE18] predicateWithValue:1];
LABEL_14:
    v8 = v12;
  }

LABEL_15:

  return v8;
}

+ (id)duplicateDetectorExcludeZeroByteStableHashPredicateWithProperty:(id)property
{
  v3 = MEMORY[0x1E6994AE0];
  propertyCopy = property;
  fingerprintSchemeForStableHash = [v3 fingerprintSchemeForStableHash];
  zeroByteFileFingerprint = [fingerprintSchemeForStableHash zeroByteFileFingerprint];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", propertyCopy, zeroByteFileFingerprint];

  return v7;
}

+ (id)duplicateDetectorProcessingFilterAssetsPredicateWithPrefix:(id)prefix processingType:(unint64_t)type pathManager:(id)manager
{
  v21[7] = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v9 = [PLDuplicateProcessor sharedLibraryDedupeEnabledWithPathManager:manager];
  v10 = MEMORY[0x1E696AB28];
  if (v9)
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) = %d", prefixCopy, @"activeLibraryScopeParticipationState", 0];
  }
  v11 = ;
  v21[0] = v11;
  v12 = [self duplicateDetectorFilterProcessingStateWithPrefix:prefixCopy processingType:type];
  v21[1] = v12;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) = %d", prefixCopy, @"trashedState", 0];
  v21[2] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) = NO", prefixCopy, @"hidden"];
  v21[3] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) != %d", prefixCopy, @"avalancheKind", 1];
  v21[4] = v15;
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K.%K) != %d", prefixCopy, @"cloudLocalState", 4];
  v21[5] = v16;
  v17 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:"maskForDuplicateProcessingExclusions") keyPathPrefix:{0, prefixCopy}];
  v21[6] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
  v19 = [v10 andPredicateWithSubpredicates:v18];

  return v19;
}

@end