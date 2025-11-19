@interface RBAssertionResolutionContext
- (RBAttributeContext)_createContextForAssertion:(void *)a1;
- (id)_assertionGraphFromAssertion:(id)a3;
- (id)_inheritancesForOriginator:(id)a3;
- (id)_latestStateForIdentity:(id)a3;
- (id)_originatorInheritancesForAssertion:(id)a3;
- (void)_assertionGraphFromAssertion:(id)a3 graph:(id)a4;
- (void)_checkForSuspendableAssertionCycle:(id)a3 newState:(id)a4;
- (void)_finalizeStateChangeSet;
- (void)_resolveProcessStateForTarget:(id)a3 ofType:(unint64_t)a4 viaAssertion:(id)a5;
- (void)_resolveSystemState;
- (void)_suspendAssertionsForTarget:(id)a3;
- (void)_suspendOrResumeAssertionsForTarget:(id)a3 oldState:(id)a4 newState:(id)a5;
- (void)_updateStatesForAssertion:(id)a3;
- (void)initWithAssertions:(void *)a1;
- (void)resolve;
- (void)setAssertionCollection:(uint64_t)a1;
- (void)setBundlePropertiesManager:(uint64_t)a1;
- (void)setDomainAttributeManager:(uint64_t)a1;
- (void)setEntitlementManager:(uint64_t)a1;
- (void)setProcessIndex:(uint64_t)a1;
- (void)setSavedEndowments:(uint64_t)a1;
- (void)setStateMap:(uint64_t)a1;
- (void)setSystemState:(uint64_t)a1;
@end

@implementation RBAssertionResolutionContext

- (void)resolve
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    [*(a1 + 64) setDomainAttributeManager:*(a1 + 104)];
    [*(a1 + 64) setBundlePropertiesManager:*(a1 + 112)];
    [*(a1 + 64) setEntitlementManager:*(a1 + 120)];
    [*(a1 + 64) setSystemState:*(a1 + 136)];
    while ([*(a1 + 8) count])
    {
      while ([*(a1 + 8) count])
      {
        v3 = [*(a1 + 8) anyObject];
        [*(a1 + 8) removeObject:v3];
        [a1 _updateStatesForAssertion:v3];
      }

      v4 = [*(a1 + 40) allObjects];
      [*(a1 + 40) removeAllObjects];
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [a1 _resolveProcessStateForTarget:*(*(&v11 + 1) + 8 * v9++) ofType:0 viaAssertion:0];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }

    [a1 _finalizeStateChangeSet];
    [a1 _resolveSystemState];
    objc_autoreleasePoolPop(v2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeStateChangeSet
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(RBProcessMap *)self->_resolvedState allIdentities];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [RBProcessStateChange alloc];
        v10 = [(RBProcessMap *)self->_stateMap valueForIdentity:v8];
        v11 = [(RBProcessMap *)self->_resolvedState valueForIdentity:v8];
        v12 = [(RBProcessStateChange *)v9 initWithIdentity:v8 originalState:v10 updatedState:v11];

        [v3 addObject:v12];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [[RBProcessStateChangeSet alloc] initWithChanges:v3];
  changeSet = self->_changeSet;
  self->_changeSet = v13;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resolveSystemState
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(RBMutableSystemState);
  assertionCollection = self->_assertionCollection;
  v5 = +[RBConcreteTarget systemTarget];
  v6 = [(RBAssertionCollection *)assertionCollection assertionsForTarget:v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([v12 isActive])
        {
          [(RBAttributeContext *)self->_attributeContext setAssertion:v12];
          attributeContext = self->_attributeContext;
          v14 = [(RBAssertionResolutionContext *)self _originatorInheritancesForAssertion:v12];
          [(RBAttributeContext *)attributeContext setAvailableInheritances:v14];

          v15 = self->_attributeContext;
          savedEndowments = self->_savedEndowments;
          v17 = [v12 originator];
          v18 = [(NSMapTable *)savedEndowments objectForKey:v17];
          [(RBAttributeContext *)v15 setSavedEndowments:v18];

          [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
          [v12 applyToSystemState:v3 withAttributeContext:self->_attributeContext];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = [(RBMutableSystemState *)v3 copy];
  systemState = self->_systemState;
  self->_systemState = v19;

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_assertionGraphFromAssertion:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  [(RBAssertionResolutionContext *)self _assertionGraphFromAssertion:v5 graph:v6];

  return v6;
}

- (void)_assertionGraphFromAssertion:(id)a3 graph:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v34 = [MEMORY[0x277CBEB58] set];
    [v7 setObject:? forKeyedSubscript:?];
    if (![v6 hasHereditaryGrant])
    {
LABEL_17:

      goto LABEL_18;
    }

    v10 = [v6 target];
    v11 = [v10 process];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      processIndex = self->_processIndex;
      v14 = [v10 identity];
      v12 = [(RBProcessIndex *)processIndex processForIdentity:v14];

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    v32 = v8;
    v33 = v6;
    v31 = v10;
    v15 = [v10 environment];
    v16 = self;
    assertionCollection = self->_assertionCollection;
    v30 = v12;
    v18 = [v12 identifier];
    v19 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:v18];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          v26 = [v25 sourceEnvironments];
          v27 = [v26 containsObject:v15];

          if (v27)
          {
            v28 = [v25 identifier];
            [v34 addObject:v28];

            [(RBAssertionResolutionContext *)v16 _assertionGraphFromAssertion:v25 graph:v7];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
    }

    v8 = v32;
    v6 = v33;
    v10 = v31;
    goto LABEL_16;
  }

LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_updateStatesForAssertion:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RBAssertionResolutionContext *)self _assertionGraphFromAssertion:v4];
  v6 = MEMORY[0x277CBEB40];
  v29 = v4;
  v7 = [v4 identifier];
  v8 = [v6 orderedSetWithObject:v7];

  v9 = [MEMORY[0x277CBEB58] set];
  if ([v8 count])
  {
    v30 = v5;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      [v9 addObject:v11];
      v12 = [(RBAssertionCollection *)self->_assertionCollection assertionWithIdentifier:v11];
      v13 = [v12 originator];
      if (v12)
      {
        [(NSMutableSet *)self->_touchedAssertions addObject:v12];
        [(RBAttributeContext *)self->_attributeContext setAssertion:v12];
        attributeContext = self->_attributeContext;
        v32 = v13;
        v15 = [(RBAssertionResolutionContext *)self _inheritancesForOriginator:v13];
        [(RBAttributeContext *)attributeContext setAvailableInheritances:v15];

        v16 = self->_attributeContext;
        savedEndowments = self->_savedEndowments;
        v18 = [v12 originator];
        v19 = [(NSMapTable *)savedEndowments objectForKey:v18];
        [(RBAttributeContext *)v16 setSavedEndowments:v19];

        [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
        if ([v12 resolveStateWithContext:self->_attributeContext])
        {
          if ([(RBAssertionCollection *)self->_assertionCollection hasResolvedAssertion:v12])
          {
            if ([v12 invalidationReason])
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }
          }

          else
          {
            v20 = 1;
          }

          v27 = [v12 target];
          [(RBAssertionResolutionContext *)self _resolveProcessStateForTarget:v27 ofType:v20 viaAssertion:v12];

          v21 = [v5 objectForKeyedSubscript:v11];
          [v8 unionSet:v21];
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v21 = [v5 objectForKeyedSubscript:v11];
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v22)
          {
            v23 = v22;
            v31 = v10;
            v24 = *v34;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v33 + 1) + 8 * i);
                if (([v9 containsObject:v26] & 1) == 0)
                {
                  [v8 addObject:v26];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v23);
            v5 = v30;
            v10 = v31;
          }
        }

        [(RBAssertionCollection *)self->_assertionCollection noteResolvedAssertion:v12];
        v13 = v32;
      }

      objc_autoreleasePoolPop(v10);
    }

    while ([v8 count]);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_inheritancesForOriginator:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_27;
  }

  v6 = [v4 identity];
  if (![(RBProcessMap *)self->_originatorInheritances containsIdentity:v6])
  {
    if ([(RBProcessMap *)self->_resolvedState containsIdentity:v6])
    {
      v8 = [(RBProcessMap *)self->_resolvedState valueForIdentity:v6];
      v7 = [v8 inheritances];

      v9 = [(RBProcessMap *)self->_originatorInheritances setValue:v7 forIdentity:v6];
      goto LABEL_26;
    }

    v10 = [(RBProcessMap *)self->_stateMap valueForIdentity:v6];
    v11 = [v10 inheritances];
    if (v11)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v11;
      v12 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v24 = v10;
        v25 = v6;
        v14 = 0;
        v15 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v7);
            }

            v17 = *(*(&v26 + 1) + 8 * i);
            v18 = [v17 originatingIdentifier];
            v19 = [(RBAssertionCollection *)self->_assertionCollection assertionWithIdentifier:v18];
            if (([v19 isActive] & 1) == 0)
            {
              if (!v14)
              {
                v14 = [v7 mutableCopy];
              }

              [v14 removeInheritance:v17];
            }
          }

          v13 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);

        v10 = v24;
        if (!v14)
        {
          v6 = v25;
          goto LABEL_25;
        }

        v20 = [v14 copy];

        v7 = v20;
        v6 = v25;
      }

      else
      {
        v14 = v7;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_25:
    v21 = [(RBProcessMap *)self->_originatorInheritances setValue:v7 forIdentity:v6];

    goto LABEL_26;
  }

  v7 = [(RBProcessMap *)self->_originatorInheritances valueForIdentity:v6];
