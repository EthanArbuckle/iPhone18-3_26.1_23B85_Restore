@interface PSOrchestrator
- (id)applyPolicyConstraints:(id)constraints withDesiredStride:(id)stride;
- (id)evaluateInputDrivenGraphPolicy;
- (void)addedGraphs:(id)graphs removedGraphs:(id)removedGraphs;
- (void)dumpStateToXPCDictionary:(id)dictionary;
- (void)evaluateAllPolicies;
- (void)execSessionRemoved:(id)removed;
- (void)frameIdUpdate:(id)update frameId:(id)id;
- (void)producibleStridesHaveChanged:(id)changed;
- (void)refreshState;
- (void)resolvedDomainForGraphs:(id)graphs;
- (void)resourceStateUpdate:(id)update;
- (void)scheduleLivenessResetForFrameID:(unint64_t)d forTargetStride:(unint64_t)stride forGraphID:(id)iD;
- (void)setPolicies:(unsigned __int8)policies accessoryTrackingActive:(BOOL)active;
- (void)setResourceStridesForGraph:(id)graph;
- (void)setupSupportedCadences:(id)cadences;
- (void)setupSupportedStridesForLocalReplay:(id)replay;
- (void)updateGraphDesiredState;
- (void)updateGraphTargetState:(id)state fromPolicy:(id)policy;
- (void)updateResourceDesiredState;
@end

@implementation PSOrchestrator

