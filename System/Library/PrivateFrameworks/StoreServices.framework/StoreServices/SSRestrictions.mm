@interface SSRestrictions
+ (BOOL)_calculateIsRestrictionsPasscodeSet;
+ (BOOL)_isExplicitContentDisallowedInCurrentStoreFront;
+ (BOOL)_isExplicitContentRestrictedByDefaultInCurrentStoreFront;
+ (BOOL)isActiveAccountAllowedToUpdateRestrictions;
+ (id)setOfActiveRestrictionUUIDs;
+ (void)didDisplayExplicitRestrictionAlertOfType:(int64_t)type;
+ (void)isExplicitContentDisallowedInCurrentStoreFront:(id)front;
+ (void)isExplicitContentRestrictedByDefaultInCurrentStoreFront:(id)front;
+ (void)isRestrictionsPasscodeSet:(id)set;
+ (void)setAllowExplicitContent;
+ (void)shouldDisplayExplicitRestrictionAlertOfType:(int64_t)type completionBlock:(id)block;
@end

@implementation SSRestrictions

+ (id)setOfActiveRestrictionUUIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([self _isExplicitContentDisallowedInCurrentStoreFront])
  {
    [v3 addObject:@"com.apple.itunesstored.ExplicitPreferenceRestriction"];
  }

  return v3;
}

+ (void)isExplicitContentRestrictedByDefaultInCurrentStoreFront:(id)front
{
  v4 = [[SSURLBag alloc] initWithURLBagContext:[SSURLBagContext contextWithBagType:0]];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__SSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke;
  v5[3] = &unk_1E84AEC90;
  v5[4] = front;
  [(SSURLBag *)v4 loadValueForKey:@"ExplicitOffAndPreferencesEnabled" completionBlock:v5];
}

uint64_t __74__SSRestrictions_isExplicitContentRestrictedByDefaultInCurrentStoreFront___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 BOOLValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (void)isExplicitContentDisallowedInCurrentStoreFront:(id)front
{
  v4 = [[SSURLBag alloc] initWithURLBagContext:[SSURLBagContext contextWithBagType:0]];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke;
  v5[3] = &unk_1E84AEC90;
  v5[4] = front;
  [(SSURLBag *)v4 loadValueForKey:@"ExplicitOffAndPreferencesDisabled" completionBlock:v5];
}

uint64_t __65__SSRestrictions_isExplicitContentDisallowedInCurrentStoreFront___block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_respondsToSelector())
  {
    [a2 BOOLValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

+ (BOOL)isActiveAccountAllowedToUpdateRestrictions
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] isSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE68]])
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E698C8A8] isRunningInStoreDemoMode] ^ 1;
  }
}

+ (void)isRestrictionsPasscodeSet:(id)set
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SSRestrictions_isRestrictionsPasscodeSet___block_invoke;
  v6[3] = &unk_1E84AC738;
  v6[4] = self;
  v6[5] = set;
  dispatch_async(global_queue, v6);
}

uint64_t __44__SSRestrictions_isRestrictionsPasscodeSet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _calculateIsRestrictionsPasscodeSet];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

+ (void)setAllowExplicitContent
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = *MEMORY[0x1E69ADE68];

  [mEMORY[0x1E69ADFB8] setBoolValue:1 forSetting:v3];
}

+ (void)shouldDisplayExplicitRestrictionAlertOfType:(int64_t)type completionBlock:(id)block
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([mEMORY[0x1E69ADFB8] effectiveRestrictedBoolValueForSetting:*MEMORY[0x1E69ADE68]] == 2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__SSRestrictions_shouldDisplayExplicitRestrictionAlertOfType_completionBlock___block_invoke;
    block[3] = &unk_1E84AECB8;
    block[5] = block;
    block[6] = type;
    block[4] = self;
    dispatch_async(global_queue, block);
  }

  else
  {
    v9 = *(block + 2);

    v9(block, 0, 0);
  }
}

uint64_t __78__SSRestrictions_shouldDisplayExplicitRestrictionAlertOfType_completionBlock___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isExplicitContentDisallowedInCurrentStoreFront])
  {
    return (*(*(a1 + 40) + 16))();
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = __UserDefaultsKeyForExplicitRestrictionAlertType(*(a1 + 48));
  v4 = *(a1 + 48);
  if (v4 > 2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v5 = v3;
  if (v4)
  {
    if (v4 != 1 || !v3 || [v2 integerForKey:v3] > 2)
    {
      return (*(*(a1 + 40) + 16))();
    }

    goto LABEL_15;
  }

  v7 = +[SSRestrictions isActiveAccountAllowedToUpdateRestrictions];
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && [v2 integerForKey:v5] <= 0)
  {
LABEL_15:
    if (([*(a1 + 32) _calculateIsRestrictionsPasscodeSet] & 1) == 0)
    {
      [*(a1 + 32) _isExplicitContentRestrictedByDefaultInCurrentStoreFront];
    }
  }

  return (*(*(a1 + 40) + 16))();
}

+ (void)didDisplayExplicitRestrictionAlertOfType:(int64_t)type
{
  v3 = __UserDefaultsKeyForExplicitRestrictionAlertType(type);
  if (v3)
  {
    v4 = v3;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults integerForKey:v4] + 1;

    [standardUserDefaults setInteger:v6 forKey:v4];
  }
}

+ (BOOL)_calculateIsRestrictionsPasscodeSet
{
  v2 = SSVPreferencesFramework();
  v3 = SSVWeakLinkedClassForString(&cfstr_Psrestrictions.isa, v2);

  return [v3 settingEnabled];
}

+ (BOOL)_isExplicitContentRestrictedByDefaultInCurrentStoreFront
{
  v2 = [[SSURLBag alloc] initWithURLBagContext:[SSURLBagContext contextWithBagType:0]];
  v3 = [(SSURLBag *)v2 valueForKey:@"ExplicitOffAndPreferencesEnabled" error:0];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v3) = [v3 BOOLValue];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (BOOL)_isExplicitContentDisallowedInCurrentStoreFront
{
  v2 = [[SSURLBag alloc] initWithURLBagContext:[SSURLBagContext contextWithBagType:0]];
  v3 = [(SSURLBag *)v2 valueForKey:@"ExplicitOffAndPreferencesDisabled" error:0];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(v3) = [v3 BOOLValue];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

@end