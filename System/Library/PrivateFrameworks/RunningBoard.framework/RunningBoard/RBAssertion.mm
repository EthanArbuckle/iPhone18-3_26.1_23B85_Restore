@interface RBAssertion
+ (RBAssertion)assertionWithDescriptor:(id)descriptor target:(id)target originator:(id)originator context:(id)context;
+ (RBAssertion)assertionWithDescriptor:(id)descriptor target:(id)target originator:(id)originator context:(id)context creationTime:(double)time;
+ (RBAssertion)assertionWithIdentifier:(id)identifier target:(id)target explanation:(id)explanation attributes:(id)attributes originator:(id)originator context:(id)context;
- (BOOL)_lock_resolveStateWithContext:(uint64_t)context;
- (BOOL)isActive;
- (BOOL)isSuspended;
- (BOOL)isValid;
- (BOOL)resolveStateWithContext:(id)context;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBInheritanceCollection)inheritances;
- (RBProcessState)processState;
- (id)_initWithTarget:(void *)target identifier:(void *)identifier explanation:(void *)explanation attributes:(void *)attributes originator:(void *)originator context:(double)context creationTime:;
- (id)lock_targetProcessForAbstract;
- (id)terminationContextForTargetProcess:(id)process originatorProcessIsActive:(BOOL)active;
- (id)updateProcessStateWithAttributeContext:(id)context;
- (uint64_t)_exceptionCodeForAssertionTimeout;
- (unsigned)invalidationReason;
- (void)activate;
- (void)applyToAssertionTransientState:(id)state withAttributeContext:(id)context;
- (void)applyToProcessState:(id)state withAttributeContext:(id)context;
- (void)applyToSystemState:(id)state withAttributeContext:(id)context;
- (void)deactivate;
- (void)resume;
- (void)setInvalidationReason:(unsigned __int8)reason;
- (void)setLaunchAssertion:(BOOL)assertion;
- (void)setTargetProcessForAbstract:(id)abstract;
- (void)suspend;
@end

@implementation RBAssertion

- (id)lock_targetProcessForAbstract
{
  os_unfair_lock_assert_owner(&self->_lock);
  targetProcessForAbstract = self->_targetProcessForAbstract;

  return targetProcessForAbstract;
}

