@interface RCQueryManager
+ (NSArray)defaultFetchedProperties;
+ (NSArray)defaultSortDescriptors;
+ (id)_defaultFolderFetchRequest;
+ (id)_defaultFolderFetchRequest:(id)request;
+ (id)_defaultRecordingsFetchRequest;
+ (id)_defaultRecordingsFetchRequest:(id)request;
+ (id)_foldersWithPredicateFormat:(id)format;
+ (id)_recordingsWithPredicateFormat:(id)format;
+ (id)allCustomLabelsFetchRequest;
+ (id)allDeletedRecordingsFetchRequest;
+ (id)allFoldersForSortingFetchRequest;
+ (id)defaultResidentRecordingsFetchedProperties;
+ (id)deletedRecordingsFetchRequest;
+ (id)encryptedFieldsMigrationsFetchRequest;
+ (id)evictionDateBeforeFetchRequest:(id)request;
+ (id)foldersWithNameFetchRequest:(id)request searchOption:(int)option;
+ (id)foldersWithhRankFetchRequest:(int64_t)request;
+ (id)playableRecordingsExcludingDeletedPredicate;
+ (id)playableRecordingsFetchRequestWithSubPredicate:(id)predicate;
+ (id)recordingWithNameFetchRequest:(id)request searchOption:(int)option;
+ (id)recordingsNeedingAssetExportFetchRequest;
+ (id)recordingsWithNilAudioFuturesFetchRequest;
+ (id)recordingsWithTitleFetchRequest:(id)request;
+ (id)userDefinedFoldersFetchRequest;
+ (id)visibleRecordingsFetchRequest;
@end

@implementation RCQueryManager

+ (id)_defaultRecordingsFetchRequest
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"CloudRecording"];
  defaultFetchedProperties = [self defaultFetchedProperties];
  [v3 setPropertiesToFetch:defaultFetchedProperties];

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
  playablePredicate = [self playablePredicate];
  deletedRecordingsPredicate = [self deletedRecordingsPredicate];
  v5 = [playablePredicate rc_andNot:deletedRecordingsPredicate];

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
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  playablePredicate = [self playablePredicate];
  deletedRecordingsPredicate = [self deletedRecordingsPredicate];
  v6 = [playablePredicate rc_and:deletedRecordingsPredicate];
  [_defaultRecordingsFetchRequest setPredicate:v6];

  defaultResidentRecordingsFetchedProperties = [self defaultResidentRecordingsFetchedProperties];
  [_defaultRecordingsFetchRequest setPropertiesToFetch:defaultResidentRecordingsFetchedProperties];

  defaultSortDescriptors = [self defaultSortDescriptors];
  [_defaultRecordingsFetchRequest setSortDescriptors:defaultSortDescriptors];

  [_defaultRecordingsFetchRequest setFetchBatchSize:100];

  return _defaultRecordingsFetchRequest;
}

+ (id)userDefinedFoldersFetchRequest
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [self _foldersWithPredicateFormat:@"%K != NULL && %K != NULL", @"encryptedName", @"uuid"];
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

+ (id)playableRecordingsFetchRequestWithSubPredicate:(id)predicate
{
  predicateCopy = predicate;
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  playableRecordingsExcludingDeletedPredicate = [self playableRecordingsExcludingDeletedPredicate];
  [_defaultRecordingsFetchRequest setPredicate:playableRecordingsExcludingDeletedPredicate];

  defaultResidentRecordingsFetchedProperties = [self defaultResidentRecordingsFetchedProperties];
  [_defaultRecordingsFetchRequest setPropertiesToFetch:defaultResidentRecordingsFetchedProperties];

  defaultSortDescriptors = [self defaultSortDescriptors];
  [_defaultRecordingsFetchRequest setSortDescriptors:defaultSortDescriptors];

  [_defaultRecordingsFetchRequest setFetchBatchSize:100];
  if (predicateCopy)
  {
    predicate = [_defaultRecordingsFetchRequest predicate];
    v10 = [predicate rc_and:predicateCopy];
    [_defaultRecordingsFetchRequest setPredicate:v10];
  }

  return _defaultRecordingsFetchRequest;
}

