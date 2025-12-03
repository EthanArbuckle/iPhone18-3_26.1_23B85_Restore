@interface TaskingCriteriaRange
- (BOOL)_checkForWholeCriteriaArray:(id)array;
- (BOOL)_elementExistsInStats:(id)stats statsProvider:(id)provider forCriteriaDict:(id)dict;
- (BOOL)_elementPassesWhiteListCheck:(id)check whiteListRef:(id)ref forCriteriaDict:(id)dict;
- (BOOL)_evaluateWholeCriteriaArray:(id)array;
- (BOOL)_validateElement:(id)element isOptional:(BOOL)isKindOfClass forCriteriaDict:(id)dict;
- (BOOL)allStatIdsExistInStatsProvider:(id)provider;
- (BOOL)evaluateCriteriaUsingStatsProvider:(id)provider doWhiteListCheck:(BOOL)check;
- (BOOL)passWhiteListCheck;
- (BOOL)validateCriteria;
- (float)_getElementValue:(id)value forElementName:(id)name criteriaDict:(id)dict;
- (float)getCriteriaValueUsingStatsProvider:(id)provider forCriteriaDict:(id)dict;
- (id)initFromTaskingCrit:(id)crit;
@end

@implementation TaskingCriteriaRange

- (id)initFromTaskingCrit:(id)crit
{
  critCopy = crit;
  v10.receiver = self;
  v10.super_class = TaskingCriteriaRange;
  v6 = [(TaskingCriteriaRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_myTaskingCriteria, crit);
    v8 = v7;
  }

  return v7;
}

