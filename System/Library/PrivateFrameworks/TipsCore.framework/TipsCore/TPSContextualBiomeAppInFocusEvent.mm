@interface TPSContextualBiomeAppInFocusEvent
+ (id)observationDateFromEvent:(id)a3;
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)a3;
@end

@implementation TPSContextualBiomeAppInFocusEvent

+ (id)observationDateFromEvent:(id)a3
{
  v3 = [a3 eventBody];
  v4 = [v3 absoluteTimestamp];

  return v4;
}

- (id)publisherFromStartTime:(double)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = objc_alloc(MEMORY[0x1E698F2D0]);
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 initWithStartDate:v3 endDate:v5 maxEvents:0 lastN:0 reversed:0];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  v9 = [v8 InFocus];

  v29 = 0;
  v10 = [v9 remoteDevicesWithError:&v29];
  v11 = v29;
  if (v11)
  {
    v12 = +[TPSLogger default];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v11;
      _os_log_impl(&dword_1C00A7000, v12, OS_LOG_TYPE_DEFAULT, "Defaulting to base App.InFocus publisher. Unable to retrieve remote devices: %@", buf, 0xCu);
    }

    v13 = [v9 publisherWithOptions:v6];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count") + 1}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v10;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v9 publisherForDevice:*(*(&v25 + 1) + 8 * i) withUseCase:@"FeatureDiscoverability" options:{v6, v24}];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v21 = [v9 publisherWithOptions:v6];
    [v14 addObject:v21];

    v13 = [objc_alloc(MEMORY[0x1E698F0D0]) initWithPublishers:v14];
    v10 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)filterHandler
{
  v2 = [(TPSContextualBiomeAppInFocusEvent *)self _filteringPredicate];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__TPSContextualBiomeAppInFocusEvent_filterHandler__block_invoke;
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

uint64_t __50__TPSContextualBiomeAppInFocusEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
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
    v20.receiver = self;
    v20.super_class = TPSContextualBiomeAppInFocusEvent;
    v4 = [(TPSContextualBiomeEvent *)&v20 filterParametersForBiomeQuery];
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
    v11 = [v10 TPSSafeObjectForKey:@"launchReason"];

    if (v11)
    {
      v12 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [v12 TPSSafeStringForKey:@"launchReason"];
      [v9 setObject:v13 forKeyedSubscript:@"launchReason"];
    }

    v14 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [v14 TPSSafeUIntegerForKey:@"launchType"];

    if (v15)
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = [(TPSContextualBiomeEvent *)self filterInfo];
      v18 = [v16 numberWithInt:{objc_msgSend(v17, "TPSSafeIntForKey:", @"launchType"}];
      [v9 setObject:v18 forKeyedSubscript:@"launchType"];
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
    v6 = [v5 TPSSafeObjectForKey:@"isStarting"];

    if (v6)
    {
      v7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [v7 TPSSafeBoolForKey:@"isStarting"];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke;
      v37[3] = &__block_descriptor_33_e39_B24__0__BMAppInFocus_8__NSDictionary_16l;
      v38 = v8;
      v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v37];
      [v4 addObject:v9];
    }

    v10 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [v10 TPSSafeObjectForKey:@"bundleID"];

    if (v11)
    {
      v12 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [v12 TPSSafeStringForKey:@"bundleID"];

      v14 = MEMORY[0x1E696AE18];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke_2;
      v35[3] = &unk_1E8101960;
      v36 = v13;
      v15 = v13;
      v16 = [v14 predicateWithBlock:v35];
      [v4 addObject:v16];
    }

    v17 = [(TPSContextualBiomeEvent *)self filterInfo];
    v18 = [v17 TPSSafeObjectForKey:@"launchReason"];

    if (v18)
    {
      v19 = [(TPSContextualBiomeEvent *)self filterInfo];
      v20 = [v19 TPSSafeStringForKey:@"launchReason"];

      v21 = MEMORY[0x1E696AE18];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke_3;
      v33[3] = &unk_1E8101960;
      v34 = v20;
      v22 = v20;
      v23 = [v21 predicateWithBlock:v33];
      [v4 addObject:v23];
    }

    v24 = [(TPSContextualBiomeEvent *)self filterInfo];
    v25 = [v24 TPSSafeObjectForKey:@"launchType"];

    if (v25)
    {
      v26 = [(TPSContextualBiomeEvent *)self filterInfo];
      v27 = [v26 TPSSafeIntForKey:@"launchType"];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke_4;
      v31[3] = &__block_descriptor_36_e39_B24__0__BMAppInFocus_8__NSDictionary_16l;
      v32 = v27;
      v28 = [MEMORY[0x1E696AE18] predicateWithBlock:v31];
      [v4 addObject:v28];
    }

    if ([v4 count])
    {
      v29 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __56__TPSContextualBiomeAppInFocusEvent__filteringPredicate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 launchReason];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end