+ (id)evictionDateBeforeFetchRequest:(id)request
{
  v10[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  v10[0] = @"evictionDate";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [_defaultRecordingsFetchRequest setPropertiesToFetch:v6];

  requestCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil AND %K <= %@", @"evictionDate", @"evictionDate", requestCopy];

  [_defaultRecordingsFetchRequest setPredicate:requestCopy];
  v8 = *MEMORY[0x277D85DE8];

  return _defaultRecordingsFetchRequest;
}

+ (id)allDeletedRecordingsFetchRequest
{
  deletedRecordingsPredicate = [self deletedRecordingsPredicate];
  v4 = [self _defaultRecordingsFetchRequest:deletedRecordingsPredicate];

  return v4;
}

+ (id)allCustomLabelsFetchRequest
{
  v6[2] = *MEMORY[0x277D85DE8];
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  v6[0] = @"customLabelForSorting";
  v6[1] = @"evictionDate";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [_defaultRecordingsFetchRequest setPropertiesToFetch:v3];

  v4 = *MEMORY[0x277D85DE8];

  return _defaultRecordingsFetchRequest;
}

+ (id)recordingWithNameFetchRequest:(id)request searchOption:(int)option
{
  v6 = MEMORY[0x277CCA9C0];
  requestCopy = request;
  v8 = [v6 expressionForKeyPath:@"customLabelForSorting"];
  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:requestCopy];

  v10 = MEMORY[0x277CCA918];
  v11 = _predicateOperatorTypeForSearchOption(option);
  v12 = [v10 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v11 options:_predicateOptionsForSearchOption(option)];
  v13 = [self _defaultRecordingsFetchRequest:v12];

  return v13;
}

+ (id)visibleRecordingsFetchRequest
{
  playablePredicate = [self playablePredicate];
  v4 = [self _defaultRecordingsFetchRequest:playablePredicate];

  defaultSortDescriptors = [self defaultSortDescriptors];
  [v4 setSortDescriptors:defaultSortDescriptors];

  return v4;
}

+ (id)recordingsNeedingAssetExportFetchRequest
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil && bitwiseAnd:with:(%K, %@) == %@", @"flags", @"flags", &unk_2881AE0D0, &unk_2881AE0D0];
  v4 = [self _defaultRecordingsFetchRequest:v3];

  v8[0] = @"flags";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setPropertiesToFetch:v5];

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)recordingsWithNilAudioFuturesFetchRequest
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = [self _recordingsWithPredicateFormat:@"%K == nil && %K == nil && %K == nil", @"audioFuture", @"mtAudioFuture", @"versionedAudioFuture"];
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

+ (id)recordingsWithTitleFetchRequest:(id)request
{
  requestCopy = @"nil";
  if (request)
  {
    requestCopy = request;
  }

  return [self _recordingsWithPredicateFormat:@"%K == %@", @"customLabelForSorting", requestCopy];
}

+ (id)foldersWithNameFetchRequest:(id)request searchOption:(int)option
{
  v6 = MEMORY[0x277CCA9C0];
  requestCopy = request;
  v8 = [v6 expressionForKeyPath:@"encryptedName"];
  v9 = [MEMORY[0x277CCA9C0] expressionForConstantValue:requestCopy];

  v10 = MEMORY[0x277CCA918];
  v11 = _predicateOperatorTypeForSearchOption(option);
  v12 = [v10 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:v11 options:_predicateOptionsForSearchOption(option)];
  v13 = [self _defaultFolderFetchRequest:v12];

  return v13;
}

+ (id)foldersWithhRankFetchRequest:(int64_t)request
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:request];
  v5 = [self _foldersWithPredicateFormat:@"%K == %@", @"rank", v4];

  return v5;
}

+ (id)allFoldersForSortingFetchRequest
{
  v6[2] = *MEMORY[0x277D85DE8];
  _defaultFolderFetchRequest = [self _defaultFolderFetchRequest];
  v6[0] = @"rank";
  v6[1] = @"uuid";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  [_defaultFolderFetchRequest setPropertiesToFetch:v3];

  v4 = *MEMORY[0x277D85DE8];

  return _defaultFolderFetchRequest;
}

+ (id)_defaultRecordingsFetchRequest:(id)request
{
  requestCopy = request;
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  [_defaultRecordingsFetchRequest setPredicate:requestCopy];

  return _defaultRecordingsFetchRequest;
}

+ (id)_defaultFolderFetchRequest:(id)request
{
  requestCopy = request;
  _defaultFolderFetchRequest = [self _defaultFolderFetchRequest];
  [_defaultFolderFetchRequest setPredicate:requestCopy];

  return _defaultFolderFetchRequest;
}

+ (id)_recordingsWithPredicateFormat:(id)format
{
  formatCopy = format;
  _defaultRecordingsFetchRequest = [self _defaultRecordingsFetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:formatCopy arguments:&v9];

  [_defaultRecordingsFetchRequest setPredicate:v6];

  return _defaultRecordingsFetchRequest;
}

+ (id)_foldersWithPredicateFormat:(id)format
{
  formatCopy = format;
  _defaultFolderFetchRequest = [self _defaultFolderFetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:formatCopy arguments:&v9];

  [_defaultFolderFetchRequest setPredicate:v6];

  return _defaultFolderFetchRequest;
}

@end