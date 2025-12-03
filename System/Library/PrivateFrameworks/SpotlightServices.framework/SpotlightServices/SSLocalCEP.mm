@interface SSLocalCEP
+ (BOOL)isAllowlistedBundle:(id)bundle;
+ (BOOL)isLowEngagementBundle:(id)bundle;
+ (id)getCEPValuesForCurrentLocale;
@end

@implementation SSLocalCEP

+ (id)getCEPValuesForCurrentLocale
{
  v29 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  v4 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  v5 = [currentLocale objectForKey:*MEMORY[0x1E695D9E8]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v4)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v3, v4, v21];
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_%@", v3, v5, v4];
  }

  v9 = v8;
  if ([getCEPValuesForCurrentLocale_sCannedLocale isEqual:v8])
  {
    v10 = getCEPValuesForCurrentLocale_sCannedCepForLocale;
  }

  else
  {
    objc_storeStrong(&getCEPValuesForCurrentLocale_sCannedLocale, v9);
    if (!getCEPValuesForCurrentLocale_sCannedCepValues && getCEPValuesForCurrentLocale_onceToken[0] != -1)
    {
      +[SSLocalCEP getCEPValuesForCurrentLocale];
    }

    v26 = "iOS";
    uTF8String = [v9 UTF8String];
    v28 = 0;
    v11 = getCEPValuesForCurrentLocale_sCannedCepForLocale;
    getCEPValuesForCurrentLocale_sCannedCepForLocale = 0;

    v24 = 0uLL;
    v25 = 0;
    if (_MDPlistContainerGetPlistObjectAtKeyArray())
    {
      v12 = [SSPlistDataReader alloc];
      v22 = v24;
      v23 = v25;
      v13 = [(SSPlistDataReader *)v12 initWithPlistContainer:getCEPValuesForCurrentLocale_sCannedCepValues obj:&v22];
      v14 = getCEPValuesForCurrentLocale_sCannedCepForLocale;
      getCEPValuesForCurrentLocale_sCannedCepForLocale = v13;
    }

    if (!getCEPValuesForCurrentLocale_sCannedCepForLocale)
    {
      uTF8String = "global";
      if (_MDPlistContainerGetPlistObjectAtKeyArray())
      {
        v15 = [SSPlistDataReader alloc];
        v22 = v24;
        v23 = v25;
        v16 = [(SSPlistDataReader *)v15 initWithPlistContainer:getCEPValuesForCurrentLocale_sCannedCepValues obj:&v22];
      }

      else
      {
        v16 = objc_opt_new();
      }

      v17 = getCEPValuesForCurrentLocale_sCannedCepForLocale;
      getCEPValuesForCurrentLocale_sCannedCepForLocale = v16;
    }

    v10 = getCEPValuesForCurrentLocale_sCannedCepForLocale;
  }

  v18 = v10;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __42__SSLocalCEP_getCEPValuesForCurrentLocale__block_invoke()
{
  if (!getCEPValuesForCurrentLocale_sCannedCepValues)
  {
    v0 = objc_alloc(MEMORY[0x1E695DEF0]);
    v1 = SSDefaultsGetAssetPath(@"cep_query_independent_ratios.ios.json.mdplist");
    v2 = [v0 initWithContentsOfFile:v1 options:8 error:0];

    v3 = v2;
    v4 = *MEMORY[0x1E695E480];
    [v3 bytes];
    [v3 length];
    getCEPValuesForCurrentLocale_sCannedCepValues = _MDPlistContainerCreateWithBytesAndDeallocator();
  }
}

+ (BOOL)isLowEngagementBundle:(id)bundle
{
  bundleCopy = bundle;
  getCEPValuesForCurrentLocale = [self getCEPValuesForCurrentLocale];
  [getCEPValuesForCurrentLocale doubleValueForBundle:bundleCopy];
  v7 = v6;

  return v7 < 0.01;
}

+ (BOOL)isAllowlistedBundle:(id)bundle
{
  v3 = isAllowlistedBundle__onceToken;
  bundleCopy = bundle;
  if (v3 != -1)
  {
    +[SSLocalCEP isAllowlistedBundle:];
  }

  v5 = [isAllowlistedBundle__allowlistedBundles containsObject:bundleCopy];

  return v5;
}

uint64_t __34__SSLocalCEP_isAllowlistedBundle___block_invoke()
{
  isAllowlistedBundle__allowlistedBundles = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.mr-brightside.myParcel", 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end