@interface RBAttributeFactory
+ (id)_GPUAccessGrantWithProperties:(void *)properties errors:;
+ (id)_RBSBaseMemoryGrant:(void *)grant errors:;
+ (id)_acquisitionCompletionAttributeWithProperties:(void *)properties errors:;
+ (id)_appNapTimerThrottleAttributeWithProperties:(void *)properties errors:;
+ (id)_attributeClassesByName;
+ (id)_conditionAttributeWithProperties:(void *)properties errors:;
+ (id)_cpuAccessGrantWithProperties:(void *)properties errors:;
+ (id)_cpuMaximumUsageLimitationWithProperties:(void *)properties errors:;
+ (id)_cpuMinimumUsageGrantWithProperties:(void *)properties errors:;
+ (id)_domainAttributeWithProperties:(void *)properties errors:;
+ (id)_durationAttributeWithProperties:(void *)properties errors:;
+ (id)_endowmentGrantWithProperties:(void *)properties errors:;
+ (id)_invalidateUnderConditionAttributeWithProperties:(void *)properties errors:;
+ (id)_jetsamPriorityGrantWithProperties:(void *)properties errors:;
+ (id)_legalPropertyNamesAndValuesByClassName;
+ (id)_resistTerminationGrantWithProperties:(void *)properties errors:;
+ (id)_runningReasonAttributeWithProperties:(void *)properties errors:;
+ (id)_savedEndowmentGrantWithProperties:(void *)properties errors:;
+ (id)_suspendableCPUGrantWithProperties:(void *)properties errors:;
+ (id)_tagAttributeWithProperties:(void *)properties errors:;
+ (id)attributeForClass:(id)class andProperties:(id)properties errors:(id)errors;
@end

@implementation RBAttributeFactory

+ (id)attributeForClass:(id)class andProperties:(id)properties errors:(id)errors
{
  classCopy = class;
  propertiesCopy = properties;
  errorsCopy = errors;
  v11 = +[RBAttributeFactory _attributeClassesByName];
  v12 = [v11 objectForKeyedSubscript:classCopy];

  if (!v12)
  {
    v14 = rbs_assertion_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory attributeForClass:andProperties:errors:];
    }

    goto LABEL_41;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _acquisitionCompletionAttributeWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46E08];
LABEL_44:
    grant = [v17 grant];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _cpuAccessGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [(RBAttributeFactory *)self _suspendableCPUGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    objc_opt_self();
    goto LABEL_41;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _cpuMinimumUsageGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46E30];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _domainAttributeWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _durationAttributeWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _GPUAccessGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _jetsamPriorityGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _RBSBaseMemoryGrant:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46E28];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46EB8];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46EF0];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46EF8];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _resistTerminationGrantWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _runningReasonAttributeWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    grant = [RBAttributeFactory _tagAttributeWithProperties:propertiesCopy errors:errorsCopy];
    goto LABEL_56;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46D80];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46D88];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46D90];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46D98];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46DA0];
    goto LABEL_44;
  }

  if (v12 == objc_opt_class())
  {
    v17 = MEMORY[0x277D46DA8];
    goto LABEL_44;
  }

  if (v12 != objc_opt_class())
  {
    if (v12 == objc_opt_class())
    {
      v13 = MEMORY[0x277D46EE0];
      goto LABEL_76;
    }

    if (v12 == objc_opt_class())
    {
      v13 = MEMORY[0x277D46E68];
      goto LABEL_76;
    }

    if (v12 == objc_opt_class())
    {
      grant = [RBAttributeFactory _endowmentGrantWithProperties:propertiesCopy errors:errorsCopy];
      goto LABEL_56;
    }

    if (v12 == objc_opt_class())
    {
      grant = [RBAttributeFactory _savedEndowmentGrantWithProperties:propertiesCopy errors:errorsCopy];
      goto LABEL_56;
    }

    if (v12 == objc_opt_class())
    {
      v13 = MEMORY[0x277D46FE8];
      goto LABEL_76;
    }

    if (v12 == objc_opt_class())
    {
      grant = [RBAttributeFactory _conditionAttributeWithProperties:propertiesCopy errors:errorsCopy];
      goto LABEL_56;
    }

    if (v12 == objc_opt_class())
    {
      grant = [RBAttributeFactory _invalidateUnderConditionAttributeWithProperties:propertiesCopy errors:errorsCopy];
      goto LABEL_56;
    }

    if (v12 == objc_opt_class())
    {
      v13 = MEMORY[0x277D46EE8];
LABEL_76:
      grant = [v13 attribute];
      goto LABEL_56;
    }

LABEL_41:
    v15 = 0;
    goto LABEL_57;
  }

  grant = [RBAttributeFactory _appNapTimerThrottleAttributeWithProperties:propertiesCopy errors:errorsCopy];
