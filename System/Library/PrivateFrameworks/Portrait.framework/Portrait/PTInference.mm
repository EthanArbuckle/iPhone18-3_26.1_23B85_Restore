@interface PTInference
+ (id)ANEConfigForAsynchronousWork;
+ (id)ANEConfigForSynchronousWork;
+ (int)espressoEngineForPlanPriority:(int)priority;
+ (int)espressoPlanPriorityValidate:(int)validate;
@end

@implementation PTInference

+ (int)espressoPlanPriorityValidate:(int)validate
{
  result = validate;
  if (validate == 1)
  {
    v8 = v3;
    v9 = v4;
    if (+[PTEffectUtil currentProcessIsCameracaptured])
    {
      return 1;
    }

    else
    {
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_2243FB000, v6, OS_LOG_TYPE_INFO, "Changing espresso plan priority to 1 due to missing entitlements", v7, 2u);
      }

      return 0x2000;
    }
  }

  return result;
}

+ (int)espressoEngineForPlanPriority:(int)priority
{
  if (priority == 1)
  {
    return 10006;
  }

  else
  {
    return 10007;
  }
}

+ (id)ANEConfigForSynchronousWork
{
  espressoPlanPriorityForSynchronousWork = [self espressoPlanPriorityForSynchronousWork];
  v4 = -[PTInferenceANEConfig initWithEspressoPlanPriority:espressoEngine:]([PTInferenceANEConfig alloc], "initWithEspressoPlanPriority:espressoEngine:", espressoPlanPriorityForSynchronousWork, [self espressoEngineForPlanPriority:espressoPlanPriorityForSynchronousWork]);

  return v4;
}

+ (id)ANEConfigForAsynchronousWork
{
  espressoPlanPriorityForAsynchronousWork = [self espressoPlanPriorityForAsynchronousWork];
  v4 = -[PTInferenceANEConfig initWithEspressoPlanPriority:espressoEngine:]([PTInferenceANEConfig alloc], "initWithEspressoPlanPriority:espressoEngine:", espressoPlanPriorityForAsynchronousWork, [self espressoEngineForPlanPriority:espressoPlanPriorityForAsynchronousWork]);

  return v4;
}

@end