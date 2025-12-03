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
    requestedReason = [self requestedReason];
    descriptor = [v4 descriptor];
    v7 = descriptor;
    if (requestedReason == 1 || requestedReason == 9 && ([descriptor explanation], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"com.apple.extension.session"), v8, v9))
    {
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        identifier = [v7 identifier];
        v13 = 138412290;
        v14 = identifier;
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
  [(RBSLegacyAttribute *)self _mutateReasonWithContext:v8];
  if ([v8 isActiveDueToInheritedEndowment])
  {
    invalidatesOnConditions = rbs_assertion_log();
    if (os_log_type_enabled(invalidatesOnConditions, OS_LOG_TYPE_ERROR))
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

  v10 = [(RBSLegacyAttribute *)self _invalidationDurationExpiringTaskCompletionsQuickly:?];
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

  started = [(RBSLegacyAttribute *)self _startPolicy];
  if (started > [v7 startPolicy])
  {
    [v7 setStartPolicy:started];
  }

  v15 = 2 * (self != 0);
  if (v15 > [v7 endPolicy])
  {
    [v7 setEndPolicy:v15];
  }

  if (self && ([self reason] == 9 || objc_msgSend(self, "reason") == 13))
  {
    [v7 setSuspendsOnOriginatorSuspension:1];
  }

  if ([(RBSLegacyAttribute *)self _definesRelativeStartTime])
  {
    [v7 setDefinesRelativeStartTime:1];
  }

  if ([self reason])
  {
    [v7 setLegacyReason:{objc_msgSend(self, "reason")}];
  }

  if ([(RBSLegacyAttribute *)self _role]>= 2)
  {
    [v7 setPreventsSuspension:1];
  }

  if (_os_feature_enabled_impl())
  {
    _invalidateOnThermalLevel = [(RBSLegacyAttribute *)self _invalidateOnThermalLevel];
    invalidatesOnConditions = [v7 invalidatesOnConditions];
    if (!invalidatesOnConditions)
    {
      invalidatesOnConditions = [MEMORY[0x277CBEB38] dictionary];
      [v7 setInvalidatesOnConditions:invalidatesOnConditions];
    }

    v17 = [invalidatesOnConditions objectForKey:@"therm"];
    v18 = v17;
    if (!v17 || _invalidateOnThermalLevel < [v17 integerValue])
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:_invalidateOnThermalLevel];
      [invalidatesOnConditions setValue:v19 forKey:@"therm"];
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
    [RBSLegacyAttribute(RBProcessState) applyToAssertionTransientState:self attributePath:v7 context:?];
  }
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v7 = a3;
  v8 = a5;
  if ([v8 isActiveDueToInheritedEndowment])
  {
    process = rbs_assertion_log();
    if (os_log_type_enabled(process, OS_LOG_TYPE_ERROR))
    {
      [RBSLegacyAttribute(RBProcessState) applyToAssertionIntransientState:v8 attributePath:? context:?];
    }

    goto LABEL_4;
  }

  v10 = [(RBSLegacyAttribute *)self _explicitJetsamBand:v8];
  if (v10 > [v7 explicitJetsamBand])
  {
    [v7 setExplicitJetsamBand:v10];
  }

  memoryLimit = [v7 memoryLimit];
  target = [v8 target];
  process = [target process];

  if (process)
  {
    memoryLimits = [process memoryLimits];
    if (v10 == 100 || [self reason] == 9 && (objc_msgSend(v8, "assertion"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "explanation"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"com.apple.viewservice.session"), v16, v15, v17) && v10 == 80)
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
    v18 = [memoryLimits memoryLimitForCategory:v14 strength:&v51];
    if (memoryLimit == v18)
    {
      v19 = v51;
      memoryLimitStrength = [v7 memoryLimitStrength];
      if (v19 <= memoryLimitStrength)
      {
        v21 = memoryLimitStrength;
      }

      else
      {
        v21 = v19;
      }

      [v7 setMemoryLimitStrength:v21];
    }

    else if (memoryLimit < v18)
    {
      v22 = v18;
      [v7 setMemoryLimitCategory:v14];
      [v7 setMemoryLimitStrength:v51];
      [v7 setMemoryLimit:v22];
    }
  }

  else
  {
    memoryLimits = rbs_assertion_log();
    if (os_log_type_enabled(memoryLimits, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, memoryLimits, OS_LOG_TYPE_INFO, "applying Legacy Assertion to process state without concrete target", buf, 2u);
    }
  }

  _role = [(RBSLegacyAttribute *)self _role];
  if (_role > [v7 role])
  {
    if (_role >= 2)
    {
      [v7 setPreventSuspend:1];
    }

    [v7 setRole:_role];
  }

  _terminationResistance = [(RBSLegacyAttribute *)self _terminationResistance];
  if (_terminationResistance > [v7 terminationResistance])
  {
    [v7 setTerminationResistance:_terminationResistance];
  }

  if (self)
  {
    if (([self flags] & 4) == 0)
    {
      [v7 setPreventIdleSleep:1];
      v25 = MEMORY[0x277CCACA8];
      assertionID = [v8 assertionID];
      assertion = [v8 assertion];
      explanation = [assertion explanation];
      [self reason];
      v29 = NSStringFromRBSLegacyReason();
      v30 = [v25 stringWithFormat:@"%@:%@(%@)", assertionID, explanation, v29];
      [v7 addPreventIdleSleepIdentifier:v30];
    }

    if (([self flags] & 0x20) != 0)
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

  if (self && ([self reason] == 9 || objc_msgSend(self, "reason") == 13))
  {
    [v7 setTargetedBySuspendableAssertion:1];
  }

  targetIdentity = [v8 targetIdentity];
  embeddedApplicationIdentifier = [targetIdentity embeddedApplicationIdentifier];
  v33 = [embeddedApplicationIdentifier isEqualToString:@"com.apple.mobilesafari"];

  if (v33)
  {
    if (([v7 jetsamLenientMode] & 1) == 0)
    {
      availableInheritances = [v8 availableInheritances];
      allNamespaces = [availableInheritances allNamespaces];
      v36 = [allNamespaces containsObject:*MEMORY[0x277D470D0]];

      if (v36)
      {
        [v7 setJetsamLenientMode:1];
      }
    }
  }

  reason = [self reason];
  if (reason == 10008)
  {
    [v7 setThrottleBestEffortNetworking:1];
  }

  if (self)
  {
    v38 = [self reason] - 19;
    if (v38 > 4)
    {
      v39 = 80;
    }

    else
    {
      v39 = qword_26250BA28[v38];
    }

    _maxCPUDuration = [(RBSLegacyAttribute *)self _maxCPUDuration];
LABEL_53:
    targetProcess = [v8 targetProcess];
    isPlatformBinary = [targetProcess isPlatformBinary];

    if ((isPlatformBinary & 1) == 0)
    {
      if (self)
      {
        reason2 = [self reason];
        if (reason2 <= 0x17 && ((1 << reason2) & 0xA80010) != 0)
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

      v45 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:v39 duration:_maxCPUDuration violationPolicy:v44];
      v46 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:80 duration:180 violationPolicy:0];
      v47 = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:80 duration:180 violationPolicy:0];
      [v7 setMaxCPUUsageLimits:v45 forRole:2];
      [v7 setMaxCPUUsageLimits:v45 forRole:4];
      [v7 setMaxCPUUsageLimits:v46 forRole:6];
      [v7 setMaxCPUUsageLimits:v47 forRole:8];
    }

    goto LABEL_59;
  }

  _maxCPUDuration2 = [(RBSLegacyAttribute *)0 _maxCPUDuration];
  if (_maxCPUDuration2)
  {
    _maxCPUDuration = _maxCPUDuration2;
    v39 = 0;
    goto LABEL_53;
  }