- (RBProcessState)processState
{
  os_unfair_lock_lock_with_options();
  if (([(RBConcreteTargeting *)self->_target isSystem]& 1) != 0 || !self->_targetState)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [RBAssertion processState];
  }

  v3 = [self->_targetState copy];
  if (!v3)
  {
LABEL_5:
    if (([(RBConcreteTargeting *)self->_target isSystem]& 1) != 0)
    {
      v3 = 0;
    }

    else
    {
      v4 = [RBProcessState alloc];
      identity = [(RBConcreteTargeting *)self->_target identity];
      v3 = [(RBProcessState *)v4 initWithIdentity:identity];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)activate
{
  os_unfair_lock_lock_with_options();
  self->_active = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isActive
{
  os_unfair_lock_lock_with_options();
  v3 = self->_active && !self->_suspended;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock_with_options();
  isSystem = [(RBConcreteTargeting *)self->_target isSystem];
  targetState = self->_targetState;
  if (isSystem)
  {
    v5 = 0;
  }

  else
  {
    v5 = targetState;
    targetState = 0;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = targetState;
  v29 = [v6 alloc];
  v8 = [objc_opt_class() description];
  identifier = self->_identifier;
  v28 = v8;
  explanation = self->_explanation;
  target = self->_target;
  originator = self->_originator;
  v9 = @" transientState:";
  transientState = self->_transientState;
  if (!transientState)
  {
    v9 = &stru_287507640;
  }

  intransientState = self->_intransientState;
  v23 = v9;
  if (transientState)
  {
    v11 = self->_transientState;
  }

  else
  {
    v11 = &stru_287507640;
  }

  v21 = v11;
  if (self->_active)
  {
    v12 = @" active";
  }

  else
  {
    v12 = &stru_287507640;
  }

  if (v5)
  {
    v13 = @" processState:";
  }

  else
  {
    v13 = &stru_287507640;
  }

  if (v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = &stru_287507640;
  }

  if (v7)
  {
    v15 = @" systemState:";
  }

  else
  {
    v15 = &stru_287507640;
  }

  if (v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = &stru_287507640;
  }

  if (self->_suspended)
  {
    v17 = @" suspended";
  }

  else
  {
    v17 = &stru_287507640;
  }

  v18 = [(NSArray *)self->_attributes componentsJoinedByString:@", \n\t"];
  v19 = [v29 initWithFormat:@"<%@| identifier:%@ target:%@ explanation:%@%@ originator:%@%@%@ intransientState:%@%@%@%@%@ suspended:%@ attributes:[\n\t%@\n\t]>", v28, identifier, target, explanation, v12, originator, v23, v21, intransientState, v13, v14, v15, v16, v17, v18];

  os_unfair_lock_unlock(&self->_lock);

  return v19;
}

- (BOOL)isValid
{
  os_unfair_lock_lock_with_options();
  v3 = self->_invalidationReason == 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unsigned)invalidationReason
{
  os_unfair_lock_lock_with_options();
  invalidationReason = self->_invalidationReason;
  os_unfair_lock_unlock(&self->_lock);
  return invalidationReason;
}

- (void)deactivate
{
  os_unfair_lock_lock_with_options();
  self->_active = 0;

  os_unfair_lock_unlock(&self->_lock);
}

+ (RBAssertion)assertionWithDescriptor:(id)descriptor target:(id)target originator:(id)originator context:(id)context
{
  contextCopy = context;
  originatorCopy = originator;
  targetCopy = target;
  descriptorCopy = descriptor;
  identifier = [descriptorCopy identifier];
  explanation = [descriptorCopy explanation];
  attributes = [descriptorCopy attributes];

  v17 = [self assertionWithIdentifier:identifier target:targetCopy explanation:explanation attributes:attributes originator:originatorCopy context:contextCopy];

  return v17;
}

+ (RBAssertion)assertionWithDescriptor:(id)descriptor target:(id)target originator:(id)originator context:(id)context creationTime:(double)time
{
  contextCopy = context;
  originatorCopy = originator;
  targetCopy = target;
  descriptorCopy = descriptor;
  v15 = [RBAssertion alloc];
  identifier = [descriptorCopy identifier];
  explanation = [descriptorCopy explanation];
  attributes = [descriptorCopy attributes];

  v19 = [(RBAssertion *)&v15->super.isa _initWithTarget:targetCopy identifier:identifier explanation:explanation attributes:attributes originator:originatorCopy context:contextCopy creationTime:time];

  return v19;
}

- (void)suspend
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(RBAssertionIntransientState *)self->_intransientState suspendsOnOriginatorSuspension])
  {
    v3 = rbs_ttl_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Suspending assertion %{public}@", &v5, 0xCu);
    }

    os_unfair_lock_lock_with_options();
    self->_suspended = 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(RBAssertionIntransientState *)self->_intransientState suspendsOnOriginatorSuspension])
  {
    v3 = rbs_ttl_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Resuming assertion %{public}@", &v5, 0xCu);
    }

    os_unfair_lock_lock_with_options();
    self->_suspended = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSuspended
{
  os_unfair_lock_lock_with_options();
  suspended = self->_suspended;
  os_unfair_lock_unlock(&self->_lock);
  return suspended;
}

