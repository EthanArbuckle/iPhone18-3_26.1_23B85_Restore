@interface TPSContextualBiomeAppLaunchEvent
+ (id)observationDateFromEvent:(id)event;
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)time;
@end

@implementation TPSContextualBiomeAppLaunchEvent

+ (id)observationDateFromEvent:(id)event
{
  eventBody = [event eventBody];
  absoluteTimestamp = [eventBody absoluteTimestamp];

  return absoluteTimestamp;
}

- (id)publisherFromStartTime:(double)time
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v4 = objc_alloc(MEMORY[0x1E698F2D0]);
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 initWithStartDate:v3 endDate:date maxEvents:0 lastN:0 reversed:0];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];
  v10 = [inFocus publisherWithOptions:v6];

  return v10;
}

- (id)filterHandler
{
  _filteringPredicate = [(TPSContextualBiomeAppLaunchEvent *)self _filteringPredicate];
  v3 = _filteringPredicate;
  if (_filteringPredicate)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__TPSContextualBiomeAppLaunchEvent_filterHandler__block_invoke;
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

uint64_t __49__TPSContextualBiomeAppLaunchEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
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
    v20.receiver = self;
    v20.super_class = TPSContextualBiomeAppLaunchEvent;
    filterParametersForBiomeQuery = [(TPSContextualBiomeEvent *)&v20 filterParametersForBiomeQuery];
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
    v11 = [filterInfo2 TPSSafeObjectForKey:@"launchReason"];

    if (v11)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [filterInfo3 TPSSafeStringForKey:@"launchReason"];
      [v9 setObject:v13 forKeyedSubscript:@"launchReason"];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [filterInfo4 TPSSafeUIntegerForKey:@"launchType"];

    if (v15)
    {
      v16 = MEMORY[0x1E696AD98];
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v18 = [v16 numberWithInt:{objc_msgSend(filterInfo5, "TPSSafeIntForKey:", @"launchType"}];
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
  filterInfo = [(TPSContextualBiomeEvent *)self filterInfo];

  if (filterInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    filterInfo2 = [(TPSContextualBiomeEvent *)self filterInfo];
    v6 = [filterInfo2 TPSSafeObjectForKey:@"isStarting"];

    if (v6)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [filterInfo3 TPSSafeBoolForKey:@"isStarting"];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke;
      v37[3] = &__block_descriptor_33_e39_B24__0__BMAppInFocus_8__NSDictionary_16l;
      v38 = v8;
      v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v37];
      [v4 addObject:v9];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v11 = [filterInfo4 TPSSafeObjectForKey:@"bundleID"];

    if (v11)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [filterInfo5 TPSSafeStringForKey:@"bundleID"];

      v14 = MEMORY[0x1E696AE18];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke_2;
      v35[3] = &unk_1E8101960;
      v36 = v13;
      v15 = v13;
      v16 = [v14 predicateWithBlock:v35];
      [v4 addObject:v16];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v18 = [filterInfo6 TPSSafeObjectForKey:@"launchReason"];

    if (v18)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v20 = [filterInfo7 TPSSafeStringForKey:@"launchReason"];

      v21 = MEMORY[0x1E696AE18];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke_3;
      v33[3] = &unk_1E8101960;
      v34 = v20;
      v22 = v20;
      v23 = [v21 predicateWithBlock:v33];
      [v4 addObject:v23];
    }

    filterInfo8 = [(TPSContextualBiomeEvent *)self filterInfo];
    v25 = [filterInfo8 TPSSafeObjectForKey:@"launchType"];

    if (v25)
    {
      filterInfo9 = [(TPSContextualBiomeEvent *)self filterInfo];
      v27 = [filterInfo9 TPSSafeUIntegerForKey:@"launchType"];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke_4;
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

uint64_t __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bundleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __55__TPSContextualBiomeAppLaunchEvent__filteringPredicate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 launchReason];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end