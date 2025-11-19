@interface ATXMotion
+ (BOOL)canPredictClipsForActivityStream:(id)a3;
+ (id)_getMotionStringFromCMMotionActivity:(id)a3;
+ (id)findMostCommonAndRecent:(id)a3 identityFunc:(id)a4;
+ (id)getMotionStringFromMotionType:(int64_t)a3;
+ (id)summarizeActivityStream:(id)a3;
+ (int64_t)_getMotionTypeFromCMMotionActivity:(id)a3;
- (ATXMotion)initWithMotionType:(int64_t)a3 stationary:(BOOL)a4 canPredictClipsGivenRecentMotion:(BOOL)a5;
- (id)print;
@end

@implementation ATXMotion

- (ATXMotion)initWithMotionType:(int64_t)a3 stationary:(BOOL)a4 canPredictClipsGivenRecentMotion:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = ATXMotion;
  result = [(ATXMotion *)&v9 init];
  if (result)
  {
    result->_motiontype = a3;
    result->_stationary = a4;
    result->_canPredictClipsGivenRecentMotion = a5;
  }

  return result;
}

+ (id)_getMotionStringFromCMMotionActivity:(id)a3
{
  if (a3)
  {
    v3 = [ATXMotion _getMotionTypeFromCMMotionActivity:?];
  }

  else
  {
    v3 = 4;
  }

  v4 = [ATXMotion getMotionStringFromMotionType:v3];

  return v4;
}

+ (int64_t)_getMotionTypeFromCMMotionActivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 walking])
    {
      v5 = 0;
    }

    else if ([v4 running])
    {
      v5 = 1;
    }

    else if ([v4 cycling])
    {
      v5 = 2;
    }

    else if ([v4 automotive])
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

+ (id)getMotionStringFromMotionType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279AB8D90[a3];
  }
}

- (id)print
{
  if (self->_stationary)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [(ATXMotion *)self getMotionString];
    v5 = [v3 initWithFormat:@"%@|stationary", v4];
  }

  else
  {
    v5 = [(ATXMotion *)self getMotionString];
  }

  return v5;
}

+ (id)summarizeActivityStream:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [ATXMotion findMostCommonAndRecent:v5 identityFunc:&__block_literal_global_83_0];
    v7 = [ATXMotion findMostCommonAndRecent:v6 identityFunc:&__block_literal_global_85];
    if ([v7 count])
    {
      v8 = [ATXMotion alloc];
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = -[ATXMotion initFromCMMotionActivity:canPredictClipsGivenRecentMotion:](v8, "initFromCMMotionActivity:canPredictClipsGivenRecentMotion:", v9, [a1 canPredictClipsForActivityStream:v5]);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __37__ATXMotion_summarizeActivityStream___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [ATXMotion _getMotionTypeFromCMMotionActivity:a2];

  return [v2 numberWithInteger:v3];
}

uint64_t __37__ATXMotion_summarizeActivityStream___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 stationary];

  return [v2 numberWithBool:v3];
}

+ (BOOL)canPredictClipsForActivityStream:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_6;
  }

  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__ATXMotion_canPredictClipsForActivityStream___block_invoke;
    v23[3] = &__block_descriptor_40_e26__16__0__CMMotionActivity_8l;
    v23[4] = a1;
    v6 = [v4 _pas_mappedArrayWithTransform:v23];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "Current motion activities: %@", buf, 0xCu);
  }

  v7 = [v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1}];
  v8 = [ATXMotion _getMotionTypeFromCMMotionActivity:v7];

  if (v8 == 3)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
LABEL_6:
    v10 = [v4 count];
    v11 = [v4 count];
    if (v10 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (v10 >= 2)
    {
      v13 = v11 - 2;
    }

    else
    {
      v13 = 0;
    }

    [v4 subarrayWithRange:{v13, v12}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v22 = 0u;
    v9 = [v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v15 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v14);
          }

          if (([ATXMotion _getMotionTypeFromCMMotionActivity:*(*(&v19 + 1) + 8 * i), v19]& 0xFFFFFFFFFFFFFFFBLL) == 0)
          {
            LOBYTE(v9) = 1;
            goto LABEL_22;
          }
        }

        v9 = [v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __46__ATXMotion_canPredictClipsForActivityStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() _getMotionTypeFromCMMotionActivity:v4];

  return [v5 getMotionStringFromMotionType:v7];
}

+ (id)findMostCommonAndRecent:(id)a3 identityFunc:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = 0;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = v6[2](v6, *(*(&v29 + 1) + 8 * i));
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = [v14 integerValue] + 1;

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
        [v7 setObject:v16 forKeyedSubscript:v13];

        if (v15 >= v10)
        {
          v17 = v13;

          v25 = v17;
          v10 = v15;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v25 = 0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__ATXMotion_findMostCommonAndRecent_identityFunc___block_invoke;
  v26[3] = &unk_279AB8D70;
  v27 = v25;
  v28 = v6;
  v18 = v6;
  v19 = v25;
  v20 = [obj indexesOfObjectsPassingTest:v26];
  v21 = [obj objectsAtIndexes:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

BOOL __50__ATXMotion_findMostCommonAndRecent_identityFunc___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v1 == v2;

  return v3;
}

@end