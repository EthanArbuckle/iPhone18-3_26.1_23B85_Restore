@interface TPSUserTypeChecker
+ (int)_majorVersionForBuildVersion:(id)a3;
+ (int64_t)userType;
+ (int64_t)userTypeFromCloudDataWithKey:(id)a3;
+ (int64_t)userTypeFromMigratorData;
+ (int64_t)userTypeOverride;
@end

@implementation TPSUserTypeChecker

+ (int)_majorVersionForBuildVersion:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 letterCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 firstObject];
  LODWORD(v4) = [v7 intValue];

  return v4;
}

+ (int64_t)userType
{
  v3 = [objc_opt_class() userTypeOverride];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  v3 = [a1 userTypeFromMigratorData];
  if (v3)
  {
    return v3;
  }

  v6 = MGGetStringAnswer();
  if ([v6 isEqualToString:@"iPod"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 userTypeFromCloudDataWithKey:v6];
  }

  return v4;
}

+ (int64_t)userTypeOverride
{
  v2 = +[TPSDefaultsManager userType];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue], v4 < 3))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

+ (int64_t)userTypeFromCloudDataWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.tips"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v5 = [v4 accounts];
  v6 = [v5 na_any:&__block_literal_global_13];

  if (v6)
  {
    v15[3] = 0;
    v7 = [v4 devices];
    v8 = [v7 copy];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__TPSUserTypeChecker_userTypeFromCloudDataWithKey___block_invoke_2;
    v11[3] = &unk_1E8102728;
    v12 = v3;
    v13 = &v14;
    [v8 enumerateObjectsUsingBlock:v11];
  }

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __51__TPSUserTypeChecker_userTypeFromCloudDataWithKey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 modelIdentifier];
  v7 = [v6 lowercaseString];
  v8 = [*(a1 + 32) lowercaseString];
  v9 = [v7 containsString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (int64_t)userTypeFromMigratorData
{
  v3 = MGCopyAnswer();
  v4 = [objc_opt_class() _majorVersionForBuildVersion:v3];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"MigratedFromAndroidToiOSVersion"];

  if (v6 && ((v7 = [objc_opt_class() _majorVersionForBuildVersion:v6], v7 >= 1) ? (v8 = v7 == v4) : (v8 = 0), v8))
  {
    v9 = 2;
  }

  else if ((DMGetUserDataDisposition() & 6) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = [a1 _previousBuildVersion];
    if (v10)
    {
      v11 = [objc_opt_class() _majorVersionForBuildVersion:v10];
      v9 = v11 > 0 && v11 < v4;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end