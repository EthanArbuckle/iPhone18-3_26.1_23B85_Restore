@interface TPSContextualBiomeGenmojiUserInteractionEvent
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)a3;
@end

@implementation TPSContextualBiomeGenmojiUserInteractionEvent

- (id)publisherFromStartTime:(double)a3
{
  v4 = BiomeLibrary();
  v5 = [v4 GenerativeExperiences];
  v6 = [v5 GeneratedImageFeatures];
  v7 = [v6 UserInteraction];

  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v9 = objc_alloc(MEMORY[0x1E698F2D0]);
  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [v9 initWithStartDate:v8 endDate:v10 maxEvents:0 lastN:0 reversed:0];

  v12 = [v7 publisherWithUseCase:@"FeatureDiscoverability" options:v11];

  return v12;
}

- (id)filterHandler
{
  v2 = [(TPSContextualBiomeGenmojiUserInteractionEvent *)self _filteringPredicate];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__TPSContextualBiomeGenmojiUserInteractionEvent_filterHandler__block_invoke;
    aBlock[3] = &unk_1E8101708;
    v7 = v2;
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
  v3 = [(TPSContextualBiomeEvent *)self filterInfo];

  if (v3)
  {
    v23.receiver = self;
    v23.super_class = TPSContextualBiomeGenmojiUserInteractionEvent;
    v4 = [(TPSContextualBiomeEvent *)&v23 filterParametersForBiomeQuery];
    v5 = [v4 mutableCopy];
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

    v10 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [v10 TPSSafeObjectForKey:@"personalization"];

    if (v11)
    {
      v12 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [v12 TPSSafeStringForKey:@"personalization"];
      [v9 setObject:v13 forKeyedSubscript:@"personalization"];
    }

    v14 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [v14 TPSSafeObjectForKey:@"result"];

    if (v15)
    {
      v16 = [(TPSContextualBiomeEvent *)self filterInfo];
      v17 = [v16 TPSSafeStringForKey:@"result"];
      [v9 setObject:v17 forKeyedSubscript:@"result"];
    }

    v18 = [(TPSContextualBiomeEvent *)self filterInfo];
    v19 = [v18 TPSSafeObjectForKey:@"feature"];

    if (v19)
    {
      v20 = [(TPSContextualBiomeEvent *)self filterInfo];
      v21 = [v20 TPSSafeStringForKey:@"feature"];
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
  v3 = [(TPSContextualBiomeEvent *)self filterInfo];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(TPSContextualBiomeEvent *)self filterInfo];
    v6 = [v5 TPSSafeStringForKey:@"personalization"];

    if (v6)
    {
      v7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [v7 TPSSafeStringForKey:@"personalization"];

      v9 = BMGeneratedImageUserInteractionPersonalizationFromString();
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __68__TPSContextualBiomeGenmojiUserInteractionEvent__filteringPredicate__block_invoke;
      v29[3] = &__block_descriptor_36_e58_B24__0__BMGeneratedImageUserInteraction_8__NSDictionary_16l;
      v30 = v9;
      v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v29];
      [v4 addObject:v10];
    }

    v11 = [(TPSContextualBiomeEvent *)self filterInfo];
    v12 = [v11 TPSSafeStringForKey:@"result"];

    if (v12)
    {
      v13 = [(TPSContextualBiomeEvent *)self filterInfo];
      v14 = [v13 TPSSafeStringForKey:@"result"];

      v15 = BMGeneratedImageUserInteractionResultFromString();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__TPSContextualBiomeGenmojiUserInteractionEvent__filteringPredicate__block_invoke_2;
      v27[3] = &__block_descriptor_36_e58_B24__0__BMGeneratedImageUserInteraction_8__NSDictionary_16l;
      v28 = v15;
      v16 = [MEMORY[0x1E696AE18] predicateWithBlock:v27];
      [v4 addObject:v16];
    }

    v17 = [(TPSContextualBiomeEvent *)self filterInfo];
    v18 = [v17 TPSSafeStringForKey:@"feature"];

    if (v18)
    {
      v19 = [(TPSContextualBiomeEvent *)self filterInfo];
      v20 = [v19 TPSSafeStringForKey:@"feature"];

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