- (void)setInvalidationReason:(unsigned __int8)reason
{
  os_unfair_lock_lock_with_options();
  self->_invalidationReason = reason;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLaunchAssertion:(BOOL)assertion
{
  os_unfair_lock_lock_with_options();
  self->_launchAssertion = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (RBInheritanceCollection)inheritances
{
  os_unfair_lock_lock_with_options();
  if (([(RBConcreteTargeting *)self->_target isSystem]& 1) != 0)
  {
    targetState = 0;
  }

  else
  {
    targetState = self->_targetState;
    if (targetState)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [RBAssertion inheritances];
      }

      targetState = [self->_targetState inheritances];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return targetState;
}

- (BOOL)resolveStateWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  v5 = [(RBAssertion *)self _lock_resolveStateWithContext:contextCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)updateProcessStateWithAttributeContext:(id)context
{
  [(RBAssertion *)self resolveStateWithContext:context];

  return [(RBAssertion *)self processState];
}

- (id)terminationContextForTargetProcess:(id)process originatorProcessIsActive:(BOOL)active
{
  processCopy = process;
  identifier = [(RBAssertion *)self identifier];
  invalidationReason = [(RBAssertion *)self invalidationReason];
  originator = [(RBAssertion *)self originator];
  endPolicy = [(RBAssertion *)self endPolicy];
  if ([processCopy isLifecycleManaged] && invalidationReason == 4 && endPolicy == 2)
  {
    v22 = MEMORY[0x277D47010];
    v23 = MEMORY[0x277CCACA8];
    originator2 = originator;
    if (!originator)
    {
      originator2 = [(RBAssertion *)self originator];
    }

    explanation = [(RBAssertion *)self explanation];
    v26 = [v23 stringWithFormat:@"Timed-out waiting for process %@ to invalidate assertion with identifier %@ and explanation '%@'. Direct this report to owners of that process", originator2, identifier, explanation];
    v15 = [v22 defaultContextWithExplanation:v26];

    if (!originator)
    {
    }

    [v15 setPreventIfBeingDebugged:1];
    [v15 setReportType:0];
    [v15 setExceptionCode:-[RBAssertion _exceptionCodeForAssertionTimeout](self)];
    v16 = rbs_assertion_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ([processCopy isLifecycleManaged] && invalidationReason == 8 && endPolicy == 2)
  {
    v11 = MEMORY[0x277D47010];
    v12 = MEMORY[0x277CCACA8];
    explanation2 = [(RBAssertion *)self explanation];
    v14 = [v12 stringWithFormat:@"Conditions changed, forcing termination due to outstanding assertion with identifier %@ and explanation '%@'", identifier, explanation2];
    v15 = [v11 defaultContextWithExplanation:v14];

    [v15 setReportType:0];
    [v15 setExceptionCode:97132013];
    v16 = rbs_assertion_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_15;
    }

LABEL_8:
    [RBAssertion terminationContextForTargetProcess:v15 originatorProcessIsActive:?];
    goto LABEL_9;
  }

  if (invalidationReason == 1 && [(RBAssertion *)self terminateTargetOnOriginatorExit]&& (!originator || !active))
  {
    v18 = MEMORY[0x277D47010];
    v19 = MEMORY[0x277CCACA8];
    originator3 = originator;
    if (!originator)
    {
      originator3 = [(RBAssertion *)self originator];
    }

    v21 = [v19 stringWithFormat:@"Terminating process %@ because the owner of this process %@ has exited (assertionID %@)", processCopy, originator3, identifier];
    v15 = [v18 defaultContextWithExplanation:v21];

    if (!originator)
    {
    }

    [v15 setExceptionCode:2970726673];
    [v15 setReportType:0];
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (NSString)stateCaptureTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RBSAssertionIdentifier *)self->_identifier description];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (void)setTargetProcessForAbstract:(id)abstract
{
  abstractCopy = abstract;
  os_unfair_lock_lock_with_options();
  targetProcessForAbstract = self->_targetProcessForAbstract;
  self->_targetProcessForAbstract = abstractCopy;
  v6 = abstractCopy;

  targetState = self->_targetState;
  self->_targetState = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_initWithTarget:(void *)target identifier:(void *)identifier explanation:(void *)explanation attributes:(void *)attributes originator:(void *)originator context:(double)context creationTime:
{
  v62 = *MEMORY[0x277D85DE8];
  v16 = a2;
  targetCopy = target;
  identifierCopy = identifier;
  explanationCopy = explanation;
  attributesCopy = attributes;
  originatorCopy = originator;
  if (self && (v58.receiver = self, v58.super_class = RBAssertion, v21 = objc_msgSendSuper2(&v58, sel_init), (self = v21) != 0))
  {
    v49 = explanationCopy;
    v51 = targetCopy;
    v52 = v16;
    *(v21 + 26) = 0;
    objc_storeStrong(v21 + 1, a2);
    objc_storeStrong(self + 3, target);
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = self[3];
    v24 = [v22 initWithFormat:@"%@ (target:%@)", v23, self[1]];
    v25 = self[16];
    self[16] = v24;

    v50 = identifierCopy;
    v26 = [identifierCopy copy];
    v27 = self[4];
    self[4] = v26;

    *(self + 111) = 0;
    objc_storeStrong(self + 5, explanation);
    objc_storeStrong(self + 15, attributes);
    *(self + 109) = 0;
    *(self + 12) = context;
    v28 = objc_alloc_init(RBAssertionIntransientState);
    v29 = self[8];
    self[8] = v28;

    *(self + 108) = 0;
    *(self + 112) = 0;
    [originatorCopy setAssertion:self];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = self[5];
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v55;
      do
      {
        v35 = 0;
        v36 = v33;
        do
        {
          if (*v55 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v33 = v36 + 1;
          [*(*(&v54 + 1) + 8 * v35++) applyToAssertionIntransientState:self[8] attributePath:RBSAttributePathIncrement(0 context:{v36++), originatorCopy}];
        }

        while (v32 != v35);
        v32 = [v30 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v32);
    }

    identifierCopy = v50;
    v37 = attributesCopy;
    if (!v50)
    {
      v38 = rbs_assertion_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_fault_impl(&dword_262485000, v38, OS_LOG_TYPE_FAULT, "Initializing assertion with null-proof explanation being null %{public}@", buf, 0xCu);
      }
    }

    runningReason = [self[8] runningReason];
    legacyReason = [self[8] legacyReason];
    if (legacyReason)
    {
      v41 = legacyReason;
      v42 = 3;
    }

    else
    {
      if ([self[8] hasDomainAttribute])
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      v41 = runningReason;
    }

    targetCopy = v51;
    explanationCopy = v49;
    v43 = [objc_alloc(MEMORY[0x277D46F10]) initWithType:v42];
    v44 = self[11];
    self[11] = v43;

    if (v50)
    {
      [self[11] setExplanation:v50];
    }

    else
    {
      [self description];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setExplanation:?];
    }

    [self[11] setReason:v41];
    v45 = self[11];
    [self[8] domainAttributes];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setDomain:?];

    v46 = self[11];
    NSStringFromRBSLegacyReason();
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setName:?];

    v16 = v52;
  }

  else
  {
    v37 = attributesCopy;
  }

  v47 = *MEMORY[0x277D85DE8];
  return self;
}