LABEL_59:
  legacyFinishTaskReason = [v7 legacyFinishTaskReason];
  if ([(RBSLegacyAttribute *)self _isLegacyReasonFinishableTask:reason]&& legacyFinishTaskReason - 1 >= reason)
  {
    [v7 setLegacyFinishTaskReason:reason];
  }

LABEL_4:
}

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!a4)
  {
    [RBSLegacyAttribute(RBProcessState) isValidForContext:a2 withError:self];
  }

  if ([self requestedReason] == 9)
  {
    targetIdentity = [v7 targetIdentity];
    isXPCService = [targetIdentity isXPCService];

    if (isXPCService)
    {
      v10 = rbs_assertion_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        assertionDescriptor = [v7 assertionDescriptor];
        identifier = [assertionDescriptor identifier];
        *buf = 138543362;
        v33 = identifier;
        _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Mutating assertion %{public}@ reason from ViewService to Extension because it targets an xpc service.", buf, 0xCu);
      }

      [self setReason:13];
    }
  }

  v29 = 0;
  v13 = [(RBSLegacyAttribute *)self _isOriginatorValidForContext:v7 errorReason:&v29];
  v14 = v29;
  v15 = v14;
  if (v13)
  {
    v28 = 0;
    v27 = [(RBSLegacyAttribute *)self _isTargetValidForContext:v7 errorReason:&v28];
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
    [RBSLegacyAttribute(RBProcessState) isValidForContext:a2 withError:self];
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
  v22 = [self description];
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
  if (v6 != self && (v7 = objc_opt_class(), v7 == objc_opt_class()))
  {
    if (a4)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
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