LABEL_56:
  v15 = grant;
LABEL_57:

  return v15;
}

+ (id)_attributeClassesByName
{
  objc_opt_self();
  if (_attributeClassesByName_onceToken != -1)
  {
    +[RBAttributeFactory _attributeClassesByName];
  }

  v0 = _attributeClassesByName_availableClasses;

  return v0;
}

+ (id)_acquisitionCompletionAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"CompletionPolicy", v10, propertiesCopy);

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v15 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:unsignedIntegerValue];
      goto LABEL_10;
    }

    v16 = rbs_assertion_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _acquisitionCompletionAttributeWithProperties:errors:];
    }
  }

  else
  {
    v13 = rbs_assertion_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _acquisitionCompletionAttributeWithProperties:errors:];
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_cpuAccessGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Role", v10, propertiesCopy);

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v15 = [MEMORY[0x277D46DF0] grantWithRole:unsignedIntegerValue];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_suspendableCPUGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Role", v10, propertiesCopy);

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      v15 = [MEMORY[0x277D46FF0] grantWithRole:unsignedIntegerValue];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_cpuMaximumUsageLimitationWithProperties:(void *)properties errors:
{
  v4 = a2;
  propertiesCopy = properties;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v4, @"ViolationPolicy", v10, propertiesCopy);
  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    if (!v12)
    {
      v14 = rbs_assertion_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
      }

      v25 = 0;
      goto LABEL_35;
    }

    v13 = objc_opt_class();
    v14 = safeGetProperty(v4, @"Role", v13, propertiesCopy);
    if (!v14)
    {
      v15 = rbs_assertion_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
      }

      v25 = 0;
      goto LABEL_34;
    }

    v15 = [v9 objectForKeyedSubscript:v14];
    if (!v15)
    {
      v18 = rbs_assertion_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
      }

      v25 = 0;
      goto LABEL_33;
    }

    v16 = objc_opt_class();
    v17 = safeGetProperty(v4, @"Percentage", v16, propertiesCopy);
    v18 = v17;
    if (v17)
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
      if ((unsignedIntegerValue - 1) > 0x63)
      {
        v21 = rbs_assertion_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
        }
      }

      else
      {
        v19 = objc_opt_class();
        v20 = safeGetProperty(v4, @"Duration", v19, propertiesCopy);
        v21 = v20;
        if (v20)
        {
          [v20 doubleValue];
          if (v22 > 0.0)
          {
            v23 = v22;
            unsignedIntegerValue2 = [v12 unsignedIntegerValue];
            unsignedIntegerValue3 = [v15 unsignedIntegerValue];
            v25 = [MEMORY[0x277D46DF8] limitationForRole:unsignedIntegerValue3 withPercentage:unsignedIntegerValue duration:unsignedIntegerValue2 violationPolicy:v23];
LABEL_32:

LABEL_33:
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          v26 = rbs_assertion_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
          }
        }

        else
        {
          v26 = rbs_assertion_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
          }
        }
      }
    }

    else
    {
      v21 = rbs_assertion_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
      }
    }

    v25 = 0;
    goto LABEL_32;
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[RBAttributeFactory _cpuMaximumUsageLimitationWithProperties:errors:];
  }

  v25 = 0;
LABEL_36:

  return v25;
}

