@interface PXSearchCPAnalyticsSession
+ (id)_bucketedTimeInterval:(double)a3;
+ (id)_cappedSearchCount:(unint64_t)a3;
+ (id)_stringForActionType:(unint64_t)a3;
+ (id)_stringForResultType:(unint64_t)a3;
+ (id)_stringForSessionBeginType:(unint64_t)a3;
- (PXSearchCPAnalyticsSession)initWithBeginType:(unint64_t)a3;
- (void)_logSuccess;
- (void)endAndInvalidateSession;
- (void)logActiveSearch:(id)a3;
- (void)logAssetAction:(unint64_t)a3 inResult:(unint64_t)a4;
- (void)logEnteredCollectionResult:(unint64_t)a3;
- (void)logNoSearchResultsFound;
- (void)logOneUpInTopAssets;
- (void)logSearchNextTokenSuggestionTapped;
- (void)logSearchWordCompletionTapped;
- (void)logSearchWordEmbeddingSelected;
- (void)logSearchWordEmbeddingsPresented;
@end

@implementation PXSearchCPAnalyticsSession

- (void)_logSuccess
{
  if ([(PXSearchCPAnalyticsSession *)self isValid]&& ![(PXSearchCPAnalyticsSession *)self successful])
  {
    [(PXSearchCPAnalyticsSession *)self setSuccessful:1];
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    v5 = v4;

    [(PXSearchCPAnalyticsSession *)self startTime];
    [(PXSearchCPAnalyticsSession *)self setTimeIntervalSuccess:v5 - v6];
    v7 = [(PXSearchCPAnalyticsSession *)self numberOfSearches];

    [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesUntilFirstSuccess:v7];
  }
}

- (void)logSearchWordCompletionTapped
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [(PXSearchCPAnalyticsSession *)self numberOfCompletionSelections]+ 1;

    [(PXSearchCPAnalyticsSession *)self setNumberOfCompletionSelections:v3];
  }
}

- (void)logSearchNextTokenSuggestionTapped
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [(PXSearchCPAnalyticsSession *)self numberOfNextTokenSelections]+ 1;

    [(PXSearchCPAnalyticsSession *)self setNumberOfNextTokenSelections:v3];
  }
}

- (void)logSearchWordEmbeddingSelected
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [(PXSearchCPAnalyticsSession *)self numberOfWordEmbeddingSelections]+ 1;

    [(PXSearchCPAnalyticsSession *)self setNumberOfWordEmbeddingSelections:v3];
  }
}

- (void)logSearchWordEmbeddingsPresented
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [(PXSearchCPAnalyticsSession *)self numberOfSearchesWithWordEmbeddings]+ 1;

    [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesWithWordEmbeddings:v3];
  }
}

- (void)logNoSearchResultsFound
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [(PXSearchCPAnalyticsSession *)self numberOfSearchesWithNoResults]+ 1;

    [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesWithNoResults:v3];
  }
}

- (void)logEnteredCollectionResult:(unint64_t)a3
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstEnteredCollection];
    if (v5 == 0.0)
    {
      v6 = [MEMORY[0x1E696AE30] processInfo];
      [v6 systemUptime];
      v8 = v7;

      [(PXSearchCPAnalyticsSession *)self startTime];
      [(PXSearchCPAnalyticsSession *)self setTimeIntervalFirstEnteredCollection:v8 - v9];
      [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesUntilFirstEnteredCollection:[(PXSearchCPAnalyticsSession *)self numberOfSearches]];
      [(PXSearchCPAnalyticsSession *)self setFirstEnteredCollectionResultType:a3];

      [(PXSearchCPAnalyticsSession *)self _logSuccess];
    }
  }
}

- (void)logOneUpInTopAssets
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    v5 = v4;

    [(PXSearchCPAnalyticsSession *)self startTime];
    v7 = v6;
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstOneUpInTopAssets];
    if (v8 == 0.0)
    {
      [(PXSearchCPAnalyticsSession *)self setTimeIntervalFirstOneUpInTopAssets:v5 - v7];
      [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesUntilFirstOneUpInTopAssets:[(PXSearchCPAnalyticsSession *)self numberOfSearches]];

      [(PXSearchCPAnalyticsSession *)self _logSuccess];
    }
  }
}

- (void)logAssetAction:(unint64_t)a3 inResult:(unint64_t)a4
{
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstAssetAction];
    if (v7 == 0.0)
    {
      v8 = [MEMORY[0x1E696AE30] processInfo];
      [v8 systemUptime];
      [(PXSearchCPAnalyticsSession *)self setTimeIntervalFirstAssetAction:?];

      [(PXSearchCPAnalyticsSession *)self setNumberOfSearchesUntilFirstAssetAction:[(PXSearchCPAnalyticsSession *)self numberOfSearches]];
      [(PXSearchCPAnalyticsSession *)self _logSuccess];
    }

    if (![(PXSearchCPAnalyticsSession *)self firstAssetActionType])
    {
      [(PXSearchCPAnalyticsSession *)self setFirstAssetActionType:a3];
    }

    if (![(PXSearchCPAnalyticsSession *)self firstAssetActionResultType])
    {

      [(PXSearchCPAnalyticsSession *)self setFirstAssetActionResultType:a4];
    }
  }
}

- (void)logActiveSearch:(id)a3
{
  v7 = a3;
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v4 = [(PXSearchCPAnalyticsSession *)self lastActiveSearch];
    v5 = [v7 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      v6 = [v7 copy];
      [(PXSearchCPAnalyticsSession *)self setLastActiveSearch:v6];

      [(PXSearchCPAnalyticsSession *)self setNumberOfSearches:[(PXSearchCPAnalyticsSession *)self numberOfSearches]+ 1];
    }
  }
}

