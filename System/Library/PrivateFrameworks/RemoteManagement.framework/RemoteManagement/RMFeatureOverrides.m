@interface RMFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)a3;
+ (BOOL)internalStatusForKey:(id)a3 defaultBool:(BOOL)a4;
+ (NSURL)bootstrapURL;
+ (id)arrayForDefaultsKey:(id)a3;
+ (id)defaultOverrideForKey:(id)a3;
+ (id)dictionaryForDefaultsKey:(id)a3;
+ (id)internalStatusForKey:(id)a3 defaultValue:(id)a4;
+ (id)numberForDefaultsKey:(id)a3;
+ (id)stringForDefaultsKey:(id)a3;
+ (int64_t)batteryHealthServiceStateWithDefaultValue:(int64_t)a3;
@end

@implementation RMFeatureOverrides

+ (id)defaultOverrideForKey:(id)a3
{
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [RMLocations defaultsOverrideFileURLCreateIfNeeded:1];
  v6 = [v3 dictionaryWithContentsOfURL:v5];

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

+ (id)dictionaryForDefaultsKey:(id)a3
{
  v4 = a3;
  if (+[RMFeatureFlags isAppleInternal])
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 dictionaryForKey:v4];

    if (!v6)
    {
      v6 = [a1 defaultOverrideForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)arrayForDefaultsKey:(id)a3
{
  v4 = a3;
  if (+[RMFeatureFlags isAppleInternal])
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 arrayForKey:v4];

    if (!v6)
    {
      v6 = [a1 defaultOverrideForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stringForDefaultsKey:(id)a3
{
  v4 = a3;
  if (+[RMFeatureFlags isAppleInternal])
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 stringForKey:v4];

    if (!v6)
    {
      v6 = [a1 defaultOverrideForKey:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)BOOLForDefaultsKey:(id)a3
{
  v4 = a3;
  if (!+[RMFeatureFlags isAppleInternal])
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [a1 defaultOverrideForKey:v4];
    if (v7)
    {
      v6 = v7;
      goto LABEL_5;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v8 = [v6 BOOLValue];

LABEL_7:
  return v8;
}

+ (id)numberForDefaultsKey:(id)a3
{
  v3 = a3;
  if (+[RMFeatureFlags isAppleInternal])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)batteryHealthServiceStateWithDefaultValue:(int64_t)a3
{
  v4 = [a1 numberForDefaultsKey:@"RMBatteryServiceState"];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 integerValue];
  }

  return a3;
}

+ (NSURL)bootstrapURL
{
  v2 = [a1 stringForDefaultsKey:@"RMBootstrapURL"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)internalStatusForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 dictionaryForDefaultsKey:@"RMInternalStatus"];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v10;
}

+ (BOOL)internalStatusForKey:(id)a3 defaultBool:(BOOL)a4
{
  v6 = a3;
  v7 = [a1 dictionaryForDefaultsKey:@"RMInternalStatus"];
  v8 = [v7 objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
    a4 = [v9 BOOLValue];
  }

  return a4;
}

@end