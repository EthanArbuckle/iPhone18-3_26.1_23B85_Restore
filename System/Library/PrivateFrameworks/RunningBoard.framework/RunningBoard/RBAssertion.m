@interface RBAssertion
+ (RBAssertion)assertionWithDescriptor:(id)a3 target:(id)a4 originator:(id)a5 context:(id)a6;
+ (RBAssertion)assertionWithDescriptor:(id)a3 target:(id)a4 originator:(id)a5 context:(id)a6 creationTime:(double)a7;
+ (RBAssertion)assertionWithIdentifier:(id)a3 target:(id)a4 explanation:(id)a5 attributes:(id)a6 originator:(id)a7 context:(id)a8;
- (BOOL)_lock_resolveStateWithContext:(uint64_t)a1;
- (BOOL)isActive;
- (BOOL)isSuspended;
- (BOOL)isValid;
- (BOOL)resolveStateWithContext:(id)a3;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBInheritanceCollection)inheritances;
- (RBProcessState)processState;
- (id)_initWithTarget:(void *)a3 identifier:(void *)a4 explanation:(void *)a5 attributes:(void *)a6 originator:(void *)a7 context:(double)a8 creationTime:;
- (id)lock_targetProcessForAbstract;
- (id)terminationContextForTargetProcess:(id)a3 originatorProcessIsActive:(BOOL)a4;
- (id)updateProcessStateWithAttributeContext:(id)a3;
- (uint64_t)_exceptionCodeForAssertionTimeout;
- (unsigned)invalidationReason;
- (void)activate;
- (void)applyToAssertionTransientState:(id)a3 withAttributeContext:(id)a4;
- (void)applyToProcessState:(id)a3 withAttributeContext:(id)a4;
- (void)applyToSystemState:(id)a3 withAttributeContext:(id)a4;
- (void)deactivate;
- (void)resume;
- (void)setInvalidationReason:(unsigned __int8)a3;
- (void)setLaunchAssertion:(BOOL)a3;
- (void)setTargetProcessForAbstract:(id)a3;
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
      v5 = [(RBConcreteTargeting *)self->_target identity];
      v3 = [(RBProcessState *)v4 initWithIdentity:v5];
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
  v3 = [(RBConcreteTargeting *)self->_target isSystem];
  targetState = self->_targetState;
  if (v3)
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

+ (RBAssertion)assertionWithDescriptor:(id)a3 target:(id)a4 originator:(id)a5 context:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 identifier];
  v15 = [v13 explanation];
  v16 = [v13 attributes];

  v17 = [a1 assertionWithIdentifier:v14 target:v12 explanation:v15 attributes:v16 originator:v11 context:v10];

  return v17;
}

+ (RBAssertion)assertionWithDescriptor:(id)a3 target:(id)a4 originator:(id)a5 context:(id)a6 creationTime:(double)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [RBAssertion alloc];
  v16 = [v14 identifier];
  v17 = [v14 explanation];
  v18 = [v14 attributes];

  v19 = [(RBAssertion *)&v15->super.isa _initWithTarget:v13 identifier:v16 explanation:v17 attributes:v18 originator:v12 context:v11 creationTime:a7];

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
      v6 = self;
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
      v6 = self;
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

- (void)setInvalidationReason:(unsigned __int8)a3
{
  os_unfair_lock_lock_with_options();
  self->_invalidationReason = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLaunchAssertion:(BOOL)a3
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

- (BOOL)resolveStateWithContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(RBAssertion *)self _lock_resolveStateWithContext:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)updateProcessStateWithAttributeContext:(id)a3
{
  [(RBAssertion *)self resolveStateWithContext:a3];

  return [(RBAssertion *)self processState];
}

