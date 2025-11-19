@interface PSOrchestrator
- (id)applyPolicyConstraints:(id)a3 withDesiredStride:(id)a4;
- (id)evaluateInputDrivenGraphPolicy;
- (void)addedGraphs:(id)a3 removedGraphs:(id)a4;
- (void)dumpStateToXPCDictionary:(id)a3;
- (void)evaluateAllPolicies;
- (void)execSessionRemoved:(id)a3;
- (void)frameIdUpdate:(id)a3 frameId:(id)a4;
- (void)producibleStridesHaveChanged:(id)a3;
- (void)refreshState;
- (void)resolvedDomainForGraphs:(id)a3;
- (void)resourceStateUpdate:(id)a3;
- (void)scheduleLivenessResetForFrameID:(unint64_t)a3 forTargetStride:(unint64_t)a4 forGraphID:(id)a5;
- (void)setPolicies:(unsigned __int8)a3 accessoryTrackingActive:(BOOL)a4;
- (void)setResourceStridesForGraph:(id)a3;
- (void)setupSupportedCadences:(id)a3;
- (void)setupSupportedStridesForLocalReplay:(id)a3;
- (void)updateGraphDesiredState;
- (void)updateGraphTargetState:(id)a3 fromPolicy:(id)a4;
- (void)updateResourceDesiredState;
@end

@implementation PSOrchestrator

- (void)frameIdUpdate:(id)a3 frameId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(PSOrchestrator *)self resourceState];
        v14 = [v12 resourceKey];
        v15 = [v13 objectForKeyedSubscript:v14];

        v16 = [v12 stride];
        [v15 setProviderStride:v16];

        [v15 setStrideChangeFrameID:v7];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(PSOrchestrator *)self updateGraphDesiredState];
}

- (void)resolvedDomainForGraphs:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [(PSOrchestrator *)self graphState];
        v12 = [v11 objectForKeyedSubscript:v9];
        [v12 setDomain:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)producibleStridesHaveChanged:(id)a3
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v25 = *v34;
    v26 = self;
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
        v9 = [(PSOrchestrator *)self resourceState];
        v10 = [v8 resourceKey];
        v11 = [v9 objectForKeyedSubscript:v10];

        v12 = [v8 strides];
        v13 = [v12 sortedArrayUsingSelector:"compare:"];
        [v11 setProducibleStrides:v13];

        v14 = [v11 producibleStrides];
        v15 = [v11 providerStride];
        LOBYTE(v10) = [v14 containsObject:v15];

        if ((v10 & 1) == 0)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v16 = [v11 producibleStrides];
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v29 + 1) + 8 * i);
                v22 = [v11 providerStride];
                v23 = [v22 unsignedLongValue];
                v24 = [v21 unsignedLongValue];

                if (v23 <= v24)
                {
                  [v11 setProviderStride:v21];
                  goto LABEL_17;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v6 = v25;
          self = v26;
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

- (void)setupSupportedStridesForLocalReplay:(id)a3
{
  v4 = xpc_dictionary_get_value(a3, "resource_info_array");
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100005178;
  applier[3] = &unk_100028BF0;
  applier[4] = self;
  xpc_array_apply(v4, applier);
}

- (void)dumpStateToXPCDictionary:(id)a3
{
  v4 = a3;
  v6 = [(PSOrchestrator *)self statisticsDelegate];
  v5 = [v6 statistics];
  xpc_dictionary_set_value(v4, "orchestrator_statistics", v5);
}

- (void)setupSupportedCadences:(id)a3
{
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = [(PSOrchestrator *)self resourceState];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v9];
          v13 = [v12 supportedCadences];
          v14 = [(PSOrchestrator *)self resourceState];
          v15 = [v14 objectForKeyedSubscript:v9];
          [v15 setSupportedStrides:v13];

          v16 = [v4 objectForKeyedSubscript:v9];
          v17 = [v16 defaultStride];
          v18 = [(PSOrchestrator *)self resourceState];
          v19 = [v18 objectForKeyedSubscript:v9];
          [v19 setDefaultStride:v17];
        }

        else
        {
          v20 = [PSResourceState alloc];
          v16 = [v4 objectForKeyedSubscript:v9];
          v17 = [(PSResourceState *)v20 init:v9 withConfig:v16];
          v18 = [(PSOrchestrator *)self resourceState];
          [v18 setObject:v17 forKeyedSubscript:v9];
        }

        v21 = [v4 objectForKeyedSubscript:v9];
        v22 = [v21 supportedCadences];
        v23 = [v22 allKeys];
        v24 = [(PSOrchestrator *)self resourceState];
        v25 = [v24 objectForKeyedSubscript:v9];
        [v25 setProducibleStrides:v23];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }
}