- (void)endAndInvalidateSession
{
  v35 = *MEMORY[0x1E69E9840];
  if ([(PXSearchCPAnalyticsSession *)self isValid])
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    v5 = v4;

    v21 = [PXSearchCPAnalyticsSession _stringForSessionBeginType:[(PXSearchCPAnalyticsSession *)self beginType]];
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstOneUpInTopAssets];
    v31 = [MEMORY[0x1E696AD98] numberWithBool:v6 != 0.0];
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstEnteredCollection];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:v7 != 0.0];
    v29 = [PXSearchCPAnalyticsSession _stringForResultType:[(PXSearchCPAnalyticsSession *)self firstEnteredCollectionResultType]];
    v28 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearches]];
    v27 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesUntilFirstSuccess]];
    v26 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesUntilFirstAssetAction]];
    v19 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesUntilFirstOneUpInTopAssets]];
    v25 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesUntilFirstEnteredCollection]];
    v24 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesWithNoResults]];
    v23 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfSearchesWithWordEmbeddings]];
    v22 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfWordEmbeddingSelections]];
    v20 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfNextTokenSelections]];
    v18 = [PXSearchCPAnalyticsSession _cappedSearchCount:[(PXSearchCPAnalyticsSession *)self numberOfCompletionSelections]];
    [(PXSearchCPAnalyticsSession *)self startTime];
    v17 = [PXSearchCPAnalyticsSession _bucketedTimeInterval:v5 - v8];
    [(PXSearchCPAnalyticsSession *)self timeIntervalSuccess];
    v9 = [PXSearchCPAnalyticsSession _bucketedTimeInterval:?];
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstAssetAction];
    v10 = [PXSearchCPAnalyticsSession _bucketedTimeInterval:?];
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstOneUpInTopAssets];
    v16 = [PXSearchCPAnalyticsSession _bucketedTimeInterval:?];
    [(PXSearchCPAnalyticsSession *)self timeIntervalFirstEnteredCollection];
    v11 = [PXSearchCPAnalyticsSession _bucketedTimeInterval:?];
    [MEMORY[0x1E696AD98] numberWithBool:{-[PXSearchCPAnalyticsSession successful](self, "successful")}];
    v32[0] = @"beginType";
    v32[1] = @"oneUpInTopAssets";
    v33[0] = v21;
    v33[1] = v31;
    v32[2] = @"enterCollectionResult";
    v32[3] = @"firstEnteredCollectionType";
    v33[2] = v30;
    v33[3] = v29;
    v32[4] = @"searchCount";
    v32[5] = @"searchCountUntilFirstSuccess";
    v33[4] = v28;
    v33[5] = v27;
    v32[6] = @"searchCountUntilFirstAssetAction";
    v32[7] = @"searchCountUntilFirstOneUpTopAssets";
    v33[6] = v26;
    v33[7] = v19;
    v32[8] = @"searchCountUntilFirstEnteredCollection";
    v32[9] = @"searchesWithNoResultsCount";
    v33[8] = v25;
    v33[9] = v24;
    v32[10] = @"searchesWithWordEmbeddingsCount";
    v32[11] = @"wordEmbeddingSelectionCount";
    v33[10] = v23;
    v33[11] = v22;
    v32[12] = @"nextTokenSelectionCount";
    v32[13] = @"completionSelectionCount";
    v33[12] = v20;
    v33[13] = v18;
    v32[14] = @"timeInterval";
    v32[15] = @"timeIntervalUntilSuccess";
    v33[14] = v17;
    v33[15] = v9;
    v12 = v9;
    v32[16] = @"timeIntervalUntilFirstAssetInteraction";
    v32[17] = @"timeIntervalUntilFirstOneUpInTopAssets";
    v33[16] = v10;
    v33[17] = v16;
    v32[18] = @"timeIntervalUntilFirstEnteredCollection";
    v32[19] = @"success";
    v13 = v11;
    v34 = v33[18] = v11;
    v14 = v34;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:20];
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.search.session" withPayload:v15];
    [(PXSearchCPAnalyticsSession *)self setIsValid:0];
  }
}

- (PXSearchCPAnalyticsSession)initWithBeginType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PXSearchCPAnalyticsSession;
  v4 = [(PXSearchCPAnalyticsSession *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_beginType = a3;
    v4->_isValid = 1;
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    v5->_startTime = v7;
  }

  return v5;
}

+ (id)_cappedSearchCount:(unint64_t)a3
{
  if (a3 <= 0x1E)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  }

  else
  {
    v5 = &unk_1F190BF20;
  }

  return v5;
}

+ (id)_bucketedTimeInterval:(double)a3
{
  v3 = &unk_1F190BEA8;
  v4 = &unk_1F190BEC0;
  v5 = &unk_1F190BED8;
  v6 = &unk_1F190BF08;
  if (a3 < 60.0)
  {
    v6 = &unk_1F190BEF0;
  }

  if (a3 >= 30.0)
  {
    v5 = v6;
  }

  if (a3 >= 10.0)
  {
    v4 = v5;
  }

  if (a3 >= 5.0)
  {
    v3 = v4;
  }

  if (a3 == 0.0)
  {
    return &unk_1F190BE90;
  }

  else
  {
    return v3;
  }
}

+ (id)_stringForResultType:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"none";
  }

  else
  {
    return off_1E7737AE0[a3 - 1];
  }
}

+ (id)_stringForActionType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E7737AC0[a3 - 1];
  }
}

+ (id)_stringForSessionBeginType:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"none";
  }

  else
  {
    return off_1E7737A70[a3 - 1];
  }
}

@end