- (id)terminationContextForTargetProcess:(id)a3 originatorProcessIsActive:(BOOL)a4
{
  v6 = a3;
  v7 = [(RBAssertion *)self identifier];
  v8 = [(RBAssertion *)self invalidationReason];
  v9 = [(RBAssertion *)self originator];
  v10 = [(RBAssertion *)self endPolicy];
  if ([v6 isLifecycleManaged] && v8 == 4 && v10 == 2)
  {
    v22 = MEMORY[0x277D47010];
    v23 = MEMORY[0x277CCACA8];
    v24 = v9;
    if (!v9)
    {
      v24 = [(RBAssertion *)self originator];
    }

    v25 = [(RBAssertion *)self explanation];
    v26 = [v23 stringWithFormat:@"Timed-out waiting for process %@ to invalidate assertion with identifier %@ and explanation '%@'. Direct this report to owners of that process", v24, v7, v25];
    v15 = [v22 defaultContextWithExplanation:v26];

    if (!v9)
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

  if ([v6 isLifecycleManaged] && v8 == 8 && v10 == 2)
  {
    v11 = MEMORY[0x277D47010];
    v12 = MEMORY[0x277CCACA8];
    v13 = [(RBAssertion *)self explanation];
    v14 = [v12 stringWithFormat:@"Conditions changed, forcing termination due to outstanding assertion with identifier %@ and explanation '%@'", v7, v13];
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

  if (v8 == 1 && [(RBAssertion *)self terminateTargetOnOriginatorExit]&& (!v9 || !a4))
  {
    v18 = MEMORY[0x277D47010];
    v19 = MEMORY[0x277CCACA8];
    v20 = v9;
    if (!v9)
    {
      v20 = [(RBAssertion *)self originator];
    }

    v21 = [v19 stringWithFormat:@"Terminating process %@ because the owner of this process %@ has exited (assertionID %@)", v6, v20, v7];
    v15 = [v18 defaultContextWithExplanation:v21];

    if (!v9)
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

- (void)setTargetProcessForAbstract:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  targetProcessForAbstract = self->_targetProcessForAbstract;
  self->_targetProcessForAbstract = v4;
  v6 = v4;

  targetState = self->_targetState;
  self->_targetState = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_initWithTarget:(void *)a3 identifier:(void *)a4 explanation:(void *)a5 attributes:(void *)a6 originator:(void *)a7 context:(double)a8 creationTime:
{
  v62 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v53 = a6;
  v20 = a7;
  if (a1 && (v58.receiver = a1, v58.super_class = RBAssertion, v21 = objc_msgSendSuper2(&v58, sel_init), (a1 = v21) != 0))
  {
    v49 = v19;
    v51 = v17;
    v52 = v16;
    *(v21 + 26) = 0;
    objc_storeStrong(v21 + 1, a2);
    objc_storeStrong(a1 + 3, a3);
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = a1[3];
    v24 = [v22 initWithFormat:@"%@ (target:%@)", v23, a1[1]];
    v25 = a1[16];
    a1[16] = v24;

    v50 = v18;
    v26 = [v18 copy];
    v27 = a1[4];
    a1[4] = v26;

    *(a1 + 111) = 0;
    objc_storeStrong(a1 + 5, a5);
    objc_storeStrong(a1 + 15, a6);
    *(a1 + 109) = 0;
    *(a1 + 12) = a8;
    v28 = objc_alloc_init(RBAssertionIntransientState);
    v29 = a1[8];
    a1[8] = v28;

    *(a1 + 108) = 0;
    *(a1 + 112) = 0;
    [v20 setAssertion:a1];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v30 = a1[5];
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
          [*(*(&v54 + 1) + 8 * v35++) applyToAssertionIntransientState:a1[8] attributePath:RBSAttributePathIncrement(0 context:{v36++), v20}];
        }

        while (v32 != v35);
        v32 = [v30 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v32);
    }

    v18 = v50;
    v37 = v53;
    if (!v50)
    {
      v38 = rbs_assertion_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v60 = a1;
        _os_log_fault_impl(&dword_262485000, v38, OS_LOG_TYPE_FAULT, "Initializing assertion with null-proof explanation being null %{public}@", buf, 0xCu);
      }
    }

    v39 = [a1[8] runningReason];
    v40 = [a1[8] legacyReason];
    if (v40)
    {
      v41 = v40;
      v42 = 3;
    }

    else
    {
      if ([a1[8] hasDomainAttribute])
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      v41 = v39;
    }

    v17 = v51;
    v19 = v49;
    v43 = [objc_alloc(MEMORY[0x277D46F10]) initWithType:v42];
    v44 = a1[11];
    a1[11] = v43;

    if (v50)
    {
      [a1[11] setExplanation:v50];
    }

    else
    {
      [a1 description];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_8() setExplanation:?];
    }

    [a1[11] setReason:v41];
    v45 = a1[11];
    [a1[8] domainAttributes];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setDomain:?];

    v46 = a1[11];
    NSStringFromRBSLegacyReason();
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_8() setName:?];

    v16 = v52;
  }

  else
  {
    v37 = v53;
  }

  v47 = *MEMORY[0x277D85DE8];
  return a1;
}

