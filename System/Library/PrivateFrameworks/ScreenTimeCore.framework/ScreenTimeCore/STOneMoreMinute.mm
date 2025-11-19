@interface STOneMoreMinute
+ (BOOL)_checkIfAnyBlueprintInArray:(id)a3 matchesPredicate:(id)a4;
+ (BOOL)_isBundleIdentifier:(id)a3 presentInPayloadForConfiguration:(id)a4;
+ (BOOL)_isWebDomain:(id)a3 presentInPayloadForConfiguration:(id)a4;
+ (BOOL)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 oneMoreMinuteBlueprints:(id)a4;
+ (BOOL)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 oneMoreMinuteBlueprints:(id)a4;
+ (BOOL)shouldAllowOneMoreMinuteForWebDomain:(id)a3 oneMoreMinuteBlueprints:(id)a4;
+ (id)fetchCategoryForBundleIdentifier:(id)a3 error:(id *)a4;
+ (id)fetchCategoryForWebDomain:(id)a3 error:(id *)a4;
@end

@implementation STOneMoreMinute

+ (BOOL)shouldAllowOneMoreMinuteForBundleIdentifier:(id)a3 oneMoreMinuteBlueprints:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006D740;
  v8[3] = &unk_1001A56C0;
  v9 = a3;
  v10 = a1;
  v6 = v9;
  LOBYTE(a4) = [a1 _checkIfAnyBlueprintInArray:a4 matchesPredicate:v8];

  return a4 ^ 1;
}

+ (BOOL)shouldAllowOneMoreMinuteForWebDomain:(id)a3 oneMoreMinuteBlueprints:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006D7FC;
  v8[3] = &unk_1001A56C0;
  v9 = a3;
  v10 = a1;
  v6 = v9;
  LOBYTE(a4) = [a1 _checkIfAnyBlueprintInArray:a4 matchesPredicate:v8];

  return a4 ^ 1;
}

+ (BOOL)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)a3 oneMoreMinuteBlueprints:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006D8B8;
  v8[3] = &unk_1001A56E8;
  v9 = a3;
  v6 = v9;
  LOBYTE(a4) = [a1 _checkIfAnyBlueprintInArray:a4 matchesPredicate:v8];

  return a4 ^ 1;
}

+ (BOOL)_checkIfAnyBlueprintInArray:(id)a3 matchesPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v8 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [v10 configurations];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v22 + 1) + 8 * j) cemConfiguration];
              v17 = v6[2](v6, v16);

              if (v17)
              {

                v18 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v20;
      }

      v18 = 0;
      v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

+ (BOOL)_isBundleIdentifier:(id)a3 presentInPayloadForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 st_containsBundleIdentifier:v6])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v32 = 0;
    v9 = [a1 fetchCategoryForBundleIdentifier:v6 error:&v32];
    v10 = v32;
    if (v9)
    {
      v11 = objc_opt_new();
      v12 = [v9 equivalentBundleIdentifiers];
      if ([v12 count])
      {
        [v11 addObjectsFromArray:v12];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ([v7 st_containsBundleIdentifier:*(*(&v28 + 1) + 8 * i)])
            {
              LOBYTE(v8) = 1;
              v20 = v13;
              goto LABEL_31;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = [v9 identifier];
      v19 = [v7 st_containsCategoryIdentifer:v18];

      if (v19)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        [v9 webDomains];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v20 = v27 = 0u;
        v8 = [v20 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v8)
        {
          v21 = *v25;
          while (2)
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v20);
              }

              if ([v7 st_containsWebDomain:{*(*(&v24 + 1) + 8 * j), v24}])
              {
                LOBYTE(v8) = 1;
                goto LABEL_30;
              }
            }

            v8 = [v20 countByEnumeratingWithState:&v24 objects:v33 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

LABEL_31:
      }
    }

    else
    {
      v13 = +[STLog oneMoreMinuteManager];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10011C208();
      }

      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

+ (BOOL)_isWebDomain:(id)a3 presentInPayloadForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 st_containsWebDomain:v6] & 1) == 0)
  {
    v15 = 0;
    v9 = [a1 fetchCategoryForWebDomain:v6 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = [v9 canonicalBundleIdentifier];
      v12 = [v7 st_containsBundleIdentifier:v11];

      if (v12)
      {
        v8 = 1;
LABEL_11:

        goto LABEL_12;
      }

      v13 = [v9 identifier];
      v8 = [v7 st_containsCategoryIdentifer:v13];
    }

    else
    {
      v13 = +[STLog oneMoreMinuteManager];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10011C208();
      }

      v8 = 0;
    }

    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

+ (id)fetchCategoryForBundleIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [[NSConditionLock alloc] initWithCondition:0];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_10006E110;
    v32 = sub_10006E120;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_10006E110;
    v26 = sub_10006E120;
    v27 = 0;
    v7 = +[CTCategories sharedCategories];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10006E128;
    v17 = &unk_1001A5710;
    v19 = &v28;
    v20 = &v22;
    v8 = v6;
    v18 = v8;
    v21 = 1;
    [v7 categoryForBundleID:v5 completionHandler:&v14];

    v9 = [NSDate dateWithTimeIntervalSinceNow:2.0, v14, v15, v16, v17];
    v10 = [v8 lockWhenCondition:1 beforeDate:v9];

    if (v10)
    {
      [v8 unlock];
      if (a4)
      {
        v11 = v29[5];
        if (v11)
        {
          *a4 = v11;
        }
      }

      v12 = v23[5];
    }

    else if (a4)
    {
      [NSError errorWithDomain:STErrorDomain code:570 userInfo:0];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fetchCategoryForWebDomain:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [[NSConditionLock alloc] initWithCondition:0];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_10006E110;
    v32 = sub_10006E120;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_10006E110;
    v26 = sub_10006E120;
    v27 = 0;
    v7 = +[CTCategories sharedCategories];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10006E434;
    v17 = &unk_1001A5710;
    v19 = &v28;
    v20 = &v22;
    v8 = v6;
    v18 = v8;
    v21 = 1;
    [v7 categoryForDomainName:v5 completionHandler:&v14];

    v9 = [NSDate dateWithTimeIntervalSinceNow:2.0, v14, v15, v16, v17];
    v10 = [v8 lockWhenCondition:1 beforeDate:v9];

    if (v10)
    {
      [v8 unlock];
      if (a4)
      {
        v11 = v29[5];
        if (v11)
        {
          *a4 = v11;
        }
      }

      v12 = v23[5];
    }

    else if (a4)
    {
      [NSError errorWithDomain:STErrorDomain code:570 userInfo:0];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end