+ (id)_cpuMinimumUsageGrantWithProperties:(void *)properties errors:
{
  v4 = a2;
  propertiesCopy = properties;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v4, @"Role", v10, propertiesCopy);
  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    if (!v12)
    {
      v15 = rbs_assertion_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
      }

      v23 = 0;
      goto LABEL_25;
    }

    v13 = objc_opt_class();
    v14 = safeGetProperty(v4, @"Percentage", v13, propertiesCopy);
    v15 = v14;
    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      if ((unsignedIntegerValue - 1) > 0x63)
      {
        v19 = rbs_assertion_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
        }
      }

      else
      {
        v17 = objc_opt_class();
        v18 = safeGetProperty(v4, @"Duration", v17, propertiesCopy);
        v19 = v18;
        if (v18)
        {
          [v18 doubleValue];
          if (v20 > 0.0)
          {
            v21 = v20;
            unsignedIntegerValue2 = [v12 unsignedIntegerValue];
            v23 = [MEMORY[0x277D46E00] grantForRole:unsignedIntegerValue2 withPercentage:unsignedIntegerValue duration:v21];
LABEL_24:

LABEL_25:
            goto LABEL_26;
          }

          v24 = rbs_assertion_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
          }
        }

        else
        {
          v24 = rbs_assertion_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
          }
        }
      }
    }

    else
    {
      v19 = rbs_assertion_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
      }
    }

    v23 = 0;
    goto LABEL_24;
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[RBAttributeFactory _cpuMinimumUsageGrantWithProperties:errors:];
  }

  v23 = 0;
LABEL_26:

  return v23;
}

+ (id)_domainAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"Domain", v6, propertiesCopy);
  v8 = objc_opt_class();
  v9 = safeGetProperty(v5, @"Name", v8, propertiesCopy);

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = rbs_assertion_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _domainAttributeWithProperties:errors:];
    }

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277D46E38] attributeWithDomain:v7 name:v9];
  }

  return v12;
}

+ (id)_durationAttributeWithProperties:(void *)properties errors:
{
  v39 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"InvalidationDuration", v10, propertiesCopy);
  v12 = objc_opt_class();
  v13 = safeGetProperty(v5, @"WarningDuration", v12, propertiesCopy);
  v14 = objc_opt_class();
  v15 = safeGetProperty(v5, @"StartPolicy", v14, propertiesCopy);
  v16 = objc_opt_class();
  v17 = safeGetProperty(v5, @"EndPolicy", v16, propertiesCopy);

  if (v11 && v15 && v17)
  {
    v18 = [v9 objectForKeyedSubscript:v15];
    v19 = [v9 objectForKeyedSubscript:v17];
    v20 = v19;
    if (v18 && v19)
    {
      unsignedIntegerValue = [v18 unsignedIntegerValue];
      unsignedIntegerValue2 = [v20 unsignedIntegerValue];
      [v11 doubleValue];
      v24 = v23;
      [v13 doubleValue];
      v26 = [MEMORY[0x277D46E48] attributeWithDuration:unsignedIntegerValue warningDuration:unsignedIntegerValue2 startPolicy:v24 endPolicy:v25];
LABEL_20:

      goto LABEL_21;
    }

    if (v18)
    {
      if (v19)
      {
LABEL_19:
        v26 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v27 = rbs_assertion_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _durationAttributeWithProperties:errors:];
      }

      if (v20)
      {
        goto LABEL_19;
      }
    }

    v28 = rbs_assertion_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _durationAttributeWithProperties:errors:];
    }

    goto LABEL_19;
  }

  v18 = rbs_assertion_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v31 = 138544130;
    v32 = v11;
    v33 = 2114;
    v34 = v13;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v17;
    _os_log_error_impl(&dword_262485000, v18, OS_LOG_TYPE_ERROR, "Detected misconfigured duration attribute: invalidationDuration %{public}@; warningDuration %{public}@; startPolicy %{public}@; endPolicy %{public}@", &v31, 0x2Au);
  }

  v26 = 0;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_GPUAccessGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Role", v10, propertiesCopy);

  if (!v11)
  {
    grant = [MEMORY[0x277D46E70] grant];
    goto LABEL_5;
  }

  v12 = [v9 objectForKeyedSubscript:v11];
  unsignedIntValue = [v12 unsignedIntValue];

  if (unsignedIntValue)
  {
    grant = [MEMORY[0x277D46E70] grantWithRole:unsignedIntValue];
LABEL_5:
    v15 = grant;
    goto LABEL_9;
  }

  v16 = rbs_assertion_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[RBAttributeFactory _GPUAccessGrantWithProperties:errors:];
  }

  v15 = 0;