- (void)frameIdUpdate:(id)update frameId:(id)id
{
  updateCopy = update;
  idCopy = id;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [updateCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(updateCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        resourceState = [(PSOrchestrator *)self resourceState];
        resourceKey = [v12 resourceKey];
        v15 = [resourceState objectForKeyedSubscript:resourceKey];

        stride = [v12 stride];
        [v15 setProviderStride:stride];

        [v15 setStrideChangeFrameID:idCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [updateCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(PSOrchestrator *)self updateGraphDesiredState];
}

- (void)resolvedDomainForGraphs:(id)graphs
{
  graphsCopy = graphs;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [graphsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(graphsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [graphsCopy objectForKey:v9];
        graphState = [(PSOrchestrator *)self graphState];
        v12 = [graphState objectForKeyedSubscript:v9];
        [v12 setDomain:v10];
      }

      v6 = [graphsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)producibleStridesHaveChanged:(id)changed
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = changed;
  v4 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v25 = *v34;
    selfCopy = self;
    do
    {
      v7 = 0;
      v27 = v5;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        resourceState = [(PSOrchestrator *)self resourceState];
        resourceKey = [v8 resourceKey];
        v11 = [resourceState objectForKeyedSubscript:resourceKey];

        strides = [v8 strides];
        v13 = [strides sortedArrayUsingSelector:"compare:"];
        [v11 setProducibleStrides:v13];

        producibleStrides = [v11 producibleStrides];
        providerStride = [v11 providerStride];
        LOBYTE(resourceKey) = [producibleStrides containsObject:providerStride];

        if ((resourceKey & 1) == 0)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          producibleStrides2 = [v11 producibleStrides];
          v17 = [producibleStrides2 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v30;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(producibleStrides2);
                }

                v21 = *(*(&v29 + 1) + 8 * i);
                providerStride2 = [v11 providerStride];
                unsignedLongValue = [providerStride2 unsignedLongValue];
                unsignedLongValue2 = [v21 unsignedLongValue];

                if (unsignedLongValue <= unsignedLongValue2)
                {
                  [v11 setProviderStride:v21];
                  goto LABEL_17;
                }
              }

              v18 = [producibleStrides2 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v6 = v25;
          self = selfCopy;
          v5 = v27;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  [(PSOrchestrator *)self updateGraphDesiredState];
}

- (void)setupSupportedStridesForLocalReplay:(id)replay
{
  v4 = xpc_dictionary_get_value(replay, "resource_info_array");
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100005178;
  applier[3] = &unk_100028BF0;
  applier[4] = self;
  xpc_array_apply(v4, applier);
}

- (void)dumpStateToXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  statisticsDelegate = [(PSOrchestrator *)self statisticsDelegate];
  statistics = [statisticsDelegate statistics];
  xpc_dictionary_set_value(dictionaryCopy, "orchestrator_statistics", statistics);
}

- (void)setupSupportedCadences:(id)cadences
{
  cadencesCopy = cadences;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [cadencesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(cadencesCopy);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        resourceState = [(PSOrchestrator *)self resourceState];
        v11 = [resourceState objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [cadencesCopy objectForKeyedSubscript:v9];
          supportedCadences = [v12 supportedCadences];
          resourceState2 = [(PSOrchestrator *)self resourceState];
          v15 = [resourceState2 objectForKeyedSubscript:v9];
          [v15 setSupportedStrides:supportedCadences];

          v16 = [cadencesCopy objectForKeyedSubscript:v9];
          defaultStride = [v16 defaultStride];
          resourceState3 = [(PSOrchestrator *)self resourceState];
          v19 = [resourceState3 objectForKeyedSubscript:v9];
          [v19 setDefaultStride:defaultStride];
        }

        else
        {
          v20 = [PSResourceState alloc];
          v16 = [cadencesCopy objectForKeyedSubscript:v9];
          defaultStride = [(PSResourceState *)v20 init:v9 withConfig:v16];
          resourceState3 = [(PSOrchestrator *)self resourceState];
          [resourceState3 setObject:defaultStride forKeyedSubscript:v9];
        }

        v21 = [cadencesCopy objectForKeyedSubscript:v9];
        supportedCadences2 = [v21 supportedCadences];
        allKeys = [supportedCadences2 allKeys];
        resourceState4 = [(PSOrchestrator *)self resourceState];
        v25 = [resourceState4 objectForKeyedSubscript:v9];
        [v25 setProducibleStrides:allKeys];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [cadencesCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }
}

- (void)resourceStateUpdate:(id)update
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = update;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        resourceState = [(PSOrchestrator *)self resourceState];
        resourceName = [v8 resourceName];
        v11 = [resourceState objectForKeyedSubscript:resourceName];

        [v11 setState:{objc_msgSend(v8, "state")}];
        guaranteedStrideChangeNotification = [v11 guaranteedStrideChangeNotification];
        stride = [v8 stride];
        v14 = [guaranteedStrideChangeNotification objectForKeyedSubscript:stride];
        v15 = [NSNumber numberWithBool:0];

        if (v14 == v15)
        {
          stride2 = [v8 stride];
          [v11 setProviderStride:stride2];

          [v11 setStrideChangeFrameID:0];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  [(PSOrchestrator *)self updateGraphDesiredState];
}

- (void)execSessionRemoved:(id)removed
{
  removedCopy = removed;
  builder = [(PSOrchestrator *)self builder];
  v6 = [builder graphsForExecSession:removedCopy];

  [(PSOrchestrator *)self addedGraphs:0 removedGraphs:v6];
  builder2 = [(PSOrchestrator *)self builder];
  v13 = 0;
  v8 = [builder2 removeGraphsWithIDs:v6 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v10 = sub_100013BF4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 description];
      *buf = 136315394;
      v15 = "[PSOrchestrator(PSSG) execSessionRemoved:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: builder removeGraphsWithIDs call failed with: %@", buf, 0x16u);
    }
  }

  gstManager = [(PSOrchestrator *)self gstManager];
  [gstManager removeGraphs:v6];

  [(PSOrchestrator *)self flushAddedRemovedGraphs];
}

- (void)setPolicies:(unsigned __int8)policies accessoryTrackingActive:(BOOL)active
{
  queue = [(PSOrchestrator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005C80;
  v8[3] = &unk_100028C18;
  policiesCopy = policies;
  v8[4] = self;
  activeCopy = active;
  dispatch_sync(queue, v8);
}

- (id)evaluateInputDrivenGraphPolicy
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [0 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v17 = *v26;
    do
    {
      v3 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(0);
        }

        v19 = v3;
        v4 = *(*(&v25 + 1) + 8 * v3);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v5 = [0 countByEnumeratingWithState:&v21 objects:v29 count:{16, v17}];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v22 != v7)
              {
                objc_enumerationMutation(0);
              }

              v9 = *(*(&v21 + 1) + 8 * i);
              v10 = objc_alloc_init(PSGraphState);
              session = [v9 session];
              [(PSGraphState *)v10 setSessionName:session];

              name = [v9 name];
              [(PSGraphState *)v10 setGraphName:name];

              resourceState = [(PSOrchestrator *)self resourceState];
              v14 = [resourceState objectForKeyedSubscript:v4];
              providerStride = [v14 providerStride];
              [(PSGraphState *)v10 setTargetStride:providerStride];

              [v2 setObject:v10 forKey:v9];
            }

            v6 = [0 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v6);
        }

        v3 = v19 + 1;
      }

      while ((v19 + 1) != v18);
      v18 = [0 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  return v2;
}

- (void)setResourceStridesForGraph:(id)graph
{
  graphCopy = graph;
  builder = [(PSOrchestrator *)self builder];
  v6 = [builder resourcesForGraph:graphCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        builder2 = [(PSOrchestrator *)self builder];
        v14 = [builder2 isWaitInput:v12 forGraph:graphCopy];

        if (v14)
        {
          graphState = [(PSOrchestrator *)self graphState];
          v16 = [graphState objectForKeyedSubscript:graphCopy];
          [v16 targetStride];
        }

        else
        {
          graphState = [(PSOrchestrator *)self resourceState];
          v16 = [graphState objectForKeyedSubscript:v12];
          [v16 defaultStride];
        }
        v17 = ;

        resourceState = [(PSOrchestrator *)self resourceState];
        v19 = [resourceState objectForKeyedSubscript:v12];
        consumersForStride = [v19 consumersForStride];
        [consumersForStride setObject:v17 forKeyedSubscript:graphCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)updateGraphTargetState:(id)state fromPolicy:(id)policy
{
  stateCopy = state;
  policyCopy = policy;
  graphState = [(PSOrchestrator *)self graphState];
  v42 = policyCopy;
  v9 = [policyCopy evaluatePolicy:graphState];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v9;
  v11 = stateCopy;
  obj = v10;
  v45 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v45)
  {
    v43 = stateCopy;
    v44 = *v50;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v50 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [obj objectForKeyedSubscript:v13];
        lowerBoundStride = [v14 lowerBoundStride];
        if (lowerBoundStride)
        {
          lowerBoundStride2 = [v14 lowerBoundStride];
          unsignedIntegerValue = [lowerBoundStride2 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 0;
        }

        upperBoundStride = [v14 upperBoundStride];
        if (upperBoundStride)
        {
          upperBoundStride2 = [v14 upperBoundStride];
          unsignedIntegerValue2 = [upperBoundStride2 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = -1;
        }

        v20 = [v11 objectForKeyedSubscript:v13];

        if (v20)
        {
          v21 = [v11 objectForKeyedSubscript:v13];
          lowerBoundStride3 = [v21 lowerBoundStride];
          if (lowerBoundStride3)
          {
            v23 = [v11 objectForKeyedSubscript:v13];
            lowerBoundStride4 = [v23 lowerBoundStride];
            unsignedIntegerValue3 = [lowerBoundStride4 unsignedIntegerValue];

            v11 = v43;
          }

          else
          {
            unsignedIntegerValue3 = 0;
          }

          v27 = [v11 objectForKeyedSubscript:v13];
          upperBoundStride3 = [v27 upperBoundStride];
          if (upperBoundStride3)
          {
            v29 = [v11 objectForKeyedSubscript:v13];
            upperBoundStride4 = [v29 upperBoundStride];
            unsignedIntegerValue4 = [upperBoundStride4 unsignedIntegerValue];

            v11 = v43;
          }

          else
          {
            unsignedIntegerValue4 = -1;
          }

          v31 = [v11 objectForKeyedSubscript:v13];
          targetStride = [v31 targetStride];
          if (targetStride)
          {
            v33 = targetStride;
            targetStride2 = [v14 targetStride];

            if (targetStride2)
            {
              sub_100017568(&v48);
            }
          }

          else
          {
          }
        }

        else
        {
          unsignedIntegerValue3 = 0;
          unsignedIntegerValue4 = -1;
        }

        if (unsignedIntegerValue <= unsignedIntegerValue3)
        {
          v35 = unsignedIntegerValue3;
        }

        else
        {
          v35 = unsignedIntegerValue;
        }

        if (unsignedIntegerValue2 >= unsignedIntegerValue4)
        {
          v36 = unsignedIntegerValue4;
        }

        else
        {
          v36 = unsignedIntegerValue2;
        }

        v37 = [NSNumber numberWithUnsignedInteger:v35];
        [v14 setLowerBoundStride:v37];

        v38 = [NSNumber numberWithUnsignedInteger:v36];
        [v14 setUpperBoundStride:v38];

        targetStride3 = [v14 targetStride];

        if (!targetStride3)
        {
          v40 = [v11 objectForKeyedSubscript:v13];
          targetStride4 = [v40 targetStride];
          [v14 setTargetStride:targetStride4];
        }

        [v11 setObject:v14 forKey:v13];
      }

      v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v45);
  }
}

- (id)applyPolicyConstraints:(id)constraints withDesiredStride:(id)stride
{
  constraintsCopy = constraints;
  strideCopy = stride;
  v7 = strideCopy;
  if (constraintsCopy)
  {
    targetStride = [constraintsCopy targetStride];

    if (targetStride)
    {
      targetStride2 = [constraintsCopy targetStride];
      unsignedIntegerValue = [targetStride2 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = [v7 unsignedIntegerValue];
    }

    lowerBoundStride = [constraintsCopy lowerBoundStride];

    if (lowerBoundStride)
    {
      lowerBoundStride2 = [constraintsCopy lowerBoundStride];
      unsignedIntegerValue2 = [lowerBoundStride2 unsignedIntegerValue];

      if (unsignedIntegerValue2 > unsignedIntegerValue)
      {
        unsignedIntegerValue = unsignedIntegerValue2;
      }
    }

    upperBoundStride = [constraintsCopy upperBoundStride];

    if (upperBoundStride)
    {
      upperBoundStride2 = [constraintsCopy upperBoundStride];
      unsignedIntegerValue3 = [upperBoundStride2 unsignedIntegerValue];

      if (unsignedIntegerValue3 < unsignedIntegerValue)
      {
        unsignedIntegerValue = unsignedIntegerValue3;
      }
    }

    v11 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  }

  else
  {
    v11 = strideCopy;
  }

  v18 = v11;

  return v18;
}

- (void)evaluateAllPolicies
{
  v58 = objc_alloc_init(NSMutableDictionary);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  policyRequests = [(PSOrchestrator *)self policyRequests];
  v4 = [policyRequests countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v73;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v73 != v6)
        {
          objc_enumerationMutation(policyRequests);
        }

        v8 = *(*(&v72 + 1) + 8 * i);
        policyRequests2 = [(PSOrchestrator *)self policyRequests];
        v10 = [policyRequests2 objectForKeyedSubscript:v8];

        [(PSOrchestrator *)self updateGraphTargetState:v58 fromPolicy:v10];
      }

      v5 = [policyRequests countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v5);
  }

  evaluateInputDrivenGraphPolicy = [(PSOrchestrator *)self evaluateInputDrivenGraphPolicy];
  [v58 addEntriesFromDictionary:?];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  graphState = [(PSOrchestrator *)self graphState];
  v12 = [graphState countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v69;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v69 != v14)
        {
          objc_enumerationMutation(graphState);
        }

        v16 = *(*(&v68 + 1) + 8 * j);
        graphState2 = [(PSOrchestrator *)self graphState];
        v18 = [graphState2 objectForKeyedSubscript:v16];
        [v18 setTargetStride:0];
      }

      v13 = [graphState countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v13);
  }

  builder = [(PSOrchestrator *)self builder];
  allStrideDependentGraphs = [builder allStrideDependentGraphs];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = allStrideDependentGraphs;
  v51 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v51)
  {
    v50 = *v65;
    selfCopy = self;
    do
    {
      v21 = 0;
      do
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v21;
        v22 = *(*(&v64 + 1) + 8 * v21);
        v23 = [v58 objectForKeyedSubscript:v22];
        graphState3 = [(PSOrchestrator *)self graphState];
        v25 = [graphState3 objectForKeyedSubscript:v22];
        requestedStride = [v25 requestedStride];
        v27 = [(PSOrchestrator *)self applyPolicyConstraints:v23 withDesiredStride:requestedStride];
        graphState4 = [(PSOrchestrator *)selfCopy graphState];
        v29 = [graphState4 objectForKeyedSubscript:v22];
        [v29 setTargetStride:v27];

        self = selfCopy;
        [(PSOrchestrator *)selfCopy setResourceStridesForGraph:v22];
        v57 = v22;
        v30 = [obj objectForKeyedSubscript:v22];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v54 = v30;
        v59 = [v30 countByEnumeratingWithState:&v60 objects:v76 count:16];
        if (v59)
        {
          v56 = *v61;
          do
          {
            for (k = 0; k != v59; k = k + 1)
            {
              if (*v61 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v32 = *(*(&v60 + 1) + 8 * k);
              graphState5 = [(PSOrchestrator *)self graphState];
              v34 = [graphState5 objectForKeyedSubscript:v57];
              targetStride = [v34 targetStride];
              unsignedIntegerValue = [targetStride unsignedIntegerValue];

              graphState6 = [(PSOrchestrator *)self graphState];
              v38 = [graphState6 objectForKeyedSubscript:v32];
              targetStride2 = [v38 targetStride];
              if (targetStride2)
              {
                graphState7 = [(PSOrchestrator *)self graphState];
                v41 = [graphState7 objectForKeyedSubscript:v32];
                targetStride3 = [v41 targetStride];
                unsignedIntegerValue2 = [targetStride3 unsignedIntegerValue];

                self = selfCopy;
              }

              else
              {
                unsignedIntegerValue2 = -1;
              }

              if (unsignedIntegerValue < unsignedIntegerValue2)
              {
                unsignedIntegerValue2 = unsignedIntegerValue;
              }

              v44 = [v58 objectForKeyedSubscript:v32];
              v45 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2];
              v46 = [(PSOrchestrator *)self applyPolicyConstraints:v44 withDesiredStride:v45];
              graphState8 = [(PSOrchestrator *)self graphState];
              v48 = [graphState8 objectForKeyedSubscript:v32];
              [v48 setTargetStride:v46];

              [(PSOrchestrator *)self setResourceStridesForGraph:v32];
            }

            v59 = [v54 countByEnumeratingWithState:&v60 objects:v76 count:16];
          }

          while (v59);
        }

        v21 = v53 + 1;
      }

      while ((v53 + 1) != v51);
      v51 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v51);
  }
}

