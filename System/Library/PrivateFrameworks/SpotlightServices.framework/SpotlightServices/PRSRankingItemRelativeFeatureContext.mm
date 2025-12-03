@interface PRSRankingItemRelativeFeatureContext
+ (id)_predicateForRelativeFeature:(unint64_t)feature currentTime:(double)time;
+ (id)_relativeContextsForFeatures:(id)features currentTime:(double)time;
+ (id)_resultComparatorForRelativeFeature:(unint64_t)feature;
+ (id)relativeContextsForBundle:(id)bundle currentTime:(double)time;
+ (void)_associatedPRSL2FeatureFromRelativeFeature:(unint64_t)feature absRankFeatureOut:(unsigned __int16 *)out relRankFeatureOut:(unsigned __int16 *)featureOut;
- (PRSRankingItemRelativeFeatureContext)initWithFeature:(unint64_t)feature currentTime:(double)time;
@end

@implementation PRSRankingItemRelativeFeatureContext

+ (id)relativeContextsForBundle:(id)bundle currentTime:(double)time
{
  bundleCopy = bundle;
  v6 = [PRSRankingItemRelativeFeatureContext _relativeContextsForFeatures:&unk_1F55B7508 currentTime:time];
  if ([bundleCopy isEqualToString:@"com.apple.MobileAddressBook"])
  {
    v7 = &unk_1F55B7520;
LABEL_9:
    v8 = [PRSRankingItemRelativeFeatureContext _relativeContextsForFeatures:v7 currentTime:time];
    v9 = [v6 arrayByAddingObjectsFromArray:v8];

    goto LABEL_10;
  }

  if ([bundleCopy isEqualToString:@"com.apple.reminders"])
  {
    v7 = &unk_1F55B7538;
    goto LABEL_9;
  }

  if ([bundleCopy isEqualToString:@"com.apple.mobilecal"])
  {
    v7 = &unk_1F55B7550;
    goto LABEL_9;
  }

  if ([bundleCopy isEqualToString:@"com.apple.application"])
  {
    v7 = &unk_1F55B7568;
    goto LABEL_9;
  }

  v9 = v6;
LABEL_10:

  return v9;
}

+ (id)_relativeContextsForFeatures:(id)features currentTime:(double)time
{
  v20 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = featuresCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = -[PRSRankingItemRelativeFeatureContext initWithFeature:currentTime:]([PRSRankingItemRelativeFeatureContext alloc], "initWithFeature:currentTime:", [*(*(&v15 + 1) + 8 * i) unsignedIntegerValue], time);
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_resultComparatorForRelativeFeature:(unint64_t)feature
{
  switch(feature)
  {
    case 0uLL:
    case 0xEuLL:
      (*(comparatorForDateAttribute + 2))(comparatorForDateAttribute, 32);
      goto LABEL_19;
    case 1uLL:
    case 0xFuLL:
      (*(comparatorForDateAttribute + 2))(comparatorForDateAttribute, 9);
      goto LABEL_19;
    case 2uLL:
      (*(comparatorForDateAttribute + 2))(comparatorForDateAttribute, 17);
      goto LABEL_19;
    case 3uLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_87);
      goto LABEL_19;
    case 4uLL:
      (*(comparatorForDateAttribute + 2))(comparatorForDateAttribute, 29);
      goto LABEL_19;
    case 5uLL:
    case 6uLL:
    case 0x10uLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_89);
      goto LABEL_19;
    case 7uLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_91);
      goto LABEL_19;
    case 8uLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_93);
      goto LABEL_19;
    case 9uLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_95);
      goto LABEL_19;
    case 0xAuLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_97);
      goto LABEL_19;
    case 0xBuLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_99);
      goto LABEL_19;
    case 0xCuLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_101);
      goto LABEL_19;
    case 0xDuLL:
      (*(comparatorWithBlock + 2))(comparatorWithBlock, &__block_literal_global_103);
      v4 = LABEL_19:;
      goto LABEL_20;
    case 0x11uLL:
      v3 = comparatorForPastDateRecency;
      goto LABEL_17;
    case 0x12uLL:
      v3 = comparatorForFutureDateRecency;
LABEL_17:
      v4 = v3[2]();
