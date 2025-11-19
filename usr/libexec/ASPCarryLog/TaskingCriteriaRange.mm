@interface TaskingCriteriaRange
- (BOOL)_checkForWholeCriteriaArray:(id)a3;
- (BOOL)_elementExistsInStats:(id)a3 statsProvider:(id)a4 forCriteriaDict:(id)a5;
- (BOOL)_elementPassesWhiteListCheck:(id)a3 whiteListRef:(id)a4 forCriteriaDict:(id)a5;
- (BOOL)_evaluateWholeCriteriaArray:(id)a3;
- (BOOL)_validateElement:(id)a3 isOptional:(BOOL)isKindOfClass forCriteriaDict:(id)a5;
- (BOOL)allStatIdsExistInStatsProvider:(id)a3;
- (BOOL)evaluateCriteriaUsingStatsProvider:(id)a3 doWhiteListCheck:(BOOL)a4;
- (BOOL)passWhiteListCheck;
- (BOOL)validateCriteria;
- (float)_getElementValue:(id)a3 forElementName:(id)a4 criteriaDict:(id)a5;
- (float)getCriteriaValueUsingStatsProvider:(id)a3 forCriteriaDict:(id)a4;
- (id)initFromTaskingCrit:(id)a3;
@end

@implementation TaskingCriteriaRange

- (id)initFromTaskingCrit:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TaskingCriteriaRange;
  v6 = [(TaskingCriteriaRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_myTaskingCriteria, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)validateCriteria
{
  v3 = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v4 = [v3 count];

  if ((v4 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = &MSURetrievePreviousRestoreDate_ptr;
    v11 = *v33;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);

        v14 = v10[237];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 count] - 5 < 0xFFFFFFFFFFFFFFFCLL)
        {
          v5 = 0;
          goto LABEL_32;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v9 = v13;
        v15 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v24 = i;
          v25 = v11;
          v26 = v8;
          v27 = v6;
          v17 = 0;
          v18 = *v29;
          while (2)
          {
            v19 = 0;
            v20 = v17;
            do
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(v9);
              }

              v17 = *(*(&v28 + 1) + 8 * v19);

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_31;
              }

              v21 = [v17 objectForKeyedSubscript:@"START_RANGE"];

              if (v21)
              {
                if (![(TaskingCriteriaRange *)self _validateElement:@"START_RANGE" isOptional:0 forCriteriaDict:v17])
                {
                  goto LABEL_31;
                }
              }

              v22 = [v17 objectForKeyedSubscript:{@"END_RANGE", v24, v25, v26}];

              if (v22)
              {
                if (![(TaskingCriteriaRange *)self _validateElement:@"END_RANGE" isOptional:0 forCriteriaDict:v17])
                {
                  goto LABEL_31;
                }
              }

              else if (!v21)
              {
                goto LABEL_31;
              }

              if (![(TaskingCriteriaRange *)self _validateElement:@"A" isOptional:0 forCriteriaDict:v17]|| ![(TaskingCriteriaRange *)self _validateElement:@"B" isOptional:0 forCriteriaDict:v17]|| ![(TaskingCriteriaRange *)self _validateElement:@"C" isOptional:1 forCriteriaDict:v17])
              {
LABEL_31:

                v5 = 0;
                v6 = v27;
                goto LABEL_32;
              }

              v19 = v19 + 1;
              v20 = v17;
            }

            while (v16 != v19);
            v16 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v8 = v26;
          v6 = v27;
          v10 = &MSURetrievePreviousRestoreDate_ptr;
          i = v24;
          v11 = v25;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v5 = 1;
