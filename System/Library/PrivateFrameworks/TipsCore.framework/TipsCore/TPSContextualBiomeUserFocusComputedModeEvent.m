@interface TPSContextualBiomeUserFocusComputedModeEvent
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)a3;
@end

@implementation TPSContextualBiomeUserFocusComputedModeEvent

- (id)publisherFromStartTime:(double)a3
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = objc_alloc(MEMORY[0x1E698F2D0]);
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 initWithStartDate:v3 endDate:v5 maxEvents:0 lastN:0 reversed:0];

  v7 = BiomeLibrary();
  v8 = [v7 UserFocus];
  v9 = [v8 ComputedMode];
  v10 = [v9 publisherWithOptions:v6];

  return v10;
}

- (id)filterHandler
{
  v2 = [(TPSContextualBiomeUserFocusComputedModeEvent *)self _filteringPredicate];
  v3 = v2;
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__TPSContextualBiomeUserFocusComputedModeEvent_filterHandler__block_invoke;
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

uint64_t __61__TPSContextualBiomeUserFocusComputedModeEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
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
    v30.receiver = self;
    v30.super_class = TPSContextualBiomeUserFocusComputedModeEvent;
    v4 = [(TPSContextualBiomeEvent *)&v30 filterParametersForBiomeQuery];
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
    v11 = [v10 TPSSafeObjectForKey:@"modeIdentifier"];

    if (v11)
    {
      v12 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [v12 TPSSafeStringForKey:@"modeIdentifier"];
      [v9 setObject:v13 forKeyedSubscript:@"modeIdentifier"];
    }

    v14 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [v14 TPSSafeObjectForKey:@"type"];

    if (v15)
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = [(TPSContextualBiomeEvent *)self filterInfo];
      v18 = [v16 numberWithInt:{objc_msgSend(v17, "TPSSafeIntForKey:", @"type"}];
      [v9 setObject:v18 forKeyedSubscript:@"type"];
    }

    v19 = [(TPSContextualBiomeEvent *)self filterInfo];
    v20 = [v19 TPSSafeObjectForKey:@"updateReason"];

    if (v20)
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = [(TPSContextualBiomeEvent *)self filterInfo];
      v23 = [v21 numberWithInteger:{objc_msgSend(v22, "TPSSafeUIntegerForKey:", @"updateReason"}];
      [v9 setObject:v23 forKeyedSubscript:@"type"];
    }

    v24 = [(TPSContextualBiomeEvent *)self filterInfo];
    v25 = [v24 TPSSafeObjectForKey:@"updateSource"];

    if (v25)
    {
      v26 = MEMORY[0x1E696AD98];
      v27 = [(TPSContextualBiomeEvent *)self filterInfo];
      v28 = [v26 numberWithInteger:{objc_msgSend(v27, "TPSSafeIntForKey:", @"updateSource"}];
      [v9 setObject:v28 forKeyedSubscript:@"updateSource"];
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
    v6 = [v5 TPSSafeStringForKey:@"modeIdentifier"];

    if (v6)
    {
      v7 = MEMORY[0x1E696AE18];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke;
      v39[3] = &unk_1E8101E08;
      v40 = v6;
      v8 = [v7 predicateWithBlock:v39];
      [v4 addObject:v8];
    }

    v9 = [(TPSContextualBiomeEvent *)self filterInfo];
    v10 = [v9 TPSSafeObjectForKey:@"type"];

    if (v10)
    {
      v11 = [(TPSContextualBiomeEvent *)self filterInfo];
      v12 = [v11 TPSSafeIntegerForKey:@"type"];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke_2;
      v37[3] = &__block_descriptor_36_e50_B24__0__BMUserFocusModeComputed_8__NSDictionary_16l;
      v38 = v12;
      v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v37];
      [v4 addObject:v13];
    }

    v14 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [v14 TPSSafeObjectForKey:@"updateReason"];

    if (v15)
    {
      v16 = [(TPSContextualBiomeEvent *)self filterInfo];
      v17 = [v16 TPSSafeUIntegerForKey:@"updateReason"];

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke_3;
      v35[3] = &__block_descriptor_36_e50_B24__0__BMUserFocusModeComputed_8__NSDictionary_16l;
      v36 = v17;
      v18 = [MEMORY[0x1E696AE18] predicateWithBlock:v35];
      [v4 addObject:v18];
    }

    v19 = [(TPSContextualBiomeEvent *)self filterInfo];
    v20 = [v19 TPSSafeObjectForKey:@"updateSource"];

    if (v20)
    {
      v21 = [(TPSContextualBiomeEvent *)self filterInfo];
      v22 = [v21 TPSSafeIntegerForKey:@"updateSource"];

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke_4;
      v33[3] = &__block_descriptor_36_e50_B24__0__BMUserFocusModeComputed_8__NSDictionary_16l;
      v34 = v22;
      v23 = [MEMORY[0x1E696AE18] predicateWithBlock:v33];
      [v4 addObject:v23];
    }

    v24 = [(TPSContextualBiomeEvent *)self filterInfo];
    v25 = [v24 TPSSafeObjectForKey:@"isStarting"];

    if (v25)
    {
      v26 = [(TPSContextualBiomeEvent *)self filterInfo];
      v27 = [v26 TPSSafeBoolForKey:@"isStarting"];

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke_5;
      v31[3] = &__block_descriptor_33_e50_B24__0__BMUserFocusModeComputed_8__NSDictionary_16l;
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

uint64_t __67__TPSContextualBiomeUserFocusComputedModeEvent__filteringPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 semanticModeIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end