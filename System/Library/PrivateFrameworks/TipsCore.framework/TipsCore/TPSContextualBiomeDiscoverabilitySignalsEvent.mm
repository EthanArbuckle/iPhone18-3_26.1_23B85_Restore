@interface TPSContextualBiomeDiscoverabilitySignalsEvent
- (id)_filteringPredicate;
- (id)filterHandler;
- (id)filterParametersForBiomeQuery;
- (id)publisherFromStartTime:(double)time;
@end

@implementation TPSContextualBiomeDiscoverabilitySignalsEvent

- (id)publisherFromStartTime:(double)time
{
  v4 = BiomeLibrary();
  discoverability = [v4 Discoverability];
  signals = [discoverability Signals];

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v8 = objc_alloc(MEMORY[0x1E698F2D0]);
  date = [MEMORY[0x1E695DF00] date];
  v10 = [v8 initWithStartDate:v7 endDate:date maxEvents:0 lastN:0 reversed:0];

  v11 = [signals publisherWithUseCase:@"FeatureDiscoverability" options:v10];

  return v11;
}

- (id)filterHandler
{
  _filteringPredicate = [(TPSContextualBiomeDiscoverabilitySignalsEvent *)self _filteringPredicate];
  v3 = _filteringPredicate;
  if (_filteringPredicate)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__TPSContextualBiomeDiscoverabilitySignalsEvent_filterHandler__block_invoke;
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

uint64_t __62__TPSContextualBiomeDiscoverabilitySignalsEvent_filterHandler__block_invoke(uint64_t a1, void *a2)
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
    v27.receiver = self;
    v27.super_class = TPSContextualBiomeDiscoverabilitySignalsEvent;
    filterParametersForBiomeQuery = [(TPSContextualBiomeEvent *)&v27 filterParametersForBiomeQuery];
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
    v11 = [filterInfo2 TPSSafeObjectForKey:@"contentIdentifier"];

    if (v11)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v13 = [filterInfo3 TPSSafeStringForKey:@"contentIdentifier"];
      [v9 setObject:v13 forKeyedSubscript:@"contentIdentifier"];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v15 = [filterInfo4 TPSSafeObjectForKey:@"context"];

    if (v15)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v17 = [filterInfo5 TPSSafeStringForKey:@"context"];
      [v9 setObject:v17 forKeyedSubscript:@"context"];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v19 = [filterInfo6 TPSSafeObjectForKey:@"osBuild"];

    if (v19)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v21 = [filterInfo7 TPSSafeStringForKey:@"osBuild"];
      [v9 setObject:v21 forKeyedSubscript:@"osBuild"];
    }

    filterInfo8 = [(TPSContextualBiomeEvent *)self filterInfo];
    v23 = [filterInfo8 TPSSafeDictionaryForKey:@"userInfo"];

    if (v23)
    {
      filterInfo9 = [(TPSContextualBiomeEvent *)self filterInfo];
      v25 = [filterInfo9 TPSSafeDictionaryForKey:@"userInfo"];

      if (v25)
      {
        [v9 setObject:v25 forKeyedSubscript:@"userInfo"];
      }
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
    v6 = [filterInfo2 TPSSafeObjectForKey:@"contentIdentifier"];

    if (v6)
    {
      filterInfo3 = [(TPSContextualBiomeEvent *)self filterInfo];
      v8 = [filterInfo3 TPSSafeStringForKey:@"contentIdentifier"];

      v9 = MEMORY[0x1E696AE18];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke;
      v44[3] = &unk_1E8101C38;
      v45 = v8;
      v10 = v8;
      v11 = [v9 predicateWithBlock:v44];
      [v4 addObject:v11];
    }

    filterInfo4 = [(TPSContextualBiomeEvent *)self filterInfo];
    v13 = [filterInfo4 TPSSafeObjectForKey:@"context"];

    if (v13)
    {
      filterInfo5 = [(TPSContextualBiomeEvent *)self filterInfo];
      v15 = [filterInfo5 TPSSafeStringForKey:@"context"];

      v16 = MEMORY[0x1E696AE18];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_2;
      v42[3] = &unk_1E8101C38;
      v43 = v15;
      v17 = v15;
      v18 = [v16 predicateWithBlock:v42];
      [v4 addObject:v18];
    }

    filterInfo6 = [(TPSContextualBiomeEvent *)self filterInfo];
    v20 = [filterInfo6 TPSSafeObjectForKey:@"context"];

    if (v20)
    {
      filterInfo7 = [(TPSContextualBiomeEvent *)self filterInfo];
      v22 = [filterInfo7 TPSSafeStringForKey:@"osBuild"];

      v23 = MEMORY[0x1E696AE18];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_3;
      v40[3] = &unk_1E8101C38;
      v41 = v22;
      v24 = v22;
      v25 = [v23 predicateWithBlock:v40];
      [v4 addObject:v25];
    }

    filterInfo8 = [(TPSContextualBiomeEvent *)self filterInfo];
    v27 = [filterInfo8 TPSSafeDictionaryForKey:@"userInfo"];

    if (v27)
    {
      filterInfo9 = [(TPSContextualBiomeEvent *)self filterInfo];
      v29 = [filterInfo9 TPSSafeDictionaryForKey:@"userInfo"];

      v30 = MEMORY[0x1E696AE18];
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_4;
      v38 = &unk_1E8101C38;
      v39 = v29;
      v31 = v29;
      v32 = [v30 predicateWithBlock:&v35];
      [v4 addObject:{v32, v35, v36, v37, v38}];
    }

    if ([v4 count])
    {
      v33 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 context];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 osBuild];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 userInfo];
  if (v7)
  {
  }

  else if (!*(a1 + 32))
  {
    v14 = 1;
    goto LABEL_12;
  }

  v8 = [v5 userInfo];
  if (v8)
  {
    v23 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:&v23];
    v10 = v23;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v11 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_5;
    v16[3] = &unk_1E8101C60;
    v12 = v9;
    v17 = v12;
    v18 = &v19;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
    if (v10)
    {
      v13 = +[TPSLogger default];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_4_cold_1(v10, v13);
      }
    }

    v14 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  return v14 & 1;
}

void __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_5(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v19];
    v10 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:v19];
      v13 = [v7 firstObjectCommonWithArray:v12];
      *(*(*(a1 + 40) + 8) + 24) = v13 != 0;

      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = [*(a1 + 32) objectForKeyedSubscript:v19];
  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  v17 = [*(a1 + 32) objectForKeyedSubscript:v19];
  v12 = v17;
  if (v16)
  {
    v18 = [v17 containsObject:v7];
  }

  else
  {
    v18 = [v7 isEqual:v17];
  }

  *(*(*(a1 + 40) + 8) + 24) = v18;
LABEL_9:

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __68__TPSContextualBiomeDiscoverabilitySignalsEvent__filteringPredicate__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_ERROR, "Failed to parse userInfoDictionary. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end