LABEL_32:
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_validateElement:(id)a3 isOptional:(BOOL)isKindOfClass forCriteriaDict:(id)a5
{
  v6 = [a5 objectForKeyedSubscript:a3];
  v7 = v6;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = [v6 objectForKeyedSubscript:@"TYPE"];
  if (![v8 isEqualToString:@"TYPE_STAT"])
  {
    if ([v8 isEqualToString:@"TYPE_CONST"])
    {
      v16 = [v7 objectForKeyedSubscript:@"VALUE"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = [v7 objectForKeyedSubscript:@"STAT_ID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v10 = [v7 objectForKeyedSubscript:@"STAT_TIME_DELTA"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if ((v11 & 1) == 0)
  {
LABEL_10:
    isKindOfClass = 0;
    goto LABEL_11;
  }

  v12 = [v7 objectForKeyedSubscript:@"START_IDX"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();
  v14 = [v7 objectForKeyedSubscript:@"END_IDX"];
  objc_opt_class();
  v15 = v13 ^ objc_opt_isKindOfClass();

  isKindOfClass = v15 ^ 1;
LABEL_11:

  return isKindOfClass;
}

- (BOOL)_checkForWholeCriteriaArray:(id)a3
{
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    v20 = *v27;
    do
    {
      v10 = 0;
      v21 = v7;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = v11;
        v12 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v23;
          while (2)
          {
            v16 = 0;
            v17 = v14;
            do
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v22 + 1) + 8 * v16);

              if (!v4[2](v4, v14))
              {

                v18 = 0;
                goto LABEL_19;
              }

              v16 = v16 + 1;
              v17 = v14;
            }

            while (v13 != v16);
            v13 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v9 = v20;
          v7 = v21;
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
    v18 = 1;
LABEL_19:
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)_evaluateWholeCriteriaArray:(id)a3
{
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v5 = 0;
    v6 = 0;
    v18 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = v8;
        v9 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v20 = v6;
          v11 = 0;
          v12 = *v22;
          v13 = 1;
          do
          {
            v14 = 0;
            v15 = v11;
            do
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v21 + 1) + 8 * v14);

              v13 &= v4[2](v4, v11);
              v14 = v14 + 1;
              v15 = v11;
            }

            while (v10 != v14);
            v10 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);

          v6 = v20;
        }

        else
        {
          v13 = 1;
        }

        v6 |= v13;
      }

      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (float)_getElementValue:(id)a3 forElementName:(id)a4 criteriaDict:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:a4];
  v9 = [v8 objectForKeyedSubscript:@"TYPE"];
  if ([v9 isEqualToString:@"TYPE_CONST"])
  {
    v10 = [v8 objectForKeyedSubscript:@"VALUE"];
    [v10 floatValue];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
    if ([v9 isEqualToString:@"TYPE_STAT"])
    {
      v13 = [v8 objectForKeyedSubscript:@"STAT_ID"];
      v14 = [v13 integerValue];

      v15 = [v8 objectForKeyedSubscript:@"STAT_TIME_DELTA"];
      v16 = [v15 unsignedIntValue];

      v17 = [v8 objectForKeyedSubscript:@"START_IDX"];

      if (v17)
      {
        v18 = [v8 objectForKeyedSubscript:@"START_IDX"];
        v19 = [v18 unsignedIntValue];

        v20 = [v8 objectForKeyedSubscript:@"END_IDX"];
        v21 = [v20 unsignedIntValue];

        [v7 getStatsDeltaForArr:v14 startIdx:v19 endIdx:v21 :v16];
      }

      else
      {
        [v7 getStatsDelta:v14 :v16];
      }

      v12 = v22;
    }
  }

  return v12;
}

- (float)getCriteriaValueUsingStatsProvider:(id)a3 forCriteriaDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TaskingCriteriaRange *)self _getElementValue:v6 forElementName:@"A" criteriaDict:v7];
  v9 = v8;
  [(TaskingCriteriaRange *)self _getElementValue:v6 forElementName:@"B" criteriaDict:v7];
  v11 = v10;
  v12 = [v7 objectForKeyedSubscript:@"C"];

  if (!v12)
  {
    v13 = 1.0;
LABEL_5:
    v14 = (v9 - v11) / v13;
    goto LABEL_6;
  }

  [(TaskingCriteriaRange *)self _getElementValue:v6 forElementName:@"C" criteriaDict:v7];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v14;
}

