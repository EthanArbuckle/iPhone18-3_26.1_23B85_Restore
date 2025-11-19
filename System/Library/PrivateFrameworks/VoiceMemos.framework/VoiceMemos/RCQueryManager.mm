@interface RCQueryManager
+ (NSArray)defaultFetchedProperties;
+ (NSArray)defaultSortDescriptors;
+ (id)_defaultFolderFetchRequest;
+ (id)_defaultFolderFetchRequest:(id)a3;
+ (id)_defaultRecordingsFetchRequest;
+ (id)_defaultRecordingsFetchRequest:(id)a3;
+ (id)_foldersWithPredicateFormat:(id)a3;
+ (id)_recordingsWithPredicateFormat:(id)a3;
+ (id)allCustomLabelsFetchRequest;
+ (id)allDeletedRecordingsFetchRequest;
+ (id)allFoldersForSortingFetchRequest;
+ (id)defaultResidentRecordingsFetchedProperties;
+ (id)deletedRecordingsFetchRequest;
+ (id)encryptedFieldsMigrationsFetchRequest;
+ (id)evictionDateBeforeFetchRequest:(id)a3;
+ (id)foldersWithNameFetchRequest:(id)a3 searchOption:(int)a4;
+ (id)foldersWithhRankFetchRequest:(int64_t)a3;
+ (id)playableRecordingsExcludingDeletedPredicate;
+ (id)playableRecordingsFetchRequestWithSubPredicate:(id)a3;
+ (id)recordingWithNameFetchRequest:(id)a3 searchOption:(int)a4;
+ (id)recordingsNeedingAssetExportFetchRequest;
+ (id)recordingsWithNilAudioFuturesFetchRequest;
+ (id)recordingsWithTitleFetchRequest:(id)a3;
+ (id)userDefinedFoldersFetchRequest;
+ (id)visibleRecordingsFetchRequest;
@end

@implementation RCQueryManager

+ (id)_defaultRecordingsFetchRequest
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"CloudRecording"];
  v4 = [a1 defaultFetchedProperties];
  [v3 setPropertiesToFetch:v4];

  return v3;
}

+ (NSArray)defaultFetchedProperties
{
  if (defaultFetchedProperties_onceToken != -1)
  {
    +[RCQueryManager defaultFetchedProperties];
  }

  v3 = defaultFetchedProperties_properties;

  return v3;
}

void __42__RCQueryManager_defaultFetchedProperties__block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"customLabelForSorting";
  v3[1] = @"date";
  v3[2] = @"localDuration";
  v3[3] = @"sharedFlags";
  v3[4] = @"uniqueID";
  v3[5] = @"evictionDate";
  v3[6] = @"flags";
  v3[7] = @"path";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:8];
  v1 = defaultFetchedProperties_properties;
  defaultFetchedProperties_properties = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)playableRecordingsExcludingDeletedPredicate
{
  v3 = [a1 playablePredicate];
  v4 = [a1 deletedRecordingsPredicate];
  v5 = [v3 rc_andNot:v4];

  return v5;
}

+ (id)defaultResidentRecordingsFetchedProperties
{
  if (defaultResidentRecordingsFetchedProperties_onceToken != -1)
  {
    +[RCQueryManager defaultResidentRecordingsFetchedProperties];
  }

  v3 = defaultResidentRecordingsFetchedProperties_properties;

  return v3;
}

+ (NSArray)defaultSortDescriptors
{
  if (defaultSortDescriptors_onceToken != -1)
  {
    +[RCQueryManager defaultSortDescriptors];
  }

  v3 = defaultSortDescriptors_sortDescriptors;

  return v3;
}

void __40__RCQueryManager_defaultSortDescriptors__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:0];
  v5[0] = v0;
  v1 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"customLabelForSorting" ascending:1];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = defaultSortDescriptors_sortDescriptors;
  defaultSortDescriptors_sortDescriptors = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __60__RCQueryManager_defaultResidentRecordingsFetchedProperties__block_invoke()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"customLabelForSorting";
  v3[1] = @"date";
  v3[2] = @"localDuration";
  v3[3] = @"sharedFlags";
  v3[4] = @"uniqueID";
  v3[5] = @"evictionDate";
  v3[6] = @"flags";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = defaultResidentRecordingsFetchedProperties_properties;
  defaultResidentRecordingsFetchedProperties_properties = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)deletedRecordingsFetchRequest
{
  v3 = [a1 _defaultRecordingsFetchRequest];
  v4 = [a1 playablePredicate];
  v5 = [a1 deletedRecordingsPredicate];
  v6 = [v4 rc_and:v5];
  [v3 setPredicate:v6];

  v7 = [a1 defaultResidentRecordingsFetchedProperties];
  [v3 setPropertiesToFetch:v7];

  v8 = [a1 defaultSortDescriptors];
  [v3 setSortDescriptors:v8];

  [v3 setFetchBatchSize:100];

  return v3;
}

+ (id)userDefinedFoldersFetchRequest
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 _foldersWithPredicateFormat:@"%K != NULL && %K != NULL", @"encryptedName", @"uuid"];
  [v2 setShouldRefreshRefetchedObjects:1];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rank" ascending:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 setSortDescriptors:v4];

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_defaultFolderFetchRequest
{
  if (_defaultFolderFetchRequest_onceToken != -1)
  {
    +[RCQueryManager _defaultFolderFetchRequest];
  }

  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Folder"];
  [v2 setPropertiesToFetch:_defaultFolderFetchRequest_defaultFolderPropertiesToFetch];

  return v2;
}