+ (RBAssertion)assertionWithIdentifier:(id)a3 target:(id)a4 explanation:(id)a5 attributes:(id)a6 originator:(id)a7 context:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [RBAssertion alloc];
  RBSMachAbsoluteTime();
  v21 = [(RBAssertion *)&v19->super.isa _initWithTarget:v17 identifier:v18 explanation:v16 attributes:v15 originator:v14 context:v13 creationTime:v20];

  return v21;
}

- (BOOL)_lock_resolveStateWithContext:(uint64_t)a1
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 104));
    if (*(a1 + 111) == 1 && *(a1 + 109) != 1)
    {
      v9 = [v3 availableInheritances];
      v10 = [v9 allInheritances];

      v11 = [v3 systemState];
      v12 = [v11 conditions];

      if (*(a1 + 48) && ((v13 = *(a1 + 72), v10 == v13) || v10 && v13 && (Count = CFSetGetCount(v10), Count == CFSetGetCount(v13)) && -[__CFSet isEqualToSet:](v10, "isEqualToSet:", v13)) && ((v15 = *(a1 + 80), v12 == v15) || v12 && v15 && ([v12 isEqual:?] & 1) != 0))
      {
        v5 = 0;
      }

      else
      {
        v16 = [*(a1 + 8) isSystem];
        v17 = objc_alloc_init(RBAssertionTransientState);
        v40 = v12;
        v41 = v10;
        if (v16)
        {
          v18 = objc_alloc_init(RBMutableSystemState);
          v19 = 0;
          v39 = v18;
        }

        else
        {
          v20 = [RBMutableProcessState alloc];
          v21 = [*(a1 + 8) identity];
          v19 = [(RBProcessState *)v20 initWithIdentity:v21];

          v18 = 0;
          v39 = v19;
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = a1;
        obj = *(a1 + 40);
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

        v29 = [*(v42 + 88) type];
        v30 = *(v42 + 88);
        if (v29 == 3)
        {
          [(RBMutableProcessState *)v19 addLegacyAssertion:v30];
        }

        else
        {
          [(RBMutableProcessState *)v19 addRBAssertion:v30];
        }

        v12 = v40;
        v10 = v41;
        v31 = [(RBMutableSystemState *)v39 copy];
        v32 = *(v42 + 48);
        *(v42 + 48) = v31;

        v33 = *(v42 + 56);
        *(v42 + 56) = v17;
        v34 = v17;

        v35 = [(__CFSet *)v41 copy];
        v36 = *(v42 + 72);
        *(v42 + 72) = v35;

        objc_storeStrong((v42 + 80), v40);
        v5 = 1;
      }
    }

    else
    {
      v4 = *(a1 + 48);
      v5 = v4 != 0;
      *(a1 + 48) = 0;

      v6 = *(a1 + 56);
      *(a1 + 56) = 0;

      v7 = *(a1 + 72);
      *(a1 + 72) = 0;

      v8 = *(a1 + 80);
      *(a1 + 80) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)applyToProcessState:(id)a3 withAttributeContext:(id)a4
{
  v9 = a3;
  v6 = a4;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:a4];
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
      [v9 unionState:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applyToAssertionTransientState:(id)a3 withAttributeContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:a4];

  if (self->_transientState)
  {
    [v7 unionState:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applyToSystemState:(id)a3 withAttributeContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  OUTLINED_FUNCTION_1_10();
  [(RBAssertion *)self _lock_resolveStateWithContext:a4];
  if ([(RBConcreteTargeting *)self->_target isSystem]&& self->_targetState)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[RBAssertion applyToSystemState:withAttributeContext:]", "RBAssertion.m", 302, "[_targetState isKindOfClass:[RBSystemState class]]");
    }

    [v7 unionState:self->_targetState];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (uint64_t)_exceptionCodeForAssertionTimeout
{
  if (!a1)
  {
    return 0;
  }

  v2 = 562215635;
  v3 = [a1 explanation];
  if ([v3 hasPrefix:@"Shared Background Assertion"])
  {
    v2 = 562215634;
  }

  else if (([v3 hasPrefix:@"com.apple.nsurlsessiond.handlesession"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.das.nsurlsessioncomplete") & 1) == 0)
  {
    if (([v3 isEqualToString:@"com.apple.das.backgroundFetch"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.das.backgroundTasks") && objc_msgSend(a1, "runningReason") == 100)
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