- (void)resourceStateUpdate:(id)a3
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
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
        v9 = [(PSOrchestrator *)self resourceState];
        v10 = [v8 resourceName];
        v11 = [v9 objectForKeyedSubscript:v10];

        [v11 setState:{objc_msgSend(v8, "state")}];
        v12 = [v11 guaranteedStrideChangeNotification];
        v13 = [v8 stride];
        v14 = [v12 objectForKeyedSubscript:v13];
        v15 = [NSNumber numberWithBool:0];

        if (v14 == v15)
        {
          v16 = [v8 stride];
          [v11 setProviderStride:v16];

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

- (void)execSessionRemoved:(id)a3
{
  v4 = a3;
  v5 = [(PSOrchestrator *)self builder];
  v6 = [v5 graphsForExecSession:v4];

  [(PSOrchestrator *)self addedGraphs:0 removedGraphs:v6];
  v7 = [(PSOrchestrator *)self builder];
  v13 = 0;
  v8 = [v7 removeGraphsWithIDs:v6 error:&v13];
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

  v12 = [(PSOrchestrator *)self gstManager];
  [v12 removeGraphs:v6];

  [(PSOrchestrator *)self flushAddedRemovedGraphs];
}

- (void)setPolicies:(unsigned __int8)a3 accessoryTrackingActive:(BOOL)a4
{
  v7 = [(PSOrchestrator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005C80;
  v8[3] = &unk_100028C18;
  v9 = a3;
  v8[4] = self;
  v10 = a4;
  dispatch_sync(v7, v8);
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
              v11 = [v9 session];
              [(PSGraphState *)v10 setSessionName:v11];

              v12 = [v9 name];
              [(PSGraphState *)v10 setGraphName:v12];

              v13 = [(PSOrchestrator *)self resourceState];
              v14 = [v13 objectForKeyedSubscript:v4];
              v15 = [v14 providerStride];
              [(PSGraphState *)v10 setTargetStride:v15];

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

- (void)setResourceStridesForGraph:(id)a3
{
  v4 = a3;
  v5 = [(PSOrchestrator *)self builder];
  v6 = [v5 resourcesForGraph:v4];

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
        v13 = [(PSOrchestrator *)self builder];
        v14 = [v13 isWaitInput:v12 forGraph:v4];

        if (v14)
        {
          v15 = [(PSOrchestrator *)self graphState];
          v16 = [v15 objectForKeyedSubscript:v4];
          [v16 targetStride];
        }

        else
        {
          v15 = [(PSOrchestrator *)self resourceState];
          v16 = [v15 objectForKeyedSubscript:v12];
          [v16 defaultStride];
        }
        v17 = ;

        v18 = [(PSOrchestrator *)self resourceState];
        v19 = [v18 objectForKeyedSubscript:v12];
        v20 = [v19 consumersForStride];
        [v20 setObject:v17 forKeyedSubscript:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)updateGraphTargetState:(id)a3 fromPolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSOrchestrator *)self graphState];
  v42 = v7;
  v9 = [v7 evaluatePolicy:v8];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v9;
  v11 = v6;
  obj = v10;
  v45 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v45)
  {
    v43 = v6;
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
        v15 = [v14 lowerBoundStride];
        if (v15)
        {
          v16 = [v14 lowerBoundStride];
          v47 = [v16 unsignedIntegerValue];
        }

        else
        {
          v47 = 0;
        }

        v17 = [v14 upperBoundStride];
        if (v17)
        {
          v18 = [v14 upperBoundStride];
          v19 = [v18 unsignedIntegerValue];
        }

        else
        {
          v19 = -1;
        }

        v20 = [v11 objectForKeyedSubscript:v13];

        if (v20)
        {
          v21 = [v11 objectForKeyedSubscript:v13];
          v22 = [v21 lowerBoundStride];
          if (v22)
          {
            v23 = [v11 objectForKeyedSubscript:v13];
            v24 = [v23 lowerBoundStride];
            v25 = [v24 unsignedIntegerValue];

            v11 = v43;
          }

          else
          {
            v25 = 0;
          }

          v27 = [v11 objectForKeyedSubscript:v13];
          v28 = [v27 upperBoundStride];
          if (v28)
          {
            v29 = [v11 objectForKeyedSubscript:v13];
            v30 = [v29 upperBoundStride];
            v26 = [v30 unsignedIntegerValue];

            v11 = v43;
          }

          else
          {
            v26 = -1;
          }

          v31 = [v11 objectForKeyedSubscript:v13];
          v32 = [v31 targetStride];
          if (v32)
          {
            v33 = v32;
            v34 = [v14 targetStride];

            if (v34)
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
          v25 = 0;
          v26 = -1;
        }

        if (v47 <= v25)
        {
          v35 = v25;
        }

        else
        {
          v35 = v47;
        }

        if (v19 >= v26)
        {
          v36 = v26;
        }

        else
        {
          v36 = v19;
        }

        v37 = [NSNumber numberWithUnsignedInteger:v35];
        [v14 setLowerBoundStride:v37];

        v38 = [NSNumber numberWithUnsignedInteger:v36];
        [v14 setUpperBoundStride:v38];

        v39 = [v14 targetStride];

        if (!v39)
        {
          v40 = [v11 objectForKeyedSubscript:v13];
          v41 = [v40 targetStride];
          [v14 setTargetStride:v41];
        }

        [v11 setObject:v14 forKey:v13];
      }

      v45 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v45);
  }
}

