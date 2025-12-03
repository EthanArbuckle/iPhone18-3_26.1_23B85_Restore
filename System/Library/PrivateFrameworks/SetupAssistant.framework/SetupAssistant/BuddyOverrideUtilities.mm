@interface BuddyOverrideUtilities
+ (BOOL)useOverridesFor:(unint64_t)for;
+ (id)_defaultValueFor:(unint64_t)for;
+ (id)dictionaryByMerging:(id)merging with:(id)with;
+ (id)keyForOverrideEntry:(unint64_t)entry;
+ (id)keyForSourceDeviceOverrideEntry:(unint64_t)entry;
+ (id)overridePreferences;
+ (id)sourceDeviceValueFor:(unint64_t)for;
+ (void)mergeIntoOverridesDictionary:(id)dictionary;
+ (void)setSourceDeviceValueEntryFor:(unint64_t)for value:(id)value;
@end

@implementation BuddyOverrideUtilities

+ (id)overridePreferences
{
  if ([self buildSupportsOverrides])
  {
    v2 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)useOverridesFor:(unint64_t)for
{
  if (![self buildSupportsOverrides])
  {
    return 0;
  }

  overridePreferences = [self overridePreferences];
  v6 = [overridePreferences objectForKey:@"overrides"];

  if (v6 && (!for || [self useOverridesFor:0]))
  {
    v7 = [self keyForOverrideEntry:for];
    v8 = [v6 objectForKeyedSubscript:v7];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setSourceDeviceValueEntryFor:(unint64_t)for value:(id)value
{
  v14[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([self buildSupportsOverrides])
  {
    v7 = [self keyForSourceDeviceOverrideEntry:for];
    v12 = valueCopy;
    v13 = @"sourceDevice";
    v11 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [self mergeIntoOverridesDictionary:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)sourceDeviceValueFor:(unint64_t)for
{
  if ([self useOverridesFor:2])
  {
    v5 = [self keyForSourceDeviceOverrideEntry:for];
    overridePreferences = [self overridePreferences];
    v7 = [overridePreferences objectForKey:@"overrides"];

    v8 = [v7 objectForKey:@"sourceDevice"];
    v9 = [v8 objectForKey:v5];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [self _defaultValueFor:for];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_defaultValueFor:(unint64_t)for
{
  if ([self useOverridesFor:1])
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (for <= 7)
  {
    if (for > 5)
    {
      if (for != 6)
      {
        v4 = MEMORY[0x1E695E110];
        goto LABEL_23;
      }

      productVersion = [MEMORY[0x1E69CA9E8] productVersion];
    }

    else if (for == 2)
    {
      productVersion = MGCopyAnswer();
    }

    else
    {
      v4 = 0;
      if (for != 3)
      {
        goto LABEL_23;
      }

      productVersion = [MEMORY[0x1E69CA9E8] deviceClass];
    }

    goto LABEL_22;
  }

  if (for > 10)
  {
    v8 = &unk_1F30A77A8;
    if (for != 12)
    {
      v8 = 0;
    }

    if (for == 11)
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
    if (for == 8)
    {
      productVersion = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*MEMORY[0x1E69CA9F0]];
LABEL_22:
      v4 = productVersion;
      goto LABEL_23;
    }

    v4 = 0;
    if (for == 9)
    {
      v6 = MEMORY[0x1E696AEC0];
      deviceClass = [MEMORY[0x1E69CA9E8] deviceClass];
      v4 = [v6 stringWithFormat:@"⭐️ %@ ⭐️", deviceClass];
    }
  }

LABEL_23:

  return v4;
}

+ (id)keyForOverrideEntry:(unint64_t)entry
{
  v3 = @"enable-setup-overrides";
  if (entry == 1)
  {
    v3 = @"disable-default-values";
  }

  if (entry == 2)
  {
    return @"enable-quick-start-overrides";
  }

  else
  {
    return v3;
  }
}

+ (id)keyForSourceDeviceOverrideEntry:(unint64_t)entry
{
  if (entry > 0xC)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7D03860[entry];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"source-device-%@", v3];
}

+ (void)mergeIntoOverridesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  overridePreferences = [self overridePreferences];
  v5 = [overridePreferences objectForKey:@"overrides"];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = [self dictionaryByMerging:v5 with:dictionaryCopy];
  overridePreferences2 = [self overridePreferences];
  [overridePreferences2 setObject:v6 forKey:@"overrides" persistImmediately:1];
}

+ (id)dictionaryByMerging:(id)merging with:(id)with
{
  mergingCopy = merging;
  v7 = MEMORY[0x1E695DF90];
  withCopy = with;
  v9 = [v7 dictionaryWithDictionary:mergingCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__BuddyOverrideUtilities_dictionaryByMerging_with___block_invoke;
  v14[3] = &unk_1E7D03840;
  v15 = mergingCopy;
  v16 = v9;
  selfCopy = self;
  v10 = v9;
  v11 = mergingCopy;
  [withCopy enumerateKeysAndObjectsUsingBlock:v14];

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