LABEL_20:

      return v4;
    default:
      +[PRSRankingItemRelativeFeatureContext _resultComparatorForRelativeFeature:];
  }
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = SSCompactRankingAttrsGetValue([a2 attributes], 0x11uLL);
  v6 = [v4 attributes];

  v7 = SSCompactRankingAttrsGetValue(v6, 0x11uLL);
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;
  [v7 timeIntervalSinceReferenceDate];
  if (v9 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v9 < v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v4 attributes];

  v12 = 0;
  SSCompactRankingAttrsGetFloat(v5, 0x160uLL, &v12 + 1);
  SSCompactRankingAttrsGetFloat(v6, 0x160uLL, &v12);
  if (*(&v12 + 1) > *&v12)
  {
    return 1;
  }

  if (*(&v12 + 1) < *&v12)
  {
    return -1;
  }

  v11 = 0;
  SSCompactRankingAttrsGetFloat(v5, 0x161uLL, &v11 + 1);
  SSCompactRankingAttrsGetFloat(v6, 0x161uLL, &v11);
  if (*(&v11 + 1) > *&v11)
  {
    return 1;
  }

  if (*(&v11 + 1) < *&v11)
  {
    return -1;
  }

  v10 = 0;
  SSCompactRankingAttrsGetFloat(v5, 0x162uLL, &v10 + 1);
  SSCompactRankingAttrsGetFloat(v6, 0x162uLL, &v10);
  if (*(&v10 + 1) > *&v10)
  {
    return 1;
  }

  if (*(&v10 + 1) < *&v10)
  {
    return -1;
  }

  v9 = 0;
  SSCompactRankingAttrsGetFloat(v5, 0x163uLL, &v9 + 1);
  SSCompactRankingAttrsGetFloat(v6, 0x163uLL, &v9);
  if (*(&v9 + 1) >= *&v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (*(&v9 + 1) > *&v9)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v4 attributes];
  memset(__dst, 0, sizeof(__dst));
  memset(v15, 0, sizeof(v15));
  ArrayInt64 = SSCompactRankingAttrsGetArrayInt64(v5, 0x165uLL, __dst, 4);
  v8 = SSCompactRankingAttrsGetArrayInt64(v6, 0x165uLL, v15, 4);
  if (ArrayInt64 && v8)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = *(__dst + v9);
      v12 = *(v15 + v9);
      if (v11 > v12)
      {
        break;
      }

      if (v11 < v12)
      {
        v10 = -1;
        break;
      }

      v9 += 8;
      if (v9 == 32)
      {
        v10 = 0;
        break;
      }
    }
  }

  else if (ArrayInt64)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 << 63 >> 63;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v4 attributes];
  memset(__dst, 0, sizeof(__dst));
  memset(v15, 0, sizeof(v15));
  ArrayInt64 = SSCompactRankingAttrsGetArrayInt64(v5, 0x164uLL, __dst, 4);
  v8 = SSCompactRankingAttrsGetArrayInt64(v6, 0x164uLL, v15, 4);
  if (ArrayInt64 && v8)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = *(__dst + v9);
      v12 = *(v15 + v9);
      if (v11 > v12)
      {
        break;
      }

      if (v11 < v12)
      {
        v10 = -1;
        break;
      }

      v9 += 8;
      if (v9 == 32)
      {
        v10 = 0;
        break;
      }
    }
  }

  else if (ArrayInt64)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 << 63 >> 63;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 attributes];
  v7 = [v5 attributes];
  v8 = SSCompactRankingAttrsDoesItemExist(v6, 0x4CuLL);
  v9 = SSCompactRankingAttrsDoesItemExist(v7, 0x4CuLL);
  if (v8 && v9)
  {
    v10 = [v4 L2FeatureVector];
    v11 = [v5 L2FeatureVector];
    [v10 scoreForFeature:342];
    v13 = v12;
    [v11 scoreForFeature:342];
    v15 = v13 <= v14;
    if (v13 != v14)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:341];
    v17 = v16;
    [v11 scoreForFeature:341];
    v15 = v17 <= v18;
    if (v17 != v18)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:340];
    v20 = v19;
    [v11 scoreForFeature:340];
    v15 = v20 <= v21;
    if (v20 != v21)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:340];
    v23 = v22;
    [v11 scoreForFeature:340];
    v15 = v23 <= v24;
    if (v23 == v24)
    {
      v25 = 0;
    }

    else
    {
LABEL_7:
      if (v15)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v9 << 63) >> 63;
  }

  return v25;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 attributes];
  v7 = [v5 attributes];
  v8 = SSCompactRankingAttrsDoesItemExist(v6, 0x4EuLL);
  v9 = SSCompactRankingAttrsDoesItemExist(v7, 0x4EuLL);
  if (v8 && v9)
  {
    v10 = [v4 L2FeatureVector];
    v11 = [v5 L2FeatureVector];
    [v10 scoreForFeature:346];
    v13 = v12;
    [v11 scoreForFeature:346];
    v15 = v13 <= v14;
    if (v13 != v14)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:345];
    v17 = v16;
    [v11 scoreForFeature:345];
    v15 = v17 <= v18;
    if (v17 != v18)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:344];
    v20 = v19;
    [v11 scoreForFeature:344];
    v15 = v20 <= v21;
    if (v20 != v21)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:343];
    v23 = v22;
    [v11 scoreForFeature:343];
    v15 = v23 <= v24;
    if (v23 == v24)
    {
      v25 = 0;
    }

    else
    {
LABEL_7:
      if (v15)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v9 << 63) >> 63;
  }

  return v25;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 attributes];
  v7 = [v5 attributes];
  v8 = SSCompactRankingAttrsDoesItemExist(v6, 0x4BuLL);
  v9 = SSCompactRankingAttrsDoesItemExist(v7, 0x4BuLL);
  if (v8 && v9)
  {
    v10 = [v4 L2FeatureVector];
    v11 = [v5 L2FeatureVector];
    [v10 scoreForFeature:338];
    v13 = v12;
    [v11 scoreForFeature:338];
    v15 = v13 <= v14;
    if (v13 != v14)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:337];
    v17 = v16;
    [v11 scoreForFeature:337];
    v15 = v17 <= v18;
    if (v17 != v18)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:336];
    v20 = v19;
    [v11 scoreForFeature:336];
    v15 = v20 <= v21;
    if (v20 != v21)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:335];
    v23 = v22;
    [v11 scoreForFeature:335];
    v15 = v23 <= v24;
    if (v23 == v24)
    {
      v25 = 0;
    }

    else
    {
LABEL_7:
      if (v15)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v9 << 63) >> 63;
  }

  return v25;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 attributes];
  v7 = [v5 attributes];
  v8 = SSCompactRankingAttrsDoesItemExist(v6, 0x4AuLL);
  v9 = SSCompactRankingAttrsDoesItemExist(v7, 0x4AuLL);
  if (v8 && v9)
  {
    v10 = [v4 L2FeatureVector];
    v11 = [v5 L2FeatureVector];
    [v10 scoreForFeature:334];
    v13 = v12;
    [v11 scoreForFeature:334];
    v15 = v13 <= v14;
    if (v13 != v14)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:333];
    v17 = v16;
    [v11 scoreForFeature:333];
    v15 = v17 <= v18;
    if (v17 != v18)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:332];
    v20 = v19;
    [v11 scoreForFeature:332];
    v15 = v20 <= v21;
    if (v20 != v21)
    {
      goto LABEL_7;
    }

    [v10 scoreForFeature:331];
    v23 = v22;
    [v11 scoreForFeature:331];
    v15 = v23 <= v24;
    if (v23 == v24)
    {
      v25 = 0;
    }

    else
    {
LABEL_7:
      if (v15)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }
  }

  else if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (v9 << 63) >> 63;
  }

  return v25;
}