- (void)addedGraphs:(id)graphs removedGraphs:(id)removedGraphs
{
  graphsCopy = graphs;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = removedGraphs;
  v34 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v34)
  {
    v33 = *v44;
    do
    {
      v6 = 0;
      do
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * v6);
        builder = [(PSOrchestrator *)self builder];
        v9 = [builder resourcesForGraph:v7];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v40;
          do
          {
            v14 = 0;
            do
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v39 + 1) + 8 * v14);
              resourceState = [(PSOrchestrator *)self resourceState];
              v17 = [resourceState objectForKeyedSubscript:v15];
              consumersForStride = [v17 consumersForStride];
              [consumersForStride removeObjectForKey:v7];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v12);
        }

        graphState = [(PSOrchestrator *)self graphState];
        [graphState removeObjectForKey:v7];

        v6 = v6 + 1;
      }

      while (v6 != v34);
      v34 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v34);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = graphsCopy;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      v24 = 0;
      do
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * v24);
        v26 = objc_alloc_init(PSGraphState);
        name = [v25 name];
        [(PSGraphState *)v26 setGraphName:name];

        session = [v25 session];
        [(PSGraphState *)v26 setSessionName:session];

        v29 = [v20 objectForKey:v25];
        [(PSGraphState *)v26 setRequestedStride:v29];

        graphState2 = [(PSOrchestrator *)self graphState];
        [graphState2 setObject:v26 forKeyedSubscript:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v22);
  }
}