LABEL_9:

  return v15;
}

+ (id)_jetsamPriorityGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"Band", v6, propertiesCopy);

  if (v7)
  {
    v8 = [MEMORY[0x277D46EA8] grantWithBand:{objc_msgSend(v7, "unsignedIntValue")}];
  }

  else
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _jetsamPriorityGrantWithProperties:errors:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_RBSBaseMemoryGrant:(void *)grant errors:
{
  v4 = a2;
  grantCopy = grant;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v4, @"Category", v10, grantCopy);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = safeGetProperty(v4, @"Strength", v12, grantCopy);
    if (v13)
    {
      v14 = [v9 objectForKeyedSubscript:v13];
      v15 = v14;
      if (v14)
      {
        v16 = [MEMORY[0x277D46DE8] grantWithCategory:v11 strength:{-[NSObject charValue](v14, "charValue")}];
LABEL_14:

        goto LABEL_15;
      }

      v17 = rbs_assertion_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _RBSBaseMemoryGrant:errors:];
      }
    }

    else
    {
      v15 = rbs_assertion_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[RBAttributeFactory _RBSBaseMemoryGrant:errors:];
      }
    }

    v16 = 0;
    goto LABEL_14;
  }

  v13 = rbs_assertion_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[RBAttributeFactory _RBSBaseMemoryGrant:errors:];
  }

  v16 = 0;
LABEL_15:

  return v16;
}