LABEL_26:

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_originatorInheritancesForAssertion:(id)a3
{
  v4 = [a3 originator];
  if (v4)
  {
    v5 = [(RBAssertionResolutionContext *)self _inheritancesForOriginator:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_latestStateForIdentity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RBProcessMap *)self->_resolvedState valueForIdentity:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(RBProcessMap *)self->_stateMap valueForIdentity:v4];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_suspendAssertionsForTarget:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  assertionCollection = self->_assertionCollection;
  v5 = [a3 identifier];
  v6 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:v5];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 suspendsOnOriginatorSuspension])
        {
          if (([v11 isSuspended] & 1) == 0)
          {
            [v11 suspend];
            [(NSMutableSet *)self->_assertions addObject:v11];
            if ([v11 definesRelativeStartTime])
            {
              v12 = [v11 target];
              v13 = [v12 identity];

              if (v13)
              {
                [(NSMutableSet *)self->_lostStartTimeDefining addObject:v13];
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_checkForSuspendableAssertionCycle:(id)a3 newState:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(RBProcessIndex *)self->_processIndex processForIdentity:v5];
  if (([v6 isLifecycleManaged] & 1) == 0)
  {
    v16 = rbs_assertion_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v73 = v5;
    v44 = "_checkForSuspendableAssertionCycle for %{public}@ bailing out since it's not managed";
LABEL_50:
    _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_INFO, v44, buf, 0xCu);
    goto LABEL_57;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  assertionCollection = self->_assertionCollection;
  v8 = [v6 identifier];
  v9 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:v8];

  v10 = [v9 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (!v10)
  {

LABEL_48:
    v16 = rbs_assertion_log();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_57;
    }

    *buf = 138543362;
    v73 = v5;
    v44 = "_checkForSuspendableAssertionCycle for %{public}@ bailing out since it's not holding a suspendable assertion";
    goto LABEL_50;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v68;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v68 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v12 |= [*(*(&v67 + 1) + 8 * i) suspendsOnOriginatorSuspension];
    }

    v11 = [v9 countByEnumeratingWithState:&v67 objects:v78 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_48;
  }

  v53 = v5;
  v15 = 0x277CBE000uLL;
  v16 = [MEMORY[0x277CBEB18] array];
  [v16 addObject:v6];
  v54 = [MEMORY[0x277CBEB58] set];
  while ([v16 count])
  {
    v17 = v16;
    v18 = [v16 copy];
    [v54 addObjectsFromArray:v16];
    v16 = [*(v15 + 2840) array];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v19 = v18;
    v50 = [v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
    if (!v50)
    {
      goto LABEL_34;
    }

    v20 = *v64;
    v52 = v6;
    v48 = *v64;
    do
    {
      v21 = 0;
      do
      {
        if (*v64 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v51 = v21;
        v22 = *(*(&v63 + 1) + 8 * v21);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v23 = self->_assertionCollection;
        v49 = v22;
        v24 = [v22 identity];
        v25 = [(RBAssertionCollection *)v23 assertionsForTargetIdentity:v24];

        v26 = [v25 countByEnumeratingWithState:&v59 objects:v76 count:16];
        if (!v26)
        {
          goto LABEL_32;
        }

        v27 = v26;
        v28 = *v60;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v60 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v59 + 1) + 8 * j);
            v31 = [v30 intransientState];
            if (![v31 preventsSuspension])
            {
              goto LABEL_29;
            }

            v32 = [v30 isActive];

            if (v32)
            {
              v33 = [v30 originator];
              v34 = [v33 isLifecycleManaged];

              if ((v34 & 1) == 0)
              {
                v45 = rbs_assertion_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  v46 = [v30 originator];
                  *buf = 138543618;
                  v73 = v46;
                  v74 = 2114;
                  v75 = v49;
                  _os_log_impl(&dword_262485000, v45, OS_LOG_TYPE_INFO, "_checkForSuspendableAssertionCycle bailing out for not-manged-process (originator: %{public}@ target: %{public}@)", buf, 0x16u);
                }

                goto LABEL_55;
              }

              if (([v30 suspendsOnOriginatorSuspension] & 1) == 0)
              {
                v45 = rbs_assertion_log();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v73 = v30;
                  _os_log_impl(&dword_262485000, v45, OS_LOG_TYPE_INFO, "_checkForSuspendableAssertionCycle bailing out for not-suspendable assertion %{public}@", buf, 0xCu);
                }

LABEL_55:
                v6 = v52;
                v5 = v53;

                goto LABEL_56;
              }

              v35 = [v30 originator];
              v36 = [v54 containsObject:v35];

              if ((v36 & 1) == 0)
              {
                v37 = rbs_assertion_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v30 originator];
                  *buf = 138543362;
                  v73 = v38;
                  _os_log_impl(&dword_262485000, v37, OS_LOG_TYPE_DEFAULT, "found a new process to check %{public}@", buf, 0xCu);
                }

                v31 = [v30 originator];
                [v16 addObject:v31];
LABEL_29:

                continue;
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v59 objects:v76 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }

LABEL_32:

        v21 = v51 + 1;
        v6 = v52;
        v15 = 0x277CBE000;
        v20 = v48;
      }

      while (v51 + 1 != v50);
      v50 = [v19 countByEnumeratingWithState:&v63 objects:v77 count:16];
    }

    while (v50);
