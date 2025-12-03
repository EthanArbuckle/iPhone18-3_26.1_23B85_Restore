@interface RMFeatureOverrides
+ (BOOL)BOOLForDefaultsKey:(id)key;
+ (BOOL)internalStatusForKey:(id)key defaultBool:(BOOL)bool;
+ (NSURL)bootstrapURL;
+ (id)arrayForDefaultsKey:(id)key;
+ (id)defaultOverrideForKey:(id)key;
+ (id)dictionaryForDefaultsKey:(id)key;
+ (id)internalStatusForKey:(id)key defaultValue:(id)value;
+ (id)numberForDefaultsKey:(id)key;
+ (id)stringForDefaultsKey:(id)key;
+ (int64_t)batteryHealthServiceStateWithDefaultValue:(int64_t)value;
@end

@implementation RMFeatureOverrides

+ (id)defaultOverrideForKey:(id)key
{
  v3 = MEMORY[0x1E695DF20];
  keyCopy = key;
  v5 = [RMLocations defaultsOverrideFileURLCreateIfNeeded:1];
  v6 = [v3 dictionaryWithContentsOfURL:v5];

  v7 = [v6 objectForKeyedSubscript:keyCopy];

  return v7;
}

+ (id)dictionaryForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[RMFeatureFlags isAppleInternal])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults dictionaryForKey:keyCopy];

    if (!v6)
    {
      v6 = [self defaultOverrideForKey:keyCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)arrayForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[RMFeatureFlags isAppleInternal])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults arrayForKey:keyCopy];

    if (!v6)
    {
      v6 = [self defaultOverrideForKey:keyCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)stringForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[RMFeatureFlags isAppleInternal])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults stringForKey:keyCopy];

    if (!v6)
    {
      v6 = [self defaultOverrideForKey:keyCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)BOOLForDefaultsKey:(id)key
{
  keyCopy = key;
  if (!+[RMFeatureFlags isAppleInternal])
  {
    goto LABEL_6;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:keyCopy];

  if (!v6)
  {
    v7 = [self defaultOverrideForKey:keyCopy];
    if (v7)
    {
      v6 = v7;
      goto LABEL_5;
    }

LABEL_6:
    bOOLValue = 0;
    goto LABEL_7;
  }

LABEL_5:
  bOOLValue = [v6 BOOLValue];

LABEL_7:
  return bOOLValue;
}

+ (id)numberForDefaultsKey:(id)key
{
  keyCopy = key;
  if (+[RMFeatureFlags isAppleInternal])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)batteryHealthServiceStateWithDefaultValue:(int64_t)value
{
  v4 = [self numberForDefaultsKey:@"RMBatteryServiceState"];
  v5 = v4;
  if (v4)
  {
    value = [v4 integerValue];
  }

  return value;
}

+ (NSURL)bootstrapURL
{
  v2 = [self stringForDefaultsKey:@"RMBootstrapURL"];
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

+ (id)internalStatusForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [self dictionaryForDefaultsKey:@"RMInternalStatus"];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

+ (BOOL)internalStatusForKey:(id)key defaultBool:(BOOL)bool
{
  keyCopy = key;
  v7 = [self dictionaryForDefaultsKey:@"RMInternalStatus"];
  v8 = [v7 objectForKeyedSubscript:keyCopy];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:keyCopy];
    bool = [v9 BOOLValue];
  }

  return bool;
}

@end