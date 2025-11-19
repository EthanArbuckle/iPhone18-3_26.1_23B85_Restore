@interface NSUserDefaults(HKSPSleep)
+ (id)hksp_analyticsUserDefaults;
+ (id)hksp_internalUserDefaults;
+ (id)hksp_sleepdUserDefaults;
+ (id)hksp_springBoardUserDefaults;
- (float)hksp_debugSleepModeAlpha:()HKSPSleep;
- (id)hksp_dictionaryRepresentationForKeys:()HKSPSleep;
- (uint64_t)hksp_removeObjectsForKeys:()HKSPSleep;
- (uint64_t)hksp_saveDictionary:()HKSPSleep;
- (void)hksp_reset;
@end

@implementation NSUserDefaults(HKSPSleep)

+ (id)hksp_analyticsUserDefaults
{
  if (qword_280B069A0 != -1)
  {
    dispatch_once(&qword_280B069A0, &__block_literal_global_332);
  }

  v1 = qword_280B06998;

  return v1;
}

+ (id)hksp_sleepdUserDefaults
{
  if (qword_280B06980 != -1)
  {
    dispatch_once(&qword_280B06980, &__block_literal_global_20);
  }

  v1 = _MergedGlobals_15;

  return v1;
}

- (id)hksp_dictionaryRepresentationForKeys:()HKSPSleep
{
  v4 = a3;
  v5 = [a1 hksp_dictionaryRepresentation];
  v6 = [v5 hksp_dictionaryByFilteringKeys:v4];

  return v6;
}

- (uint64_t)hksp_saveDictionary:()HKSPSleep
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__NSUserDefaults_HKSPSleep__hksp_saveDictionary___block_invoke;
  v4[3] = &unk_279C760A8;
  v4[4] = a1;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (uint64_t)hksp_removeObjectsForKeys:()HKSPSleep
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__NSUserDefaults_HKSPSleep__hksp_removeObjectsForKeys___block_invoke;
  v4[3] = &unk_279C75810;
  v4[4] = a1;
  return [a3 na_each:v4];
}

- (void)hksp_reset
{
  v2 = [objc_opt_class() hksp_sleepdUserDefaults];

  if (v2 == a1)
  {
    v5 = @"com.apple.sleepd";
  }

  else
  {
    v3 = [objc_opt_class() hksp_internalUserDefaults];

    if (v3 == a1)
    {
      v5 = @"com.apple.internal.sleep";
    }

    else
    {
      v4 = [objc_opt_class() hksp_analyticsUserDefaults];

      if (v4 != a1)
      {

        HKSPResetUserDefaults(a1);
        return;
      }

      v5 = @"com.apple.sleep.analytics";
    }
  }

  [a1 removePersistentDomainForName:v5];
}

+ (id)hksp_internalUserDefaults
{
  if (qword_280B06990 != -1)
  {
    dispatch_once(&qword_280B06990, &__block_literal_global_330);
  }

  v1 = qword_280B06988;

  return v1;
}

+ (id)hksp_springBoardUserDefaults
{
  if (qword_280B069B0 != -1)
  {
    dispatch_once(&qword_280B069B0, &__block_literal_global_334);
  }

  v1 = qword_280B069A8;

  return v1;
}

- (float)hksp_debugSleepModeAlpha:()HKSPSleep
{
  v4 = [a1 objectForKey:@"DebugSleepModeAlpha"];
  v5 = v4;
  if (a3)
  {
    *a3 = v4 != 0;
  }

  [v4 floatValue];
  v7 = v6;

  return v7;
}

@end