- (BOOL)validateCriteria
{
  myTaskingCriteria = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v4 = [myTaskingCriteria count];

  if ((v4 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  myTaskingCriteria2 = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v7 = [myTaskingCriteria2 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(myTaskingCriteria2);
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
          v27 = myTaskingCriteria2;
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
                myTaskingCriteria2 = v27;
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
          myTaskingCriteria2 = v27;
          v10 = &MSURetrievePreviousRestoreDate_ptr;
          i = v24;
          v11 = v25;
        }
      }

      v8 = [myTaskingCriteria2 countByEnumeratingWithState:&v32 objects:v37 count:16];
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

- (BOOL)_validateElement:(id)element isOptional:(BOOL)isKindOfClass forCriteriaDict:(id)dict
{
  v6 = [dict objectForKeyedSubscript:element];
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

- (BOOL)_checkForWholeCriteriaArray:(id)array
{
  arrayCopy = array;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  myTaskingCriteria = [(TaskingCriteriaRange *)self myTaskingCriteria];
  v6 = [myTaskingCriteria countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(myTaskingCriteria);
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

              if (!arrayCopy[2](arrayCopy, v14))
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
      v7 = [myTaskingCriteria countByEnumeratingWithState:&v26 objects:v31 count:16];
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

- (BOOL)_evaluateWholeCriteriaArray:(id)array
{
  arrayCopy = array;
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

              v13 &= arrayCopy[2](arrayCopy, v11);
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

- (float)_getElementValue:(id)value forElementName:(id)name criteriaDict:(id)dict
{
  valueCopy = value;
  v8 = [dict objectForKeyedSubscript:name];
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
      integerValue = [v13 integerValue];

      v15 = [v8 objectForKeyedSubscript:@"STAT_TIME_DELTA"];
      unsignedIntValue = [v15 unsignedIntValue];

      v17 = [v8 objectForKeyedSubscript:@"START_IDX"];

      if (v17)
      {
        v18 = [v8 objectForKeyedSubscript:@"START_IDX"];
        unsignedIntValue2 = [v18 unsignedIntValue];

        v20 = [v8 objectForKeyedSubscript:@"END_IDX"];
        unsignedIntValue3 = [v20 unsignedIntValue];

        [valueCopy getStatsDeltaForArr:integerValue startIdx:unsignedIntValue2 endIdx:unsignedIntValue3 :unsignedIntValue];
      }

      else
      {
        [valueCopy getStatsDelta:integerValue :unsignedIntValue];
      }

      v12 = v22;
    }
  }

  return v12;
}

- (float)getCriteriaValueUsingStatsProvider:(id)provider forCriteriaDict:(id)dict
{
  providerCopy = provider;
  dictCopy = dict;
  [(TaskingCriteriaRange *)self _getElementValue:providerCopy forElementName:@"A" criteriaDict:dictCopy];
  v9 = v8;
  [(TaskingCriteriaRange *)self _getElementValue:providerCopy forElementName:@"B" criteriaDict:dictCopy];
  v11 = v10;
  v12 = [dictCopy objectForKeyedSubscript:@"C"];

  if (!v12)
  {
    v13 = 1.0;
LABEL_5:
    v14 = (v9 - v11) / v13;
    goto LABEL_6;
  }

  [(TaskingCriteriaRange *)self _getElementValue:providerCopy forElementName:@"C" criteriaDict:dictCopy];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v14;
}

- (BOOL)_elementPassesWhiteListCheck:(id)check whiteListRef:(id)ref forCriteriaDict:(id)dict
{
  checkCopy = check;
  refCopy = ref;
  dictCopy = dict;
  v10 = [dictCopy objectForKeyedSubscript:checkCopy];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v12 = [dictCopy objectForKeyedSubscript:checkCopy];
  v13 = [v12 objectForKeyedSubscript:@"TYPE"];
  v14 = [v13 isEqualToString:@"TYPE_STAT"];

  if (v14)
  {
    v15 = [dictCopy objectForKeyedSubscript:checkCopy];
    v16 = [v15 objectForKeyedSubscript:@"STAT_ID"];
    v17 = [refCopy containsObject:v16];
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
  selfCopy = self;
  v8 = &off_1000D2F30;
  LOBYTE(self) = [(TaskingCriteriaRange *)self _checkForWholeCriteriaArray:v5];

  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)_elementExistsInStats:(id)stats statsProvider:(id)provider forCriteriaDict:(id)dict
{
  statsCopy = stats;
  providerCopy = provider;
  dictCopy = dict;
  v10 = [dictCopy objectForKeyedSubscript:statsCopy];
  if (v10 && ([dictCopy objectForKeyedSubscript:statsCopy], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", @"TYPE"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"TYPE_STAT"), v12, v11, v13))
  {
    v14 = [v10 objectForKeyedSubscript:@"STAT_ID"];
    integerValue = [v14 integerValue];

    v16 = [v10 objectForKeyedSubscript:@"STAT_TIME_DELTA"];
    unsignedIntValue = [v16 unsignedIntValue];

    v18 = [v10 objectForKeyedSubscript:@"START_IDX"];

    if (v18)
    {
      v19 = [v10 objectForKeyedSubscript:@"START_IDX"];
      unsignedIntValue2 = [v19 unsignedIntValue];

      v22 = [v10 objectForKeyedSubscript:@"END_IDX"];
      unsignedIntValue3 = [v22 unsignedIntValue];

      LOBYTE(v22) = [providerCopy doesStatIdExistOnDeviceForArr:integerValue startIdx:unsignedIntValue2 endIdx:unsignedIntValue3 timeAgo:0];
      if (unsignedIntValue)
      {
        v23 = [providerCopy doesStatIdExistOnDeviceForArr:integerValue startIdx:unsignedIntValue2 endIdx:unsignedIntValue3 timeAgo:unsignedIntValue];
LABEL_9:
        LOBYTE(v22) = v22 & v23;
      }
    }

    else
    {
      v22 = [providerCopy doesStatIdExistOnDevice:integerValue timeAgo:0];
      if (unsignedIntValue)
      {
        v23 = [providerCopy doesStatIdExistOnDevice:integerValue timeAgo:unsignedIntValue];
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

- (BOOL)allStatIdsExistInStatsProvider:(id)provider
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012164;
  v6[3] = &unk_10009CAD0;
  v7 = &off_1000D2F60;
  selfCopy = self;
  providerCopy = provider;
  v3 = providerCopy;
  v4 = [(TaskingCriteriaRange *)selfCopy _checkForWholeCriteriaArray:v6];

  return v4;
}

- (BOOL)evaluateCriteriaUsingStatsProvider:(id)provider doWhiteListCheck:(BOOL)check
{
  checkCopy = check;
  providerCopy = provider;
  if (![(TaskingCriteriaRange *)self validateCriteria])
  {
    v9 = [NSException exceptionWithName:@"CriteriaValidationFail" reason:@"Tasking criteria failed basic validation" userInfo:0];
    objc_exception_throw(v9);
  }

  if (checkCopy && ![(TaskingCriteriaRange *)self passWhiteListCheck])
  {
    v11 = [NSException exceptionWithName:@"NonWhitelistedStatsKey" reason:@"Non-whitelisted key exists in tasking information" userInfo:0];
    objc_exception_throw(v11);
  }

  if (![(TaskingCriteriaRange *)self allStatIdsExistInStatsProvider:providerCopy])
  {
    v10 = [NSException exceptionWithName:@"StatsKeyNotOnDevice" reason:@"Stat key absent from device stats exists in tasking information" userInfo:0];
    objc_exception_throw(v10);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001259C;
  v12[3] = &unk_10009CAF8;
  v12[4] = self;
  v13 = providerCopy;
  v7 = [(TaskingCriteriaRange *)self _evaluateWholeCriteriaArray:v12];

  return v7;
}

@end