uint64_t __76__PRSRankingItemRelativeFeatureContext__resultComparatorForRelativeFeature___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [(PRSRankingItem *)a2 indexScore];
  v6 = v5;
  v8 = v7;
  [(PRSRankingItem *)v4 indexScore];
  v10 = v9;
  v12 = v11;

  if (__PAIR128__(v8, v6) < __PAIR128__(v12, v10))
  {
    return -1;
  }

  else
  {
    return __PAIR128__(v12, v10) < __PAIR128__(v8, v6);
  }
}

+ (id)_predicateForRelativeFeature:(unint64_t)feature currentTime:(double)time
{
  switch(feature)
  {
    case 0uLL:
    case 0xEuLL:
      v6 = MEMORY[0x1E696AE18];
      v7 = 32;
      goto LABEL_11;
    case 1uLL:
    case 0xFuLL:
      v6 = MEMORY[0x1E696AE18];
      v7 = 9;
      goto LABEL_11;
    case 2uLL:
      v4 = MEMORY[0x1E696AE18];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke;
      v18 = &__block_descriptor_40_e41_B24__0__PRSRankingItem_8__NSDictionary_16l;
      timeCopy = time;
      v5 = &v15;
      goto LABEL_13;
    case 3uLL:
      v4 = MEMORY[0x1E696AE18];
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke_2;
      v13 = &__block_descriptor_40_e41_B24__0__PRSRankingItem_8__NSDictionary_16l;
      timeCopy2 = time;
      v5 = &v10;
      goto LABEL_13;
    case 4uLL:
      v6 = MEMORY[0x1E696AE18];
      v7 = 29;
LABEL_11:
      v8 = [v6 _predicateForItemsWithAttribute:{v7, time}];
      goto LABEL_14;
    case 5uLL:
    case 0x10uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = &__block_literal_global_108;
      goto LABEL_13;
    case 6uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = &__block_literal_global_110;
      goto LABEL_13;
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = &__block_literal_global_112;
      goto LABEL_13;
    case 0xDuLL:
      v8 = [MEMORY[0x1E696AE18] predicateWithValue:{1, time}];
      goto LABEL_14;
    case 0x11uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = &__block_literal_global_116;
      goto LABEL_13;
    case 0x12uLL:
      v4 = MEMORY[0x1E696AE18];
      v5 = &__block_literal_global_114;
LABEL_13:
      v8 = [v4 predicateWithBlock:{v5, time, v10, v11, v12, v13, *&timeCopy2, v15, v16, v17, v18, *&timeCopy}];
LABEL_14:

      return v8;
    default:
      +[PRSRankingItemRelativeFeatureContext _predicateForRelativeFeature:currentTime:];
  }
}