+ (id)_resistTerminationGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Resistance", v10, propertiesCopy);

  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      v14 = [MEMORY[0x277D46FC0] grantWithResistance:{objc_msgSend(v12, "integerValue")}];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_runningReasonAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"RunningReason", v6, propertiesCopy);

  if (v7)
  {
    longValue = [v7 longValue];
    if (longValue >= 1)
    {
      v9 = [MEMORY[0x277D46FD0] withReason:longValue];
      goto LABEL_9;
    }

    v10 = rbs_assertion_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _runningReasonAttributeWithProperties:errors:];
    }
  }

  else
  {
    v10 = rbs_assertion_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _runningReasonAttributeWithProperties:errors:];
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)_tagAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"Tag", v6, propertiesCopy);

  if (v7)
  {
    v8 = [MEMORY[0x277D46FF8] attributeWithTag:v7];
  }

  else
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _tagAttributeWithProperties:errors:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_appNapTimerThrottleAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Tier", v10, propertiesCopy);

  if (!v11 || ([v9 objectForKeyedSubscript:v11], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(MEMORY[0x277D46DB0], "grantWithTier:", objc_msgSend(v12, "unsignedCharValue")), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _appNapTimerThrottleAttributeWithProperties:errors:];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_endowmentGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = objc_opt_class();
  v11 = safeGetProperty(v5, @"Namespace", v10, propertiesCopy);

  if (!v11 || ([v9 objectForKeyedSubscript:v11], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(MEMORY[0x277D46E50], "grantWithNamespace:endowment:", v12, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _endowmentGrantWithProperties:errors:];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_savedEndowmentGrantWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"Namespace", v6, propertiesCopy);
  v8 = objc_opt_class();
  v9 = safeGetProperty(v5, @"Key", v8, propertiesCopy);

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || ([MEMORY[0x277D46FE0] grantWithNamespace:v7 key:v9], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = rbs_assertion_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _savedEndowmentGrantWithProperties:errors:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_conditionAttributeWithProperties:(void *)properties errors:
{
  propertiesCopy = properties;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_class();
  v7 = safeGetProperty(v5, @"Condition", v6, propertiesCopy);
  v8 = objc_opt_class();
  v9 = safeGetProperty(v5, @"Value", v8, propertiesCopy);

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || ([MEMORY[0x277D46E18] attributeWithCondition:v7 value:{objc_msgSend(v9, "integerValue")}], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = rbs_assertion_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[RBAttributeFactory _conditionAttributeWithProperties:errors:];
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_invalidateUnderConditionAttributeWithProperties:(void *)properties errors:
{
  v4 = a2;
  propertiesCopy = properties;
  objc_opt_self();
  if (_os_feature_enabled_impl())
  {
    v6 = objc_opt_class();
    v7 = safeGetProperty(v4, @"Condition", v6, propertiesCopy);
    if (currentDeviceClass() != 2 && v7 && ([v7 isEqualToString:@"therm"] & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = safeGetProperty(v4, @"MinValue", v9, propertiesCopy);
      v11 = v10;
      if (!v7 || !v10 || ([MEMORY[0x277D46EA0] attributeWithCondition:v7 minValue:{objc_msgSend(v10, "integerValue")}], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = rbs_assertion_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[RBAttributeFactory _invalidateUnderConditionAttributeWithProperties:errors:];
        }

        v12 = 0;
      }

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_legalPropertyNamesAndValuesByClassName
{
  objc_opt_self();
  if (_legalPropertyNamesAndValuesByClassName_onceToken != -1)
  {
    +[RBAttributeFactory _legalPropertyNamesAndValuesByClassName];
  }

  v0 = _legalPropertyNamesAndValuesByClassName_legalValues;

  return v0;
}

void __61__RBAttributeFactory__legalPropertyNamesAndValuesByClassName__block_invoke()
{
  v8[12] = *MEMORY[0x277D85DE8];
  v7[0] = @"RBSAcquisitionCompletionAttribute";
  v7[1] = @"RBSCPUAccessGrant";
  v8[0] = &unk_28751B0E0;
  v8[1] = &unk_28751B108;
  v7[2] = @"RBSSuspendableCPUGrant";
  v7[3] = @"RBSCoalitionLevelGrant";
  v8[2] = &unk_28751B130;
  v8[3] = &unk_28751B158;
  v7[4] = @"RBSCPUMaximumUsageLimitation";
  v7[5] = @"RBSBaseMemoryGrant";
  v8[4] = &unk_28751B180;
  v8[5] = &unk_28751B1A8;
  v7[6] = @"RBSCPUMinimumUsageGrant";
  v7[7] = @"RBSResistTerminationGrant";
  v8[6] = &unk_28751B1D0;
  v8[7] = &unk_28751B1F8;
  v7[8] = @"RBSDurationAttribute";
  v7[9] = @"RBSAppNapPreventTimerThrottleGrant";
  v8[8] = &unk_28751B220;
  v8[9] = &unk_28751B248;
  v7[10] = @"RBSEndowmentGrant";
  v5[0] = @"RBSVisibilityNamespace";
  v5[1] = @"RBSUserfacingNamespace";
  v0 = *MEMORY[0x277D470C8];
  v6[0] = *MEMORY[0x277D470D0];
  v6[1] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[11] = @"RBSGPUAccessGrant";
  v8[10] = v1;
  v8[11] = &unk_28751B270;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:12];
  v3 = _legalPropertyNamesAndValuesByClassName_legalValues;
  _legalPropertyNamesAndValuesByClassName_legalValues = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __45__RBAttributeFactory__attributeClassesByName__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _attributeClassesByName_availableClasses;
  _attributeClassesByName_availableClasses = v0;

  v2 = objc_opt_class();
  v3 = _attributeClassesByName_availableClasses;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v2 forKeyedSubscript:v5];

  v6 = objc_opt_class();
  v7 = _attributeClassesByName_availableClasses;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 setObject:v6 forKeyedSubscript:v9];

  v10 = objc_opt_class();
  v11 = _attributeClassesByName_availableClasses;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v11 setObject:v10 forKeyedSubscript:v13];

  v14 = objc_opt_class();
  v15 = _attributeClassesByName_availableClasses;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v15 setObject:v14 forKeyedSubscript:v17];

  v18 = objc_opt_class();
  v19 = _attributeClassesByName_availableClasses;
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v19 setObject:v18 forKeyedSubscript:v21];

  v22 = objc_opt_class();
  v23 = _attributeClassesByName_availableClasses;
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  [v23 setObject:v22 forKeyedSubscript:v25];

  v26 = objc_opt_class();
  v27 = _attributeClassesByName_availableClasses;
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  [v27 setObject:v26 forKeyedSubscript:v29];

  v30 = objc_opt_class();
  v31 = _attributeClassesByName_availableClasses;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  [v31 setObject:v30 forKeyedSubscript:v33];

  v34 = objc_opt_class();
  v35 = _attributeClassesByName_availableClasses;
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  [v35 setObject:v34 forKeyedSubscript:v37];

  v38 = objc_opt_class();
  v39 = _attributeClassesByName_availableClasses;
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  [v39 setObject:v38 forKeyedSubscript:v41];

  v42 = objc_opt_class();
  v43 = _attributeClassesByName_availableClasses;
  v44 = objc_opt_class();
  v45 = NSStringFromClass(v44);
  [v43 setObject:v42 forKeyedSubscript:v45];

  v46 = objc_opt_class();
  v47 = _attributeClassesByName_availableClasses;
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  [v47 setObject:v46 forKeyedSubscript:v49];

  v50 = objc_opt_class();
  v51 = _attributeClassesByName_availableClasses;
  v52 = objc_opt_class();
  v53 = NSStringFromClass(v52);
  [v51 setObject:v50 forKeyedSubscript:v53];

  v54 = objc_opt_class();
  v55 = _attributeClassesByName_availableClasses;
  v56 = objc_opt_class();
  v57 = NSStringFromClass(v56);
  [v55 setObject:v54 forKeyedSubscript:v57];

  v58 = objc_opt_class();
  v59 = _attributeClassesByName_availableClasses;
  v60 = objc_opt_class();
  v61 = NSStringFromClass(v60);
  [v59 setObject:v58 forKeyedSubscript:v61];

  v62 = objc_opt_class();
  v63 = _attributeClassesByName_availableClasses;
  v64 = objc_opt_class();
  v65 = NSStringFromClass(v64);
  [v63 setObject:v62 forKeyedSubscript:v65];

  v66 = objc_opt_class();
  v67 = _attributeClassesByName_availableClasses;
  v68 = objc_opt_class();
  v69 = NSStringFromClass(v68);
  [v67 setObject:v66 forKeyedSubscript:v69];

  v70 = objc_opt_class();
  v71 = _attributeClassesByName_availableClasses;
  v72 = objc_opt_class();
  v73 = NSStringFromClass(v72);
  [v71 setObject:v70 forKeyedSubscript:v73];

  v74 = objc_opt_class();
  v75 = _attributeClassesByName_availableClasses;
  v76 = objc_opt_class();
  v77 = NSStringFromClass(v76);
  [v75 setObject:v74 forKeyedSubscript:v77];

  v78 = objc_opt_class();
  v79 = _attributeClassesByName_availableClasses;
  v80 = objc_opt_class();
  v81 = NSStringFromClass(v80);
  [v79 setObject:v78 forKeyedSubscript:v81];

  v82 = objc_opt_class();
  v83 = _attributeClassesByName_availableClasses;
  v84 = objc_opt_class();
  v85 = NSStringFromClass(v84);
  [v83 setObject:v82 forKeyedSubscript:v85];

  v86 = objc_opt_class();
  v87 = _attributeClassesByName_availableClasses;
  v88 = objc_opt_class();
  v89 = NSStringFromClass(v88);
  [v87 setObject:v86 forKeyedSubscript:v89];

  v90 = objc_opt_class();
  v91 = _attributeClassesByName_availableClasses;
  v92 = objc_opt_class();
  v93 = NSStringFromClass(v92);
  [v91 setObject:v90 forKeyedSubscript:v93];

  v94 = objc_opt_class();
  v95 = _attributeClassesByName_availableClasses;
  v96 = objc_opt_class();
  v97 = NSStringFromClass(v96);
  [v95 setObject:v94 forKeyedSubscript:v97];

  v98 = objc_opt_class();
  v99 = _attributeClassesByName_availableClasses;
  v100 = objc_opt_class();
  v101 = NSStringFromClass(v100);
  [v99 setObject:v98 forKeyedSubscript:v101];

  v102 = objc_opt_class();
  v103 = _attributeClassesByName_availableClasses;
  v104 = objc_opt_class();
  v105 = NSStringFromClass(v104);
  [v103 setObject:v102 forKeyedSubscript:v105];

  v106 = objc_opt_class();
  v107 = _attributeClassesByName_availableClasses;
  v108 = objc_opt_class();
  v109 = NSStringFromClass(v108);
  [v107 setObject:v106 forKeyedSubscript:v109];

  v110 = objc_opt_class();
  v111 = _attributeClassesByName_availableClasses;
  v112 = objc_opt_class();
  v113 = NSStringFromClass(v112);
  [v111 setObject:v110 forKeyedSubscript:v113];

  v114 = objc_opt_class();
  v115 = _attributeClassesByName_availableClasses;
  v116 = objc_opt_class();
  v117 = NSStringFromClass(v116);
  [v115 setObject:v114 forKeyedSubscript:v117];

  v118 = objc_opt_class();
  v119 = _attributeClassesByName_availableClasses;
  v120 = objc_opt_class();
  v121 = NSStringFromClass(v120);
  [v119 setObject:v118 forKeyedSubscript:v121];

  v122 = objc_opt_class();
  v123 = _attributeClassesByName_availableClasses;
  v124 = objc_opt_class();
  v125 = NSStringFromClass(v124);
  [v123 setObject:v122 forKeyedSubscript:v125];

  v126 = objc_opt_class();
  v127 = _attributeClassesByName_availableClasses;
  v128 = objc_opt_class();
  v129 = NSStringFromClass(v128);
  [v127 setObject:v126 forKeyedSubscript:v129];

  v130 = objc_opt_class();
  v131 = _attributeClassesByName_availableClasses;
  v132 = objc_opt_class();
  v133 = NSStringFromClass(v132);
  [v131 setObject:v130 forKeyedSubscript:v133];

  v134 = objc_opt_class();
  v135 = _attributeClassesByName_availableClasses;
  v136 = objc_opt_class();
  v137 = NSStringFromClass(v136);
  [v135 setObject:v134 forKeyedSubscript:v137];

  v138 = objc_opt_class();
  v139 = _attributeClassesByName_availableClasses;
  v140 = objc_opt_class();
  v141 = NSStringFromClass(v140);
  [v139 setObject:v138 forKeyedSubscript:v141];
}

+ (void)attributeForClass:andProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_acquisitionCompletionAttributeWithProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_acquisitionCompletionAttributeWithProperties:errors:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuMaximumUsageLimitationWithProperties:errors:.cold.8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_cpuMinimumUsageGrantWithProperties:errors:.cold.6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_domainAttributeWithProperties:errors:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "Detected misconfigured domain attribute: domain %{public}@; name %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_durationAttributeWithProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_durationAttributeWithProperties:errors:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_GPUAccessGrantWithProperties:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_jetsamPriorityGrantWithProperties:errors:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_RBSBaseMemoryGrant:errors:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_RBSBaseMemoryGrant:errors:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_RBSBaseMemoryGrant:errors:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_runningReasonAttributeWithProperties:errors:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_runningReasonAttributeWithProperties:errors:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_tagAttributeWithProperties:errors:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_appNapTimerThrottleAttributeWithProperties:errors:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_endowmentGrantWithProperties:errors:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_savedEndowmentGrantWithProperties:errors:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "Detected misconfigured RBSSavedEndowmentGrant attribute with namespace %{public}@ and key %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_conditionAttributeWithProperties:errors:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "Detected misconfigured RBSConditionAttribute attribute with condition %{public}@ and value %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_invalidateUnderConditionAttributeWithProperties:errors:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "Detected misconfigured RBSConditionAttribute attribute with condition %{public}@ and minVal %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end