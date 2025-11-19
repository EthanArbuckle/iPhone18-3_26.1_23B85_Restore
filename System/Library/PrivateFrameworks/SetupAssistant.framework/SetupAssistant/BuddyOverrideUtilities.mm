@interface BuddyOverrideUtilities
+ (BOOL)useOverridesFor:(unint64_t)a3;
+ (id)_defaultValueFor:(unint64_t)a3;
+ (id)dictionaryByMerging:(id)a3 with:(id)a4;
+ (id)keyForOverrideEntry:(unint64_t)a3;
+ (id)keyForSourceDeviceOverrideEntry:(unint64_t)a3;
+ (id)overridePreferences;
+ (id)sourceDeviceValueFor:(unint64_t)a3;
+ (void)mergeIntoOverridesDictionary:(id)a3;
+ (void)setSourceDeviceValueEntryFor:(unint64_t)a3 value:(id)a4;
@end

@implementation BuddyOverrideUtilities

+ (id)overridePreferences
{
  if ([a1 buildSupportsOverrides])
  {
    v2 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)useOverridesFor:(unint64_t)a3
{
  if (![a1 buildSupportsOverrides])
  {
    return 0;
  }

  v5 = [a1 overridePreferences];
  v6 = [v5 objectForKey:@"overrides"];

  if (v6 && (!a3 || [a1 useOverridesFor:0]))
  {
    v7 = [a1 keyForOverrideEntry:a3];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)setSourceDeviceValueEntryFor:(unint64_t)a3 value:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a1 buildSupportsOverrides])
  {
    v7 = [a1 keyForSourceDeviceOverrideEntry:a3];
    v12 = v6;
    v13 = @"sourceDevice";
    v11 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [a1 mergeIntoOverridesDictionary:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)sourceDeviceValueFor:(unint64_t)a3
{
  if ([a1 useOverridesFor:2])
  {
    v5 = [a1 keyForSourceDeviceOverrideEntry:a3];
    v6 = [a1 overridePreferences];
    v7 = [v6 objectForKey:@"overrides"];

    v8 = [v7 objectForKey:@"sourceDevice"];
    v9 = [v8 objectForKey:v5];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [a1 _defaultValueFor:a3];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_defaultValueFor:(unint64_t)a3
{
  if ([a1 useOverridesFor:1])
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        v4 = MEMORY[0x1E695E110];
        goto LABEL_23;
      }

      v5 = [MEMORY[0x1E69CA9E8] productVersion];
    }

    else if (a3 == 2)
    {
      v5 = MGCopyAnswer();
    }

    else
    {
      v4 = 0;
      if (a3 != 3)
      {
        goto LABEL_23;
      }

      v5 = [MEMORY[0x1E69CA9E8] deviceClass];
    }

    goto LABEL_22;
  }

  if (a3 > 10)
  {
    v8 = &unk_1F30A77A8;
    if (a3 != 12)
    {
      v8 = 0;
    }

    if (a3 == 11)
    {
      v4 = &unk_1F30A77A8;
    }

    else
    {
      v4 = v8;
    }
  }

  else
  {
    if (a3 == 8)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*MEMORY[0x1E69CA9F0]];
LABEL_22:
      v4 = v5;
      goto LABEL_23;
    }

    v4 = 0;
    if (a3 == 9)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E69CA9E8] deviceClass];
      v4 = [v6 stringWithFormat:@"⭐️ %@ ⭐️", v7];
    }
  }

LABEL_23:

  return v4;
}

+ (id)keyForOverrideEntry:(unint64_t)a3
{
  v3 = @"enable-setup-overrides";
  if (a3 == 1)
  {
    v3 = @"disable-default-values";
  }

  if (a3 == 2)
  {
    return @"enable-quick-start-overrides";
  }

  else
  {
    return v3;
  }
}

+ (id)keyForSourceDeviceOverrideEntry:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7D03860[a3];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"source-device-%@", v3];
}

+ (void)mergeIntoOverridesDictionary:(id)a3
{
  v8 = a3;
  v4 = [a1 overridePreferences];
  v5 = [v4 objectForKey:@"overrides"];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = [a1 dictionaryByMerging:v5 with:v8];
  v7 = [a1 overridePreferences];
  [v7 setObject:v6 forKey:@"overrides" persistImmediately:1];
}

+ (id)dictionaryByMerging:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = [v7 dictionaryWithDictionary:v6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__BuddyOverrideUtilities_dictionaryByMerging_with___block_invoke;
  v14[3] = &unk_1E7D03840;
  v15 = v6;
  v16 = v9;
  v17 = a1;
  v10 = v9;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];

  v12 = [v10 copy];

  return v12;
}

void __51__BuddyOverrideUtilities_dictionaryByMerging_with___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v10];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) objectForKey:v10];
    v9 = [v7 dictionaryByMerging:v8 with:v5];

    [*(a1 + 40) setObject:v9 forKey:v10];
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKey:v10];
  }
}

@end