BOOL __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = SSCompactRankingAttrsGetValue([a2 attributes], 0x11uLL);
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*(a1 + 32)];
  if (v3)
  {
    v5 = [v3 earlierDate:v4];
    v6 = v5 == v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = SSCompactRankingAttrsGetValue([a2 attributes], 0x11uLL);
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*(a1 + 32)];
  if (v3)
  {
    v5 = [v3 earlierDate:v4];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = SSCompactRankingAttrsGetValue([a2 attributes], 0x43uLL);
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 sectionBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.application"];

  return v3;
}

uint64_t __81__PRSRankingItemRelativeFeatureContext__predicateForRelativeFeature_currentTime___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 sectionBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.MobileAddressBook"];

  return v3;
}

+ (void)_associatedPRSL2FeatureFromRelativeFeature:(unint64_t)feature absRankFeatureOut:(unsigned __int16 *)out relRankFeatureOut:(unsigned __int16 *)featureOut
{
  if (feature >= 0x13)
  {
    +[PRSRankingItemRelativeFeatureContext _associatedPRSL2FeatureFromRelativeFeature:absRankFeatureOut:relRankFeatureOut:];
  }

  v5 = word_1DA0D57CE[feature];
  *featureOut = word_1DA0D57A8[feature];
  *out = v5;
}

- (PRSRankingItemRelativeFeatureContext)initWithFeature:(unint64_t)feature currentTime:(double)time
{
  v12.receiver = self;
  v12.super_class = PRSRankingItemRelativeFeatureContext;
  v6 = [(PRSRankingItemRelativeFeatureContext *)&v12 init];
  if (v6)
  {
    v11 = 3235;
    v10 = 3235;
    [PRSRankingItemRelativeFeatureContext _associatedPRSL2FeatureFromRelativeFeature:feature absRankFeatureOut:&v11 relRankFeatureOut:&v10];
    [(PRSRankingItemRelativeFeatureContext *)v6 setAbsRankFeature:v11];
    [(PRSRankingItemRelativeFeatureContext *)v6 setRelRankFeature:v10];
    v7 = [PRSRankingItemRelativeFeatureContext _predicateForRelativeFeature:feature currentTime:time];
    [(PRSRankingItemRelativeFeatureContext *)v6 setPredicate:v7];

    v8 = [PRSRankingItemRelativeFeatureContext _resultComparatorForRelativeFeature:feature];
    [(PRSRankingItemRelativeFeatureContext *)v6 setComparator:v8];
  }

  return v6;
}

@end