- (BOOL)_elementPassesWhiteListCheck:(id)a3 whiteListRef:(id)a4 forCriteriaDict:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:v7];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v12 = [v9 objectForKeyedSubscript:v7];
  v13 = [v12 objectForKeyedSubscript:@"TYPE"];
  v14 = [v13 isEqualToString:@"TYPE_STAT"];

  if (v14)
  {
    v15 = [v9 objectForKeyedSubscript:v7];
    v16 = [v15 objectForKeyedSubscript:@"STAT_ID"];
    v17 = [v8 containsObject:v16];
  }

  else
  {
LABEL_4:
    v17 = 1;
  }

  return v17;
}

- (BOOL)passWhiteListCheck
{
  v3 = objc_autoreleasePoolPush();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011D7C;
  v5[3] = &unk_10009CAD0;
  v6 = &off_1000D2F48;
  v7 = self;
  v8 = &off_1000D2F30;
  LOBYTE(self) = [(TaskingCriteriaRange *)self _checkForWholeCriteriaArray:v5];

  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)_elementExistsInStats:(id)a3 statsProvider:(id)a4 forCriteriaDict:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:v7];
  if (v10 && ([v9 objectForKeyedSubscript:v7], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", @"TYPE"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"TYPE_STAT"), v12, v11, v13))
  {
    v14 = [v10 objectForKeyedSubscript:@"STAT_ID"];
    v15 = [v14 integerValue];

    v16 = [v10 objectForKeyedSubscript:@"STAT_TIME_DELTA"];
    v17 = [v16 unsignedIntValue];

    v18 = [v10 objectForKeyedSubscript:@"START_IDX"];

    if (v18)
    {
      v19 = [v10 objectForKeyedSubscript:@"START_IDX"];
      v20 = [v19 unsignedIntValue];

      v22 = [v10 objectForKeyedSubscript:@"END_IDX"];
      v21 = [v22 unsignedIntValue];

      LOBYTE(v22) = [v8 doesStatIdExistOnDeviceForArr:v15 startIdx:v20 endIdx:v21 timeAgo:0];
      if (v17)
      {
        v23 = [v8 doesStatIdExistOnDeviceForArr:v15 startIdx:v20 endIdx:v21 timeAgo:v17];
LABEL_9:
        LOBYTE(v22) = v22 & v23;
      }
    }

    else
    {
      v22 = [v8 doesStatIdExistOnDevice:v15 timeAgo:0];
      if (v17)
      {
        v23 = [v8 doesStatIdExistOnDevice:v15 timeAgo:v17];
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v22) = 1;
  }

  return v22;
}

- (BOOL)allStatIdsExistInStatsProvider:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012164;
  v6[3] = &unk_10009CAD0;
  v7 = &off_1000D2F60;
  v8 = self;
  v9 = a3;
  v3 = v9;
  v4 = [(TaskingCriteriaRange *)v8 _checkForWholeCriteriaArray:v6];

  return v4;
}

- (BOOL)evaluateCriteriaUsingStatsProvider:(id)a3 doWhiteListCheck:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(TaskingCriteriaRange *)self validateCriteria])
  {
    v9 = [NSException exceptionWithName:@"CriteriaValidationFail" reason:@"Tasking criteria failed basic validation" userInfo:0];
    objc_exception_throw(v9);
  }

  if (v4 && ![(TaskingCriteriaRange *)self passWhiteListCheck])
  {
    v11 = [NSException exceptionWithName:@"NonWhitelistedStatsKey" reason:@"Non-whitelisted key exists in tasking information" userInfo:0];
    objc_exception_throw(v11);
  }

  if (![(TaskingCriteriaRange *)self allStatIdsExistInStatsProvider:v6])
  {
    v10 = [NSException exceptionWithName:@"StatsKeyNotOnDevice" reason:@"Stat key absent from device stats exists in tasking information" userInfo:0];
    objc_exception_throw(v10);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001259C;
  v12[3] = &unk_10009CAF8;
  v12[4] = self;
  v13 = v6;
  v7 = [(TaskingCriteriaRange *)self _evaluateWholeCriteriaArray:v12];

  return v7;
}

@end