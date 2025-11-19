@interface RBSLegacyAttribute(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (uint64_t)isValidForContext:()RBProcessState withError:;
- (void)applyToAcquisitionContext:()RBProcessState;
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSLegacyAttribute(RBProcessState)

- (void)applyToAcquisitionContext:()RBProcessState
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 acquisitionPolicy])
  {
    v5 = [a1 requestedReason];
    v6 = [v4 descriptor];
    v7 = v6;
    if (v5 == 1 || v5 == 9 && ([v6 explanation], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"com.apple.extension.session"), v8, v9))
    {
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 identifier];
        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "forcing acquisition after state application for assertion %@", &v13, 0xCu);
      }

      [v4 setAcquisitionPolicy:1];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  [(RBSLegacyAttribute *)a1 _mutateReasonWithContext:v8];
  if ([v8 isActiveDueToInheritedEndowment])
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RBSLegacyAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:? context:?];
    }

LABEL_4:

    goto LABEL_5;
  }

  if (applyToAssertionIntransientState_attributePath_context__onceToken != -1)
  {
    [RBSLegacyAttribute(RBProcessState) applyToAssertionIntransientState:attributePath:context:];
  }

  v10 = [(RBSLegacyAttribute *)a1 _invalidationDurationExpiringTaskCompletionsQuickly:?];
  [v7 invalidationDuration];
  if (v10 > v11)
  {
    [v7 setInvalidationDuration:v10];
  }

  if (v10 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 5.0;
  }

  [v7 warningDuration];
  if (v12 > v13)
  {
    [v7 setWarningDuration:v12];
  }

  started = [(RBSLegacyAttribute *)a1 _startPolicy];
  if (started > [v7 startPolicy])
  {
    [v7 setStartPolicy:started];
  }

  v15 = 2 * (a1 != 0);
  if (v15 > [v7 endPolicy])
  {
    [v7 setEndPolicy:v15];
  }

  if (a1 && ([a1 reason] == 9 || objc_msgSend(a1, "reason") == 13))
  {
    [v7 setSuspendsOnOriginatorSuspension:1];
  }

  if ([(RBSLegacyAttribute *)a1 _definesRelativeStartTime])
  {
    [v7 setDefinesRelativeStartTime:1];
  }

  if ([a1 reason])
  {
    [v7 setLegacyReason:{objc_msgSend(a1, "reason")}];
  }

  if ([(RBSLegacyAttribute *)a1 _role]>= 2)
  {
    [v7 setPreventsSuspension:1];
  }

  if (_os_feature_enabled_impl())
  {
    v16 = [(RBSLegacyAttribute *)a1 _invalidateOnThermalLevel];
    v9 = [v7 invalidatesOnConditions];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [v7 setInvalidatesOnConditions:v9];
    }

    v17 = [v9 objectForKey:@"therm"];
    v18 = v17;
    if (!v17 || v16 < [v17 integerValue])
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      [v9 setValue:v19 forKey:@"therm"];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if ([v8 isActiveDueToInheritedEndowment])
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RBSLegacyAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:? context:?];
    }
  }

  else
  {
    [RBSLegacyAttribute(RBProcessState) applyToAssertionTransientState:a1 attributePath:v7 context:?];
  }
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if ([v8 isActiveDueToInheritedEndowment])
  {
    v9 = rbs_assertion_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RBSLegacyAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:? context:?];
    }

    goto LABEL_4;
  }

  v10 = [(RBSLegacyAttribute *)a1 _explicitJetsamBand:v8];
  if (v10 > [v7 explicitJetsamBand])
  {
    [v7 setExplicitJetsamBand:v10];
  }

  v11 = [v7 memoryLimit];
  v12 = [v8 target];
  v9 = [v12 process];

  if (v9)
  {
    v13 = [v9 memoryLimits];
    if (v10 == 100 || [a1 reason] == 9 && (objc_msgSend(v8, "assertion"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "explanation"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"com.apple.viewservice.session"), v16, v15, v17) && v10 == 80)
    {
      v14 = *MEMORY[0x277D47070];
    }

    else
    {
      v14 = *MEMORY[0x277D47078];
      if (v10)
      {
        [v7 setPreventBaseMemoryLimitReduction:1];
      }
    }

    v51 = 2;
    v18 = [v13 memoryLimitForCategory:v14 strength:&v51];
    if (v11 == v18)
    {
      v19 = v51;
      v20 = [v7 memoryLimitStrength];
      if (v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      [v7 setMemoryLimitStrength:v21];
    }

    else if (v11 < v18)
    {
      v22 = v18;
      [v7 setMemoryLimitCategory:v14];
      [v7 setMemoryLimitStrength:v51];
      [v7 setMemoryLimit:v22];
    }
  }

  else
  {
    v13 = rbs_assertion_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "applying Legacy Assertion to process state without concrete target", buf, 2u);
    }
  }

  v23 = [(RBSLegacyAttribute *)a1 _role];
  if (v23 > [v7 role])
  {
    if (v23 >= 2)
    {
      [v7 setPreventSuspend:1];
    }

    [v7 setRole:v23];
  }

  v24 = [(RBSLegacyAttribute *)a1 _terminationResistance];
  if (v24 > [v7 terminationResistance])
  {
    [v7 setTerminationResistance:v24];
  }

  if (a1)
  {
    if (([a1 flags] & 4) == 0)
    {
      [v7 setPreventIdleSleep:1];
      v25 = MEMORY[0x277CCACA8];
      v26 = [v8 assertionID];
      v27 = [v8 assertion];
      v28 = [v27 explanation];
      [a1 reason];
      v29 = NSStringFromRBSLegacyReason();
      v30 = [v25 stringWithFormat:@"%@:%@(%@)", v26, v28, v29];
      [v7 addPreventIdleSleepIdentifier:v30];
    }

    if (([a1 flags] & 0x20) != 0)
    {
      goto LABEL_36;
    }
  }

  if ([v7 explicitJetsamBand] >= 0x50)
  {
LABEL_36:
    if ([v7 gpuRole] <= 1)
    {
      [v7 setGPURole:2];
    }
  }

  if (a1 && ([a1 reason] == 9 || objc_msgSend(a1, "reason") == 13))
  {
    [v7 setTargetedBySuspendableAssertion:1];
  }

  v31 = [v8 targetIdentity];
  v32 = [v31 embeddedApplicationIdentifier];
  v33 = [v32 isEqualToString:@"com.apple.mobilesafari"];

  if (v33)
  {
    if (([v7 jetsamLenientMode] & 1) == 0)
    {
      v34 = [v8 availableInheritances];
      v35 = [v34 allNamespaces];
      v36 = [v35 containsObject:*MEMORY[0x277D470D0]];

      if (v36)
      {
        [v7 setJetsamLenientMode:1];
      }
    }
  }

  v37 = [a1 reason];
  if (v37 == 10008)
  {
    [v7 setThrottleBestEffortNetworking:1];
  }

  if (a1)
  {
    v38 = [a1 reason] - 19;
    if (v38 > 4)
    {
      v39 = 80;
    }

    else
    {
      v39 = qword_26250BA28[v38];
    }

    v40 = [(RBSLegacyAttribute *)a1 _maxCPUDuration];
LABEL_53:
    v41 = [v8 targetProcess];
    v42 = [v41 isPlatformBinary];

    if ((v42 & 1) == 0)
    {
      if (a1)
      {
        v43 = [a1 reason];
        if (v43 <= 0x17 && ((1 << v43) & 0xA80010) != 0)
        {
          v44 = 1;
        }

        else
        {
          v44 = 2;
        }
      }

      else
      {
        v44 = 0;
      }

      v45 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:v39 duration:v40 violationPolicy:v44];
      v46 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:80 duration:180 violationPolicy:0];
      v47 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:80 duration:180 violationPolicy:0];
      [v7 setMaxCPUUsageLimits:v45 forRole:2];
      [v7 setMaxCPUUsageLimits:v45 forRole:4];
      [v7 setMaxCPUUsageLimits:v46 forRole:6];
      [v7 setMaxCPUUsageLimits:v47 forRole:8];
    }

    goto LABEL_59;
  }

  v49 = [(RBSLegacyAttribute *)0 _maxCPUDuration];
  if (v49)
  {
    v40 = v49;
    v39 = 0;
    goto LABEL_53;
  }