- (id)applyPolicyConstraints:(id)a3 withDesiredStride:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 targetStride];

    if (v8)
    {
      v9 = [v5 targetStride];
      v10 = [v9 unsignedIntegerValue];
    }

    else
    {
      v10 = [v7 unsignedIntegerValue];
    }

    v12 = [v5 lowerBoundStride];

    if (v12)
    {
      v13 = [v5 lowerBoundStride];
      v14 = [v13 unsignedIntegerValue];

      if (v14 > v10)
      {
        v10 = v14;
      }
    }

    v15 = [v5 upperBoundStride];

    if (v15)
    {
      v16 = [v5 upperBoundStride];
      v17 = [v16 unsignedIntegerValue];

      if (v17 < v10)
      {
        v10 = v17;
      }
    }

    v11 = [NSNumber numberWithUnsignedInteger:v10];
  }

  else
  {
    v11 = v6;
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
  v3 = [(PSOrchestrator *)self policyRequests];
  v4 = [v3 countByEnumeratingWithState:&v72 objects:v79 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v72 + 1) + 8 * i);
        v9 = [(PSOrchestrator *)self policyRequests];
        v10 = [v9 objectForKeyedSubscript:v8];

        [(PSOrchestrator *)self updateGraphTargetState:v58 fromPolicy:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v5);
  }

  v49 = [(PSOrchestrator *)self evaluateInputDrivenGraphPolicy];
  [v58 addEntriesFromDictionary:?];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v11 = [(PSOrchestrator *)self graphState];
  v12 = [v11 countByEnumeratingWithState:&v68 objects:v78 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v68 + 1) + 8 * j);
        v17 = [(PSOrchestrator *)self graphState];
        v18 = [v17 objectForKeyedSubscript:v16];
        [v18 setTargetStride:0];
      }

      v13 = [v11 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v13);
  }

  v19 = [(PSOrchestrator *)self builder];
  v20 = [v19 allStrideDependentGraphs];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v20;
  v51 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v51)
  {
    v50 = *v65;
    v55 = self;
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
        v24 = [(PSOrchestrator *)self graphState];
        v25 = [v24 objectForKeyedSubscript:v22];
        v26 = [v25 requestedStride];
        v27 = [(PSOrchestrator *)self applyPolicyConstraints:v23 withDesiredStride:v26];
        v28 = [(PSOrchestrator *)v55 graphState];
        v29 = [v28 objectForKeyedSubscript:v22];
        [v29 setTargetStride:v27];

        self = v55;
        [(PSOrchestrator *)v55 setResourceStridesForGraph:v22];
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
              v33 = [(PSOrchestrator *)self graphState];
              v34 = [v33 objectForKeyedSubscript:v57];
              v35 = [v34 targetStride];
              v36 = [v35 unsignedIntegerValue];

              v37 = [(PSOrchestrator *)self graphState];
              v38 = [v37 objectForKeyedSubscript:v32];
              v39 = [v38 targetStride];
              if (v39)
              {
                v40 = [(PSOrchestrator *)self graphState];
                v41 = [v40 objectForKeyedSubscript:v32];
                v42 = [v41 targetStride];
                v43 = [v42 unsignedIntegerValue];

                self = v55;
              }

              else
              {
                v43 = -1;
              }

              if (v36 < v43)
              {
                v43 = v36;
              }

              v44 = [v58 objectForKeyedSubscript:v32];
              v45 = [NSNumber numberWithUnsignedInteger:v43];
              v46 = [(PSOrchestrator *)self applyPolicyConstraints:v44 withDesiredStride:v45];
              v47 = [(PSOrchestrator *)self graphState];
              v48 = [v47 objectForKeyedSubscript:v32];
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

- (void)addedGraphs:(id)a3 removedGraphs:(id)a4
{
  v31 = a3;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a4;
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
        v8 = [(PSOrchestrator *)self builder];
        v9 = [v8 resourcesForGraph:v7];

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
              v16 = [(PSOrchestrator *)self resourceState];
              v17 = [v16 objectForKeyedSubscript:v15];
              v18 = [v17 consumersForStride];
              [v18 removeObjectForKey:v7];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v12);
        }

        v19 = [(PSOrchestrator *)self graphState];
        [v19 removeObjectForKey:v7];

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
  v20 = v31;
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
        v27 = [v25 name];
        [(PSGraphState *)v26 setGraphName:v27];

        v28 = [v25 session];
        [(PSGraphState *)v26 setSessionName:v28];

        v29 = [v20 objectForKey:v25];
        [(PSGraphState *)v26 setRequestedStride:v29];

        v30 = [(PSOrchestrator *)self graphState];
        [v30 setObject:v26 forKeyedSubscript:v25];

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
  v4 = [(PSOrchestrator *)self resourceState];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(PSOrchestrator *)self resourceState];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 computeDesiredStride];
        v13 = [v11 requestedStrideToProvider];

        if (v12 != v13)
        {
          [v11 setRequestedStrideToProvider:v12];
          [v11 setStrideChangeFrameID:0];
          v14 = objc_alloc_init(PSResourceDesiredState);
          v15 = [v11 resourceName];
          [(PSResourceDesiredState *)v14 setResourceName:v15];

          [(PSResourceDesiredState *)v14 setDesiredStride:v12];
          [(PSResourceDesiredState *)v14 setWantedByConsumers:v12 != 0];
          [v3 addObject:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if (!-[PSOrchestrator isSessionForLocalReplay](self, "isSessionForLocalReplay") && [v3 count])
  {
    v16 = [(PSOrchestrator *)self notifier];
    (v16)[2](v16, v3);
  }
}

- (void)refreshState
{
  v3 = [(PSOrchestrator *)self statisticsDelegate];
  [v3 willStartOrchestration];

  [(PSOrchestrator *)self evaluateAllPolicies];
  [(PSOrchestrator *)self updateResourceDesiredState];
  [(PSOrchestrator *)self updateGraphDesiredState];
  v4 = [(PSOrchestrator *)self statisticsDelegate];
  [v4 didEndOrchestration];
}

- (void)updateGraphDesiredState
{
  v2 = self;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [(PSOrchestrator *)self graphState];
  v57 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v57)
  {
    v56 = *v77;
    v63 = v2;
    do
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v77 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v76 + 1) + 8 * i);
        v5 = [(PSOrchestrator *)v2 graphState];
        v6 = [v5 objectForKeyedSubscript:v4];

        v7 = [(PSBuilderProtocol *)v2->_builder waitResourcesForGraph:v4 isSessionLocal:[(PSOrchestrator *)v2 isSessionForLocalReplay]];
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
              v15 = [(PSOrchestrator *)v2 resourceState];
              v16 = [v15 objectForKeyedSubscript:v14];

              if ([v16 state])
              {
                v17 = [v16 requestedStrideToProvider];
                v18 = [v17 unsignedLongValue];
                v19 = [v16 providerStride];
                if (v18 <= [v19 unsignedLongValue])
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

              v21 = [v20 unsignedLongValue];
              if (v11 <= v21)
              {
                v11 = v21;
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
        v23 = [v60 targetStride];
        v24 = [v23 unsignedLongValue];

        if (v24 <= v11)
        {
          v25 = v11;
        }

        else
        {
          v25 = v24;
        }

        v26 = [v60 currentStride];
        v27 = [v26 unsignedLongValue];

        if (v27 == v25)
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
              v32 = [(PSOrchestrator *)v63 resourceState];
              v33 = [v32 objectForKeyedSubscript:v31];

              v34 = [v33 strideChangeFrameID];
              v35 = v34 != 0;

              v66 = v35 & v29;
              v36 = [v33 strideChangeFrameID];
              v37 = [v36 unsignedLongValue];

              if (v28 <= v37)
              {
                v28 = v37;
              }

              v38 = [v33 supportedStrides];
              v39 = [NSNumber numberWithUnsignedLong:v64];
              v40 = [v38 objectForKeyedSubscript:v39];
              v41 = [v33 supportedStrides];
              if (v40)
              {
                v42 = v64;
              }

              else
              {
                v42 = v11;
              }

              v43 = [NSNumber numberWithUnsignedLong:v42];
              v44 = [v41 objectForKeyedSubscript:v43];

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
          v45 = [v22 unsignedLongValue];
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
            v49 = v45;
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

          v2 = v63;
          [(PSOrchestrator *)v63 scheduleLivenessResetForFrameID:v52 forTargetStride:v64 forGraphID:v55];
          goto LABEL_56;
        }

        v2 = v63;
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

- (void)scheduleLivenessResetForFrameID:(unint64_t)a3 forTargetStride:(unint64_t)a4 forGraphID:(id)a5
{
  v8 = a5;
  v9 = [v8 name];
  [v9 UTF8String];
  v10 = [v8 session];

  [v10 UTF8String];
  session_node_by_name = ps_liveness_get_session_node_by_name();

  if (a4)
  {
    if (a3 != -1 && session_node_by_name != -1)
    {
      v12 = [(PSOrchestrator *)self systemPulseRate];
      v13 = [v12 unsignedLongLongValue] / a4;

      if (v13 > 0.0)
      {

        _ps_liveness_schedule_reset_deadline_at_frameid(session_node_by_name, a3, v13, (1000000000.0 / v13));
      }
    }
  }
}

@end