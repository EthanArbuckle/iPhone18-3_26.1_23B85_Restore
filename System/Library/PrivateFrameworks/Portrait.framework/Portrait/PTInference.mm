@interface PTInference
+ (id)ANEConfigForAsynchronousWork;
+ (id)ANEConfigForSynchronousWork;
+ (int)espressoEngineForPlanPriority:(int)a3;
+ (int)espressoPlanPriorityValidate:(int)a3;
@end

@implementation PTInference

+ (int)espressoPlanPriorityValidate:(int)a3
{
  result = a3;
  if (a3 == 1)
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

+ (int)espressoEngineForPlanPriority:(int)a3
{
  if (a3 == 1)
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
  v3 = [a1 espressoPlanPriorityForSynchronousWork];
  v4 = -[PTInferenceANEConfig initWithEspressoPlanPriority:espressoEngine:]([PTInferenceANEConfig alloc], "initWithEspressoPlanPriority:espressoEngine:", v3, [a1 espressoEngineForPlanPriority:v3]);

  return v4;
}

+ (id)ANEConfigForAsynchronousWork
{
  v3 = [a1 espressoPlanPriorityForAsynchronousWork];
  v4 = -[PTInferenceANEConfig initWithEspressoPlanPriority:espressoEngine:]([PTInferenceANEConfig alloc], "initWithEspressoPlanPriority:espressoEngine:", v3, [a1 espressoEngineForPlanPriority:v3]);

  return v4;
}

@end