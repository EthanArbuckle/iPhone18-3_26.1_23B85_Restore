@interface TPSContextualBiomeGenmojiUserInteractionEvent
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)time;
@end

@implementation TPSContextualBiomeGenmojiUserInteractionEvent

- (id)publisherFromStartTime:(double)time
{
  v4 = BiomeLibrary();
  generativeExperiences = [v4 GenerativeExperiences];
  generatedImageFeatures = [generativeExperiences GeneratedImageFeatures];
  userInteraction = [generatedImageFeatures UserInteraction];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v9 = objc_alloc(MEMORY[0x1E698F2D0]);
  date = [MEMORY[0x1E695DF00] date];
  v11 = [v9 initWithStartDate:v8 endDate:date maxEvents:0 lastN:0 reversed:0];

  v12 = [userInteraction publisherWithUseCase:@"FeatureDiscoverability" options:v11];

  return v12;
}

- (id)filterHandler
{
  _filteringPredicate = [(TPSContextualBiomeGenmojiUserInteractionEvent *)self _filteringPredicate];
  v3 = _filteringPredicate;
  if (_filteringPredicate)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__TPSContextualBiomeGenmojiUserInteractionEvent_filterHandler__block_invoke;
    aBlock[3] = &unk_1E8101708;
    v7 = _filteringPredicate;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __62__TPSContextualBiomeGenmojiUserInteractionEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) evaluateWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filterParametersForBiomeQuery
{
  filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];

  if (filterInfo)
  {
    v23.receiver = self;
    v23.super_class = TPSContextualBiomeGenmojiUserInteractionEvent;
    filterParametersForBiomeQuery = [(TPSContextualBiomeEvent *)&v23 filterParametersForBiomeQuery];
    v5 = [filterParametersForBiomeQuery mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v9 = v7;

    filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [filterInfo2 TPSSafeObjectForKey:@"personalization"];

    if (v11)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [filterInfo3 TPSSafeStringForKey:@"personalization"];
      [v9 setObject:v13 forKeyedSubscript:@"personalization"];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [filterInfo4 TPSSafeObjectForKey:@"result"];

    if (v15)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v17 = [filterInfo5 TPSSafeStringForKey:@"result"];
      [v9 setObject:v17 forKeyedSubscript:@"result"];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v19 = [filterInfo6 TPSSafeObjectForKey:@"feature"];

    if (v19)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v21 = [filterInfo7 TPSSafeStringForKey:@"feature"];
      [v9 setObject:v21 forKeyedSubscript:@"feature"];
    }

    v8 = [v9 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_filteringPredicate
{
  filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];

  if (filterInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
    v6 = [filterInfo2 TPSSafeStringForKey:@"personalization"];

    if (v6)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [filterInfo3 TPSSafeStringForKey:@"personalization"];

      v9 = BMGeneratedImageUserInteractionPersonalizationFromString();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __68__TPSContextualBiomeGenmojiUserInteractionEvent__filteringPredicate__block_invoke;
      v29[3] = &__block_descriptor_36_e58_B24__0__BMGeneratedImageUserInteraction_8__NSDictionary_16l;
      v30 = v9;
      v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
      [v4 addObject:v10];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v12 = [filterInfo4 TPSSafeStringForKey:@"result"];

    if (v12)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v14 = [filterInfo5 TPSSafeStringForKey:@"result"];

      v15 = BMGeneratedImageUserInteractionResultFromString();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__TPSContextualBiomeGenmojiUserInteractionEvent__filteringPredicate__block_invoke_2;
      v27[3] = &__block_descriptor_36_e58_B24__0__BMGeneratedImageUserInteraction_8__NSDictionary_16l;
      v28 = v15;
      v16 = [MEMORY[0x1E696AE18] predicateWithBlock:v27];
      [v4 addObject:v16];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v18 = [filterInfo6 TPSSafeStringForKey:@"feature"];

    if (v18)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v20 = [filterInfo7 TPSSafeStringForKey:@"feature"];

      v21 = BMGeneratedImageUserInteractionFeatureFromString();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __68__TPSContextualBiomeGenmojiUserInteractionEvent__filteringPredicate__block_invoke_3;
      v25[3] = &__block_descriptor_36_e58_B24__0__BMGeneratedImageUserInteraction_8__NSDictionary_16l;
      v26 = v21;
      v22 = [MEMORY[0x1E696AE18] predicateWithBlock:v25];
      [v4 addObject:v22];
    }

    if ([v4 count])
    {
      v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end