+ (RBAssertion)assertionWithIdentifier:(id)identifier target:(id)target explanation:(id)explanation attributes:(id)attributes originator:(id)originator context:(id)context
{
  contextCopy = context;
  originatorCopy = originator;
  attributesCopy = attributes;
  explanationCopy = explanation;
  targetCopy = target;
  identifierCopy = identifier;
  v19 = [RBAssertion alloc];
  RBSMachAbsoluteTime();
  v21 = [(RBAssertion *)&v19->super.isa _initWithTarget:targetCopy identifier:identifierCopy explanation:explanationCopy attributes:attributesCopy originator:originatorCopy context:contextCopy creationTime:v20];

  return v21;
}

- (BOOL)_lock_resolveStateWithContext:(uint64_t)context
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    os_unfair_lock_assert_owner((context + 104));
    if (*(context + 111) == 1 && *(context + 109) != 1)
    {
      availableInheritances = [v3 availableInheritances];
      allInheritances = [availableInheritances allInheritances];

      systemState = [v3 systemState];
      conditions = [systemState conditions];

      if (*(context + 48) && ((v13 = *(context + 72), allInheritances == v13) || allInheritances && v13 && (Count = CFSetGetCount(allInheritances), Count == CFSetGetCount(v13)) && -[__CFSet isEqualToSet:](allInheritances, "isEqualToSet:", v13)) && ((v15 = *(context + 80), conditions == v15) || conditions && v15 && ([conditions isEqual:?] & 1) != 0))
      {
        v5 = 0;
      }

      else
      {
        isSystem = [*(context + 8) isSystem];
        v17 = objc_alloc_init(RBAssertionTransientState);
        v40 = conditions;
        v41 = allInheritances;
        if (isSystem)
        {
          v18 = objc_alloc_init(RBMutableSystemState);
          v19 = 0;
          v39 = v18;
        }

        else
        {
          v20 = [RBMutableProcessState alloc];
          identity = [*(context + 8) identity];
          v19 = [(RBProcessState *)v20 initWithIdentity:identity];

          v18 = 0;
          v39 = v19;
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        contextCopy = context;
        obj = *(context + 40);
        v22 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = *v45;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v45 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v44 + 1) + 8 * i);
              v28 = RBSAttributePathIncrement(0, v24);
              [v27 applyToAssertionTransientState:v17 attributePath:v28 context:v3];
              if (v19)
              {
                [v27 applyToProcessState:v19 attributePath:v28 context:v3];
              }

              if (v18)
              {
                [v27 applyToSystemState:v18 attributePath:v28 context:v3];
              }

              ++v24;
            }

            v23 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v23);
        }

        type = [*(contextCopy + 88) type];
        v30 = *(contextCopy + 88);
        if (type == 3)
        {
          [(RBMutableProcessState *)v19 addLegacyAssertion:v30];
        }

        else
        {
          [(RBMutableProcessState *)v19 addRBAssertion:v30];
        }

        conditions = v40;
        allInheritances = v41;
        v31 = [(RBMutableSystemState *)v39 copy];
        v32 = *(contextCopy + 48);
        *(contextCopy + 48) = v31;

        v33 = *(contextCopy + 56);
        *(contextCopy + 56) = v17;
        v34 = v17;

        v35 = [(__CFSet *)v41 copy];
        v36 = *(contextCopy + 72);
        *(contextCopy + 72) = v35;

        objc_storeStrong((contextCopy + 80), v40);
        v5 = 1;
      }
    }

    else
    {
      v4 = *(context + 48);
      v5 = v4 != 0;
      *(context + 48) = 0;

      v6 = *(context + 56);
      *(context + 56) = 0;

      v7 = *(context + 72);
      *(context + 72) = 0;

      v8 = *(context + 80);
      *(context + 80) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)applyToProcessState:(id)state withAttributeContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:context];
  if (([(RBConcreteTargeting *)self->_target isSystem]& 1) == 0 && self->_targetState)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[RBAssertion applyToProcessState:withAttributeContext:]", "RBAssertion.m", 279, "[_targetState isKindOfClass:[RBProcessState class]]");
    }

    v7 = [self->_targetState copy];
    if (v7)
    {
      v8 = v7;
      [stateCopy unionState:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applyToAssertionTransientState:(id)state withAttributeContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:context];

  if (self->_transientState)
  {
    [stateCopy unionState:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applyToSystemState:(id)state withAttributeContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:context];
  if ([(RBConcreteTargeting *)self->_target isSystem]&& self->_targetState)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[RBAssertion applyToSystemState:withAttributeContext:]", "RBAssertion.m", 302, "[_targetState isKindOfClass:[RBSystemState class]]");
    }

    [stateCopy unionState:self->_targetState];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (uint64_t)_exceptionCodeForAssertionTimeout
{
  if (!self)
  {
    return 0;
  }

  v2 = 562215635;
  explanation = [self explanation];
  if ([explanation hasPrefix:@"Shared Background Assertion"])
  {
    v2 = 562215634;
  }

  else if (([explanation hasPrefix:@"com.apple.nsurlsessiond.handlesession"] & 1) == 0 && (objc_msgSend(explanation, "isEqualToString:", @"com.apple.das.nsurlsessioncomplete") & 1) == 0)
  {
    if (([explanation isEqualToString:@"com.apple.das.backgroundFetch"] & 1) != 0 || objc_msgSend(explanation, "isEqualToString:", @"com.apple.das.backgroundTasks") && objc_msgSend(self, "runningReason") == 100)
    {
      v2 = 562215636;
    }

    else
    {
      v2 = 562215597;
    }
  }

  return v2;
}

- (void)terminationContextForTargetProcess:(void *)a1 originatorProcessIsActive:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 explanation];
  OUTLINED_FUNCTION_0(&dword_262485000, v2, v3, "%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end