- (void)updateResourceDesiredState
{
  v3 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  resourceState = [(PSOrchestrator *)self resourceState];
  v5 = [resourceState countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(resourceState);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        resourceState2 = [(PSOrchestrator *)self resourceState];
        v11 = [resourceState2 objectForKeyedSubscript:v9];

        computeDesiredStride = [v11 computeDesiredStride];
        requestedStrideToProvider = [v11 requestedStrideToProvider];

        if (computeDesiredStride != requestedStrideToProvider)
        {
          [v11 setRequestedStrideToProvider:computeDesiredStride];
          [v11 setStrideChangeFrameID:0];
          v14 = objc_alloc_init(PSResourceDesiredState);
          resourceName = [v11 resourceName];
          [(PSResourceDesiredState *)v14 setResourceName:resourceName];

          [(PSResourceDesiredState *)v14 setDesiredStride:computeDesiredStride];
          [(PSResourceDesiredState *)v14 setWantedByConsumers:computeDesiredStride != 0];
          [v3 addObject:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [resourceState countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if (!-[PSOrchestrator isSessionForLocalReplay](self, "isSessionForLocalReplay") && [v3 count])
  {
    notifier = [(PSOrchestrator *)self notifier];
    (notifier)[2](notifier, v3);
  }
}

- (void)refreshState
{
  statisticsDelegate = [(PSOrchestrator *)self statisticsDelegate];
  [statisticsDelegate willStartOrchestration];

  [(PSOrchestrator *)self evaluateAllPolicies];
  [(PSOrchestrator *)self updateResourceDesiredState];
  [(PSOrchestrator *)self updateGraphDesiredState];
  statisticsDelegate2 = [(PSOrchestrator *)self statisticsDelegate];
  [statisticsDelegate2 didEndOrchestration];
}

- (void)updateGraphDesiredState
{
  selfCopy = self;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [(PSOrchestrator *)self graphState];
  v57 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v57)
  {
    v56 = *v77;
    v63 = selfCopy;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v77 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v76 + 1) + 8 * i);
        graphState = [(PSOrchestrator *)selfCopy graphState];
        v6 = [graphState objectForKeyedSubscript:v4];

        v7 = [(PSBuilderProtocol *)selfCopy->_builder waitResourcesForGraph:v4 isSessionLocal:[(PSOrchestrator *)selfCopy isSessionForLocalReplay]];
        if (![v7 count])
        {
          v22 = &off_100029928;
          goto LABEL_58;
        }

        v55 = v4;
        v59 = i;
        v60 = v6;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v58 = v7;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v73;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v73 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v72 + 1) + 8 * j);
              resourceState = [(PSOrchestrator *)selfCopy resourceState];
              v16 = [resourceState objectForKeyedSubscript:v14];

              if ([v16 state])
              {
                requestedStrideToProvider = [v16 requestedStrideToProvider];
                unsignedLongValue = [requestedStrideToProvider unsignedLongValue];
                providerStride = [v16 providerStride];
                if (unsignedLongValue <= [providerStride unsignedLongValue])
                {
                  [v16 providerStride];
                }

                else
                {
                  [v16 requestedStrideToProvider];
                }
                v20 = ;
              }

              else
              {
                v20 = &off_100029940;
              }

              unsignedLongValue2 = [v20 unsignedLongValue];
              if (v11 <= unsignedLongValue2)
              {
                v11 = unsignedLongValue2;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        v6 = v60;
        targetStride = [v60 targetStride];
        unsignedLongValue3 = [targetStride unsignedLongValue];

        if (unsignedLongValue3 <= v11)
        {
          v25 = v11;
        }

        else
        {
          v25 = unsignedLongValue3;
        }

        currentStride = [v60 currentStride];
        unsignedLongValue4 = [currentStride unsignedLongValue];

        if (unsignedLongValue4 == v25)
        {
          v22 = &off_100029928;
LABEL_56:
          i = v59;
          goto LABEL_57;
        }

        v64 = v25;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v61 = v8;
        v65 = [v61 countByEnumeratingWithState:&v68 objects:v80 count:16];
        v28 = 0;
        if (v65)
        {
          v62 = *v69;
          v29 = 1;
          v22 = &off_100029928;
          do
          {
            for (k = 0; k != v65; k = k + 1)
            {
              v67 = v22;
              if (*v69 != v62)
              {
                objc_enumerationMutation(v61);
              }

              v31 = *(*(&v68 + 1) + 8 * k);
              resourceState2 = [(PSOrchestrator *)v63 resourceState];
              v33 = [resourceState2 objectForKeyedSubscript:v31];

              strideChangeFrameID = [v33 strideChangeFrameID];
              v35 = strideChangeFrameID != 0;

              v66 = v35 & v29;
              strideChangeFrameID2 = [v33 strideChangeFrameID];
              unsignedLongValue5 = [strideChangeFrameID2 unsignedLongValue];

              if (v28 <= unsignedLongValue5)
              {
                v28 = unsignedLongValue5;
              }

              supportedStrides = [v33 supportedStrides];
              v39 = [NSNumber numberWithUnsignedLong:v64];
              v40 = [supportedStrides objectForKeyedSubscript:v39];
              supportedStrides2 = [v33 supportedStrides];
              if (v40)
              {
                v42 = v64;
              }

              else
              {
                v42 = v11;
              }

              v43 = [NSNumber numberWithUnsignedLong:v42];
              v44 = [supportedStrides2 objectForKeyedSubscript:v43];

              if (v44)
              {
                v22 = v44;
              }

              else
              {
                v22 = &off_100029928;
              }

              v29 = v66;
            }

            v65 = [v61 countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v65);
        }

        else
        {
          v29 = 1;
          v22 = &off_100029928;
        }

        if (![(PSOrchestrator *)v63 shouldSkipCadenceChangeForStride:v64 isReplay:[(PSOrchestrator *)v63 isSessionForLocalReplay]])
        {
          unsignedLongValue6 = [v22 unsignedLongValue];
          v6 = v60;
          [v60 domain];
          v47 = v46 = v29;
          v48 = [v47 isEqualToString:@"custom-dsjcam"];

          if ((v48 & (v64 > 2)) != 0)
          {
            v49 = 2;
          }

          else
          {
            v49 = unsignedLongValue6;
          }

          gstManager = v63->_gstManager;
          if (v46)
          {
            v51 = [(PSGSTManagerProtocol *)gstManager changeCadenceAtOrAfterFrameId:v55 frameID:v28 stride:v64 offset:v49];
          }

          else
          {
            v51 = [(PSGSTManagerProtocol *)gstManager changeCadenceOnNextValidFrameId:v55 stride:v64 offset:v49];
          }

          v52 = v51;
          v53 = [NSNumber numberWithUnsignedLong:v64];
          [v60 setCurrentStride:v53];

          selfCopy = v63;
          [(PSOrchestrator *)v63 scheduleLivenessResetForFrameID:v52 forTargetStride:v64 forGraphID:v55];
          goto LABEL_56;
        }

        selfCopy = v63;
        i = v59;
        v6 = v60;
LABEL_57:
        v7 = v58;
LABEL_58:
      }

      v57 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v57);
  }
}

- (void)scheduleLivenessResetForFrameID:(unint64_t)d forTargetStride:(unint64_t)stride forGraphID:(id)iD
{
  iDCopy = iD;
  name = [iDCopy name];
  [name UTF8String];
  session = [iDCopy session];

  [session UTF8String];
  session_node_by_name = ps_liveness_get_session_node_by_name();

  if (stride)
  {
    if (d != -1 && session_node_by_name != -1)
    {
      systemPulseRate = [(PSOrchestrator *)self systemPulseRate];
      v13 = [systemPulseRate unsignedLongLongValue] / stride;

      if (v13 > 0.0)
      {

        _ps_liveness_schedule_reset_deadline_at_frameid(session_node_by_name, d, v13, (1000000000.0 / v13));
      }
    }
  }
}

@end