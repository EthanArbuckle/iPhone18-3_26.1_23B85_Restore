@interface PCLocationsWindow
- (PCLocationsWindow)initWithRawHistory:(id)history maxUncertainty:(double)uncertainty;
- (id)fixAtOrAfter:(double)after;
- (id)fixAtOrBefore:(double)before;
@end

@implementation PCLocationsWindow

- (PCLocationsWindow)initWithRawHistory:(id)history maxUncertainty:(double)uncertainty
{
  historyCopy = history;
  v16.receiver = self;
  v16.super_class = PCLocationsWindow;
  v8 = [(PCLocationsWindow *)&v16 init];
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__PCLocationsWindow_initWithRawHistory_maxUncertainty___block_invoke;
    v15[3] = &__block_descriptor_48_e45_B24__0__PCPLocationHistory_8__NSDictionary_16l;
    v15[4] = a2;
    *&v15[5] = uncertainty;
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:v15];
    v10 = [historyCopy filteredArrayUsingPredicate:v9];
    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global];
    sorted = v8->_sorted;
    v8->_sorted = v11;

    v13 = v8;
  }

  return v8;
}

BOOL __55__PCLocationsWindow_initWithRawHistory_maxUncertainty___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 location];
  v5 = [v4 hasLocationHorizontalUncertaintyMeters];

  if (v5)
  {
    v6 = [v3 location];
    [v6 locationHorizontalUncertaintyMeters];
    v8 = v7 <= *(a1 + 40);
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryDynamicsWeighting);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 32));
      [v3 timeCFAbsolute];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "[%@] location fix at time, %.2f doesn't have uncertainty, will be filtered", &v14, 0x16u);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __55__PCLocationsWindow_initWithRawHistory_maxUncertainty___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timeCFAbsolute];
  v7 = v6;
  [v5 timeCFAbsolute];
  if (v7 >= v8)
  {
    [v4 timeCFAbsolute];
    v11 = v10;
    [v5 timeCFAbsolute];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)fixAtOrBefore:(double)before
{
  sorted = [(PCLocationsWindow *)self sorted];
  v6 = [sorted count];

  if (v6 - 1 < 0)
  {
LABEL_4:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      --v6;
      sorted2 = [(PCLocationsWindow *)self sorted];
      v8 = [sorted2 objectAtIndexedSubscript:v6];

      [v8 timeCFAbsolute];
      if (v9 <= before)
      {
        break;
      }

      if (v6 <= 0)
      {
        goto LABEL_4;
      }
    }
  }

  return v8;
}

- (id)fixAtOrAfter:(double)after
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sorted = [(PCLocationsWindow *)self sorted];
  v5 = [sorted countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(sorted);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 timeCFAbsolute];
        if (v9 >= after)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [sorted countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

@end