LABEL_59:
  v48 = [v7 legacyFinishTaskReason];
  if ([(RBSLegacyAttribute *)a1 _isLegacyReasonFinishableTask:v37]&& v48 - 1 >= v37)
  {
    [v7 setLegacyFinishTaskReason:v37];
  }

LABEL_4:
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!a4)
  {
    [RBSLegacyAttribute(RBProcessState) isValidForContext:a2 withError:a1];
  }

  if ([a1 requestedReason] == 9)
  {
    v8 = [v7 targetIdentity];
    v9 = [v8 isXPCService];

    if (v9)
    {
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 assertionDescriptor];
        v12 = [v11 identifier];
        *buf = 138543362;
        v33 = v12;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Mutating assertion %{public}@ reason from ViewService to Extension because it targets an xpc service.", buf, 0xCu);
      }

      [a1 setReason:13];
    }
  }

  v29 = 0;
  v13 = [(RBSLegacyAttribute *)a1 _isOriginatorValidForContext:v7 errorReason:&v29];
  v14 = v29;
  v15 = v14;
  if (v13)
  {
    v28 = 0;
    v27 = [(RBSLegacyAttribute *)a1 _isTargetValidForContext:v7 errorReason:&v28];
    v16 = v28;

    if (v27)
    {
      v24 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    [RBSLegacyAttribute(RBProcessState) isValidForContext:a2 withError:a1];
  }

  v17 = rbs_assertion_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [RBSLegacyAttribute(RBProcessState) isValidForContext:v16 withError:?];
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D47050];
  v20 = *MEMORY[0x277CCA470];
  v31[0] = v16;
  v21 = *MEMORY[0x277D47048];
  v30[0] = v20;
  v30[1] = v21;
  v22 = [a1 description];
  v31[1] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  *a4 = [v18 errorWithDomain:v19 code:2 userInfo:v23];

  v24 = 0;
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6 != a1 && (v7 = objc_opt_class(), v7 == objc_opt_class()))
  {
    if (a4)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", a1, v6];
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D47050];
      v14 = *MEMORY[0x277CCA470];
      v15[0] = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a4 = [v11 errorWithDomain:v12 code:2 userInfo:v13];

      a4 = 0;
    }
  }

  else
  {
    a4 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 assertion];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_262485000, v2, v3, "Not applying RBSLegacyAttribute as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)applyToAssertionTransientState:()RBProcessState attributePath:context:.cold.1(void *a1, void *a2)
{
  v4 = a1;
  if ([a1 reason])
  {
    NSStringFromRBSLegacyReason();
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1() addTag:v2];
  }

  if (v4)
  {
    v5 = [v4 reason];
    if (v5 <= 0x17 && ((1 << v5) & 0xA80010) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  v6 = 2;
  do
  {
    v7 = v6;
    result = [a2 maxCPUUsageViolationPolicyForRole:v6];
    if (v4 > result)
    {
      result = [a2 setMaxCPUUsageViolationPolicy:v4 forRole:v6];
    }

    ++v6;
  }

  while (v7 < 4);
  return result;
}

- (void)isValidForContext:()RBProcessState withError:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSLegacyAttribute+RBProcessState.m" lineNumber:346 description:@"must provide error outparam"];
}

- (void)isValidForContext:()RBProcessState withError:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSLegacyAttribute+RBProcessState.m" lineNumber:356 description:@"no failure reason provided"];
}

- (void)isValidForContext:()RBProcessState withError:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_262485000, v1, v2, "legacy assertion validation failed: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end