void __44__RCQueryManager__defaultFolderFetchRequest__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"encryptedName";
  v3[1] = @"rank";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = _defaultFolderFetchRequest_defaultFolderPropertiesToFetch;
  _defaultFolderFetchRequest_defaultFolderPropertiesToFetch = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)playableRecordingsFetchRequestWithSubPredicate:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultRecordingsFetchRequest];
  v6 = [a1 playableRecordingsExcludingDeletedPredicate];
  [v5 setPredicate:v6];

  v7 = [a1 defaultResidentRecordingsFetchedProperties];
  [v5 setPropertiesToFetch:v7];

  v8 = [a1 defaultSortDescriptors];
  [v5 setSortDescriptors:v8];

  [v5 setFetchBatchSize:100];
  if (v4)
  {
    v9 = [v5 predicate];
    v10 = [v9 rc_and:v4];
    [v5 setPredicate:v10];
  }

  return v5;
}

+ (id)evictionDateBeforeFetchRequest:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _defaultRecordingsFetchRequest];
  v10[0] = @"evictionDate";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 setPropertiesToFetch:v6];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil AND %K <= %@", @"evictionDate", @"evictionDate", v4];

  [v5 setPredicate:v7];
  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)allDeletedRecordingsFetchRequest
{
  v3 = [a1 deletedRecordingsPredicate];
  v4 = [a1 _defaultRecordingsFetchRequest:v3];

  return v4;
}

+ (id)allCustomLabelsFetchRequest
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 _defaultRecordingsFetchRequest];
  v6[0] = @"customLabelForSorting";
  v6[1] = @"evictionDate";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [v2 setPropertiesToFetch:v3];

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)recordingWithNameFetchRequest:(id)a3 searchOption:(int)a4
{
  v6 = MEMORY[0x277CCA9C0];
  v7 = a3;
  v8 = [v6 expressionForKeyPath:@"customLabelForSorting"];
  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v7];

  v10 = MEMORY[0x277CCA918];
  v11 = _predicateOperatorTypeForSearchOption(a4);
  v12 = [v10 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v11 options:_predicateOptionsForSearchOption(a4)];
  v13 = [a1 _defaultRecordingsFetchRequest:v12];

  return v13;
}

+ (id)visibleRecordingsFetchRequest
{
  v3 = [a1 playablePredicate];
  v4 = [a1 _defaultRecordingsFetchRequest:v3];

  v5 = [a1 defaultSortDescriptors];
  [v4 setSortDescriptors:v5];

  return v4;
}

+ (id)recordingsNeedingAssetExportFetchRequest
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil && bitwiseAnd:with:(%K, %@) == %@", @"flags", @"flags", &unk_2881AE0D0, &unk_2881AE0D0];
  v4 = [a1 _defaultRecordingsFetchRequest:v3];

  v8[0] = @"flags";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setPropertiesToFetch:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)recordingsWithNilAudioFuturesFetchRequest
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = [a1 _recordingsWithPredicateFormat:@"%K == nil && %K == nil && %K == nil", @"audioFuture", @"mtAudioFuture", @"versionedAudioFuture"];
  v6[0] = @"audioFuture";
  v6[1] = @"mtAudioFuture";
  v6[2] = @"versionedAudioFuture";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  [v2 setPropertiesToFetch:v3];

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)encryptedFieldsMigrationsFetchRequest
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Migration"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil && bitwiseAnd:with:(%K, %@) == %@", @"flags", @"flags", &unk_2881AE0E8, &unk_2881AE0E8];
  [v2 setPredicate:v3];

  return v2;
}

+ (id)recordingsWithTitleFetchRequest:(id)a3
{
  v3 = @"nil";
  if (a3)
  {
    v3 = a3;
  }

  return [a1 _recordingsWithPredicateFormat:@"%K == %@", @"customLabelForSorting", v3];
}

+ (id)foldersWithNameFetchRequest:(id)a3 searchOption:(int)a4
{
  v6 = MEMORY[0x277CCA9C0];
  v7 = a3;
  v8 = [v6 expressionForKeyPath:@"encryptedName"];
  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v7];

  v10 = MEMORY[0x277CCA918];
  v11 = _predicateOperatorTypeForSearchOption(a4);
  v12 = [v10 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v11 options:_predicateOptionsForSearchOption(a4)];
  v13 = [a1 _defaultFolderFetchRequest:v12];

  return v13;
}

+ (id)foldersWithhRankFetchRequest:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v5 = [a1 _foldersWithPredicateFormat:@"%K == %@", @"rank", v4];

  return v5;
}

+ (id)allFoldersForSortingFetchRequest
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 _defaultFolderFetchRequest];
  v6[0] = @"rank";
  v6[1] = @"uuid";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [v2 setPropertiesToFetch:v3];

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_defaultRecordingsFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultRecordingsFetchRequest];
  [v5 setPredicate:v4];

  return v5;
}

+ (id)_defaultFolderFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultFolderFetchRequest];
  [v5 setPredicate:v4];

  return v5;
}

+ (id)_recordingsWithPredicateFormat:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultRecordingsFetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:v4 arguments:&v9];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)_foldersWithPredicateFormat:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultFolderFetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:v4 arguments:&v9];

  [v5 setPredicate:v6];

  return v5;
}

@end