LABEL_34:
  }

  v39 = rbs_assertion_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v73 = v54;
    _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_DEFAULT, "Detected apparent loop in suspendable assertions with: %{public}@", buf, 0xCu);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = v54;
  v40 = [v19 countByEnumeratingWithState:&v55 objects:v71 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v56;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v56 != v42)
        {
          objc_enumerationMutation(v19);
        }

        [(RBAssertionResolutionContext *)self _suspendAssertionsForTarget:*(*(&v55 + 1) + 8 * k)];
      }

      v41 = [v19 countByEnumeratingWithState:&v55 objects:v71 count:16];
    }

    while (v41);
  }

  v5 = v53;
LABEL_56:

LABEL_57:
  v47 = *MEMORY[0x277D85DE8];
}

- (void)_suspendOrResumeAssertionsForTarget:(id)a3 oldState:(id)a4 newState:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 preventSuspend];
  v11 = [v9 preventSuspend];
  if (v10 != v11)
  {
    v12 = v11;
    v13 = [(RBProcessIndex *)self->_processIndex processForIdentity:v8];
    if ([v13 isLifecycleManaged])
    {
      if (v12)
      {
        if ((v10 & 1) == 0)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          assertionCollection = self->_assertionCollection;
          v15 = [v13 identifier];
          v16 = [(RBAssertionCollection *)assertionCollection assertionsForOriginator:v15];

          v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v25 + 1) + 8 * i);
                if ([v21 suspendsOnOriginatorSuspension])
                {
                  if ([v21 isSuspended])
                  {
                    if ([v21 isValid])
                    {
                      [v21 resume];
                      [(NSMutableSet *)self->_assertions addObject:v21];
                      if ([v21 definesRelativeStartTime])
                      {
                        v22 = [v21 target];
                        v23 = [v22 identity];

                        if (v23)
                        {
                          [(NSMutableSet *)self->_gainedStartTimeDefining addObject:v23];
                        }
                      }
                    }
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
            }

            while (v18);
          }
        }
      }

      else
      {
        [(RBAssertionResolutionContext *)self _suspendAssertionsForTarget:v13];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_resolveProcessStateForTarget:(id)a3 ofType:(unint64_t)a4 viaAssertion:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if ([v9 isSystem])
  {
    goto LABEL_27;
  }

  targetsPendingResolution = self->_targetsPendingResolution;
  if (a4 == 3)
  {
    if (!targetsPendingResolution)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v13 = self->_targetsPendingResolution;
      self->_targetsPendingResolution = v12;

      targetsPendingResolution = self->_targetsPendingResolution;
    }

    [(NSMutableSet *)targetsPendingResolution addObject:v9];
    goto LABEL_27;
  }

  [(NSMutableSet *)targetsPendingResolution removeObject:v9];
  v14 = [v9 identity];
  v15 = [(RBAssertionResolutionContext *)self _latestStateForIdentity:v14];
  v16 = v15;
  if (a4 == 1)
  {
    v17 = [v15 mutableCopy];
    if (v17)
    {
      v18 = v17;
      v19 = [v10 processState];
      [(RBMutableProcessState *)v18 unionState:v19];

      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_21:
      if ([(RBProcessState *)v18 isEqualToProcessStateIgnoringIdentity:v16])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v38 = a2;
  v39 = v16;
  v41 = v10;
  v42 = v9;
  v18 = [(RBProcessState *)[RBMutableProcessState alloc] initWithIdentity:v14];
  v40 = v14;
  v20 = [(RBAssertionCollection *)self->_assertionCollection assertionsForTargetIdentity:v14];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        if ([v25 isActive])
        {
          [(RBAttributeContext *)self->_attributeContext setAssertion:v25];
          attributeContext = self->_attributeContext;
          v27 = [(RBAssertionResolutionContext *)self _originatorInheritancesForAssertion:v25];
          [(RBAttributeContext *)attributeContext setAvailableInheritances:v27];

          v28 = self->_attributeContext;
          savedEndowments = self->_savedEndowments;
          v30 = [v25 originator];
          v31 = [(NSMapTable *)savedEndowments objectForKey:v30];
          [(RBAttributeContext *)v28 setSavedEndowments:v31];

          [(RBAttributeContext *)self->_attributeContext setSystemState:self->_systemState];
          [v25 applyToProcessState:v18 withAttributeContext:self->_attributeContext];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v22);
  }

  v10 = v41;
  v9 = v42;
  v16 = v39;
  v14 = v40;
  if (!v18)
  {
    [RBAssertionResolutionContext _resolveProcessStateForTarget:v38 ofType:self viaAssertion:?];
    if (!v39)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v39)
  {
    goto LABEL_21;
  }

LABEL_22:
  v32 = [(RBMutableProcessState *)v18 copy];

  v33 = [(RBProcessMap *)self->_resolvedState setValue:v32 forIdentity:v14];
  originatorInheritances = self->_originatorInheritances;
  v35 = [(RBProcessState *)v32 inheritances];
  v36 = [(RBProcessMap *)originatorInheritances setValue:v35 forIdentity:v14];

  [(RBAssertionResolutionContext *)self _suspendOrResumeAssertionsForTarget:v14 oldState:v16 newState:v32];
  v18 = v32;
LABEL_23:
  if ([(RBProcessState *)v18 preventSuspend]&& [(RBProcessState *)v18 targetedBySuspendableAssertion])
  {
    [(RBAssertionResolutionContext *)self _checkForSuspendableAssertionCycle:v14 newState:v18];
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)initWithAssertions:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = RBAssertionResolutionContext;
    a1 = objc_msgSendSuper2(&v19, sel_init);
    if (a1)
    {
      v4 = [v3 mutableCopy];
      v5 = a1[1];
      a1[1] = v4;

      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = a1[2];
      a1[2] = v6;

      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = a1[3];
      a1[3] = v8;

      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v11 = a1[4];
      a1[4] = v10;

      v12 = objc_alloc_init(RBProcessMap);
      v13 = a1[6];
      a1[6] = v12;

      v14 = objc_alloc_init(RBProcessMap);
      v15 = a1[7];
      a1[7] = v14;

      v16 = objc_alloc_init(RBAttributeContext);
      v17 = a1[8];
      a1[8] = v16;
    }
  }

  return a1;
}

- (void)setAssertionCollection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

- (void)setProcessIndex:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

- (void)setStateMap:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

- (void)setDomainAttributeManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

- (void)setBundlePropertiesManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

- (void)setEntitlementManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

- (void)setSavedEndowments:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

- (void)setSystemState:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

- (RBAttributeContext)_createContextForAssertion:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_alloc_init(RBAttributeContext);
    [(RBAttributeContext *)v4 setDomainAttributeManager:a1[13]];
    [(RBAttributeContext *)v4 setBundlePropertiesManager:a1[14]];
    [(RBAttributeContext *)v4 setEntitlementManager:a1[15]];
    [(RBAttributeContext *)v4 setAssertion:v3];
    v5 = [a1 _originatorInheritancesForAssertion:v3];

    [(RBAttributeContext *)v4 setAvailableInheritances:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resolveProcessStateForTarget:(uint64_t)a1 ofType:(uint64_t)a2 viaAssertion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBAssertionStateResolver.m" lineNumber:537 description:@"cannot get this far without state"];
}

@end